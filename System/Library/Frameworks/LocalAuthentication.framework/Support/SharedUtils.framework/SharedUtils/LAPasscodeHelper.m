@interface LAPasscodeHelper
+ (id)sharedInstance;
- (BOOL)accountBlockedForUserID:(id)a3;
- (BOOL)isPasscodeSetWithError:(id *)a3;
- (double)backoffTimeIntervalForUserID:(id)a3;
- (id)dumpStatus;
- (int64_t)failedAttemptsForUserID:(id)a3;
- (int64_t)maxUnlockAttemptsForUserID:(id)a3;
- (int64_t)passcodeScreenStyleWithPolicy:(int64_t)a3 options:(id)a4 darkInterface:(BOOL)a5;
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

- (BOOL)isPasscodeSetWithError:(id *)a3
{
  v5 = geteuid();

  return [(LAPasscodeHelper *)self isPasscodeSetForUser:v5 error:a3];
}

- (BOOL)accountBlockedForUserID:(id)a3
{
  v3 = MEMORY[0x1E69AD2A0];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 accountBlockedForUserID:v4];

  return v6;
}

- (double)backoffTimeIntervalForUserID:(id)a3
{
  v3 = MEMORY[0x1E69AD2A0];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 backoffTimeIntervalForUserID:v4];
  v7 = v6;

  return v7;
}

- (int64_t)failedAttemptsForUserID:(id)a3
{
  v3 = MEMORY[0x1E69AD2A0];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 failedAttemptsForUserID:v4];

  return v6;
}

- (int64_t)maxUnlockAttemptsForUserID:(id)a3
{
  v3 = MEMORY[0x1E69AD2A0];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 maxUnlockAttemptsForUserID:v4];

  return v6;
}

- (int64_t)passcodeScreenStyleWithPolicy:(int64_t)a3 options:(id)a4 darkInterface:(BOOL)a5
{
  v5 = a5;
  v6 = a3 == 1004;
  v7 = [a4 objectForKeyedSubscript:&unk_1F5A79350];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue];
  }

  else
  {
    v9 = v6 ^ v5;
  }

  return v9;
}

- (int64_t)passcodeType
{
  v2 = +[LAPasscodeHelperPasscodeStateRepository currentState];
  v3 = [v2 passcodeType];

  return v3;
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