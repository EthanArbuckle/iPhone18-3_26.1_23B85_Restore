@interface MPSNDArrayQuantizationDescriptor
- (MPSNDArrayQuantizationDescriptor)init;
- (MPSNDArrayQuantizationDescriptor)initWithDataType:(unsigned int)a3 quantizationScheme:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSNDArrayQuantizationDescriptor

- (MPSNDArrayQuantizationDescriptor)init
{
  self->_quantizationDataType = 536870920;
  self->_quantizationScheme = 1;
  return self;
}

- (MPSNDArrayQuantizationDescriptor)initWithDataType:(unsigned int)a3 quantizationScheme:(unint64_t)a4
{
  self->_quantizationDataType = a3;
  self->_quantizationScheme = a4;
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_quantizationDataType;
  *(result + 2) = self->_quantizationScheme;
  return result;
}

@end