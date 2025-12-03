@interface LAPasscodeHelper
+ (id)sharedInstance;
- (BOOL)accountBlockedForUserID:(id)d;
- (BOOL)isPasscodeSetWithError:(id *)error;
- (double)backoffTimeIntervalForUserID:(id)d;
- (id)dumpStatus;
- (int64_t)failedAttemptsForUserID:(id)d;
- (int64_t)maxUnlockAttemptsForUserID:(id)d;
- (int64_t)passcodeScreenStyleWithPolicy:(int64_t)policy options:(id)options darkInterface:(BOOL)interface;
- (int64_t)passcodeType;
@end

@implementation LAPasscodeHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[LAPasscodeHelper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __34__LAPasscodeHelper_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(LAPasscodeHelper);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isPasscodeSetWithError:(id *)error
{
  v5 = geteuid();

  return [(LAPasscodeHelper *)self isPasscodeSetForUser:v5 error:error];
}

- (BOOL)accountBlockedForUserID:(id)d
{
  v3 = MEMORY[0x1E69AD2A0];
  dCopy = d;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance accountBlockedForUserID:dCopy];

  return v6;
}

- (double)backoffTimeIntervalForUserID:(id)d
{
  v3 = MEMORY[0x1E69AD2A0];
  dCopy = d;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance backoffTimeIntervalForUserID:dCopy];
  v7 = v6;

  return v7;
}

- (int64_t)failedAttemptsForUserID:(id)d
{
  v3 = MEMORY[0x1E69AD2A0];
  dCopy = d;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance failedAttemptsForUserID:dCopy];

  return v6;
}

- (int64_t)maxUnlockAttemptsForUserID:(id)d
{
  v3 = MEMORY[0x1E69AD2A0];
  dCopy = d;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance maxUnlockAttemptsForUserID:dCopy];

  return v6;
}

- (int64_t)passcodeScreenStyleWithPolicy:(int64_t)policy options:(id)options darkInterface:(BOOL)interface
{
  interfaceCopy = interface;
  v6 = policy == 1004;
  v7 = [options objectForKeyedSubscript:&unk_1F5A79350];
  v8 = v7;
  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = v6 ^ interfaceCopy;
  }

  return integerValue;
}

- (int64_t)passcodeType
{
  v2 = +[LAPasscodeHelperPasscodeStateRepository currentState];
  passcodeType = [v2 passcodeType];

  return passcodeType;
}

- (id)dumpStatus
{
  v10[2] = *MEMORY[0x1E69E9840];
  v8[4] = self;
  v9[0] = @"isSet";
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__LAPasscodeHelper_dumpStatus__block_invoke;
  v8[3] = &unk_1E86B5DB8;
  v3 = __30__LAPasscodeHelper_dumpStatus__block_invoke(v8);
  v9[1] = @"type";
  v10[0] = v3;
  v4 = NSStringFromLAPasscodeType([(LAPasscodeHelper *)self passcodeType]);
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

__CFString *__30__LAPasscodeHelper_dumpStatus__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = 0;
  v2 = [v1 isPasscodeSetWithError:&v7];
  v3 = v7;
  v4 = v3;
  if (v2)
  {
    v5 = @"1";
  }

  else
  {
    v5 = [v3 description];
  }

  return v5;
}

@end