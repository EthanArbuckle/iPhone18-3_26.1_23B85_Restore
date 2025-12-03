@interface BKHIDEventDeliverySequence
- (BKHIDEventDeliverySequence)initWithProcessor:(id)processor dispatcher:(id)dispatcher senderInfo:(id)info additionalContext:(id)context keyCommand:(id)command deliveryManager:(id)manager resolutions:(id)resolutions buffers:(id)self0;
- (NSString)description;
- (id)buffers;
- (id)resolutions;
- (void)_resolveDispatchTargetsToBuffers:(int)buffers repostFirstEvent:;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)dealloc;
- (void)postEvent:(__IOHIDEvent *)event position:(int64_t)position additionalContext:(id)context;
- (void)postEvent:(__IOHIDEvent *)event position:(int64_t)position additionalContext:(id)context fromBuffer:(id)buffer toResolution:(id)resolution;
- (void)repostFirstEventToBufferedTargets:(id)targets;
@end

@implementation BKHIDEventDeliverySequence

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__BKHIDEventDeliverySequence_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2784F7270;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

id __59__BKHIDEventDeliverySequence_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__BKHIDEventDeliverySequence_appendDescriptionToFormatter___block_invoke_2;
  v8[3] = &unk_2784F6C10;
  v8[4] = *(a1 + 40);
  [v2 appendCustomFormatWithName:@"sq" block:v8];
  v3 = [*(*(a1 + 40) + 56) count];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [*(*(a1 + 40) + 56) bs_compactMap:&__block_literal_global_1496];
    v6 = [v4 appendObject:v5 withName:@"buffers"];
  }

  result = [*(*(a1 + 40) + 72) count];
  if (result)
  {
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:0];
  }

  if (!v3)
  {
    return [*(a1 + 32) appendString:@"(no destinations)" withName:0];
  }

  return result;
}

- (id)resolutions
{
  v2 = [(NSMutableSet *)self->_currentResolutions copy];

  return v2;
}

- (id)buffers
{
  v2 = [(NSMutableSet *)self->_currentBuffers copy];

  return v2;
}

- (void)repostFirstEventToBufferedTargets:(id)targets
{
  v4 = MEMORY[0x277CBEB38];
  targetsCopy = targets;
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__BKHIDEventDeliverySequence_repostFirstEventToBufferedTargets___block_invoke;
  v8[3] = &unk_2784F6BE8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [targetsCopy enumerateKeysAndObjectsUsingBlock:v8];

  [(BKHIDEventDeliverySequence *)self _resolveDispatchTargetsToBuffers:v7 repostFirstEvent:1];
}

void __64__BKHIDEventDeliverySequence_repostFirstEventToBufferedTargets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(*(a1 + 32) + 88) containsObject:v5] & 1) == 0)
  {
    [*(*(a1 + 32) + 88) addObject:v5];
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

- (void)_resolveDispatchTargetsToBuffers:(int)buffers repostFirstEvent:
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [*(self + 72) copy];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v22;
      *&v8 = 134218498;
      v20 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          dispatchingTarget = [v12 dispatchingTarget];
          v14 = [v5 objectForKey:dispatchingTarget];

          if (v14)
          {
            [*(self + 72) removeObject:v12];
            [*(self + 56) addObject:v14];
            v15 = BKLogEventDelivery();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = v20;
              selfCopy2 = self;
              v27 = 2114;
              v28 = v12;
              v29 = 2048;
              v30 = v14;
              _os_log_debug_impl(&dword_223CBE000, v15, OS_LOG_TYPE_DEBUG, "sq:%p %{public}@ is now buffering to buf:%p", buf, 0x20u);
            }

            if (buffers)
            {
              v16 = BKLogEventDelivery();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v17 = *(self + 96);
                v18 = BKSHIDEventGetConciseDescription();
                *buf = v20;
                selfCopy2 = self;
                v27 = 2114;
                v28 = v18;
                v29 = 2048;
                v30 = v14;
                _os_log_debug_impl(&dword_223CBE000, v16, OS_LOG_TYPE_DEBUG, "sq:%p repost [%{public}@] to buf:%p", buf, 0x20u);
              }

              [v14 appendEvent:*(self + 96) sender:*(self + 8) sequence:self additionalContext:*(self + 104)];
              [*(self + 64) addObject:v14];
            }
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v9);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)postEvent:(__IOHIDEvent *)event position:(int64_t)position additionalContext:(id)context fromBuffer:(id)buffer toResolution:(id)resolution
{
  v52 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  bufferCopy = buffer;
  resolutionCopy = resolution;
  dispatchingTarget = [resolutionCopy dispatchingTarget];
  v32 = bufferCopy;
  v12 = [(NSMutableSet *)self->_repostedToBuffers containsObject:bufferCopy];
  v13 = v12;
  positionCopy = position;
  if (position <= 1 && (v12 & 1) != 0)
  {
    goto LABEL_19;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = [(NSMutableSet *)self->_resolutionsWithIncompleteSequences copy];
  v15 = [v14 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (!v15)
  {

LABEL_19:
    v18 = 0;
LABEL_20:
    if (([v18 isEqual:resolutionCopy] & 1) == 0 && (positionCopy != 1 || (-[NSMutableSet containsObject:](self->_resolutionsWithIncompleteSequences, "containsObject:", resolutionCopy) & 1) == 0))
    {
      if ([(NSMutableSet *)self->_buffersWithIncompleteSequences containsObject:v32])
      {
        [(NSMutableSet *)self->_currentResolutions addObject:resolutionCopy];
      }

      v28 = BKLogEventDelivery();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v30 = BKSHIDEventGetConciseDescription();
        *buf = 134218754;
        selfCopy2 = self;
        v45 = 2048;
        v46 = v32;
        v47 = 2114;
        v48 = v30;
        v49 = 2114;
        v50 = resolutionCopy;
        _os_log_debug_impl(&dword_223CBE000, v28, OS_LOG_TYPE_DEBUG, "sq:%p buf:%p post [%{public}@] to resolution:%{public}@", buf, 0x2Au);
      }

      [(BKHIDBufferedEventProcessor *)self->_processor postEvent:event withContext:contextCopy toResolution:resolutionCopy fromSequence:self];
    }

    goto LABEL_28;
  }

  v17 = v15;
  v34 = v13;
  v18 = 0;
  v19 = *v40;
  v20 = 1;
  *&v16 = 134218754;
  v31 = v16;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v40 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v22 = *(*(&v39 + 1) + 8 * i);
      dispatchingTarget2 = [v22 dispatchingTarget];
      v24 = [dispatchingTarget isEqual:dispatchingTarget2];

      if (v24)
      {
        v25 = BKLogEventDelivery();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v27 = BKSHIDEventGetConciseDescription();
          *buf = v31;
          selfCopy2 = self;
          v45 = 2048;
          v46 = v32;
          v47 = 2114;
          v48 = v27;
          v49 = 2114;
          v50 = resolutionCopy;
          _os_log_debug_impl(&dword_223CBE000, v25, OS_LOG_TYPE_DEBUG, "sq:%p buf:%p unbuffer [%{public}@] to resolution:%{public}@", buf, 0x2Au);
        }

        [(BKHIDBufferedEventProcessor *)self->_processor postEvent:event withContext:contextCopy toResolution:v22 fromSequence:self];
        v26 = v22;

        v20 = v34;
        if (positionCopy == 3)
        {
          [(NSMutableSet *)self->_resolutionsWithIncompleteSequences removeObject:v26];
        }

        v18 = v26;
      }
    }

    v17 = [v14 countByEnumeratingWithState:&v39 objects:v51 count:16];
  }

  while (v17);

  if (v20)
  {
    goto LABEL_20;
  }

LABEL_28:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)postEvent:(__IOHIDEvent *)event position:(int64_t)position additionalContext:(id)context
{
  v54 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (self->_firstEvent)
  {
    firstAdditionalContext = [(BKHIDEventDeliveryManager *)self->_deliveryManager currentBuffersPerDispatchTarget];
    [(BKHIDEventDeliverySequence *)self _resolveDispatchTargetsToBuffers:0 repostFirstEvent:?];
  }

  else
  {
    self->_firstEvent = IOHIDEventCreateCopy();
    v10 = contextCopy;
    firstAdditionalContext = self->_firstAdditionalContext;
    self->_firstAdditionalContext = v10;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_currentBuffers;
  v12 = [(NSMutableSet *)obj countByEnumeratingWithState:&v42 objects:v53 count:16];
  v37 = contextCopy;
  if (v12)
  {
    v14 = v12;
    v15 = *v43;
    *&v13 = 134218498;
    v33 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v42 + 1) + 8 * i);
        dispatchTarget = [v17 dispatchTarget];
        [v11 addObject:dispatchTarget];

        v19 = BKLogEventDelivery();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = BKSHIDEventGetConciseDescription();
          *buf = v33;
          selfCopy2 = self;
          v49 = 2114;
          v50 = v20;
          v51 = 2048;
          v52 = v17;
          _os_log_debug_impl(&dword_223CBE000, v19, OS_LOG_TYPE_DEBUG, "sq:%p append [%{public}@] to buf:%p", buf, 0x20u);

          contextCopy = v37;
        }

        [v17 appendEvent:event sender:self->_senderInfo sequence:self additionalContext:contextCopy];
        if (position == 3)
        {
          [(NSMutableSet *)self->_buffersWithIncompleteSequences removeObject:v17];
        }

        else if (position == 1)
        {
          [(NSMutableSet *)self->_buffersWithIncompleteSequences addObject:v17];
        }
      }

      v14 = [(NSMutableSet *)obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v14);
  }

  v21 = [(NSMutableSet *)self->_currentResolutions mutableCopy];
  [v21 unionSet:self->_resolutionsWithIncompleteSequences];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obja = v21;
  v22 = [obja countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v22)
  {
    v24 = v22;
    v25 = *v39;
    *&v23 = 134218498;
    v34 = v23;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v38 + 1) + 8 * j);
        dispatchingTarget = [v27 dispatchingTarget];
        v29 = [v11 containsObject:dispatchingTarget];

        if ((v29 & 1) == 0)
        {
          v30 = BKLogEventDelivery();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = BKSHIDEventGetConciseDescription();
            *buf = v34;
            selfCopy2 = self;
            v49 = 2114;
            v50 = v31;
            v51 = 2114;
            v52 = v27;
            _os_log_debug_impl(&dword_223CBE000, v30, OS_LOG_TYPE_DEBUG, "sq:%p post [%{public}@] to resolution:%{public}@", buf, 0x20u);
          }

          [(BKHIDBufferedEventProcessor *)self->_processor postEvent:event withContext:v37 toResolution:v27 fromSequence:self];
          if (position == 3)
          {
            [(NSMutableSet *)self->_resolutionsWithIncompleteSequences removeObject:v27];
          }

          else if (position == 1)
          {
            [(NSMutableSet *)self->_resolutionsWithIncompleteSequences addObject:v27];
          }
        }
      }

      v24 = [obja countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v24);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v2 = [MEMORY[0x277CF0C08] descriptionForRootObject:self];
  v3 = [v2 description];

  return v3;
}

- (void)dealloc
{
  firstEvent = self->_firstEvent;
  if (firstEvent)
  {
    CFRelease(firstEvent);
    self->_firstEvent = 0;
  }

  v4.receiver = self;
  v4.super_class = BKHIDEventDeliverySequence;
  [(BKHIDEventDeliverySequence *)&v4 dealloc];
}

- (BKHIDEventDeliverySequence)initWithProcessor:(id)processor dispatcher:(id)dispatcher senderInfo:(id)info additionalContext:(id)context keyCommand:(id)command deliveryManager:(id)manager resolutions:(id)resolutions buffers:(id)self0
{
  processorCopy = processor;
  dispatcherCopy = dispatcher;
  infoCopy = info;
  contextCopy = context;
  commandCopy = command;
  managerCopy = manager;
  resolutionsCopy = resolutions;
  buffersCopy = buffers;
  v38.receiver = self;
  v38.super_class = BKHIDEventDeliverySequence;
  v20 = [(BKHIDEventDeliverySequence *)&v38 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_deliveryManager, manager);
    objc_storeStrong(&v21->_dispatcher, dispatcher);
    objc_storeStrong(&v21->_processor, processor);
    objc_storeStrong(&v21->_additionalContext, context);
    objc_storeStrong(&v21->_senderInfo, info);
    objc_storeStrong(&v21->_keyCommand, command);
    if (buffersCopy)
    {
      v22 = [buffersCopy mutableCopy];
    }

    else
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    currentBuffers = v21->_currentBuffers;
    v21->_currentBuffers = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    buffersWithIncompleteSequences = v21->_buffersWithIncompleteSequences;
    v21->_buffersWithIncompleteSequences = v24;

    if (resolutionsCopy)
    {
      v26 = [resolutionsCopy mutableCopy];
    }

    else
    {
      v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    currentResolutions = v21->_currentResolutions;
    v21->_currentResolutions = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
    resolutionsWithIncompleteSequences = v21->_resolutionsWithIncompleteSequences;
    v21->_resolutionsWithIncompleteSequences = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
    repostedToBuffers = v21->_repostedToBuffers;
    v21->_repostedToBuffers = v30;
  }

  return v21;
}

@end