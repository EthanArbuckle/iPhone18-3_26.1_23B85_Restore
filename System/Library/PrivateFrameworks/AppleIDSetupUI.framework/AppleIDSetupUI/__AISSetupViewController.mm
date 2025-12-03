@interface __AISSetupViewController
- (__AISSetupViewController)initWithCoder:(id)coder;
- (__AISSetupViewController)initWithContext:(id)context dontSuggestUserAction:(id)action skipAction:(id)skipAction shouldAutoDismiss:(BOOL)dismiss isPreEstablishedClient:(BOOL)client reportHandler:(id)handler;
- (__AISSetupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation __AISSetupViewController

- (__AISSetupViewController)initWithContext:(id)context dontSuggestUserAction:(id)action skipAction:(id)skipAction shouldAutoDismiss:(BOOL)dismiss isPreEstablishedClient:(BOOL)client reportHandler:(id)handler
{
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  contextCopy = context;
  actionCopy = action;
  skipActionCopy = skipAction;
  return SetupViewController.init(context:dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:reportHandler:)(context, action, skipAction, dismiss, client, sub_2409C4520, v14);
}

- (__AISSetupViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR_____AISSetupViewController_hostingController) = 0;
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2409C3404();
}

- (__AISSetupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end