@interface MPSNDArrayLUTQuantizationDescriptor
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setVectorAxes:(id)a3;
@end

@implementation MPSNDArrayLUTQuantizationDescriptor

- (void)setVectorAxes:(id)a3
{
  vectorAxes = self->_vectorAxes;
  if (vectorAxes != a3)
  {
    v5 = vectorAxes;
    self->_vectorAxes = [a3 copy];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLUTQuantizationDescriptor;
  result = [(MPSNDArrayQuantizationDescriptor *)&v8 copyWithZone:a3];
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