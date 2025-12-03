@interface ICSCrashReporter
+ (void)simulateCrashReportFromPID:(int)d withKillCode:(unsigned int)code usingReasonWithFormat:(id)format;
+ (void)simulateCrashReportWithFormat:(id)format;
+ (void)simulateCrashReportWithReason:(id)reason pid:(int)pid code:(unsigned int)code;
@end

@implementation ICSCrashReporter

+ (void)simulateCrashReportWithReason:(id)reason pid:(int)pid code:(unsigned int)code
{
  reasonCopy = reason;
  v8 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CA17C;
  v10[3] = &unk_100357068;
  pidCopy = pid;
  codeCopy = code;
  v11 = reasonCopy;
  v9 = reasonCopy;
  dispatch_async(v8, v10);
}

+ (void)simulateCrashReportFromPID:(int)d withKillCode:(unsigned int)code usingReasonWithFormat:(id)format
{
  v5 = *&code;
  v6 = *&d;
  formatCopy = format;
  v9 = [[NSString alloc] initWithFormat:formatCopy arguments:&v10];

  [self simulateCrashReportWithReason:v9 pid:v6 code:v5];
}

+ (void)simulateCrashReportWithFormat:(id)format
{
  formatCopy = format;
  v5 = [[NSString alloc] initWithFormat:formatCopy arguments:&v6];

  [self simulateCrashReportWithReason:v5 pid:getpid() code:14593455];
}

@end