@interface CXInProcessCallSource
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (CXInProcessCallSource)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier fallbackLocalizedName:(id)name;
- (void)setProvider:(id)provider;
@end

@implementation CXInProcessCallSource

- (CXInProcessCallSource)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier fallbackLocalizedName:(id)name
{
  v27 = *MEMORY[0x1E69E9840];
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = CXInProcessCallSource;
  v10 = [(CXCallSource *)&v24 initWithIdentifier:identifier];
  if (v10)
  {
    v11 = [MEMORY[0x1E69635F8] cx_applicationRecordForBundleIdentifier:bundleIdentifierCopy];
    v12 = v11;
    if (v11)
    {
      bundleIdentifier = [v11 bundleIdentifier];
      bundleIdentifier = v10->_bundleIdentifier;
      v10->_bundleIdentifier = bundleIdentifier;

      v15 = [v12 URL];
      bundleURL = v10->_bundleURL;
      v10->_bundleURL = v15;

      localizedName = [v12 localizedName];
      v18 = [localizedName copy];
      localizedName = v10->_localizedName;
      v10->_localizedName = v18;
    }

    else
    {
      v20 = CXDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = bundleIdentifierCopy;
        _os_log_impl(&dword_1B47F3000, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot find application record for bundle identifier: %@", buf, 0xCu);
      }

      v21 = nameCopy;
      localizedName = v10->_localizedName;
      v10->_localizedName = v21;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)setProvider:(id)provider
{
  providerCopy = provider;
  queue = [(CXCallSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CXInProcessCallSource_setProvider___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = providerCopy;
  v6 = providerCopy;
  dispatch_async(queue, v7);
}

uint64_t __37__CXInProcessCallSource_setProvider___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 setConnected:1];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *retstr->var0 = v3;
  *&retstr->var0[4] = v3;
  return auditTokenForTask(*MEMORY[0x1E69E9A60], retstr);
}

@end