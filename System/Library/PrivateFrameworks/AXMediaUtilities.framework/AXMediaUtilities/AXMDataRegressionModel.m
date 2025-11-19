@interface AXMDataRegressionModel
+ (id)getModelForX:(double *)a3 y:(double *)a4 n:(int)a5;
- (AXMDataRegressionModel)initWithXValues:(double *)a3 yValues:(double *)a4 count:(int)a5;
- (NSArray)partialDerivatives;
- (double)confidence;
- (double)fitDataWithModelParams:(double *)a3 finalParams:(double *)a4;
- (double)magnitude:(double *)a3 size:(int)a4;
- (double)roundNumber:(double)a3 withSignificantFigures:(unint64_t)a4;
- (id)modelFunction;
- (id)modelFunctionStringForParameters:(double *)a3 significantFigures:(int)a4;
- (int)getMatrixInverse:(double *)a3 size:(int)a4 pivot:(int *)a5 tmp:(double *)a6 result:(double *)a7;
- (int)modelParameterCount;
- (void)computeScore;
- (void)dealloc;
- (void)getDiagonal:(double *)a3 size:(int)a4 result:(double *)a5;
- (void)getGradientForX:(double)a3 parameterValues:(double *)a4 result:(double *)a5;
- (void)getIdentityMatrixWithSize:(int)a3 scalar:(double)a4 result:(double *)a5;
- (void)getInitialParams:(double *)a3;
- (void)getJacobianForParameters:(double *)a3 gradient:(double *)a4 result:(double *)a5;
- (void)getResidualsVector:(double *)a3 result:(double *)a4;
- (void)getSMA:(double *)a3 lookback:(int)a4;
- (void)printMatrix:(double *)a3 rows:(int)a4 cols:(int)a5;
- (void)sortDataPoints;
@end

@implementation AXMDataRegressionModel

- (AXMDataRegressionModel)initWithXValues:(double *)a3 yValues:(double *)a4 count:(int)a5
{
  v11.receiver = self;
  v11.super_class = AXMDataRegressionModel;
  v8 = [(AXMDataRegressionModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_n = a5;
    v8->_x = malloc_type_malloc(8 * a5, 0x100004000313F17uLL);
    v9->_y = malloc_type_malloc(8 * v9->_n, 0x100004000313F17uLL);
    v9->_bestFitParameters = malloc_type_malloc(8 * [(AXMDataRegressionModel *)v9 modelParameterCount], 0x100004000313F17uLL);
    memcpy(v9->_x, a3, 8 * v9->_n);
    memcpy(v9->_y, a4, 8 * v9->_n);
    v9->_error = 1.79769313e308;
  }

  return v9;
}

- (void)dealloc
{
  free(self->_bestFitParameters);
  free(self->_x);
  free(self->_y);
  v3.receiver = self;
  v3.super_class = AXMDataRegressionModel;
  [(AXMDataRegressionModel *)&v3 dealloc];
}

+ (id)getModelForX:(double *)a3 y:(double *)a4 n:(int)a5
{
  v5 = *&a5;
  v38[5] = *MEMORY[0x1E69E9840];
  v8 = getModelForX_y_n__modelClasses;
  if (!getModelForX_y_n__modelClasses)
  {
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v38[2] = objc_opt_class();
    v38[3] = objc_opt_class();
    v38[4] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:5];
    v10 = getModelForX_y_n__modelClasses;
    getModelForX_y_n__modelClasses = v9;

    v8 = getModelForX_y_n__modelClasses;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v8;
  v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  v11 = 0;
  if (v32)
  {
    v12 = 0x100004000313F17;
    v13 = *v34;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [objc_alloc(*(*(&v33 + 1) + 8 * i)) initWithXValues:a3 yValues:a4 count:v5];
        v16 = malloc_type_malloc(8 * [v15 modelParameterCount], v12);
        v17 = malloc_type_malloc(8 * [v15 modelParameterCount], v12);
        [v15 getInitialParams:v16];
        [v15 fitDataWithModelParams:v16 finalParams:v17];
        if (([v15 isDisqualified] & 1) == 0)
        {
          if (!v11 || ([v15 score], v19 = v18, objc_msgSend(v11, "score"), v19 < v20))
          {
            v21 = v15;
            v22 = v11;
            v23 = v13;
            v24 = v12;
            v25 = a3;
            v26 = a4;
            v27 = v5;
            v28 = v21;

            v29 = v28;
            v5 = v27;
            a4 = v26;
            a3 = v25;
            v12 = v24;
            v13 = v23;
            v11 = v29;
          }
        }

        free(v16);
        free(v17);
      }

      v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v32);
  }

  return v11;
}

- (double)confidence
{
  result = 1.0 - self->_score;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)fitDataWithModelParams:(double *)a3 finalParams:(double *)a4
{
  if ([(AXMDataRegressionModel *)self dataSatisfiesInitialConditions])
  {
    __dst = a4;
    v7 = [(AXMDataRegressionModel *)self modelParameterCount];
    __B[0] = 1.0;
    v44 = malloc_type_malloc(8 * self->_n * v7, 0x100004000313F17uLL);
    v8 = malloc_type_malloc(8 * self->_n * v7, 0x100004000313F17uLL);
    v9 = v7 * v7;
    v10 = vcvtd_n_u64_f64(v9, 3uLL);
    v11 = malloc_type_malloc(v10, 0x100004000313F17uLL);
    v49 = malloc_type_malloc(v10, 0x100004000313F17uLL);
    __C = malloc_type_malloc(v10, 0x100004000313F17uLL);
    v39 = malloc_type_malloc(v10, 0x100004000313F17uLL);
    v38 = malloc_type_malloc(8 * self->_n * v7, 0x100004000313F17uLL);
    __P = v7;
    v13 = 8 * v7;
    v47 = malloc_type_malloc(v13 * self->_n, 0x100004000313F17uLL);
    v37 = malloc_type_malloc(v10, 0x100004000313F17uLL);
    v46 = malloc_type_malloc(v10, 0x100004000313F17uLL);
    v45 = malloc_type_malloc(v10, 0x100004000313F17uLL);
    v14 = malloc_type_malloc(v13, 0x100004000313F17uLL);
    v15 = malloc_type_malloc(8 * self->_n, 0x100004000313F17uLL);
    v36 = malloc_type_malloc(8 * self->_n, 0x100004000313F17uLL);
    v43 = malloc_type_malloc(4 * self->_n, 0x100004052888210uLL);
    v42 = malloc_type_malloc(8 * self->_n, 0x100004000313F17uLL);
    v41 = malloc_type_malloc(v13, 0x100004000313F17uLL);
    v35 = malloc_type_malloc(v13, 0x100004000313F17uLL);
    v16 = malloc_type_malloc(v13, 0x100004000313F17uLL);
    memcpy(v14, a3, v13);
    [(AXMDataRegressionModel *)self getResidualsVector:v14 result:v15];
    n = self->_n;
    if (n < 1)
    {
      v21 = 0.0;
    }

    else
    {
      v18 = 0.0;
      v19 = v15;
      do
      {
        v20 = *v19++;
        v18 = v18 + v20 * v20;
        --n;
      }

      while (n);
      v21 = v18 * 0.5;
    }

    v22 = 0;
    while (1)
    {
      [(AXMDataRegressionModel *)self getJacobianForParameters:v14 gradient:v41 result:v44];
      vDSP_mtransD(v44, 1, v8, 1, __P, self->_n);
      vDSP_mmulD(v8, 1, v44, 1, v11, 1, __P, __P, self->_n);
      [(AXMDataRegressionModel *)self getDiagonal:v11 size:__P result:v49];
      vDSP_vsmulD(v49, 1, __B, __C, 1, v9);
      vDSP_vaddD(v11, 1, __C, 1, v46, 1, v9);
      [(AXMDataRegressionModel *)self getMatrixInverse:v46 size:__P pivot:v43 tmp:v42 result:v45];
      if (v9 > 0.0)
      {
        v23 = 1;
        v24 = v45;
        do
        {
          *v24 = -*v24;
          ++v24;
          v25 = v23++;
        }

        while (v9 > v25);
      }

      vDSP_mmulD(v45, 1, v8, 1, v47, 1, __P, self->_n, __P);
      vDSP_mmulD(v47, 1, v15, 1, v16, 1, __P, 1uLL, self->_n);
      [(AXMDataRegressionModel *)self magnitude:v16 size:__P];
      v27 = v26;
      vDSP_vaddD(v14, 1, v16, 1, v14, 1, __P);
      [(AXMDataRegressionModel *)self getResidualsVector:v14 result:v15];
      v28 = self->_n;
      if (v28 < 1)
      {
        v32 = 0.0;
      }

      else
      {
        v29 = 0.0;
        v30 = v15;
        do
        {
          v31 = *v30++;
          v29 = v29 + v31 * v31;
          --v28;
        }

        while (v28);
        v32 = v29 * 0.5;
      }

      v33 = sqrt(v27);
      if (v33 > 0.05 || v32 >= v21)
      {
        if (v33 > 0.05)
        {
          __B[0] = __B[0] * 10.0;
        }
      }

      else
      {
        vDSP_vaddD(v14, 1, v16, 1, v14, 1, __P);
        __B[0] = __B[0] / 10.0;
        v21 = v32;
      }

      if (v33 <= 0.05 && v33 < 0.0000001)
      {
        break;
      }

      self->_error = v21;
      [(AXMDataRegressionModel *)self computeScore];
      if (++v22 == 15000)
      {
        v22 = 15000;
        break;
      }
    }

    [(AXMDataRegressionModel *)self disqualifyModelIfNecessary];
    memcpy(__dst, v14, v13);
    memcpy(self->_bestFitParameters, v14, v13);
    free(v44);
    free(v8);
    free(v11);
    free(v49);
    free(__C);
    free(v39);
    free(v38);
    free(v47);
    free(v37);
    free(v46);
    free(v45);
    free(v14);
    free(v15);
    free(v36);
    free(v43);
    free(v42);
    free(v41);
    free(v35);
    free(v16);
    self->_iterations = v22;
  }

  else
  {
    self->_error = 1.79769313e308;
    [(AXMDataRegressionModel *)self computeScore];
    return self->_error;
  }

  return v21;
}

- (void)printMatrix:(double *)a3 rows:(int)a4 cols:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v12 = [MEMORY[0x1E696AD60] string];
  [v12 appendFormat:@"\n%d x %d\n", v6, v5];
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = v5;
      v10 = a3;
      if (v5 >= 1)
      {
        do
        {
          v11 = *v10++;
          [v12 appendFormat:@"\t%.6f", v11];
          --v9;
        }

        while (v9);
      }

      [v12 appendString:@"\n"];
      ++v8;
      a3 += v6;
    }

    while (v8 != v6);
  }

  NSLog(&stru_1F23ECC68.isa, v12);
}

- (double)magnitude:(double *)a3 size:(int)a4
{
  if (a4 < 1)
  {
    return 0.0;
  }

  v4 = a4;
  result = 0.0;
  do
  {
    v6 = *a3++;
    result = result + v6 * v6;
    --v4;
  }

  while (v4);
  return result;
}

- (void)getIdentityMatrixWithSize:(int)a3 scalar:(double)a4 result:(double *)a5
{
  if (a3)
  {
    v5 = 0;
    LODWORD(v6) = a3 * a3;
    if ((a3 * a3) <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v6;
    }

    do
    {
      if (v5 / a3 == v5 % a3)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0.0;
      }

      a5[v5++] = v7;
    }

    while (v6 != v5);
  }
}

- (void)getResidualsVector:(double *)a3 result:(double *)a4
{
  v10 = [(AXMDataRegressionModel *)self modelFunction];
  v7 = [(AXMDataRegressionModel *)self modelParameterCount];
  if (self->_n >= 1)
  {
    v8 = 0;
    v9 = v7;
    do
    {
      a4[v8] = v10[2](v10, a3, v9, self->_x[v8]) - self->_y[v8];
      ++v8;
    }

    while (v8 < self->_n);
  }
}

- (void)getGradientForX:(double)a3 parameterValues:(double *)a4 result:(double *)a5
{
  v9 = [(AXMDataRegressionModel *)self modelParameterCount];
  v12 = [(AXMDataRegressionModel *)self partialDerivatives];
  if ([v12 count])
  {
    v10 = 0;
    do
    {
      v11 = [v12 objectAtIndexedSubscript:v10];
      a5[v10] = (v11)[2](v11, a4, v9, a3);

      ++v10;
    }

    while (v10 < [v12 count]);
  }
}

- (void)getJacobianForParameters:(double *)a3 gradient:(double *)a4 result:(double *)a5
{
  v9 = [(AXMDataRegressionModel *)self modelParameterCount];
  if (self->_n >= 1)
  {
    v10 = v9;
    v11 = 0;
    v12 = 8 * v9;
    v13 = v9;
    do
    {
      [(AXMDataRegressionModel *)self getGradientForX:a3 parameterValues:a4 result:self->_x[v11]];
      v14 = v13;
      v15 = a4;
      v16 = a5;
      if (v10 >= 1)
      {
        do
        {
          v17 = *v15++;
          *v16++ = v17;
          --v14;
        }

        while (v14);
      }

      ++v11;
      a5 = (a5 + v12);
    }

    while (v11 < self->_n);
  }
}

- (int)getMatrixInverse:(double *)a3 size:(int)a4 pivot:(int *)a5 tmp:(double *)a6 result:(double *)a7
{
  memcpy(a7, a3, 8 * a4 * a4);
  dgetrf_NEWLAPACK();
  dgetri_NEWLAPACK();
  return 0;
}

- (void)getDiagonal:(double *)a3 size:(int)a4 result:(double *)a5
{
  if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      for (j = 0; j != a4; a5[j++] = v7)
      {
        v7 = 0.0;
        if (i == j)
        {
          v7 = a3[i + i * a4];
        }
      }

      a5 += a4;
    }
  }
}

- (void)computeScore
{
  n = self->_n;
  if (n < 1)
  {
    v11 = 0.0;
  }

  else
  {
    y = self->_y;
    v4 = 0.0;
    v5 = y;
    v6 = self->_n;
    do
    {
      v7 = *v5++;
      v4 = v4 + v7;
      --v6;
    }

    while (v6);
    v8 = v4 / n;
    v9 = 0.0;
    do
    {
      v10 = *y++;
      v9 = v9 + (v10 - v8) * (v10 - v8);
      --n;
    }

    while (n);
    v11 = v9 * 0.5;
  }

  self->_score = self->_error / v11;
}

- (id)modelFunction
{
  v2 = NSStringFromSelector(a2);
  NSLog(&cfstr_SubclassesMust.isa, v2);

  return 0;
}

- (int)modelParameterCount
{
  v2 = NSStringFromSelector(a2);
  NSLog(&cfstr_SubclassesMust.isa, v2);

  return 0;
}

- (void)getInitialParams:(double *)a3
{
  v4 = [(AXMDataRegressionModel *)self modelParameterCount];
  if (v4 >= 1)
  {

    memset_pattern16(a3, &xmmword_1AE451DD0, 8 * v4);
  }
}

- (NSArray)partialDerivatives
{
  v2 = NSStringFromSelector(a2);
  NSLog(&cfstr_SubclassesMust.isa, v2);

  return 0;
}

- (id)modelFunctionStringForParameters:(double *)a3 significantFigures:(int)a4
{
  v4 = NSStringFromSelector(a2);
  NSLog(&cfstr_SubclassesMust.isa, v4);

  return 0;
}

- (void)sortDataPoints
{
  v10 = [MEMORY[0x1E695DF70] array];
  if (self->_n >= 1)
  {
    v3 = 0;
    do
    {
      v4 = objc_alloc_init(AXMPoint);
      [(AXMPoint *)v4 setX:self->_x[v3]];
      [(AXMPoint *)v4 setY:self->_y[v3]];
      [v10 addObject:v4];

      ++v3;
    }

    while (v3 < self->_n);
  }

  [v10 sortUsingComparator:&__block_literal_global_32];
  if (self->_n >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [v10 objectAtIndexedSubscript:v5];
      [v6 x];
      self->_x[v5] = v7;

      v8 = [v10 objectAtIndexedSubscript:v5];
      [v8 y];
      self->_y[v5] = v9;

      ++v5;
    }

    while (v5 < self->_n);
  }
}

uint64_t __40__AXMDataRegressionModel_sortDataPoints__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 x];
  v7 = v6;
  [v5 x];
  if (v7 >= v8)
  {
    [v4 x];
    v11 = v10;
    [v5 x];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)getSMA:(double *)a3 lookback:(int)a4
{
  n = self->_n;
  if (n >= 1)
  {
    for (i = 0; i != n; ++i)
    {
      if (a4 < 1)
      {
        v7 = 0.0;
LABEL_9:
        v6 = a4;
      }

      else
      {
        v6 = 0;
        v7 = 0.0;
        v8 = i;
        while ((v8 & 0x80000000) == 0)
        {
          v7 = v7 + self->_y[v8--];
          ++v6;
          if (i - a4 >= v8)
          {
            goto LABEL_9;
          }
        }
      }

      a3[i] = v7 / v6;
    }
  }
}

- (double)roundNumber:(double)a3 withSignificantFigures:(unint64_t)a4
{
  v5 = fabs(a3);
  v6 = floor(log10(v5)) - a4 + 1.0;
  v7 = round(v5 * __exp10(-v6));
  v8 = __exp10(v6) * v7;
  result = -v8;
  if (a3 >= 0.0)
  {
    return v8;
  }

  return result;
}

@end