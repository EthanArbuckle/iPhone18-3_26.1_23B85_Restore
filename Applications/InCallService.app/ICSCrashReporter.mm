@interface ICSCrashReporter
+ (void)simulateCrashReportFromPID:(int)a3 withKillCode:(unsigned int)a4 usingReasonWithFormat:(id)a5;
+ (void)simulateCrashReportWithFormat:(id)a3;
+ (void)simulateCrashReportWithReason:(id)a3 pid:(int)a4 code:(unsigned int)a5;
@end

@implementation ICSCrashReporter

+ (void)simulateCrashReportWithReason:(id)a3 pid:(int)a4 code:(unsigned int)a5
{
  v7 = a3;
  v8 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CA17C;
  v10[3] = &unk_100357068;
  v12 = a4;
  v13 = a5;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, v10);
}

+ (void)simulateCrashReportFromPID:(int)a3 withKillCode:(unsigned int)a4 usingReasonWithFormat:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v8 = a5;
  v9 = [[NSString alloc] initWithFormat:v8 arguments:&v10];

  [a1 simulateCrashReportWithReason:v9 pid:v6 code:v5];
}

+ (void)simulateCrashReportWithFormat:(id)a3
{
  v4 = a3;
  v5 = [[NSString alloc] initWithFormat:v4 arguments:&v6];

  [a1 simulateCrashReportWithReason:v5 pid:getpid() code:14593455];
}

@end