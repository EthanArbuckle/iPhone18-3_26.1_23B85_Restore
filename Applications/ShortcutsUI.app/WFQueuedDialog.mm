@interface WFQueuedDialog
- (WFQueuedDialog)initWithRequest:(id)request context:(id)context completionHandler:(id)handler;
@end

@implementation WFQueuedDialog

- (WFQueuedDialog)initWithRequest:(id)request context:(id)context completionHandler:(id)handler
{
  requestCopy = request;
  contextCopy = context;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = WFQueuedDialog;
  v12 = [(WFQueuedDialog *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_context, context);
    v14 = [handlerCopy copy];
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v14;

    v13->_isFollowUp = 0;
    v16 = v13;
  }

  return v13;
}

@end