@interface CRLMutableAngleGradientFill
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLastColor:(id)color;
@end

@implementation CRLMutableAngleGradientFill

- (void)setLastColor:(id)color
{
  v5 = [(NSArray *)[(CRLGradientFill *)self gradientStops] count]- 1;

  [(CRLMutableAngleGradientFill *)self setColorOfStopAtIndex:v5 toColor:color];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLAngleGradientFill allocWithZone:zone];
  gradientStops = [(CRLGradientFill *)self gradientStops];
  gradientType = [(CRLGradientFill *)self gradientType];
  [(CRLGradientFill *)self opacity];
  v8 = v7;
  [(CRLAngleGradientFill *)self gradientAngle];
  v10 = [(CRLAngleGradientFill *)v4 initWithGradientStops:gradientStops type:gradientType opacity:v8 angle:v9];
  [(CRLGradientFill *)v10 i_setAdvancedGradientFlag:[(CRLGradientFill *)self i_advancedGradientFlag]];
  return v10;
}

@end