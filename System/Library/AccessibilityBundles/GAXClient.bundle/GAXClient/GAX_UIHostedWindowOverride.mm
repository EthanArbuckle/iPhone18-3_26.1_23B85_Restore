@interface GAX_UIHostedWindowOverride
- (GAX_UIHostedWindowOverride)initWithFrame:(CGRect)frame;
@end

@implementation GAX_UIHostedWindowOverride

- (GAX_UIHostedWindowOverride)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GAX_UIHostedWindowOverride;
  v3 = [(GAX_UIHostedWindowOverride *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = +[GAXClient sharedInstance];
  [v4 setProvidesViewServices:1];

  return v3;
}

@end