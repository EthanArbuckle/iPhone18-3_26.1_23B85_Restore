@interface AXMOutputRequest
+ (id)speechItemSeparator;
- (AXMOutputRequest)init;
- (NSArray)actions;
- (NSArray)activeSoundActions;
- (NSArray)hapticActions;
- (NSArray)oneShotSoundActions;
- (NSArray)speechActions;
- (void)_addAction:(id)a3;
- (void)addActiveSoundItemWithID:(id)a3;
- (void)addActiveSoundItemWithURL:(id)a3;
- (void)addHapticItemWithURL:(id)a3 intensity:(double)a4;
- (void)addSoundItemWithID:(id)a3;
- (void)addSoundItemWithURL:(id)a3;
- (void)addSpeechItem:(id)a3;
@end

@implementation AXMOutputRequest

+ (id)speechItemSeparator
{
  if (speechItemSeparator_onceToken != -1)
  {
    +[AXMOutputRequest speechItemSeparator];
  }

  v3 = speechItemSeparator__Separator;

  return v3;
}

void __39__AXMOutputRequest_speechItemSeparator__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@".\n "];
  v1 = speechItemSeparator__Separator;
  speechItemSeparator__Separator = v0;
}

- (AXMOutputRequest)init
{
  v10.receiver = self;
  v10.super_class = AXMOutputRequest;
  v2 = [(AXMOutputRequest *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(AXMOutputRequestHandle);
    handle = v2->_handle;
    v2->_handle = v3;

    v5 = dispatch_queue_create("AXMOutputRequest", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    queue_actions = v2->_queue_actions;
    v2->_queue_actions = v7;
  }

  return v2;
}

- (NSArray)actions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AXMOutputRequest_actions__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __27__AXMOutputRequest_actions__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)speechActions
{
  v2 = [(AXMOutputRequest *)self actions];
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_35];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

uint64_t __33__AXMOutputRequest_speechActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NSArray)oneShotSoundActions
{
  v2 = [(AXMOutputRequest *)self actions];
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_38];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

uint64_t __39__AXMOutputRequest_oneShotSoundActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NSArray)activeSoundActions
{
  v2 = [(AXMOutputRequest *)self actions];
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_41];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

uint64_t __38__AXMOutputRequest_activeSoundActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NSArray)hapticActions
{
  v2 = [(AXMOutputRequest *)self actions];
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_44];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

uint64_t __33__AXMOutputRequest_hapticActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_addAction:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __31__AXMOutputRequest__addAction___block_invoke;
  v12 = &unk_1E7A1CB30;
  v13 = self;
  v14 = v4;
  v6 = v4;
  dispatch_sync(queue, &v9);
  handle = self->_handle;
  v8 = [v6 handle];
  [(AXMOutputRequestHandle *)handle addActionHandle:v8];
}

- (void)addSpeechItem:(id)a3
{
  v4 = a3;
  v5 = [[AXMSpeechOutputAction alloc] initWithText:v4];

  [(AXMOutputRequest *)self _addAction:v5];
}

- (void)addSoundItemWithID:(id)a3
{
  v4 = a3;
  v5 = [(AXMSoundOutputAction *)[AXMOneShotSoundOutputAction alloc] initWithSoundID:v4];
  if (v5)
  {
    [(AXMOutputRequest *)self _addAction:v5];
  }

  else
  {
    v6 = AXMediaLogSounds();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXMOutputRequest addSoundItemWithID:];
    }
  }
}

- (void)addSoundItemWithURL:(id)a3
{
  v4 = a3;
  v5 = [(AXMSoundOutputAction *)[AXMOneShotSoundOutputAction alloc] initWithURL:v4];
  if (v5)
  {
    [(AXMOutputRequest *)self _addAction:v5];
  }

  else
  {
    v6 = AXMediaLogSounds();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXMOutputRequest addSoundItemWithURL:];
    }
  }
}

- (void)addActiveSoundItemWithID:(id)a3
{
  v4 = a3;
  v5 = [[AXMActiveSoundOutputAction alloc] initWithSoundID:v4];
  if (v5)
  {
    [(AXMOutputRequest *)self _addAction:v5];
  }

  else
  {
    v6 = AXMediaLogSounds();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXMOutputRequest addSoundItemWithID:];
    }
  }
}

- (void)addActiveSoundItemWithURL:(id)a3
{
  v4 = a3;
  v5 = [[AXMActiveSoundOutputAction alloc] initWithURL:v4];
  if (v5)
  {
    [(AXMOutputRequest *)self _addAction:v5];
  }

  else
  {
    v6 = AXMediaLogSounds();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXMOutputRequest addActiveSoundItemWithURL:];
    }
  }
}

- (void)addHapticItemWithURL:(id)a3 intensity:(double)a4
{
  v6 = a3;
  v7 = [[AXMHapticOutputAction alloc] initWithURL:v6];
  [(AXMHapticOutputAction *)v7 setHapticIntensity:a4];
  if (v7)
  {
    [(AXMOutputRequest *)self _addAction:v7];
  }

  else
  {
    v8 = AXMediaLogSounds();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXMOutputRequest addHapticItemWithURL:intensity:];
    }
  }
}

@end