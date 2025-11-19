@interface ASDFollowUpViewController
- (ASDFollowUpViewController)init;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
- (void)viewWillLayoutSubviews;
@end

@implementation ASDFollowUpViewController

- (ASDFollowUpViewController)init
{
  v3.receiver = self;
  v3.super_class = ASDFollowUpViewController;
  return [(ASDFollowUpViewController *)&v3 init];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = ASDFollowUpViewController;
  [(ASDFollowUpViewController *)&v6 viewWillLayoutSubviews];
  v3 = [(ASDFollowUpViewController *)self view];
  [v3 setOpaque:0];

  v4 = +[UIColor clearColor];
  v5 = [(ASDFollowUpViewController *)self view];
  [v5 setBackgroundColor:v4];
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Start with: %{public}@", buf, 0xCu);
  }

  v12 = [v9 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"ASDAccountID"];

  v14 = [v9 userInfo];
  v15 = [v14 objectForKeyedSubscript:@"ASDAppleID"];

  v16 = [v9 identifier];
  v17 = [v16 isEqualToString:@"clear"];

  if (v17)
  {
    v18 = [v9 userInfo];
    v19 = [v18 objectForKeyedSubscript:@"ASDRestore_FOLLOWUP_ID"];
    sub_100001234(self, v19);
  }

  else
  {
    if (!(v13 | v15))
    {
      v20 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Either ASDAccountID or ASDAppleID need to be provided as part of followup action. Clearing followup", buf, 2u);
      }

      v18 = [v8 uniqueIdentifier];
      sub_100001234(self, v18);
      goto LABEL_10;
    }

    v21 = [v9 identifier];
    v22 = [v21 isEqualToString:@"auth"];

    if (!v22)
    {
      goto LABEL_11;
    }

    v23 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v34 = v13;
      v35 = 2114;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Requesting appstored to auth for accountID: %{public}@ appleID: %{public}@", buf, 0x16u);
    }

    v18 = [[ASDRestoreDemotedApplicationsRequestOptions alloc] initWithAccountID:v13 appleID:v15];
    v19 = [[ASDRestoreDemotedApplicationsRequest alloc] initWithOptions:v18];
    v24 = dispatch_semaphore_create(0);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000013E0;
    v29[3] = &unk_100004150;
    v25 = v13;
    v30 = v25;
    v31 = v15;
    v26 = v24;
    v32 = v26;
    [v19 startWithCompletionBlock:v29];
    v27 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v26, v27))
    {
      v28 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v34 = v25;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Timed out attempting to call appstored to restore demoted apps for accountID: %{public}@", buf, 0xCu);
      }
    }
  }

LABEL_10:
LABEL_11:
  v10[2](v10, 1);
}

@end