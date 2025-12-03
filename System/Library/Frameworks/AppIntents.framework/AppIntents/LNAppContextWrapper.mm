@interface LNAppContextWrapper
- (LNAppContextWrapper)init;
- (void)performAction:(id)action options:(id)options reportingProgress:(id)progress delegate:(id)delegate auditToken:(id *)token completionHandler:(id)handler;
@end

@implementation LNAppContextWrapper

- (void)performAction:(id)action options:(id)options reportingProgress:(id)progress delegate:(id)delegate auditToken:(id *)token completionHandler:(id)handler
{
  handlerCopy = handler;
  delegateCopy = delegate;
  progressCopy = progress;
  optionsCopy = options;
  actionCopy = action;
  appContext = [(LNAppContextWrapper *)self appContext];
  v20 = *&token->var0[4];
  v21[0] = *token->var0;
  v21[1] = v20;
  [appContext performAction:actionCopy options:optionsCopy reportingProgress:progressCopy delegate:delegateCopy auditToken:v21 completionHandler:handlerCopy];
}

- (LNAppContextWrapper)init
{
  v7.receiver = self;
  v7.super_class = LNAppContextWrapper;
  v2 = [(LNAppContextWrapper *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    appContext = v2->_appContext;
    v2->_appContext = v3;

    v5 = v2;
  }

  return v2;
}

@end