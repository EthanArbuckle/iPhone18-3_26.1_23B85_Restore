@interface NSXPCConnectionImportInfo
@end

@implementation NSXPCConnectionImportInfo

void *__62___NSXPCConnectionImportInfo__valueForEntitlement_auditToken___block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Security.framework/Security", 256);
  if (result)
  {
    v1 = result;
    _MergedGlobals_156 = dlsym(result, "SecTaskCreateWithAuditToken");
    result = dlsym(v1, "SecTaskCopyValueForEntitlement");
    off_1ED440308 = result;
  }

  return result;
}

@end