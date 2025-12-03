@interface BSUIReportIssueNetworkManager
- (void)_callOnJSBridge:(id)bridge options:(id)options completionHandler:(id)handler;
- (void)reportConcern:(id)concern completion:(id)completion;
@end

@implementation BSUIReportIssueNetworkManager

- (void)reportConcern:(id)concern completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5547C;
  v7[3] = &unk_388D10;
  completionCopy = completion;
  v6 = completionCopy;
  [(BSUIReportIssueNetworkManager *)self _callOnJSBridge:@"reportConcern" options:concern completionHandler:v7];
}

- (void)_callOnJSBridge:(id)bridge options:(id)options completionHandler:(id)handler
{
  bridgeCopy = bridge;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = +[JSABridge sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5566C;
  v14[3] = &unk_387DD8;
  v15 = bridgeCopy;
  v16 = optionsCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = optionsCopy;
  v13 = bridgeCopy;
  [v10 enqueueBlock:v14 file:@"BSUIReportIssueNetworkManager.m" line:48];
}

@end