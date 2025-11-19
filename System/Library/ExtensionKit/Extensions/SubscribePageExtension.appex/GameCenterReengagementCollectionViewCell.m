@interface GameCenterReengagementCollectionViewCell
- (id)focusItemsInRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation GameCenterReengagementCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_10027FA18();
}

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1002807D4(x, y, width, height);

  sub_10000C518(&qword_10092FAB0);
  v8.super.isa = sub_100753294().super.isa;

  return v8.super.isa;
}

@end