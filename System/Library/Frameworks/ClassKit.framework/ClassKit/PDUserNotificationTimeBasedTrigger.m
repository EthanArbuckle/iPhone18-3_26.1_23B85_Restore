@interface PDUserNotificationTimeBasedTrigger
- (PDUserNotificationTimeBasedTrigger)initWithDatabase:(id)a3;
- (id)defaultRecurringTriggerDateComponents;
- (id)nextTriggerDateFromReferenceDate:(id)a3;
- (void)checkForTriggerAtDate:(id)a3;
- (void)checkTriggerNow;
- (void)resetTrigger;
- (void)scheduleCheckTimerForNextTriggerTime;
- (void)scheduleCheckTimerForTimeInterval:(double)a3;
- (void)setRecurringTriggerDateComponents:(id)a3;
@end

@implementation PDUserNotificationTimeBasedTrigger

- (PDUserNotificationTimeBasedTrigger)initWithDatabase:(id)a3
{
  v11.receiver = self;
  v11.super_class = PDUserNotificationTimeBasedTrigger;
  v3 = [(PDUserNotificationTrigger *)&v11 initWithDatabase:a3];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.progressd.timeBasedTriggerQ", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = +[NSCalendar currentCalendar];
    calendar = v3->_calendar;
    v3->_calendar = v6;

    v8 = [(PDUserNotificationTimeBasedTrigger *)v3 defaultRecurringTriggerDateComponents];
    recurringTriggerDateComponents = v3->_recurringTriggerDateComponents;
    v3->_recurringTriggerDateComponents = v8;
  }

  return v3;
}

- (void)scheduleCheckTimerForTimeInterval:(double)a3
{
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100144A7C;
  v12[3] = &unk_100203000;
  objc_copyWeak(&v13, &location);
  v5 = objc_retainBlock(v12);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [NSString stringWithFormat:@"com.apple.progressd.task.%@", v7];

  v9 = [[PDTaskSchedulerBlockTask alloc] initWithIdentifier:v8 queue:self->_queue block:v5];
  [(PDTaskSchedulerBlockTask *)v9 setDelay:a3];
  [(PDTaskSchedulerBlockTask *)v9 setGracePeriod:60];
  [(PDTaskSchedulerBlockTask *)v9 setRepeating:0];
  [(PDTaskSchedulerBlockTask *)v9 setRequiredNetworkState:0];
  v10 = sub_10006DCEC();
  sub_10006DEB8(v10, v8);

  v11 = sub_10006DCEC();
  sub_10006E4A0(v11, v9);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)scheduleCheckTimerForNextTriggerTime
{
  v3 = +[NSDate date];
  v4 = [(PDUserNotificationTimeBasedTrigger *)self nextTriggerDateFromReferenceDate:v3];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5;
  CLSInitLog();
  v7 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [NSNumber numberWithDouble:round(v6)];
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PDUserNotificationTimeBasedTrigger.scheduleCheckTimerForNextTriggerTime. Schedule timer for %@ %@", &v10, 0x16u);
  }

  [(PDUserNotificationTimeBasedTrigger *)self scheduleCheckTimerForTimeInterval:v6];
}

- (id)nextTriggerDateFromReferenceDate:(id)a3
{
  CLSInitLog();
  v3 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "PDUserNotificationTimeBasedTrigger.nextTriggerDateFromReferenceDate. Subclass must override.", v6, 2u);
  }

  v4 = +[NSDate distantFuture];

  return v4;
}

- (id)defaultRecurringTriggerDateComponents
{
  CLSInitLog();
  v2 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "PDUserNotificationTimeBasedTrigger.defaultRecurringTriggerDateComponents. Subclass must override.", v5, 2u);
  }

  v3 = objc_alloc_init(NSDateComponents);
  [v3 setHour:0];
  [v3 setMinute:0];
  [v3 setSecond:0];

  return v3;
}

- (void)checkTriggerNow
{
  CLSInitLog();
  v3 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    *v7 = 138412290;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ checkForTriggerNow", v7, 0xCu);
  }

  v6 = +[NSDate date];
  [(PDUserNotificationTimeBasedTrigger *)self checkForTriggerAtDate:v6];

  [(PDUserNotificationTimeBasedTrigger *)self scheduleCheckTimerForNextTriggerTime];
}

- (void)resetTrigger
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = [NSString stringWithFormat:@"com.apple.progressd.task.%@", v3];

  v4 = sub_10006DCEC();
  sub_10006DEB8(v4, v5);
}

- (void)checkForTriggerAtDate:(id)a3
{
  CLSInitLog();
  v3 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "PDUserNotificationTimeBasedTrigger.checkForTriggerAtDate. Subclass should override.", v4, 2u);
  }
}

- (void)setRecurringTriggerDateComponents:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_recurringTriggerDateComponents, a3);
    [(PDUserNotificationTimeBasedTrigger *)self checkTriggerNow];
    v5 = v6;
  }
}

@end