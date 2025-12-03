@interface CarPlayUpNextControlsView
- (_TtC5Music25CarPlayUpNextControlsView)initWithCoder:(id)coder;
- (_TtC5Music25CarPlayUpNextControlsView)initWithReuseIdentifier:(id)identifier;
- (void)controlsButtonTapped:(id)tapped;
- (void)setTracklist:(id)tracklist;
@end

@implementation CarPlayUpNextControlsView

- (_TtC5Music25CarPlayUpNextControlsView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView_tracklist) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___autoPlayButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___transitionsButton) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setTracklist:(id)tracklist
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView_tracklist);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView_tracklist) = tracklist;
  tracklistCopy = tracklist;
  selfCopy = self;

  sub_10016AA74();
}

- (void)controlsButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_10016AE94();
}

- (_TtC5Music25CarPlayUpNextControlsView)initWithReuseIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end