@interface ASTEnvironment
+ (BOOL)isCoreRepairFrameworkAvailable;
+ (BOOL)isInternalBuild;
+ (BOOL)isServicePart;
+ (id)currentEnvironment;
+ (id)environmentWithEnvironmentType:(unint64_t)a3;
+ (id)protocolVersion;
- (ASTEnvironment)init;
- (ASTEnvironment)initWithEnvironmentType:(unint64_t)a3;
- (BOOL)isDiagnosticsMode;
- (id)_defaultServerURL;
- (id)_generateServerURL;
- (id)environmentServerString;
- (unint64_t)_defaultServerSelection;
- (void)_generateServerURL;
- (void)setAssetURL:(id)a3;
- (void)setConfigCode:(id)a3;
- (void)setDiagsChannel:(id)a3;
- (void)setEnvironmentType:(unint64_t)a3;
- (void)setServer:(unint64_t)a3;
- (void)setServerURL:(id)a3;
@end

@implementation ASTEnvironment

- (ASTEnvironment)init
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2080;
    v9 = "[ASTEnvironment init]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v6, 0x16u);
  }

  result = [(ASTEnvironment *)self initWithEnvironmentType:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (ASTEnvironment)initWithEnvironmentType:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = self;
    v15 = 2080;
    v16 = "[ASTEnvironment initWithEnvironmentType:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[%@] %s", buf, 0x16u);
  }

  v12.receiver = self;
  v12.super_class = ASTEnvironment;
  v6 = [(ASTEnvironment *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_environmentType = a3;
    v6->_server = [(ASTEnvironment *)v6 _defaultServerSelection];
    v8 = [(ASTEnvironment *)v7 _generateServerURL];
    serverURL = v7->_serverURL;
    v7->_serverURL = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)environmentWithEnvironmentType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = a1;
    v11 = 2080;
    v12 = "+[ASTEnvironment environmentWithEnvironmentType:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v9, 0x16u);
  }

  v6 = [[a1 alloc] initWithEnvironmentType:a3];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)currentEnvironment
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = a1;
    v9 = 2080;
    v10 = "+[ASTEnvironment currentEnvironment]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v7, 0x16u);
  }

  if (currentEnvironment_onceToken != -1)
  {
    +[ASTEnvironment currentEnvironment];
  }

  dispatch_sync(ASTEnvironmentSyncQueue, &__block_literal_global_75);
  v4 = ASTCurrentEnvironment;
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __36__ASTEnvironment_currentEnvironment__block_invoke()
{
  ASTEnvironmentSyncQueue = dispatch_queue_create("com.apple.ASTEnvironmentSyncQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void __36__ASTEnvironment_currentEnvironment__block_invoke_2()
{
  if (!ASTCurrentEnvironment)
  {
    ASTCurrentEnvironment = [[ASTEnvironment alloc] initWithEnvironmentType:3];

    MEMORY[0x2821F96F8]();
  }
}

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[ASTEnvironment isInternalBuild];
  }

  return isInternalBuild_isInternal;
}

uint64_t __33__ASTEnvironment_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    isInternalBuild_isInternal = 1;
  }

  return result;
}

+ (id)protocolVersion
{
  if (protocolVersion_onceToken != -1)
  {
    +[ASTEnvironment protocolVersion];
  }

  v3 = protocolVersion_protocolVersion;

  return v3;
}

void __33__ASTEnvironment_protocolVersion__block_invoke()
{
  if (+[ASTEnvironment isInternalBuild])
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppleServiceToolkit"];
    v0 = [v2 objectForKey:@"ProtocolVersion"];
    v1 = v0;
    if (v0 && [v0 length])
    {
      objc_storeStrong(&protocolVersion_protocolVersion, v1);
    }
  }
}

uint64_t __34__ASTEnvironment_resetEnvironment__block_invoke()
{
  [ASTCurrentEnvironment setEnvironmentType:3];
  v0 = [ASTCurrentEnvironment _generateServerURL];
  [ASTCurrentEnvironment setServerURL:v0];

  v1 = [ASTCurrentEnvironment _defaultServerSelection];
  v2 = ASTCurrentEnvironment;

  return [v2 setServer:v1];
}

+ (BOOL)isCoreRepairFrameworkAvailable
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ASTEnvironment_isCoreRepairFrameworkAvailable__block_invoke;
  block[3] = &unk_278CBCFB0;
  v5 = @"/System/Library/PrivateFrameworks/CoreRepairKit.framework/CoreRepairKit";
  if (isCoreRepairFrameworkAvailable_coreRepairToken != -1)
  {
    dispatch_once(&isCoreRepairFrameworkAvailable_coreRepairToken, block);
  }

  v2 = isCoreRepairFrameworkAvailable_isCoreRepairAvailable;

  return v2;
}

void *__48__ASTEnvironment_isCoreRepairFrameworkAvailable__block_invoke(uint64_t a1)
{
  result = dlopen([*(a1 + 32) UTF8String], 1);
  isCoreRepairFrameworkAvailable_isCoreRepairAvailable = result != 0;
  return result;
}

+ (BOOL)isServicePart
{
  if (!+[ASTEnvironment isCoreRepairFrameworkAvailable])
  {
    return 0;
  }

  v6 = 0;
  v2 = [NSClassFromString(&cfstr_Crrepairstatus.isa) isServicePartWithError:&v6];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isEqualToString:@"1"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setServerURL:(id)a3
{
  v5 = a3;
  if ([objc_opt_class() isInternalBuild])
  {
    self->_server = 5;
    objc_storeStrong(&self->_serverURL, a3);
  }
}

- (void)setServer:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2080;
    v12 = "[ASTEnvironment setServer:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v9, 0x16u);
  }

  self->_server = a3;
  v6 = [(ASTEnvironment *)self _generateServerURL];
  serverURL = self->_serverURL;
  self->_serverURL = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setEnvironmentType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2080;
    v12 = "[ASTEnvironment setEnvironmentType:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v9, 0x16u);
  }

  self->_environmentType = a3;
  v6 = [(ASTEnvironment *)self _generateServerURL];
  serverURL = self->_serverURL;
  self->_serverURL = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDiagsChannel:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2080;
    v14 = "[ASTEnvironment setDiagsChannel:]";
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v11, 0x16u);
  }

  if (([ASTCurrentDiagsChannel isEqualToString:v5] & 1) == 0)
  {
    v7 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[%@] Updating diags channel to: %@", &v11, 0x16u);
    }

    objc_storeStrong(&ASTCurrentDiagsChannel, a3);
    v8 = [(ASTEnvironment *)self _generateServerURL];
    serverURL = self->_serverURL;
    self->_serverURL = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setConfigCode:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2080;
    v12 = "[ASTEnvironment setConfigCode:]";
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v9, 0x16u);
  }

  if (([ASTConfigCode isEqualToString:v5] & 1) == 0)
  {
    v7 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[%@] Updating config code to: %@", &v9, 0x16u);
    }

    objc_storeStrong(&ASTConfigCode, a3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setAssetURL:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = self;
    v15 = 2080;
    v16 = "[ASTEnvironment setAssetURL:]";
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v13, 0x16u);
  }

  v7 = [ASTAssetURL absoluteString];
  v8 = [v5 absoluteString];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 absoluteString];
      v13 = 138412546;
      v14 = self;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_240F3C000, v10, OS_LOG_TYPE_DEFAULT, "[%@] Updating asset URL to: %@", &v13, 0x16u);
    }

    objc_storeStrong(&ASTAssetURL, a3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)environmentServerString
{
  v2 = [(ASTEnvironment *)self environmentType];
  if (v2 - 8 > 2)
  {
    return @"ios";
  }

  else
  {
    return off_278CBD960[v2 - 8];
  }
}

- (BOOL)isDiagnosticsMode
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppleServiceToolkit"];
  if ([v2 BOOLForKey:@"DiagnosticMode"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [MEMORY[0x277CF97E8] isCheckerBoardActive];
  }

  return v3;
}

- (id)_generateServerURL
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = self;
    v25 = 2080;
    v26 = "[ASTEnvironment _generateServerURL]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[%@] %s", buf, 0x16u);
  }

  switch([(ASTEnvironment *)self server])
  {
    case 1uLL:
      v4 = @"https://idiagnostics-uat.apple.com/%@/v%@/";
      break;
    case 2uLL:
      v4 = @"https://idiagnostics-it.apple.com/%@/v%@/";
      break;
    case 3uLL:
      v4 = @"https://idiagnostics-qa.apple.com/%@/v%@/";
      break;
    case 4uLL:
      v4 = @"https://diagnostics-dev.swe.apple.com";
      break;
    case 5uLL:
      v4 = @"https://idiagnostics.apple.com/%@/v%@/";
      if ([objc_opt_class() isInternalBuild])
      {
        v5 = [(ASTEnvironment *)self _defaultServerURL];
        if (v5)
        {
          v4 = v5;
        }
      }

      break;
    case 6uLL:
      v4 = @"https://idiagnostics-reno.apple.com/%@/v%@/";
      break;
    case 7uLL:
      v4 = @"https://idiagnostics-mdn1.apple.com/%@/v%@/";
      break;
    case 8uLL:
      v4 = @"https://idiagnostics-nwk1.apple.com/%@/v%@/";
      break;
    case 9uLL:
      v4 = @"https://idiagnostics-it1.apple.com/%@/v%@/";
      break;
    case 10uLL:
      v4 = @"https://idiagnostics-it2.apple.com/%@/v%@/";
      break;
    case 11uLL:
      v4 = @"https://idiagnostics-staging.apple.com/%@/v%@/";
      break;
    case 12uLL:
      v4 = @"https://idiagnostics-uat1.apple.com/%@/v%@/";
      break;
    case 13uLL:
      v4 = @"https://idiagnostics-acstage.corp.apple.com/%@/v%@/";
      break;
    case 14uLL:
      v4 = @"https://idiagnostics-stage1.apple.com/%@/v%@/";
      break;
    case 15uLL:
      v4 = @"https://idiagnostics-prod2.apple.com/%@/v%@/";
      break;
    case 16uLL:
      v4 = @"https://idiagnostics-prod2-mdn.apple.com/%@/v%@/";
      break;
    case 17uLL:
      v4 = @"https://idiagnostics-prod2-rno.apple.com/%@/v%@/";
      break;
    case 18uLL:
      v4 = @"https://idiagnostics-it4-ause1.apple.com/%@/v%@/";
      break;
    case 19uLL:
      v4 = @"https://idiagnostics.aweuw1.sbz.apple.com/%@/v%@/";
      break;
    case 20uLL:
      v4 = @"https://idiagnostics.awapse1.sbz.apple.com/%@/v%@/";
      break;
    case 21uLL:
      v4 = @"https://idiagnostics-it5-it.aweuw1.shld.apple.com/%@/v%@/";
      break;
    case 22uLL:
      v4 = @"https://idiagnostics-it5-apse1-it.awapse1.shld.apple.com/%@/v%@/";
      break;
    default:
      v4 = @"https://idiagnostics.apple.com/%@/v%@/";
      break;
  }

  v6 = [(ASTEnvironment *)self diagsChannel];
  v7 = [v6 length];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [(ASTEnvironment *)self diagsChannel];
    v10 = [v8 stringWithFormat:@"%@/", v9];
    v11 = [(__CFString *)v4 stringByAppendingString:v10];

    v4 = v11;
  }

  v12 = MEMORY[0x277CCACA8];
  v22 = 0;
  v13 = [(ASTEnvironment *)self environmentServerString];
  v14 = +[ASTEnvironment protocolVersion];
  v15 = [v12 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@%@" error:&v22, v13, v14];
  v16 = v22;

  if (v16)
  {
    v17 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(ASTEnvironment *)v16 _generateServerURL];
    }
  }

  v18 = [MEMORY[0x277CBEBC0] URLWithString:v15];
  v19 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = self;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&dword_240F3C000, v19, OS_LOG_TYPE_DEFAULT, "[%@] New server URL: %@", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (unint64_t)_defaultServerSelection
{
  if (_defaultServerSelection_onceToken != -1)
  {
    [ASTEnvironment _defaultServerSelection];
  }

  return _defaultServerSelection_server;
}

void __41__ASTEnvironment__defaultServerSelection__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.AppleServiceToolkit");
  v0 = CFPreferencesCopyAppValue(@"Server", @"com.apple.AppleServiceToolkit");
  if (v0)
  {
    cf = v0;
    v1 = CFGetTypeID(v0);
    if (v1 == CFNumberGetTypeID())
    {
      _defaultServerSelection_server = [cf unsignedIntegerValue];
    }

    else
    {
      v3 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __41__ASTEnvironment__defaultServerSelection__block_invoke_cold_1(v3);
      }

      CFRelease(cf);
    }
  }

  else
  {
    v2 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __41__ASTEnvironment__defaultServerSelection__block_invoke_cold_2(v2);
    }
  }
}

- (id)_defaultServerURL
{
  if (_defaultServerURL_onceToken != -1)
  {
    [ASTEnvironment _defaultServerURL];
  }

  v3 = _defaultServerURL_server;

  return v3;
}

uint64_t __35__ASTEnvironment__defaultServerURL__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.AppleServiceToolkit");
  _defaultServerURL_server = CFPreferencesCopyAppValue(@"CustomServerURL", @"com.apple.AppleServiceToolkit");

  return MEMORY[0x2821F96F8]();
}

- (void)_generateServerURL
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_240F3C000, a2, OS_LOG_TYPE_FAULT, "Invalid server format string: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end