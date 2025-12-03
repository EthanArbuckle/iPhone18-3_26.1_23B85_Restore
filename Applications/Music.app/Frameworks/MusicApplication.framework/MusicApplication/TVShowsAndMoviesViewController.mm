@interface TVShowsAndMoviesViewController
- (_TtC16MusicApplication30TVShowsAndMoviesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollView;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TVShowsAndMoviesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_8AE20();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_8B524();
}

- (id)contentScrollView
{
  contentScrollView = [*(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController) contentScrollView];

  return contentScrollView;
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for TVShowsAndMoviesViewController();
  changeCopy = change;
  v5 = v11.receiver;
  [(TVShowsAndMoviesViewController *)&v11 traitCollectionDidChange:changeCopy];
  navigationItem = [v5 navigationItem];
  traitCollection = [v5 traitCollection];
  v8 = sub_2B51D8();
  v10 = v9;

  sub_387430(v8, v10);
}

- (_TtC16MusicApplication30TVShowsAndMoviesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end