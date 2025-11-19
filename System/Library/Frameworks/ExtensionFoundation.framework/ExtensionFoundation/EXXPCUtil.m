@interface EXXPCUtil
+ (id)sharedInstance;
+ (int)addExternalServiceForPid:(int)a3 path:(id)a4 overlay:(id)a5;
+ (int)servicePidFromXPCConnection:(id)a3;
+ (void)assertIsExtensionProcess;
@end

@implementation EXXPCUtil

void __37__EXXPCUtil_assertIsExtensionProcess__block_invoke()
{
  getpid();
  v0 = launch_copy_extension_properties_for_pid();
  if (!v0)
  {
    __37__EXXPCUtil_assertIsExtensionProcess__block_invoke_cold_1();
  }

  xpc_release(v0);
}

+ (void)assertIsExtensionProcess
{
  if (assertIsExtensionProcess_safetyCheck != -1)
  {
    +[EXXPCUtil assertIsExtensionProcess];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[EXXPCUtil sharedInstance];
  }

  return sharedInstance_sharedInstance_1;
}

EXXPCUtil *__27__EXXPCUtil_sharedInstance__block_invoke()
{
  result = objc_alloc_init(EXXPCUtil);
  sharedInstance_sharedInstance_1 = result;
  return result;
}

+ (int)addExternalServiceForPid:(int)a3 path:(id)a4 overlay:(id)a5
{
  [a4 UTF8String];
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  v7 = launch_add_external_service();
  xpc_release(v6);
  return v7;
}

+ (int)servicePidFromXPCConnection:(id)a3
{
  v3 = launch_copy_extension_properties();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  int64 = xpc_dictionary_get_int64(v3, *MEMORY[0x1E69E9F38]);
  xpc_release(v4);
  return int64;
}

@end