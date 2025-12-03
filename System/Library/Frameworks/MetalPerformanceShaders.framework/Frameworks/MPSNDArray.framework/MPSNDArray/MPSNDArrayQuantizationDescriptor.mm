@interface MPSNDArrayQuantizationDescriptor
- (MPSNDArrayQuantizationDescriptor)init;
- (MPSNDArrayQuantizationDescriptor)initWithDataType:(unsigned int)type quantizationScheme:(unint64_t)scheme;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSNDArrayQuantizationDescriptor

- (MPSNDArrayQuantizationDescriptor)init
{
  self->_quantizationDataType = 536870920;
  self->_quantizationScheme = 1;
  return self;
}

- (MPSNDArrayQuantizationDescriptor)initWithDataType:(unsigned int)type quantizationScheme:(unint64_t)scheme
{
  self->_quantizationDataType = type;
  self->_quantizationScheme = scheme;
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_quantizationDataType;
  *(result + 2) = self->_quantizationScheme;
  return result;
}

@end