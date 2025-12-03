@interface VideoPlayerUIView
- (_TtC11EyeReliefUI17VideoPlayerUIView)initWithCoder:(id)coder;
- (_TtC11EyeReliefUI17VideoPlayerUIView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation VideoPlayerUIView

- (_TtC11EyeReliefUI17VideoPlayerUIView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLayer;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(AVPlayerLayer) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLooper) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for VideoPlayerUIView();
  v2 = v4.receiver;
  [(VideoPlayerUIView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLayer];
  [v2 bounds];
  [v3 setFrame:?];
}

- (_TtC11EyeReliefUI17VideoPlayerUIView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end