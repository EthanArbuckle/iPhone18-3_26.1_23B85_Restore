@interface ARCoachingPillButton
- (void)layoutSubviews;
@end

@implementation ARCoachingPillButton

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = ARCoachingPillButton;
  [(ARCoachingButton *)&v9 layoutSubviews];
  [(ARCoachingPillButton *)self frame];
  v4 = v3;
  [(ARCoachingPillButton *)self frame];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 * 0.5;
  [(ARCoachingPillButton *)self _continuousCornerRadius];
  if (v8 != v7)
  {
    [(ARCoachingPillButton *)self _setContinuousCornerRadius:v7];
  }
}

@end