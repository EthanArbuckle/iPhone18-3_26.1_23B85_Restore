@interface AppPromotionDetailPageView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC18ASMessagesProvider26AppPromotionDetailPageView)initWithFrame:(CGRect)frame;
- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView;
- (void)didTapCloseButton;
- (void)dismissTapGestureRecognized;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_425864();
}

- (void)didTapCloseButton
{
  selfCopy = self;
  sub_268E5C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_97848();
    swift_unknownObjectRelease();
  }
}

- (void)dismissTapGestureRecognized
{
  selfCopy = self;
  sub_268E5C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AppPromotionDetailPageViewController();
    sub_97404();
    swift_unknownObjectRelease();
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_428384(recognizerCopy, touchCopy);

  return v9 & 1;
}

- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC18ASMessagesProvider26AppPromotionDetailPageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end