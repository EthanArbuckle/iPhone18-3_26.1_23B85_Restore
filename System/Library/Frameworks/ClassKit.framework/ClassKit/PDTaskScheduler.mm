@interface PDTaskScheduler
- (PDTaskScheduler)init;
- (void)createTaskSchedulerRegistration:(id)registration;
@end

@implementation PDTaskScheduler

- (PDTaskScheduler)init
{
  v12.receiver = self;
  v12.super_class = PDTaskScheduler;
  v2 = [(PDTaskScheduler *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_10010AD7C(v2, @"scheduler");
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (qword_10024D988 != -1)
    {
      dispatch_once(&qword_10024D988, &stru_100203BD8);
    }

    v6 = qword_10024D980;
    v7 = dispatch_queue_create_with_target_V2(v4, v5, v6);
    schedulerQueue = v3->_schedulerQueue;
    v3->_schedulerQueue = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    tasks = v3->_tasks;
    v3->_tasks = v9;
  }

  return v3;
}

- (void)createTaskSchedulerRegistration:(id)registration
{
  registrationCopy = registration;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [registrationCopy isRepeating])
  {
    v5 = +[BGSystemTaskScheduler sharedScheduler];
    identifier = [registrationCopy identifier];
    schedulerQueue = [(PDTaskScheduler *)self schedulerQueue];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10006E488;
    v24 = &unk_100203B90;
    v8 = &v25;
    v25 = registrationCopy;
    v9 = &v21;
  }

  else
  {
    v5 = +[BGSystemTaskScheduler sharedScheduler];
    identifier = [registrationCopy identifier];
    schedulerQueue = [(PDTaskScheduler *)self schedulerQueue];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10006E494;
    v19 = &unk_100203BB8;
    v8 = &v20;
    v20 = registrationCopy;
    v9 = &v16;
  }

  v10 = [v5 registerForTaskWithIdentifier:identifier usingQueue:schedulerQueue launchHandler:{v9, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25}];

  CLSInitLog();
  v11 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    identifier2 = [registrationCopy identifier];
    v14 = identifier2;
    v15 = @"unsuccessful";
    if (v10)
    {
      v15 = @"successful";
    }

    *buf = 138412546;
    v27 = identifier2;
    v28 = 2112;
    v29 = v15;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Setting up task registration for '%@' %@", buf, 0x16u);
  }
}

@end