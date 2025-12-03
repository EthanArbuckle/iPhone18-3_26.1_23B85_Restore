@interface AVPlayerItemMetadataOutput
- (AVPlayerItemMetadataOutput)initWithIdentifiers:(NSArray *)identifiers;
- (BOOL)_attachToPlayerItem:(id)item;
- (NSDictionary)_figMetadataOutputsDictionaryOptions;
- (NSTimeInterval)advanceIntervalForDelegateInvocation;
- (void)_collectUncollectables;
- (void)_detachFromPlayerItem;
- (void)_pushTimedMetadataGroups:(id)groups fromPlayerItemTrack:(id)track;
- (void)_signalFlush;
- (void)dealloc;
- (void)setAdvanceIntervalForDelegateInvocation:(NSTimeInterval)advanceIntervalForDelegateInvocation;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateQueue;
@end

@implementation AVPlayerItemMetadataOutput

- (AVPlayerItemMetadataOutput)initWithIdentifiers:(NSArray *)identifiers
{
  v16.receiver = self;
  v16.super_class = AVPlayerItemMetadataOutput;
  v5 = [(AVPlayerItemOutput *)&v16 init];
  if (identifiers && ![(NSArray *)identifiers count])
  {
    v9 = v5;
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "[identifiers count] > 0"), 0}];
    objc_exception_throw(v15);
  }

  if (v5)
  {
    v6 = objc_alloc_init(AVPlayerItemMetadataOutputInternal);
    v5->_metadataOutputInternal = v6;
    if (v6)
    {
      CFRetain(v6);
      v5->_metadataOutputInternal->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplayeritemmetadataoutput.ivars");
      v5->_metadataOutputInternal->delegateStorage = objc_alloc_init(AVWeakReferencingDelegateStorage);
      v5->_metadataOutputInternal->metadataIdentifiers = [(NSArray *)identifiers copy];
      v5->_metadataOutputInternal->accumulatedMetadataGroups = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v5->_metadataOutputInternal->accumulationQueue = dispatch_queue_create("com.apple.avplayeritemmetadataoutput.accumulationqueue", v7);
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)_collectUncollectables
{
  metadataOutputInternal = self->_metadataOutputInternal;
  if (metadataOutputInternal->ivarAccessQueue)
  {
    dispatch_release(metadataOutputInternal->ivarAccessQueue);
    metadataOutputInternal = self->_metadataOutputInternal;
  }

  if (metadataOutputInternal->accumulatedMetadataGroups)
  {
    CFRelease(metadataOutputInternal->accumulatedMetadataGroups);
    metadataOutputInternal = self->_metadataOutputInternal;
  }

  if (metadataOutputInternal->accumulationQueue)
  {
    dispatch_release(metadataOutputInternal->accumulationQueue);
    metadataOutputInternal = self->_metadataOutputInternal;
  }

  CFRelease(metadataOutputInternal);
}

- (void)dealloc
{
  metadataOutputInternal = self->_metadataOutputInternal;
  if (metadataOutputInternal)
  {

    [(AVPlayerItemMetadataOutput *)self _collectUncollectables];
    metadataOutputInternal = self->_metadataOutputInternal;
  }

  v4.receiver = self;
  v4.super_class = AVPlayerItemMetadataOutput;
  [(AVPlayerItemOutput *)&v4 dealloc];
}

- (BOOL)_attachToPlayerItem:(id)item
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (!item)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "playerItem != nil"), 0}];
    objc_exception_throw(v11);
  }

  ivarAccessQueue = self->_metadataOutputInternal->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__AVPlayerItemMetadataOutput__attachToPlayerItem___block_invoke;
  v12[3] = &unk_1E7461068;
  v12[5] = item;
  v12[6] = &v13;
  v12[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return (v9 & 1) == 0;
}

id __50__AVPlayerItemMetadataOutput__attachToPlayerItem___block_invoke(id result)
{
  *(*(*(result + 6) + 8) + 24) = *(*(*(result + 4) + 16) + 40) != 0;
  if ((*(*(*(result + 6) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 5) _weakReference];
    *(*(v1[4] + 16) + 40) = result;
  }

  return result;
}

- (void)_detachFromPlayerItem
{
  ivarAccessQueue = self->_metadataOutputInternal->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__AVPlayerItemMetadataOutput__detachFromPlayerItem__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateQueue
{
  if (delegate)
  {
    if (!delegateQueue)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = "newDelegateQueue != NULL";
      goto LABEL_9;
    }
  }

  else if (delegateQueue)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = "newDelegateQueue == NULL";
LABEL_9:
    v12 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", delegateQueue, v4, v5, v6, v7, v10), 0}];
    objc_exception_throw(v12);
  }

  delegateStorage = self->_metadataOutputInternal->delegateStorage;

  [AVWeakReferencingDelegateStorage setDelegate:"setDelegate:queue:" queue:?];
}

- (NSTimeInterval)advanceIntervalForDelegateInvocation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  metadataOutputInternal = self->_metadataOutputInternal;
  v10 = 0;
  ivarAccessQueue = metadataOutputInternal->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__AVPlayerItemMetadataOutput_advanceIntervalForDelegateInvocation__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __66__AVPlayerItemMetadataOutput_advanceIntervalForDelegateInvocation__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 16) + 48);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setAdvanceIntervalForDelegateInvocation:(NSTimeInterval)advanceIntervalForDelegateInvocation
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  ivarAccessQueue = self->_metadataOutputInternal->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AVPlayerItemMetadataOutput_setAdvanceIntervalForDelegateInvocation___block_invoke;
  v4[3] = &unk_1E7463C28;
  *&v4[7] = advanceIntervalForDelegateInvocation;
  v4[4] = self;
  v4[5] = &v11;
  v4[6] = &v5;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
  if (*(v12 + 24) == 1)
  {
    [objc_msgSend(v6[5] "referencedObject")];
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v11, 8);
}

double __70__AVPlayerItemMetadataOutput_setAdvanceIntervalForDelegateInvocation___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 56) != *(*(*(a1 + 32) + 16) + 48);
  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 32) + 16) + 40);
  result = *(a1 + 56);
  *(*(*(a1 + 32) + 16) + 48) = result;
  return result;
}

- (void)_signalFlush
{
  accumulationQueue = self->_metadataOutputInternal->accumulationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___signalFlush__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(accumulationQueue, block);
}

void __79__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___signalFlush__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 16) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___signalFlush__block_invoke_2;
  block[3] = &unk_1E7460C00;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __79__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___signalFlush__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 16) + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___signalFlush__block_invoke_3;
  v4[3] = &unk_1E7463C50;
  v4[4] = v1;
  return [v2 invokeDelegateCallbackWithBlock:v4];
}

uint64_t __79__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___signalFlush__block_invoke_3(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);

      return [a2 outputSequenceWasFlushed:v4];
    }
  }

  return result;
}

- (NSDictionary)_figMetadataOutputsDictionaryOptions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(AVPlayerItemMetadataOutput *)self advanceIntervalForDelegateInvocation];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [(NSDictionary *)dictionary setObject:v4 forKey:*MEMORY[0x1E6972460]];
  metadataIdentifiers = self->_metadataOutputInternal->metadataIdentifiers;
  if (metadataIdentifiers)
  {
    [(NSDictionary *)dictionary setObject:metadataIdentifiers forKey:*MEMORY[0x1E6972468]];
  }

  return dictionary;
}

- (void)_pushTimedMetadataGroups:(id)groups fromPlayerItemTrack:(id)track
{
  if ([groups count])
  {
    accumulationQueue = self->_metadataOutputInternal->accumulationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___pushTimedMetadataGroups_fromPlayerItemTrack___block_invoke;
    block[3] = &unk_1E7460E90;
    block[4] = groups;
    block[5] = self;
    block[6] = track;
    dispatch_async(accumulationQueue, block);
  }
}

void __112__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___pushTimedMetadataGroups_fromPlayerItemTrack___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(*(a1[5] + 16) + 56));
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  Value = CFDictionaryGetValue(MutableCopy, v3);
  if (Value)
  {
    v6 = [Value mutableCopy];
    [v6 addObjectsFromArray:v2];
    CFDictionarySetValue(MutableCopy, v3, v6);
  }

  else
  {
    CFDictionarySetValue(MutableCopy, v3, [MEMORY[0x1E695DF70] arrayWithArray:v2]);
  }

  v7 = *(a1[5] + 16);
  v8 = *(v7 + 56);
  *(v7 + 56) = MutableCopy;
  if (MutableCopy)
  {
    CFRetain(MutableCopy);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v9 = a1[5];
  v10 = *(*(v9 + 16) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___pushTimedMetadataGroups_fromPlayerItemTrack___block_invoke_2;
  block[3] = &unk_1E7460C00;
  block[4] = v9;
  dispatch_async(v10, block);
}

void __112__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___pushTimedMetadataGroups_fromPlayerItemTrack___block_invoke_2(uint64_t a1)
{
  if (CFDictionaryGetCount(*(*(*(a1 + 32) + 16) + 56)) >= 1)
  {
    v2 = dispatch_semaphore_create(0);
    v3 = *MEMORY[0x1E695E480];
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(*(*(a1 + 32) + 16) + 56));
    v5 = *(a1 + 32);
    v6 = *(*(v5 + 16) + 16);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __112__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___pushTimedMetadataGroups_fromPlayerItemTrack___block_invoke_3;
    v8[3] = &unk_1E7463C78;
    v8[5] = v2;
    v8[6] = Copy;
    v8[4] = v5;
    [v6 invokeDelegateCallbackWithBlock:v8];
    v7 = *(*(*(a1 + 32) + 16) + 56);
    if (v7)
    {
      CFRelease(v7);
    }

    *(*(*(a1 + 32) + 16) + 56) = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v2);
  }
}

intptr_t __112__AVPlayerItemMetadataOutput_AVPlayerItemMetadataOutput_Internal___pushTimedMetadataGroups_fromPlayerItemTrack___block_invoke_3(intptr_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    if (objc_opt_respondsToSelector())
    {
      Count = CFDictionaryGetCount(*(v3 + 48));
      v5 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      v6 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(*(v3 + 48), v5, v6);
      if (Count >= 1)
      {
        v7 = v5;
        v8 = v6;
        do
        {
          v10 = *v7++;
          v9 = v10;
          v12 = *v8++;
          v11 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = 0;
          }

          else
          {
            v13 = v9;
          }

          [a2 metadataOutput:*(v3 + 32) didOutputTimedMetadataGroups:v11 fromPlayerItemTrack:v13];
          --Count;
        }

        while (Count);
      }

      free(v5);
      free(v6);
    }

    CFRelease(*(v3 + 48));
    v14 = *(v3 + 40);

    return dispatch_semaphore_signal(v14);
  }

  return result;
}

@end