@interface AnimatedArtworkPlayerUIView
- (_TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView)initWithCoder:(id)coder;
- (_TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AnimatedArtworkPlayerUIView

- (_TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView_playerLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView_playbackLooper) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(AnimatedArtworkPlayerUIView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView_playerLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];
  }
}

- (_TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end