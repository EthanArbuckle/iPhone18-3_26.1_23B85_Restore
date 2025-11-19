@interface EntryDebugInfoVC
- (_TtC7Journal16EntryDebugInfoVC)initWithCoder:(id)a3;
- (_TtC7Journal16EntryDebugInfoVC)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7Journal16EntryDebugInfoVC)initWithStyle:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation EntryDebugInfoVC

- (_TtC7Journal16EntryDebugInfoVC)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for EntryDebugInfoVC();
  v2 = v5.receiver;
  [(TitleValueTableViewController *)&v5 viewDidLoad];
  v3 = [v2 navigationItem];
  v4 = String._bridgeToObjectiveC()();
  [v3 setTitle:v4];
}

- (_TtC7Journal16EntryDebugInfoVC)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal16EntryDebugInfoVC)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end