@interface MPSNDArrayQuantizedMatrixMultiplication
+ (BOOL)supportsDestinationQuantizationWithDescriptor:(id)a3 device:(void *)a4;
+ (BOOL)supportsSourceQuantizationWithDescriptor:(id)a3 atIndex:(unint64_t)a4 device:(void *)a5;
+ (int64_t)getDQuantMinValIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5;
+ (int64_t)getDQuantScaleIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5;
+ (int64_t)getLUTIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5;
+ (int64_t)getLeftDQuantMinValIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4;
+ (int64_t)getLeftDQuantScaleIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4;
+ (int64_t)getLeftMinValIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4;
+ (int64_t)getLeftScaleIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4;
+ (int64_t)getLeftZeroPointIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4;
+ (int64_t)getMinValIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5;
+ (int64_t)getRightDQuantMinValIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4;
+ (int64_t)getRightDQuantScaleIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4;
+ (int64_t)getRightLUTIndexWithLeftLUTQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4;
+ (int64_t)getRightMinValIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4;
+ (int64_t)getRightScaleIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4;
+ (int64_t)getRightZeroPointIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4;
+ (int64_t)getScaleIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5;
+ (int64_t)getZeroPointIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5;
- (MPSNDArrayQuantizedMatrixMultiplication)initWithDevice:(id)a3 leftQuantizationDescriptor:(id)a4 rightQuantizationDescriptor:(id)a5;
- (MPSNDArrayQuantizedMatrixMultiplication)initWithDevice:(id)a3 leftQuantizationDescriptor:(id)a4 rightQuantizationDescriptor:(id)a5 sourceCount:(unint64_t)a6;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (unint64_t)kernelDimensionalityForSourceArrays:(id)a3;
- (unint64_t)kernelDimensionalityForSourceArrays:(id)a3 destinationArrays:(id)a4 kernelDAGObject:(id)a5;
- (void)dealloc;
@end

@implementation MPSNDArrayQuantizedMatrixMultiplication

- (unint64_t)kernelDimensionalityForSourceArrays:(id)a3
{
  leftQuantizationDescriptor = self->super._leftQuantizationDescriptor;
  if (leftQuantizationDescriptor && [(MPSNDArrayQuantizationDescriptor *)leftQuantizationDescriptor quantizationScheme]== 1)
  {
    return 3;
  }

  rightQuantizationDescriptor = self->super._rightQuantizationDescriptor;
  if (rightQuantizationDescriptor && [(MPSNDArrayQuantizationDescriptor *)rightQuantizationDescriptor quantizationScheme]== 1)
  {
    return 3;
  }

  v8.receiver = self;
  v8.super_class = MPSNDArrayQuantizedMatrixMultiplication;
  return [(MPSNDArrayMatrixMultiplication *)&v8 kernelDimensionalityForSourceArrays:a3];
}

- (unint64_t)kernelDimensionalityForSourceArrays:(id)a3 destinationArrays:(id)a4 kernelDAGObject:(id)a5
{
  leftQuantizationDescriptor = self->super._leftQuantizationDescriptor;
  if (leftQuantizationDescriptor && [(MPSNDArrayQuantizationDescriptor *)leftQuantizationDescriptor quantizationScheme]== 1)
  {
    return 3;
  }

  rightQuantizationDescriptor = self->super._rightQuantizationDescriptor;
  if (rightQuantizationDescriptor && [(MPSNDArrayQuantizationDescriptor *)rightQuantizationDescriptor quantizationScheme]== 1)
  {
    return 3;
  }

  v12.receiver = self;
  v12.super_class = MPSNDArrayQuantizedMatrixMultiplication;
  return [(MPSNDArrayMatrixMultiplication *)&v12 kernelDimensionalityForSourceArrays:a3 destinationArrays:a4 kernelDAGObject:a5];
}

+ (int64_t)getLeftScaleIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4
{
  if (!a3)
  {
    return -1;
  }

  v4 = [a3 getScaleIndex];
  if (v4 == -1)
  {
    return -1;
  }

  else
  {
    return v4 + 2;
  }
}

+ (int64_t)getLeftZeroPointIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4
{
  if (!a3)
  {
    return -1;
  }

  v4 = [a3 getZeroPointIndex];
  if (v4 == -1)
  {
    return -1;
  }

  else
  {
    return v4 + 2;
  }
}

+ (int64_t)getLeftMinValIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4
{
  if (!a3)
  {
    return -1;
  }

  v4 = [a3 getMinValIndex];
  if (v4 == -1)
  {
    return -1;
  }

  else
  {
    return v4 + 2;
  }
}

+ (int64_t)getLeftDQuantScaleIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4
{
  if (!a3)
  {
    return -1;
  }

  v4 = [a3 getDQuantScaleIndex];
  if (v4 == -1)
  {
    return -1;
  }

  else
  {
    return v4 + 2;
  }
}

+ (int64_t)getLeftDQuantMinValIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4
{
  if (!a3)
  {
    return -1;
  }

  v4 = [a3 getDQuantMinValIndex];
  if (v4 == -1)
  {
    return -1;
  }

  else
  {
    return v4 + 2;
  }
}

+ (int64_t)getScaleIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (!a5)
  {
    v8 = [a4 quantizationScheme];
    v9 = [a3 getNDArrayCount] + 2;
    if (v8 == 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (v8 != 1)
    {
      return -1;
    }

    goto LABEL_6;
  }

  v8 = [a3 quantizationScheme];
  v9 = 2;
  if (v8 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v5)
  {
    v6 = a3;
  }

  if (v6)
  {
    if ([v6 quantizationScheme] == 1)
    {
      v10 = [v6 getScaleIndex];
      if (v10 != -1)
      {
        return v10 + v9;
      }
    }
  }

  return -1;
}

+ (int64_t)getZeroPointIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (!a5)
  {
    v8 = [a4 quantizationScheme];
    v9 = [a3 getNDArrayCount] + 2;
    if (v8 == 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (v8 != 1)
    {
      return -1;
    }

    goto LABEL_6;
  }

  v8 = [a3 quantizationScheme];
  v9 = 2;
  if (v8 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v5)
  {
    v6 = a3;
  }

  if (v6)
  {
    if ([v6 quantizationScheme] == 1)
    {
      v10 = [v6 getZeroPointIndex];
      if (v10 != -1)
      {
        return v10 + v9;
      }
    }
  }

  return -1;
}

+ (int64_t)getMinValIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (!a5)
  {
    v8 = [a4 quantizationScheme];
    v9 = [a3 getNDArrayCount] + 2;
    if (v8 == 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (v8 != 1)
    {
      return -1;
    }

    goto LABEL_6;
  }

  v8 = [a3 quantizationScheme];
  v9 = 2;
  if (v8 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v5)
  {
    v6 = a3;
  }

  if (v6)
  {
    if ([v6 quantizationScheme] == 1)
    {
      v10 = [v6 getMinValIndex];
      if (v10 != -1)
      {
        return v10 + v9;
      }
    }
  }

  return -1;
}

+ (int64_t)getDQuantScaleIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (!a5)
  {
    v8 = [a4 quantizationScheme];
    v9 = [a3 getNDArrayCount] + 2;
    if (v8 == 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (v8 != 1)
    {
      return -1;
    }

    goto LABEL_6;
  }

  v8 = [a3 quantizationScheme];
  v9 = 2;
  if (v8 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v5)
  {
    v6 = a3;
  }

  if (v6)
  {
    if ([v6 quantizationScheme] == 1)
    {
      v10 = [v6 getDQuantScaleIndex];
      if (v10 != -1)
      {
        return v10 + v9;
      }
    }
  }

  return -1;
}

+ (int64_t)getDQuantMinValIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (!a5)
  {
    v8 = [a4 quantizationScheme];
    v9 = [a3 getNDArrayCount] + 2;
    if (v8 == 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (v8 != 1)
    {
      return -1;
    }

    goto LABEL_6;
  }

  v8 = [a3 quantizationScheme];
  v9 = 2;
  if (v8 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v5)
  {
    v6 = a3;
  }

  if (v6)
  {
    if ([v6 quantizationScheme] == 1)
    {
      v10 = [v6 getDQuantMinValIndex];
      if (v10 != -1)
      {
        return v10 + v9;
      }
    }
  }

  return -1;
}

+ (int64_t)getLUTIndexWithLeftQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4 isForLeft:(BOOL)a5
{
  v5 = a5;
  if (!a5)
  {
    v8 = [a4 quantizationScheme];
    v9 = [a3 getNDArrayCount] + 2;
    if (v8 != 2)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v5)
    {
      v10 = a3;
    }

    else
    {
      v10 = a4;
    }

    if (v10)
    {
      goto LABEL_8;
    }

    return -1;
  }

  v8 = [a3 quantizationScheme];
  v9 = 2;
  if (v8 == 2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v8 != 1)
  {
    return -1;
  }

  v10 = v5 ? a3 : a4;
  if (!v10)
  {
    return -1;
  }

LABEL_8:
  if ([v10 quantizationScheme] == 2)
  {
    return v9;
  }

  else
  {
    return -1;
  }
}

+ (int64_t)getRightScaleIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4
{
  if (!a4)
  {
    return -1;
  }

  result = [a4 getScaleIndex];
  if (result != -1)
  {
    result += [a3 getNDArrayCount] + 2;
  }

  return result;
}

+ (int64_t)getRightZeroPointIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4
{
  if (!a4)
  {
    return -1;
  }

  result = [a4 getZeroPointIndex];
  if (result != -1)
  {
    result += [a3 getNDArrayCount] + 2;
  }

  return result;
}

+ (int64_t)getRightMinValIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4
{
  if (!a4)
  {
    return -1;
  }

  result = [a4 getMinValIndex];
  if (result != -1)
  {
    result += [a3 getNDArrayCount] + 2;
  }

  return result;
}

+ (int64_t)getRightDQuantScaleIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4
{
  if (!a4)
  {
    return -1;
  }

  result = [a4 getDQuantScaleIndex];
  if (result != -1)
  {
    result += [a3 getNDArrayCount] + 2;
  }

  return result;
}

+ (int64_t)getRightDQuantMinValIndexWithLeftAffineQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4
{
  if (!a4)
  {
    return -1;
  }

  result = [a4 getDQuantMinValIndex];
  if (result != -1)
  {
    result += [a3 getNDArrayCount] + 2;
  }

  return result;
}

+ (int64_t)getRightLUTIndexWithLeftLUTQuantizationDescriptor:(id)a3 rightQuantizationDescriptor:(id)a4
{
  if (a4)
  {
    return [a3 getNDArrayCount] + 3;
  }

  else
  {
    return -1;
  }
}

+ (BOOL)supportsSourceQuantizationWithDescriptor:(id)a3 atIndex:(unint64_t)a4 device:(void *)a5
{
  v6 = [a3 quantizationDataType];
  v7 = v6;
  if ((*(a5 + 1477) & 4) == 0 || *(a5 + 368) < 22)
  {
    return (v6 & 0x10000000) != 0;
  }

  result = 1;
  if ((v7 & 0x10000000) == 0 && (v7 & 0xDFFFFFFF) != 8)
  {
    return 0;
  }

  return result;
}

+ (BOOL)supportsDestinationQuantizationWithDescriptor:(id)a3 device:(void *)a4
{
  v5 = [a3 quantizationDataType];
  v6 = v5;
  if ((*(a4 + 1477) & 4) == 0 || *(a4 + 368) < 22)
  {
    return (v5 & 0x10000000) != 0;
  }

  result = 1;
  if ((v6 & 0x10000000) == 0 && (v6 & 0xDFFFFFFF) != 0x20)
  {
    return 0;
  }

  return result;
}

- (MPSNDArrayQuantizedMatrixMultiplication)initWithDevice:(id)a3 leftQuantizationDescriptor:(id)a4 rightQuantizationDescriptor:(id)a5
{
  v9 = [a4 getNDArrayCount];
  v10 = v9 + [a5 getNDArrayCount] + 2;

  return [(MPSNDArrayQuantizedMatrixMultiplication *)self initWithDevice:a3 leftQuantizationDescriptor:a4 rightQuantizationDescriptor:a5 sourceCount:v10];
}

- (MPSNDArrayQuantizedMatrixMultiplication)initWithDevice:(id)a3 leftQuantizationDescriptor:(id)a4 rightQuantizationDescriptor:(id)a5 sourceCount:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayQuantizedMatrixMultiplication;
  v9 = [(MPSNDArrayMatrixMultiplication *)&v11 initWithDevice:a3 sourceCount:a6];
  v9->super._leftQuantizationDescriptor = a4;
  v9->super._rightQuantizationDescriptor = a5;
  v9->super.super._encode = EncodeQuantizedMatrixMultiplication;
  v9->super.super.super._encodeGradient = 0;
  v9->super.super.super._encodeData = v9;
  v9->_lutGEMVKernel = [[MPSNDArrayLUTGEMV alloc] initWithDevice:a3 lhsDesc:a4 rhsDesc:a5];
  return v9;
}

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayQuantizedMatrixMultiplication;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:a3 sourceState:a7, a5, a6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayQuantizedMatrixMultiplication;
  [(MPSNDArrayMatrixMultiplication *)&v3 dealloc];
}

@end