@interface AuthenticationUIServiceViewController
- (_TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation AuthenticationUIServiceViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10000FACC;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_10000ADD8(a3, v6, v7);
  sub_10000FA84(v6);
}

- (_TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10000EB0C(a3);
}

@end