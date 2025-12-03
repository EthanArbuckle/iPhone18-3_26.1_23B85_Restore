@interface MPAVRoutingControllerSelectionQueue
- (BOOL)hasPendingRoutes;
- (BOOL)routeIsPendingPick:(id)pick;
- (MPAVRoute)pendingPickedRoute;
- (MPAVRoutingController)routingController;
- (MPAVRoutingControllerSelectionQueue)initWithRoutingController:(id)controller;
- (NSSet)pendingPickedRoutes;
- (void)_dequeue;
- (void)_dequeueSelectionWhenPossible;
- (void)_enqueue:(id)_enqueue;
- (void)_processSelection:(id)selection completion:(id)completion;
- (void)addPendingRoutes:(id)routes;
- (void)cancelInProgressSelectionForRoute:(id)route;
- (void)enqueueSelectionOperation:(int64_t)operation forRoutes:(id)routes completion:(id)completion;
- (void)pickedRouteDidChange;
- (void)removeAllPendingRoutes;
- (void)removePendingRoutes:(id)routes withError:(BOOL)error;
@end

@implementation MPAVRoutingControllerSelectionQueue

- (void)pickedRouteDidChange
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MPAVRoutingControllerSelectionQueue_pickedRouteDidChange__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  [(MPAVRoutingControllerSelectionQueue *)self _dequeue];
}

void __59__MPAVRoutingControllerSelectionQueue_pickedRouteDidChange__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [*(*(a1 + 32) + 24) routes];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = 1;
    v8 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [WeakRetained pickedRoutes];
        v8 &= [v11 containsObject:v10];

        v12 = [WeakRetained pickedRoutes];
        v7 &= [v12 containsObject:v10] ^ 1;
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
    LOBYTE(v8) = 1;
  }

  if (WeakRetained)
  {
    if ((([*(*(a1 + 32) + 24) selectionOperation] == 1) & v8) != 0 || ((objc_msgSend(*(*(a1 + 32) + 24), "selectionOperation") == 2) & v7) != 0)
    {
      v13 = 0;
    }

    else
    {
      if ((([*(*(a1 + 32) + 24) selectionOperation] == 0) & v8) != 1)
      {
        goto LABEL_21;
      }

      v21 = [WeakRetained pickedRoutes];
      v13 = [v21 count] != 1;
    }

    v14 = *(*(a1 + 32) + 40);
    if (v14 && !v13)
    {
      [v14 invalidate];
      v15 = *(a1 + 32);
      v16 = *(v15 + 40);
      *(v15 + 40) = 0;

      v17 = os_log_create("com.apple.amp.mediaplayer", "Routing");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(a1 + 32) + 24);
        *buf = 138543362;
        v27 = v18;
        _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "RCS pickedRouteDidChange caused us to drop selection %{public}@", buf, 0xCu);
      }

      v19 = *(a1 + 32);
      v20 = *(v19 + 24);
      *(v19 + 24) = 0;
    }
  }

LABEL_21:
}

- (void)_dequeue
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7464;
  v13 = __Block_byref_object_dispose__7465;
  v14 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MPAVRoutingControllerSelectionQueue__dequeue__block_invoke;
  block[3] = &unk_1E76819F0;
  block[4] = self;
  block[5] = &v9;
  dispatch_sync(serialQueue, block);
  if (v10[5])
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v10[5];
      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "RCS dequeue %{public}@", buf, 0xCu);
    }

    v6 = v10[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__MPAVRoutingControllerSelectionQueue__dequeue__block_invoke_460;
    v7[3] = &unk_1E7676DE8;
    v7[4] = self;
    v7[5] = &v9;
    [(MPAVRoutingControllerSelectionQueue *)self _processSelection:v6 completion:v7];
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __47__MPAVRoutingControllerSelectionQueue__dequeue__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  if (result)
  {
    v3 = *(a1 + 32);
    if (!*(v3 + 24))
    {
      v4 = [*(v3 + 16) firstObject];
      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      *(v5 + 24) = v4;

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
      v7 = *(a1 + 32);
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);

      return [v8 removeObject:v9];
    }
  }

  return result;
}

- (MPAVRoutingController)routingController
{
  WeakRetained = objc_loadWeakRetained(&self->_routingController);

  return WeakRetained;
}

- (void)_processSelection:(id)selection completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  completionCopy = completion;
  routes = [selectionCopy routes];
  v9 = [routes mutableCopy];

  selectionOperation = [selectionCopy selectionOperation];
  WeakRetained = objc_loadWeakRetained(&self->_routingController);
  dataSource = [WeakRetained dataSource];
  [WeakRetained _clearLegacyCachedRoute];
  if (WeakRetained)
  {
    pickedRoute = [WeakRetained pickedRoute];
    v14 = pickedRoute;
    if (!selectionOperation)
    {
LABEL_38:
      firstObject = [v9 firstObject];
      v37 = os_log_create("com.apple.amp.mediaplayer", "Routing");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v48 = firstObject;
        _os_log_impl(&dword_1A238D000, v37, OS_LOG_TYPE_DEFAULT, "RCS set picked route %{public}@", buf, 0xCu);
      }

      [dataSource setPickedRoute:firstObject withPassword:0 completion:completionCopy];
      goto LABEL_41;
    }

    if (selectionOperation == 2)
    {
      v28 = os_log_create("com.apple.amp.mediaplayer", "Routing");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v48 = v9;
        _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_DEFAULT, "RCS remove routes %{public}@", buf, 0xCu);
      }

      [dataSource removeRoutesFromGroup:v9 completion:completionCopy];
      goto LABEL_41;
    }

    if (selectionOperation != 1)
    {
LABEL_41:

      goto LABEL_42;
    }

    v41 = pickedRoute;
    supportsMultipleSelection = [WeakRetained supportsMultipleSelection];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    routes2 = [selectionCopy routes];
    v17 = [routes2 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v17)
    {
      v18 = v17;
      v39 = dataSource;
      v40 = completionCopy;
      LODWORD(v38) = supportsMultipleSelection;
      HIDWORD(v38) = supportsMultipleSelection ^ 1;
      v19 = *v43;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(routes2);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          isDeviceSpeakerRoute = [v21 isDeviceSpeakerRoute];
          supportsGrouping = [v21 supportsGrouping];
        }

        v24 = supportsGrouping;
        v18 = [routes2 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v18);
      v25 = v24 ^ 1;

      if (isDeviceSpeakerRoute)
      {
        v26 = os_log_create("com.apple.amp.mediaplayer", "Routing");
        dataSource = v39;
        completionCopy = v40;
        v14 = v41;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *v48 = v41;
          _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "RCS cannot add local speaker route. Picked route: %{public}@", buf, 0xCu);
        }

        v27 = 1;
        goto LABEL_31;
      }

      dataSource = v39;
      completionCopy = v40;
      v14 = v41;
      if (v38)
      {
        if ((v24 & 1) == 0)
        {
          HIDWORD(v38) = 0;
          v27 = 0;
          v25 = 1;
LABEL_31:
          v32 = os_log_create("com.apple.amp.mediaplayer", "Routing");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A238D000, v32, OS_LOG_TYPE_DEFAULT, "RCS treating Add as a Set", buf, 2u);
          }

          if ([v9 count] >= 2)
          {
            v33 = os_log_create("com.apple.amp.mediaplayer", "Routing");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109890;
              *v48 = v27;
              *&v48[4] = 1024;
              *&v48[6] = HIDWORD(v38);
              v49 = 1024;
              v50 = v25;
              v51 = 2114;
              v52 = v9;
              _os_log_impl(&dword_1A238D000, v33, OS_LOG_TYPE_FAULT, "Set command invoked with >1 route. (localSpeakerRoute=%{BOOL}U|toNonGroupableOutputContext=%{BOOL}U|nonGroupableRoute=%{BOOL}U: %{public}@", buf, 0x1Eu);
            }
          }

          firstObject2 = [v9 firstObject];
          v46 = firstObject2;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];

          v9 = v35;
          goto LABEL_38;
        }

LABEL_25:
        v29 = os_log_create("com.apple.amp.mediaplayer", "Routing");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *v48 = v9;
          _os_log_impl(&dword_1A238D000, v29, OS_LOG_TYPE_DEFAULT, "RCS add routes %{public}@", buf, 0xCu);
        }

        [dataSource addRoutesToGroup:v9 completion:completionCopy];
        goto LABEL_41;
      }
    }

    else
    {

      v14 = v41;
      if (supportsMultipleSelection)
      {
        goto LABEL_25;
      }

      v25 = 0;
    }

    v30 = objc_loadWeakRetained(&self->_routingController);

    v31 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v48 = v30;
      _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_DEFAULT, "RCS cannot add route to routing controller that does not support multiple selection routingController: %{public}@", buf, 0xCu);
    }

    v27 = 0;
    HIDWORD(v38) = 1;
    WeakRetained = v30;
    goto LABEL_31;
  }

  WeakRetained = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, WeakRetained, OS_LOG_TYPE_DEFAULT, "RCS _processSelection:completion: routing controller missing", buf, 2u);
  }

LABEL_42:
}

void __47__MPAVRoutingControllerSelectionQueue__dequeue__block_invoke_460(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(*(*(a1 + 40) + 8) + 40) routes];
  [v4 removePendingRoutes:v5 withError:v3 != 0];

  if (v3 && (MRMediaRemoteErrorIsInformational() & 1) == 0)
  {
    v17 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v31 = v18;
      v32 = 2114;
      v33 = v3;
      _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "RCS failed to process selection: %{public}@ error: %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    if (WeakRetained)
    {
      v8 = WeakRetained;
      [WeakRetained _sendDelegatePickedRoutesChanged];
    }

    else
    {
      v20 = os_log_create("com.apple.amp.mediaplayer", "Routing");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_DEFAULT, "RCS _dequeue routing controller missing", buf, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543362;
      v31 = v7;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "RCS successfully processed selection: %{public}@", buf, 0xCu);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [*(*(*(a1 + 40) + 8) + 40) routes];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = a1;
      v12 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v27 = @"MPAVRoutingControllerRouteUserInfoKey";
          v28 = v14;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v16 = [MEMORY[0x1E696AD88] defaultCenter];
          [v16 postNotificationName:@"MPAVRoutingControllerDidPickRouteNotification" object:*(v11 + 32) userInfo:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v10);
      a1 = v11;
    }
  }

  v21 = [*(*(*(a1 + 40) + 8) + 40) completion];

  if (v21)
  {
    v22 = [*(*(*(a1 + 40) + 8) + 40) completion];
    (v22)[2](v22, v3);

    [*(*(*(a1 + 40) + 8) + 40) setCompletion:0];
  }

  [*(a1 + 32) _dequeueSelectionWhenPossible];
}

- (void)_dequeueSelectionWhenPossible
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MPAVRoutingControllerSelectionQueue__dequeueSelectionWhenPossible__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __68__MPAVRoutingControllerSelectionQueue__dequeueSelectionWhenPossible__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = MEMORY[0x1E69B14D8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__MPAVRoutingControllerSelectionQueue__dequeueSelectionWhenPossible__block_invoke_2;
  v6[3] = &unk_1E76825E8;
  objc_copyWeak(&v7, &location);
  v3 = [v2 timerWithInterval:0 repeats:v6 block:0.25];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __68__MPAVRoutingControllerSelectionQueue__dequeueSelectionWhenPossible__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__MPAVRoutingControllerSelectionQueue__dequeueSelectionWhenPossible__block_invoke_3;
    block[3] = &unk_1E7682518;
    block[4] = v2;
    dispatch_sync(v3, block);
    v4 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v2[3];
      *buf = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "RCS _dequeueSelectionWhenPossible timed out for selection %{public}@", buf, 0xCu);
    }

    [v2 _dequeue];
  }
}

void __68__MPAVRoutingControllerSelectionQueue__dequeueSelectionWhenPossible__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 40) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (void)_enqueue:(id)_enqueue
{
  v68 = *MEMORY[0x1E69E9840];
  _enqueueCopy = _enqueue;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = _enqueueCopy;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "RCS enqueue %{public}@", &buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__7464;
  v66 = __Block_byref_object_dispose__7465;
  v67 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MPAVRoutingControllerSelectionQueue__enqueue___block_invoke;
  block[3] = &unk_1E7681330;
  block[4] = self;
  v8 = _enqueueCopy;
  v51 = v8;
  p_buf = &buf;
  dispatch_sync(serialQueue, block);
  if (*(*(&buf + 1) + 40))
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(&buf + 1) + 40);
      LODWORD(v55) = 138543362;
      *(&v55 + 4) = v10;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "RCS will use existing selection %{public}@", &v55, 0xCu);
    }

    completion = [*(*(&buf + 1) + 40) completion];
    if (completion)
    {
      v12 = MEMORY[0x1E696ABC0];
      v61 = *MEMORY[0x1E696A278];
      v62 = @"Enqueued route was cancelled because a new selection for the same route was enqueued.";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v14 = [v12 errorWithDomain:@"MPAVRoutingControllerErrorDomain" code:6 userInfo:v13];
      (completion)[2](completion, v14);
    }

    completion2 = [v8 completion];
    [*(*(&buf + 1) + 40) setCompletion:completion2];

    selectionOperation = [v8 selectionOperation];
    [*(*(&buf + 1) + 40) setSelectionOperation:selectionOperation];
    v35 = v8;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    routes = [*(*(&buf + 1) + 40) routes];
    v18 = [routes countByEnumeratingWithState:&v46 objects:v60 count:16];
    if (v18)
    {
      v19 = *v47;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v47 != v19)
          {
            objc_enumerationMutation(routes);
          }

          v21 = *(*(&v46 + 1) + 8 * i);
          if ([v21 isPicked])
          {
            v22 = [*(*(&buf + 1) + 40) selectionOperation] == 0;
          }

          else
          {
            v22 = 0;
          }

          if ([v21 isPicked])
          {
            v23 = [*(*(&buf + 1) + 40) selectionOperation] == 1;
          }

          else
          {
            v23 = 0;
          }

          v24 = ([v21 isPicked] & 1) == 0 && objc_msgSend(*(*(&buf + 1) + 40), "selectionOperation") == 2;
          if (v22 || v23 || v24)
          {
            [array addObject:v21];
          }
        }

        v18 = [routes countByEnumeratingWithState:&v46 objects:v60 count:16];
      }

      while (v18);
    }

    v8 = v35;
  }

  else
  {
    *&v55 = 0;
    *(&v55 + 1) = &v55;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__7464;
    v58 = __Block_byref_object_dispose__7465;
    v59 = 0;
    v25 = self->_serialQueue;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __48__MPAVRoutingControllerSelectionQueue__enqueue___block_invoke_455;
    v42[3] = &unk_1E7681330;
    v26 = v8;
    v43 = v26;
    selfCopy = self;
    v45 = &v55;
    dispatch_sync(v25, v42);
    v27 = *(*(&v55 + 1) + 40);
    if (v27 && (v28 = [v27 selectionOperation], v28 != objc_msgSend(v26, "selectionOperation")))
    {
      v30 = self->_serialQueue;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __48__MPAVRoutingControllerSelectionQueue__enqueue___block_invoke_2;
      v38[3] = &unk_1E7681330;
      v41 = &v55;
      v39 = v26;
      selfCopy2 = self;
      dispatch_sync(v30, v38);
      completion3 = [*(*(&v55 + 1) + 40) completion];
      if (completion3)
      {
        v32 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A278];
        v54 = @"Route in progress was interrupted by a new selection for the same route.";
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v34 = [v32 errorWithDomain:@"MPAVRoutingControllerErrorDomain" code:6 userInfo:v33];
        (completion3)[2](completion3, v34);
      }

      [*(*(&v55 + 1) + 40) setCompletion:0];
    }

    else
    {
      v29 = self->_serialQueue;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __48__MPAVRoutingControllerSelectionQueue__enqueue___block_invoke_459;
      v36[3] = &unk_1E76823C0;
      v36[4] = self;
      v37 = v26;
      dispatch_sync(v29, v36);
    }

    _Block_object_dispose(&v55, 8);
  }

  [(MPAVRoutingControllerSelectionQueue *)self removePendingRoutes:array];
  [(MPAVRoutingControllerSelectionQueue *)self _dequeue];

  _Block_object_dispose(&buf, 8);
}

void __48__MPAVRoutingControllerSelectionQueue__enqueue___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) routes];
        v9 = [v7 routes];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __48__MPAVRoutingControllerSelectionQueue__enqueue___block_invoke_455(uint64_t a1)
{
  v2 = [*(a1 + 32) routes];
  v3 = [*(*(a1 + 40) + 24) routes];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = *(*(a1 + 40) + 24);
    v6 = (*(*(a1 + 48) + 8) + 40);

    objc_storeStrong(v6, v5);
  }
}

uint64_t __48__MPAVRoutingControllerSelectionQueue__enqueue___block_invoke_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = a1[4];
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "RCS changing selection in progress from %{public}@ to %{public}@", &v6, 0x16u);
  }

  return [*(a1[5] + 16) insertObject:a1[4] atIndex:0];
}

- (void)removePendingRoutes:(id)routes withError:(BOOL)error
{
  errorCopy = error;
  v34[1] = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__7464;
  v31 = __Block_byref_object_dispose__7465;
  v32 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MPAVRoutingControllerSelectionQueue_removePendingRoutes_withError___block_invoke;
  block[3] = &unk_1E7681330;
  v8 = routesCopy;
  v24 = v8;
  selfCopy = self;
  v26 = &v27;
  dispatch_sync(serialQueue, block);
  v9 = v28[5];
  if (v9)
  {
    completion = [v9 completion];
    if (completion)
    {
      if (errorCopy)
      {
        v11 = MEMORY[0x1E696ABC0];
        v33 = *MEMORY[0x1E696A278];
        v34[0] = @"Selection was cancelled due to removePendingRoute.";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
        v13 = [v11 errorWithDomain:@"MPAVRoutingControllerErrorDomain" code:6 userInfo:v12];
      }

      else
      {
        v13 = 0;
      }

      (completion)[2](completion, v13);
    }

    [v28[5] setCompletion:0];
  }

  v14 = self->_serialQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__MPAVRoutingControllerSelectionQueue_removePendingRoutes_withError___block_invoke_451;
  v20[3] = &unk_1E76823C0;
  v15 = v8;
  v21 = v15;
  selfCopy2 = self;
  dispatch_sync(v14, v20);
  WeakRetained = objc_loadWeakRetained(&self->_routingController);
  v17 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _sendDelegatePickedRoutesChanged];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEFAULT, "RCS removePendingRoute routing controller missing", v19, 2u);
    }
  }

  _Block_object_dispose(&v27, 8);
}

void __69__MPAVRoutingControllerSelectionQueue_removePendingRoutes_withError___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    *&v4 = 138543362;
    v12 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([*(*(a1 + 40) + 32) containsObject:{v8, v12, v13}])
        {
          v9 = os_log_create("com.apple.amp.mediaplayer", "Routing");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v12;
            v18 = v8;
            _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "RCS removePendingRoute %{public}@", buf, 0xCu);
          }

          [*(*(a1 + 40) + 32) removeObject:v8];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 32);
  v11 = [*(*(a1 + 40) + 24) routes];
  LODWORD(v10) = [v10 isEqual:v11];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 40) + 24));
  }
}

void __69__MPAVRoutingControllerSelectionQueue_removePendingRoutes_withError___block_invoke_451(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 48) objectForKey:{v7, v10}];
        v9 = v8;
        if (v8)
        {
          [v8 invalidate];
          [*(*(a1 + 40) + 48) removeObjectForKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)removeAllPendingRoutes
{
  allObjects = [(NSMutableSet *)self->_pendingRoutes allObjects];
  [(MPAVRoutingControllerSelectionQueue *)self removePendingRoutes:allObjects];
}

- (void)addPendingRoutes:(id)routes
{
  v33 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69B14D8];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__MPAVRoutingControllerSelectionQueue_addPendingRoutes___block_invoke;
  v27[3] = &unk_1E767FE98;
  objc_copyWeak(&v29, &location);
  v6 = routesCopy;
  v28 = v6;
  v7 = [v5 timerWithInterval:0 repeats:v27 block:60.0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MPAVRoutingControllerSelectionQueue_addPendingRoutes___block_invoke_447;
  block[3] = &unk_1E7681900;
  v9 = v6;
  v19 = v9;
  selfCopy = self;
  v10 = v7;
  v21 = v10;
  v22 = &v23;
  dispatch_sync(serialQueue, block);
  WeakRetained = objc_loadWeakRetained(&self->_routingController);
  v12 = WeakRetained;
  if (*(v24 + 24) == 1)
  {
    v13 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = v9;
      v14 = "RCS ignoring addPendingRoute - route already pending %{public}@";
      v15 = v13;
      v16 = 12;
LABEL_7:
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }
  }

  else
  {
    if (WeakRetained)
    {
      goto LABEL_9;
    }

    v13 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "RCS addPendingRoute routing controller missing";
      v15 = v13;
      v16 = 2;
      goto LABEL_7;
    }
  }

LABEL_9:
  v17 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = v9;
    _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "RCS addPendingRoute %{public}@", buf, 0xCu);
  }

  [v12 _sendDelegatePickedRoutesChanged];
  _Block_object_dispose(&v23, 8);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __56__MPAVRoutingControllerSelectionQueue_addPendingRoutes___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "RCS pending route timed out %{public}@", &v5, 0xCu);
  }

  [WeakRetained removePendingRoutes:*(a1 + 32)];
}

void __56__MPAVRoutingControllerSelectionQueue_addPendingRoutes___block_invoke_447(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [*(*(a1 + 40) + 48) setObject:*(a1 + 48) forKey:{v7, v8}];
        *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 40) + 32) containsObject:v7];
        [*(*(a1 + 40) + 32) addObject:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)routeIsPendingPick:(id)pick
{
  pickCopy = pick;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MPAVRoutingControllerSelectionQueue_routeIsPendingPick___block_invoke;
  block[3] = &unk_1E7681330;
  block[4] = self;
  v9 = pickCopy;
  v10 = &v11;
  v6 = pickCopy;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serialQueue;
}

void __58__MPAVRoutingControllerSelectionQueue_routeIsPendingPick___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isEqual:{a1[5], v7}])
        {
          *(*(a1[6] + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (NSSet)pendingPickedRoutes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7464;
  v10 = __Block_byref_object_dispose__7465;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__MPAVRoutingControllerSelectionQueue_pendingPickedRoutes__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__MPAVRoutingControllerSelectionQueue_pendingPickedRoutes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (MPAVRoute)pendingPickedRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7464;
  v10 = __Block_byref_object_dispose__7465;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__MPAVRoutingControllerSelectionQueue_pendingPickedRoute__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __57__MPAVRoutingControllerSelectionQueue_pendingPickedRoute__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) anyObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasPendingRoutes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MPAVRoutingControllerSelectionQueue_hasPendingRoutes__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__MPAVRoutingControllerSelectionQueue_hasPendingRoutes__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)enqueueSelectionOperation:(int64_t)operation forRoutes:(id)routes completion:(id)completion
{
  completionCopy = completion;
  routesCopy = routes;
  v10 = [[MPAVRoutingControllerSelection alloc] initWithRoutes:routesCopy selectionOperation:operation];

  [(MPAVRoutingControllerSelection *)v10 setCompletion:completionCopy];
  [(MPAVRoutingControllerSelectionQueue *)self _enqueue:v10];
}

- (void)cancelInProgressSelectionForRoute:(id)route
{
  v28 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7464;
  v22 = __Block_byref_object_dispose__7465;
  v23 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MPAVRoutingControllerSelectionQueue_cancelInProgressSelectionForRoute___block_invoke;
  block[3] = &unk_1E76819F0;
  block[4] = self;
  block[5] = &v18;
  dispatch_sync(serialQueue, block);
  if (v19[5])
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v19[5];
      *buf = 138543362;
      v27 = v7;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "RCS cancelling in-progress selection %{public}@", buf, 0xCu);
    }

    completion = [v19[5] completion];
    v9 = completion == 0;

    if (!v9)
    {
      completion2 = [v19[5] completion];
      v11 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A278];
      v25 = @"Route selection cancelled by MPAVRoutingController cancelInProgressSelectionForRoute:";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v13 = [v11 errorWithDomain:@"MPAVRoutingControllerErrorDomain" code:6 userInfo:v12];
      (completion2)[2](completion2, v13);
    }

    [v19[5] setCompletion:0];
    v14 = self->_serialQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__MPAVRoutingControllerSelectionQueue_cancelInProgressSelectionForRoute___block_invoke_444;
    v16[3] = &unk_1E7682518;
    v16[4] = self;
    dispatch_sync(v14, v16);
    routes = [v19[5] routes];
    [(MPAVRoutingControllerSelectionQueue *)self removePendingRoutes:routes];

    [(MPAVRoutingControllerSelectionQueue *)self _dequeue];
  }

  _Block_object_dispose(&v18, 8);
}

void __73__MPAVRoutingControllerSelectionQueue_cancelInProgressSelectionForRoute___block_invoke_444(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (MPAVRoutingControllerSelectionQueue)initWithRoutingController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = MPAVRoutingControllerSelectionQueue;
  v5 = [(MPAVRoutingControllerSelectionQueue *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MediaPlayer.MPAVRoutingControllerSelection/serialQueue", 0);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v6;

    array = [MEMORY[0x1E695DF70] array];
    selectionsEnqueued = v5->_selectionsEnqueued;
    v5->_selectionsEnqueued = array;

    objc_storeWeak(&v5->_routingController, controllerCopy);
    v10 = [MEMORY[0x1E695DFA8] set];
    pendingRoutes = v5->_pendingRoutes;
    v5->_pendingRoutes = v10;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    pendingSelectionTimers = v5->_pendingSelectionTimers;
    v5->_pendingSelectionTimers = weakToStrongObjectsMapTable;
  }

  return v5;
}

@end