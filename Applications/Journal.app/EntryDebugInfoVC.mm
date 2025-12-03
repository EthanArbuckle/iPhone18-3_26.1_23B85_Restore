@interface EntryDebugInfoVC
- (_TtC7Journal16EntryDebugInfoVC)initWithCoder:(id)coder;
- (_TtC7Journal16EntryDebugInfoVC)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal16EntryDebugInfoVC)initWithStyle:(int64_t)style;
- (void)viewDidLoad;
@end

@implementation EntryDebugInfoVC

- (_TtC7Journal16EntryDebugInfoVC)initWithCoder:(id)coder
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
  navigationItem = [v2 navigationItem];
  v4 = String._bridgeToObjectiveC()();
  [navigationItem setTitle:v4];
}

- (_TtC7Journal16EntryDebugInfoVC)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal16EntryDebugInfoVC)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end