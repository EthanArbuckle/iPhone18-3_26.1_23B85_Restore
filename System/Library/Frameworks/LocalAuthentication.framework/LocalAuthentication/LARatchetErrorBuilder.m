@interface LARatchetErrorBuilder
+ (id)_errorWithCode:(int64_t)a3 debugDescription:(id)a4;
+ (id)errorNotArmedWithRatchetState:(id)a3;
+ (id)genericErrorWithUnderlyingError:(id)a3;
+ (id)ratchetErrorWithError:(id)a3;
@end

@implementation LARatchetErrorBuilder

+ (id)errorNotArmedWithRatchetState:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[LARatchetState alloc] initWithState:v4];

  v6 = *MEMORY[0x1E696A278];
  v11[0] = @"RatchetState";
  v11[1] = v6;
  v12[0] = v5;
  v12[1] = @"Ratchet not ready";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [a1 _errorWithCode:0 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)genericErrorWithUnderlyingError:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696AA08];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [a1 _errorWithCode:1 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)ratchetErrorWithError:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E69AD268] error:v4 hasCode:*MEMORY[0x1E69AD100] subcode:*MEMORY[0x1E69AD148]])
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"RatchetState"];
    v7 = [a1 errorNotArmedWithRatchetState:v6];

LABEL_16:
    goto LABEL_17;
  }

  if ([MEMORY[0x1E69AD268] error:v4 hasCode:*MEMORY[0x1E69AD118]])
  {
    v5 = [v4 userInfo];
    v8 = [a1 notInteractiveErrorWithUserInfo:v5];
LABEL_15:
    v7 = v8;
    goto LABEL_16;
  }

  if ([MEMORY[0x1E69AD268] error:v4 hasCode:*MEMORY[0x1E69AD110]])
  {
    v5 = [v4 userInfo];
    v8 = [a1 deviceTypeNotSupportedWithUserInfo:v5];
    goto LABEL_15;
  }

  if ([MEMORY[0x1E69AD268] error:v4 hasCode:*MEMORY[0x1E69AD138]])
  {
    v5 = [v4 userInfo];
    v8 = [a1 userCustomCancelErrorWithUserInfo:v5];
    goto LABEL_15;
  }

  if ([MEMORY[0x1E69AD268] error:v4 hasCode:*MEMORY[0x1E69AD128]])
  {
    v5 = [v4 userInfo];
    v8 = [a1 passcodeNotSetWithUserInfo:v5];
    goto LABEL_15;
  }

  if ([MEMORY[0x1E69AD268] error:v4 hasCode:*MEMORY[0x1E69AD108]])
  {
    v5 = [v4 userInfo];
    v8 = [a1 biometryNotEnrolledWithUserInfo:v5];
    goto LABEL_15;
  }

  if ([MEMORY[0x1E69AD268] error:v4 hasCode:*MEMORY[0x1E69AD130] subcode:*MEMORY[0x1E69AD140]])
  {
    v5 = [v4 userInfo];
    v8 = [a1 beforeFirstUnlockWithUserInfo:v5];
    goto LABEL_15;
  }

  v7 = [a1 genericErrorWithUnderlyingError:v4];
LABEL_17:

  return v7;
}

+ (id)_errorWithCode:(int64_t)a3 debugDescription:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696A278];
  v13[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [a1 _errorWithCode:a3 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end