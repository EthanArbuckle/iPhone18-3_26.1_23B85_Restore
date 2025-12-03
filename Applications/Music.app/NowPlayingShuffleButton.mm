@interface NowPlayingShuffleButton
- (_TtC5Music23NowPlayingShuffleButton)initWithCoder:(id)coder;
- (void)tintColorDidChange;
@end

@implementation NowPlayingShuffleButton

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NowPlayingShuffleButton();
  v2 = v3.receiver;
  [(NowPlayingShuffleButton *)&v3 tintColorDidChange];
  sub_10004FD5C();
}

- (_TtC5Music23NowPlayingShuffleButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_shuffleType) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_defaultColor) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedColor) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedBackgroundColor) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_dimmedBackgroundColor) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_isGlowEnabled) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end