@interface CXInProcessCallSource
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (CXInProcessCallSource)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 fallbackLocalizedName:(id)a5;
- (void)setProvider:(id)a3;
@end

@implementation CXInProcessCallSource

- (CXInProcessCallSource)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 fallbackLocalizedName:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v24.receiver = self;
  v24.super_class = CXInProcessCallSource;
  v10 = [(CXCallSource *)&v24 initWithIdentifier:a3];
  if (v10)
  {
    v11 = [MEMORY[0x1E69635F8] cx_applicationRecordForBundleIdentifier:v8];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 bundleIdentifier];
      bundleIdentifier = v10->_bundleIdentifier;
      v10->_bundleIdentifier = v13;

      v15 = [v12 URL];
      bundleURL = v10->_bundleURL;
      v10->_bundleURL = v15;

      v17 = [v12 localizedName];
      v18 = [v17 copy];
      localizedName = v10->_localizedName;
      v10->_localizedName = v18;
    }

    else
    {
      v20 = CXDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v8;
        _os_log_impl(&dword_1B47F3000, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot find application record for bundle identifier: %@", buf, 0xCu);
      }

      v21 = v9;
      v17 = v10->_localizedName;
      v10->_localizedName = v21;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)setProvider:(id)a3
{
  v4 = a3;
  v5 = [(CXCallSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CXInProcessCallSource_setProvider___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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