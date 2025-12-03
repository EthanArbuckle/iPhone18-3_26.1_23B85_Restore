@interface AppPromotionDetailPageView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC22SubscribePageExtension26AppPromotionDetailPageView)initWithFrame:(CGRect)frame;
- (_TtC22SubscribePageExtension9VideoView)accessibilityVideoView;
- (void)didTapCloseButton;
- (void)dismissTapGestureRecognized;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10057EAEC();
}

- (void)didTapCloseButton
{
  selfCopy = self;
  sub_1000C8E14();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1004D9D8C();
    swift_unknownObjectRelease();
  }
}

- (void)dismissTapGestureRecognized
{
  selfCopy = self;
  sub_1000C8E14();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AppPromotionDetailPageViewController();
    sub_1004D9948();
    swift_unknownObjectRelease();
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_10058160C(recognizerCopy, touchCopy);

  return v9 & 1;
}

- (_TtC22SubscribePageExtension9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC22SubscribePageExtension26AppPromotionDetailPageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end