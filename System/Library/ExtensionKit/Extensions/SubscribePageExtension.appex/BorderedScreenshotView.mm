@interface BorderedScreenshotView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension22BorderedScreenshotView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation BorderedScreenshotView

- (_TtC22SubscribePageExtension22BorderedScreenshotView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration;
  if (qword_100920778 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ScreenshotDisplayConfiguration();
  v6 = sub_10000D0FC(v5, qword_10097ECF8);
  sub_100289598(v6, self + v4);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100288E80();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  v5 = sub_1007504F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration;
  swift_beginAccess();
  v10 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(v6 + 16))(v8, &v9[*(v10 + 40)], v5);
  sub_1007504B4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v12;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

@end