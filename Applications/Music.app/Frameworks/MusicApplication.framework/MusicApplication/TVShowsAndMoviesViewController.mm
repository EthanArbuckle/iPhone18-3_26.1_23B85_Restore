@interface TVShowsAndMoviesViewController
- (_TtC16MusicApplication30TVShowsAndMoviesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollView;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TVShowsAndMoviesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_8AE20();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_8B524();
}

- (id)contentScrollView
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController) contentScrollView];

  return v2;
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for TVShowsAndMoviesViewController();
  v4 = a3;
  v5 = v11.receiver;
  [(TVShowsAndMoviesViewController *)&v11 traitCollectionDidChange:v4];
  v6 = [v5 navigationItem];
  v7 = [v5 traitCollection];
  v8 = sub_2B51D8();
  v10 = v9;

  sub_387430(v8, v10);
}

- (_TtC16MusicApplication30TVShowsAndMoviesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end