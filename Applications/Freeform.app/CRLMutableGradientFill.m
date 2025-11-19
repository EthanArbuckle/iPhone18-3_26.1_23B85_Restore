@interface CRLMutableGradientFill
- (void)setFraction:(double)a3 ofStopAtIndex:(unint64_t)a4;
- (void)setLastColor:(id)a3;
@end

@implementation CRLMutableGradientFill

- (void)setLastColor:(id)a3
{
  v5 = [(NSArray *)[(CRLGradientFill *)self gradientStops] count]- 1;

  [(CRLMutableGradientFill *)self setColorOfStopAtIndex:v5 toColor:a3];
}

- (void)setFraction:(double)a3 ofStopAtIndex:(unint64_t)a4
{
  v5 = [(NSArray *)[(CRLGradientFill *)self gradientStops] objectAtIndexedSubscript:a4];

  [v5 p_setFraction:a3];
}

@end