@interface MPSNDArrayReductionSumGradient
- (MPSNDArrayReductionSumGradient)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayReductionSumGradient)initWithDevice:(id)device axis:(unint64_t)axis;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayReductionSumGradient

- (MPSNDArrayReductionSumGradient)initWithDevice:(id)device axis:(unint64_t)axis
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayReductionSumGradient;
  return [(MPSNDArrayReductionSumGradient *)&v5 initWithDevice:device axis:axis];
}

- (MPSNDArrayReductionSumGradient)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayReductionSumGradient;
  return [(MPSNDArrayReductionGradient *)&v5 initWithCoder:coder device:device];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayReductionSumGradient;
  [(MPSNDArrayReductionGradient *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayReductionSumGradient;
  return [(MPSNDArrayReductionGradient *)&v5 copyWithZone:zone device:device];
}

@end