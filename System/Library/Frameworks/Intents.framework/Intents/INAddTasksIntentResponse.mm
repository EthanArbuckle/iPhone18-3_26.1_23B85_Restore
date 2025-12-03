@interface INAddTasksIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INAddTasksIntentResponse)initWithBackingStore:(id)store;
- (INAddTasksIntentResponse)initWithCode:(INAddTasksIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INAddTasksIntentResponse)initWithCoder:(id)coder;
- (INAddTasksIntentResponseCode)code;
- (INTaskList)modifiedTaskList;
- (NSArray)addedTasks;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (unint64_t)warnings;
- (void)encodeWithCoder:(id)coder;
- (void)setAddedTasks:(NSArray *)addedTasks;
- (void)setModifiedTaskList:(INTaskList *)modifiedTaskList;
- (void)setWarnings:(unint64_t)warnings;
@end

@implementation INAddTasksIntentResponse

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"code";
  code = [(INAddTasksIntentResponse *)self code];
  v4 = code;
  if (code < (INAddTasksIntentResponseCodeFailure|INAddTasksIntentResponseCodeInProgress))
  {
    null = off_1E727E138[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v15[0] = null;
  v14[1] = @"modifiedTaskList";
  modifiedTaskList = [(INAddTasksIntentResponse *)self modifiedTaskList];
  null2 = modifiedTaskList;
  if (!modifiedTaskList)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"addedTasks";
  addedTasks = [(INAddTasksIntentResponse *)self addedTasks];
  null3 = addedTasks;
  if (!addedTasks)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (!addedTasks)
  {
  }

  if (!modifiedTaskList)
  {
  }

  if (v4 >= 6)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setWarnings:(unint64_t)warnings
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation clearWarnings];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__INAddTasksIntentResponse_setWarnings___block_invoke;
  v8[3] = &unk_1E7288628;
  v8[4] = self;
  INTaskWarningCodeOptionsEnumerateBackingTypes(warnings, v8);
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

void __40__INAddTasksIntentResponse_setWarnings___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _responseMessagePBRepresentation];
  [v3 addWarnings:a2];
}

- (void)setAddedTasks:(NSArray *)addedTasks
{
  v4 = addedTasks;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTasks(v4);

  [_responseMessagePBRepresentation setAddedTasks:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setModifiedTaskList:(INTaskList *)modifiedTaskList
{
  v4 = modifiedTaskList;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTaskList(v4);

  [_responseMessagePBRepresentation setModifiedTaskList:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (unint64_t)warnings
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  warningsCount = [_responseMessagePBRepresentation warningsCount];

  v5 = 0;
  if (warningsCount)
  {
    for (i = 0; i != warningsCount; ++i)
    {
      _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
      v8 = [_responseMessagePBRepresentation2 warningsAtIndex:i];
      v9 = v5 | 4;
      v10 = v5 | 8;
      if (v8 != 4)
      {
        v10 = v5;
      }

      if (v8 != 3)
      {
        v9 = v10;
      }

      v11 = v5 | 1;
      v12 = v5 | 2;
      if (v8 != 2)
      {
        v12 = v5;
      }

      if (v8 != 1)
      {
        v11 = v12;
      }

      if (v8 <= 2)
      {
        v5 = v11;
      }

      else
      {
        v5 = v9;
      }
    }
  }

  return v5;
}

- (NSArray)addedTasks
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  addedTasks = [_responseMessagePBRepresentation addedTasks];
  v4 = INIntentSlotValueTransformFromTasks(addedTasks);

  return v4;
}

- (INTaskList)modifiedTaskList
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  modifiedTaskList = [_responseMessagePBRepresentation modifiedTaskList];
  v4 = INIntentSlotValueTransformFromTaskList(modifiedTaskList);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INAddTasksIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INAddTasksIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INAddTasksIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INAddTasksIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INAddTasksIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INAddTasksIntentResponseCodeFailureRequiringAppLaunch"];

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
  code = [(INAddTasksIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INAddTasksIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INAddTasksIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INAddTasksIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INAddTasksIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INAddTasksIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INAddTasksIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INAddTasksIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INAddTasksIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INAddTasksIntentResponse)initWithCode:(INAddTasksIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INAddTasksIntentResponseCodeFailureRequiringAppLaunch)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727E138[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INAddTasksIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INAddTasksIntentResponse;
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