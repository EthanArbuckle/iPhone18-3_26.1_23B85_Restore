@interface AXSSInterDeviceSecurityHelper
- (AXSSInterDeviceSecurityHelper)init;
- (__SecIdentity)_appleIDIdentity;
- (id)_certificateChain;
- (id)securityIdentity;
- (void)_appleIDIdentity;
- (void)_appleIDsDidChange;
- (void)_certificateChain;
- (void)dealloc;
- (void)securityIdentity;
- (void)verifyCertificate:(id)a3 completion:(id)a4;
@end

@implementation AXSSInterDeviceSecurityHelper

- (AXSSInterDeviceSecurityHelper)init
{
  v5.receiver = self;
  v5.super_class = AXSSInterDeviceSecurityHelper;
  v2 = [(AXSSInterDeviceSecurityHelper *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _appleIDsDidChange, @"SFAppleIDIdentityDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SFAppleIDIdentityDidChangeNotification", 0);
  v4.receiver = self;
  v4.super_class = AXSSInterDeviceSecurityHelper;
  [(AXSSInterDeviceSecurityHelper *)&v4 dealloc];
}

- (void)_appleIDsDidChange
{
  v3 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C0E8A000, v3, OS_LOG_TYPE_DEFAULT, "Apple IDs changed", v6, 2u);
  }

  cachedCertificateChain = self->_cachedCertificateChain;
  self->_cachedAppleIDIdentity = 0;
  self->_cachedCertificateChain = 0;

  cachedSecurityIdentity = self->_cachedSecurityIdentity;
  self->_cachedSecurityIdentity = 0;
}

- (__SecIdentity)_appleIDIdentity
{
  result = self->_cachedAppleIDIdentity;
  if (!result)
  {
    v12 = 0;
    v4 = _AppleIDAuthenticationCopyAppleIDs();
    v5 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AXSSInterDeviceSecurityHelper _appleIDIdentity];
    }

    if ([v4 count])
    {
      v6 = [v4 lastObject];
      v7 = _AppleIDCopySecIdentityForAppleIDAccount();
      if (v7)
      {
        v8 = v7;
        v9 = _AppleIDAuthenticationCopyCertificateInfo();
        v10 = [v9 objectForKeyedSubscript:@"CertificateReference"];

        if (v10)
        {
          self->_cachedAppleIDIdentity = v8;
        }

        else
        {
          v11 = AXSSLogForCategory(1);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [(AXSSInterDeviceSecurityHelper *)v9 _appleIDIdentity];
          }
        }
      }

      else
      {
        v9 = AXSSLogForCategory(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(AXSSInterDeviceSecurityHelper *)&v12 _appleIDIdentity];
        }
      }
    }

    else
    {
      v6 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(AXSSInterDeviceSecurityHelper *)&v12 _appleIDIdentity];
      }
    }

    return self->_cachedAppleIDIdentity;
  }

  return result;
}

- (id)_certificateChain
{
  v28[1] = *MEMORY[0x1E69E9840];
  cachedCertificateChain = self->_cachedCertificateChain;
  if (!cachedCertificateChain)
  {
    v4 = [(AXSSInterDeviceSecurityHelper *)self _appleIDIdentity];
    if (v4)
    {
      v5 = v4;
      certificateRef = 0;
      v6 = [MEMORY[0x1E695DF70] array];
      v7 = SecIdentityCopyCertificate(v5, &certificateRef);
      if (!certificateRef || v7)
      {
        v21 = AXSSLogForCategory(1);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [AXSSInterDeviceSecurityHelper _certificateChain];
        }
      }

      else
      {
        trust = 0;
        v28[0] = certificateRef;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
        BasicX509 = SecPolicyCreateBasicX509();
        v10 = SecTrustCreateWithCertificates(v8, BasicX509, &trust);
        if (BasicX509)
        {
          CFRelease(BasicX509);
        }

        if (!trust || v10)
        {
          v22 = AXSSLogForCategory(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [AXSSInterDeviceSecurityHelper _certificateChain];
          }
        }

        else
        {
          error = 0;
          v11 = SecTrustEvaluateWithError(trust, &error);
          if (error || !v11)
          {
            p_super = AXSSLogForCategory(1);
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              [(AXSSInterDeviceSecurityHelper *)&error _certificateChain];
            }
          }

          else
          {
            CertificateCount = SecTrustGetCertificateCount(trust);
            v13 = CertificateCount - 1;
            if (CertificateCount >= 1)
            {
              v14 = CertificateCount;
              for (i = 0; i != v14; ++i)
              {
                if (v13 == i)
                {
                  break;
                }

                v16 = SecTrustCopyCertificateChain(trust);
                v17 = v16;
                if (v16)
                {
                  v18 = [(__CFArray *)v16 objectAtIndex:i];
                  if (v18)
                  {
                    [v6 addObject:v18];
                  }
                }
              }
            }

            if ([v6 count] == 2)
            {
              v19 = v6;
              p_super = &self->_cachedCertificateChain->super;
              self->_cachedCertificateChain = v19;
            }

            else
            {
              p_super = AXSSLogForCategory(1);
              if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
              {
                [AXSSInterDeviceSecurityHelper _certificateChain];
              }
            }
          }

          if (error)
          {
            CFRelease(error);
          }
        }

        if (trust)
        {
          CFRelease(trust);
        }
      }

      if (certificateRef)
      {
        CFRelease(certificateRef);
      }
    }

    cachedCertificateChain = self->_cachedCertificateChain;
  }

  v23 = *MEMORY[0x1E69E9840];

  return cachedCertificateChain;
}

- (id)securityIdentity
{
  v11[1] = *MEMORY[0x1E69E9840];
  cachedSecurityIdentity = self->_cachedSecurityIdentity;
  if (!cachedSecurityIdentity)
  {
    v4 = [(AXSSInterDeviceSecurityHelper *)self _certificateChain];
    if ([v4 count])
    {
      v5 = [(AXSSInterDeviceSecurityHelper *)self _appleIDIdentity];
      if (v5)
      {
        v11[0] = v5;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
        v7 = [v6 arrayByAddingObjectsFromArray:v4];
        v8 = self->_cachedSecurityIdentity;
        self->_cachedSecurityIdentity = v7;
      }

      else
      {
        v6 = AXSSLogForCategory(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [AXSSInterDeviceSecurityHelper securityIdentity];
        }
      }
    }

    cachedSecurityIdentity = self->_cachedSecurityIdentity;
  }

  v9 = *MEMORY[0x1E69E9840];

  return cachedSecurityIdentity;
}

- (void)verifyCertificate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __62__AXSSInterDeviceSecurityHelper_verifyCertificate_completion___block_invoke;
    v13 = &unk_1E81347E0;
    v14 = self;
    v15 = v6;
    SFAppleIDVerifyCertificateChain();
  }

  else
  {
    v8 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C0E8A000, v8, OS_LOG_TYPE_DEFAULT, "No certificate to verify.", v9, 2u);
    }

    v7[2](v7, 0);
  }
}

void __62__AXSSInterDeviceSecurityHelper_verifyCertificate_completion___block_invoke(uint64_t a1, SecTrustRef trust)
{
  v2 = trust;
  if (trust)
  {
    if (SecTrustGetCertificateCount(trust) < 1)
    {
      v2 = 0;
    }

    else
    {
      v4 = SecTrustCopyCertificateChain(v2);
      v5 = v4;
      if (v4)
      {
        [(__CFArray *)v4 firstObject];
      }

      v6 = SFAppleIDCommonNameForCertificate();
      v2 = 0;
      if (v6)
      {
        v7 = SecCopyErrorMessageString(v6, 0);
        v8 = AXSSLogForCategory(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __62__AXSSInterDeviceSecurityHelper_verifyCertificate_completion___block_invoke_cold_1();
        }
      }
    }
  }

  if ([(__SecTrust *)v2 length])
  {
    v9 = [*(a1 + 32) _certificateChain];
    if (![v9 count])
    {
      goto LABEL_29;
    }

    [v9 firstObject];
    v10 = SFAppleIDCommonNameForCertificate();
    v11 = 0;
    if (v10)
    {
      v12 = SecCopyErrorMessageString(v10, 0);
      v13 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __62__AXSSInterDeviceSecurityHelper_verifyCertificate_completion___block_invoke_cold_2();
      }
    }

    if ([v11 length])
    {
      if (([(__SecTrust *)v2 isEqualToString:v11]& 1) != 0)
      {
        goto LABEL_28;
      }

      v14 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __62__AXSSInterDeviceSecurityHelper_verifyCertificate_completion___block_invoke_cold_3();
      }
    }

    else
    {
      v14 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __62__AXSSInterDeviceSecurityHelper_verifyCertificate_completion___block_invoke_cold_4();
      }
    }

LABEL_28:
    goto LABEL_29;
  }

  v9 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __62__AXSSInterDeviceSecurityHelper_verifyCertificate_completion___block_invoke_cold_5();
  }

LABEL_29:

  (*(*(a1 + 40) + 16))();
}

- (void)_appleIDIdentity
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_certificateChain
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)securityIdentity
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __62__AXSSInterDeviceSecurityHelper_verifyCertificate_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __62__AXSSInterDeviceSecurityHelper_verifyCertificate_completion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __62__AXSSInterDeviceSecurityHelper_verifyCertificate_completion___block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end