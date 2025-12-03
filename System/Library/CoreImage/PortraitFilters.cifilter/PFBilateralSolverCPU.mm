@interface PFBilateralSolverCPU
+ (void)_computeAx:(id)ax A:(const float *)a Dn:(const float *)dn lambda:(float)lambda x:(const float *)x output:(float *)output;
- (PFBilateralSolverCPU)initWithWidth:(int)width height:(int)height maxVertices:(unint64_t)vertices;
- (int)doSolveWithBilateralGridhash:(id)gridhash reference:(__IOSurface *)reference disparity:(__CVBuffer *)disparity confidence:(__CVBuffer *)confidence output:(__CVBuffer *)output lambda:(float)lambda maxIterations:(int)iterations;
- (void)_doBistochastize:(id)bistochastize nIterations:(int)iterations;
- (void)_doSolve:(id)solve t:(const __CVBuffer *)t c:(const __CVBuffer *)c x:(float *)x lambda:(float)lambda pcgMaxIterations:(int)iterations;
- (void)_pcg:(id)_pcg A:(const float *)a lambda:(float)lambda b:(const float *)b x:(float *)x M:(const float *)m tol:(float)tol maxIterations:(int)self0;
- (void)dealloc;
@end

@implementation PFBilateralSolverCPU

- (PFBilateralSolverCPU)initWithWidth:(int)width height:(int)height maxVertices:(unint64_t)vertices
{
  v12.receiver = self;
  v12.super_class = PFBilateralSolverCPU;
  v8 = [(PFBilateralSolverCPU *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_useTrilinearInterpolation = 1;
    v8->_width = width;
    v8->_height = height;
    v8->_maxVertices = vertices;
    v10 = 4 * vertices;
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

- (int)doSolveWithBilateralGridhash:(id)gridhash reference:(__IOSurface *)reference disparity:(__CVBuffer *)disparity confidence:(__CVBuffer *)confidence output:(__CVBuffer *)output lambda:(float)lambda maxIterations:(int)iterations
{
  v9 = *&iterations;
  gridhashCopy = gridhash;
  [(PFBilateralSolverCPU *)self _doBistochastize:gridhashCopy nIterations:10];
  *&v17 = lambda;
  [(PFBilateralSolverCPU *)self _doSolve:gridhashCopy t:disparity c:confidence x:self->_x_buf lambda:v9 pcgMaxIterations:v17];
  if (self->_useTrilinearInterpolation)
  {
    [gridhashCopy slice_trilinear:reference pin:self->_x_buf pout:output];
  }

  else
  {
    [gridhashCopy slice:self->_x_buf outPixelBuffer:output];
  }

  return 0;
}

- (void)_doBistochastize:(id)bistochastize nIterations:(int)iterations
{
  bistochastizeCopy = bistochastize;
  countVertices = [bistochastizeCopy countVertices];
  [bistochastizeCopy splat_ones:self->_Dm_buf];
  if (countVertices >= 1)
  {
    memset_pattern16(self->_Dn_buf, &unk_54B50, 4 * countVertices);
  }

  if (iterations >= 1)
  {
    v7 = 1;
    do
    {
      [bistochastizeCopy blur:self->_Dn_buf pout:self->_q_buf];
      if (countVertices >= 1)
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

        while (countVertices != v8);
      }
    }

    while (v7++ != iterations);
  }

  [bistochastizeCopy blur:self->_Dn_buf pout:self->_q_buf];
  if (countVertices >= 1)
  {
    v14 = self->_q_buf;
    v15 = countVertices;
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

- (void)_doSolve:(id)solve t:(const __CVBuffer *)t c:(const __CVBuffer *)c x:(float *)x lambda:(float)lambda pcgMaxIterations:(int)iterations
{
  v8 = *&iterations;
  solveCopy = solve;
  countVertices = [solveCopy countVertices];
  countDims = [solveCopy countDims];
  if (countVertices <= 0)
  {
    [solveCopy splat:c pout:self->_Sc_buf];
    [solveCopy splat_w_mul_x:c inPixelBuffer:t pout:self->_b_buf];
  }

  else
  {
    Dn_buf = self->_Dn_buf;
    Dm_buf = self->_Dm_buf;
    A_buf = self->_A_buf;
    v19 = countVertices;
    do
    {
      v20 = *Dn_buf++;
      v21 = v20;
      v22 = v20 * (2 * countDims);
      v23 = *Dm_buf++;
      *A_buf++ = v23 - (v21 * v22);
      --v19;
    }

    while (v19);
    [solveCopy splat:c pout:self->_Sc_buf];
    v24 = self->_A_buf;
    M_buf = self->_M_buf;
    Sc_buf = self->_Sc_buf;
    LODWORD(v27) = 1.0;
    v28 = countVertices;
    do
    {
      v29 = *Sc_buf++;
      v30 = v29 + (lambda * *v24);
      *v24++ = v30;
      *M_buf++ = 1.0 / fmaxf(v30, 0.00001);
      --v28;
    }

    while (v28);
    [solveCopy splat_w_mul_x:c inPixelBuffer:t pout:{self->_b_buf, v27}];
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

      x[v33++] = *&v31;
    }

    while (countVertices != v33);
  }

  LODWORD(v32) = 925353388;
  *&v31 = lambda;
  [(PFBilateralSolverCPU *)self _pcg:solveCopy A:self->_A_buf lambda:self->_b_buf b:x x:self->_M_buf M:v8 tol:v31 maxIterations:v32];
}

+ (void)_computeAx:(id)ax A:(const float *)a Dn:(const float *)dn lambda:(float)lambda x:(const float *)x output:(float *)output
{
  axCopy = ax;
  countVertices = [axCopy countVertices];
  if (countVertices >= 1)
  {
    v15 = 0;
    v16 = -lambda;
    v17 = countVertices;
    do
    {
      v18 = a[v15] * x[v15];
      v22 = 0;
      v19 = [axCopy blur_indices:v15 n_blur_indices:&v22];
      v20 = v22;
      if (v22 >= 1)
      {
        do
        {
          v21 = *v19++;
          v18 = v18 + (x[v21] * ((dn[v21] * dn[v15]) * v16));
          --v20;
        }

        while (v20);
      }

      output[v15++] = v18;
    }

    while (v15 != v17);
  }
}

- (void)_pcg:(id)_pcg A:(const float *)a lambda:(float)lambda b:(const float *)b x:(float *)x M:(const float *)m tol:(float)tol maxIterations:(int)self0
{
  _pcgCopy = _pcg;
  countVertices = [_pcgCopy countVertices];
  *&v19 = lambda;
  [PFBilateralSolverCPU _computeAx:_pcgCopy A:a Dn:self->_Dn_buf lambda:x x:self->_r_buf output:v19];
  if (countVertices < 1)
  {
    v24 = 0.0;
  }

  else
  {
    r_buf = self->_r_buf;
    d_buf = self->_d_buf;
    v23 = countVertices;
    v24 = 0.0;
    mCopy = m;
    do
    {
      v26 = *b++;
      v27 = v26 - *r_buf;
      v28 = *mCopy++;
      v24 = v24 + (v27 * (v28 * v27));
      *r_buf++ = v27;
      *d_buf++ = v28 * v27;
      --v23;
    }

    while (v23);
  }

  if (iterations >= 1)
  {
    v29 = 1;
    do
    {
      *&v20 = lambda;
      [PFBilateralSolverCPU _computeAx:_pcgCopy A:a Dn:self->_Dn_buf lambda:self->_d_buf x:self->_q_buf output:v20];
      if (countVertices < 1)
      {
        v41 = 0.0;
      }

      else
      {
        v30 = self->_d_buf;
        q_buf = self->_q_buf;
        v32 = 0.0;
        v33 = countVertices;
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
        v42 = countVertices;
        xCopy = x;
        do
        {
          v44 = *v38++;
          v45 = *xCopy + (v37 * v44);
          v46 = *v40++;
          v47 = *v39 + (-v37 * v46);
          *xCopy++ = v45;
          *v39++ = v47;
          v41 = v41 + (v47 * v47);
          --v42;
        }

        while (v42);
      }

      if (sqrtf(v41) < tol)
      {
        break;
      }

      if (countVertices < 1)
      {
        v20 = 0.0;
      }

      else
      {
        v48 = self->_r_buf;
        v20 = 0.0;
        v49 = countVertices;
        mCopy2 = m;
        do
        {
          v51 = *v48++;
          v52 = v51;
          v53 = *mCopy2++;
          *&v20 = *&v20 + (v52 * (v52 * v53));
          --v49;
        }

        while (v49);
        v54 = self->_r_buf;
        v55 = self->_d_buf;
        v56 = countVertices;
        mCopy3 = m;
        do
        {
          v58 = *mCopy3++;
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

    while (v29++ != iterations);
  }
}

@end