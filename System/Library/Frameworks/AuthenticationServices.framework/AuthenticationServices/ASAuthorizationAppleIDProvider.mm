@interface ASAuthorizationAppleIDProvider
+ (void)initialize;
- (ASAuthorizationAppleIDRequest)createRequest;
- (void)credentialStateDidChange:(int64_t)change completion:(id)completion;
- (void)getCredentialStateForUserID:(NSString *)userID completion:(void *)completion;
@end

@implementation ASAuthorizationAppleIDProvider

+ (void)initialize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___ASAuthorizationAppleIDProvider;
  objc_msgSendSuper2(&v3, sel_initialize);
  v2 = objc_alloc_init(ASAuthorizationAppleIDProvider);
  [MEMORY[0x1E698DD00] startServiceWithNotificationHandler:v2];
}

- (ASAuthorizationAppleIDRequest)createRequest
{
  v2 = objc_alloc_init(ASAuthorizationAppleIDProvider);
  v3 = [(ASAuthorizationRequest *)[ASAuthorizationAppleIDRequest alloc] initWithProvider:v2];

  return v3;
}

- (void)getCredentialStateForUserID:(NSString *)userID completion:(void *)completion
{
  v5 = completion;
  v6 = MEMORY[0x1E698DCF0];
  v7 = userID;
  v8 = objc_alloc_init(v6);
  [v8 setUserID:v7];

  v9 = objc_alloc_init(MEMORY[0x1E698DCE0]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__ASAuthorizationAppleIDProvider_getCredentialStateForUserID_completion___block_invoke;
  v11[3] = &unk_1E7AF86F0;
  v12 = v5;
  v10 = v5;
  [v9 getCredentialStateForRequest:v8 completion:v11];
}

void __73__ASAuthorizationAppleIDProvider_getCredentialStateForUserID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 > 2)
  {
    if ((a2 - 4) >= 2)
    {
      if (a2 != 3)
      {
        goto LABEL_14;
      }

      v8 = v5;
      v7 = *(*(a1 + 32) + 16);
      goto LABEL_12;
    }
  }

  else
  {
    if (!a2)
    {
      v8 = v5;
      v7 = *(*(a1 + 32) + 16);
      goto LABEL_12;
    }

    if (a2 != 1)
    {
      if (a2 != 2)
      {
        goto LABEL_14;
      }

      v8 = v5;
      if (v5)
      {
        v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1000 userInfo:0];
      }

      else
      {
        v6 = 0;
      }

      (*(*(a1 + 32) + 16))();

      goto LABEL_13;
    }
  }

  v8 = v5;
  v7 = *(*(a1 + 32) + 16);
LABEL_12:
  v7();
LABEL_13:
  v5 = v8;
LABEL_14:
}

- (void)credentialStateDidChange:(int64_t)change completion:(id)completion
{
  if (change)
  {
    (*(completion + 2))(completion, 0, 0);
  }

  else
  {
    v4 = MEMORY[0x1E696AD88];
    completionCopy = completion;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter postNotificationName:@"ASAuthorizationAppleIDCredentialRevokedNotification" object:0];

    completionCopy[2](completionCopy, 1, 0);
  }
}

@end