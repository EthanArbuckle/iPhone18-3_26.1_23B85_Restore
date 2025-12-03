@interface CRLMutableGradientFill
- (void)setFraction:(double)fraction ofStopAtIndex:(unint64_t)index;
- (void)setLastColor:(id)color;
@end

@implementation CRLMutableGradientFill

- (void)setLastColor:(id)color
{
  v5 = [(NSArray *)[(CRLGradientFill *)self gradientStops] count]- 1;

  [(CRLMutableGradientFill *)self setColorOfStopAtIndex:v5 toColor:color];
}

- (void)setFraction:(double)fraction ofStopAtIndex:(unint64_t)index
{
  v5 = [(NSArray *)[(CRLGradientFill *)self gradientStops] objectAtIndexedSubscript:index];

  [v5 p_setFraction:fraction];
}

@end