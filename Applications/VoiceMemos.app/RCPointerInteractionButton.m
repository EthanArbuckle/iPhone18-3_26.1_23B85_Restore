@interface RCPointerInteractionButton
- (RCPointerInteractionButton)initWithFrame:(CGRect)a3;
@end

@implementation RCPointerInteractionButton

- (RCPointerInteractionButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RCPointerInteractionButton;
  v3 = [(RCPointerInteractionButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[RCRecorderStyleProvider sharedStyleProvider];
    -[RCPointerInteractionButton setPointerInteractionEnabled:](v3, "setPointerInteractionEnabled:", [v4 supportsPointerInteractions]);
    [(RCPointerInteractionButton *)v3 setShowsLargeContentViewer:1];
  }

  return v3;
}

@end