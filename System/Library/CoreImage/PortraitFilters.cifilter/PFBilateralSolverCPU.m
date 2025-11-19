@interface PFBilateralSolverCPU
+ (void)_computeAx:(id)a3 A:(const float *)a4 Dn:(const float *)a5 lambda:(float)a6 x:(const float *)a7 output:(float *)a8;
- (PFBilateralSolverCPU)initWithWidth:(int)a3 height:(int)a4 maxVertices:(unint64_t)a5;
- (int)doSolveWithBilateralGridhash:(id)a3 reference:(__IOSurface *)a4 disparity:(__CVBuffer *)a5 confidence:(__CVBuffer *)a6 output:(__CVBuffer *)a7 lambda:(float)a8 maxIterations:(int)a9;
- (void)_doBistochastize:(id)a3 nIterations:(int)a4;
- (void)_doSolve:(id)a3 t:(const __CVBuffer *)a4 c:(const __CVBuffer *)a5 x:(float *)a6 lambda:(float)a7 pcgMaxIterations:(int)a8;
- (void)_pcg:(id)a3 A:(const float *)a4 lambda:(float)a5 b:(const float *)a6 x:(float *)a7 M:(const float *)a8 tol:(float)a9 maxIterations:(int)a10;
- (void)dealloc;
@end

@implementation PFBilateralSolverCPU

- (PFBilateralSolverCPU)initWithWidth:(int)a3 height:(int)a4 maxVertices:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = PFBilateralSolverCPU;
  v8 = [(PFBilateralSolverCPU *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_useTrilinearInterpolation = 1;
    v8->_width = a3;
    v8->_height = a4;
    v8->_maxVertices = a5;
    v10 = 4 * a5;
    v8->_Dn_buf = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_Dm_buf = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_A_buf = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_b_buf = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_x_buf = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_M_buf = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_Sc_buf = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_q_buf = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_r_buf = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_d_buf = malloc_type_malloc(v10, 0x100004052888210uLL);
  }

  return v9;
}

- (void)dealloc
{
  free(self->_Dn_buf);
  free(self->_Dm_buf);
  free(self->_A_buf);
  free(self->_b_buf);
  free(self->_x_buf);
  free(self->_M_buf);
  free(self->_Sc_buf);
  free(self->_q_buf);
  free(self->_r_buf);
  free(self->_d_buf);
  v3.receiver = self;
  v3.super_class = PFBilateralSolverCPU;
  [(PFBilateralSolverCPU *)&v3 dealloc];
}

- (int)doSolveWithBilateralGridhash:(id)a3 reference:(__IOSurface *)a4 disparity:(__CVBuffer *)a5 confidence:(__CVBuffer *)a6 output:(__CVBuffer *)a7 lambda:(float)a8 maxIterations:(int)a9
{
  v9 = *&a9;
  v16 = a3;
  [(PFBilateralSolverCPU *)self _doBistochastize:v16 nIterations:10];
  *&v17 = a8;
  [(PFBilateralSolverCPU *)self _doSolve:v16 t:a5 c:a6 x:self->_x_buf lambda:v9 pcgMaxIterations:v17];
  if (self->_useTrilinearInterpolation)
  {
    [v16 slice_trilinear:a4 pin:self->_x_buf pout:a7];
  }

  else
  {
    [v16 slice:self->_x_buf outPixelBuffer:a7];
  }

  return 0;
}

- (void)_doBistochastize:(id)a3 nIterations:(int)a4
{
  v21 = a3;
  v6 = [v21 countVertices];
  [v21 splat_ones:self->_Dm_buf];
  if (v6 >= 1)
  {
    memset_pattern16(self->_Dn_buf, &unk_54B50, 4 * v6);
  }

  if (a4 >= 1)
  {
    v7 = 1;
    do
    {
      [v21 blur:self->_Dn_buf pout:self->_q_buf];
      if (v6 >= 1)
      {
        v8 = 0;
        q_buf = self->_q_buf;
        Dn_buf = self->_Dn_buf;
        do
        {
          v11 = q_buf[v8];
          v12 = 0.0;
          if (v11 > 0.0)
          {
            v12 = sqrtf((Dn_buf[v8] * self->_Dm_buf[v8]) / v11);
          }

          Dn_buf[v8++] = v12;
        }

        while (v6 != v8);
      }
    }

    while (v7++ != a4);
  }

  [v21 blur:self->_Dn_buf pout:self->_q_buf];
  if (v6 >= 1)
  {
    v14 = self->_q_buf;
    v15 = v6;
    v16 = self->_Dn_buf;
    Dm_buf = self->_Dm_buf;
    do
    {
      v18 = *v16++;
      v19 = v18;
      v20 = *v14++;
      *Dm_buf++ = v19 * v20;
      --v15;
    }

    while (v15);
  }
}

- (void)_doSolve:(id)a3 t:(const __CVBuffer *)a4 c:(const __CVBuffer *)a5 x:(float *)a6 lambda:(float)a7 pcgMaxIterations:(int)a8
{
  v8 = *&a8;
  v36 = a3;
  v14 = [v36 countVertices];
  v15 = [v36 countDims];
  if (v14 <= 0)
  {
    [v36 splat:a5 pout:self->_Sc_buf];
    [v36 splat_w_mul_x:a5 inPixelBuffer:a4 pout:self->_b_buf];
  }

  else
  {
    Dn_buf = self->_Dn_buf;
    Dm_buf = self->_Dm_buf;
    A_buf = self->_A_buf;
    v19 = v14;
    do
    {
      v20 = *Dn_buf++;
      v21 = v20;
      v22 = v20 * (2 * v15);
      v23 = *Dm_buf++;
      *A_buf++ = v23 - (v21 * v22);
      --v19;
    }

    while (v19);
    [v36 splat:a5 pout:self->_Sc_buf];
    v24 = self->_A_buf;
    M_buf = self->_M_buf;
    Sc_buf = self->_Sc_buf;
    LODWORD(v27) = 1.0;
    v28 = v14;
    do
    {
      v29 = *Sc_buf++;
      v30 = v29 + (a7 * *v24);
      *v24++ = v30;
      *M_buf++ = 1.0 / fmaxf(v30, 0.00001);
      --v28;
    }

    while (v28);
    [v36 splat_w_mul_x:a5 inPixelBuffer:a4 pout:{self->_b_buf, v27}];
    v33 = 0;
    v34 = self->_Sc_buf;
    do
    {
      v35 = v34[v33];
      if (v35 == 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        *&v31 = self->_b_buf[v33] / v35;
      }

      a6[v33++] = *&v31;
    }

    while (v14 != v33);
  }

  LODWORD(v32) = 925353388;
  *&v31 = a7;
  [(PFBilateralSolverCPU *)self _pcg:v36 A:self->_A_buf lambda:self->_b_buf b:a6 x:self->_M_buf M:v8 tol:v31 maxIterations:v32];
}

+ (void)_computeAx:(id)a3 A:(const float *)a4 Dn:(const float *)a5 lambda:(float)a6 x:(const float *)a7 output:(float *)a8
{
  v13 = a3;
  v14 = [v13 countVertices];
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = -a6;
    v17 = v14;
    do
    {
      v18 = a4[v15] * a7[v15];
      v22 = 0;
      v19 = [v13 blur_indices:v15 n_blur_indices:&v22];
      v20 = v22;
      if (v22 >= 1)
      {
        do
        {
          v21 = *v19++;
          v18 = v18 + (a7[v21] * ((a5[v21] * a5[v15]) * v16));
          --v20;
        }

        while (v20);
      }

      a8[v15++] = v18;
    }

    while (v15 != v17);
  }
}

- (void)_pcg:(id)a3 A:(const float *)a4 lambda:(float)a5 b:(const float *)a6 x:(float *)a7 M:(const float *)a8 tol:(float)a9 maxIterations:(int)a10
{
  v62 = a3;
  v18 = [v62 countVertices];
  *&v19 = a5;
  [PFBilateralSolverCPU _computeAx:v62 A:a4 Dn:self->_Dn_buf lambda:a7 x:self->_r_buf output:v19];
  if (v18 < 1)
  {
    v24 = 0.0;
  }

  else
  {
    r_buf = self->_r_buf;
    d_buf = self->_d_buf;
    v23 = v18;
    v24 = 0.0;
    v25 = a8;
    do
    {
      v26 = *a6++;
      v27 = v26 - *r_buf;
      v28 = *v25++;
      v24 = v24 + (v27 * (v28 * v27));
      *r_buf++ = v27;
      *d_buf++ = v28 * v27;
      --v23;
    }

    while (v23);
  }

  if (a10 >= 1)
  {
    v29 = 1;
    do
    {
      *&v20 = a5;
      [PFBilateralSolverCPU _computeAx:v62 A:a4 Dn:self->_Dn_buf lambda:self->_d_buf x:self->_q_buf output:v20];
      if (v18 < 1)
      {
        v41 = 0.0;
      }

      else
      {
        v30 = self->_d_buf;
        q_buf = self->_q_buf;
        v32 = 0.0;
        v33 = v18;
        do
        {
          v34 = *v30++;
          v35 = v34;
          v36 = *q_buf++;
          v32 = v32 + (v35 * v36);
          --v33;
        }

        while (v33);
        v37 = v24 / v32;
        v39 = self->_r_buf;
        v38 = self->_d_buf;
        v40 = self->_q_buf;
        v41 = 0.0;
        v42 = v18;
        v43 = a7;
        do
        {
          v44 = *v38++;
          v45 = *v43 + (v37 * v44);
          v46 = *v40++;
          v47 = *v39 + (-v37 * v46);
          *v43++ = v45;
          *v39++ = v47;
          v41 = v41 + (v47 * v47);
          --v42;
        }

        while (v42);
      }

      if (sqrtf(v41) < a9)
      {
        break;
      }

      if (v18 < 1)
      {
        v20 = 0.0;
      }

      else
      {
        v48 = self->_r_buf;
        v20 = 0.0;
        v49 = v18;
        v50 = a8;
        do
        {
          v51 = *v48++;
          v52 = v51;
          v53 = *v50++;
          *&v20 = *&v20 + (v52 * (v52 * v53));
          --v49;
        }

        while (v49);
        v54 = self->_r_buf;
        v55 = self->_d_buf;
        v56 = v18;
        v57 = a8;
        do
        {
          v58 = *v57++;
          v59 = v58;
          v60 = *v54++;
          *v55 = (v59 * v60) + ((*&v20 / v24) * *v55);
          ++v55;
          --v56;
        }

        while (v56);
      }

      v24 = *&v20;
    }

    while (v29++ != a10);
  }
}

@end