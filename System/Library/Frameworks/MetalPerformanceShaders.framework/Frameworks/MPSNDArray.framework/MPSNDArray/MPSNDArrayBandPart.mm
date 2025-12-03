@interface MPSNDArrayBandPart
- (MPSNDArrayBandPart)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayBandPart)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayBandPart

- (MPSNDArrayBandPart)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayBandPart;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super.super._encode = EncodeArrayBandPart;
    result->super.super.super._encodeData = result;
    result->_numLower = -1;
    result->_numUpper = -1;
  }

  return result;
}

- (MPSNDArrayBandPart)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayBandPart;
  result = [(MPSNDArrayUnaryKernel *)&v8 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeArrayBandPart;
    result->super.super.super._encodeData = result;
    v6 = result;
    result->_numLower = [coder decodeInt64ForKey:@"MPSNDArrayBandPart.numLower"];
    v7 = [coder decodeInt64ForKey:@"MPSNDArrayBandPart.numUpper"];
    result = v6;
    v6->_numUpper = v7;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v5.receiver = self;
  v5.super_class = MPSNDArrayBandPart;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInt64:self->_numLower forKey:@"MPSNDArrayBandPart.numLower"];
  [coder encodeInt64:self->_numUpper forKey:@"MPSNDArrayBandPart.numUpper"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayBandPart;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
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