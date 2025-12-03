@interface INDeleteTasksIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INDeleteTasksIntentResponse)initWithBackingStore:(id)store;
- (INDeleteTasksIntentResponse)initWithCode:(INDeleteTasksIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INDeleteTasksIntentResponse)initWithCoder:(id)coder;
- (INDeleteTasksIntentResponseCode)code;
- (NSArray)deletedTasks;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setDeletedTasks:(NSArray *)deletedTasks;
@end

@implementation INDeleteTasksIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INDeleteTasksIntentResponse *)self code];
  v4 = code;
  if (code < (INDeleteTasksIntentResponseCodeFailure|INDeleteTasksIntentResponseCodeInProgress))
  {
    null = off_1E7287220[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"deletedTasks";
  v13[0] = null;
  deletedTasks = [(INDeleteTasksIntentResponse *)self deletedTasks];
  null2 = deletedTasks;
  if (!deletedTasks)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!deletedTasks)
  {
  }

  if (v4 >= 6)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setDeletedTasks:(NSArray *)deletedTasks
{
  v4 = deletedTasks;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTasks(v4);

  [_responseMessagePBRepresentation setDeletedTasks:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSArray)deletedTasks
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  deletedTasks = [_responseMessagePBRepresentation deletedTasks];
  v4 = INIntentSlotValueTransformFromTasks(deletedTasks);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INDeleteTasksIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INDeleteTasksIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INDeleteTasksIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INDeleteTasksIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INDeleteTasksIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INDeleteTasksIntentResponseCodeFailureRequiringAppLaunch"];

  if (v6)
  {
    return 5;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INDeleteTasksIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INDeleteTasksIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INDeleteTasksIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INDeleteTasksIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INDeleteTasksIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INDeleteTasksIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INDeleteTasksIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INDeleteTasksIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INDeleteTasksIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INDeleteTasksIntentResponse)initWithCode:(INDeleteTasksIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INDeleteTasksIntentResponseCodeFailureRequiringAppLaunch)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7287220[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INDeleteTasksIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INDeleteTasksIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDB0[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 2;
  if (type != 2)
  {
    v5 = type == 5;
  }

  v6 = 3;
  v7 = 4;
  if (requested)
  {
    v7 = 5;
  }

  if (type != 1)
  {
    v7 = 0;
  }

  if (type)
  {
    v6 = v7;
  }

  if (type <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end