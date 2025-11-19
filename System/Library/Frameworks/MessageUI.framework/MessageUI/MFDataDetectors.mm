@interface MFDataDetectors
+ (BOOL)urlIfyNode:(id)a3;
+ (BOOL)urlIfyNode:(id)a3 phoneNumberTypes:(unint64_t)a4;
+ (Class)_DDURLifierClass;
+ (id)sharedDetectionController;
+ (id)urlMatchesForString:(id)a3;
+ (id)urlMatchesForString:(id)a3 includingTel:(BOOL)a4;
@end

@implementation MFDataDetectors

+ (id)sharedDetectionController
{
  v11 = *MEMORY[0x1E69E9840];
  if (sharedDetectionController__DDDetectionControllerClass)
  {
    v2 = [sharedDetectionController__DDDetectionControllerClass sharedController];
  }

  else
  {
    v3 = objc_opt_self();
    v4 = objc_sync_enter(v3);
    if ((sharedDetectionController_inited & 1) == 0)
    {
      sharedDetectionController_inited = 1;
      v5 = MEMORY[0x1BFB4B420](v4);
      v6 = [v5 stringByAppendingPathComponent:@"/System/Library/PrivateFrameworks/DataDetectorsUI.framework/DataDetectorsUI"];

      if (dlopen([v6 fileSystemRepresentation], 4))
      {
        sharedDetectionController__DDDetectionControllerClass = NSClassFromString(&cfstr_Dddetectioncon.isa);
      }

      else
      {
        v7 = MFLogGeneral();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315138;
          v10 = dlerror();
          _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Failed to load DataDetectorsUI.framework (%s)", &v9, 0xCu);
        }
      }
    }

    objc_sync_exit(v3);

    v2 = [sharedDetectionController__DDDetectionControllerClass sharedController];
  }

  return v2;
}

+ (Class)_DDURLifierClass
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _DDURLifierClass__DDURLifierClass;
  if (!_DDURLifierClass__DDURLifierClass)
  {
    v3 = objc_opt_self();
    v4 = objc_sync_enter(v3);
    if ((_DDURLifierClass_inited & 1) == 0)
    {
      _DDURLifierClass_inited = 1;
      v5 = MEMORY[0x1BFB4B420](v4);
      v6 = [v5 stringByAppendingPathComponent:@"/System/Library/PrivateFrameworks/DataDetectorsCore.framework/DataDetectorsCore"];

      if (dlopen([v6 fileSystemRepresentation], 4))
      {
        _DDURLifierClass__DDURLifierClass = NSClassFromString(&cfstr_Ddurlifier.isa);
      }

      else
      {
        v7 = MFLogGeneral();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315138;
          v11 = dlerror();
          _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Failed to load DataDetectorsCore.framework (%s)", &v10, 0xCu);
        }
      }
    }

    objc_sync_exit(v3);

    v2 = _DDURLifierClass__DDURLifierClass;
  }

  v8 = v2;

  return v8;
}

+ (id)urlMatchesForString:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "_DDURLifierClass")];

  return v5;
}

+ (id)urlMatchesForString:(id)a3 includingTel:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [objc_msgSend(a1 "_DDURLifierClass")];

  return v7;
}

+ (BOOL)urlIfyNode:(id)a3
{
  v4 = a3;
  LOBYTE(a1) = [objc_msgSend(a1 "_DDURLifierClass")];

  return a1;
}

+ (BOOL)urlIfyNode:(id)a3 phoneNumberTypes:(unint64_t)a4
{
  v6 = a3;
  LOBYTE(a4) = [objc_msgSend(a1 "_DDURLifierClass")];

  return a4;
}

@end