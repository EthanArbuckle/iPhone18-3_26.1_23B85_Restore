@interface COSToneViewController
- (COSToneViewController)initWithCoder:(id)coder;
- (COSToneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSToneViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001439B4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100144618();
}

- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_100144C80(controller, v6, v8);
}

- (COSToneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->PSViewController_opaque[OBJC_IVAR___COSToneViewController_cancellables] = &_swiftEmptyArrayStorage;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR___COSToneViewController_cancellables] = &_swiftEmptyArrayStorage;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ToneViewController();
  v9 = [(COSToneViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (COSToneViewController)initWithCoder:(id)coder
{
  *&self->PSViewController_opaque[OBJC_IVAR___COSToneViewController_cancellables] = &_swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ToneViewController();
  coderCopy = coder;
  v5 = [(COSToneViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end