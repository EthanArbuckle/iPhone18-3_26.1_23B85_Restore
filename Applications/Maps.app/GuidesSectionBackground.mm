@interface GuidesSectionBackground
- (GuidesSectionBackground)initWithFrame:(CGRect)frame;
@end

@implementation GuidesSectionBackground

- (GuidesSectionBackground)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = GuidesSectionBackground;
  v3 = [(GuidesSectionBackground *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(GuidesSectionBackground *)v3 _maps_addHairlineAtBottomWithMargin:0.0];
  }

  return v4;
}

@end