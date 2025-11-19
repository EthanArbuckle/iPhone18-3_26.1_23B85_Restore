@interface CNSensitiveContentUIEntitlementVerifier
+ (id)log;
- (BOOL)canShowSensitiveContentUI;
- (BOOL)processCanReadCommunicationSafetySettings;
- (BOOL)processHasCommunicationFilterEntitlements;
- (BOOL)processHasScreentimeEntitlements;
- (BOOL)processHasUserSafetyEntitlements;
- (CNSensitiveContentUIEntitlementVerifier)init;
@end

@implementation CNSensitiveContentUIEntitlementVerifier

- (BOOL)canShowSensitiveContentUI
{
  if ([(CNSensitiveContentUIEntitlementVerifier *)self processHasScreentimeEntitlements]&& [(CNSensitiveContentUIEntitlementVerifier *)self processCanReadCommunicationSafetySettings]&& [(CNSensitiveContentUIEntitlementVerifier *)self processHasUserSafetyEntitlements])
  {
    return 1;
  }

  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_199A75000, v4, OS_LOG_TYPE_ERROR, "Unable to show sensitive content UI, process is not correctly entitled", v5, 2u);
  }

  return 0;
}

- (BOOL)processHasUserSafetyEntitlements
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(CNSensitiveContentUIEntitlementVerifier *)self entitlementVerifier];
  v8[0] = @"com.apple.developer.usersafety.client";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 currentProcessHasArrayWithStringValue:@"analysis" forAnyEntitlement:v3 error:0];

  if ((v4 & 1) == 0)
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "Missing user safety entitlements", v7, 2u);
    }
  }

  return v4;
}

- (BOOL)processHasCommunicationFilterEntitlements
{
  v2 = [(CNSensitiveContentUIEntitlementVerifier *)self entitlementVerifier];
  v3 = [v2 currentProcessHasBooleanEntitlement:@"com.apple.private.communicationsfilter" error:0];

  if ((v3 & 1) == 0)
  {
    v4 = [objc_opt_class() log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEBUG, "Missing communication filter entitlements", v6, 2u);
    }
  }

  return v3;
}

- (BOOL)processCanReadCommunicationSafetySettings
{
  v2 = [(CNSensitiveContentUIEntitlementVerifier *)self entitlementVerifier];
  v3 = [v2 currentProcessHasArrayWithStringValue:@"com.apple.communicationSafetySettings" forAnyEntitlement:&unk_1F0D4B928 error:0];

  if ((v3 & 1) == 0)
  {
    v4 = [objc_opt_class() log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEBUG, "Missing shared preference access for communication safety settings", v6, 2u);
    }
  }

  return v3;
}

- (BOOL)processHasScreentimeEntitlements
{
  v3 = [(CNSensitiveContentUIEntitlementVerifier *)self entitlementVerifier];
  v4 = [v3 currentProcessHasBooleanEntitlement:@"com.apple.private.screentime-communication" error:0];

  v5 = [(CNSensitiveContentUIEntitlementVerifier *)self entitlementVerifier];
  v6 = v4 & [v5 currentProcessHasArrayWithStringValue:@"com.apple.ScreenTimeAgent.communication" forAnyEntitlement:&unk_1F0D4B910 error:0];

  if ((v6 & 1) == 0)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEBUG, "Missing screentime entitlements", v9, 2u);
    }
  }

  return v6;
}

- (CNSensitiveContentUIEntitlementVerifier)init
{
  v7.receiver = self;
  v7.super_class = CNSensitiveContentUIEntitlementVerifier;
  v2 = [(CNSensitiveContentUIEntitlementVerifier *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69966E0]);
    entitlementVerifier = v2->_entitlementVerifier;
    v2->_entitlementVerifier = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)log
{
  if (log_cn_once_token_1_21761 != -1)
  {
    dispatch_once(&log_cn_once_token_1_21761, &__block_literal_global_21762);
  }

  v3 = log_cn_once_object_1_21763;

  return v3;
}

uint64_t __46__CNSensitiveContentUIEntitlementVerifier_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNSensitiveContentUIEntitlementVerifier");
  v1 = log_cn_once_object_1_21763;
  log_cn_once_object_1_21763 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end