@interface AEGenerativePlaygroundButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)layoutSubviews;
- (void)setIsGenerativeAssetAppearance:(BOOL)appearance;
@end

@implementation AEGenerativePlaygroundButton

- (void)setIsGenerativeAssetAppearance:(BOOL)appearance
{
  selfCopy = self;
  sub_2411E0718(appearance);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2411E0E3C();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  selfCopy = self;
  LOBYTE(self) = sub_2411E0F20(x, y);

  return self & 1;
}

@end