@interface AXLoggingSubsystem
+ (BOOL)willLogDebug;
+ (BOOL)willLogInfo;
+ (id)_errorWithMessage:(id)a3 underlyingError:(id)a4;
+ (id)errorWithDescription:(id)a3;
+ (id)sharedInstance;
+ (id)subsystems;
+ (id)wrapError:(id)a3 description:(id)a4;
+ (void)initialize;
+ (void)initializeSubsytem;
@end

@implementation AXLoggingSubsystem

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AXLoggingSubsystem_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_System;

  return v2;
}

uint64_t __36__AXLoggingSubsystem_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_System = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[AXLoggingSubsystem initialize];
  }
}

uint64_t __32__AXLoggingSubsystem_initialize__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = SubsystemLock;
  SubsystemLock = v0;

  Subsystems = objc_alloc_init(MEMORY[0x1E695DF70]);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)initializeSubsytem
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AXLoggingSubsystem_initializeSubsytem__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initializeSubsytem_onceToken != -1)
  {
    dispatch_once(&initializeSubsytem_onceToken, block);
  }
}

void __40__AXLoggingSubsystem_initializeSubsytem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  ClassList = objc_getClassList(0, 0);
  v4 = malloc_type_malloc(8 * ClassList, 0x80040B8603338uLL);
  v5 = objc_getClassList(v4, ClassList);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5;
    do
    {
      Superclass = v4[v6];
      do
      {
        Superclass = class_getSuperclass(Superclass);
      }

      while (Superclass && Superclass != v2);
      if (Superclass)
      {
        [Subsystems addObject:v4[v6]];
      }

      ++v6;
    }

    while (v6 != v7);
  }

  free(v4);
}

+ (id)subsystems
{
  [a1 initializeSubsytem];
  v2 = [Subsystems copy];

  return v2;
}

+ (id)_errorWithMessage:(id)a3 underlyingError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = v8;
  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A588]];
  }

  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v10 = MEMORY[0x1E696ABC0];
  v11 = [a1 identifier];
  v12 = [v10 errorWithDomain:v11 code:0 userInfo:v9];

  return v12;
}

+ (id)errorWithDescription:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = a3;
    v6 = [[v4 alloc] initWithFormat:v5 arguments:&v10];
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 _errorWithMessage:v6 underlyingError:0];

  return v7;
}

+ (id)wrapError:(id)a3 description:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = a4;
    a4 = [[v7 alloc] initWithFormat:v8 arguments:&v12];
  }

  v9 = [a1 _errorWithMessage:a4 underlyingError:v6];

  return v9;
}

+ (BOOL)willLogInfo
{
  v2 = [a1 identifier];
  v3 = AXWillLogInfoWithFacility(v2);

  return v3;
}

+ (BOOL)willLogDebug
{
  v2 = [a1 identifier];
  v3 = AXWillLogDebugWithFacility(v2);

  return v3;
}

@end