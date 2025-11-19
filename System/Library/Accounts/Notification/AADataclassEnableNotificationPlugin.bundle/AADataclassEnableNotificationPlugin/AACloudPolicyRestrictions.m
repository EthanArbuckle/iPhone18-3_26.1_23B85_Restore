@interface AACloudPolicyRestrictions
+ (BOOL)policyRestrictsDataclass:(id)a3;
+ (id)_managedIcloudPolicyIdentifierForDataclass;
+ (id)_policyRestrictionIdentifierForDataclass:(id)a3;
@end

@implementation AACloudPolicyRestrictions

+ (id)_managedIcloudPolicyIdentifierForDataclass
{
  if (qword_2A17951D0 != -1)
  {
    sub_29C85D168();
  }

  v3 = qword_2A17951C8;

  return v3;
}

+ (id)_policyRestrictionIdentifierForDataclass:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend__managedIcloudPolicyIdentifierForDataclass(AACloudPolicyRestrictions, v4, v5);
  v8 = objc_msgSend_objectForKey_(v6, v7, v3);

  return v8;
}

+ (BOOL)policyRestrictsDataclass:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend__policyRestrictionIdentifierForDataclass_(AACloudPolicyRestrictions, v4, v3);
  v6 = v5;
  if (v5)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v5, @"com.apple.icloud.managed", 0);
    v8 = AppBooleanValue != 0;
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_29C85D17C(v3, AppBooleanValue != 0, v9);
    }
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_29C85D21C(v3, v9);
    }

    v8 = 0;
  }

  return v8;
}

@end