@interface ASCViewRender
+ (NSSet)requiredFieldNames;
+ (OS_os_log)log;
+ (void)bootstrapDidBeginWithTag:(unint64_t)tag;
+ (void)bootstrapDidEndWithTag:(unint64_t)tag;
+ (void)jsCallDidBeginWithTag:(unint64_t)tag;
+ (void)jsCallDidEndWithTag:(unint64_t)tag;
+ (void)jsStackBootstrapDidBeginWithTag:(unint64_t)tag;
+ (void)jsStackBootstrapDidEndWithTag:(unint64_t)tag;
+ (void)launchCorrelationKeyWithTag:(unint64_t)tag withString:(id)string;
+ (void)modelPrefetchDidBeginWithTag:(unint64_t)tag;
+ (void)modelPrefetchDidEndWithTag:(unint64_t)tag;
+ (void)overlayRequestedWithTag:(unint64_t)tag;
+ (void)pageRequestedWithTag:(unint64_t)tag;
+ (void)pageUserReadyWithTag:(unint64_t)tag;
+ (void)requestDidBeginWithTag:(unint64_t)tag;
+ (void)requestDidEndWithTag:(unint64_t)tag;
+ (void)resourceRequestDidBeginWithTag:(unint64_t)tag;
+ (void)resourceRequestDidEndWithTag:(unint64_t)tag;
+ (void)rootViewModelParseDidBeginWithTag:(unint64_t)tag;
+ (void)rootViewModelParseDidEndWithTag:(unint64_t)tag;
+ (void)rootViewModelPresentWithTag:(unint64_t)tag;
@end

@implementation ASCViewRender

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__ASCViewRender_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __20__ASCViewRender_log__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) subsystem];
  v2 = v7;
  v3 = [v7 UTF8String];
  v4 = [*(a1 + 32) category];
  v5 = os_log_create(v3, [v4 UTF8String]);
  v6 = log_log;
  log_log = v5;
}

+ (NSSet)requiredFieldNames
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"pageRequestedTime", @"requestStartTime", @"requestEndTime", @"jsCallStartTime", @"jsCallEndTime", @"rootViewModelParseStartTime", @"rootViewModelParseEndTime", @"pageUserReadyTime", 0}];

  return v2;
}

+ (void)overlayRequestedWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:0 withName:@"overlayRequested"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_EVENT, tag, "overlayRequested", &unk_22274F417, v7, 2u);
  }
}

+ (void)modelPrefetchDidBeginWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"modelPrefetchStart"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_BEGIN, tag, "modelPrefetch", &unk_22274F417, v7, 2u);
  }
}

+ (void)modelPrefetchDidEndWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"modelPrefetchEnd"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_END, tag, "modelPrefetch", &unk_22274F417, v7, 2u);
  }
}

+ (void)pageRequestedWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:0 withName:@"pageRequested"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_EVENT, tag, "pageRequested", &unk_22274F417, v7, 2u);
  }
}

+ (void)bootstrapDidBeginWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"bootstrapStart"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_BEGIN, tag, "bootstrap", &unk_22274F417, v7, 2u);
  }
}

+ (void)bootstrapDidEndWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"bootstrapEnd"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_END, tag, "bootstrap", &unk_22274F417, v7, 2u);
  }
}

+ (void)launchCorrelationKeyWithTag:(unint64_t)tag withString:(id)string
{
  v12 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  [self willEmitSignpostOfType:1 withName:@"launchCorrelationKey"];
  v7 = [self log];
  v8 = v7;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = 138412290;
    v11 = stringCopy;
    _os_signpost_emit_with_name_impl(&dword_222629000, v8, OS_SIGNPOST_EVENT, tag, "launchCorrelationKey", "String=%{signpost.description:attribute}@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)requestDidBeginWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"requestStart"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_BEGIN, tag, "request", &unk_22274F417, v7, 2u);
  }
}

+ (void)requestDidEndWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"requestEnd"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_END, tag, "request", &unk_22274F417, v7, 2u);
  }
}

+ (void)jsStackBootstrapDidBeginWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"jsStackBootstrapStart"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_BEGIN, tag, "jsStackBootstrap", &unk_22274F417, v7, 2u);
  }
}

+ (void)jsStackBootstrapDidEndWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"jsStackBootstrapEnd"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_END, tag, "jsStackBootstrap", &unk_22274F417, v7, 2u);
  }
}

+ (void)jsCallDidBeginWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"jsCallStart"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_BEGIN, tag, "jsCall", &unk_22274F417, v7, 2u);
  }
}

+ (void)jsCallDidEndWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"jsCallEnd"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_END, tag, "jsCall", &unk_22274F417, v7, 2u);
  }
}

+ (void)rootViewModelParseDidBeginWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"rootViewModelParseStart"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_BEGIN, tag, "rootViewModelParse", &unk_22274F417, v7, 2u);
  }
}

+ (void)rootViewModelParseDidEndWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"rootViewModelParseEnd"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_END, tag, "rootViewModelParse", &unk_22274F417, v7, 2u);
  }
}

+ (void)rootViewModelPresentWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:0 withName:@"rootViewModelPresent"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_EVENT, tag, "rootViewModelPresent", &unk_22274F417, v7, 2u);
  }
}

+ (void)resourceRequestDidBeginWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"resourceRequestStart"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_BEGIN, tag, "resourceRequest", &unk_22274F417, v7, 2u);
  }
}

+ (void)resourceRequestDidEndWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:3 withName:@"resourceRequestEnd"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_INTERVAL_END, tag, "resourceRequest", &unk_22274F417, v7, 2u);
  }
}

+ (void)pageUserReadyWithTag:(unint64_t)tag
{
  [self willEmitSignpostOfType:0 withName:@"pageUserReady"];
  v5 = [self log];
  v6 = v5;
  if (tag - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_222629000, v6, OS_SIGNPOST_EVENT, tag, "pageUserReady", &unk_22274F417, v7, 2u);
  }
}

@end