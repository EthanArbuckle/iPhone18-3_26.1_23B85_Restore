@interface IPadMediumAdLockupWithScreenshotsBackgroundView
- (_TtC18ASMessagesProvider47IPadMediumAdLockupWithScreenshotsBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation IPadMediumAdLockupWithScreenshotsBackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_124AEC();
}

- (_TtC18ASMessagesProvider47IPadMediumAdLockupWithScreenshotsBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return [(MediumAdLockupWithScreenshotsBackgroundView *)&v8 initWithFrame:x, y, width, height];
}

@end