@interface LARatchetErrorBuilder
+ (id)_errorWithCode:(int64_t)code debugDescription:(id)description;
+ (id)errorNotArmedWithRatchetState:(id)state;
+ (id)genericErrorWithUnderlyingError:(id)error;
+ (id)ratchetErrorWithError:(id)error;
@end

@implementation LARatchetErrorBuilder

+ (id)errorNotArmedWithRatchetState:(id)state
{
  v12[2] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = [[LARatchetState alloc] initWithState:stateCopy];

  v6 = *MEMORY[0x1E696A278];
  v11[0] = @"RatchetState";
  v11[1] = v6;
  v12[0] = v5;
  v12[1] = @"Ratchet not ready";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [self _errorWithCode:0 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)genericErrorWithUnderlyingError:(id)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696AA08];
  v11[0] = error;
  v4 = MEMORY[0x1E695DF20];
  errorCopy = error;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [self _errorWithCode:1 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)ratchetErrorWithError:(id)error
{
  errorCopy = error;
  if ([MEMORY[0x1E69AD268] error:errorCopy hasCode:*MEMORY[0x1E69AD100] subcode:*MEMORY[0x1E69AD148]])
  {
    userInfo = [errorCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:@"RatchetState"];
    v7 = [self errorNotArmedWithRatchetState:v6];

LABEL_16:
    goto LABEL_17;
  }

  if ([MEMORY[0x1E69AD268] error:errorCopy hasCode:*MEMORY[0x1E69AD118]])
  {
    userInfo = [errorCopy userInfo];
    v8 = [self notInteractiveErrorWithUserInfo:userInfo];
LABEL_15:
    v7 = v8;
    goto LABEL_16;
  }

  if ([MEMORY[0x1E69AD268] error:errorCopy hasCode:*MEMORY[0x1E69AD110]])
  {
    userInfo = [errorCopy userInfo];
    v8 = [self deviceTypeNotSupportedWithUserInfo:userInfo];
    goto LABEL_15;
  }

  if ([MEMORY[0x1E69AD268] error:errorCopy hasCode:*MEMORY[0x1E69AD138]])
  {
    userInfo = [errorCopy userInfo];
    v8 = [self userCustomCancelErrorWithUserInfo:userInfo];
    goto LABEL_15;
  }

  if ([MEMORY[0x1E69AD268] error:errorCopy hasCode:*MEMORY[0x1E69AD128]])
  {
    userInfo = [errorCopy userInfo];
    v8 = [self passcodeNotSetWithUserInfo:userInfo];
    goto LABEL_15;
  }

  if ([MEMORY[0x1E69AD268] error:errorCopy hasCode:*MEMORY[0x1E69AD108]])
  {
    userInfo = [errorCopy userInfo];
    v8 = [self biometryNotEnrolledWithUserInfo:userInfo];
    goto LABEL_15;
  }

  if ([MEMORY[0x1E69AD268] error:errorCopy hasCode:*MEMORY[0x1E69AD130] subcode:*MEMORY[0x1E69AD140]])
  {
    userInfo = [errorCopy userInfo];
    v8 = [self beforeFirstUnlockWithUserInfo:userInfo];
    goto LABEL_15;
  }

  v7 = [self genericErrorWithUnderlyingError:errorCopy];
LABEL_17:

  return v7;
}

+ (id)_errorWithCode:(int64_t)code debugDescription:(id)description
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696A278];
  v13[0] = description;
  v6 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [self _errorWithCode:code userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end