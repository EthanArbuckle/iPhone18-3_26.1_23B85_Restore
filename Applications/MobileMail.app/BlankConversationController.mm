@interface BlankConversationController
+ (OS_os_log)log;
- (BlankConversationController)init;
- (void)conversationViewDidLoadMessageSuccessfully;
- (void)conversationViewIsBlankWithReason:(int64_t)a3;
- (void)conversationViewWebViewCrashedWithReason:(int64_t)a3 isBackgrounded:(BOOL)a4;
- (void)conversationViewWebViewDidLoadMessage;
- (void)reportMetrics;
@end

@implementation BlankConversationController

- (BlankConversationController)init
{
  v10.receiver = self;
  v10.super_class = BlankConversationController;
  v2 = [(BlankConversationController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(EMCoreAnalyticsCollector);
    analyticsCollector = v2->_analyticsCollector;
    v2->_analyticsCollector = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = objc_alloc_init(NSMutableDictionary);
    blankConversationViewReasons = v2->_blankConversationViewReasons;
    v2->_blankConversationViewReasons = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    webViewCrashReasons = v2->_webViewCrashReasons;
    v2->_webViewCrashReasons = v7;
  }

  return v2;
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048C70;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DCDC8 != -1)
  {
    dispatch_once(&qword_1006DCDC8, block);
  }

  v2 = qword_1006DCDC0;

  return v2;
}

- (void)conversationViewDidLoadMessageSuccessfully
{
  os_unfair_lock_lock(&self->_lock);
  [(BlankConversationController *)self setNumberOfLoadAttempts:[(BlankConversationController *)self numberOfLoadAttempts]+ 1];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)conversationViewIsBlankWithReason:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(BlankConversationController *)self setNumberOfLoadAttempts:[(BlankConversationController *)self numberOfLoadAttempts]+ 1];
  [(BlankConversationController *)self setNumberOfFailedAttempts:[(BlankConversationController *)self numberOfFailedAttempts]+ 1];
  if (self)
  {
    blankConversationViewReasons = self->_blankConversationViewReasons;
  }

  else
  {
    blankConversationViewReasons = 0;
  }

  v6 = blankConversationViewReasons;
  v7 = [NSString stringWithFormat:@"Reason_%ld", a3];
  v8 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v7];
  v9 = v8;
  v10 = &off_100673D60;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 integerValue] + 1);
  [(NSMutableDictionary *)v6 setObject:v12 forKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)conversationViewWebViewDidLoadMessage
{
  os_unfair_lock_lock(&self->_lock);
  [(BlankConversationController *)self setNumberOfWebViewLoads:[(BlankConversationController *)self numberOfWebViewLoads]+ 1];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)conversationViewWebViewCrashedWithReason:(int64_t)a3 isBackgrounded:(BOOL)a4
{
  v4 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(BlankConversationController *)self setNumberOfWebViewLoads:[(BlankConversationController *)self numberOfWebViewLoads]+ 1];
  if (v4)
  {
    [(BlankConversationController *)self setNumberOfBackgroundWebViewCrashes:[(BlankConversationController *)self numberOfBackgroundWebViewCrashes]+ 1];
  }

  else
  {
    [(BlankConversationController *)self setNumberOfForegroundWebViewCrashes:[(BlankConversationController *)self numberOfForegroundWebViewCrashes]+ 1];
  }

  v7 = [NSString stringWithFormat:@"Reason_%ld", a3];
  if (self)
  {
    webViewCrashReasons = self->_webViewCrashReasons;
  }

  else
  {
    webViewCrashReasons = 0;
  }

  v9 = webViewCrashReasons;
  v10 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v7];
  v11 = v10;
  v12 = &off_100673D60;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 integerValue] + 1);
  [(NSMutableDictionary *)v9 setObject:v14 forKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)reportMetrics
{
  sub_1000490F4(self);

  sub_100049170(self);
}

@end