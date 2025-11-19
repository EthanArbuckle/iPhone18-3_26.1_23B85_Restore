@interface SHLFailedTaskRetryHandler
- (void)retryTask:(id)a3 withContext:(id)a4;
- (void)retryTaskWithTimer:(id)a3;
@end

@implementation SHLFailedTaskRetryHandler

- (void)retryTask:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 outcome];
  v9 = [v8 error];
  v10 = [v9 userInfo];
  v11 = [v10 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v12 = [v11 domain];
  if ([v12 isEqualToString:CKErrorDomain])
  {
    v13 = [v11 code];

    if (v13 == 111)
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
      v35 = v7;
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
      v30 = [v6 identifier];
      v31 = [v7 outcome];
      v32 = [v31 error];
      *buf = 138543874;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      *&buf[22] = 2112;
      v38 = v32;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Retrying <task: %{public}@ %@> immediately <error: %@>", buf, 0x20u);
    }

    v33 = [v7 retryBlock];
    v33[2]();
  }

  else
  {
    if (v21)
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v6 identifier];
      v25 = [v7 outcome];
      v26 = [v25 error];
      *buf = 138544130;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      *&buf[22] = 2048;
      v38 = *&v19;
      LOWORD(v39) = 2112;
      *(&v39 + 2) = v26;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Retrying <task: %{public}@ %@> after %f seconds <error: %@>", buf, 0x2Au);
    }

    v27 = [NSTimer scheduledTimerWithTimeInterval:self target:"retryTaskWithTimer:" selector:v7 userInfo:0 repeats:v19];
  }

LABEL_12:
}

- (void)retryTaskWithTimer:(id)a3
{
  v8 = a3;
  v3 = [v8 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v8 userInfo];
    [v8 invalidate];
    v6 = [v5 retryBlock];

    if (v6)
    {
      v7 = [v5 retryBlock];
      v7[2]();
    }
  }

  else
  {
    [v8 invalidate];
  }
}

@end