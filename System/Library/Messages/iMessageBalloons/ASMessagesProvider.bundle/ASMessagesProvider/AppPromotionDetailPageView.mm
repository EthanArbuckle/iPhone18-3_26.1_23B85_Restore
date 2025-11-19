@interface AppPromotionDetailPageView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC18ASMessagesProvider26AppPromotionDetailPageView)initWithFrame:(CGRect)a3;
- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView;
- (void)didTapCloseButton;
- (void)dismissTapGestureRecognized;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageView

- (void)layoutSubviews
{
  v2 = self;
  sub_425864();
}

- (void)didTapCloseButton
{
  v2 = self;
  sub_268E5C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_97848();
    swift_unknownObjectRelease();
  }
}

- (void)dismissTapGestureRecognized
{
  v2 = self;
  sub_268E5C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AppPromotionDetailPageViewController();
    sub_97404();
    swift_unknownObjectRelease();
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_428384(v6, v7);

  return v9 & 1;
}

- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC18ASMessagesProvider26AppPromotionDetailPageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end