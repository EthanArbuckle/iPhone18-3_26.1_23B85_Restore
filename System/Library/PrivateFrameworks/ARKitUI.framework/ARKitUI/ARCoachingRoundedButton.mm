@interface ARCoachingRoundedButton
- (void)_setupViewWithCornerRadius:(double)radius;
@end

@implementation ARCoachingRoundedButton

- (void)_setupViewWithCornerRadius:(double)radius
{
  [(ARCoachingRoundedButton *)self _setContinuousCornerRadius:radius];

  [(ARCoachingRoundedButton *)self setClipsToBounds:1];
}

@end