@interface JSTVShowEpisodeDetailViewController
- (_TtC16MusicApplication35JSTVShowEpisodeDetailViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication35JSTVShowEpisodeDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation JSTVShowEpisodeDetailViewController

- (_TtC16MusicApplication35JSTVShowEpisodeDetailViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_166518();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_167B9C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_167D34(a3);
}

- (_TtC16MusicApplication35JSTVShowEpisodeDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end