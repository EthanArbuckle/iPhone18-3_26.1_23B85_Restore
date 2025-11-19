@interface ABMDiagnosticExtensionLogging
+ (os_log_s)getOSLogHandler;
@end

@implementation ABMDiagnosticExtensionLogging

+ (os_log_s)getOSLogHandler
{
  if (qword_1000157D0 != -1)
  {
    dispatch_once(&qword_1000157D0, &stru_100010448);
  }

  return qword_1000157C8;
}

@end