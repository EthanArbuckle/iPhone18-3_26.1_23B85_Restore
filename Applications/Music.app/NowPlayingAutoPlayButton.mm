@interface NowPlayingAutoPlayButton
- (BOOL)isSelected;
- (_TtC5Music24NowPlayingAutoPlayButton)initWithCoder:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NowPlayingAutoPlayButton

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NowPlayingAutoPlayButton();
  return [(NowPlayingAutoPlayButton *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingAutoPlayButton();
  v4 = v5.receiver;
  [(NowPlayingAutoPlayButton *)&v5 setSelected:v3];
  sub_100625AE0();
}

- (_TtC5Music24NowPlayingAutoPlayButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_defaultColor) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_selectedColor) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1006259A4(a3);
}

@end