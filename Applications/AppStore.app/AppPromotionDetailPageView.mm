@interface AppPromotionDetailPageView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC8AppStore26AppPromotionDetailPageView)initWithFrame:(CGRect)frame;
- (_TtC8AppStore9VideoView)accessibilityVideoView;
- (void)didTapCloseButton;
- (void)dismissTapGestureRecognized;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100405B34();
}

- (void)didTapCloseButton
{
  selfCopy = self;
  sub_1002C17B4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100180788();
    swift_unknownObjectRelease();
  }
}

- (void)dismissTapGestureRecognized
{
  selfCopy = self;
  sub_1002C17B4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AppPromotionDetailPageViewController();
    sub_100180344();
    swift_unknownObjectRelease();
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100408654(recognizerCopy, touchCopy);

  return v9 & 1;
}

- (_TtC8AppStore9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC8AppStore26AppPromotionDetailPageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end