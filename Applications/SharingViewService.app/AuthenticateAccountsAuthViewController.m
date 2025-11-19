@interface AuthenticateAccountsAuthViewController
- (_TtC18SharingViewService38AuthenticateAccountsAuthViewController)initWithContentView:(id)a3;
- (void)didCompleteTextEntry:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AuthenticateAccountsAuthViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AuthenticateAccountsAuthViewController();
  v4 = v5.receiver;
  [(AuthenticateAccountsAuthViewController *)&v5 viewWillAppear:v3];
  sub_1000B98CC();
}

- (void)didCompleteTextEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000B9798(v4);
}

- (_TtC18SharingViewService38AuthenticateAccountsAuthViewController)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end