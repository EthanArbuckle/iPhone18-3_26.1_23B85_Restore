@interface AXMMADSService
+ (id)sharedInstance;
- (AXMMADSService)init;
@end

@implementation AXMMADSService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[AXMMADSService sharedInstance];
  }

  v3 = sharedInstance__Shared_1;

  return v3;
}

void __32__AXMMADSService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXMMADSService);
  v1 = sharedInstance__Shared_1;
  sharedInstance__Shared_1 = v0;
}

- (AXMMADSService)init
{
  v8.receiver = self;
  v8.super_class = AXMMADSService;
  v2 = [(AXMMADSService *)&v8 init];
  if (v2)
  {
    v3 = AXMediaLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v3, OS_LOG_TYPE_DEFAULT, "AXM Media Analysis: Initializing MediaAnalysisService", buf, 2u);
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v4 = getMADServiceClass_softClass;
    v17 = getMADServiceClass_softClass;
    if (!getMADServiceClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __getMADServiceClass_block_invoke;
      v12 = &unk_1E7A1C700;
      v13 = &v14;
      __getMADServiceClass_block_invoke(buf);
      v4 = v15[3];
    }

    v5 = v4;
    _Block_object_dispose(&v14, 8);
    service = [v4 service];
    [(AXMMADSService *)v2 setService:service];
  }

  return v2;
}

@end