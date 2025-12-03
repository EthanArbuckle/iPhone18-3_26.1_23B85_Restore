@interface AVPlayerCaptionLayer
+ (id)captionLayerWithPlayer:(id)player;
- (AVPlayer)player;
- (AVPlayerCaptionLayer)init;
- (BOOL)_showInterstitialInstead;
- (NSEdgeInsets)captionContentInsets;
- (id)_interstitialLayer;
- (void)_setShowInterstitialInstead:(BOOL)instead;
- (void)_startObservingPlayer:(id)player;
- (void)_stopObservingPlayer:(id)player;
- (void)dealloc;
- (void)layoutSublayers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setBounds:(CGRect)bounds;
- (void)setCaptionContentInsets:(NSEdgeInsets)insets;
- (void)setInsetsOptions:(id)options;
- (void)setPlayer:(id)player;
- (void)setValue:(id)value forKeyPath:(id)path;
@end

@implementation AVPlayerCaptionLayer

+ (id)captionLayerWithPlayer:(id)player
{
  v4 = objc_alloc_init(AVPlayerCaptionLayer);
  [(AVPlayerCaptionLayer *)v4 setPlayer:player];
  return v4;
}

- (AVPlayerCaptionLayer)init
{
  v9.receiver = self;
  v9.super_class = AVPlayerCaptionLayer;
  v2 = [(AVPlayerCaptionLayer *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6970AD8]);
    *(v2 + 6) = v3;
    [v2 addSublayer:v3];
    [*(v2 + 6) setEdgeAntialiasingMask:0];
    v4 = objc_alloc_init(AVPlayerLayerIntermediateLayer);
    *(v2 + 7) = v4;
    [v2 addSublayer:v4];
    v5 = *(MEMORY[0x1E696A2A0] + 16);
    *(v2 + 120) = *MEMORY[0x1E696A2A0];
    *(v2 + 136) = v5;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v2 + 8) = dispatch_queue_create("AVPlayerCaptionLayerQueue", v6);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v2 + 9) = dispatch_queue_create("com.apple.avfoundation.playercaptionlayer.configuration", v7);
    *(v2 + 14) = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v2;
}

- (void)layoutSublayers
{
  [(AVPlayerCaptionLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3052000000;
  v15[3] = __Block_byref_object_copy__26;
  v15[4] = __Block_byref_object_dispose__26;
  v15[5] = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AVPlayerCaptionLayer_layoutSublayers__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = v15;
  dispatch_sync(serialQueue, block);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__AVPlayerCaptionLayer_layoutSublayers__block_invoke_2;
  v13[3] = &unk_1E7464F18;
  v13[6] = v4;
  v13[7] = v6;
  v13[8] = v8;
  v13[9] = v10;
  v13[4] = self;
  v13[5] = v15;
  AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v13);
  [[(AVPlayerCaptionLayer *)self player] _updateClosedCaptionLayerBounds:self->_closedCaptionLayer videoRelativeToViewport:0 captionsAvoidanceMargins:&self->_legibleContentInsets];
  v12.receiver = self;
  v12.super_class = AVPlayerCaptionLayer;
  [(AVPlayerCaptionLayer *)&v12 layoutSublayers];
  _Block_object_dispose(v15, 8);
}

id __39__AVPlayerCaptionLayer_layoutSublayers__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 88);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __39__AVPlayerCaptionLayer_layoutSublayers__block_invoke_2(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(*(*(a1 + 40) + 8) + 40) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(*(a1 + 32) + 48) setViewport:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(*(a1 + 32) + 56);
  MidX = CGRectGetMidX(*(a1 + 48));
  [v2 setPosition:{MidX, CGRectGetMidY(*(a1 + 48))}];
  [*(*(a1 + 32) + 56) setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [MEMORY[0x1E6979518] commit];
  v4 = *(*(*(a1 + 40) + 8) + 40);
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(AVPlayerCaptionLayer *)self bounds];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {
    v8.receiver = self;
    v8.super_class = AVPlayerCaptionLayer;
    [(AVPlayerCaptionLayer *)&v8 setBounds:x, y, width, height];
    [(AVPlayerCaptionLayer *)self setNeedsLayout];
  }
}

- (void)dealloc
{
  if (self->_playerBeingObserved)
  {
    [(AVPlayerCaptionLayer *)self _stopObservingPlayer:?];
  }

  [(AVPlayer *)self->_player _removePlayerCaptionLayer:self];
  serialQueue = self->_serialQueue;
  if (serialQueue)
  {
    dispatch_release(serialQueue);
  }

  configurationQueue = self->_configurationQueue;
  if (configurationQueue)
  {
    dispatch_release(configurationQueue);
  }

  v5.receiver = self;
  v5.super_class = AVPlayerCaptionLayer;
  [(AVPlayerCaptionLayer *)&v5 dealloc];
}

- (void)setPlayer:(id)player
{
  player = self->_player;
  if (player != player)
  {
    [(AVPlayer *)player _removePlayerCaptionLayer:self];
    serialQueue = self->_serialQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __34__AVPlayerCaptionLayer_setPlayer___block_invoke;
    v8[3] = &unk_1E7460DF0;
    v8[4] = self;
    v8[5] = player;
    dispatch_sync(serialQueue, v8);
    v7 = self->_player;
    if (v7)
    {
      [(AVPlayer *)v7 _addPlayerCaptionLayer:self];
    }
  }
}

void __34__AVPlayerCaptionLayer_setPlayer___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);

  *(*(a1 + 32) + 80) = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AVPlayerCaptionLayer_setPlayer___block_invoke_2;
  block[3] = &unk_1E7460E90;
  block[4] = v3;
  block[5] = v2;
  block[6] = v4;
  dispatch_async(v5, block);
}

uint64_t __34__AVPlayerCaptionLayer_setPlayer___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _stopObservingPlayer:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _startObservingPlayer:v3];
}

- (AVPlayer)player
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__AVPlayerCaptionLayer_player__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __30__AVPlayerCaptionLayer_player__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_startObservingPlayer:(id)player
{
  if (self->_player)
  {
    if (!self->_playerBeingObserved)
    {
      self->_playerBeingObserved = player;
      v5 = +[AVKVODispatcher sharedKVODispatcher];
      v6 = [MEMORY[0x1E695DFA8] set];
      [v6 addObject:{objc_msgSend(v5, "startObservingObject:weakObserver:forTwoPartKeyPath:options:context:", player, self, AVTwoPartKeyPathMake(@"currentItem", @"nonForcedSubtitleDisplayEnabled", 5, AVPlayerLayerPlayerItemSubtitleDisplayEnabledObserverContext)}];
      [v6 addObject:{objc_msgSend(v5, "startObservingObject:weakObserver:forKeyPath:options:context:", player, self, @"isDisplayingClosedCaptions", 5, AVPlayerLayerDisplayingClosedCaptionsChangedObserverContext)}];

      self->_KVOInvokers = [v6 copy];
    }
  }
}

- (void)_stopObservingPlayer:(id)player
{
  v15 = *MEMORY[0x1E69E9840];
  if (player)
  {
    playerBeingObserved = self->_playerBeingObserved;
    if (playerBeingObserved)
    {

      self->_playerBeingObserved = 0;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      KVOInvokers = self->_KVOInvokers;
      v6 = [(NSSet *)KVOInvokers countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(KVOInvokers);
            }

            [*(*(&v10 + 1) + 8 * i) cancelCallbacks];
          }

          v7 = [(NSSet *)KVOInvokers countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      self->_KVOInvokers = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }
  }
}

- (void)setValue:(id)value forKeyPath:(id)path
{
  if (([path isEqualToString:@"separatedOptions"] & 1) != 0 || objc_msgSend(path, "isEqualToString:", @"styleOptions"))
  {
    configurationQueue = self->_configurationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__AVPlayerCaptionLayer_setValue_forKeyPath___block_invoke;
    v9[3] = &unk_1E7460E90;
    v9[4] = self;
    v9[5] = value;
    v9[6] = path;
    AVSerializeOnQueueAsyncIfNecessary(configurationQueue, v9);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVPlayerCaptionLayer;
    [(AVPlayerCaptionLayer *)&v8 setValue:value forKeyPath:path];
  }
}

uint64_t __44__AVPlayerCaptionLayer_setValue_forKeyPath___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 48) setCaptionRendererOutputOptions:*(a1 + 40) forKeyPath:*(a1 + 48)];
  v4[0] = *MEMORY[0x1E6972E60];
  v2 = *(a1 + 40);
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DFB0] null];
  }

  v4[1] = *MEMORY[0x1E6972E50];
  v5[0] = v2;
  v5[1] = *(a1 + 48);
  return [objc_msgSend(*(a1 + 32) "player")];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (AVPlayerLayerPlayerItemSubtitleDisplayEnabledObserverContext == context)
  {
    v8 = [change objectForKey:*MEMORY[0x1E696A4F0]];
    if (v8)
    {
      v9 = v8;
      if (v8 != [MEMORY[0x1E695DFB0] null])
      {
        bOOLValue = [v9 BOOLValue];
        configurationQueue = self->_configurationQueue;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __71__AVPlayerCaptionLayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v19[3] = &unk_1E7460E18;
        v19[4] = self;
        v19[5] = object;
        v20 = bOOLValue;
        v12 = v19;
LABEL_10:
        AVSerializeOnQueueAsyncIfNecessary(configurationQueue, v12);
      }
    }
  }

  else
  {
    if (AVPlayerLayerDisplayingClosedCaptionsChangedObserverContext != context)
    {
      v16.receiver = self;
      v16.super_class = AVPlayerCaptionLayer;
      [(AVPlayerCaptionLayer *)&v16 observeValueForKeyPath:path ofObject:object change:change context:?];
      return;
    }

    v13 = [change objectForKey:*MEMORY[0x1E696A4F0]];
    if (v13)
    {
      v14 = v13;
      if (v13 != [MEMORY[0x1E695DFB0] null])
      {
        bOOLValue2 = [v14 BOOLValue];
        configurationQueue = self->_configurationQueue;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __71__AVPlayerCaptionLayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
        v17[3] = &unk_1E7460E18;
        v17[4] = self;
        v17[5] = object;
        v18 = bOOLValue2;
        v12 = v17;
        goto LABEL_10;
      }
    }
  }
}

uint64_t __71__AVPlayerCaptionLayer_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) == *(v1 + 104))
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      return [v2 updateNonForcedSubtitleDisplayEnabled:*(result + 48)];
    }
  }

  return result;
}

void __71__AVPlayerCaptionLayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(a1 + 40) == *(v3 + 104))
  {
    v6 = v1;
    v7 = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __71__AVPlayerCaptionLayer_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
    v4[3] = &unk_1E7460E40;
    v4[4] = v3;
    v5 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

void *__71__AVPlayerCaptionLayer_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 32) + 56);
  if (result)
  {
    return [result setHidden:(*(a1 + 40) & 1) == 0];
  }

  return result;
}

- (void)setCaptionContentInsets:(NSEdgeInsets)insets
{
  *&v11 = insets.top;
  *(&v11 + 1) = *&insets.left;
  *&v12 = insets.bottom;
  *(&v12 + 1) = *&insets.right;
  v4 = v12;
  *&self->_legibleContentInsets.top = v11;
  *&self->_legibleContentInsets.bottom = v4;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryMarginsMake();
  subtitleLayer = self->_subtitleLayer;
  if (subtitleLayer)
  {
    v6[0] = v7;
    v6[1] = v8;
    v6[2] = v9;
    v6[3] = v10;
    [(FigSubtitleCALayer *)subtitleLayer setCaptionsAvoidanceMargins:v6];
  }

  [[(AVPlayerCaptionLayer *)self player] _updateClosedCaptionLayerBounds:self->_closedCaptionLayer videoRelativeToViewport:0 captionsAvoidanceMargins:&v11];
}

- (NSEdgeInsets)captionContentInsets
{
  top = self->_legibleContentInsets.top;
  left = self->_legibleContentInsets.left;
  bottom = self->_legibleContentInsets.bottom;
  right = self->_legibleContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_interstitialLayer
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__26;
  v18 = __Block_byref_object_dispose__26;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVPlayerCaptionLayer__interstitialLayer__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(serialQueue, block);
  if (!v15[5])
  {
    v4 = objc_alloc_init(AVPlayerCaptionLayer);
    [(AVPlayerCaptionLayer *)self bounds];
    [(AVPlayerCaptionLayer *)v4 setFrame:?];
    [(AVPlayerCaptionLayer *)v4 setHidden:1];
    v5 = self->_serialQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__AVPlayerCaptionLayer__interstitialLayer__block_invoke_2;
    v8[3] = &unk_1E7460F08;
    v8[4] = self;
    v8[5] = v4;
    v8[6] = &v14;
    v8[7] = &v10;
    dispatch_sync(v5, v8);
    [(AVPlayerCaptionLayer *)self addSublayer:v4];
    if (*(v11 + 24))
    {
      [(AVPlayerCaptionLayer *)self _setShowInterstitialInstead:1];
    }
  }

  v6 = v15[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v6;
}

id __42__AVPlayerCaptionLayer__interstitialLayer__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 88);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id __42__AVPlayerCaptionLayer__interstitialLayer__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 88) = result;
  *(*(*(a1 + 48) + 8) + 40) = *(a1 + 40);
  v3 = *(a1 + 32);
  if (*(v3 + 96) == 1)
  {
    *(v3 + 96) = 0;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)_showInterstitialInstead
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayerCaptionLayer__showInterstitialInstead__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setShowInterstitialInstead:(BOOL)instead
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__26;
  serialQueue = self->_serialQueue;
  v14 = __Block_byref_object_dispose__26;
  v15 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVPlayerCaptionLayer__setShowInterstitialInstead___block_invoke;
  block[3] = &unk_1E7462948;
  insteadCopy = instead;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(serialQueue, block);
  if (v11[5])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__AVPlayerCaptionLayer__setShowInterstitialInstead___block_invoke_2;
    v6[3] = &unk_1E7462948;
    insteadCopy2 = instead;
    v6[4] = self;
    v6[5] = &v10;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v6);
  }

  _Block_object_dispose(&v10, 8);
}

id __52__AVPlayerCaptionLayer__setShowInterstitialInstead___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 96) = *(a1 + 48);
  result = *(*(a1 + 32) + 88);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __52__AVPlayerCaptionLayer__setShowInterstitialInstead___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"videoRect"];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  if (*(a1 + 48))
  {
    [*(*(a1 + 32) + 48) clear];
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = 0;
  }

  [*(*(a1 + 32) + 48) setHidden:v2 & 1];
  [*(*(a1 + 32) + 56) setHidden:*(a1 + 48)];
  [*(*(*(a1 + 40) + 8) + 40) setHidden:*(a1 + 48) == 0];
  [*(a1 + 32) setNeedsLayout];
  [MEMORY[0x1E6979518] commit];
  [*(a1 + 32) didChangeValueForKey:@"videoRect"];
  v3 = *(*(*(a1 + 40) + 8) + 40);
}

- (void)setInsetsOptions:(id)options
{
  self->_insetsOptions = [options copy];
  allowsHorizontalTextWrap = [options allowsHorizontalTextWrap];
  allowsHorizontalTextRepositioning = [options allowsHorizontalTextRepositioning];
  allowsVerticalTextWrap = [options allowsVerticalTextWrap];
  allowsVerticalTextRepositioning = [options allowsVerticalTextRepositioning];
  v9 = 0x1000000;
  if (!allowsVerticalTextRepositioning)
  {
    v9 = 0;
  }

  v10 = 0x10000;
  if (!allowsVerticalTextWrap)
  {
    v10 = 0;
  }

  v11 = 256;
  if (!allowsHorizontalTextRepositioning)
  {
    v11 = 0;
  }

  subtitleLayer = self->_subtitleLayer;

  [(FigSubtitleCALayer *)subtitleLayer setCaptionsAvoidanceOptions:v11 | allowsHorizontalTextWrap | v10 | v9];
}

@end