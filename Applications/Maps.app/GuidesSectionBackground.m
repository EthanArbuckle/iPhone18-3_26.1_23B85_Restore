@interface GuidesSectionBackground
- (GuidesSectionBackground)initWithFrame:(CGRect)a3;
@end

@implementation GuidesSectionBackground

- (GuidesSectionBackground)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = GuidesSectionBackground;
  v3 = [(GuidesSectionBackground *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(GuidesSectionBackground *)v3 _maps_addHairlineAtBottomWithMargin:0.0];
  }

  return v4;
}

@end