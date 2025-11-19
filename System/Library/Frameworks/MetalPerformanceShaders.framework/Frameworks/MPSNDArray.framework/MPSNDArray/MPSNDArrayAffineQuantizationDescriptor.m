@interface MPSNDArrayAffineQuantizationDescriptor
- (MPSNDArrayAffineQuantizationDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)getDQuantMinValIndex;
- (int64_t)getDQuantScaleIndex;
- (int64_t)getMinValIndex;
- (int64_t)getNDArrayCount;
- (int64_t)getScaleIndex;
- (int64_t)getZeroPointIndex;
- (void)setImplicitZeroPoint:(BOOL)a3;
@end

@implementation MPSNDArrayAffineQuantizationDescriptor

- (void)setImplicitZeroPoint:(BOOL)a3
{
  if ([(MPSNDArrayQuantizationDescriptor *)self quantizationDataType]!= 536870916)
  {
    [(MPSNDArrayQuantizationDescriptor *)self quantizationDataType];
  }

  if ([(MPSNDArrayQuantizationDescriptor *)self quantizationDataType]!= 536870916 && [(MPSNDArrayQuantizationDescriptor *)self quantizationDataType]!= 536870914 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  self->_signedAsUnsigned = a3;
}

- (MPSNDArrayAffineQuantizationDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayAffineQuantizationDescriptor;
  result = [(MPSNDArrayQuantizationDescriptor *)&v3 init];
  if (result)
  {
    result->_hasZeroPoint = 0;
    result->_hasMinValue = 0;
    result->_hasDoubleQuantScale = 0;
    result->_hasDoubleQuantMinVal = 0;
    result->_signedAsUnsigned = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayAffineQuantizationDescriptor;
  result = [(MPSNDArrayQuantizationDescriptor *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 24) = self->_hasZeroPoint;
    *(result + 25) = self->_hasMinValue;
    *(result + 26) = self->_hasDoubleQuantScale;
    *(result + 27) = self->_hasDoubleQuantMinVal;
    *(result + 28) = self->_signedAsUnsigned;
  }

  return result;
}

- (int64_t)getScaleIndex
{
  if (self)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (int64_t)getZeroPointIndex
{
  if (!self)
  {
    return -1;
  }

  if (self->_hasZeroPoint)
  {
    return 1;
  }

  return -1;
}

- (int64_t)getMinValIndex
{
  if (!self || !self->_hasMinValue)
  {
    return -1;
  }

  if (self->_hasZeroPoint)
  {
    return 2;
  }

  return 1;
}

- (int64_t)getDQuantScaleIndex
{
  if (!self || !self->_hasDoubleQuantScale)
  {
    return -1;
  }

  hasMinValue = self->_hasMinValue;
  if (self->_hasZeroPoint)
  {
    if (self->_hasMinValue)
    {
      return 3;
    }

    return 2;
  }

  if (self->_hasMinValue)
  {
    return 2;
  }

  return 1;
}

- (int64_t)getDQuantMinValIndex
{
  if (!self || !self->_hasDoubleQuantMinVal)
  {
    return -1;
  }

  hasMinValue = self->_hasMinValue;
  if (self->_hasZeroPoint)
  {
    if (self->_hasMinValue)
    {
      return 4;
    }

    return 3;
  }

  if (self->_hasMinValue)
  {
    return 3;
  }

  return 2;
}

- (int64_t)getNDArrayCount
{
  if (self)
  {
    return *(self + 24) + *(self + 25) + *(self + 26) + *(self + 27) + 1;
  }

  return self;
}

@end