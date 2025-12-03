@interface AXSimpleRuntimeManager
+ (id)sharedManager;
- (void)start;
@end

@implementation AXSimpleRuntimeManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[AXSimpleRuntimeManager sharedManager];
  }

  v3 = sharedManager_SharedManager;

  return v3;
}

uint64_t __39__AXSimpleRuntimeManager_sharedManager__block_invoke()
{
  sharedManager_SharedManager = objc_alloc_init(AXSimpleRuntimeManager);

  return MEMORY[0x1EEE66BB8]();
}

- (void)start
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  selfCopy = self;
  _os_log_error_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_ERROR, "Could not register system wide server: %ld", &v2, 0xCu);
}

@end