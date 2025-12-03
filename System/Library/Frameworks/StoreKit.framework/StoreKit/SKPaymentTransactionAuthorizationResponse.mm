@interface SKPaymentTransactionAuthorizationResponse
- (SKPaymentTransactionAuthorizationResponse)initWithAuthorizationCredential:(id)credential error:(id)error;
@end

@implementation SKPaymentTransactionAuthorizationResponse

- (SKPaymentTransactionAuthorizationResponse)initWithAuthorizationCredential:(id)credential error:(id)error
{
  credentialCopy = credential;
  errorCopy = error;
  if (credentialCopy | errorCopy)
  {
    v13.receiver = self;
    v13.super_class = SKPaymentTransactionAuthorizationResponse;
    v10 = [(SKPaymentTransactionAuthorizationResponse *)&v13 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_authorizationAppleIDCredential, credential);
      objc_storeStrong(p_isa + 2, error);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKPaymentTransactionAuthorizationResponse initWithAuthorizationCredential:? error:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithAuthorizationCredential:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]: Auth credential and error are both nil", &v1, 0xCu);
}

@end