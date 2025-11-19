@interface AMSUIActionContext
- (AMSUIActionContext)initWithAccount:(id)a3 bag:(id)a4 presentingViewController:(id)a5 processInfo:(id)a6;
@end

@implementation AMSUIActionContext

- (AMSUIActionContext)initWithAccount:(id)a3 bag:(id)a4 presentingViewController:(id)a5 processInfo:(id)a6
{
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a6;
  return UIActionContext.init(account:bag:presentingViewController:processInfo:)(a3, a4, a5, a6);
}

@end