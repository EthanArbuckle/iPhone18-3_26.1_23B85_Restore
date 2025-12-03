@interface GameCenterReengagementCollectionViewCell
- (id)focusItemsInRect:(CGRect)rect;
- (void)layoutSubviews;
@end

@implementation GameCenterReengagementCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10013CEDC();
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_10013DC98(x, y, width, height);

  sub_10000A5D4(&unk_10094A270);
  v8.super.isa = sub_1007701AC().super.isa;

  return v8.super.isa;
}

@end