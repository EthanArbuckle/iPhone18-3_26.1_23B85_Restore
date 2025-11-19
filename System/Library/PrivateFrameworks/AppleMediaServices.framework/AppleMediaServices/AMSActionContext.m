@interface AMSActionContext
- (AMSActionContext)initWithAccount:(id)a3 bag:(id)a4 processInfo:(id)a5;
@end

@implementation AMSActionContext

- (AMSActionContext)initWithAccount:(id)a3 bag:(id)a4 processInfo:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  return ActionContext.init(account:bag:processInfo:)(a3, a4, a5);
}

@end