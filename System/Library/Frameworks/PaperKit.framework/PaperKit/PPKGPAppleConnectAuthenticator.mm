@interface PPKGPAppleConnectAuthenticator
- (PPKGPAppleConnectAuthenticator)initWithTokenProvider:(id)provider;
- (PPKMagicGenerativePlaygroundTokenProvider)tokenProvider;
- (void)authenticateIfNeededWithCompletion:(id)completion;
@end

@implementation PPKGPAppleConnectAuthenticator

- (PPKGPAppleConnectAuthenticator)initWithTokenProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = PPKGPAppleConnectAuthenticator;
  v5 = [(PPKGPAppleConnectAuthenticator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PPKGPAppleConnectAuthenticator *)v5 setTokenProvider:providerCopy];
  }

  return v6;
}

- (void)authenticateIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  tokenProvider = [(PPKGPAppleConnectAuthenticator *)self tokenProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PPKGPAppleConnectAuthenticator_authenticateIfNeededWithCompletion___block_invoke;
  v7[3] = &unk_1E845C500;
  v8 = completionCopy;
  v6 = completionCopy;
  [tokenProvider authenticateWithCompletion:v7];
}

- (PPKMagicGenerativePlaygroundTokenProvider)tokenProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tokenProvider);

  return WeakRetained;
}

@end