@interface INAddTasksIntentResponse
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INAddTasksIntentResponse)initWithBackingStore:(id)a3;
- (INAddTasksIntentResponse)initWithCode:(INAddTasksIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INAddTasksIntentResponse)initWithCoder:(id)a3;
- (INAddTasksIntentResponseCode)code;
- (INTaskList)modifiedTaskList;
- (NSArray)addedTasks;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (unint64_t)warnings;
- (void)encodeWithCoder:(id)a3;
- (void)setAddedTasks:(NSArray *)addedTasks;
- (void)setModifiedTaskList:(INTaskList *)modifiedTaskList;
- (void)setWarnings:(unint64_t)a3;
@end

@implementation INAddTasksIntentResponse

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"code";
  v3 = [(INAddTasksIntentResponse *)self code];
  v4 = v3;
  if (v3 < (INAddTasksIntentResponseCodeFailure|INAddTasksIntentResponseCodeInProgress))
  {
    v5 = off_1E727E138[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v15[0] = v5;
  v14[1] = @"modifiedTaskList";
  v7 = [(INAddTasksIntentResponse *)self modifiedTaskList];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"addedTasks";
  v9 = [(INAddTasksIntentResponse *)self addedTasks];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (v4 >= 6)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setWarnings:(unint64_t)a3
{
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 clearWarnings];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__INAddTasksIntentResponse_setWarnings___block_invoke;
  v8[3] = &unk_1E7288628;
  v8[4] = self;
  INTaskWarningCodeOptionsEnumerateBackingTypes(a3, v8);
  v6 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v6 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

void __40__INAddTasksIntentResponse_setWarnings___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _responseMessagePBRepresentation];
  [v3 addWarnings:a2];
}

- (void)setAddedTasks:(NSArray *)addedTasks
{
  v4 = addedTasks;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTasks(v4);

  [v5 setAddedTasks:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setModifiedTaskList:(INTaskList *)modifiedTaskList
{
  v4 = modifiedTaskList;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTaskList(v4);

  [v5 setModifiedTaskList:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (unint64_t)warnings
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 warningsCount];

  v5 = 0;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
      v8 = [v7 warningsAtIndex:i];
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
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 addedTasks];
  v4 = INIntentSlotValueTransformFromTasks(v3);

  return v4;
}

- (INTaskList)modifiedTaskList
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 modifiedTaskList];
  v4 = INIntentSlotValueTransformFromTaskList(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INAddTasksIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INAddTasksIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INAddTasksIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INAddTasksIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INAddTasksIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INAddTasksIntentResponseCodeFailureRequiringAppLaunch"];

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
  v2 = [(INAddTasksIntentResponse *)self code];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[v2 - 1];
  }
}

- (INAddTasksIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INAddTasksIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INAddTasksIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INAddTasksIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INAddTasksIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INAddTasksIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INAddTasksIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INAddTasksIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
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

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDB0[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 2;
  if (a3 != 2)
  {
    v5 = a3 == 5;
  }

  v6 = 3;
  v7 = 4;
  if (a5)
  {
    v7 = 5;
  }

  if (a3 != 1)
  {
    v7 = 0;
  }

  if (a3)
  {
    v6 = v7;
  }

  if (a3 <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end