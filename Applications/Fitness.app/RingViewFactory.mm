@interface RingViewFactory
+ (id)workoutRingWithPercent:(double)percent colors:(id)colors diameter:(double)diameter thickness:(double)thickness renderer:(id)renderer;
@end

@implementation RingViewFactory

+ (id)workoutRingWithPercent:(double)percent colors:(id)colors diameter:(double)diameter thickness:(double)thickness renderer:(id)renderer
{
  colorsCopy = colors;
  v11 = [[ARUIRingGroupController alloc] initWithNumberOfRings:1];
  [v11 setPercentage:0 ofRingAtIndex:0 animated:percent];
  *&v12 = diameter;
  [v11 setRingDiameter:v12];
  *&v13 = thickness;
  [v11 setRingThickness:v13];
  gradientDarkColor = [colorsCopy gradientDarkColor];
  gradientLightColor = [colorsCopy gradientLightColor];

  [v11 setTopColor:gradientDarkColor bottomColor:gradientLightColor ofRingAtIndex:0];
  v16 = [ARUIRingsImageFactory renderRingGroupController:v11 withRenderer:0];

  return v16;
}

@end