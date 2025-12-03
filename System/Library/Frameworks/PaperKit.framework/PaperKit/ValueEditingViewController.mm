@interface ValueEditingViewController
- (_TtC8PaperKit26ValueEditingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didChangeSliderValue;
- (void)didChangeStepperValue;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ValueEditingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  ValueEditingViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ValueEditingViewController();
  v4 = v6.receiver;
  [(ValueEditingViewController *)&v6 viewDidAppear:appearCopy];
  LODWORD(appearCopy) = *MEMORY[0x1E69DD930];
  v5 = ValueEditingViewController.stepper.getter();
  UIAccessibilityPostNotification(appearCopy, v5);
}

- (void)didChangeStepperValue
{
  selfCopy = self;
  ValueEditingViewController.didChangeStepperValue()();
}

- (void)didChangeSliderValue
{
  selfCopy = self;
  ValueEditingViewController.didChangeSliderValue()();
}

- (_TtC8PaperKit26ValueEditingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end