@interface BorderedScreenshotView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore22BorderedScreenshotView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation BorderedScreenshotView

- (_TtC8AppStore22BorderedScreenshotView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView) = 0;
  v4 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration;
  if (qword_10096EB50 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ScreenshotDisplayConfiguration();
  v6 = sub_1000056A8(v5, qword_1009D2FE8);
  sub_1001BAB00(v6, self + v4);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100617D38();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  v5 = type metadata accessor for AspectRatio();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration;
  swift_beginAccess();
  v10 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(v6 + 16))(v8, &v9[*(v10 + 40)], v5);
  AspectRatio.width(fromHeight:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v12;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

@end