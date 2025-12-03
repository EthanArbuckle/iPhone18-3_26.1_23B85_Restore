@interface AVLazyValueLoadingMetadataItem
+ (id)metadataItemWithPropertiesOfMetadataItem:(id)item valueLoadingHandler:(id)handler;
- (BOOL)_valueForKeyDependsOnMetadataValue:(id)value;
- (id)_initWithFigMetadataDictionary:(id)dictionary valueLoadingHandler:(id)handler;
- (id)dataType;
- (int64_t)_valueStatus;
- (int64_t)statusOfValueForKey:(id)key error:(id *)error;
- (void)_valueRequestDidFinish;
- (void)_waitForLoadingOfValueDependentKey:(id)key;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)keys completionHandler:(id)handler;
@end

@implementation AVLazyValueLoadingMetadataItem

+ (id)metadataItemWithPropertiesOfMetadataItem:(id)item valueLoadingHandler:(id)handler
{
  v4 = [[self alloc] _initWithFigMetadataDictionary:objc_msgSend(item valueLoadingHandler:{"_figMetadataDictionaryWithValue:diviningValueDataType:", 0, 0), handler}];

  return v4;
}

- (id)_initWithFigMetadataDictionary:(id)dictionary valueLoadingHandler:(id)handler
{
  v8.receiver = self;
  v8.super_class = AVLazyValueLoadingMetadataItem;
  v5 = [(AVMetadataItem *)&v8 _initWithFigMetadataDictionary:dictionary];
  if (v5)
  {
    v6 = objc_alloc_init(AVLazyValueLoadingMetadataItemInternal);
    v5[2] = v6;
    if (v6)
    {
      CFRetain(v6);
      if (handler)
      {
        *(v5[2] + 24) = [AVMetadataItemValueRequest metadataItemValueRequestWithMetadataItem:v5];
        *(v5[2] + 32) = [handler copy];
        *(v5[2] + 40) = 0;
        *(v5[2] + 56) = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      else
      {
        *(v5[2] + 40) = 2;
      }

      *(v5[2] + 64) = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avmetadataitem");
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  lazyMetadataItem = self->_lazyMetadataItem;
  if (lazyMetadataItem)
  {

    v4 = self->_lazyMetadataItem;
    readWriteQueue = v4->readWriteQueue;
    if (readWriteQueue)
    {
      dispatch_release(readWriteQueue);
      v4 = self->_lazyMetadataItem;
    }

    CFRelease(self->_lazyMetadataItem);
  }

  v6.receiver = self;
  v6.super_class = AVLazyValueLoadingMetadataItem;
  [(AVMetadataItem *)&v6 dealloc];
}

- (void)_valueRequestDidFinish
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__3;
  lazyMetadataItem = self->_lazyMetadataItem;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  readWriteQueue = lazyMetadataItem->readWriteQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__AVLazyValueLoadingMetadataItem__valueRequestDidFinish__block_invoke;
  v12[3] = &unk_1E7460EE0;
  v12[4] = self;
  v12[5] = &v13;
  av_readwrite_dispatch_queue_write(readWriteQueue, v12);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v14[5];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v8 + 1) + 8 * i) + 16))();
      }

      v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v13, 8);
}

void *__56__AVLazyValueLoadingMetadataItem__valueRequestDidFinish__block_invoke(void *result)
{
  v1 = *(result[4] + 16);
  if (*(v1 + 40) <= 2)
  {
    v2 = result;
    v3 = [*(v1 + 24) value];
    v4 = *(v2[4] + 16);
    if (v3)
    {
      *(v4 + 40) = 2;
      *(*(v2[4] + 16) + 8) = [objc_msgSend(*(*(v2[4] + 16) + 24) "value")];
      result = [objc_msgSend(*(*(v2[4] + 16) + 24) "dataType")];
      v5 = 16;
    }

    else
    {
      *(v4 + 40) = 3;
      result = [*(*(v2[4] + 16) + 24) error];
      v5 = 48;
    }

    *(*(v2[4] + 16) + v5) = result;
    *(*(v2[5] + 8) + 40) = *(*(v2[4] + 16) + 56);
    *(*(v2[4] + 16) + 56) = 0;
  }

  return result;
}

- (BOOL)_valueForKeyDependsOnMetadataValue:(id)value
{
  if (value && (([value isEqualToString:@"value"] & 1) != 0 || objc_msgSend(value, "rangeOfString:options:", @"Value", 14) != 0x7FFFFFFFFFFFFFFFLL || v5))
  {
    return 1;
  }

  return [value isEqualToString:@"dataType"];
}

- (int64_t)_valueStatus
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  lazyMetadataItem = self->_lazyMetadataItem;
  v10 = 0;
  readWriteQueue = lazyMetadataItem->readWriteQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AVLazyValueLoadingMetadataItem__valueStatus__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(readWriteQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)statusOfValueForKey:(id)key error:(id *)error
{
  if (![(AVLazyValueLoadingMetadataItem *)self _valueForKeyDependsOnMetadataValue:key])
  {
    return 2;
  }

  result = [(AVLazyValueLoadingMetadataItem *)self _valueStatus];
  if (error)
  {
    if (result == 3)
    {
      *error = self->_lazyMetadataItem->valueLoadingError;
    }
  }

  return result;
}

- (void)loadValuesAsynchronouslyForKeys:(id)keys completionHandler:(id)handler
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([objc_msgSend(keys indexesOfObjectsPassingTest:{&__block_literal_global_304), "count"}])
  {
    readWriteQueue = self->_lazyMetadataItem->readWriteQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __84__AVLazyValueLoadingMetadataItem_loadValuesAsynchronouslyForKeys_completionHandler___block_invoke_2;
    v8[3] = &unk_1E7461C50;
    v8[4] = self;
    v8[5] = handler;
    v8[6] = &v9;
    av_readwrite_dispatch_queue_write(readWriteQueue, v8);
    v7 = *(v10 + 24);
    if (!handler)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 1;
    *(v10 + 24) = 1;
    if (!handler)
    {
      goto LABEL_7;
    }
  }

  if (v7)
  {
    (*(handler + 2))(handler);
  }

LABEL_7:
  _Block_object_dispose(&v9, 8);
}

BOOL __84__AVLazyValueLoadingMetadataItem_loadValuesAsynchronouslyForKeys_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 isEqualToString:@"value"])
  {
    return 1;
  }

  return [a2 rangeOfString:@"Value" options:14] != 0x7FFFFFFFFFFFFFFFLL || v4 != 0;
}

void __84__AVLazyValueLoadingMetadataItem_loadValuesAsynchronouslyForKeys_completionHandler___block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 16);
  v3 = *(v2 + 40);
  if (v3 == 1)
  {
    v6 = a1[5];
    if (v6)
    {
      v7 = *(v2 + 56);
      v8 = [v6 copy];

      [v7 addObject:v8];
    }
  }

  else if (v3)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    *(v2 + 40) = 1;
    v4 = a1[5];
    if (v4)
    {
      [*(*(a1[4] + 16) + 56) addObject:{objc_msgSend(v4, "copy")}];
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__AVLazyValueLoadingMetadataItem_loadValuesAsynchronouslyForKeys_completionHandler___block_invoke_3;
    block[3] = &unk_1E7460C00;
    block[4] = a1[4];
    dispatch_async(global_queue, block);
  }
}

void __84__AVLazyValueLoadingMetadataItem_loadValuesAsynchronouslyForKeys_completionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(*(*(a1 + 32) + 16) + 32) + 16))();

  *(*(*(a1 + 32) + 16) + 32) = 0;
}

- (void)_waitForLoadingOfValueDependentKey:(id)key
{
  if ([(AVLazyValueLoadingMetadataItem *)self _valueStatus]<= 1)
  {
    v5 = dispatch_semaphore_create(0);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObject:key];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__AVLazyValueLoadingMetadataItem__waitForLoadingOfValueDependentKey___block_invoke;
    v7[3] = &unk_1E7460C00;
    v7[4] = v5;
    [(AVLazyValueLoadingMetadataItem *)self loadValuesAsynchronouslyForKeys:v6 completionHandler:v7];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
  }
}

- (id)dataType
{
  [(AVLazyValueLoadingMetadataItem *)self _waitForLoadingOfValueDependentKey:@"dataType"];
  result = self->_lazyMetadataItem->dataType;
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = AVLazyValueLoadingMetadataItem;
    return [(AVMetadataItem *)&v4 dataType];
  }

  return result;
}

@end