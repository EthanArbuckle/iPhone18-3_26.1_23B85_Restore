@interface AXCCShadowView
- (AXCCShadowView)initWithFrame:(CGRect)a3;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation AXCCShadowView

- (AXCCShadowView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = AXCCShadowView;
  v3 = [(AXCCShadowView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(AXCCShadowView *)v3 layer];
    [v5 setShadowPathIsBounds:1];
  }

  return v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AXCCShadowView;
  if ([(AXCCShadowView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 hasPrefix:@"shadow"];
  }

  return v5;
}

@end