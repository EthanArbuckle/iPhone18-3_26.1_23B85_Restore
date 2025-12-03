@interface GameCenterReengagementCollectionViewCell
- (id)focusItemsInRect:(CGRect)rect;
- (void)layoutSubviews;
@end

@implementation GameCenterReengagementCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10041F0EC();
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_10041F6B4(x, y, width, height);

  sub_10002849C(&qword_100985340);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

@end