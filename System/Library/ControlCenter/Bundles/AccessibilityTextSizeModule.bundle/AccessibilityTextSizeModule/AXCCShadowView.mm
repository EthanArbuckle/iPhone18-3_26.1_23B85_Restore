@interface AXCCShadowView
- (AXCCShadowView)initWithFrame:(CGRect)frame;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation AXCCShadowView

- (AXCCShadowView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = AXCCShadowView;
  v3 = [(AXCCShadowView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(AXCCShadowView *)v3 layer];
    [layer setShadowPathIsBounds:1];
  }

  return v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = AXCCShadowView;
  if ([(AXCCShadowView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy hasPrefix:@"shadow"];
  }

  return v5;
}

@end