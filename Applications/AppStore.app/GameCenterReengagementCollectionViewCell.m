@interface GameCenterReengagementCollectionViewCell
- (id)focusItemsInRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation GameCenterReengagementCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_10041F0EC();
}

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_10041F6B4(x, y, width, height);

  sub_10002849C(&qword_100985340);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

@end