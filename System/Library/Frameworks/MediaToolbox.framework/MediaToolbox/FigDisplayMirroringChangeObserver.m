@interface FigDisplayMirroringChangeObserver
- (FigDisplayMirroringChangeObserver)init;
- (FigDisplayMirroringChangeObserver)initWithCallback:(void *)a3 context:(void *)a4;
- (FigDisplayMirroringChangeObserver)initWithPlayer:(OpaqueFigPlayer *)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeCallback;
- (void)removeObserversOnCADisplays;
- (void)removeReferenceToPlayer;
- (void)setBaseDisplayList:(id)a3;
- (void)updatePlayerDisplayList;
@end

@implementation FigDisplayMirroringChangeObserver

- (FigDisplayMirroringChangeObserver)init
{
  v5.receiver = self;
  v5.super_class = FigDisplayMirroringChangeObserver;
  v2 = [(FigDisplayMirroringChangeObserver *)&v5 init];
  if (v2)
  {
    v2->_clonedDisplays = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_cloningSupportedDisplays = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_baseDisplayList = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__FigDisplayMirroringChangeObserver_init__block_invoke;
    block[3] = &unk_1E7482608;
    block[4] = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v2->_player = 0;
    v2->_callback = 0;
    v2->_weakCallbackContext = 0;
  }

  return v2;
}

uint64_t __41__FigDisplayMirroringChangeObserver_init__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [MEMORY[0x1E6979328] displays];
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        [v7 addObserver:*(a1 + 32) forKeyPath:@"cloned" options:4 context:0];
        [v7 addObserver:*(a1 + 32) forKeyPath:@"cloningSupported" options:4 context:0];
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  *(*(a1 + 32) + 40) = 1;
  return result;
}

- (FigDisplayMirroringChangeObserver)initWithPlayer:(OpaqueFigPlayer *)a3
{
  result = [(FigDisplayMirroringChangeObserver *)self init];
  if (result)
  {
    result->_player = a3;
  }

  return result;
}

- (FigDisplayMirroringChangeObserver)initWithCallback:(void *)a3 context:(void *)a4
{
  v6 = [(FigDisplayMirroringChangeObserver *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_callback = a3;
    if (a4)
    {
      v6->_weakCallbackContext = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }
  }

  return v7;
}

- (void)removeObserversOnCADisplays
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__FigDisplayMirroringChangeObserver_removeObserversOnCADisplays__block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__FigDisplayMirroringChangeObserver_removeObserversOnCADisplays__block_invoke(uint64_t result)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 40) == 1)
  {
    v1 = result;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = [MEMORY[0x1E6979328] displays];
    result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v8;
      do
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v7 + 1) + 8 * v5);
          [v6 removeObserver:*(v1 + 32) forKeyPath:@"cloned"];
          [v6 removeObserver:*(v1 + 32) forKeyPath:@"cloningSupported"];
          ++v5;
        }

        while (v3 != v5);
        result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        v3 = result;
      }

      while (result);
    }

    *(*(v1 + 32) + 40) = 0;
  }

  return result;
}

- (void)dealloc
{
  weakCallbackContext = self->_weakCallbackContext;
  if (weakCallbackContext)
  {
    CFRelease(weakCallbackContext);
    self->_weakCallbackContext = 0;
  }

  v4.receiver = self;
  v4.super_class = FigDisplayMirroringChangeObserver;
  [(FigDisplayMirroringChangeObserver *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"cloned", a4, a5, a6}])
  {
    clonedDisplays = self->_clonedDisplays;
    v10 = [a4 isCloned];
  }

  else
  {
    if (![a3 isEqualToString:@"cloningSupported"])
    {
      return;
    }

    clonedDisplays = self->_cloningSupportedDisplays;
    v10 = [a4 isCloningSupported];
  }

  v11 = v10;
  if (clonedDisplays)
  {
    if (FigDisplayMirroringGetAccessQueue_sFigDisplayMirroringOnce != -1)
    {
      [FigDisplayMirroringChangeObserver observeValueForKeyPath:ofObject:change:context:];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__FigDisplayMirroringChangeObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v12[3] = &unk_1E7483FE0;
    v13 = v11;
    v12[4] = clonedDisplays;
    v12[5] = a4;
    v12[6] = self;
    dispatch_async(FigDisplayMirroringGetAccessQueue_sFigDisplayMirroringAccessQueue, v12);
  }
}

uint64_t __84__FigDisplayMirroringChangeObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) name];
  if (v2 == 1)
  {
    [v3 addObject:v4];
  }

  else
  {
    [v3 removeObject:v4];
  }

  v5 = *(a1 + 48);

  return [v5 updatePlayerDisplayList];
}

- (void)setBaseDisplayList:(id)a3
{
  if (FigDisplayMirroringGetAccessQueue_sFigDisplayMirroringOnce != -1)
  {
    [FigDisplayMirroringChangeObserver observeValueForKeyPath:ofObject:change:context:];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__FigDisplayMirroringChangeObserver_setBaseDisplayList___block_invoke;
  v5[3] = &unk_1E7483A30;
  v5[4] = a3;
  v5[5] = self;
  dispatch_sync(FigDisplayMirroringGetAccessQueue_sFigDisplayMirroringAccessQueue, v5);
}

uint64_t __56__FigDisplayMirroringChangeObserver_setBaseDisplayList___block_invoke(uint64_t result)
{
  v2 = *(*(result + 40) + 32);
  if (*(result + 32) != v2)
  {
    v3 = result;

    *(*(v3 + 40) + 32) = *(v3 + 32);
    v4 = *(v3 + 40);

    return [v4 updatePlayerDisplayList];
  }

  return result;
}

- (void)updatePlayerDisplayList
{
  v21 = *MEMORY[0x1E69E9840];
  baseDisplayList = self->_baseDisplayList;
  if (baseDisplayList)
  {
    v4 = [(NSArray *)baseDisplayList mutableCopy];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v5 = v4;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  clonedDisplays = self->_clonedDisplays;
  v7 = [(NSMutableSet *)clonedDisplays countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(clonedDisplays);
        }

        if ([(NSArray *)self->_baseDisplayList containsObject:*(*(&v16 + 1) + 8 * i)])
        {
          [v5 addObjectsFromArray:{-[NSMutableSet allObjects](self->_cloningSupportedDisplays, "allObjects")}];
          goto LABEL_14;
        }
      }

      v8 = [(NSMutableSet *)clonedDisplays countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  player = self->_player;
  if (player)
  {
    FigBaseObject = FigPlayerGetFigBaseObject(player);
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v13(FigBaseObject, 0x1F0B344F8, v5);
    }
  }

  if (self->_callback)
  {
    if (self->_weakCallbackContext)
    {
      v14 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v14)
      {
        v15 = v14;
        (self->_callback)(v5, v14);
        CFRelease(v15);
      }
    }
  }
}

- (void)removeReferenceToPlayer
{
  if (FigDisplayMirroringGetAccessQueue_sFigDisplayMirroringOnce != -1)
  {
    [FigDisplayMirroringChangeObserver observeValueForKeyPath:ofObject:change:context:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__FigDisplayMirroringChangeObserver_removeReferenceToPlayer__block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = self;
  dispatch_sync(FigDisplayMirroringGetAccessQueue_sFigDisplayMirroringAccessQueue, block);
}

- (void)removeCallback
{
  if (FigDisplayMirroringGetAccessQueue_sFigDisplayMirroringOnce != -1)
  {
    [FigDisplayMirroringChangeObserver observeValueForKeyPath:ofObject:change:context:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__FigDisplayMirroringChangeObserver_removeCallback__block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = self;
  dispatch_sync(FigDisplayMirroringGetAccessQueue_sFigDisplayMirroringAccessQueue, block);
}

void __51__FigDisplayMirroringChangeObserver_removeCallback__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 0;
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 56) = 0;
  }
}

@end