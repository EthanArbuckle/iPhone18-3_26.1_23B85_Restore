@interface AXAVFoundationMediaDescriptionManager
+ (id)sharedManager;
- (AXAVFoundationMediaDescriptionManager)init;
- (BOOL)beginObservingPlayer:(id)player;
- (BOOL)isTappingMediaDescriptions;
- (BOOL)isVoiceOverInTheTripleClickMenu;
- (id)_queue_itemNodeForPlayer:(id)player;
- (void)endObservingPlayer:(id)player;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation AXAVFoundationMediaDescriptionManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[AXAVFoundationMediaDescriptionManager sharedManager];
  }

  v3 = _SharedManager;

  return v3;
}

uint64_t __54__AXAVFoundationMediaDescriptionManager_sharedManager__block_invoke()
{
  _SharedManager = objc_alloc_init(AXAVFoundationMediaDescriptionManager);

  return MEMORY[0x2A1C71028]();
}

- (AXAVFoundationMediaDescriptionManager)init
{
  v10.receiver = self;
  v10.super_class = AXAVFoundationMediaDescriptionManager;
  v2 = [(AXAVFoundationMediaDescriptionManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AXAVFoundationMediaDescriptionManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [objc_alloc(MEMORY[0x29EDBD768]) initWithIdentifier:@"avkit-accessibility"];
    engine = v2->_engine;
    v2->_engine = v5;

    strongToWeakObjectsMapTable = [MEMORY[0x29EDBA028] strongToWeakObjectsMapTable];
    queue_nodeToPlayerMap = v2->_queue_nodeToPlayerMap;
    v2->_queue_nodeToPlayerMap = strongToWeakObjectsMapTable;
  }

  return v2;
}

- (BOOL)beginObservingPlayer:(id)player
{
  v22 = *MEMORY[0x29EDCA608];
  playerCopy = player;
  if (playerCopy)
  {
    playerCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"legibility-%p", playerCopy];
    v6 = [objc_alloc(MEMORY[0x29EDBD710]) initWithIdentifier:playerCopy];
    queue = self->_queue;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __62__AXAVFoundationMediaDescriptionManager_beginObservingPlayer___block_invoke;
    block[3] = &unk_29F2989F0;
    block[4] = self;
    v8 = playerCopy;
    v18 = v8;
    v9 = v6;
    v19 = v9;
    dispatch_sync(queue, block);
    [v9 addResultHandler:&__block_literal_global_294];
    engine = self->_engine;
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __62__AXAVFoundationMediaDescriptionManager_beginObservingPlayer___block_invoke_296;
    v15[3] = &unk_29F298A38;
    v15[4] = self;
    v16 = v9;
    v11 = v9;
    [(AXMVisionEngine *)engine updateEngineConfiguration:v15];
    v12 = AXMediaLogCaptionDescriptions();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_29BAC0000, v12, OS_LOG_TYPE_INFO, "Will begin observing player: %@", buf, 0xCu);
    }

    [v8 addObserver:self forKeyPath:@"currentItem" options:15 context:AXMediaPlayerObserverContext];
  }

  v13 = *MEMORY[0x29EDCA608];
  return playerCopy != 0;
}

void __62__AXAVFoundationMediaDescriptionManager_beginObservingPlayer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  AXPerformBlockOnMainThread();
}

void __62__AXAVFoundationMediaDescriptionManager_beginObservingPlayer___block_invoke_3(uint64_t a1)
{
  v2 = AXMediaLogCaptionDescriptions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__AXAVFoundationMediaDescriptionManager_beginObservingPlayer___block_invoke_3_cold_1(a1, v2);
  }

  if (*(a1 + 32) && UIAccessibilityIsVoiceOverRunning())
  {
    v3 = *(a1 + 32);
    v7 = 0;
    v4 = [MEMORY[0x29EDB9FF8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v7];
    v5 = v7;
    if (v5)
    {
      v6 = AXMediaLogCaptionDescriptions();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __62__AXAVFoundationMediaDescriptionManager_beginObservingPlayer___block_invoke_3_cold_2(v5, v6);
      }
    }

    else if (v4)
    {
      UIAccessibilityPostNotification(0x420u, v4);
    }
  }
}

- (void)endObservingPlayer:(id)player
{
  v24 = *MEMORY[0x29EDCA608];
  playerCopy = player;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __60__AXAVFoundationMediaDescriptionManager_endObservingPlayer___block_invoke;
  block[3] = &unk_29F298A60;
  v15 = &v16;
  block[4] = self;
  v6 = playerCopy;
  v14 = v6;
  dispatch_sync(queue, block);
  if (v17[5])
  {
    engine = self->_engine;
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __60__AXAVFoundationMediaDescriptionManager_endObservingPlayer___block_invoke_2;
    v12[3] = &unk_29F298A88;
    v12[4] = self;
    v12[5] = &v16;
    [(AXMVisionEngine *)engine updateEngineConfiguration:v12];
    v8 = self->_queue;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __60__AXAVFoundationMediaDescriptionManager_endObservingPlayer___block_invoke_3;
    v11[3] = &unk_29F298A88;
    v11[4] = self;
    v11[5] = &v16;
    dispatch_sync(v8, v11);
  }

  v9 = AXMediaLogCaptionDescriptions();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&dword_29BAC0000, v9, OS_LOG_TYPE_INFO, "Will end observing player: %@", buf, 0xCu);
  }

  [v6 removeObserver:self forKeyPath:@"currentItem" context:AXMediaPlayerObserverContext];
  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t __60__AXAVFoundationMediaDescriptionManager_endObservingPlayer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_itemNodeForPlayer:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)isTappingMediaDescriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __67__AXAVFoundationMediaDescriptionManager_isTappingMediaDescriptions__block_invoke;
  v5[3] = &unk_29F298A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __67__AXAVFoundationMediaDescriptionManager_isTappingMediaDescriptions__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 24) keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isTriggeringLegibilityEvents])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x29EDCA608];
}

- (id)_queue_itemNodeForPlayer:(id)player
{
  v21 = *MEMORY[0x29EDCA608];
  playerCopy = player;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyEnumerator = [(NSMapTable *)self->_queue_nodeToPlayerMap keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_queue_nodeToPlayerMap objectForKey:v10];
        v12 = v11;
        if (v11 == playerCopy)
        {
          v13 = v10;

          goto LABEL_11;
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v39 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (AXMediaPlayerObserverContext == context && [pathCopy isEqualToString:@"currentItem"])
  {
    v13 = AXMediaLogCaptionDescriptions();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = pathCopy;
      *&buf[12] = 2112;
      *&buf[14] = objectCopy;
      *&buf[22] = 2112;
      v36 = changeCopy;
      _os_log_impl(&dword_29BAC0000, v13, OS_LOG_TYPE_INFO, "Did observe change on. path:'%@' object:%@ change:%@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v36 = __Block_byref_object_copy_;
    v37 = __Block_byref_object_dispose_;
    v38 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __88__AXAVFoundationMediaDescriptionManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_29F298A60;
    v32 = buf;
    block[4] = self;
    v15 = objectCopy;
    v31 = v15;
    dispatch_sync(queue, block);
    if (*(*&buf[8] + 40))
    {
      v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x29EDB9EB0]];
      bOOLValue = [v16 BOOLValue];

      if (bOOLValue)
      {
        v18 = [changeCopy objectForKeyedSubscript:*MEMORY[0x29EDB9EB8]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(*&buf[8] + 40) endAutoTriggerOfLegibilityEvents];
        }
      }

      else
      {
        v18 = [changeCopy objectForKeyedSubscript:*MEMORY[0x29EDB9EA8]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(AXAVFoundationMediaDescriptionManager *)self _shouldAttachLegibilityOutputToItem:v18])
          {
            v20 = AXMediaLogCaptionDescriptions();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *v33 = 138412290;
              v34 = v18;
              _os_log_impl(&dword_29BAC0000, v20, OS_LOG_TYPE_INFO, "Will attach legibility node to item: %@", v33, 0xCu);
            }

            v23 = MEMORY[0x29EDCA5F8];
            v24 = 3221225472;
            v25 = __88__AXAVFoundationMediaDescriptionManager_observeValueForKeyPath_ofObject_change_context___block_invoke_301;
            v26 = &unk_29F298AB0;
            selfCopy = self;
            v29 = buf;
            v18 = v18;
            v28 = v18;
            AXPerformBlockOnMainThread();
          }

          else
          {
            v21 = AXMediaLogCaptionDescriptions();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *v33 = 138412290;
              v34 = v18;
              _os_log_impl(&dword_29BAC0000, v21, OS_LOG_TYPE_INFO, "Will NOT attach legibility node to item: %@", v33, 0xCu);
            }
          }
        }
      }
    }

    else
    {
      v18 = AXMediaLogCaptionDescriptions();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 138412290;
        v34 = v15;
        _os_log_impl(&dword_29BAC0000, v18, OS_LOG_TYPE_DEFAULT, "No legibility node found for player: %@", v33, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = AXAVFoundationMediaDescriptionManager;
    [(AXAVFoundationMediaDescriptionManager *)&v22 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

  v19 = *MEMORY[0x29EDCA608];
}

uint64_t __88__AXAVFoundationMediaDescriptionManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_itemNodeForPlayer:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __88__AXAVFoundationMediaDescriptionManager_observeValueForKeyPath_ofObject_change_context___block_invoke_301(uint64_t a1)
{
  if (UIAccessibilityIsVoiceOverRunning() || (result = [*(a1 + 32) isVoiceOverInTheTripleClickMenu], result))
  {
    v3 = *(a1 + 40);
    v4 = *(*(*(a1 + 48) + 8) + 40);

    return [v4 autoTriggerLegibilityEventsWithAVPlayerItem:v3];
  }

  return result;
}

- (BOOL)isVoiceOverInTheTripleClickMenu
{
  v2 = _AXSTripleClickCopyOptions();
  v3 = _AXSTripleClickContainsOption();
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

void __62__AXAVFoundationMediaDescriptionManager_beginObservingPlayer___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_29BAC0000, a2, OS_LOG_TYPE_DEBUG, "handling engine legibility result: %@", &v4, 0xCu);
  v3 = *MEMORY[0x29EDCA608];
}

void __62__AXAVFoundationMediaDescriptionManager_beginObservingPlayer___block_invoke_3_cold_2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = [a1 ax_nonRedundantDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_29BAC0000, a2, OS_LOG_TYPE_ERROR, "Failed to archive data: %@", &v5, 0xCu);

  v4 = *MEMORY[0x29EDCA608];
}

@end