@interface IPadMediumAdLockupWithScreenshotsBackgroundView
- (_TtC8AppStore47IPadMediumAdLockupWithScreenshotsBackgroundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation IPadMediumAdLockupWithScreenshotsBackgroundView

- (void)layoutSubviews
{
  v2 = self;
  sub_1003E85FC();
}

- (_TtC8AppStore47IPadMediumAdLockupWithScreenshotsBackgroundView)initWithFrame:(CGRect)a3
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