@interface MFUserInteractionAssertion
+ (OS_os_log)signpostLog;
+ (id)interactionAssertionWithReason:(id)reason;
+ (id)interactionAssertionWithReason:(id)reason timeout:(double)timeout;
- (MFUserInteractionAssertion)initWithReason:(id)reason timeout:(double)timeout;
- (MFUserInteractionAssertion)initWithReason:(id)reason timeout:(double)timeout application:(id)application;
- (NSString)description;
- (unint64_t)signpostID;
- (void)_invalidateWithState:(int64_t)state;
@end

@implementation MFUserInteractionAssertion

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

+ (OS_os_log)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E86C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD778 != -1)
  {
    dispatch_once(&qword_1006DD778, block);
  }

  v2 = qword_1006DD770;

  return v2;
}

+ (id)interactionAssertionWithReason:(id)reason
{
  v3 = [MFUserInteractionAssertion interactionAssertionWithReason:reason timeout:-978307200.0];

  return v3;
}

+ (id)interactionAssertionWithReason:(id)reason timeout:(double)timeout
{
  reasonCopy = reason;
  v6 = [[MFUserInteractionAssertion alloc] initWithReason:reasonCopy timeout:timeout];

  return v6;
}

- (MFUserInteractionAssertion)initWithReason:(id)reason timeout:(double)timeout
{
  reasonCopy = reason;
  v7 = +[UIApplication sharedApplication];
  v8 = [(MFUserInteractionAssertion *)self initWithReason:reasonCopy timeout:v7 application:timeout];

  return v8;
}

- (MFUserInteractionAssertion)initWithReason:(id)reason timeout:(double)timeout application:(id)application
{
  reasonCopy = reason;
  applicationCopy = application;
  v31.receiver = self;
  v31.super_class = MFUserInteractionAssertion;
  v10 = [(MFUserInteractionAssertion *)&v31 init];
  if (v10)
  {
    v11 = [reasonCopy copy];
    reason = v10->_reason;
    v10->_reason = v11;

    v10->_timeout = timeout;
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v33 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "MFUserInteractionAssertion beginIgnoringInteractionEvents with reason:%{public}@", buf, 0xCu);
    }

    signpostID = [(MFUserInteractionAssertion *)v10 signpostID];
    v15 = +[MFUserInteractionAssertion signpostLog];
    v16 = v15;
    if ((signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 138412290;
      v33 = reasonCopy;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MFUserInteractionAssertion", "Reason=%@", buf, 0xCu);
    }

    v17 = [[EFDeallocInvocationToken alloc] initWithLabel:@"MFUserInteractionAssertion Invalidation Token"];
    v18 = +[EFScheduler mainThreadScheduler];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1002365C0;
    v27[3] = &unk_100656330;
    v28 = applicationCopy;
    v19 = v17;
    v29 = v19;
    v30 = signpostID;
    v20 = [v18 performCancelableBlock:v27];

    if (v20)
    {
      [v19 addInvocable:v20];
    }

    objc_storeStrong(&v10->_invalidationToken, v17);
    if (v10->_timeout != -978307200.0)
    {
      objc_initWeak(buf, v10);
      v21 = +[EFScheduler mainThreadScheduler];
      timeout = v10->_timeout;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100236704;
      v25[3] = &unk_10064C838;
      objc_copyWeak(&v26, buf);
      v23 = [v21 afterDelay:v25 performBlock:timeout];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }
  }

  return v10;
}

- (NSString)description
{
  state = [(MFUserInteractionAssertion *)self state];
  if (state > 2)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_100656350[state];
  }

  [(MFUserInteractionAssertion *)self timeout];
  if (v5 == -978307200.0)
  {
    v7 = @"never";
  }

  else
  {
    [(MFUserInteractionAssertion *)self timeout];
    v7 = [NSString stringWithFormat:@"%.01f", v6];
  }

  v8 = objc_opt_class();
  reason = [(MFUserInteractionAssertion *)self reason];
  v10 = [NSString stringWithFormat:@"<%@: %p> reason='%@' state=%@ timeout=%@", v8, self, reason, v4, v7];

  return v10;
}

- (void)_invalidateWithState:(int64_t)state
{
  invalidationToken = [(MFUserInteractionAssertion *)self invalidationToken];
  if (([invalidationToken isInvoked] & 1) == 0)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(v9, &location);
    v8 = invalidationToken;
    v9[1] = state;
    v6 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v6 performBlock:&v7];

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

@end