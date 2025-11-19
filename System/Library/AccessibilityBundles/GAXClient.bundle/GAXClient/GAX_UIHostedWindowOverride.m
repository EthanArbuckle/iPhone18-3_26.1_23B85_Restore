@interface GAX_UIHostedWindowOverride
- (GAX_UIHostedWindowOverride)initWithFrame:(CGRect)a3;
@end

@implementation GAX_UIHostedWindowOverride

- (GAX_UIHostedWindowOverride)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = GAX_UIHostedWindowOverride;
  v3 = [(GAX_UIHostedWindowOverride *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = +[GAXClient sharedInstance];
  [v4 setProvidesViewServices:1];

  return v3;
}

@end