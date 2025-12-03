@interface AMSUIActionContext
- (AMSUIActionContext)initWithAccount:(id)account bag:(id)bag presentingViewController:(id)controller processInfo:(id)info;
@end

@implementation AMSUIActionContext

- (AMSUIActionContext)initWithAccount:(id)account bag:(id)bag presentingViewController:(id)controller processInfo:(id)info
{
  accountCopy = account;
  swift_unknownObjectRetain();
  controllerCopy = controller;
  infoCopy = info;
  return UIActionContext.init(account:bag:presentingViewController:processInfo:)(account, bag, controller, info);
}

@end