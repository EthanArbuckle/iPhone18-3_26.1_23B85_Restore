@interface ATTrackingManager
+ (ATTrackingManagerAuthorizationStatus)trackingAuthorizationStatus;
+ (BOOL)_applicationHasDisqualifyingEntitlement;
+ (BOOL)_isCrossAppTrackingAllowed;
+ (BOOL)_restrictionProfileInstalled;
+ (BOOL)_userAllowedToChangeSettings;
+ (BOOL)applicationStateActive;
+ (BOOL)isApplicationExtension;
+ (id)_TCCServer;
+ (unint64_t)_performTCCPreflightRequest;
+ (unint64_t)_trackingAuthorizationStatus;
+ (void)_performTCCAccessRequest:(id)request;
+ (void)requestTrackingAuthorizationWithCompletionHandler:(void *)completion;
@end

@implementation ATTrackingManager

+ (BOOL)_applicationHasDisqualifyingEntitlement
{
  if (_applicationHasDisqualifyingEntitlement_once != -1)
  {
    +[ATTrackingManager _applicationHasDisqualifyingEntitlement];
  }

  return _applicationHasDisqualifyingEntitlement_isDimSumApp;
}

void __60__ATTrackingManager__applicationHasDisqualifyingEntitlement__block_invoke()
{
  Default = CFAllocatorGetDefault();
  v1 = SecTaskCreateFromSelf(Default);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.security.on-demand-install-capable", 0);
    if (v3)
    {
      v4 = v3;
      _applicationHasDisqualifyingEntitlement_isDimSumApp = CFBooleanGetValue(v3) != 0;
      CFRelease(v4);
    }

    CFRelease(v2);
  }
}

+ (BOOL)_restrictionProfileInstalled
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25F40]];

  return v3;
}

+ (BOOL)_userAllowedToChangeSettings
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  isSharedIPad = [mEMORY[0x277D77BF8] isSharedIPad];

  if (isSharedIPad)
  {
    return 0;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25F28]] == 1;

  return v4;
}

+ (BOOL)_isCrossAppTrackingAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25F40]] != 1;

  return v3;
}

+ (id)_TCCServer
{
  if (_TCCServer_onceToken != -1)
  {
    +[ATTrackingManager _TCCServer];
  }

  v3 = _TCCServer_server;

  return v3;
}

uint64_t __31__ATTrackingManager__TCCServer__block_invoke()
{
  _TCCServer_server = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

+ (unint64_t)_performTCCPreflightRequest
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = objc_opt_class();
    v3 = *(&buf + 4);
    _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Performing TCC Access Preflight Request.", &buf, 0xCu);
  }

  _TCCServer = [self _TCCServer];
  v5 = *MEMORY[0x277D6C238];
  v6 = tcc_service_singleton_for_CF_name();
  v7 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  v8 = tcc_credential_singleton_for_self();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x2020000000;
  v16 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__ATTrackingManager__performTCCPreflightRequest__block_invoke;
  v13[3] = &unk_278A07070;
  v13[4] = &buf;
  v13[5] = self;
  v9 = MEMORY[0x2383B6A10](v13);
  tcc_server_message_request_authorization();
  v10 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void __48__ATTrackingManager__performTCCPreflightRequest__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!v5 || a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v9 = 138412290;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Received error invoking TCC preflight request.", &v9, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = tcc_authorization_record_get_authorization_right();
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_performTCCAccessRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = objc_opt_class();
    v5 = v18;
    _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Performing TCC Access Request.", buf, 0xCu);
  }

  _TCCServer = [self _TCCServer];
  v7 = *MEMORY[0x277D6C238];
  v8 = tcc_service_singleton_for_CF_name();
  v9 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  v10 = tcc_credential_singleton_for_self();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__ATTrackingManager__performTCCAccessRequest___block_invoke;
  v14[3] = &unk_278A07098;
  v15 = requestCopy;
  selfCopy = self;
  v11 = requestCopy;
  v12 = MEMORY[0x2383B6A10](v14);
  tcc_server_message_request_authorization();

  v13 = *MEMORY[0x277D85DE8];
}

void __46__ATTrackingManager__performTCCAccessRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!v5 || a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v10 = 138412290;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Received error invoking TCC access request.", &v10, 0xCu);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 1);
  }

  else
  {
    authorization_right = tcc_authorization_record_get_authorization_right();
    (*(*(a1 + 32) + 16))(*(a1 + 32), authorization_right);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_trackingAuthorizationStatus
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _restrictionProfileInstalled = [selfCopy _restrictionProfileInstalled];
  if (_restrictionProfileInstalled & 1 | (([selfCopy _userAllowedToChangeSettings] & 1) == 0) || (objc_msgSend(selfCopy, "_applicationHasDisqualifyingEntitlement") & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    _performTCCPreflightRequest = [selfCopy _performTCCPreflightRequest];
    if (_performTCCPreflightRequest)
    {
      if (_performTCCPreflightRequest == 2)
      {
        v4 = 3;
      }

      else if (_performTCCPreflightRequest == 1)
      {
        if ([selfCopy _isCrossAppTrackingAllowed])
        {
          v4 = 0;
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  objc_sync_exit(selfCopy);

  return v4;
}

+ (ATTrackingManagerAuthorizationStatus)trackingAuthorizationStatus
{
  v26 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = objc_opt_class();
    v3 = *&buf[4];
    _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] trackingAuthorizationStatus API call invoked.", buf, 0xCu);
  }

  ++kRateLimitCounter;
  Current = CFAbsoluteTimeGetCurrent();
  if (kRateLimitCounter >= 6 && ((v5 = Current - *&_lastTrackingAuthTimestamp, *&_lastTrackingAuthTimestamp != 0.0) ? (v6 = v5 < 1.0) : (v6 = 0), v6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = _lastAuthorizationStatus;
      v8 = v7;
      _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Call to trackingAuthorizationStatus eligible for rate limiting. Returning %lu", buf, 0x16u);
    }

    v9 = _lastAuthorizationStatus;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v25 = 0;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    _trackingAuthorizationStatus = [selfCopy _trackingAuthorizationStatus];
    *(*&buf[8] + 24) = _trackingAuthorizationStatus;
    objc_sync_exit(selfCopy);

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__ATTrackingManager_trackingAuthorizationStatus__block_invoke;
    v19[3] = &unk_278A070C0;
    v19[4] = buf;
    v19[5] = selfCopy;
    if (trackingAuthorizationStatus_onceToken != -1)
    {
      dispatch_once(&trackingAuthorizationStatus_onceToken, v19);
    }

    _lastTrackingAuthTimestamp = CFAbsoluteTimeGetCurrent();
    _lastAuthorizationStatus = *(*&buf[8] + 24);
    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = *(*&buf[8] + 24);
      *v20 = 138412546;
      v21 = v14;
      v22 = 2048;
      v23 = v15;
      v16 = v14;
      _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Returning from trackingAuthorizationStatus - %lu", v20, 0x16u);
    }

    v9 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)applicationStateActive
{
  if (applicationStateActive_once != -1)
  {
    +[ATTrackingManager applicationStateActive];
  }

  result = applicationStateActive_application;
  if (applicationStateActive_application)
  {
    return [applicationStateActive_application performSelector:applicationStateActive_applicationStateSelector] == 0;
  }

  return result;
}

void __43__ATTrackingManager_applicationStateActive__block_invoke()
{
  v0 = NSClassFromString(&cfstr_Uiapplication.isa);
  v1 = NSSelectorFromString(&cfstr_Sharedapplicat.isa);
  applicationStateActive_applicationStateSelector = NSSelectorFromString(&cfstr_Applicationsta.isa);
  if (objc_opt_respondsToSelector())
  {
    obj = [(objc_class *)v0 performSelector:v1];
    if (objc_opt_respondsToSelector())
    {
      objc_storeStrong(&applicationStateActive_application, obj);
    }
  }
}

+ (BOOL)isApplicationExtension
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundlePath = [mainBundle bundlePath];
  v4 = [bundlePath hasSuffix:@".appex"];

  return v4;
}

+ (void)requestTrackingAuthorizationWithCompletionHandler:(void *)completion
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = objc_opt_class();
    v5 = v37;
    _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler API call invoked.", buf, 0xCu);
  }

  if (v4)
  {
    ++requestRateLimitCounter;
    Current = CFAbsoluteTimeGetCurrent();
    if (requestRateLimitCounter >= 6 && ((Current = Current - *&_lastRequestTrackingAuthTimestamp, *&_lastRequestTrackingAuthTimestamp != 0.0) ? (v7 = Current < 1.0) : (v7 = 0), v7))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        *buf = 138412546;
        v37 = v8;
        v38 = 2048;
        v39 = _lastAuthorizationStatus;
        v9 = v8;
        _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Call to requestTrackingAuthorizationWithCompletionHandler eligible for rate limiting. Returning %lu", buf, 0x16u);
      }

      v4[2](v4, _lastAuthorizationStatus);
    }

    else
    {
      _restrictionProfileInstalled = [self _restrictionProfileInstalled];
      _userAllowedToChangeSettings = [self _userAllowedToChangeSettings];
      if (_restrictionProfileInstalled)
      {
        [self _sendRequestTrackingAnalytic:1 prompted:0 deniedReason:2];
        _lastRequestTrackingAuthTimestamp = CFAbsoluteTimeGetCurrent();
        _lastAuthorizationStatus = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v14 = objc_opt_class();
          *buf = 138412290;
          v37 = v14;
          v15 = v14;
          _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler returning - Restricted due to profile.", buf, 0xCu);
        }

LABEL_26:
        v4[2](v4, 1);
        goto LABEL_27;
      }

      if ((_userAllowedToChangeSettings & 1) == 0)
      {
        [self _sendRequestTrackingAnalytic:1 prompted:0 deniedReason:3];
        _lastRequestTrackingAuthTimestamp = CFAbsoluteTimeGetCurrent();
        _lastAuthorizationStatus = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          *buf = 138412290;
          v37 = v18;
          v19 = v18;
          _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler returning - Restricted.", buf, 0xCu);
        }

        goto LABEL_26;
      }

      if ([self _applicationHasDisqualifyingEntitlement])
      {
        [self _sendRequestTrackingAnalytic:1 prompted:0 deniedReason:4];
        _lastRequestTrackingAuthTimestamp = CFAbsoluteTimeGetCurrent();
        _lastAuthorizationStatus = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_opt_class();
          *buf = 138412290;
          v37 = v16;
          v17 = v16;
          _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler returning - Restricted due to permission.", buf, 0xCu);
        }

        goto LABEL_26;
      }

      _performTCCPreflightRequest = [self _performTCCPreflightRequest];
      if (_performTCCPreflightRequest != 2)
      {
        if (_performTCCPreflightRequest == 1)
        {
          if ([self _isCrossAppTrackingAllowed])
          {
            applicationStateActive = [self applicationStateActive];
            if ([self isApplicationExtension] & 1 | ((applicationStateActive & 1) == 0))
            {
              selfCopy = self;
              objc_sync_enter(selfCopy);
              _trackingAuthorizationStatus = [selfCopy _trackingAuthorizationStatus];
              objc_sync_exit(selfCopy);

              [selfCopy _sendRequestTrackingAnalytic:_trackingAuthorizationStatus prompted:0 deniedReason:0];
              _lastRequestTrackingAuthTimestamp = CFAbsoluteTimeGetCurrent();
              _lastAuthorizationStatus = _trackingAuthorizationStatus;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v25 = objc_opt_class();
                *buf = 138412546;
                v37 = v25;
                v38 = 2048;
                v39 = _trackingAuthorizationStatus;
                v26 = v25;
                _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler returning %lu due to backgrounded app.", buf, 0x16u);
              }

              v4[2](v4, _trackingAuthorizationStatus);
            }

            else
            {
              v33[0] = MEMORY[0x277D85DD0];
              v33[1] = 3221225472;
              v33[2] = __71__ATTrackingManager_requestTrackingAuthorizationWithCompletionHandler___block_invoke;
              v33[3] = &unk_278A070E8;
              selfCopy2 = self;
              v34 = v4;
              [self _performTCCAccessRequest:v33];
            }

            goto LABEL_27;
          }

          [self _sendRequestTrackingAnalytic:2 prompted:0 deniedReason:1];
          _lastRequestTrackingAuthTimestamp = CFAbsoluteTimeGetCurrent();
          _lastAuthorizationStatus = 2;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v31 = objc_opt_class();
            *buf = 138412290;
            v37 = v31;
            v32 = v31;
            _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler returning - ATT Denied due to tracking toggle.", buf, 0xCu);
          }
        }

        else
        {
          [self _sendRequestTrackingAnalytic:2 prompted:0 deniedReason:1];
          _lastRequestTrackingAuthTimestamp = CFAbsoluteTimeGetCurrent();
          _lastAuthorizationStatus = 2;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v29 = objc_opt_class();
            *buf = 138412290;
            v37 = v29;
            v30 = v29;
            _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler returning Denied due to consent.", buf, 0xCu);
          }
        }

        v4[2](v4, 2);
        goto LABEL_27;
      }

      [self _sendRequestTrackingAnalytic:3 prompted:0 deniedReason:0];
      _lastRequestTrackingAuthTimestamp = CFAbsoluteTimeGetCurrent();
      _lastAuthorizationStatus = 3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        *buf = 138412290;
        v37 = v27;
        v28 = v27;
        _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler returning Authorized due to consent.", buf, 0xCu);
      }

      v4[2](v4, 3);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    *buf = 138412290;
    v37 = v10;
    v11 = v10;
    _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler API call failed due to missing completion.", buf, 0xCu);
  }

LABEL_27:

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __71__ATTrackingManager_requestTrackingAuthorizationWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (a2)
  {
    if (a2 == 2)
    {
      v4 = 3;
      [v3 _sendRequestTrackingAnalytic:3 prompted:1 deniedReason:0];
      _lastRequestTrackingAuthTimestamp = CFAbsoluteTimeGetCurrent();
      _lastAuthorizationStatus = 3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v13 = 138412290;
        v14 = objc_opt_class();
        v6 = v14;
        _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler returning - ATT Authorized.", &v13, 0xCu);

        v4 = 3;
      }
    }

    else
    {
      [v3 _sendRequestTrackingAnalytic:0 prompted:1 deniedReason:0];
      _lastRequestTrackingAuthTimestamp = CFAbsoluteTimeGetCurrent();
      _lastAuthorizationStatus = 0;
      v4 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v13 = 138412290;
        v14 = objc_opt_class();
        v10 = v14;
        _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler returning - ATT not determined.", &v13, 0xCu);

        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 2;
    [v3 _sendRequestTrackingAnalytic:2 prompted:1 deniedReason:1];
    _lastRequestTrackingAuthTimestamp = CFAbsoluteTimeGetCurrent();
    _lastAuthorizationStatus = 2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v13 = 138412290;
      v14 = objc_opt_class();
      v8 = v14;
      _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] requestTrackingAuthorizationWithCompletionHandler returning - ATT Denied due to consent.", &v13, 0xCu);

      v4 = 2;
    }
  }

  result = (*(*(a1 + 32) + 16))(*(a1 + 32), v4);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

@end