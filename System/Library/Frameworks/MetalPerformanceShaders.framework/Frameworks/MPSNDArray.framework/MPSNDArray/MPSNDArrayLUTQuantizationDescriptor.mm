@interface MPSNDArrayLUTQuantizationDescriptor
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setVectorAxes:(id)axes;
@end

@implementation MPSNDArrayLUTQuantizationDescriptor

- (void)setVectorAxes:(id)axes
{
  vectorAxes = self->_vectorAxes;
  if (vectorAxes != axes)
  {
    v5 = vectorAxes;
    self->_vectorAxes = [axes copy];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLUTQuantizationDescriptor;
  result = [(MPSNDArrayQuantizationDescriptor *)&v8 copyWithZone:zone];
  if (result)
  {
    vectorAxes = self->_vectorAxes;
    v6 = result;
    v7 = [(NSArray *)vectorAxes copy];
    result = v6;
    v6[3] = v7;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayLUTQuantizationDescriptor;
  [(MPSNDArrayLUTQuantizationDescriptor *)&v3 dealloc];
}

@end