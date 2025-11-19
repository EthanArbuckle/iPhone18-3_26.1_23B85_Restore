@interface BSUIReportIssueNetworkManager
- (void)_callOnJSBridge:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)reportConcern:(id)a3 completion:(id)a4;
@end

@implementation BSUIReportIssueNetworkManager

- (void)reportConcern:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5547C;
  v7[3] = &unk_388D10;
  v8 = a4;
  v6 = v8;
  [(BSUIReportIssueNetworkManager *)self _callOnJSBridge:@"reportConcern" options:a3 completionHandler:v7];
}

- (void)_callOnJSBridge:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[JSABridge sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5566C;
  v14[3] = &unk_387DD8;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  [v10 enqueueBlock:v14 file:@"BSUIReportIssueNetworkManager.m" line:48];
}

@end