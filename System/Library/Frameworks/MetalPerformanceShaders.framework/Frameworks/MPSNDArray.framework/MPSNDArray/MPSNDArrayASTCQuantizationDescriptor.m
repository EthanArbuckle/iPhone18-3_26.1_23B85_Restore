@interface MPSNDArrayASTCQuantizationDescriptor
- (MPSNDArrayASTCQuantizationDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSNDArrayASTCQuantizationDescriptor

- (MPSNDArrayASTCQuantizationDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayASTCQuantizationDescriptor;
  result = [(MPSNDArrayQuantizationDescriptor *)&v3 init];
  if (result)
  {
    result->_hasMinValue = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayASTCQuantizationDescriptor;
  result = [(MPSNDArrayQuantizationDescriptor *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 24) = self->_hasMinValue;
  }

  return result;
}

@end