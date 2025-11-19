@interface ABMDiagnosticExtensionLogging
+ (os_log_s)getOSLogHandler;
@end

@implementation ABMDiagnosticExtensionLogging

+ (os_log_s)getOSLogHandler
{
  if (qword_100008888 != -1)
  {
    dispatch_once(&qword_100008888, &stru_100004170);
  }

  return qword_100008880;
}

@end