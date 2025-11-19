@interface AppPromotionDetailPageView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC22SubscribePageExtension26AppPromotionDetailPageView)initWithFrame:(CGRect)a3;
- (_TtC22SubscribePageExtension9VideoView)accessibilityVideoView;
- (void)didTapCloseButton;
- (void)dismissTapGestureRecognized;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageView

- (void)layoutSubviews
{
  v2 = self;
  sub_10057EAEC();
}

- (void)didTapCloseButton
{
  v2 = self;
  sub_1000C8E14();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1004D9D8C();
    swift_unknownObjectRelease();
  }
}

- (void)dismissTapGestureRecognized
{
  v2 = self;
  sub_1000C8E14();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AppPromotionDetailPageViewController();
    sub_1004D9948();
    swift_unknownObjectRelease();
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10058160C(v6, v7);

  return v9 & 1;
}

- (_TtC22SubscribePageExtension9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC22SubscribePageExtension26AppPromotionDetailPageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end