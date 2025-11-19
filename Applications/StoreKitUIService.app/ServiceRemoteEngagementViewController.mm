@interface ServiceRemoteEngagementViewController
- (id)_engagementTaskForRequest:(id)a3 error:(id *)a4;
- (void)_dismissPresentedViewController;
- (void)presentEngagementRequestData:(id)a3 completion:(id)a4;
- (void)setPreferredContentSize:(CGSize)a3;
@end

@implementation ServiceRemoteEngagementViewController

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = ServiceRemoteEngagementViewController;
  [(ServiceRemoteEngagementViewController *)&v8 setPreferredContentSize:?];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022924;
  v7[3] = &unk_100050FC8;
  v7[4] = self;
  v6 = [(ServiceRemoteEngagementViewController *)self _clientViewControllerProxyWithErrorHandler:v7];
  [v6 preferredContentSizeDidChange:{width, height}];
}

- (void)presentEngagementRequestData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ServiceRemoteEngagementViewController *)self _dismissPresentedViewController];
  v20 = 0;
  v8 = [(ServiceRemoteEngagementViewController *)self _engagementTaskForRequest:v7 error:&v20];

  v9 = v20;
  if (!v9)
  {
    v17 = [v8 presentEngagement];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100022D04;
    v19[3] = &unk_100051E08;
    v19[4] = self;
    [v17 addFinishBlock:v19];

    v6[2](v6, 0);
    goto LABEL_13;
  }

  v10 = +[SSLogConfig sharedConfig];
  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = v11 | 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 OSLogObject];
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v14 = objc_opt_class();
  v21 = 138543618;
  v22 = v14;
  v23 = 2114;
  v24 = v9;
  v15 = v14;
  LODWORD(v18) = 22;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v13 = [NSString stringWithCString:v16 encoding:4, &v21, v18];
    free(v16);
    SSFileLog();
LABEL_10:
  }

  (v6)[2](v6, v9);
LABEL_13:
}

- (void)_dismissPresentedViewController
{
  v2 = [(ServiceRemoteEngagementViewController *)self childViewControllers];
  v4 = [v2 firstObject];

  v3 = [v4 view];
  [v3 removeFromSuperview];

  [v4 removeFromParentViewController];
}

- (id)_engagementTaskForRequest:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = self;
    v7 = a3;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v11 = self;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  v12 = sub_1000293BC(v8, v10);

  sub_100029D2C(v8, v10);

  return v12;
}

@end