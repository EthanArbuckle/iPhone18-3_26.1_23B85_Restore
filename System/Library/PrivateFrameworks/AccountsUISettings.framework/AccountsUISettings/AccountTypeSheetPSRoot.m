@interface AccountTypeSheetPSRoot
- (_TtC18AccountsUISettings22AccountTypeSheetPSRoot)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)cancelButtonPressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AccountTypeSheetPSRoot

- (id)specifiers
{
  v2 = sub_23DD42258();

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_23DD1B730(a3);
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AccountTypeSheetPSRoot();
  v2 = v5.receiver;
  [(AccountTypeSheetPSRoot *)&v5 viewDidLoad];
  v3 = [v2 table];
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];
  }
}

- (void)cancelButtonPressed
{
  v2 = self;
  sub_23DD1BFDC();
}

- (_TtC18AccountsUISettings22AccountTypeSheetPSRoot)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end