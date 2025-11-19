@interface AEGenerativePlaygroundButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setIsGenerativeAssetAppearance:(BOOL)a3;
@end

@implementation AEGenerativePlaygroundButton

- (void)setIsGenerativeAssetAppearance:(BOOL)a3
{
  v4 = self;
  sub_2411E0718(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2411E0E3C();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  LOBYTE(self) = sub_2411E0F20(x, y);

  return self & 1;
}

@end