@interface FRPPTContext
+ (id)sharedContext;
- (void)d_logState;
- (void)setRunningPPT:(BOOL)t;
@end

@implementation FRPPTContext

+ (id)sharedContext
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000044D8;
  block[3] = &unk_1000C49B8;
  block[4] = self;
  if (qword_1000E6348 != -1)
  {
    dispatch_once(&qword_1000E6348, block);
  }

  v2 = qword_1000E6350;

  return v2;
}

- (void)d_logState
{
  isRunningPPT = [(FRPPTContext *)self isRunningPPT];
  v4 = FCPPTLog;
  v5 = os_log_type_enabled(FCPPTLog, OS_LOG_TYPE_DEFAULT);
  if (isRunningPPT)
  {
    if (v5)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PPT Reported as Running", &v13, 2u);
    }
  }

  else if (v5)
  {
    runningPPT = self->_runningPPT;
    v7 = v4;
    v8 = [NSNumber numberWithBool:runningPPT];
    v9 = +[UIApplication sharedApplication];
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 launchedToTest]);
    v11 = +[UIApplication sharedApplication];
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isRunningTest]);
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PPT Reported as Not Running. _runningPPT : %@, launchedToTest : %@, isRunningTest : %@", &v13, 0x20u);
  }
}

- (void)setRunningPPT:(BOOL)t
{
  tCopy = t;
  self->_runningPPT = t;
  v4 = +[FCAppleAccount sharedAccount];
  [v4 setRunningPPT:tCopy];
}

@end