@interface JSTVShowEpisodeDetailViewController
- (_TtC16MusicApplication35JSTVShowEpisodeDetailViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication35JSTVShowEpisodeDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation JSTVShowEpisodeDetailViewController

- (_TtC16MusicApplication35JSTVShowEpisodeDetailViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(&self->super.super.super.super.isa + v4) = swift_allocObject();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_166518();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_167B9C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_167D34(appear);
}

- (_TtC16MusicApplication35JSTVShowEpisodeDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end