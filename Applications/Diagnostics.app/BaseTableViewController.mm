@interface BaseTableViewController
- (_TtC11Diagnostics23BaseTableViewController)initWithCoder:(id)a3;
- (_TtC11Diagnostics23BaseTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC11Diagnostics23BaseTableViewController)initWithStyle:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation BaseTableViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseTableViewController();
  v2 = v4.receiver;
  v3 = [(BaseTableViewController *)&v4 viewDidLoad];
  (*((swift_isaMask & *v2) + 0x50))(v3);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics23BaseTableViewController)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for BaseTableViewController();
  return [(BaseTableViewController *)&v5 initWithStyle:a3];
}

- (_TtC11Diagnostics23BaseTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for BaseTableViewController();
  v9 = [(BaseTableViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC11Diagnostics23BaseTableViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseTableViewController();
  v4 = a3;
  v5 = [(BaseTableViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end