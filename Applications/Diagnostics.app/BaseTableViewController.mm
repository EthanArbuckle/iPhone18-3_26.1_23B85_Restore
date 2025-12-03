@interface BaseTableViewController
- (_TtC11Diagnostics23BaseTableViewController)initWithCoder:(id)coder;
- (_TtC11Diagnostics23BaseTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11Diagnostics23BaseTableViewController)initWithStyle:(int64_t)style;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation BaseTableViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseTableViewController();
  v2 = v4.receiver;
  viewDidLoad = [(BaseTableViewController *)&v4 viewDidLoad];
  (*((swift_isaMask & *v2) + 0x50))(viewDidLoad);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics23BaseTableViewController)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for BaseTableViewController();
  return [(BaseTableViewController *)&v5 initWithStyle:style];
}

- (_TtC11Diagnostics23BaseTableViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for BaseTableViewController();
  v9 = [(BaseTableViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC11Diagnostics23BaseTableViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseTableViewController();
  coderCopy = coder;
  v5 = [(BaseTableViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end