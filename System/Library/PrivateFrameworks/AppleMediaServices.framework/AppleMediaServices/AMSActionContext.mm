@interface AMSActionContext
- (AMSActionContext)initWithAccount:(id)account bag:(id)bag processInfo:(id)info;
@end

@implementation AMSActionContext

- (AMSActionContext)initWithAccount:(id)account bag:(id)bag processInfo:(id)info
{
  accountCopy = account;
  swift_unknownObjectRetain();
  infoCopy = info;
  return ActionContext.init(account:bag:processInfo:)(account, bag, info);
}

@end