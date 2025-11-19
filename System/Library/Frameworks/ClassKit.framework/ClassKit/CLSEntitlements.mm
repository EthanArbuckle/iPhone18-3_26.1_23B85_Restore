@interface CLSEntitlements
+ (BOOL)isDashboardAppProcess;
+ (BOOL)isInternalProcess;
+ (BOOL)isPrivateSearchEnabledProcess;
+ (BOOL)isSearchEnabledProcess;
+ (id)allowedEntitlements;
+ (id)entitlementsForCurrentTaskWithError:(id *)a3;
+ (id)entitlementsForNonAppCurrentTaskWithError:(id *)a3;
+ (id)entitlementsWithConnection:(id)a3 error:(id *)a4;
+ (id)entitlementsWithSecTask:(__SecTask *)a3 overrides:(id)a4 error:(id *)a5;
- (BOOL)BOOLValueForEntitlement:(id)a3 error:(id *)a4;
- (BOOL)hasEntitlement:(id)a3;
- (BOOL)isDashboardAPIEnabled;
- (BOOL)isInDevelopmentEnvironment;
- (BOOL)isInternal;
- (BOOL)isPrivateSearchAPIEnabled;
- (BOOL)isPublicClassKitAPIEnabled;
- (BOOL)isRegisterDashboardEnabled;
- (BOOL)isSearchAPIEnabled;
- (BOOL)isUIClient;
- (CLSEntitlements)init;
- (CLSEntitlements)initWithEntitlements:(id)a3;
- (NSString)classKitEnvironment;
- (id)stringValueForEntitlement:(id)a3 error:(id *)a4;
@end

@implementation CLSEntitlements

+ (id)entitlementsForCurrentTaskWithError:(id *)a3
{
  v5 = objc_msgSend_bundleRecordForCurrentProcess(MEMORY[0x277CC1E90], a2, a3);
  v6 = CLSExecutableLinkedOnOrAfter_iOS17_5_macOS_14_5();
  if (v5 && (v6 & 1) != 0)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
    v10 = objc_msgSend_entitlements(v5, v8, v9);
    v13 = objc_msgSend_allowedEntitlements(a1, v11, v12);
    v15 = objc_msgSend_dictionaryOfObjectsForKeys_(v10, v14, v13);

    v16 = [a1 alloc];
    v18 = objc_msgSend_initWithEntitlements_(v16, v17, v15);
  }

  else
  {
    v18 = objc_msgSend_entitlementsForNonAppCurrentTaskWithError_(a1, v7, a3);
  }

  return v18;
}

+ (id)entitlementsForNonAppCurrentTaskWithError:(id *)a3
{
  v5 = SecTaskCreateFromSelf(0);
  if (v5)
  {
    v7 = v5;
    v8 = objc_autoreleasePoolPush();
    v11 = objc_msgSend_cls_appExtensionContainerBundleRecordForCurrentTask(MEMORY[0x277CC1E90], v9, v10);
    v14 = objc_msgSend_entitlements(v11, v12, v13);

    objc_autoreleasePoolPop(v8);
    v17 = objc_msgSend_allowedEntitlements(a1, v15, v16);
    v19 = objc_msgSend_dictionaryOfObjectsForKeys_(v14, v18, v17);

    v21 = objc_msgSend_entitlementsWithSecTask_overrides_error_(a1, v20, v7, v19, a3);
    CFRelease(v7);
  }

  else
  {
    objc_msgSend_cls_assignError_code_description_(MEMORY[0x277CCA9B8], v6, a3, 100, @"Unable to retrieve current task for entitlement lookup.");
    v21 = 0;
  }

  return v21;
}

+ (id)entitlementsWithConnection:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = v6;
  if (v6)
  {
    objc_msgSend_auditToken(v6, v7, v8);
  }

  else
  {
    memset(&v27, 0, sizeof(v27));
  }

  v10 = SecTaskCreateWithAuditToken(0, &v27);
  if (v10)
  {
    v12 = v10;
    v13 = objc_autoreleasePoolPush();
    v15 = objc_msgSend_cls_appExtensionContainerBundleRecordForConnection_(MEMORY[0x277CC1E90], v14, v9);
    v18 = objc_msgSend_entitlements(v15, v16, v17);

    objc_autoreleasePoolPop(v13);
    v21 = objc_msgSend_allowedEntitlements(a1, v19, v20);
    v23 = objc_msgSend_dictionaryOfObjectsForKeys_(v18, v22, v21);

    v25 = objc_msgSend_entitlementsWithSecTask_overrides_error_(a1, v24, v12, v23, a4);
    CFRelease(v12);
  }

  else
  {
    objc_msgSend_cls_assignError_code_description_(MEMORY[0x277CCA9B8], v11, a4, 100, @"Unable to retrieve connection task for entitlement lookup.");
    v25 = 0;
  }

  return v25;
}

+ (id)entitlementsWithSecTask:(__SecTask *)a3 overrides:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a4;
  error = 0;
  v11 = objc_msgSend_allowedEntitlements(a1, v9, v10);
  v14 = objc_msgSend_allObjects(v11, v12, v13);

  v15 = SecTaskCopyValuesForEntitlements(a3, v14, &error);
  v18 = objc_msgSend_mutableCopy(v15, v16, v17);

  v20 = error;
  if (v18)
  {
    v36 = error;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = v14;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v37, v42, 16);
    if (v23)
    {
      v25 = v23;
      v26 = *v38;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v37 + 1) + 8 * i);
          v30 = objc_msgSend_objectForKeyedSubscript_(v8, v24, v28);
          if (v30)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v18, v29, v30, v28);
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v37, v42, 16);
      }

      while (v25);
    }

    v31 = [a1 alloc];
    v33 = objc_msgSend_initWithEntitlements_(v31, v32, v18);
    v20 = v36;
  }

  else
  {
    objc_msgSend_cls_assignError_fromError_(MEMORY[0x277CCA9B8], v19, a5, error);
    v33 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)allowedEntitlements
{
  v8[9] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v8[0] = @"com.apple.private.ClassKit.register-dashboard";
  v8[1] = @"com.apple.private.ClassKit.dashboard";
  v8[2] = @"com.apple.private.ClassKit.search";
  v8[3] = @"com.apple.private.contacts";
  v8[4] = @"com.apple.private.contactsui";
  v8[5] = @"application-identifier";
  v8[6] = @"com.apple.private.ClassKit.internal";
  v8[7] = @"com.apple.developer.ClassKit-environment";
  v8[8] = @"com.apple.ClassKitUI.client";
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v8, 9);
  v5 = objc_msgSend_setWithArray_(v2, v4, v3);

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (BOOL)isDashboardAppProcess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FAAA4C;
  block[3] = &unk_278A17960;
  block[4] = a1;
  if (qword_280B2A388 != -1)
  {
    dispatch_once(&qword_280B2A388, block);
  }

  return byte_280B2A380;
}

+ (BOOL)isInternalProcess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FAAC24;
  block[3] = &unk_278A17960;
  block[4] = a1;
  if (qword_280B2A390 != -1)
  {
    dispatch_once(&qword_280B2A390, block);
  }

  return byte_280B2A381;
}

+ (BOOL)isSearchEnabledProcess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FAAE00;
  block[3] = &unk_278A17960;
  block[4] = a1;
  if (qword_280B2A398 != -1)
  {
    dispatch_once(&qword_280B2A398, block);
  }

  return byte_280B2A382;
}

+ (BOOL)isPrivateSearchEnabledProcess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FAB030;
  block[3] = &unk_278A17960;
  block[4] = a1;
  if (qword_280B2A3A0 != -1)
  {
    dispatch_once(&qword_280B2A3A0, block);
  }

  return byte_280B2A383;
}

- (CLSEntitlements)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v8, @"The method [%@ %@] is not available.", v6, v7);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v3, v10, v4, v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (CLSEntitlements)initWithEntitlements:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CLSEntitlements;
  v5 = [(CLSEntitlements *)&v28 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = objc_opt_class();
    v10 = objc_msgSend_allowedEntitlements(v7, v8, v9);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v29, 16);
    if (v12)
    {
      v14 = v12;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v19 = objc_msgSend_objectForKeyedSubscript_(v4, v13, v17);
          if (v19)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v6, v18, v19, v17);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v24, v29, 16);
      }

      while (v14);
    }

    objc_storeStrong(&v5->_entitlements, v6);
    v21 = objc_msgSend_objectForKeyedSubscript_(v4, v20, @"application-identifier");
    if (v21)
    {
      CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSString)classKitEnvironment
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v2 = objc_msgSend_stringValueForEntitlement_error_(self, a2, @"com.apple.developer.ClassKit-environment", &v14);
  v4 = v14;
  if (v4)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v5 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = @"com.apple.developer.ClassKit-environment";
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&dword_236F71000, v5, OS_LOG_TYPE_INFO, "Failed to read %@ entitelment: %{public}@", buf, 0x16u);
    }
  }

  v6 = MEMORY[0x277CBEB98];
  v15[0] = @"development";
  v15[1] = @"production";
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v3, v15, 2);
  v9 = objc_msgSend_setWithArray_(v6, v8, v7);

  if (v2 && objc_msgSend_containsObject_(v9, v10, v2))
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)isPublicClassKitAPIEnabled
{
  v3 = objc_msgSend_classKitEnvironment(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isInternal
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = objc_msgSend_BOOLValueForEntitlement_error_(self, a2, @"com.apple.private.ClassKit.internal", &v7);
  v3 = v7;
  if (v3)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = @"com.apple.private.ClassKit.internal";
      _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)isUIClient
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = objc_msgSend_BOOLValueForEntitlement_error_(self, a2, @"com.apple.ClassKitUI.client", &v7);
  v3 = v7;
  if (v3)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = @"com.apple.ClassKitUI.client";
      _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)isDashboardAPIEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = objc_msgSend_BOOLValueForEntitlement_error_(self, a2, @"com.apple.private.ClassKit.dashboard", &v7);
  v3 = v7;
  if (v3)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = @"com.apple.private.ClassKit.dashboard";
      _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)isRegisterDashboardEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = objc_msgSend_BOOLValueForEntitlement_error_(self, a2, @"com.apple.private.ClassKit.register-dashboard", &v7);
  v3 = v7;
  if (v3)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = @"com.apple.private.ClassKit.register-dashboard";
      _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)isSearchAPIEnabled
{
  v18 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isPrivateSearchAPIEnabled(self, a2, v2))
  {
    v5 = 1;
  }

  else
  {
    v15 = 0;
    v6 = objc_msgSend_BOOLValueForEntitlement_error_(self, v4, @"com.apple.private.contacts", &v15);
    v7 = v15;
    v9 = v7;
    if (v6)
    {
      v5 = 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v14 = v7;
      v5 = objc_msgSend_BOOLValueForEntitlement_error_(self, v8, @"com.apple.private.contactsui", &v14);
      v10 = v14;

      v9 = v10;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v11 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = @"searchAPI";
      _os_log_impl(&dword_236F71000, v11, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
    }
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isPrivateSearchAPIEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = objc_msgSend_BOOLValueForEntitlement_error_(self, a2, @"com.apple.private.ClassKit.search", &v7);
  v3 = v7;
  if (v3)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = @"searchAPI";
      _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)hasEntitlement:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend_entitlements(self, v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v4);
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isInDevelopmentEnvironment
{
  v6 = objc_msgSend_classKitEnvironment(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_classKitEnvironment(self, v4, v5);
    isEqualToString = objc_msgSend_isEqualToString_(@"development", v8, v7);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (BOOL)BOOLValueForEntitlement:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (objc_msgSend_hasEntitlement_(self, v7, v6))
  {
    v10 = objc_msgSend_entitlements(self, v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v6);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = objc_msgSend_BOOLValue(v12, v13, v14);
    }

    else
    {
      objc_msgSend_cls_assignError_code_format_(MEMORY[0x277CCA9B8], v13, a4, 4, @"Expected a BOOL value for entitlement: %@", v6);
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)stringValueForEntitlement:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (objc_msgSend_hasEntitlement_(self, v7, v6))
  {
    v10 = objc_msgSend_entitlements(self, v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v6);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v12;
    }

    else
    {
      objc_msgSend_cls_assignError_code_format_(MEMORY[0x277CCA9B8], v13, a4, 4, @"Expected a string value for entitlement: %@", v6);
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end