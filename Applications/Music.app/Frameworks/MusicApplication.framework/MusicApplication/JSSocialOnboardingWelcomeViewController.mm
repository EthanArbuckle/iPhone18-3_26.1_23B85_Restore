@interface JSSocialOnboardingWelcomeViewController
- (_TtC16MusicApplication39JSSocialOnboardingWelcomeViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication39JSSocialOnboardingWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation JSSocialOnboardingWelcomeViewController

- (_TtC16MusicApplication39JSSocialOnboardingWelcomeViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = TextDrawing.Cache.init()();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView) = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize);
  *v5 = 0;
  v5[1] = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  JSSocialOnboardingWelcomeViewController.loadView()();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(JSSocialOnboardingWelcomeViewController *)&v8 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    navigationBar = [navigationController navigationBar];

    [navigationBar setPrefersLargeTitles:0];
    v4 = navigationBar;
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  JSSocialOnboardingWelcomeViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(JSSocialOnboardingWelcomeViewController *)&v14 viewWillLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = sub_9E06C();
    [v13 setFrame:{v6, v8, v10, v12}];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC16MusicApplication39JSSocialOnboardingWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end