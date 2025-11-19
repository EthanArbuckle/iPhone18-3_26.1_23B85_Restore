@interface CarPlayUpNextControlsView
- (_TtC5Music25CarPlayUpNextControlsView)initWithCoder:(id)a3;
- (_TtC5Music25CarPlayUpNextControlsView)initWithReuseIdentifier:(id)a3;
- (void)controlsButtonTapped:(id)a3;
- (void)setTracklist:(id)a3;
@end

@implementation CarPlayUpNextControlsView

- (_TtC5Music25CarPlayUpNextControlsView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView_tracklist) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___autoPlayButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___transitionsButton) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setTracklist:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView_tracklist);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView_tracklist) = a3;
  v5 = a3;
  v6 = self;

  sub_10016AA74();
}

- (void)controlsButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10016AE94();
}

- (_TtC5Music25CarPlayUpNextControlsView)initWithReuseIdentifier:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end