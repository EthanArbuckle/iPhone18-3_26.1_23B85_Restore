@interface Reactions.Control
- (CGRect)frame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCE5MusicO11MusicCoreUI9Reactions7Control)initWithCoder:(id)coder;
- (_TtCE5MusicO11MusicCoreUI9Reactions7Control)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation Reactions.Control

- (_TtCE5MusicO11MusicCoreUI9Reactions7Control)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_contentView) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(Reactions.Control *)self intrinsicContentSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _s7ControlCMa(0);
  [(Reactions.Control *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = _s7ControlCMa(0);
  v7 = v9.receiver;
  [(Reactions.Control *)&v9 setFrame:x, y, width, height];
  v8 = *&v7[OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_contentView];
  [v7 bounds];
  [v8 setFrame:?];
}

- (_TtCE5MusicO11MusicCoreUI9Reactions7Control)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end