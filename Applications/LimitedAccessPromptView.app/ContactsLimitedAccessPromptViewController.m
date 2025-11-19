@interface ContactsLimitedAccessPromptViewController
- (_TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation ContactsLimitedAccessPromptViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100014460();
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100016CB0;
  }

  v7 = a3;
  v8 = self;
  sub_100015C70(a3);
  sub_10000809C(v6);
}

- (_TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100014DA4(v5, v7, a4);
}

@end