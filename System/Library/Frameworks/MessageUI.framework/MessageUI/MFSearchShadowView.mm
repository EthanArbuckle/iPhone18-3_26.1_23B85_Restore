@interface MFSearchShadowView
+ (double)defaultHeight;
+ (id)_shadowImage;
- (MFSearchShadowView)initWithFrame:(CGRect)frame;
@end

@implementation MFSearchShadowView

- (MFSearchShadowView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MFSearchShadowView;
  v3 = [(MFSearchShadowView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    _shadowImage = [objc_opt_class() _shadowImage];
    [(MFSearchShadowView *)v3 setImage:_shadowImage];

    [(MFSearchShadowView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

+ (id)_shadowImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"search_shadow" inBundle:v3];

  return v4;
}

+ (double)defaultHeight
{
  _shadowImage = [self _shadowImage];
  [_shadowImage size];
  v4 = v3;

  return v4;
}

@end