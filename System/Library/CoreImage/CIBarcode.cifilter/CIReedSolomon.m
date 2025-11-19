@interface CIReedSolomon
- ($B716781559FB179C01A6A83DB44EE660)addOrSubtractPoly:(id *)a3 with:(id *)a4;
- ($B716781559FB179C01A6A83DB44EE660)buildGenerator:(int)a3;
- ($B716781559FB179C01A6A83DB44EE660)copyPoly:(id *)a3;
- ($B716781559FB179C01A6A83DB44EE660)createMonomial:(int)a3 coefficient:(int)a4;
- ($B716781559FB179C01A6A83DB44EE660)divide:(id *)a3 by:(id *)a4;
- ($B716781559FB179C01A6A83DB44EE660)multiplyPoly:(id *)a3 with:(id *)a4;
- (BOOL)fillPoly:(id *)a3 coefficients:(int *)a4 length:(int)a5;
- (id)initReedSolomon;
- (int)inverse:(int)a3;
- (int)multiply:(int)a3 with:(int)a4;
- (int)polyCoefficient:(id *)a3 degree:(int)a4;
- (void)clearPoly:(id *)a3;
- (void)dealloc;
@end

@implementation CIReedSolomon

- (id)initReedSolomon
{
  v12.receiver = self;
  v12.super_class = CIReedSolomon;
  v2 = [(CIReedSolomon *)&v12 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = 1;
  for (i = 8; i != 1032; i += 4)
  {
    *(&v2->super.isa + i) = v4;
    v6 = 2 * v4;
    v4 = (2 * v4) ^ 0x11D;
    if (v6 <= 255)
    {
      v4 = v6;
    }
  }

  for (j = 0; j != 255; ++j)
  {
    v2->_logTable[v2->_expTable[j]] = j;
  }

  *&v2->_cachedGeneratorNum = 0xA00000001;
  v8 = malloc_type_calloc(0xAuLL, 0x10uLL, 0x1010040A1D9428BuLL);
  v3->_cachedGenerators = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  v8->var1 = 1;
  v3->_cachedGenerators->var0 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  cachedGenerators = v3->_cachedGenerators;
  if (!cachedGenerators->var0)
  {
    free(cachedGenerators);
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  *cachedGenerators->var0 = 1;
  v10 = v3;
LABEL_13:

  return v10;
}

- (int)inverse:(int)a3
{
  if (a3)
  {
    return self->_expTable[255 - self->_logTable[a3]];
  }

  v4 = sub_D58();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_F1A0();
  }

  return 0x7FFFFFFF;
}

- (int)multiply:(int)a3 with:(int)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    if (a3 == 1)
    {
      return a4;
    }

    else if (a4 == 1)
    {
      return a3;
    }

    else
    {
      return self->_expTable[(self->_logTable[a4] + self->_logTable[a3]) % 255];
    }
  }

  return v4;
}

- ($B716781559FB179C01A6A83DB44EE660)createMonomial:(int)a3 coefficient:(int)a4
{
  if (a3 < 0)
  {
    v11 = sub_D58();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_F1D4();
    }

    return 0;
  }

  if (a4)
  {
    v6 = (a3 + 1);
    v7 = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    *v7 = a4;
    v9 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
    if (!v9)
    {
      free(v8);
      return v9;
    }

    v10 = [(CIReedSolomon *)self fillPoly:v9 coefficients:v8 length:v6];
    free(v8);
    if ((v10 & 1) == 0)
    {
      free(v9);
      return 0;
    }
  }

  else
  {
    v13 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
    v9 = v13;
    if (v13)
    {
      v13->var1 = 0;
    }
  }

  return v9;
}

- (BOOL)fillPoly:(id *)a3 coefficients:(int *)a4 length:(int)a5
{
  if (a3 && (v5 = a4) != 0 && a5)
  {
    if (a5 < 2 || *a4)
    {
      a3->var1 = a5;
      if (a3->var0)
      {
        free(a3->var0);
      }

      v8 = malloc_type_calloc(a5, 4uLL, 0x100004052888210uLL);
      a3->var0 = v8;
      if (v8)
      {
        v9 = 4 * a5;
LABEL_10:
        memcpy(v8, v5, v9);
LABEL_11:
        LOBYTE(v8) = 1;
      }
    }

    else
    {
      v5 = a4 + 1;
      v11 = a5 - 1;
      while (!*v5)
      {
        ++v5;
        if (!--v11)
        {
          goto LABEL_25;
        }
      }

      if (!v11)
      {
LABEL_25:
        [(CIReedSolomon *)self clearPoly:a3];
        goto LABEL_11;
      }

      a3->var1 = v11;
      if (a3->var0)
      {
        free(a3->var0);
        LODWORD(v11) = a3->var1;
      }

      v8 = malloc_type_calloc(v11, 4uLL, 0x100004052888210uLL);
      a3->var0 = v8;
      if (v8)
      {
        v9 = 4 * a3->var1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = sub_D58();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_F208();
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)clearPoly:(id *)a3
{
  if (a3)
  {
    free(a3->var0);
    a3->var1 = 0;
  }
}

- (int)polyCoefficient:(id *)a3 degree:(int)a4
{
  if ((a4 & 0x80000000) == 0)
  {
    var1 = a3->var1;
    if (var1 > a4)
    {
      return a3->var0[var1 + ~a4];
    }
  }

  v6 = sub_D58();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_F23C();
  }

  return 0;
}

- ($B716781559FB179C01A6A83DB44EE660)copyPoly:(id *)a3
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  if (v4)
  {
    var1 = a3->var1;
    v4->var1 = var1;
    v6 = malloc_type_calloc(var1, 4uLL, 0x100004052888210uLL);
    v4->var0 = v6;
    if (v6)
    {
      if (a3->var1 >= 1)
      {
        v7 = 0;
        var0 = a3->var0;
        do
        {
          v6[v7] = var0[v7];
          ++v7;
        }

        while (v7 < a3->var1);
      }
    }

    else
    {
      free(v4);
      return 0;
    }
  }

  return v4;
}

- ($B716781559FB179C01A6A83DB44EE660)addOrSubtractPoly:(id *)a3 with:(id *)a4
{
  var0 = 0;
  if (!a3 || !a4)
  {
    return var0;
  }

  if (![(CIReedSolomon *)self isZero:a3->var0, *&a3->var1])
  {
    if ([(CIReedSolomon *)self isZero:a4->var0, *&a4->var1])
    {
      v8 = self;
      v9 = a3;
      goto LABEL_7;
    }

    var1 = a3->var1;
    v12 = a4->var1;
    if (var1 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = var1;
    }

    if (var1 <= v12)
    {
      v14 = a3;
    }

    else
    {
      v14 = a4;
    }

    if (var1 <= v12)
    {
      v15 = a4;
    }

    else
    {
      v15 = a3;
    }

    var0 = v15->var0;
    if (v15->var0)
    {
      v16 = v14->var0;
      if (var1 >= v12)
      {
        v17 = a4->var1;
      }

      else
      {
        v17 = a3->var1;
      }

      v18 = malloc_type_calloc(v13, 4uLL, 0x100004052888210uLL);
      if (v18)
      {
        v19 = v18;
        if (v13 - v17 >= 1)
        {
          v20 = (v13 - v17);
          v21 = var0;
          v22 = v18;
          do
          {
            v23 = v21->var0;
            v21 = (v21 + 4);
            *v22++ = v23;
            --v20;
          }

          while (v20);
        }

        if (v17 >= 1)
        {
          v24 = v13 - v17;
          do
          {
            v25 = *v16++;
            v19[v24] = [(CIReedSolomon *)self addOrSubtract:v25 with:*(&var0->var0 + v24)];
            ++v24;
          }

          while (v24 < v13);
        }

        var0 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
        if (var0)
        {
          [(CIReedSolomon *)self fillPoly:var0 coefficients:v19 length:v13];
        }

        free(v19);
      }

      else
      {
        return 0;
      }
    }

    return var0;
  }

  v8 = self;
  v9 = a4;
LABEL_7:

  return [(CIReedSolomon *)v8 copyPoly:v9];
}

- ($B716781559FB179C01A6A83DB44EE660)multiplyPoly:(id *)a3 with:(id *)a4
{
  result = 0;
  if (a3 && a4)
  {
    if ([(CIReedSolomon *)self isZero:a3->var0, *&a3->var1]|| [(CIReedSolomon *)self isZero:a4->var0, *&a4->var1])
    {
      result = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
      if (result)
      {
        result->var1 = 0;
      }
    }

    else
    {
      var1 = a3->var1;
      var0 = a4->var0;
      v20 = a3->var0;
      v9 = a4->var1;
      result = malloc_type_calloc(var1 + v9 - 1, 4uLL, 0x100004052888210uLL);
      v18 = result;
      if (result)
      {
        v17 = (var1 + v9 - 1);
        if (var1 >= 1)
        {
          v10 = 0;
          v11 = result;
          do
          {
            if (v9 >= 1)
            {
              v12 = var0;
              v13 = v20[v10];
              v14 = v9;
              v15 = v11;
              do
              {
                v16 = *v12++;
                *v15 = [(CIReedSolomon *)self addOrSubtract:*v15 with:[(CIReedSolomon *)self multiply:v13 with:v16, v17]];
                ++v15;
                --v14;
              }

              while (v14);
            }

            ++v10;
            v11 = (v11 + 4);
          }

          while (v10 != var1);
        }

        result = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
        if (result)
        {
          result->var0 = v18;
          result->var1 = v17;
        }

        else
        {
          free(v18);
          return 0;
        }
      }
    }
  }

  return result;
}

- ($B716781559FB179C01A6A83DB44EE660)divide:(id *)a3 by:(id *)a4
{
  if (a3 && a4 && ![(CIReedSolomon *)self isZero:a4->var0, *&a4->var1])
  {
    v9 = [(CIReedSolomon *)self copyPoly:a3];
    v10 = [(CIReedSolomon *)self inverse:[(CIReedSolomon *)self polyCoefficient:a4 degree:[(CIReedSolomon *)self Degree:a4->var0, *&a4->var1]]];
    while (1)
    {
      v11 = [(CIReedSolomon *)self Degree:v9->var0, *&v9->var1];
      if (v11 < [(CIReedSolomon *)self Degree:a4->var0, *&a4->var1])
      {
        break;
      }

      v12 = [(CIReedSolomon *)self multiplyByMonomial:a4 degree:[(CIReedSolomon *)self Degree:v9->var0 coefficient:*&v9->var1]- [(CIReedSolomon *)self Degree:a4->var0, *&a4->var1], [(CIReedSolomon *)self multiply:[(CIReedSolomon *)self polyCoefficient:v9 degree:[(CIReedSolomon *)self Degree:v9->var0 with:*&v9->var1]], v10]];
      v13 = [(CIReedSolomon *)self addOrSubtractPoly:v9 with:v12];
      [(CIReedSolomon *)self clearPoly:v12];
      free(v12);
      [(CIReedSolomon *)self clearPoly:v9];
      free(v9);
      v9 = v13;
    }

    v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
    v8 = v14;
    if (v14)
    {
      v14->var1 = v9->var1;
      v14->var0 = v9->var0;
    }

    else
    {
      [(CIReedSolomon *)self clearPoly:v9];
    }

    free(v9);
  }

  else
  {
    v7 = sub_D58();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_F2A4();
    }

    return 0;
  }

  return v8;
}

- ($B716781559FB179C01A6A83DB44EE660)buildGenerator:(int)a3
{
  cachedGeneratorNum = self->_cachedGeneratorNum;
  cachedGenerators = self->_cachedGenerators;
  if (cachedGeneratorNum > a3)
  {
    return &cachedGenerators[a3];
  }

  v8 = cachedGeneratorNum;
  v9 = &cachedGenerators[cachedGeneratorNum - 1];
  v18 = a3 + 1;
  v10 = (cachedGeneratorNum - 1);
  while (1)
  {
    v19[0] = 0;
    v19[1] = 2;
    v11 = malloc_type_calloc(2uLL, 4uLL, 0x100004052888210uLL);
    v19[0] = v11;
    if (!v11)
    {
      break;
    }

    *v11 = 1;
    v12 = [(CIReedSolomon *)self Exp:v10];
    *(v19[0] + 4) = v12;
    v13 = [(CIReedSolomon *)self multiplyPoly:v9 with:v19];
    [(CIReedSolomon *)self clearPoly:v19];
    memoryCapacity = self->_memoryCapacity;
    v15 = self->_cachedGenerators;
    if (cachedGeneratorNum >= memoryCapacity)
    {
      self->_memoryCapacity = 2 * memoryCapacity;
      v15 = malloc_type_realloc(v15, 32 * memoryCapacity, 0x1010040A1D9428BuLL);
      self->_cachedGenerators = v15;
      if (!v15)
      {
        free(v13);
        return 0;
      }
    }

    v16 = &v15[v8];
    v16->var1 = v13->var1;
    v16->var0 = v13->var0;
    free(v13);
    v17 = self->_cachedGenerators;
    v9 = &v17[v8];
    ++cachedGeneratorNum;
    v10 = (v10 + 1);
    ++v8;
    if (a3 == v10)
    {
      self->_cachedGeneratorNum = v18;
      return &v17[v8 - 1];
    }
  }

  return 0;
}

- (void)dealloc
{
  cachedGenerators = self->_cachedGenerators;
  if (cachedGenerators)
  {
    cachedGeneratorNum = self->_cachedGeneratorNum;
    if (cachedGeneratorNum >= 1)
    {
      v5 = 0;
      for (i = 0; i < cachedGeneratorNum; ++i)
      {
        var0 = self->_cachedGenerators[v5].var0;
        if (var0)
        {
          free(var0);
          cachedGeneratorNum = self->_cachedGeneratorNum;
        }

        ++v5;
      }

      cachedGenerators = self->_cachedGenerators;
    }

    free(cachedGenerators);
  }

  v8.receiver = self;
  v8.super_class = CIReedSolomon;
  [(CIReedSolomon *)&v8 dealloc];
}

@end