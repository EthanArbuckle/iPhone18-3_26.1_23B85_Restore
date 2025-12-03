@interface MPSNDArrayQuantizedMatrixMultiplication
+ (BOOL)supportsDestinationQuantizationWithDescriptor:(id)descriptor device:(void *)device;
+ (BOOL)supportsSourceQuantizationWithDescriptor:(id)descriptor atIndex:(unint64_t)index device:(void *)device;
+ (int64_t)getDQuantMinValIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left;
+ (int64_t)getDQuantScaleIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left;
+ (int64_t)getLUTIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left;
+ (int64_t)getLeftDQuantMinValIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
+ (int64_t)getLeftDQuantScaleIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
+ (int64_t)getLeftMinValIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
+ (int64_t)getLeftScaleIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
+ (int64_t)getLeftZeroPointIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
+ (int64_t)getMinValIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left;
+ (int64_t)getRightDQuantMinValIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
+ (int64_t)getRightDQuantScaleIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
+ (int64_t)getRightLUTIndexWithLeftLUTQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
+ (int64_t)getRightMinValIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
+ (int64_t)getRightScaleIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
+ (int64_t)getRightZeroPointIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
+ (int64_t)getScaleIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left;
+ (int64_t)getZeroPointIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left;
- (MPSNDArrayQuantizedMatrixMultiplication)initWithDevice:(id)device leftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor;
- (MPSNDArrayQuantizedMatrixMultiplication)initWithDevice:(id)device leftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor sourceCount:(unint64_t)count;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays;
- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays destinationArrays:(id)destinationArrays kernelDAGObject:(id)object;
- (void)dealloc;
@end

@implementation MPSNDArrayQuantizedMatrixMultiplication

- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays
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
  return [(MPSNDArrayMatrixMultiplication *)&v8 kernelDimensionalityForSourceArrays:arrays];
}

- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays destinationArrays:(id)destinationArrays kernelDAGObject:(id)object
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
  return [(MPSNDArrayMatrixMultiplication *)&v12 kernelDimensionalityForSourceArrays:arrays destinationArrays:destinationArrays kernelDAGObject:object];
}

+ (int64_t)getLeftScaleIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  if (!descriptor)
  {
    return -1;
  }

  getScaleIndex = [descriptor getScaleIndex];
  if (getScaleIndex == -1)
  {
    return -1;
  }

  else
  {
    return getScaleIndex + 2;
  }
}

+ (int64_t)getLeftZeroPointIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  if (!descriptor)
  {
    return -1;
  }

  getZeroPointIndex = [descriptor getZeroPointIndex];
  if (getZeroPointIndex == -1)
  {
    return -1;
  }

  else
  {
    return getZeroPointIndex + 2;
  }
}

+ (int64_t)getLeftMinValIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  if (!descriptor)
  {
    return -1;
  }

  getMinValIndex = [descriptor getMinValIndex];
  if (getMinValIndex == -1)
  {
    return -1;
  }

  else
  {
    return getMinValIndex + 2;
  }
}

+ (int64_t)getLeftDQuantScaleIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  if (!descriptor)
  {
    return -1;
  }

  getDQuantScaleIndex = [descriptor getDQuantScaleIndex];
  if (getDQuantScaleIndex == -1)
  {
    return -1;
  }

  else
  {
    return getDQuantScaleIndex + 2;
  }
}

+ (int64_t)getLeftDQuantMinValIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  if (!descriptor)
  {
    return -1;
  }

  getDQuantMinValIndex = [descriptor getDQuantMinValIndex];
  if (getDQuantMinValIndex == -1)
  {
    return -1;
  }

  else
  {
    return getDQuantMinValIndex + 2;
  }
}

+ (int64_t)getScaleIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left
{
  leftCopy = left;
  descriptorCopy = quantizationDescriptor;
  if (!left)
  {
    quantizationScheme = [quantizationDescriptor quantizationScheme];
    v9 = [descriptor getNDArrayCount] + 2;
    if (quantizationScheme == 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (quantizationScheme != 1)
    {
      return -1;
    }

    goto LABEL_6;
  }

  quantizationScheme = [descriptor quantizationScheme];
  v9 = 2;
  if (quantizationScheme != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (leftCopy)
  {
    descriptorCopy = descriptor;
  }

  if (descriptorCopy)
  {
    if ([descriptorCopy quantizationScheme] == 1)
    {
      getScaleIndex = [descriptorCopy getScaleIndex];
      if (getScaleIndex != -1)
      {
        return getScaleIndex + v9;
      }
    }
  }

  return -1;
}

+ (int64_t)getZeroPointIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left
{
  leftCopy = left;
  descriptorCopy = quantizationDescriptor;
  if (!left)
  {
    quantizationScheme = [quantizationDescriptor quantizationScheme];
    v9 = [descriptor getNDArrayCount] + 2;
    if (quantizationScheme == 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (quantizationScheme != 1)
    {
      return -1;
    }

    goto LABEL_6;
  }

  quantizationScheme = [descriptor quantizationScheme];
  v9 = 2;
  if (quantizationScheme != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (leftCopy)
  {
    descriptorCopy = descriptor;
  }

  if (descriptorCopy)
  {
    if ([descriptorCopy quantizationScheme] == 1)
    {
      getZeroPointIndex = [descriptorCopy getZeroPointIndex];
      if (getZeroPointIndex != -1)
      {
        return getZeroPointIndex + v9;
      }
    }
  }

  return -1;
}

+ (int64_t)getMinValIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left
{
  leftCopy = left;
  descriptorCopy = quantizationDescriptor;
  if (!left)
  {
    quantizationScheme = [quantizationDescriptor quantizationScheme];
    v9 = [descriptor getNDArrayCount] + 2;
    if (quantizationScheme == 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (quantizationScheme != 1)
    {
      return -1;
    }

    goto LABEL_6;
  }

  quantizationScheme = [descriptor quantizationScheme];
  v9 = 2;
  if (quantizationScheme != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (leftCopy)
  {
    descriptorCopy = descriptor;
  }

  if (descriptorCopy)
  {
    if ([descriptorCopy quantizationScheme] == 1)
    {
      getMinValIndex = [descriptorCopy getMinValIndex];
      if (getMinValIndex != -1)
      {
        return getMinValIndex + v9;
      }
    }
  }

  return -1;
}

+ (int64_t)getDQuantScaleIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left
{
  leftCopy = left;
  descriptorCopy = quantizationDescriptor;
  if (!left)
  {
    quantizationScheme = [quantizationDescriptor quantizationScheme];
    v9 = [descriptor getNDArrayCount] + 2;
    if (quantizationScheme == 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (quantizationScheme != 1)
    {
      return -1;
    }

    goto LABEL_6;
  }

  quantizationScheme = [descriptor quantizationScheme];
  v9 = 2;
  if (quantizationScheme != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (leftCopy)
  {
    descriptorCopy = descriptor;
  }

  if (descriptorCopy)
  {
    if ([descriptorCopy quantizationScheme] == 1)
    {
      getDQuantScaleIndex = [descriptorCopy getDQuantScaleIndex];
      if (getDQuantScaleIndex != -1)
      {
        return getDQuantScaleIndex + v9;
      }
    }
  }

  return -1;
}

+ (int64_t)getDQuantMinValIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left
{
  leftCopy = left;
  descriptorCopy = quantizationDescriptor;
  if (!left)
  {
    quantizationScheme = [quantizationDescriptor quantizationScheme];
    v9 = [descriptor getNDArrayCount] + 2;
    if (quantizationScheme == 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (quantizationScheme != 1)
    {
      return -1;
    }

    goto LABEL_6;
  }

  quantizationScheme = [descriptor quantizationScheme];
  v9 = 2;
  if (quantizationScheme != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (leftCopy)
  {
    descriptorCopy = descriptor;
  }

  if (descriptorCopy)
  {
    if ([descriptorCopy quantizationScheme] == 1)
    {
      getDQuantMinValIndex = [descriptorCopy getDQuantMinValIndex];
      if (getDQuantMinValIndex != -1)
      {
        return getDQuantMinValIndex + v9;
      }
    }
  }

  return -1;
}

+ (int64_t)getLUTIndexWithLeftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor isForLeft:(BOOL)left
{
  leftCopy = left;
  if (!left)
  {
    quantizationScheme = [quantizationDescriptor quantizationScheme];
    v9 = [descriptor getNDArrayCount] + 2;
    if (quantizationScheme != 2)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (leftCopy)
    {
      quantizationDescriptorCopy = descriptor;
    }

    else
    {
      quantizationDescriptorCopy = quantizationDescriptor;
    }

    if (quantizationDescriptorCopy)
    {
      goto LABEL_8;
    }

    return -1;
  }

  quantizationScheme = [descriptor quantizationScheme];
  v9 = 2;
  if (quantizationScheme == 2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (quantizationScheme != 1)
  {
    return -1;
  }

  quantizationDescriptorCopy = leftCopy ? descriptor : quantizationDescriptor;
  if (!quantizationDescriptorCopy)
  {
    return -1;
  }

LABEL_8:
  if ([quantizationDescriptorCopy quantizationScheme] == 2)
  {
    return v9;
  }

  else
  {
    return -1;
  }
}

+ (int64_t)getRightScaleIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  if (!quantizationDescriptor)
  {
    return -1;
  }

  result = [quantizationDescriptor getScaleIndex];
  if (result != -1)
  {
    result += [descriptor getNDArrayCount] + 2;
  }

  return result;
}

+ (int64_t)getRightZeroPointIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  if (!quantizationDescriptor)
  {
    return -1;
  }

  result = [quantizationDescriptor getZeroPointIndex];
  if (result != -1)
  {
    result += [descriptor getNDArrayCount] + 2;
  }

  return result;
}

+ (int64_t)getRightMinValIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  if (!quantizationDescriptor)
  {
    return -1;
  }

  result = [quantizationDescriptor getMinValIndex];
  if (result != -1)
  {
    result += [descriptor getNDArrayCount] + 2;
  }

  return result;
}

+ (int64_t)getRightDQuantScaleIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  if (!quantizationDescriptor)
  {
    return -1;
  }

  result = [quantizationDescriptor getDQuantScaleIndex];
  if (result != -1)
  {
    result += [descriptor getNDArrayCount] + 2;
  }

  return result;
}

+ (int64_t)getRightDQuantMinValIndexWithLeftAffineQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  if (!quantizationDescriptor)
  {
    return -1;
  }

  result = [quantizationDescriptor getDQuantMinValIndex];
  if (result != -1)
  {
    result += [descriptor getNDArrayCount] + 2;
  }

  return result;
}

+ (int64_t)getRightLUTIndexWithLeftLUTQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  if (quantizationDescriptor)
  {
    return [descriptor getNDArrayCount] + 3;
  }

  else
  {
    return -1;
  }
}

+ (BOOL)supportsSourceQuantizationWithDescriptor:(id)descriptor atIndex:(unint64_t)index device:(void *)device
{
  quantizationDataType = [descriptor quantizationDataType];
  v7 = quantizationDataType;
  if ((*(device + 1477) & 4) == 0 || *(device + 368) < 22)
  {
    return (quantizationDataType & 0x10000000) != 0;
  }

  result = 1;
  if ((v7 & 0x10000000) == 0 && (v7 & 0xDFFFFFFF) != 8)
  {
    return 0;
  }

  return result;
}

+ (BOOL)supportsDestinationQuantizationWithDescriptor:(id)descriptor device:(void *)device
{
  quantizationDataType = [descriptor quantizationDataType];
  v6 = quantizationDataType;
  if ((*(device + 1477) & 4) == 0 || *(device + 368) < 22)
  {
    return (quantizationDataType & 0x10000000) != 0;
  }

  result = 1;
  if ((v6 & 0x10000000) == 0 && (v6 & 0xDFFFFFFF) != 0x20)
  {
    return 0;
  }

  return result;
}

- (MPSNDArrayQuantizedMatrixMultiplication)initWithDevice:(id)device leftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor
{
  getNDArrayCount = [descriptor getNDArrayCount];
  v10 = getNDArrayCount + [quantizationDescriptor getNDArrayCount] + 2;

  return [(MPSNDArrayQuantizedMatrixMultiplication *)self initWithDevice:device leftQuantizationDescriptor:descriptor rightQuantizationDescriptor:quantizationDescriptor sourceCount:v10];
}

- (MPSNDArrayQuantizedMatrixMultiplication)initWithDevice:(id)device leftQuantizationDescriptor:(id)descriptor rightQuantizationDescriptor:(id)quantizationDescriptor sourceCount:(unint64_t)count
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayQuantizedMatrixMultiplication;
  v9 = [(MPSNDArrayMatrixMultiplication *)&v11 initWithDevice:device sourceCount:count];
  v9->super._leftQuantizationDescriptor = descriptor;
  v9->super._rightQuantizationDescriptor = quantizationDescriptor;
  v9->super.super._encode = EncodeQuantizedMatrixMultiplication;
  v9->super.super.super._encodeGradient = 0;
  v9->super.super.super._encodeData = v9;
  v9->_lutGEMVKernel = [[MPSNDArrayLUTGEMV alloc] initWithDevice:device lhsDesc:descriptor rhsDesc:quantizationDescriptor];
  return v9;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayQuantizedMatrixMultiplication;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:arrays sourceState:state, kernel, object];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayQuantizedMatrixMultiplication;
  [(MPSNDArrayMatrixMultiplication *)&v3 dealloc];
}

@end