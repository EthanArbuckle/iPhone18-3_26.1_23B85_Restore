@interface AccountTypeSheetPSRoot
- (_TtC18AccountsUISettings22AccountTypeSheetPSRoot)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)cancelButtonPressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AccountTypeSheetPSRoot

- (id)specifiers
{
  v2 = sub_23DD42258();

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23DD1B730(appear);
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AccountTypeSheetPSRoot();
  v2 = v5.receiver;
  [(AccountTypeSheetPSRoot *)&v5 viewDidLoad];
  table = [v2 table];
  if (table)
  {
    v4 = table;
    [table removeFromSuperview];
  }
}

- (void)cancelButtonPressed
{
  selfCopy = self;
  sub_23DD1BFDC();
}

- (_TtC18AccountsUISettings22AccountTypeSheetPSRoot)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end