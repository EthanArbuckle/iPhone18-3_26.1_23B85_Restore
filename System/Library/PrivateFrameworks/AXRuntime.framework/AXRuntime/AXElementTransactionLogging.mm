@interface AXElementTransactionLogging
+ (id)sharedLogger;
+ (id)transactionSummary;
- (AXElementTransactionLogging)init;
- (id)_appNameForUIElement:(__AXUIElement *)a3 pid:(int)a4;
- (unint64_t)willFetchAttribute:(int64_t)a3 forElement:(__AXUIElement *)a4;
- (void)failedTransaction:(unint64_t)a3;
- (void)finishedTransaction:(unint64_t)a3 withValue:(void *)a4 amortization:(double)a5;
@end

@implementation AXElementTransactionLogging

+ (id)sharedLogger
{
  if (sharedLogger_onceToken != -1)
  {
    +[AXElementTransactionLogging sharedLogger];
  }

  v3 = sharedLogger___sharedLogger;

  return v3;
}

uint64_t __43__AXElementTransactionLogging_sharedLogger__block_invoke()
{
  sharedLogger___sharedLogger = objc_alloc_init(AXElementTransactionLogging);

  return MEMORY[0x1EEE66BB8]();
}

- (AXElementTransactionLogging)init
{
  v8.receiver = self;
  v8.super_class = AXElementTransactionLogging;
  v2 = [(AXElementTransactionLogging *)&v8 init];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  pendingTransactions = v2->_pendingTransactions;
  v2->_pendingTransactions = v3;

  v5 = dispatch_queue_create("AXElementTransactionLogging", 0);
  queue = v2->_queue;
  v2->_queue = v5;

  return v2;
}

+ (id)transactionSummary
{
  v2 = +[AXProfileDatabase sharedDatabase];
  v3 = [v2 transactionSummary];

  return v3;
}

- (unint64_t)willFetchAttribute:(int64_t)a3 forElement:(__AXUIElement *)a4
{
  Current = CFAbsoluteTimeGetCurrent();
  v8 = self;
  objc_sync_enter(v8);
  ++willFetchAttribute_forElement____transactionID;
  objc_sync_exit(v8);

  if (a4)
  {
    CFRetain(a4);
    queue = v8->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__AXElementTransactionLogging_willFetchAttribute_forElement___block_invoke;
    v11[3] = &unk_1E80D4030;
    v11[5] = a3;
    v11[6] = a4;
    *&v11[7] = Current;
    v11[4] = v8;
    dispatch_async(queue, v11);
  }

  return willFetchAttribute_forElement____transactionID;
}

void __61__AXElementTransactionLogging_willFetchAttribute_forElement___block_invoke(uint64_t a1)
{
  v4 = objc_opt_new();
  [v4 setAttribute:*(a1 + 40)];
  [v4 setElement:*(a1 + 48)];
  [v4 setStart:*(a1 + 56)];
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:willFetchAttribute_forElement____transactionID];
  [v2 setObject:v4 forKey:v3];
}

- (id)_appNameForUIElement:(__AXUIElement *)a3 pid:(int)a4
{
  v4 = *&a4;
  pidsToBundleIDs = self->_pidsToBundleIDs;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:*&a4];
  v9 = [(NSMutableDictionary *)pidsToBundleIDs objectForKey:v8];

  if (v9 || (value = 0, AXUIElementCopyAttributeValue(a3, 0xBBB, &value)) || (v12 = value) == 0)
  {
    v10 = &stru_1F3E63FB0;
  }

  else
  {
    v13 = self->_pidsToBundleIDs;
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [(NSMutableDictionary *)v13 setObject:v12 forKey:v14];

    v10 = value;
  }

  return v10;
}

- (void)failedTransaction:(unint64_t)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AXElementTransactionLogging_failedTransaction___block_invoke;
  block[3] = &unk_1E80D4058;
  block[4] = self;
  block[5] = a3;
  *&block[6] = Current;
  dispatch_async(queue, block);
}

void __49__AXElementTransactionLogging_failedTransaction___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = objc_opt_new();
    [v5 setType:1];
    [v5 setAttribute:{objc_msgSend(v4, "attribute")}];
    if ([v4 element])
    {
      pid = 0;
      AXUIElementGetPid([v4 element], &pid);
      [v5 setPid:pid];
      v6 = _AXUIElementIDForElement([v4 element]);
      [v5 setUid:{v6, v7}];
      v8 = *(a1 + 32);
      v9 = [v4 element];
      v10 = [v8 _appNameForUIElement:v9 pid:pid];
      [v5 setAppName:v10];
    }

    v11 = *(a1 + 48);
    [v4 start];
    [v5 setDuration:v11 - v12];
    [v5 setValueSize:0];
    [v5 setValueHash:0];
    v13 = +[AXProfileDatabase sharedDatabase];
    [v13 registerEntry:v5];

    v14 = *(a1 + 40);
    v15 = *(*(a1 + 32) + 8);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    [v15 removeObjectForKey:v16];
  }
}

- (void)finishedTransaction:(unint64_t)a3 withValue:(void *)a4 amortization:(double)a5
{
  if (a4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10 = CFHash(a4);
    v11 = CFGetTypeID(a4);
    if (v11 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(a4);
    }

    else if (AXIsAXAttributedString())
    {
      Length = AXGetCFAttributedStringFromAXAttributedString(a4);
      if (Length)
      {
        Length = CFAttributedStringGetLength(Length);
      }
    }

    else
    {
      Length = 0;
    }

    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__AXElementTransactionLogging_finishedTransaction_withValue_amortization___block_invoke;
    v14[3] = &unk_1E80D4080;
    v14[4] = self;
    v14[5] = a3;
    *&v14[6] = Current;
    *&v14[7] = a5;
    v14[8] = Length;
    v14[9] = v10;
    dispatch_async(queue, v14);
  }
}

void __74__AXElementTransactionLogging_finishedTransaction_withValue_amortization___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = objc_opt_new();
    [v5 setType:0];
    [v5 setAttribute:{objc_msgSend(v4, "attribute")}];
    if ([v4 element])
    {
      pid = 0;
      AXUIElementGetPid([v4 element], &pid);
      [v5 setPid:pid];
      v6 = _AXUIElementIDForElement([v4 element]);
      [v5 setUid:{v6, v7}];
      v8 = *(a1 + 32);
      v9 = [v4 element];
      v10 = [v8 _appNameForUIElement:v9 pid:pid];
      [v5 setAppName:v10];

      CFRelease([v4 element]);
    }

    v11 = *(a1 + 48);
    [v4 start];
    [v5 setDuration:(v11 - v12) * *(a1 + 56)];
    [v5 setValueSize:*(a1 + 64)];
    [v5 setValueHash:*(a1 + 72)];
    v13 = +[AXProfileDatabase sharedDatabase];
    [v13 registerEntry:v5];

    v14 = *(a1 + 40);
    v15 = *(*(a1 + 32) + 8);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    [v15 removeObjectForKey:v16];
  }
}

@end