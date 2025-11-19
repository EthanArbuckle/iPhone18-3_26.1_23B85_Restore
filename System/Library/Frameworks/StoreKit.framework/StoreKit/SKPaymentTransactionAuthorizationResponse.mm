@interface SKPaymentTransactionAuthorizationResponse
- (SKPaymentTransactionAuthorizationResponse)initWithAuthorizationCredential:(id)a3 error:(id)a4;
@end

@implementation SKPaymentTransactionAuthorizationResponse

- (SKPaymentTransactionAuthorizationResponse)initWithAuthorizationCredential:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 | v8)
  {
    v13.receiver = self;
    v13.super_class = SKPaymentTransactionAuthorizationResponse;
    v10 = [(SKPaymentTransactionAuthorizationResponse *)&v13 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_authorizationAppleIDCredential, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v9 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKPaymentTransactionAuthorizationResponse initWithAuthorizationCredential:? error:?];
    }

    v9 = 0;
  }

  return v9;
}

- (void)initWithAuthorizationCredential:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]: Auth credential and error are both nil", &v1, 0xCu);
}

@end