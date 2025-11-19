@interface AXMAVPlayerItemNode
- (AVPlayerItem)targetPlayerItem;
- (id)axmDescription;
- (void)_mainQueue_endAutoTriggerOfLegibilityEvents;
- (void)autoTriggerLegibilityEventsWithAVPlayerItem:(id)a3;
- (void)endAutoTriggerOfLegibilityEvents;
- (void)legibleOutput:(id)a3 didOutputAttributedStrings:(id)a4 nativeSampleBuffers:(id)a5 forItemTime:(id *)a6;
- (void)nodeInitialize;
- (void)setShouldProcessRemotely:(BOOL)a3;
@end

@implementation AXMAVPlayerItemNode

- (void)setShouldProcessRemotely:(BOOL)a3
{
  if (a3)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];

    [v5 raise:v6 format:@"AXMAVPlayerItemNode does not support remote triggering"];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = AXMAVPlayerItemNode;
    [(AXMSourceNode *)&v7 setShouldProcessRemotely:?];
  }
}

- (void)nodeInitialize
{
  v6.receiver = self;
  v6.super_class = AXMAVPlayerItemNode;
  [(AXMSourceNode *)&v6 nodeInitialize];
  v3 = dispatch_queue_create("AXMAVPlayerItemNode-avkit-queue", 0);
  avkit_queue = self->_avkit_queue;
  self->_avkit_queue = v3;

  v5 = +[AXMVisionAnalysisOptions defaultOptions];
  [(AXMAVPlayerItemNode *)self setAnalysisOptions:v5];
}

- (void)autoTriggerLegibilityEventsWithAVPlayerItem:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__AXMAVPlayerItemNode_autoTriggerLegibilityEventsWithAVPlayerItem___block_invoke;
  v6[3] = &unk_1E7A1CB30;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __67__AXMAVPlayerItemNode_autoTriggerLegibilityEventsWithAVPlayerItem___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = AXMediaLogCaptionDescriptions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *v1;
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1AE37B000, v3, OS_LOG_TYPE_DEFAULT, "Will begin processing legibility events with player item: %@", &v13, 0xCu);
    }

    v6 = *(a1 + 40);
    v5 = (a1 + 40);
    v7 = [v6 targetPlayerItem];

    if (v7)
    {
      v8 = [*v5 targetPlayerItem];
      v9 = *v1;

      v10 = AXMediaLogCaptionDescriptions();
      v11 = v10;
      if (v8 == v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v1;
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&dword_1AE37B000, &v11->super.super.super, OS_LOG_TYPE_DEFAULT, "Asked to auto-trigger events with item: '%@', but same targetPalyerItem was already set!", &v13, 0xCu);
        }

        goto LABEL_10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __67__AXMAVPlayerItemNode_autoTriggerLegibilityEventsWithAVPlayerItem___block_invoke_cold_1(v1, v5, &v11->super.super.super);
      }

      [*v5 _mainQueue_endAutoTriggerOfLegibilityEvents];
    }

    v11 = objc_alloc_init(_AXMPlayerItemLegibleOutput);
    [(AVPlayerItemLegibleOutput *)v11 setDelegate:*v5 queue:*(*v5 + 7)];
    [*v1 addOutput:v11];
    [*v5 setTargetPlayerItem:*v1];
LABEL_10:
  }
}

- (void)_mainQueue_endAutoTriggerOfLegibilityEvents
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(AXMAVPlayerItemNode *)self targetPlayerItem];
  v4 = AXMediaLogCaptionDescriptions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v3;
    _os_log_impl(&dword_1AE37B000, v4, OS_LOG_TYPE_DEFAULT, "Will stop processing legibility events for player item: %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v3 outputs];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v3 removeOutput:{*(*(&v17 + 1) + 8 * v16++), v17}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  [(AXMAVPlayerItemNode *)self setTargetPlayerItem:0];
  self->_triggeringLegibilityEvents = 0;
}

- (void)endAutoTriggerOfLegibilityEvents
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AXMAVPlayerItemNode_endAutoTriggerOfLegibilityEvents__block_invoke;
  block[3] = &unk_1E7A1CCB8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)axmDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = AXMAVPlayerItemNode;
  v4 = [(AXMVisionEngineNode *)&v8 axmDescription];
  v5 = [(AXMAVPlayerItemNode *)self targetPlayerItem];
  v6 = [v3 stringWithFormat:@"%@ playerItem:<%@>", v4, v5];

  return v6;
}

- (void)legibleOutput:(id)a3 didOutputAttributedStrings:(id)a4 nativeSampleBuffers:(id)a5 forItemTime:(id *)a6
{
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = AXMediaLogCaptionDescriptions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AXMAVPlayerItemNode legibleOutput:v7 didOutputAttributedStrings:v8 nativeSampleBuffers:? forItemTime:?];
  }

  self->_triggeringLegibilityEvents = 1;
  if ([v7 count])
  {
    v25[0] = @"sourceProvidesResults";
    v25[1] = @"diagnosticsEnabled";
    v26[0] = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
    v26[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v11 = [(AXMAVPlayerItemNode *)self analysisOptions];
    v12 = [AXMVisionPipelineContext contextWithSourceParameters:v10 options:v11];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [AXMVisionFeature featureWithMediaLegibility:*(*(&v20 + 1) + 8 * v17)];
          [v12 appendFeature:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    v19.receiver = self;
    v19.super_class = AXMAVPlayerItemNode;
    [(AXMSourceNode *)&v19 triggerWithContext:v12 cacheKey:0 resultHandler:0];
  }
}

- (AVPlayerItem)targetPlayerItem
{
  WeakRetained = objc_loadWeakRetained(&self->_targetPlayerItem);

  return WeakRetained;
}

void __67__AXMAVPlayerItemNode_autoTriggerLegibilityEventsWithAVPlayerItem___block_invoke_cold_1(uint64_t *a1, id *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [*a2 targetPlayerItem];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1AE37B000, a3, OS_LOG_TYPE_ERROR, "Asked to auto-trigger events with item: '%@', but targetPalyerItem already exists: '%@'. Unregistering current targetPalyerItem first. ", &v6, 0x16u);
}

- (void)legibleOutput:(uint64_t)a1 didOutputAttributedStrings:(NSObject *)a2 nativeSampleBuffers:forItemTime:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_DEBUG, "legibility event: %@", &v2, 0xCu);
}

@end