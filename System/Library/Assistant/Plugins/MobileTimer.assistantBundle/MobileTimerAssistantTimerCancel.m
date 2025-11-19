@interface MobileTimerAssistantTimerCancel
- (void)_performWithCompletion:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MobileTimerAssistantTimerCancel

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_D814(v5);
  }

  [(MobileTimerAssistantTimerCancel *)self _performWithCompletion:v4];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_D898(v6);
  }
}

- (void)_performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching timer", &buf, 0xCu);
  }

  v6 = objc_opt_new();
  v7 = [v6 currentTimer];
  objc_initWeak(&location, self);
  v8 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = sub_9A68;
  v37 = sub_9A78;
  v38 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_9A80;
  v28[3] = &unk_14590;
  objc_copyWeak(&v30, &location);
  v9 = v6;
  v29 = v9;
  v10 = [v7 flatMap:v28];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_9CB0;
  v24[3] = &unk_145B8;
  objc_copyWeak(&v27, &location);
  p_buf = &buf;
  v11 = v8;
  v25 = v11;
  v12 = [v10 addSuccessBlock:v24];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_9D98;
  v20[3] = &unk_14540;
  objc_copyWeak(&v23, &location);
  v22 = &buf;
  v13 = v11;
  v21 = v13;
  v14 = [v10 addFailureBlock:v20];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v15 = MTLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [*(*(&buf + 1) + 40) dictionary];
    sub_D91C(self, v16, v33);
  }

  v17 = [*(*(&buf + 1) + 40) dictionary];
  v4[2](v4, v17);

  v18 = MTLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = [*(*(&buf + 1) + 40) dictionary];
    sub_D980(self, v19, v32);
  }

  [MTAnalytics incrementEventCount:kMTCASiriTimerCancels];
  objc_destroyWeak(&v23);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v30);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
}

@end