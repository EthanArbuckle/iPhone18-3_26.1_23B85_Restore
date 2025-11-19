@interface ViewController
- (BOOL)prefersStatusBarHidden;
- (_TtC11EyeReliefUI14ViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)preferredStatusBarStyle;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_10000516C();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = self;
  sub_1000054E4();
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ViewController();
  [(ViewController *)&v2 viewDidLoad];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1000058BC;
  }

  v7 = a3;
  v8 = self;
  sub_1000036E4(a3, v6);
  sub_10000536C(v6);
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1000053B4;
  }

  v7 = a3;
  v8 = self;
  sub_100003C14(a3, v6);
  sub_10000536C(v6);
}

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = sub_100003EB4();

  return v3 & 1;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = self;
  v3 = [(ViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (_TtC11EyeReliefUI14ViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100004024(v5, v7, a4);
}

@end