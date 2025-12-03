@interface DSEntitlementUtilities
+ (BOOL)auditToken:(id *)token hasEntitlement:(id)entitlement;
+ (BOOL)currentProcessHasEntitlement:(id)entitlement;
@end

@implementation DSEntitlementUtilities

+ (BOOL)currentProcessHasEntitlement:(id)entitlement
{
  [entitlement UTF8String];
  v3 = xpc_copy_entitlement_for_self();
  v4 = v3;
  if (v3)
  {
    value = xpc_BOOL_get_value(v3);
  }

  else
  {
    v6 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DSEntitlementUtilities currentProcessHasEntitlement:v6];
    }

    value = 0;
  }

  return value;
}

+ (BOOL)auditToken:(id *)token hasEntitlement:(id)entitlement
{
  [entitlement UTF8String];
  v4 = xpc_copy_entitlement_for_token();
  v5 = v4;
  if (v4)
  {
    value = xpc_BOOL_get_value(v4);
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DSEntitlementUtilities auditToken:v7 hasEntitlement:?];
    }

    value = 0;
  }

  return value;
}

@end