@interface SpotlightDebugVC
- (_TtC7Journal16SpotlightDebugVC)initWithCoder:(id)coder;
- (_TtC7Journal16SpotlightDebugVC)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal16SpotlightDebugVC)initWithStyle:(int64_t)style;
- (void)viewDidLoad;
@end

@implementation SpotlightDebugVC

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004E6BFC();
}

- (_TtC7Journal16SpotlightDebugVC)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SpotlightDebugVC();
  return [(TitleValueTableViewController *)&v5 initWithStyle:style];
}

- (_TtC7Journal16SpotlightDebugVC)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for SpotlightDebugVC();
  v9 = [(TitleValueTableViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC7Journal16SpotlightDebugVC)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SpotlightDebugVC();
  coderCopy = coder;
  v5 = [(TitleValueTableViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end