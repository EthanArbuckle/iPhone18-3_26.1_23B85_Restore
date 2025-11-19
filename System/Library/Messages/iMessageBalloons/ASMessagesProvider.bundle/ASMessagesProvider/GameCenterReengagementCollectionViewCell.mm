@interface GameCenterReengagementCollectionViewCell
- (id)focusItemsInRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation GameCenterReengagementCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_48F79C();
}

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_48FD64(x, y, width, height);

  sub_BD88(&qword_9564D0);
  v8.super.isa = sub_769450().super.isa;

  return v8.super.isa;
}

@end