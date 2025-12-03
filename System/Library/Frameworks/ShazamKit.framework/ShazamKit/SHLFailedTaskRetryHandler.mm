@interface SHLFailedTaskRetryHandler
- (void)retryTask:(id)task withContext:(id)context;
- (void)retryTaskWithTimer:(id)timer;
@end

@implementation SHLFailedTaskRetryHandler

- (void)retryTask:(id)task withContext:(id)context
{
  taskCopy = task;
  contextCopy = context;
  outcome = [contextCopy outcome];
  error = [outcome error];
  userInfo = [error userInfo];
  v11 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [v11 domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    code = [v11 code];

    if (code == 111)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v38 = sub_100047444;
      *&v39 = sub_100047454;
      *(&v39 + 1) = 0;
      v14 = +[NSNotificationCenter defaultCenter];
      v15 = CKIdentityUpdateNotification;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10004745C;
      v34[3] = &unk_10007E2A8;
      v35 = contextCopy;
      v36 = buf;
      v16 = [v14 addObserverForName:v15 object:0 queue:0 usingBlock:v34];
      v17 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v16;

      _Block_object_dispose(buf, 8);
      goto LABEL_12;
    }
  }

  else
  {
  }

  [SHLError retrySecondsForError:v11];
  v19 = v18;
  v20 = sub_1000317DC();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v19 <= 0.0)
  {
    if (v21)
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      identifier = [taskCopy identifier];
      outcome2 = [contextCopy outcome];
      error2 = [outcome2 error];
      *buf = 138543874;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = identifier;
      *&buf[22] = 2112;
      v38 = error2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Retrying <task: %{public}@ %@> immediately <error: %@>", buf, 0x20u);
    }

    retryBlock = [contextCopy retryBlock];
    retryBlock[2]();
  }

  else
  {
    if (v21)
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      identifier2 = [taskCopy identifier];
      outcome3 = [contextCopy outcome];
      error3 = [outcome3 error];
      *buf = 138544130;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = identifier2;
      *&buf[22] = 2048;
      v38 = *&v19;
      LOWORD(v39) = 2112;
      *(&v39 + 2) = error3;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Retrying <task: %{public}@ %@> after %f seconds <error: %@>", buf, 0x2Au);
    }

    v27 = [NSTimer scheduledTimerWithTimeInterval:self target:"retryTaskWithTimer:" selector:contextCopy userInfo:0 repeats:v19];
  }

LABEL_12:
}

- (void)retryTaskWithTimer:(id)timer
{
  timerCopy = timer;
  userInfo = [timerCopy userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    userInfo2 = [timerCopy userInfo];
    [timerCopy invalidate];
    retryBlock = [userInfo2 retryBlock];

    if (retryBlock)
    {
      retryBlock2 = [userInfo2 retryBlock];
      retryBlock2[2]();
    }
  }

  else
  {
    [timerCopy invalidate];
  }
}

@end