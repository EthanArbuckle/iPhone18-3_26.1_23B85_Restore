@interface GameCenterReengagementCollectionViewCell
- (id)focusItemsInRect:(CGRect)rect;
- (void)layoutSubviews;
@end

@implementation GameCenterReengagementCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10027FA18();
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_1002807D4(x, y, width, height);

  sub_10000C518(&qword_10092FAB0);
  v8.super.isa = sub_100753294().super.isa;

  return v8.super.isa;
}

@end