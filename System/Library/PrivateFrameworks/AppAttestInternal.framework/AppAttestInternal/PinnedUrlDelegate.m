@interface PinnedUrlDelegate
- (PinnedUrlDelegate)initWithHost:(id)a3;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation PinnedUrlDelegate

- (PinnedUrlDelegate)initWithHost:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PinnedUrlDelegate;
  v6 = [(PinnedUrlDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->m_host, a3);
  }

  return v7;
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_allows_internal_security_policies())
  {
    v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
    if ([v11 BOOLForKey:@"AAADisablePinning"])
    {
      if (AAInternalLogSystem_onceToken_1 != -1)
      {
        [PinnedUrlDelegate URLSession:didReceiveChallenge:completionHandler:];
      }

      v12 = AAInternalLogSystem_log_1;
      if (os_log_type_enabled(AAInternalLogSystem_log_1, OS_LOG_TYPE_DEBUG))
      {
        v13 = 0;
        v14 = 0;
        v15 = 47;
        do
        {
          v16 = &aLibraryCachesC_1[v13];
          if (v15 == 47)
          {
            v14 = &aLibraryCachesC_1[v13];
          }

          v15 = v16[1];
          if (!v16[1])
          {
            break;
          }

          v17 = v13++ >= 0xFFF;
        }

        while (!v17);
        if (v14)
        {
          v18 = v14 + 1;
        }

        else
        {
          v18 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/support/AnonymousAttestation.m";
        }

        *buf = 136315394;
        v38 = v18;
        v39 = 1024;
        v40 = 64;
        _os_log_impl(&dword_226177000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Pinning disabled.", buf, 0x12u);
      }

      v10[2](v10, 1, 0);
      goto LABEL_17;
    }
  }

  v19 = [v9 protectionSpace];
  v20 = [v19 authenticationMethod];
  v21 = [v20 isEqualToString:*MEMORY[0x277CCA720]];

  if (!v21)
  {
    v10[2](v10, 1, 0);
    goto LABEL_40;
  }

  m_host = self->m_host;
  AppleSSLPinned = SecPolicyCreateAppleSSLPinned();
  if (!AppleSSLPinned || (v24 = AppleSSLPinned, [v9 protectionSpace], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "serverTrust"), v25, LODWORD(v25) = SecTrustSetPolicies(v26, v24), CFRelease(v24), v25))
  {
LABEL_39:
    v10[2](v10, 2, 0);
    goto LABEL_40;
  }

  error = 0;
  if (!SecTrustEvaluateWithError(v26, &error))
  {
    if (AAInternalLogSystem_onceToken_1 != -1)
    {
      [PinnedUrlDelegate URLSession:didReceiveChallenge:completionHandler:];
    }

    v27 = AAInternalLogSystem_log_1;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = 0;
      v29 = 0;
      v30 = 47;
      do
      {
        v31 = &aLibraryCachesC_1[v28];
        if (v30 == 47)
        {
          v29 = &aLibraryCachesC_1[v28];
        }

        v30 = v31[1];
        if (!v31[1])
        {
          break;
        }

        v17 = v28++ >= 0xFFF;
      }

      while (!v17);
      if (v29)
      {
        v32 = v29 + 1;
      }

      else
      {
        v32 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/support/AnonymousAttestation.m";
      }

      v33 = CFErrorCopyDescription(error);
      *buf = 136315650;
      v38 = v32;
      v39 = 1024;
      v40 = 91;
      v41 = 2112;
      v42 = v33;
      v34 = v33;
      _os_log_impl(&dword_226177000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Pinning check failed. { error=%@ }", buf, 0x1Cu);
    }

    goto LABEL_39;
  }

  v11 = [MEMORY[0x277CCACF0] credentialForTrust:v26];
  (v10)[2](v10, 0, v11);
LABEL_17:

LABEL_40:
  v35 = *MEMORY[0x277D85DE8];
}

@end