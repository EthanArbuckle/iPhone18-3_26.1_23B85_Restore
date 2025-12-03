@interface AVPlayerItemMetadataCollector
- (AVPlayerItemMetadataCollector)initWithIdentifiers:(NSArray *)identifiers classifyingLabels:(NSArray *)classifyingLabels;
- (BOOL)_attachToPlayerItem:(id)item;
- (BOOL)_isAttachedToPlayerItem;
- (id)_getFilteredMetadataGroups:(id)groups fromIdentifiers:(id)identifiers andClassifyingLabels:(id)labels modifiedIndexesOut:(id *)out newIndexesOut:(id *)indexesOut;
- (void)_detatchFromPlayerItem;
- (void)_updateTaggedRangeMetadataArray:(id)array;
- (void)dealloc;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateQueue;
@end

@implementation AVPlayerItemMetadataCollector

- (AVPlayerItemMetadataCollector)initWithIdentifiers:(NSArray *)identifiers classifyingLabels:(NSArray *)classifyingLabels
{
  v9.receiver = self;
  v9.super_class = AVPlayerItemMetadataCollector;
  v6 = [(AVPlayerItemMediaDataCollector *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVPlayerItemMetadataCollectorInternal);
    v6->_metadataCollectorInternal = v7;
    if (v7)
    {
      CFRetain(v7);
      v6->_metadataCollectorInternal->identifiers = [(NSArray *)identifiers copy];
      v6->_metadataCollectorInternal->classifyingLabels = [(NSArray *)classifyingLabels copy];
      v6->_metadataCollectorInternal->delegateStorage = objc_alloc_init(AVWeakReferencingDelegateStorage);
      v6->_metadataCollectorInternal->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplayeritemmetadatacollector.ivars");
      v6->_metadataCollectorInternal->mostRecentlyModifiedMetadataGroupTimestamp = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:0.0];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  metadataCollectorInternal = self->_metadataCollectorInternal;
  if (metadataCollectorInternal)
  {

    v4 = self->_metadataCollectorInternal;
    if (v4[2])
    {
      dispatch_release(v4[2]);
      v4 = self->_metadataCollectorInternal;
    }

    CFRelease(v4);
    metadataCollectorInternal = self->_metadataCollectorInternal;
  }

  v5.receiver = self;
  v5.super_class = AVPlayerItemMetadataCollector;
  [(AVPlayerItemMediaDataCollector *)&v5 dealloc];
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

  delegateStorage = self->_metadataCollectorInternal->delegateStorage;

  [AVWeakReferencingDelegateStorage setDelegate:"setDelegate:queue:" queue:?];
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

  ivarAccessQueue = self->_metadataCollectorInternal->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__AVPlayerItemMetadataCollector_AVPlayerItemMediaDataCollector_Internal___attachToPlayerItem___block_invoke;
  v12[3] = &unk_1E7461068;
  v12[5] = item;
  v12[6] = &v13;
  v12[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return (v9 & 1) == 0;
}

id __94__AVPlayerItemMetadataCollector_AVPlayerItemMediaDataCollector_Internal___attachToPlayerItem___block_invoke(id result)
{
  *(*(*(result + 6) + 8) + 24) = *(*(*(result + 4) + 16) + 48) != 0;
  if ((*(*(*(result + 6) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 5) _weakReference];
    *(*(v1[4] + 16) + 48) = result;
  }

  return result;
}

- (void)_detatchFromPlayerItem
{
  ivarAccessQueue = self->_metadataCollectorInternal->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96__AVPlayerItemMetadataCollector_AVPlayerItemMediaDataCollector_Internal___detatchFromPlayerItem__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (BOOL)_isAttachedToPlayerItem
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  metadataCollectorInternal = self->_metadataCollectorInternal;
  v10 = 0;
  ivarAccessQueue = metadataCollectorInternal->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__AVPlayerItemMetadataCollector_AVPlayerItemMediaDataCollector_Internal___isAttachedToPlayerItem__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)_getFilteredMetadataGroups:(id)groups fromIdentifiers:(id)identifiers andClassifyingLabels:(id)labels modifiedIndexesOut:(id *)out newIndexesOut:(id *)indexesOut
{
  v60 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  v12 = self->_metadataCollectorInternal->mostRecentlyModifiedMetadataGroupTimestamp;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = groups;
  v49 = [groups countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v49)
  {
    v48 = *v55;
    identifiersCopy = identifiers;
    labelsCopy = labels;
    v45 = v12;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v55 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [[AVDateRangeMetadataGroup alloc] _initWithTaggedRangeMetadataDictionary:*(*(&v54 + 1) + 8 * i) items:0];
        v15 = v14;
        if (!labels || [v14 classifyingLabel] && objc_msgSend(labels, "containsObject:", objc_msgSend(v15, "classifyingLabel")))
        {
          modificationTimestamp = [v15 modificationTimestamp];
          if (identifiers)
          {
            selfCopy = self;
            v18 = +[AVMetadataItem metadataItemsFromArray:filteredByIdentifiers:](AVMetadataItem, "metadataItemsFromArray:filteredByIdentifiers:", [v15 items], identifiers);
            v19 = [v15 mutableCopy];
            [v19 setItems:v18];

            v15 = [v19 copy];
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v20 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = array;
              v23 = *v51;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v51 != v23)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v25 = *(*(&v50 + 1) + 8 * j);
                  [objc_msgSend(v25 "discoveryTimestamp")];
                  v27 = v26;
                  [modificationTimestamp timeIntervalSinceReferenceDate];
                  if (v27 > v28)
                  {
                    modificationTimestamp = [v25 discoveryTimestamp];
                  }
                }

                v21 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
              }

              while (v21);
              array = v22;
              identifiers = identifiersCopy;
              labels = labelsCopy;
            }

            self = selfCopy;
            v12 = v45;
          }

          [array addObject:v15];
          [objc_msgSend(v15 "discoveryTimestamp")];
          v30 = v29;
          [(NSDate *)v12 timeIntervalSinceReferenceDate];
          v31 = indexSet2;
          if (v30 > v32 || ([modificationTimestamp timeIntervalSinceReferenceDate], v34 = v33, -[NSDate timeIntervalSinceReferenceDate](v12, "timeIntervalSinceReferenceDate"), v31 = indexSet, v34 > v35))
          {
            [v31 addIndex:{objc_msgSend(array, "indexOfObject:", v15)}];
          }

          [modificationTimestamp timeIntervalSinceReferenceDate];
          v37 = v36;
          [(NSDate *)self->_metadataCollectorInternal->mostRecentlyModifiedMetadataGroupTimestamp timeIntervalSinceReferenceDate];
          if (v37 > v38)
          {

            self->_metadataCollectorInternal->mostRecentlyModifiedMetadataGroupTimestamp = modificationTimestamp;
          }
        }
      }

      v49 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v49);
  }

  *out = [indexSet copy];
  *indexesOut = [indexSet2 copy];

  return array;
}

- (void)_updateTaggedRangeMetadataArray:(id)array
{
  ivarAccessQueue = self->_metadataCollectorInternal->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__AVPlayerItemMetadataCollector_AVPlayerItemMediaDataCollector_Internal___updateTaggedRangeMetadataArray___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = array;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v4);
}

uint64_t __106__AVPlayerItemMetadataCollector_AVPlayerItemMediaDataCollector_Internal___updateTaggedRangeMetadataArray___block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v2 = [*(a1 + 32) _getFilteredMetadataGroups:*(a1 + 40) fromIdentifiers:*(*(*(a1 + 32) + 16) + 24) andClassifyingLabels:*(*(*(a1 + 32) + 16) + 32) modifiedIndexesOut:&v8 newIndexesOut:&v7];
  if ([v8 count] || (result = objc_msgSend(v7, "count")) != 0)
  {
    v4 = *(a1 + 32);
    v5 = *(*(v4 + 16) + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __106__AVPlayerItemMetadataCollector_AVPlayerItemMediaDataCollector_Internal___updateTaggedRangeMetadataArray___block_invoke_2;
    v6[3] = &unk_1E74637F0;
    v6[4] = v4;
    v6[5] = v2;
    v6[6] = v7;
    v6[7] = v8;
    return [v5 invokeDelegateCallbackWithBlock:v6];
  }

  return result;
}

uint64_t __106__AVPlayerItemMetadataCollector_AVPlayerItemMediaDataCollector_Internal___updateTaggedRangeMetadataArray___block_invoke_2(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) _isAttachedToPlayerItem];
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);

      return [a2 metadataCollector:v5 didCollectDateRangeMetadataGroups:v6 indexesOfNewGroups:v7 indexesOfModifiedGroups:v8];
    }
  }

  return result;
}

@end