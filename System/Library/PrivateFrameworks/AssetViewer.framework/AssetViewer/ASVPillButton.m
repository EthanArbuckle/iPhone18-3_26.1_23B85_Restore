@interface ASVPillButton
- (void)layoutSubviews;
@end

@implementation ASVPillButton

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = ASVPillButton;
  [(ASVButton *)&v9 layoutSubviews];
  [(ASVPillButton *)self frame];
  v4 = v3;
  [(ASVPillButton *)self frame];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 * 0.5;
  [(ASVPillButton *)self _continuousCornerRadius];
  if (v8 != v7)
  {
    [(ASVPillButton *)self _setContinuousCornerRadius:v7];
  }
}

@end