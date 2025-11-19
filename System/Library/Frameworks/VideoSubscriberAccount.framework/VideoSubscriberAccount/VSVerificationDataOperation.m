@interface VSVerificationDataOperation
- (VSVerificationDataOperation)init;
- (void)_finishWithData:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_finishWithResult:(int)a3 bytes:(char *)a4 length:(unsigned int)a5;
- (void)executionDidBegin;
@end

@implementation VSVerificationDataOperation

- (VSVerificationDataOperation)init
{
  v8.receiver = self;
  v8.super_class = VSVerificationDataOperation;
  v2 = [(VSVerificationDataOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0168]);
    provisioningController = v2->_provisioningController;
    v2->_provisioningController = v3;

    v5 = objc_alloc_init(VSOptional);
    v6 = v2->_result;
    v2->_result = v5;
  }

  return v2;
}

- (void)_finishWithData:(id)a3
{
  v4 = [VSFailable failableWithObject:a3];
  v5 = [VSOptional optionalWithObject:v4];
  [(VSVerificationDataOperation *)self setResult:v5];

  [(VSAsyncOperation *)self finishExecutionIfPossible];
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  v5 = VSErrorLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(VSVerificationDataOperation *)v4 _finishWithError:v5];
  }

  v6 = [VSFailable failableWithError:v4];
  v7 = [VSOptional optionalWithObject:v6];
  [(VSVerificationDataOperation *)self setResult:v7];

  [(VSAsyncOperation *)self finishExecutionIfPossible];
}

- (void)_finishWithResult:(int)a3 bytes:(char *)a4 length:(unsigned int)a5
{
  if (a3 || !a5)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a3 userInfo:0];
    [(VSVerificationDataOperation *)self _finishWithError:?];
  }

  else
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:a4 length:a5];
    jEHf8Xzsv8K(a4);
    [(VSVerificationDataOperation *)self _finishWithData:v7];
  }
}

- (void)executionDidBegin
{
  v8 = 0;
  v7 = 0;
  pggRSNuJfiTW0g(&v8, &v7);
  if (v3 == -45061 || v3 == -45065)
  {
    v5 = [(VSVerificationDataOperation *)self provisioningController];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__VSVerificationDataOperation_executionDidBegin__block_invoke;
    v6[3] = &unk_278B74B88;
    v6[4] = self;
    [v5 provisionWithCompletion:v6];
  }

  else
  {
    [(VSVerificationDataOperation *)self _finishWithResult:v3 bytes:v8 length:v7];
  }
}

void __48__VSVerificationDataOperation_executionDidBegin__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v9 = 0;
    v8 = 0;
    pggRSNuJfiTW0g(&v9, &v8);
    [*(a1 + 32) _finishWithResult:v7 bytes:v9 length:v8];
  }

  else
  {
    if (!v5)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
    }

    [*(a1 + 32) _finishWithError:v6];
  }
}

- (void)_finishWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Failed to obtain verification data: %@", &v2, 0xCu);
}

@end