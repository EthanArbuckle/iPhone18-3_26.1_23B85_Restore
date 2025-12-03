@interface AuthenticateAccountsAuthViewController
- (_TtC18SharingViewService38AuthenticateAccountsAuthViewController)initWithContentView:(id)view;
- (void)didCompleteTextEntry:(id)entry;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AuthenticateAccountsAuthViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AuthenticateAccountsAuthViewController();
  v4 = v5.receiver;
  [(AuthenticateAccountsAuthViewController *)&v5 viewWillAppear:appearCopy];
  sub_1000B98CC();
}

- (void)didCompleteTextEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_1000B9798(entryCopy);
}

- (_TtC18SharingViewService38AuthenticateAccountsAuthViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end