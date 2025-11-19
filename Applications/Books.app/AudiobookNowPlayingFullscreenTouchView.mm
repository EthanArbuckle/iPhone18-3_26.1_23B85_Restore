@interface AudiobookNowPlayingFullscreenTouchView
- (_TtC5Books38AudiobookNowPlayingFullscreenTouchView)initWithFrame:(CGRect)a3;
- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)onClose:(id)a3;
- (void)setChapterProgress:(id)a3;
@end

@implementation AudiobookNowPlayingFullscreenTouchView

- (void)dealloc
{
  v3 = type metadata accessor for AudiobookNowPlayingFullscreenTouchView();
  v6[3] = v3;
  v6[0] = self;
  v4 = self;
  sub_1007A2B34();
  sub_1000074E0(v6);
  v5.receiver = v4;
  v5.super_class = v3;
  [(AudiobookNowPlayingFullscreenTouchView *)&v5 dealloc];
}

- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_100397148(a4);

  sub_1000074E0(&v8);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1003980E0();
  sub_100398AFC();
}

- (_TtC5Books38AudiobookNowPlayingFullscreenTouchView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)onClose:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong close:1];

    swift_unknownObjectRelease();
  }
}

- (void)setChapterProgress:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_10039F4EC();
  swift_unknownObjectRelease();
}

@end