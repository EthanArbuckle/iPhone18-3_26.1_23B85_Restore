@interface ViewController
- (_TtC19Text_Message_Filter14ViewController)initWithCoder:(id)coder;
- (_TtC19Text_Message_Filter14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)goToSettings:(id)settings;
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ViewController();
  [(ViewController *)&v2 viewDidLoad];
}

- (void)goToSettings:(id)settings
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  specialized ViewController.goToSettings(_:)();

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (_TtC19Text_Message_Filter14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ViewController();
  v9 = [(ViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC19Text_Message_Filter14ViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ViewController();
  coderCopy = coder;
  v5 = [(ViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end