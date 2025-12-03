@interface FigObjectMethodCallsStorage
+ (id)shared;
+ (void)recordForObject:(id)object withMethodEnum:(id)enum;
+ (void)surfaceMethodCallsBeforeCrashForObject:(id)object;
- (FigObjectMethodCallsStorage)init;
- (id)description;
- (void)checkAndflushObjectMethodCalls;
- (void)dealloc;
- (void)surfaceMethodCallsBeforeCrashForStringObjectPtr:(id)ptr;
- (void)updateMethodCallsForObject:(id)object withMethodEnum:(id)enum;
@end

@implementation FigObjectMethodCallsStorage

- (FigObjectMethodCallsStorage)init
{
  v5.receiver = self;
  v5.super_class = FigObjectMethodCallsStorage;
  v2 = [(FigObjectMethodCallsStorage *)&v5 init];
  if (v2)
  {
    v2->_objectMethodCalls = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_objectMethodCallsUpdateQueue = dispatch_queue_create("com.apple.coremedia.figobjectmethodcallsupdatequeue", v3);
  }

  return v2;
}

- (id)description
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectMethodCalls = self->_objectMethodCalls;
  v4 = [(NSMutableDictionary *)objectMethodCalls countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return &stru_1F0B78830;
  }

  v5 = v4;
  v6 = *v11;
  v7 = &stru_1F0B78830;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(objectMethodCalls);
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@:%@;", v7, *(*(&v10 + 1) + 8 * i), -[NSMutableDictionary objectForKeyedSubscript:](self->_objectMethodCalls, "objectForKeyedSubscript:", *(*(&v10 + 1) + 8 * i))];
    }

    v5 = [(NSMutableDictionary *)objectMethodCalls countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v5);
  return v7;
}

- (void)checkAndflushObjectMethodCalls
{
  if ([(NSMutableDictionary *)self->_objectMethodCalls count]>> 4 >= 0x271)
  {
    objectMethodCallsUpdateQueue = self->_objectMethodCallsUpdateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__FigObjectMethodCallsStorage_checkAndflushObjectMethodCalls__block_invoke;
    block[3] = &unk_1E749CE18;
    block[4] = self;
    dispatch_sync(objectMethodCallsUpdateQueue, block);
  }
}

id __61__FigObjectMethodCallsStorage_checkAndflushObjectMethodCalls__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(*(a1 + 32) + 8) = result;
  return result;
}

- (void)updateMethodCallsForObject:(id)object withMethodEnum:(id)enum
{
  [(FigObjectMethodCallsStorage *)self checkAndflushObjectMethodCalls];
  objectMethodCallsUpdateQueue = self->_objectMethodCallsUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__FigObjectMethodCallsStorage_updateMethodCallsForObject_withMethodEnum___block_invoke;
  block[3] = &unk_1E749EC68;
  block[4] = self;
  block[5] = object;
  block[6] = enum;
  dispatch_sync(objectMethodCallsUpdateQueue, block);
}

uint64_t __73__FigObjectMethodCallsStorage_updateMethodCallsForObject_withMethodEnum___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  if (v2)
  {
    v3 = v2;
    if ([v2 length] >= 0x65)
    {
      v3 = [v3 substringFromIndex:20];
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v3, a1[6]];
  }

  else
  {
    v4 = a1[6];
  }

  v5 = a1[5];
  v6 = *(a1[4] + 8);

  return [v6 setObject:v4 forKey:v5];
}

- (void)surfaceMethodCallsBeforeCrashForStringObjectPtr:(id)ptr
{
  objectMethodCallsUpdateQueue = self->_objectMethodCallsUpdateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__FigObjectMethodCallsStorage_surfaceMethodCallsBeforeCrashForStringObjectPtr___block_invoke;
  v4[3] = &unk_1E749EC90;
  v4[4] = self;
  v4[5] = ptr;
  dispatch_sync(objectMethodCallsUpdateQueue, v4);
  qword_1EAF1B730 = surfaceMethodCallsBeforeCrashForStringObjectPtr__gFigObjectMethodCallsCrashMessage;
}

- (void)dealloc
{
  dispatch_release(self->_objectMethodCallsUpdateQueue);
  v3.receiver = self;
  v3.super_class = FigObjectMethodCallsStorage;
  [(FigObjectMethodCallsStorage *)&v3 dealloc];
}

+ (id)shared
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__FigObjectMethodCallsStorage_shared__block_invoke;
  block[3] = &unk_1E749CE18;
  block[4] = self;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  return shared_shared;
}

id __37__FigObjectMethodCallsStorage_shared__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  shared_shared = result;
  return result;
}

+ (void)recordForObject:(id)object withMethodEnum:(id)enum
{
  v6 = +[FigObjectMethodCallsStorage shared];
  object = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", object];

  [v6 updateMethodCallsForObject:object withMethodEnum:enum];
}

+ (void)surfaceMethodCallsBeforeCrashForObject:(id)object
{
  v4 = +[FigObjectMethodCallsStorage shared];
  object = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", object];

  [v4 surfaceMethodCallsBeforeCrashForStringObjectPtr:object];
}

@end