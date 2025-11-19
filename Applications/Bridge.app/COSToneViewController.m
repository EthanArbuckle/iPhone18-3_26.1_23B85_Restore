@interface COSToneViewController
- (COSToneViewController)initWithCoder:(id)a3;
- (COSToneViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSToneViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1001439B4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_100144618();
}

- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4
{
  if (a4)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_100144C80(a3, v6, v8);
}

- (COSToneViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->PSViewController_opaque[OBJC_IVAR___COSToneViewController_cancellables] = &_swiftEmptyArrayStorage;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR___COSToneViewController_cancellables] = &_swiftEmptyArrayStorage;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ToneViewController();
  v9 = [(COSToneViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (COSToneViewController)initWithCoder:(id)a3
{
  *&self->PSViewController_opaque[OBJC_IVAR___COSToneViewController_cancellables] = &_swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ToneViewController();
  v4 = a3;
  v5 = [(COSToneViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end