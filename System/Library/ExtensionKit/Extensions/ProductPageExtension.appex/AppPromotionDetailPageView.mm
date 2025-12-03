@interface AppPromotionDetailPageView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC20ProductPageExtension26AppPromotionDetailPageView)initWithFrame:(CGRect)frame;
- (_TtC20ProductPageExtension9VideoView)accessibilityVideoView;
- (void)didTapCloseButton;
- (void)dismissTapGestureRecognized;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100504074();
}

- (void)didTapCloseButton
{
  selfCopy = self;
  sub_1004B1A0C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1003AB260();
    swift_unknownObjectRelease();
  }
}

- (void)dismissTapGestureRecognized
{
  selfCopy = self;
  sub_1004B1A0C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AppPromotionDetailPageViewController();
    sub_1003AAE8C();
    swift_unknownObjectRelease();
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100506B94(recognizerCopy, touchCopy);

  return v9 & 1;
}

- (_TtC20ProductPageExtension9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC20ProductPageExtension26AppPromotionDetailPageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end