@interface TUIImpressionOverlayView
- (TUIImpressionOverlayView)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation TUIImpressionOverlayView

- (TUIImpressionOverlayView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUIImpressionOverlayView;
  v3 = [(TUIImpressionOverlayView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUIImpressionOverlayView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)a3
{
  v10.receiver = self;
  v10.super_class = TUIImpressionOverlayView;
  v4 = a3;
  [(TUIReusableBaseView *)&v10 applyLayoutAttributes:v4];
  v5 = objc_opt_class();
  v6 = [v4 generic];

  v7 = TUIDynamicCast(v5, v6);

  if ([v7 timingCount])
  {
    +[UIColor greenColor];
  }

  else
  {
    +[UIColor redColor];
  }
  v8 = ;
  v9 = [v8 colorWithAlphaComponent:0.3];

  [(TUIImpressionOverlayView *)self setBackgroundColor:v9];
}

@end