@interface JSSocialOnboardingWelcomeViewController
- (_TtC16MusicApplication39JSSocialOnboardingWelcomeViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication39JSSocialOnboardingWelcomeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation JSSocialOnboardingWelcomeViewController

- (_TtC16MusicApplication39JSSocialOnboardingWelcomeViewController)initWithCoder:(id)a3
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
  v2 = self;
  JSSocialOnboardingWelcomeViewController.loadView()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(JSSocialOnboardingWelcomeViewController *)&v8 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setPrefersLargeTitles:0];
    v4 = v7;
  }
}

- (void)viewDidLoad
{
  v2 = self;
  JSSocialOnboardingWelcomeViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(JSSocialOnboardingWelcomeViewController *)&v14 viewWillLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
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

- (_TtC16MusicApplication39JSSocialOnboardingWelcomeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end