@interface MPSNDArrayGatherGradient
- (MPSNDArrayGatherGradient)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)buffer primarySourceArray:(id)array secondarySourceArray:(id)sourceArray sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)destinationArray;
@end

@implementation MPSNDArrayGatherGradient

- (MPSNDArrayGatherGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGatherGradient;
  result = [(MPSNDArrayBinaryPrimaryGradientKernel *)&v4 initWithDevice:device];
  result->super.super.super._encodeGradient = EncodeGatherGradient;
  result->super.super.super._encodeData = result;
  return result;
}

- (void)encodeToCommandBuffer:(id)buffer primarySourceArray:(id)array secondarySourceArray:(id)sourceArray sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)destinationArray
{
  v15 = *(state + 68);
  v16 = objc_autoreleasePoolPush();
  if (v15)
  {
    descriptor = [array descriptor];
    selfCopy = self;
    v18 = v16;
    sourceArrayCopy = sourceArray;
    descriptor2 = [destinationArray descriptor];
    [descriptor transposeDimension:0 withDimension:v15];
    [descriptor2 transposeDimension:0 withDimension:v15];
    gradient = [gradient arrayViewWithCommandBuffer:buffer descriptor:descriptor aliasing:1];
    v21 = descriptor2;
    sourceArray = sourceArrayCopy;
    v16 = v18;
    self = selfCopy;
    destinationArray = [destinationArray arrayViewWithCommandBuffer:buffer descriptor:v21 aliasing:1];
  }

  v23.receiver = self;
  v23.super_class = MPSNDArrayGatherGradient;
  [(MPSNDArrayBinaryPrimaryGradientKernel *)&v23 encodeToCommandBuffer:buffer primarySourceArray:array secondarySourceArray:sourceArray sourceGradient:gradient gradientState:state destinationArray:destinationArray];
  objc_autoreleasePoolPop(v16);
}

@end