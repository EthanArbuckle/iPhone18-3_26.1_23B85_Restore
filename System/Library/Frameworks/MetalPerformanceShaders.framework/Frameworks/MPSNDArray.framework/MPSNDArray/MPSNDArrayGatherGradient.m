@interface MPSNDArrayGatherGradient
- (MPSNDArrayGatherGradient)initWithDevice:(id)a3;
- (void)encodeToCommandBuffer:(id)a3 primarySourceArray:(id)a4 secondarySourceArray:(id)a5 sourceGradient:(id)a6 gradientState:(id)a7 destinationArray:(id)a8;
@end

@implementation MPSNDArrayGatherGradient

- (MPSNDArrayGatherGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGatherGradient;
  result = [(MPSNDArrayBinaryPrimaryGradientKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encodeGradient = EncodeGatherGradient;
  result->super.super.super._encodeData = result;
  return result;
}

- (void)encodeToCommandBuffer:(id)a3 primarySourceArray:(id)a4 secondarySourceArray:(id)a5 sourceGradient:(id)a6 gradientState:(id)a7 destinationArray:(id)a8
{
  v15 = *(a7 + 68);
  v16 = objc_autoreleasePoolPush();
  if (v15)
  {
    v17 = [a4 descriptor];
    v22 = self;
    v18 = v16;
    v19 = a5;
    v20 = [a8 descriptor];
    [v17 transposeDimension:0 withDimension:v15];
    [v20 transposeDimension:0 withDimension:v15];
    a6 = [a6 arrayViewWithCommandBuffer:a3 descriptor:v17 aliasing:1];
    v21 = v20;
    a5 = v19;
    v16 = v18;
    self = v22;
    a8 = [a8 arrayViewWithCommandBuffer:a3 descriptor:v21 aliasing:1];
  }

  v23.receiver = self;
  v23.super_class = MPSNDArrayGatherGradient;
  [(MPSNDArrayBinaryPrimaryGradientKernel *)&v23 encodeToCommandBuffer:a3 primarySourceArray:a4 secondarySourceArray:a5 sourceGradient:a6 gradientState:a7 destinationArray:a8];
  objc_autoreleasePoolPop(v16);
}

@end