@interface AppPromotionDetailPageView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC20ProductPageExtension26AppPromotionDetailPageView)initWithFrame:(CGRect)a3;
- (_TtC20ProductPageExtension9VideoView)accessibilityVideoView;
- (void)didTapCloseButton;
- (void)dismissTapGestureRecognized;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageView

- (void)layoutSubviews
{
  v2 = self;
  sub_100504074();
}

- (void)didTapCloseButton
{
  v2 = self;
  sub_1004B1A0C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1003AB260();
    swift_unknownObjectRelease();
  }
}

- (void)dismissTapGestureRecognized
{
  v2 = self;
  sub_1004B1A0C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AppPromotionDetailPageViewController();
    sub_1003AAE8C();
    swift_unknownObjectRelease();
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100506B94(v6, v7);

  return v9 & 1;
}

- (_TtC20ProductPageExtension9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC20ProductPageExtension26AppPromotionDetailPageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end