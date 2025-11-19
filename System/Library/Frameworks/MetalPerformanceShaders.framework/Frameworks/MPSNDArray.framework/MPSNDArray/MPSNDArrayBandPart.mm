@interface MPSNDArrayBandPart
- (MPSNDArrayBandPart)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayBandPart)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayBandPart

- (MPSNDArrayBandPart)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayBandPart;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:a3];
  if (result)
  {
    result->super.super._encode = EncodeArrayBandPart;
    result->super.super.super._encodeData = result;
    result->_numLower = -1;
    result->_numUpper = -1;
  }

  return result;
}

- (MPSNDArrayBandPart)initWithCoder:(id)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayBandPart;
  result = [(MPSNDArrayUnaryKernel *)&v8 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeArrayBandPart;
    result->super.super.super._encodeData = result;
    v6 = result;
    result->_numLower = [a3 decodeInt64ForKey:@"MPSNDArrayBandPart.numLower"];
    v7 = [a3 decodeInt64ForKey:@"MPSNDArrayBandPart.numUpper"];
    result = v6;
    v6->_numUpper = v7;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v5.receiver = self;
  v5.super_class = MPSNDArrayBandPart;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [a3 encodeInt64:self->_numLower forKey:@"MPSNDArrayBandPart.numLower"];
  [a3 encodeInt64:self->_numUpper forKey:@"MPSNDArrayBandPart.numUpper"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayBandPart;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    self->super.super._encode = EncodeArrayBandPart;
    self->super.super.super._encodeData = self;
    *(result + 83) = self->_numLower;
    *(result + 84) = self->_numUpper;
  }

  return result;
}

@end