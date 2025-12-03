@interface RCPointerInteractionButton
- (RCPointerInteractionButton)initWithFrame:(CGRect)frame;
@end

@implementation RCPointerInteractionButton

- (RCPointerInteractionButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RCPointerInteractionButton;
  v3 = [(RCPointerInteractionButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[RCRecorderStyleProvider sharedStyleProvider];
    -[RCPointerInteractionButton setPointerInteractionEnabled:](v3, "setPointerInteractionEnabled:", [v4 supportsPointerInteractions]);
    [(RCPointerInteractionButton *)v3 setShowsLargeContentViewer:1];
  }

  return v3;
}

@end