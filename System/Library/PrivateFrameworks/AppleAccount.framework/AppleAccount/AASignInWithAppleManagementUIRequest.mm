@interface AASignInWithAppleManagementUIRequest
- (BOOL)_isPasswordAppInstalled;
- (id)urlRequest;
- (id)urlString;
- (void)_isPasswordAppInstalled;
@end

@implementation AASignInWithAppleManagementUIRequest

- (id)urlString
{
  v2 = [MEMORY[0x1E698DDF8] sharedBag];
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E698DDF8] sharedBag];
    v4 = [v3 siwaManagementURL];
    v5 = [v4 absoluteString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)urlRequest
{
  v3 = [(AASignInWithAppleManagementUIRequest *)self _isPasswordAppInstalled];
  v8.receiver = self;
  v8.super_class = AASignInWithAppleManagementUIRequest;
  v4 = [(AAAppleIDSettingsRequest *)&v8 urlRequest];
  v5 = [v4 mutableCopy];

  v6 = kAATrueString;
  if (!v3)
  {
    v6 = kAAFalseString;
  }

  [v5 addValue:*v6 forHTTPHeaderField:@"X-Apple-I-PAI"];

  return v5;
}

- (BOOL)_isPasswordAppInstalled
{
  v8 = 0;
  v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.Passwords" allowPlaceholder:1 error:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = [v2 applicationState];
    if (([v4 isInstalled]& 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      v6 = [v2 applicationState];
      v5 = [v6 isPlaceholder];
    }
  }

  else
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(AASignInWithAppleManagementUIRequest *)v3 _isPasswordAppInstalled];
    }

    v5 = 0;
  }

  return v5;
}

- (void)_isPasswordAppInstalled
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = @"com.apple.Passwords";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Error creating appRecord for %@. %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end