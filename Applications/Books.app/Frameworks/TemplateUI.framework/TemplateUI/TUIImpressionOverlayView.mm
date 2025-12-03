@interface TUIImpressionOverlayView
- (TUIImpressionOverlayView)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation TUIImpressionOverlayView

- (TUIImpressionOverlayView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUIImpressionOverlayView;
  v3 = [(TUIImpressionOverlayView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUIImpressionOverlayView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v10.receiver = self;
  v10.super_class = TUIImpressionOverlayView;
  attributesCopy = attributes;
  [(TUIReusableBaseView *)&v10 applyLayoutAttributes:attributesCopy];
  v5 = objc_opt_class();
  generic = [attributesCopy generic];

  v7 = TUIDynamicCast(v5, generic);

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