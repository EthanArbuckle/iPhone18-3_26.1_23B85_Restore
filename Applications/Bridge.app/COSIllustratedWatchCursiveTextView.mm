@interface COSIllustratedWatchCursiveTextView
+ (BOOL)isRenderingInMetal;
+ (double)delayForStartOfAnimation;
+ (void)setDelayForStartOfAnimation:(double)a3;
- (_TtC6Bridge34COSIllustratedWatchCursiveTextView)initWithBackgroundImageName:(id)a3;
- (_TtC6Bridge34COSIllustratedWatchCursiveTextView)initWithCoder:(id)a3;
- (_TtC6Bridge34COSIllustratedWatchCursiveTextView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation COSIllustratedWatchCursiveTextView

- (_TtC6Bridge34COSIllustratedWatchCursiveTextView)initWithBackgroundImageName:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_10016102C(v3, v4);
}

- (_TtC6Bridge34COSIllustratedWatchCursiveTextView)initWithCoder:(id)a3
{
  *&self->BPSIllustratedWatchView_opaque[OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_helloView] = 0;
  *&self->BPSIllustratedWatchView_opaque[OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_backgroundImage] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (double)delayForStartOfAnimation
{
  if (qword_1002BE520 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *&qword_1002BE7F0;
}

+ (void)setDelayForStartOfAnimation:(double)a3
{
  if (qword_1002BE520 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1002BE7F0 = *&a3;
}

+ (BOOL)isRenderingInMetal
{
  if (_UISolariumEnabled())
  {
    v5 = &type metadata for FeatureFlags;
    v6 = sub_100144D98();
    v4[0] = 3;
    v2 = isFeatureEnabled(_:)();
    sub_10014A63C(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)startAnimation
{
  v2 = *&self->BPSIllustratedWatchView_opaque[OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_helloView];
  if (v2)
  {
    v3 = *((swift_isaMask & *v2) + 0x78);
    v5 = self;
    v4 = v2;
    v3();
  }

  else
  {
    __break(1u);
  }
}

- (void)stopAnimation
{
  v2 = *&self->BPSIllustratedWatchView_opaque[OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_helloView];
  if (v2)
  {
    v3 = *((swift_isaMask & *v2) + 0x80);
    v5 = self;
    v4 = v2;
    v3();
  }

  else
  {
    __break(1u);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for COSIllustratedWatchCursiveTextView();
  v2 = v3.receiver;
  [(COSIllustratedWatchCursiveTextView *)&v3 layoutSubviews];
  sub_10016124C();
}

- (_TtC6Bridge34COSIllustratedWatchCursiveTextView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end