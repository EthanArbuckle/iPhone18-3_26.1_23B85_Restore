@interface AMSUIMessagingActionContext
- (AMSUIMessagingActionContext)initWithBag:(id)bag account:(id)account clientInfo:(id)info;
@end

@implementation AMSUIMessagingActionContext

- (AMSUIMessagingActionContext)initWithBag:(id)bag account:(id)account clientInfo:(id)info
{
  swift_unknownObjectRetain();
  accountCopy = account;
  infoCopy = info;
  return ActionContext.init(bag:account:clientInfo:)(bag, account, info);
}

@end