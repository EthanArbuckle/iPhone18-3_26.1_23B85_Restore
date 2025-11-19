@interface AppPromotionDetailPageView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC8AppStore26AppPromotionDetailPageView)initWithFrame:(CGRect)a3;
- (_TtC8AppStore9VideoView)accessibilityVideoView;
- (void)didTapCloseButton;
- (void)dismissTapGestureRecognized;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageView

- (void)layoutSubviews
{
  v2 = self;
  sub_100405B34();
}

- (void)didTapCloseButton
{
  v2 = self;
  sub_1002C17B4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100180788();
    swift_unknownObjectRelease();
  }
}

- (void)dismissTapGestureRecognized
{
  v2 = self;
  sub_1002C17B4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AppPromotionDetailPageViewController();
    sub_100180344();
    swift_unknownObjectRelease();
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100408654(v6, v7);

  return v9 & 1;
}

- (_TtC8AppStore9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC8AppStore26AppPromotionDetailPageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end