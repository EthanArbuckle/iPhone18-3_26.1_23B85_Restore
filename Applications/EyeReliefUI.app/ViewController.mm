@interface ViewController
- (BOOL)prefersStatusBarHidden;
- (_TtC11EyeReliefUI14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)preferredStatusBarStyle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10000516C();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000054E4();
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ViewController();
  [(ViewController *)&v2 viewDidLoad];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1000058BC;
  }

  contextCopy = context;
  selfCopy = self;
  sub_1000036E4(context, v6);
  sub_10000536C(v6);
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1000053B4;
  }

  contextCopy = context;
  selfCopy = self;
  sub_100003C14(context, v6);
  sub_10000536C(v6);
}

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  v3 = sub_100003EB4();

  return v3 & 1;
}

- (int64_t)preferredStatusBarStyle
{
  selfCopy = self;
  traitCollection = [(ViewController *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (_TtC11EyeReliefUI14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100004024(v5, v7, bundle);
}

@end