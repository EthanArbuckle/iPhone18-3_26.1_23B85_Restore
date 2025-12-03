@interface _ANEDeviceController
+ (_ANEDeviceController)controllerWithProgramHandle:(unint64_t)handle;
+ (id)sharedPrivilegedConnection;
+ (void)initialize;
- (_ANEDeviceController)initWithProgramHandle:(unint64_t)handle priviledged:(BOOL)priviledged;
- (void)start;
- (void)stop;
@end

@implementation _ANEDeviceController

+ (void)initialize
{
  if (+[_ANEDeviceController initialize]::onceToken != -1)
  {
    +[_ANEDeviceController initialize];
  }
}

- (void)start
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __29___ANEDeviceController_start__block_invoke;
  v2[3] = &unk_1E79BA4A8;
  v2[4] = self;
  v2[5] = a2;
  dispatch_sync(gANEControllerQueue, v2);
}

+ (id)sharedPrivilegedConnection
{
  if (+[_ANEDeviceController sharedPrivilegedConnection]::onceToken != -1)
  {
    +[_ANEDeviceController sharedPrivilegedConnection];
  }

  v3 = +[_ANEDeviceController sharedPrivilegedConnection]::conn;

  return v3;
}

- (void)stop
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __28___ANEDeviceController_stop__block_invoke;
  v2[3] = &unk_1E79BA4A8;
  v2[4] = self;
  v2[5] = a2;
  dispatch_sync(gANEControllerQueue, v2);
}

+ (_ANEDeviceController)controllerWithProgramHandle:(unint64_t)handle
{
  v3 = [[self alloc] initWithProgramHandle:handle priviledged:0];

  return v3;
}

- (_ANEDeviceController)initWithProgramHandle:(unint64_t)handle priviledged:(BOOL)priviledged
{
  v7.receiver = self;
  v7.super_class = _ANEDeviceController;
  result = [(_ANEDeviceController *)&v7 init];
  if (result)
  {
    result->_usecount = 0;
    result->_device = 0;
    result->_programHandle = handle;
    result->_isPrivileged = priviledged;
  }

  return result;
}

- (void)initWithANEPrivilegedVM:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  _os_log_debug_impl(&dword_1AD246000, v3, OS_LOG_TYPE_DEBUG, "%@: ANEDeviceController calling ANECheckPrivilegedVMAccess", v4, 0xCu);
}

@end