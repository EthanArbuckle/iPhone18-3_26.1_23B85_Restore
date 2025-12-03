@interface TKTokenService_Subsystem
+ (id)initForPlugInKit;
+ (void)initForPlugInKit;
@end

@implementation TKTokenService_Subsystem

+ (id)initForPlugInKit
{
  v3 = TK_LOG_token();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[TKTokenService_Subsystem initForPlugInKit];
  }

  [MEMORY[0x1E696B0F8] _startListening];
  v4 = objc_alloc_init(self);

  return v4;
}

+ (void)initForPlugInKit
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end