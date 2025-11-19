@interface NowPlayingRepeatButton
- (_TtC5Music22NowPlayingRepeatButton)initWithCoder:(id)a3;
- (void)tintColorDidChange;
@end

@implementation NowPlayingRepeatButton

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NowPlayingRepeatButton();
  v2 = v3.receiver;
  [(NowPlayingRepeatButton *)&v3 tintColorDidChange];
  sub_100050478();
}

- (_TtC5Music22NowPlayingRepeatButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_repeatType) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_defaultColor) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedColor) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedBackgroundColor) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_dimmedBackgroundColor) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_isGlowEnabled) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end