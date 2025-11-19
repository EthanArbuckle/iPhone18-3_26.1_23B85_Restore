@interface AAFCertificateTrustValidator
- (BOOL)_checkPinningPolicy:(id)a3 type:(unint64_t)a4;
- (BOOL)_trySSLPinning:(id)a3;
- (__SecPolicy)_policyForType:(unint64_t)a3 host:(id)a4;
- (int64_t)validateCertificateTrustWithChallenge:(id)a3 type:(unint64_t)a4;
@end

@implementation AAFCertificateTrustValidator

- (int64_t)validateCertificateTrustWithChallenge:(id)a3 type:(unint64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [a3 protectionSpace];
  v7 = [v6 authenticationMethod];
  v8 = [v7 isEqualToString:*MEMORY[0x1E696A968]];

  v9 = _AAFLogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    LOWORD(v17) = 0;
    v11 = "Unsupported authentication method detected, proceed with default handling.";
LABEL_9:
    v12 = v9;
    v13 = 2;
    goto LABEL_10;
  }

  if (v10)
  {
    v17 = 134217984;
    v18 = a4;
    _os_log_impl(&dword_1C8644000, v9, OS_LOG_TYPE_DEFAULT, "Validating certificate trust for type %lu.", &v17, 0xCu);
  }

  if ([(AAFCertificateTrustValidator *)self _checkPinningPolicy:v6 type:a4])
  {
    v9 = _AAFLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = a4;
      v11 = "Certificate type %lu is trusted.";
      v12 = v9;
      v13 = 12;
LABEL_10:
      _os_log_impl(&dword_1C8644000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
    }

LABEL_11:
    v14 = 1;
    goto LABEL_12;
  }

  if (a4 && [(AAFCertificateTrustValidator *)self _trySSLPinning:v6])
  {
    v9 = _AAFLogSystem();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v17) = 0;
    v11 = "SSL Certificate is trusted.";
    goto LABEL_9;
  }

  v9 = _AAFLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    v14 = 2;
    _os_log_impl(&dword_1C8644000, v9, OS_LOG_TYPE_DEFAULT, "Server cert validity check failed!", &v17, 2u);
  }

  else
  {
    v14 = 2;
  }

LABEL_12:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_checkPinningPolicy:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 serverTrust];
  v8 = [v6 host];

  v9 = [(AAFCertificateTrustValidator *)self _policyForType:a4 host:v8];
  if (!v9)
  {
    v14 = _AAFLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AAFCertificateTrustValidator _checkPinningPolicy:v14 type:?];
    }

    goto LABEL_9;
  }

  v10 = v9;
  v11 = SecTrustSetPolicies(v7, v9);
  if (v11)
  {
    v12 = SecCopyErrorMessageString(v11, 0);
    v13 = _AAFLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAFCertificateTrustValidator _checkPinningPolicy:v12 type:v13];
    }

    CFRelease(v10);
LABEL_9:
    v15 = 0;
    goto LABEL_15;
  }

  error = 0;
  v15 = SecTrustEvaluateWithError(v7, &error);
  if (error)
  {
    v16 = _AAFLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AAFCertificateTrustValidator _checkPinningPolicy:v16 type:?];
    }

    CFRelease(error);
    error = 0;
  }

  CFRelease(v10);
LABEL_15:

  return v15;
}

- (__SecPolicy)_policyForType:(unint64_t)a3 host:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 0uLL:
      SSL = SecPolicyCreateSSL(1u, v6);
      goto LABEL_7;
    case 2uLL:
      SSL = SecPolicyCreateAppleiCloudSetupService();
      goto LABEL_7;
    case 1uLL:
      SSL = SecPolicyCreateAppleGSService();
LABEL_7:
      v4 = SSL;
      break;
  }

  return v4;
}

- (BOOL)_trySSLPinning:(id)a3
{
  v4 = a3;
  if (+[AFUtilities isInternalBuild]&& CFPreferencesGetAppBooleanValue(@"AAFDisableCertPinning", @"com.apple.AAAFoundation", 0))
  {
    v5 = _AAFLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C8644000, v5, OS_LOG_TYPE_DEFAULT, "Standard pinning is diabled, falling back to SSL pinning.", v8, 2u);
    }

    v6 = [(AAFCertificateTrustValidator *)self _checkPinningPolicy:v4 type:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_checkPinningPolicy:(uint64_t)a1 type:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "Error setting trust policy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_checkPinningPolicy:(uint64_t *)a1 type:(NSObject *)a2 .cold.2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "Error evaluating certificate trust: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end