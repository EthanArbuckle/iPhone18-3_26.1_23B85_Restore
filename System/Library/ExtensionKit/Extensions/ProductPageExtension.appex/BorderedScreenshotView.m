@interface BorderedScreenshotView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension22BorderedScreenshotView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation BorderedScreenshotView

- (_TtC20ProductPageExtension22BorderedScreenshotView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration;
  if (qword_10093F5B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ScreenshotDisplayConfiguration();
  v6 = sub_10000A61C(v5, qword_10099CB78);
  sub_100125EEC(v6, self + v4);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100125714();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v5 = sub_10076D39C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration;
  swift_beginAccess();
  v10 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(v6 + 16))(v8, &v9[*(v10 + 40)], v5);
  sub_10076D35C();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v12;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

@end