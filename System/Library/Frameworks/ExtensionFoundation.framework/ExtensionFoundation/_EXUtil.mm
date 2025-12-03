@interface _EXUtil
+ (const)auditTokenForCurrentProcess;
+ (id)createRunningExtensionWithClassName:(id)name error:(id *)error;
+ (id)ditionaryFromPropertyList:(id)list;
+ (id)xpcObjectFromDictionary:(id)dictionary;
+ (void)_checkIn;
+ (void)_getEntryPointFunction;
+ (void)bootstrap;
+ (void)queryControllerDelegate:(id)delegate didUpdateController:(id)controller;
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

+ (void)queryControllerDelegate:(id)delegate didUpdateController:(id)controller
{
  delegateCopy = delegate;
  controllerCopy = controller;
  v8 = delegateCopy;
  if (objc_opt_respondsToSelector())
  {
    [v8 queryControllerDidUpdate:controllerCopy];
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = objc_opt_new();
    [v8 queryControllerDidUpdate:controllerCopy resultDifference:v7];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = objc_opt_new();
    [v8 queryControllerDidUpdate:controllerCopy difference:v7];
  }

LABEL_8:
}

+ (id)ditionaryFromPropertyList:(id)list
{
  listCopy = list;
  if (objc_opt_respondsToSelector())
  {
    _expensiveDictionaryRepresentation = [listCopy _expensiveDictionaryRepresentation];
  }

  else
  {
    _expensiveDictionaryRepresentation = MEMORY[0x1E695E0F8];
  }

  return _expensiveDictionaryRepresentation;
}

+ (id)xpcObjectFromDictionary:(id)dictionary
{
  v3 = _CFXPCCreateXPCObjectFromCFObject();

  return v3;
}

+ (id)createRunningExtensionWithClassName:(id)name error:(id *)error
{
  v5 = NSClassFromString(name);
  if (v5)
  {
    v6 = objc_alloc_init(v5);
  }

  else if (error)
  {
    _EX_parameterError = [MEMORY[0x1E696ABC0] _EX_parameterError];
    v8 = _EX_parameterError;
    v6 = 0;
    *error = _EX_parameterError;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end