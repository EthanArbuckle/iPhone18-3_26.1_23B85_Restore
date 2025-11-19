@interface MPSNDArrayRandomUniform
- (MPSNDArrayRandomUniform)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayRandomUniform)initWithDevice:(id)a3 minimum:(float)a4 maximum:(float)a5;
- (MPSNDArrayRandomUniform)initWithDevice:(id)a3 minimumInteger:(unint64_t)a4 maximumInteger:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayRandomUniform

- (MPSNDArrayRandomUniform)initWithDevice:(id)a3 minimum:(float)a4 maximum:(float)a5
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayRandomUniform;
  result = [(MPSNDArrayRandom *)&v8 initWithDevice:a3];
  if (result)
  {
    result->_minimum = a4;
    result->_maximum = a5;
    result->_minimumInteger = 0;
    result->_maximumInteger = 0;
    result->super.super.super._encode = EncodeRandomUniform;
  }

  return result;
}

- (MPSNDArrayRandomUniform)initWithDevice:(id)a3 minimumInteger:(unint64_t)a4 maximumInteger:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayRandomUniform;
  result = [(MPSNDArrayRandom *)&v8 initWithDevice:a3];
  if (result)
  {
    result->_minimum = 0.0;
    result->_maximum = 0.0;
    result->_minimumInteger = a4;
    result->_maximumInteger = a5;
    result->super.super.super._encode = EncodeRandomUniform;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayRandomUniform;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
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

- (MPSNDArrayRandomUniform)initWithCoder:(id)a3 device:(id)a4
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayRandomUniform;
  v5 = [(MPSNDArrayUnaryKernel *)&v9 initWithCoder:a3 device:a4];
  if (v5)
  {
    [a3 decodeFloatForKey:@"MPSNDArrayRandomUniformMinimum"];
    v5->_minimum = v6;
    [a3 decodeFloatForKey:@"MPSNDArrayRandomUniformMaximum"];
    v5->_maximum = v7;
    v5->_minimumInteger = [a3 decodeInt64ForKey:@"MPSNDArrayRandomUniformMinimumInteger"];
    v5->_maximumInteger = [a3 decodeInt64ForKey:@"MPSNDArrayRandomUniformMaximumInteger"];
    v5->super.super.super._encode = EncodeRandomUniform;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayRandomUniform;
  [(MPSNDArrayMultiaryBase *)&v7 encodeWithCoder:?];
  *&v5 = self->_minimum;
  [a3 encodeFloat:@"MPSNDArrayRandomUniformMinimum" forKey:v5];
  *&v6 = self->_maximum;
  [a3 encodeFloat:@"MPSNDArrayRandomUniformMaximum" forKey:v6];
  [a3 encodeInt64:self->_minimumInteger forKey:@"MPSNDArrayRandomUniformMinimumInteger"];
  [a3 encodeInt64:self->_maximumInteger forKey:@"MPSNDArrayRandomUniformMaximumInteger"];
}

@end