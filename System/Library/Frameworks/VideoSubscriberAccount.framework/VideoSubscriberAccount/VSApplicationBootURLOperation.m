@interface VSApplicationBootURLOperation
- (BOOL)validateTrust:(__SecTrust *)a3;
- (BOOL)verifyCertificateIsSystemTrustedWithTrust:(__SecTrust *)a3;
- (VSApplicationBootURLOperation)init;
- (VSApplicationBootURLOperation)initWithBootURL:(id)a3 isDeveloper:(BOOL)a4;
- (id)generateFilePathForURL:(id)a3;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)executionDidBegin;
@end

@implementation VSApplicationBootURLOperation

- (VSApplicationBootURLOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSApplicationBootURLOperation)initWithBootURL:(id)a3 isDeveloper:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = VSApplicationBootURLOperation;
  v8 = [(VSApplicationBootURLOperation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_url, a3);
    v9->_developer = a4;
    v10 = objc_alloc_init(VSPreferences);
    preferences = v9->_preferences;
    v9->_preferences = v10;
  }

  return v9;
}

- (void)executionDidBegin
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = [(VSApplicationBootURLOperation *)self url];
  v4 = [v3 scheme];
  if ([(VSApplicationBootURLOperation *)self isForTesting])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(VSApplicationBootURLOperation *)self preferences];
    v5 = [v6 allowInsecureAuthContext];
  }

  if ([(VSApplicationBootURLOperation *)self isDeveloper])
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "URL is for a developer added provider, skipping system trust verification.", &buf, 2u);
    }

LABEL_7:

    v8 = [VSFailable failableWithObject:v3];
    [(VSApplicationBootURLOperation *)self setUrlOrError:v8];

    [(VSAsyncOperation *)self finishExecutionIfPossible];
    goto LABEL_19;
  }

  if ([(VSApplicationBootURLOperation *)self skipSystemTrustVerification])
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "System trust is set to be skipped, skipping system trust verification.", &buf, 2u);
    }

    goto LABEL_7;
  }

  if (v4 && (([v4 isEqual:*MEMORY[0x277CCA778]] & 1) != 0 || ((objc_msgSend(v4, "isEqualToString:", @"https") | v5) & 1) != 0))
  {
    v9 = objc_alloc(MEMORY[0x277CCAB70]);
    v10 = [(VSApplicationBootURLOperation *)self url];
    v11 = [v9 initWithURL:v10];

    [v11 _setNonAppInitiated:1];
    v12 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    if ([(VSApplicationBootURLOperation *)self isForTesting])
    {
      [v12 setRequestCachePolicy:1];
    }

    v13 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v12 delegate:self delegateQueue:0];
    objc_initWeak(&buf, self);
    v14 = [(VSApplicationBootURLOperation *)self url];
    objc_initWeak(&location, v14);

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke;
    v21[3] = &unk_278B75358;
    objc_copyWeak(&v22, &buf);
    objc_copyWeak(&v23, &location);
    v15 = [v13 dataTaskWithRequest:v11 completionHandler:v21];
    [v15 resume];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    objc_destroyWeak(&buf);
  }

  else
  {
    v16 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v17 = [v16 localizedStringForKey:@"URL_BAD_SCHEME_ERROR_DESCRIPTION" value:0 table:0];

    v26 = *MEMORY[0x277CCA450];
    v27[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:0 userInfo:v18];
    v20 = [VSFailable failableWithError:v19];
    [(VSApplicationBootURLOperation *)self setUrlOrError:v20];

    [(VSAsyncOperation *)self finishExecutionIfPossible];
  }

LABEL_19:
}

void __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_loadWeakRetained((a1 + 40));
  if (v7)
  {
    v10 = VSErrorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_1(v9, v7, v10);
    }

    v11 = v7;
    if ([v11 code] == -999)
    {
      v12 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v13 = [v12 localizedStringForKey:@"SYSTEM_TRUST_VERIFICATION_ERROR_DESCRIPTION" value:0 table:0];

      v30 = *MEMORY[0x277CCA450];
      v31[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:6 userInfo:v14];
      v16 = [VSFailable failableWithError:v15];
      [WeakRetained setUrlOrError:v16];

LABEL_29:
LABEL_30:

      goto LABEL_31;
    }

LABEL_28:
    v13 = [VSFailable failableWithError:v11];
    [WeakRetained setUrlOrError:v13];
    goto LABEL_29;
  }

  if (v6)
  {
    if ([WeakRetained isForTesting])
    {
      v17 = VSDefaultLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v17, OS_LOG_TYPE_DEFAULT, "Boot URL fetched for testing or EV was skipped, skipping storage.", buf, 2u);
      }

      v11 = [VSFailable failableWithObject:v9];
      [WeakRetained setUrlOrError:v11];
      goto LABEL_30;
    }

    v19 = v6;
    v20 = [WeakRetained generateFilePathForURL:v9];
    if (v20)
    {
      v27 = 0;
      [v19 writeToFile:v20 options:0 error:&v27];
      v11 = v27;
      if (v11)
      {
        v21 = VSErrorLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_2();
        }

        v22 = v11;
      }

      else
      {
        v24 = VSDefaultLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v20;
          _os_log_impl(&dword_23AB8E000, v24, OS_LOG_TYPE_DEFAULT, "Wrote boot URL contents to %@", buf, 0xCu);
        }

        v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v20];
        v26 = [VSFailable failableWithObject:v25];
        [WeakRetained setUrlOrError:v26];
      }
    }

    else
    {
      v23 = VSErrorLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_3();
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:2 userInfo:0];
    }

    if (v11)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v18 = VSErrorLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_4(v9, v18);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:1 userInfo:0];
    if (v11)
    {
      goto LABEL_28;
    }
  }

LABEL_31:
  [WeakRetained finishExecutionIfPossible];
}

- (id)generateFilePathForURL:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = NSTemporaryDirectory();
  v5 = v4;
  if (!v4)
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationBootURLOperation generateFilePathForURL:];
    }

    goto LABEL_12;
  }

  v6 = MEMORY[0x277CBEBC0];
  v27[0] = v4;
  v27[1] = @"com.apple.VideoSubscriberAccount";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v8 = [v6 fileURLWithPathComponents:v7];
  v9 = [v8 path];

  if (!v9)
  {
    v14 = VSErrorLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationBootURLOperation generateFilePathForURL:];
    }

LABEL_12:
    v15 = 0;
    goto LABEL_20;
  }

  v9 = v9;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  [v10 createDirectoryAtPath:v9 withIntermediateDirectories:0 attributes:0 error:&v25];
  v11 = v25;

  if (v11)
  {
    v12 = [v11 domain];
    if ([v12 isEqual:*MEMORY[0x277CCA050]])
    {
      v13 = [v11 code];

      if (v13 == 516)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v16 = VSErrorLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationBootURLOperation generateFilePathForURL:];
    }
  }

LABEL_17:
  v17 = [v3 absoluteString];

  if (!v17)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [url absoluteString] parameter must not be nil."];
  }

  v18 = [v3 absoluteString];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "hash")}];
  v20 = [v19 stringValue];

  v21 = MEMORY[0x277CBEBC0];
  v26[0] = v5;
  v26[1] = @"com.apple.VideoSubscriberAccount";
  v26[2] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v23 = [v21 fileURLWithPathComponents:v22];
  v15 = [v23 path];

LABEL_20:

  return v15;
}

- (BOOL)validateTrust:(__SecTrust *)a3
{
  error = 0;
  v3 = SecTrustEvaluateWithError(a3, &error);
  if (!v3)
  {
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(VSApplicationBootURLOperation *)&error validateTrust:v4];
    }
  }

  return v3;
}

- (BOOL)verifyCertificateIsSystemTrustedWithTrust:(__SecTrust *)a3
{
  v5 = [(VSApplicationBootURLOperation *)self preferences];
  v6 = [v5 allowNonSystemTrust];

  if (!v6)
  {
    if (a3)
    {
      if ([(VSApplicationBootURLOperation *)self validateTrust:a3])
      {
        v9 = SecTrustCopyCertificateChain(a3);
        v7 = v9;
        if (v9)
        {
          if ([(__CFArray *)v9 lastObject])
          {
            v8 = 1;
            SecTrustStoreForDomain();
            if (SecTrustStoreContains())
            {
              goto LABEL_22;
            }

            v10 = VSErrorLogObject();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [VSApplicationBootURLOperation verifyCertificateIsSystemTrustedWithTrust:];
            }
          }

          else
          {
            v10 = VSErrorLogObject();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [VSApplicationBootURLOperation verifyCertificateIsSystemTrustedWithTrust:];
            }
          }
        }

        else
        {
          v10 = VSErrorLogObject();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [VSApplicationBootURLOperation verifyCertificateIsSystemTrustedWithTrust:];
          }
        }
      }

      else
      {
        v7 = VSErrorLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [VSApplicationBootURLOperation verifyCertificateIsSystemTrustedWithTrust:];
        }
      }
    }

    else
    {
      v7 = VSErrorLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [VSApplicationBootURLOperation verifyCertificateIsSystemTrustedWithTrust:];
      }
    }

    v8 = 0;
    goto LABEL_22;
  }

  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Skipping system trust requirement due to default override.", v12, 2u);
  }

  v8 = 1;
LABEL_22:

  return v8;
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = [a4 protectionSpace];
  v9 = [v8 serverTrust];
  v10 = SecTrustCopyInfo();
  [(VSApplicationBootURLOperation *)self setTrustInfo:v10];
  v11 = [v8 authenticationMethod];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCA720]];

  if (v12)
  {
    if ([(VSApplicationBootURLOperation *)self verifyCertificateIsSystemTrustedWithTrust:v9])
    {
      v13 = VSDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "System trust verified.", buf, 2u);
      }

      v14 = [MEMORY[0x277CCACF0] credentialForTrust:{objc_msgSend(v8, "serverTrust")}];
      v15 = 0;
    }

    else
    {
      v17 = VSErrorLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [VSApplicationBootURLOperation URLSession:didReceiveChallenge:completionHandler:];
      }

      v14 = 0;
      v15 = 2;
    }
  }

  else
  {
    v16 = VSDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, "Challenge was not server trust.", v18, 2u);
    }

    v14 = 0;
    v15 = 1;
  }

  v7[2](v7, v15, v14);
}

void __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 absoluteString];
  OUTLINED_FUNCTION_1_0();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_23AB8E000, a3, OS_LOG_TYPE_ERROR, "Error fetching application boot URL contents from %@: %@", v6, 0x16u);
}

void __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_23AB8E000, v1, OS_LOG_TYPE_ERROR, "Error writing boot URL contents to %@: %@", v2, 0x16u);
}

void __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_4(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 absoluteString];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Request to application boot URL %@ returned no contents.", v4, 0xCu);
}

- (void)generateFilePathForURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23AB8E000, v0, OS_LOG_TYPE_ERROR, "Error creating temporary directory: %@", v1, 0xCu);
}

- (void)validateTrust:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error validating certificate trust: %@", &v3, 0xCu);
}

@end