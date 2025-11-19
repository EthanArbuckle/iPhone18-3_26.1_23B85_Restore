@interface GameCenterReengagementCollectionViewCell
- (id)focusItemsInRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation GameCenterReengagementCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_10013CEDC();
}

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_10013DC98(x, y, width, height);

  sub_10000A5D4(&unk_10094A270);
  v8.super.isa = sub_1007701AC().super.isa;

  return v8.super.isa;
}

@end