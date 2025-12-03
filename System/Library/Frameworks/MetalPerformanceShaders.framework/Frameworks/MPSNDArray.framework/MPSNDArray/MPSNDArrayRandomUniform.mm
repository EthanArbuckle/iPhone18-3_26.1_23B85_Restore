@interface MPSNDArrayRandomUniform
- (MPSNDArrayRandomUniform)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayRandomUniform)initWithDevice:(id)device minimum:(float)minimum maximum:(float)maximum;
- (MPSNDArrayRandomUniform)initWithDevice:(id)device minimumInteger:(unint64_t)integer maximumInteger:(unint64_t)maximumInteger;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayRandomUniform

- (MPSNDArrayRandomUniform)initWithDevice:(id)device minimum:(float)minimum maximum:(float)maximum
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayRandomUniform;
  result = [(MPSNDArrayRandom *)&v8 initWithDevice:device];
  if (result)
  {
    result->_minimum = minimum;
    result->_maximum = maximum;
    result->_minimumInteger = 0;
    result->_maximumInteger = 0;
    result->super.super.super._encode = EncodeRandomUniform;
  }

  return result;
}

- (MPSNDArrayRandomUniform)initWithDevice:(id)device minimumInteger:(unint64_t)integer maximumInteger:(unint64_t)maximumInteger
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayRandomUniform;
  result = [(MPSNDArrayRandom *)&v8 initWithDevice:device];
  if (result)
  {
    result->_minimum = 0.0;
    result->_maximum = 0.0;
    result->_minimumInteger = integer;
    result->_maximumInteger = maximumInteger;
    result->super.super.super._encode = EncodeRandomUniform;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayRandomUniform;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 166) = LODWORD(self->_minimum);
    *(result + 167) = LODWORD(self->_maximum);
    *(result + 84) = self->_minimumInteger;
    *(result + 85) = self->_maximumInteger;
    *(result + 17) = EncodeRandomUniform;
  }

  return result;
}

- (MPSNDArrayRandomUniform)initWithCoder:(id)coder device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayRandomUniform;
  v5 = [(MPSNDArrayUnaryKernel *)&v9 initWithCoder:coder device:device];
  if (v5)
  {
    [coder decodeFloatForKey:@"MPSNDArrayRandomUniformMinimum"];
    v5->_minimum = v6;
    [coder decodeFloatForKey:@"MPSNDArrayRandomUniformMaximum"];
    v5->_maximum = v7;
    v5->_minimumInteger = [coder decodeInt64ForKey:@"MPSNDArrayRandomUniformMinimumInteger"];
    v5->_maximumInteger = [coder decodeInt64ForKey:@"MPSNDArrayRandomUniformMaximumInteger"];
    v5->super.super.super._encode = EncodeRandomUniform;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayRandomUniform;
  [(MPSNDArrayMultiaryBase *)&v7 encodeWithCoder:?];
  *&v5 = self->_minimum;
  [coder encodeFloat:@"MPSNDArrayRandomUniformMinimum" forKey:v5];
  *&v6 = self->_maximum;
  [coder encodeFloat:@"MPSNDArrayRandomUniformMaximum" forKey:v6];
  [coder encodeInt64:self->_minimumInteger forKey:@"MPSNDArrayRandomUniformMinimumInteger"];
  [coder encodeInt64:self->_maximumInteger forKey:@"MPSNDArrayRandomUniformMaximumInteger"];
}

@end