@interface FMTransparentNavigationController
- (_TtC6FindMy33FMTransparentNavigationController)initWithCoder:(id)a3;
- (_TtC6FindMy33FMTransparentNavigationController)initWithRootViewController:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)viewDidLoad;
@end

@implementation FMTransparentNavigationController

- (_TtC6FindMy33FMTransparentNavigationController)initWithRootViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMTransparentNavigationController();
  v4 = a3;
  v5 = [(FMActivityIndicatingNavigationController *)&v7 initWithRootViewController:v4];
  [(FMTransparentNavigationController *)v5 setDelegate:v5, v7.receiver, v7.super_class];

  return v5;
}

- (_TtC6FindMy33FMTransparentNavigationController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100266E70();
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1002673C0(v8);
}

@end