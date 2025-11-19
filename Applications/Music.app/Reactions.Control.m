@interface Reactions.Control
- (CGRect)frame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCE5MusicO11MusicCoreUI9Reactions7Control)initWithCoder:(id)a3;
- (_TtCE5MusicO11MusicCoreUI9Reactions7Control)initWithFrame:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation Reactions.Control

- (_TtCE5MusicO11MusicCoreUI9Reactions7Control)initWithCoder:(id)a3
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(Reactions.Control *)self intrinsicContentSize:a3.width];
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = _s7ControlCMa(0);
  v7 = v9.receiver;
  [(Reactions.Control *)&v9 setFrame:x, y, width, height];
  v8 = *&v7[OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_contentView];
  [v7 bounds];
  [v8 setFrame:?];
}

- (_TtCE5MusicO11MusicCoreUI9Reactions7Control)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end