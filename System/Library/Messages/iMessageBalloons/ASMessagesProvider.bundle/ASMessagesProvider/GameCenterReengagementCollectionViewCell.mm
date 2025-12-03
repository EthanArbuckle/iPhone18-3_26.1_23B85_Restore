@interface GameCenterReengagementCollectionViewCell
- (id)focusItemsInRect:(CGRect)rect;
- (void)layoutSubviews;
@end

@implementation GameCenterReengagementCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_48F79C();
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_48FD64(x, y, width, height);

  sub_BD88(&qword_9564D0);
  v8.super.isa = sub_769450().super.isa;

  return v8.super.isa;
}

@end