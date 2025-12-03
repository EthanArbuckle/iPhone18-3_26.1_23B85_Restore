@interface AXLoggingSubsystem
+ (BOOL)willLogDebug;
+ (BOOL)willLogInfo;
+ (id)_errorWithMessage:(id)message underlyingError:(id)error;
+ (id)errorWithDescription:(id)description;
+ (id)sharedInstance;
+ (id)subsystems;
+ (id)wrapError:(id)error description:(id)description;
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
  block[4] = self;
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
  block[4] = self;
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
  [self initializeSubsytem];
  v2 = [Subsystems copy];

  return v2;
}

+ (id)_errorWithMessage:(id)message underlyingError:(id)error
{
  messageCopy = message;
  errorCopy = error;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = dictionary;
  if (messageCopy)
  {
    [dictionary setObject:messageCopy forKeyedSubscript:*MEMORY[0x1E696A588]];
  }

  if (errorCopy)
  {
    [v9 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v10 = MEMORY[0x1E696ABC0];
  identifier = [self identifier];
  v12 = [v10 errorWithDomain:identifier code:0 userInfo:v9];

  return v12;
}

+ (id)errorWithDescription:(id)description
{
  if (description)
  {
    v4 = MEMORY[0x1E696AEC0];
    descriptionCopy = description;
    v6 = [[v4 alloc] initWithFormat:descriptionCopy arguments:&v10];
  }

  else
  {
    v6 = 0;
  }

  v7 = [self _errorWithMessage:v6 underlyingError:0];

  return v7;
}

+ (id)wrapError:(id)error description:(id)description
{
  errorCopy = error;
  if (description)
  {
    v7 = MEMORY[0x1E696AEC0];
    descriptionCopy = description;
    description = [[v7 alloc] initWithFormat:descriptionCopy arguments:&v12];
  }

  v9 = [self _errorWithMessage:description underlyingError:errorCopy];

  return v9;
}

+ (BOOL)willLogInfo
{
  identifier = [self identifier];
  v3 = AXWillLogInfoWithFacility(identifier);

  return v3;
}

+ (BOOL)willLogDebug
{
  identifier = [self identifier];
  v3 = AXWillLogDebugWithFacility(identifier);

  return v3;
}

@end