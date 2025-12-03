@interface INCreateTaskListIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INCreateTaskListIntentResponse)initWithBackingStore:(id)store;
- (INCreateTaskListIntentResponse)initWithCode:(INCreateTaskListIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INCreateTaskListIntentResponse)initWithCoder:(id)coder;
- (INCreateTaskListIntentResponseCode)code;
- (INTaskList)createdTaskList;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setCreatedTaskList:(INTaskList *)createdTaskList;
@end

@implementation INCreateTaskListIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INCreateTaskListIntentResponse *)self code];
  v4 = code;
  if (code < (INCreateTaskListIntentResponseCodeFailure|INCreateTaskListIntentResponseCodeInProgress))
  {
    null = off_1E7285B98[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"createdTaskList";
  v13[0] = null;
  createdTaskList = [(INCreateTaskListIntentResponse *)self createdTaskList];
  null2 = createdTaskList;
  if (!createdTaskList)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!createdTaskList)
  {
  }

  if (v4 >= 6)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setCreatedTaskList:(INTaskList *)createdTaskList
{
  v4 = createdTaskList;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTaskList(v4);

  [_responseMessagePBRepresentation setCreatedTaskList:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (INTaskList)createdTaskList
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  createdTaskList = [_responseMessagePBRepresentation createdTaskList];
  v4 = INIntentSlotValueTransformFromTaskList(createdTaskList);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INCreateTaskListIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INCreateTaskListIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INCreateTaskListIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INCreateTaskListIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INCreateTaskListIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INCreateTaskListIntentResponseCodeFailureRequiringAppLaunch"];

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
  code = [(INCreateTaskListIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INCreateTaskListIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INCreateTaskListIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INCreateTaskListIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INCreateTaskListIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INCreateTaskListIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INCreateTaskListIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INCreateTaskListIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INCreateTaskListIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INCreateTaskListIntentResponse)initWithCode:(INCreateTaskListIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INCreateTaskListIntentResponseCodeFailureRequiringAppLaunch)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7285B98[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INCreateTaskListIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INCreateTaskListIntentResponse;
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