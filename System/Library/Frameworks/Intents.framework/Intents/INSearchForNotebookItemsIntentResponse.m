@interface INSearchForNotebookItemsIntentResponse
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INSearchForNotebookItemsIntentResponse)initWithBackingStore:(id)a3;
- (INSearchForNotebookItemsIntentResponse)initWithCode:(INSearchForNotebookItemsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSearchForNotebookItemsIntentResponse)initWithCoder:(id)a3;
- (INSearchForNotebookItemsIntentResponseCode)code;
- (INSortType)sortType;
- (NSArray)notes;
- (NSArray)taskLists;
- (NSArray)tasks;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
- (void)setNotes:(NSArray *)notes;
- (void)setSortType:(INSortType)sortType;
- (void)setTaskLists:(NSArray *)taskLists;
- (void)setTasks:(NSArray *)tasks;
@end

@implementation INSearchForNotebookItemsIntentResponse

- (id)_dictionaryRepresentation
{
  v21[5] = *MEMORY[0x1E69E9840];
  v20[0] = @"code";
  v3 = [(INSearchForNotebookItemsIntentResponse *)self code];
  v4 = v3;
  if (v3 < (INSearchForNotebookItemsIntentResponseCodeFailure|INSearchForNotebookItemsIntentResponseCodeInProgress))
  {
    v5 = off_1E7280570[v3];
    v18 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v18 = 0;
  }

  v21[0] = v5;
  v20[1] = @"notes";
  v6 = [(INSearchForNotebookItemsIntentResponse *)self notes];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v21[1] = v7;
  v20[2] = @"taskLists";
  v8 = [(INSearchForNotebookItemsIntentResponse *)self taskLists];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v21[2] = v9;
  v20[3] = @"tasks";
  v10 = [(INSearchForNotebookItemsIntentResponse *)self tasks];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21[3] = v11;
  v20[4] = @"sortType";
  v12 = [(INSearchForNotebookItemsIntentResponse *)self sortType];
  v13 = @"unknown";
  if (v12 == INSortTypeByDate)
  {
    v13 = @"byDate";
  }

  if (v12 == INSortTypeAsIs)
  {
    v13 = @"asIs";
  }

  v14 = v13;
  v21[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (v4 >= 6)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setSortType:(INSortType)sortType
{
  if (sortType == INSortTypeAsIs)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  if (sortType == INSortTypeByDate)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = v6;
  if (v5 == 0x7FFFFFFF)
  {
    [v6 setHasSortType:0];
  }

  else
  {
    [v6 setSortType:v5];
  }

  v9 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v8 = [v9 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v8];
}

- (void)setTasks:(NSArray *)tasks
{
  v4 = tasks;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTasks(v4);

  [v5 setTasks:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setTaskLists:(NSArray *)taskLists
{
  v4 = taskLists;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTaskLists(v4);

  [v5 setTaskLists:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setNotes:(NSArray *)notes
{
  v4 = notes;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToNotes(v4);

  [v5 setNotes:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (INSortType)sortType
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 hasSortType];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 sortType];
  v7 = 2 * (v6 == 1);
  if (!v6)
  {
    v7 = 1;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = INSortTypeUnknown;
  }

  return v8;
}

- (NSArray)tasks
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 tasks];
  v4 = INIntentSlotValueTransformFromTasks(v3);

  return v4;
}

- (NSArray)taskLists
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 taskLists];
  v4 = INIntentSlotValueTransformFromTaskLists(v3);

  return v4;
}

- (NSArray)notes
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 notes];
  v4 = INIntentSlotValueTransformFromNotes(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeFailureRequiringAppLaunch"];

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
  v2 = [(INSearchForNotebookItemsIntentResponse *)self code];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[v2 - 1];
  }
}

- (INSearchForNotebookItemsIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchForNotebookItemsIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSearchForNotebookItemsIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INSearchForNotebookItemsIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSearchForNotebookItemsIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSearchForNotebookItemsIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchForNotebookItemsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSearchForNotebookItemsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSearchForNotebookItemsIntentResponse)initWithCode:(INSearchForNotebookItemsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INSearchForNotebookItemsIntentResponseCodeFailureRequiringAppLaunch)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7280570[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSearchForNotebookItemsIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSearchForNotebookItemsIntentResponse;
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