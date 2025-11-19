@interface LAPasscodeHelperPasscodeStateRepository
+ (id)currentState;
@end

@implementation LAPasscodeHelperPasscodeStateRepository

+ (id)currentState
{
  if (currentState_onceToken != -1)
  {
    +[LAPasscodeHelperPasscodeStateRepository currentState];
  }

  v2 = currentState_sharedInstance;
  if (!currentState_sharedInstance)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v3 raise:v4 format:{@"%@ is not available in this platform", v6}];

    v2 = currentState_sharedInstance;
  }

  return v2;
}

uint64_t __55__LAPasscodeHelperPasscodeStateRepository_currentState__block_invoke()
{
  currentState_sharedInstance = objc_alloc_init(LAPasscodeHelperPasscodeStateManagedSettings);

  return MEMORY[0x1EEE66BB8]();
}

@end