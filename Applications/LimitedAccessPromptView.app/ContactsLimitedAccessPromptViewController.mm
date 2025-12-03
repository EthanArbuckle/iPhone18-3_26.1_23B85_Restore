@interface ContactsLimitedAccessPromptViewController
- (_TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation ContactsLimitedAccessPromptViewController

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
  selfCopy = self;
  sub_100014460();
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100016CB0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_100015C70(context);
  sub_10000809C(v6);
}

- (_TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100014DA4(v5, v7, bundle);
}

@end