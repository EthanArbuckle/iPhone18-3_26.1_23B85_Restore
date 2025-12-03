@interface MobileTimerAssistantAlarmDelete
- (void)_performWithCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MobileTimerAssistantAlarmDelete

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_D544(v5);
  }

  [(MobileTimerAssistantAlarmDelete *)self _performWithCompletion:completionCopy];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_D5C8(v6);
  }
}

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[MobileTimerAssistantAlarmDelete _performWithCompletion:]";
    *&buf[12] = 2114;
    *&buf[14] = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ fetching alarms", buf, 0x16u);
  }

  v6 = objc_opt_new();
  alarms = [v6 alarms];
  objc_initWeak(&location, self);
  v8 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = sub_8BD8;
  v33 = sub_8BE8;
  v34 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_8BF0;
  v25[3] = &unk_14710;
  objc_copyWeak(&v27, &location);
  v9 = v6;
  v26 = v9;
  v10 = [alarms flatMap:v25];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_938C;
  v21 = &unk_14620;
  objc_copyWeak(&v24, &location);
  v23 = buf;
  v11 = v8;
  v22 = v11;
  v12 = [v10 addSuccessBlock:&v18];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v13 = MTLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    dictionary = [*(*&buf[8] + 40) dictionary];
    sub_D64C(self, dictionary, v30);
  }

  dictionary2 = [*(*&buf[8] + 40) dictionary];
  completionCopy[2](completionCopy, dictionary2);

  v16 = MTLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    dictionary3 = [*(*&buf[8] + 40) dictionary];
    sub_D6B0(self, dictionary3, v29);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v27);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

@end