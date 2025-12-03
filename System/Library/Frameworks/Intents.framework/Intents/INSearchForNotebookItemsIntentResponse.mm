@interface INSearchForNotebookItemsIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INSearchForNotebookItemsIntentResponse)initWithBackingStore:(id)store;
- (INSearchForNotebookItemsIntentResponse)initWithCode:(INSearchForNotebookItemsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSearchForNotebookItemsIntentResponse)initWithCoder:(id)coder;
- (INSearchForNotebookItemsIntentResponseCode)code;
- (INSortType)sortType;
- (NSArray)notes;
- (NSArray)taskLists;
- (NSArray)tasks;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
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
  code = [(INSearchForNotebookItemsIntentResponse *)self code];
  v4 = code;
  if (code < (INSearchForNotebookItemsIntentResponseCodeFailure|INSearchForNotebookItemsIntentResponseCodeInProgress))
  {
    null = off_1E7280570[code];
    v18 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v18 = 0;
  }

  v21[0] = null;
  v20[1] = @"notes";
  notes = [(INSearchForNotebookItemsIntentResponse *)self notes];
  null2 = notes;
  if (!notes)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21[1] = null2;
  v20[2] = @"taskLists";
  taskLists = [(INSearchForNotebookItemsIntentResponse *)self taskLists];
  null3 = taskLists;
  if (!taskLists)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v21[2] = null3;
  v20[3] = @"tasks";
  tasks = [(INSearchForNotebookItemsIntentResponse *)self tasks];
  null4 = tasks;
  if (!tasks)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v21[3] = null4;
  v20[4] = @"sortType";
  sortType = [(INSearchForNotebookItemsIntentResponse *)self sortType];
  v13 = @"unknown";
  if (sortType == INSortTypeByDate)
  {
    v13 = @"byDate";
  }

  if (sortType == INSortTypeAsIs)
  {
    v13 = @"asIs";
  }

  v14 = v13;
  v21[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];

  if (!tasks)
  {
  }

  if (!taskLists)
  {
  }

  if (!notes)
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

  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = _responseMessagePBRepresentation;
  if (v5 == 0x7FFFFFFF)
  {
    [_responseMessagePBRepresentation setHasSortType:0];
  }

  else
  {
    [_responseMessagePBRepresentation setSortType:v5];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setTasks:(NSArray *)tasks
{
  v4 = tasks;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTasks(v4);

  [_responseMessagePBRepresentation setTasks:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setTaskLists:(NSArray *)taskLists
{
  v4 = taskLists;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTaskLists(v4);

  [_responseMessagePBRepresentation setTaskLists:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setNotes:(NSArray *)notes
{
  v4 = notes;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToNotes(v4);

  [_responseMessagePBRepresentation setNotes:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (INSortType)sortType
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hasSortType = [_responseMessagePBRepresentation hasSortType];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  sortType = [_responseMessagePBRepresentation2 sortType];
  v7 = 2 * (sortType == 1);
  if (!sortType)
  {
    v7 = 1;
  }

  if (hasSortType)
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
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  tasks = [_responseMessagePBRepresentation tasks];
  v4 = INIntentSlotValueTransformFromTasks(tasks);

  return v4;
}

- (NSArray)taskLists
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  taskLists = [_responseMessagePBRepresentation taskLists];
  v4 = INIntentSlotValueTransformFromTaskLists(taskLists);

  return v4;
}

- (NSArray)notes
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  notes = [_responseMessagePBRepresentation notes];
  v4 = INIntentSlotValueTransformFromNotes(notes);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSearchForNotebookItemsIntentResponseCodeFailureRequiringAppLaunch"];

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
  code = [(INSearchForNotebookItemsIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INSearchForNotebookItemsIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSearchForNotebookItemsIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSearchForNotebookItemsIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INSearchForNotebookItemsIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSearchForNotebookItemsIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSearchForNotebookItemsIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSearchForNotebookItemsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSearchForNotebookItemsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
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