@interface VolumeControl
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23ShelfKitCollectionViews13VolumeControl)initWithFrame:(CGRect)frame;
- (void)didSlideWithGestureRecognizer:(id)recognizer;
- (void)didTap;
- (void)layoutSubviews;
- (void)volumeChangedWithNotification:(id)notification;
@end

@implementation VolumeControl

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2FB5B0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 190.0;
  v4 = 47.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didSlideWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_2FC004(recognizerCopy);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_2FC1F0(beginCopy);

  return self & 1;
}

- (void)didTap
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded) = v2 ^ 1;
  selfCopy = self;
  sub_2FA8A8(v2);
}

- (void)volumeChangedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_2FCB20(notificationCopy);
}

- (_TtC23ShelfKitCollectionViews13VolumeControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end