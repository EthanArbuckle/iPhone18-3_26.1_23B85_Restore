@interface BorderedScreenshotView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC18ASMessagesProvider22BorderedScreenshotView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation BorderedScreenshotView

- (_TtC18ASMessagesProvider22BorderedScreenshotView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_chromeBorderView) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration;
  if (qword_93C258 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ScreenshotDisplayConfiguration();
  v6 = sub_BE38(v5, qword_99A2F0);
  sub_163C10(v6, self + v4);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_4FDDAC();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v5 = sub_766690();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration;
  swift_beginAccess();
  v10 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(v6 + 16))(v8, &v9[*(v10 + 40)], v5);
  sub_766650();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v12;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

@end