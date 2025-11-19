@interface ARCoachingRoundedButton
- (void)_setupViewWithCornerRadius:(double)a3;
@end

@implementation ARCoachingRoundedButton

- (void)_setupViewWithCornerRadius:(double)a3
{
  [(ARCoachingRoundedButton *)self _setContinuousCornerRadius:a3];

  [(ARCoachingRoundedButton *)self setClipsToBounds:1];
}

@end