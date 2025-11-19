@interface AMSUIMessagingActionContext
- (AMSUIMessagingActionContext)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5;
@end

@implementation AMSUIMessagingActionContext

- (AMSUIMessagingActionContext)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a5;
  return ActionContext.init(bag:account:clientInfo:)(a3, a4, a5);
}

@end