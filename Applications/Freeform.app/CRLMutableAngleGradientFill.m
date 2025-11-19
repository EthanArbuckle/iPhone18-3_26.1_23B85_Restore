@interface CRLMutableAngleGradientFill
- (id)copyWithZone:(_NSZone *)a3;
- (void)setLastColor:(id)a3;
@end

@implementation CRLMutableAngleGradientFill

- (void)setLastColor:(id)a3
{
  v5 = [(NSArray *)[(CRLGradientFill *)self gradientStops] count]- 1;

  [(CRLMutableAngleGradientFill *)self setColorOfStopAtIndex:v5 toColor:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLAngleGradientFill allocWithZone:a3];
  v5 = [(CRLGradientFill *)self gradientStops];
  v6 = [(CRLGradientFill *)self gradientType];
  [(CRLGradientFill *)self opacity];
  v8 = v7;
  [(CRLAngleGradientFill *)self gradientAngle];
  v10 = [(CRLAngleGradientFill *)v4 initWithGradientStops:v5 type:v6 opacity:v8 angle:v9];
  [(CRLGradientFill *)v10 i_setAdvancedGradientFlag:[(CRLGradientFill *)self i_advancedGradientFlag]];
  return v10;
}

@end