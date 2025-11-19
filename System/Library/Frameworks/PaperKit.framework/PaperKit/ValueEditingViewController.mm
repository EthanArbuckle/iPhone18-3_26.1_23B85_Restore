@interface ValueEditingViewController
- (_TtC8PaperKit26ValueEditingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didChangeSliderValue;
- (void)didChangeStepperValue;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ValueEditingViewController

- (void)viewDidLoad
{
  v2 = self;
  ValueEditingViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ValueEditingViewController();
  v4 = v6.receiver;
  [(ValueEditingViewController *)&v6 viewDidAppear:v3];
  LODWORD(v3) = *MEMORY[0x1E69DD930];
  v5 = ValueEditingViewController.stepper.getter();
  UIAccessibilityPostNotification(v3, v5);
}

- (void)didChangeStepperValue
{
  v2 = self;
  ValueEditingViewController.didChangeStepperValue()();
}

- (void)didChangeSliderValue
{
  v2 = self;
  ValueEditingViewController.didChangeSliderValue()();
}

- (_TtC8PaperKit26ValueEditingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end