@interface MPSNDArrayReductionSumGradient
- (MPSNDArrayReductionSumGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayReductionSumGradient)initWithDevice:(id)a3 axis:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayReductionSumGradient

- (MPSNDArrayReductionSumGradient)initWithDevice:(id)a3 axis:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayReductionSumGradient;
  return [(MPSNDArrayReductionSumGradient *)&v5 initWithDevice:a3 axis:a4];
}

- (MPSNDArrayReductionSumGradient)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayReductionSumGradient;
  return [(MPSNDArrayReductionGradient *)&v5 initWithCoder:a3 device:a4];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayReductionSumGradient;
  [(MPSNDArrayReductionGradient *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayReductionSumGradient;
  return [(MPSNDArrayReductionGradient *)&v5 copyWithZone:a3 device:a4];
}

@end