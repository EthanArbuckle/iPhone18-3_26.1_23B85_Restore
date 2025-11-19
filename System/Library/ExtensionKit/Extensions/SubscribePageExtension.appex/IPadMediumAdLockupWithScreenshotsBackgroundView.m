@interface IPadMediumAdLockupWithScreenshotsBackgroundView
- (_TtC22SubscribePageExtension47IPadMediumAdLockupWithScreenshotsBackgroundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation IPadMediumAdLockupWithScreenshotsBackgroundView

- (void)layoutSubviews
{
  v2 = self;
  sub_100054DD0();
}

- (_TtC22SubscribePageExtension47IPadMediumAdLockupWithScreenshotsBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return [(MediumAdLockupWithScreenshotsBackgroundView *)&v8 initWithFrame:x, y, width, height];
}

@end