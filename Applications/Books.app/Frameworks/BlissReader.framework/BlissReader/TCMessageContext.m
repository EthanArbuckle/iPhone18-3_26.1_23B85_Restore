@interface TCMessageContext
+ (id)currentObjectOrPlaceholder;
+ (id)delegateForCurrentContext;
+ (id)getErrorArray;
+ (id)getWarningArray;
+ (id)pushCurrentPlaceholder;
+ (unint64_t)saveObjectStack;
+ (void)createContextForCurrentThread;
+ (void)createContextForCurrentThreadWithDelegate:(id)a3;
+ (void)initialize;
+ (void)popCurrentObject;
+ (void)popCurrentPlaceholder:(id)a3;
+ (void)pushCurrentObject:(id)a3;
+ (void)removeContextForCurrentThread;
+ (void)replacePlaceholdersWithObjects;
+ (void)reportError:(TCTaggedMessageStructure *)a3;
+ (void)reportErrorException:(id)a3;
+ (void)reportObject:(id)a3 withWarning:(TCTaggedMessageStructure *)a4;
+ (void)reportObjectOrPlaceholder:(id)a3 withWarning:(TCTaggedMessageStructure *)a4 parameters:(char *)a5;
+ (void)reportWarning:(TCTaggedMessageStructure *)a3;
+ (void)reportWarningException:(id)a3;
+ (void)restoreObjectStack:(unsigned int)a3;
- (TCMessageContext)init;
- (id)currentObject;
- (id)pushPlaceholder;
- (void)addErrorMessageEntry:(id)a3;
- (void)addWarningMessageEntry:(id)a3;
- (void)dealloc;
- (void)popObject;
- (void)popPlaceholder:(id)a3;
- (void)pushObject:(id)a3;
- (void)replacePlaceholdersWithObjects;
- (void)reportIncompatibleMovieInfo:(id)a3 withCompatibilityLevel:(int64_t)a4;
- (void)reportWarningForObject:(id)a3 affectedObject:(id)a4 warning:(TCTaggedMessageStructure *)a5 parameterList:(char *)a6;
- (void)setObject:(id)a3 forPlaceholderKey:(id)a4;
@end

@implementation TCMessageContext

+ (void)initialize
{
  if (objc_opt_class() == a1 && (byte_567974 & 1) == 0)
  {
    byte_567974 = 1;

    objc_opt_class();
  }
}

- (TCMessageContext)init
{
  v6.receiver = self;
  v6.super_class = TCMessageContext;
  v2 = [(TCMessageContext *)&v6 init];
  if (v2)
  {
    v2->m_warnings = objc_alloc_init(NSMutableSet);
    v2->m_errors = objc_alloc_init(NSMutableSet);
    v2->m_currentObjectStack = objc_alloc_init(NSMutableArray);
    v3 = objc_alloc_init(NSMutableDictionary);
    byte_5652B0 = 1;
    v2->m_placeholderToObjectIdMap = v3;
    v2->m_delegate = 0;
    v2->mMessageSyncQueue = dispatch_queue_create("com.apple.iWork.TCMessageContext", 0);
    m_warnings = v2->m_warnings;
    if (!m_warnings || !v2->m_errors || !v2->m_currentObjectStack)
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  if (mMessageSyncQueue)
  {
    dispatch_release(mMessageSyncQueue);
    self->mMessageSyncQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = TCMessageContext;
  [(TCMessageContext *)&v4 dealloc];
}

+ (void)reportObjectOrPlaceholder:(id)a3 withWarning:(TCTaggedMessageStructure *)a4 parameters:(char *)a5
{
  if (a4)
  {
    v8 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");
    if (v8)
    {

      [v8 reportWarningForObject:a3 affectedObject:0 warning:a4 parameterList:a5];
    }
  }
}

+ (id)currentObjectOrPlaceholder
{
  v2 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");

  return [v2 currentObject];
}

+ (void)reportObject:(id)a3 withWarning:(TCTaggedMessageStructure *)a4
{
  if (a4 && (![a1 conformsToProtocol:&OBJC_PROTOCOL___TCEnhancedWarningReporting] || (objc_msgSend(a1, "enhancedReportObject:withWarning:parameters:", a3, a4, &v7) & 1) == 0))
  {
    [a1 reportObjectOrPlaceholder:a3 withWarning:a4 parameters:&v7];
  }
}

+ (void)reportWarning:(TCTaggedMessageStructure *)a3
{
  if (a3 && (![a1 conformsToProtocol:&OBJC_PROTOCOL___TCEnhancedWarningReporting] || (objc_msgSend(a1, "enhancedReportObject:withWarning:parameters:", 0, a3, &v5) & 1) == 0))
  {
    [a1 reportObjectOrPlaceholder:objc_msgSend(a1 withWarning:"currentObjectOrPlaceholder") parameters:{a3, &v5}];
  }
}

+ (void)reportError:(TCTaggedMessageStructure *)a3
{
  if (a3)
  {
    v4 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");
    if (v4)
    {
      v5 = v4;
      v6 = [[TCMessageEntry alloc] initWithTag:a3->var0 affectedObject:0 text:a3->var1 parameters:&v7];
      [v5 addErrorMessageEntry:v6];
    }
  }
}

+ (void)reportWarningException:(id)a3
{
  v5 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");
  if (v5)
  {
    v13 = v5;
    v16 = sub_1E8B54(a3, v6, v7, v8, v9, v10, v11, v12, v15);
    v14 = [a1 currentObjectOrPlaceholder];
    if (objc_opt_respondsToSelector())
    {
      v14 = [v14 performSelector:"identifier"];
    }

    [(TCMessageEntry *)v16 addAffectedObject:v14];
    [v13 addWarningMessageEntry:v16];
  }
}

+ (void)reportErrorException:(id)a3
{
  v4 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");
  if (v4)
  {
    v12 = v4;
    v14 = sub_1E8B54(a3, v5, v6, v7, v8, v9, v10, v11, v13);
    [v12 addErrorMessageEntry:v14];
  }
}

+ (void)createContextForCurrentThread
{
  v2 = objc_alloc_init(TCMessageContext);
  -[NSMutableDictionary setObject:forKey:]([+[NSThread currentThread](NSThread threadDictionary], "setObject:forKey:", v2, @"TCMessageContext Instance");
}

+ (void)createContextForCurrentThreadWithDelegate:(id)a3
{
  [a1 createContextForCurrentThread];
  v4 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");
  if (v4)
  {
    v4[5] = a3;
  }
}

+ (id)delegateForCurrentContext
{
  result = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");
  if (result)
  {
    return *(result + 5);
  }

  return result;
}

+ (void)removeContextForCurrentThread
{
  v2 = [+[NSThread currentThread](NSThread threadDictionary];

  [(NSMutableDictionary *)v2 removeObjectForKey:@"TCMessageContext Instance"];
}

+ (id)getWarningArray
{
  result = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");
  if (result)
  {
    v3 = [*(result + 1) allObjects];

    return [v3 sortedArrayUsingSelector:"timeStampCompare:"];
  }

  return result;
}

+ (id)getErrorArray
{
  result = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");
  if (result)
  {
    v3 = [*(result + 2) allObjects];

    return [v3 sortedArrayUsingSelector:"timeStampCompare:"];
  }

  return result;
}

+ (void)pushCurrentObject:(id)a3
{
  v4 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");

  [v4 pushObject:a3];
}

+ (void)popCurrentObject
{
  v2 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");

  [v2 popObject];
}

+ (id)pushCurrentPlaceholder
{
  v2 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");

  return [v2 pushPlaceholder];
}

+ (void)popCurrentPlaceholder:(id)a3
{
  v4 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");

  [v4 popPlaceholder:a3];
}

+ (void)replacePlaceholdersWithObjects
{
  v2 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");

  [v2 replacePlaceholdersWithObjects];
}

+ (unint64_t)saveObjectStack
{
  result = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");
  if (result)
  {
    v3 = *(result + 24);

    return [v3 count];
  }

  return result;
}

+ (void)restoreObjectStack:(unsigned int)a3
{
  v5 = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"TCMessageContext Instance");
  if (v5)
  {
    v6 = v5;
    while ([v6[3] count] > a3)
    {
      [v6[3] lastObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 popCurrentPlaceholder:0];
      }

      else
      {
        [a1 popCurrentObject];
      }
    }
  }
}

- (void)reportWarningForObject:(id)a3 affectedObject:(id)a4 warning:(TCTaggedMessageStructure *)a5 parameterList:(char *)a6
{
  if (a5)
  {
    mMessageSyncQueue = self->mMessageSyncQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1E91E0;
    v7[3] = &unk_45FF48;
    v7[4] = self;
    v7[5] = a4;
    v7[6] = a5;
    v7[7] = a6;
    dispatch_sync(mMessageSyncQueue, v7);
  }
}

- (void)reportIncompatibleMovieInfo:(id)a3 withCompatibilityLevel:(int64_t)a4
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E92F4;
  block[3] = &unk_45FF70;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(mMessageSyncQueue, block);
}

- (id)currentObject
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1E9FC0;
  v10 = sub_1E9FD0;
  v11 = 0;
  mMessageSyncQueue = self->mMessageSyncQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1E9FDC;
  v5[3] = &unk_45B420;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mMessageSyncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)addErrorMessageEntry:(id)a3
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1EA120;
  v4[3] = &unk_45AE58;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(mMessageSyncQueue, v4);
}

- (void)addWarningMessageEntry:(id)a3
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1EA1A0;
  v4[3] = &unk_45AE58;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(mMessageSyncQueue, v4);
}

- (void)pushObject:(id)a3
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1EA220;
  v4[3] = &unk_45AE58;
  v4[4] = a3;
  v4[5] = self;
  dispatch_sync(mMessageSyncQueue, v4);
}

- (void)popObject
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1EA2E4;
  block[3] = &unk_45AE00;
  block[4] = self;
  dispatch_sync(mMessageSyncQueue, block);
}

- (id)pushPlaceholder
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1E9FC0;
  v10 = sub_1E9FD0;
  v11 = 0;
  mMessageSyncQueue = self->mMessageSyncQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1EA430;
  v5[3] = &unk_45B7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mMessageSyncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)popPlaceholder:(id)a3
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1EA4FC;
  v4[3] = &unk_45AE58;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(mMessageSyncQueue, v4);
}

- (void)setObject:(id)a3 forPlaceholderKey:(id)a4
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1EA608;
  block[3] = &unk_45AF70;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_sync(mMessageSyncQueue, block);
}

- (void)replacePlaceholdersWithObjects
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1EA6E4;
  block[3] = &unk_45AE00;
  block[4] = self;
  dispatch_sync(mMessageSyncQueue, block);
}

@end