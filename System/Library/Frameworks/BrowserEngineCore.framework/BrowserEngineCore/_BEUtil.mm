@interface _BEUtil
+ (const)auditTokenForCurrentProcess;
@end

@implementation _BEUtil

+ (const)auditTokenForCurrentProcess
{
  if (auditTokenForCurrentProcess_onceToken[0] != -1)
  {
    +[_BEUtil auditTokenForCurrentProcess];
  }

  return &auditTokenForCurrentProcess_currentAuditToken;
}

@end