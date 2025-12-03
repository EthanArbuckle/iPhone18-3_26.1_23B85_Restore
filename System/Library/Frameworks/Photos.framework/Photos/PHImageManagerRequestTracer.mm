@interface PHImageManagerRequestTracer
+ (id)_currentTimestampString;
+ (id)recentMessagesSummaryForAssetUUID:(id)d;
+ (int)requestIDFromTaskIdentifier:(id)identifier;
+ (void)_inq_recordRequestID:(int64_t)d;
+ (void)_inq_trimToMostRecentImageManagerMessages;
+ (void)initialize;
+ (void)registerRequestID:(int)d withAssetUUID:(id)iD;
+ (void)traceMessageForRequestID:(int)d message:(id)message;
@end

@implementation PHImageManagerRequestTracer

+ (id)recentMessagesSummaryForAssetUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHImageManagerRequestTracer.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"assetUUID"}];
  }

  string = [MEMORY[0x1E696AD60] string];
  v7 = s_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PHImageManagerRequestTracer_recentMessagesSummaryForAssetUUID___block_invoke;
  block[3] = &unk_1E75AAEB0;
  v15 = dCopy;
  v8 = string;
  v16 = v8;
  v9 = dCopy;
  dispatch_sync(v7, block);
  v10 = v16;
  v11 = v8;

  return v8;
}

void __65__PHImageManagerRequestTracer_recentMessagesSummaryForAssetUUID___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [s_requestIDsByAssetUUID objectForKeyedSubscript:*(a1 + 32)];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [s_mostRecentTraceDateByRequestID objectForKeyedSubscript:v9];
        [v2 setObject:v9 forKeyedSubscript:v10];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  [v3 sortUsingSelector:sel_compare_];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v21 = *v27;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [v2 objectForKeyedSubscript:*(*(&v26 + 1) + 8 * j)];
        [*(a1 + 40) appendFormat:@"ID: %@\n", v14];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v15 = [s_messagesByRequestID objectForKeyedSubscript:v14];
        v16 = [v15 countByEnumeratingWithState:&v22 objects:v34 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v23;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v23 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [*(a1 + 40) appendString:*(*(&v22 + 1) + 8 * k)];
              [*(a1 + 40) appendString:@"\n"];
            }

            v17 = [v15 countByEnumeratingWithState:&v22 objects:v34 count:16];
          }

          while (v17);
        }

        [*(a1 + 40) appendString:@"\n"];
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v12);
  }
}

+ (void)traceMessageForRequestID:(int)d message:(id)message
{
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHImageManagerRequestTracer.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  v20 = &v21;
  v8 = MEMORY[0x1E696AEC0];
  _currentTimestampString = [objc_opt_class() _currentTimestampString];
  v10 = [v8 stringWithFormat:@"%@: ", _currentTimestampString];

  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:messageCopy arguments:&v21];
  v12 = [v10 stringByAppendingString:v11];

  v13 = s_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PHImageManagerRequestTracer_traceMessageForRequestID_message___block_invoke;
  block[3] = &unk_1E75A8C10;
  dCopy = d;
  v17 = v12;
  selfCopy = self;
  v14 = v12;
  dispatch_async(v13, block);
}

void __64__PHImageManagerRequestTracer_traceMessageForRequestID_message___block_invoke(uint64_t a1)
{
  v2 = s_messagesByRequestID;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v6 = [v2 objectForKeyedSubscript:v3];

  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = s_messagesByRequestID;
    v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
    [v4 setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:*(a1 + 32)];
  [*(a1 + 40) _inq_recordRequestID:*(a1 + 48)];
  [*(a1 + 40) _inq_trimToMostRecentImageManagerMessages];
}

+ (void)registerRequestID:(int)d withAssetUUID:(id)iD
{
  iDCopy = iD;
  if (!iDCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHImageManagerRequestTracer.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"assetUUID"}];
  }

  v8 = s_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PHImageManagerRequestTracer_registerRequestID_withAssetUUID___block_invoke;
  block[3] = &unk_1E75A8BE8;
  v12 = iDCopy;
  dCopy = d;
  v9 = iDCopy;
  dispatch_async(v8, block);
}

void __63__PHImageManagerRequestTracer_registerRequestID_withAssetUUID___block_invoke(uint64_t a1)
{
  v3 = [s_requestIDsByAssetUUID objectForKeyedSubscript:*(a1 + 32)];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [s_requestIDsByAssetUUID setObject:? forKeyedSubscript:?];
  }

  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v3 addObject:v2];
}

+ (int)requestIDFromTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length] && (v4 = objc_msgSend(identifierCopy, "rangeOfString:options:", @"-", 2), v4 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [identifierCopy substringFromIndex:v4];
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    s_tracingDisabled = 0;
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = s_requestIDsByAssetUUID;
    s_requestIDsByAssetUUID = v2;

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = s_messagesByRequestID;
    s_messagesByRequestID = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = s_mostRecentTraceDateByRequestID;
    s_mostRecentTraceDateByRequestID = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    attr = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);

    v9 = dispatch_queue_create("com.apple.photos.pdimagemanagertracingqueue", attr);
    v10 = s_queue;
    s_queue = v9;
  }
}

+ (void)_inq_trimToMostRecentImageManagerMessages
{
  v37 = *MEMORY[0x1E69E9840];
  if ([s_mostRecentTraceDateByRequestID count] >= 0x65)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__35970;
    v34 = __Block_byref_object_dispose__35971;
    v35 = 0;
    allValues = [s_mostRecentTraceDateByRequestID allValues];
    v4 = [allValues sortedArrayUsingSelector:sel_compare_];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = *v27;
LABEL_4:
      v9 = 0;
      v10 = 4 - v7;
      v7 += v6;
      while (1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_storeStrong(v31 + 5, *(*(&v26 + 1) + 8 * v9));
        if (v10 == v9)
        {
          break;
        }

        if (v6 == ++v9)
        {
          v6 = [v5 countByEnumeratingWithState:&v26 objects:v36 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v11 = s_mostRecentTraceDateByRequestID;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __72__PHImageManagerRequestTracer__inq_trimToMostRecentImageManagerMessages__block_invoke;
    v23[3] = &unk_1E75A8B98;
    v25 = &v30;
    v12 = v2;
    v24 = v12;
    [v11 enumerateKeysAndObjectsUsingBlock:v23];
    [s_messagesByRequestID removeObjectsForKeys:v12];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = s_requestIDsByAssetUUID;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __72__PHImageManagerRequestTracer__inq_trimToMostRecentImageManagerMessages__block_invoke_2;
    v20 = &unk_1E75A8BC0;
    v15 = v12;
    v21 = v15;
    v16 = v13;
    v22 = v16;
    [v14 enumerateKeysAndObjectsUsingBlock:&v17];
    [s_mostRecentTraceDateByRequestID removeObjectsForKeys:{v15, v17, v18, v19, v20}];
    [s_requestIDsByAssetUUID removeObjectsForKeys:v16];

    _Block_object_dispose(&v30, 8);
  }
}

void __72__PHImageManagerRequestTracer__inq_trimToMostRecentImageManagerMessages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 compare:*(*(*(a1 + 40) + 8) + 40)] == -1)
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __72__PHImageManagerRequestTracer__inq_trimToMostRecentImageManagerMessages__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v6 removeObjectsInArray:v5];
  v7 = [v6 count];

  if (!v7)
  {
    [*(a1 + 40) addObject:v8];
  }
}

+ (void)_inq_recordRequestID:(int64_t)d
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = s_mostRecentTraceDateByRequestID;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:d];
  [v4 setObject:date forKeyedSubscript:v5];
}

+ (id)_currentTimestampString
{
  if (_currentTimestampString_s_onceToken != -1)
  {
    dispatch_once(&_currentTimestampString_s_onceToken, &__block_literal_global_35975);
  }

  v2 = _currentTimestampString_s_formatter;
  date = [MEMORY[0x1E695DF00] date];
  v4 = [v2 stringFromDate:date];

  return v4;
}

uint64_t __54__PHImageManagerRequestTracer__currentTimestampString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _currentTimestampString_s_formatter;
  _currentTimestampString_s_formatter = v0;

  v2 = _currentTimestampString_s_formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd' 'HH:mm:ss.SS"];
}

@end