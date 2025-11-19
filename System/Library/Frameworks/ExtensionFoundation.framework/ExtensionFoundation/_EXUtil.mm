@interface _EXUtil
+ (const)auditTokenForCurrentProcess;
+ (id)createRunningExtensionWithClassName:(id)a3 error:(id *)a4;
+ (id)ditionaryFromPropertyList:(id)a3;
+ (id)xpcObjectFromDictionary:(id)a3;
+ (void)_checkIn;
+ (void)_getEntryPointFunction;
+ (void)bootstrap;
+ (void)queryControllerDelegate:(id)a3 didUpdateController:(id)a4;
@end

@implementation _EXUtil

+ (const)auditTokenForCurrentProcess
{
  if (auditTokenForCurrentProcess_onceToken != -1)
  {
    +[_EXUtil auditTokenForCurrentProcess];
  }

  return &auditTokenForCurrentProcess_currentAuditToken;
}

+ (void)bootstrap
{
  v2 = dlsym(0xFFFFFFFFFFFFFFFELL, "_EXBootstrapExtensionKit");
  if (v2)
  {

    v2();
  }
}

+ (void)_getEntryPointFunction
{
  if (_getEntryPointFunction_onceToken != -1)
  {
    +[_EXUtil _getEntryPointFunction];
  }

  return _getEntryPointFunction_mainFunction;
}

+ (void)_checkIn
{
  v2 = _EXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[_EXUtil _checkIn];
  }

  +[EXXPCUtil checkInWithLaunchd];
  getpid();
  memorystatus_control();
}

+ (void)queryControllerDelegate:(id)a3 didUpdateController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v8 = v5;
  if (objc_opt_respondsToSelector())
  {
    [v8 queryControllerDidUpdate:v6];
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = objc_opt_new();
    [v8 queryControllerDidUpdate:v6 resultDifference:v7];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = objc_opt_new();
    [v8 queryControllerDidUpdate:v6 difference:v7];
  }

LABEL_8:
}

+ (id)ditionaryFromPropertyList:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _expensiveDictionaryRepresentation];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

+ (id)xpcObjectFromDictionary:(id)a3
{
  v3 = _CFXPCCreateXPCObjectFromCFObject();

  return v3;
}

+ (id)createRunningExtensionWithClassName:(id)a3 error:(id *)a4
{
  v5 = NSClassFromString(a3);
  if (v5)
  {
    v6 = objc_alloc_init(v5);
  }

  else if (a4)
  {
    v7 = [MEMORY[0x1E696ABC0] _EX_parameterError];
    v8 = v7;
    v6 = 0;
    *a4 = v7;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end