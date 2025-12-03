@interface _MKOverlayTileRequester
+ (unsigned)registerDataSource:(id)source;
+ (void)unregisterDataSource:(unsigned int)source;
- (BOOL)isRunning;
- (_MKOverlayTileRequester)initWithTileRequest:(id)request delegateQueue:(id)queue delegate:(id)delegate;
- (void)_cleanup;
- (void)_doWorkOrFinish;
- (void)_operationFailed:(id)failed error:(id)error;
- (void)_operationFinished:(id)finished;
- (void)_startOnWorkQueue;
- (void)cancel;
- (void)cancelKey:(__int128 *)key;
- (void)dealloc;
- (void)start;
@end

@implementation _MKOverlayTileRequester

- (void)dealloc
{
  [(_MKOverlayTileRequester *)self _cleanup];
  v3.receiver = self;
  v3.super_class = _MKOverlayTileRequester;
  [(_MKOverlayTileRequester *)&v3 dealloc];
}

- (void)cancelKey:(__int128 *)key
{
  v5 = *key;
  v3 = *(self + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37___MKOverlayTileRequester_cancelKey___block_invoke;
  block[3] = &unk_1E76CD280;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)cancel
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33___MKOverlayTileRequester_cancel__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)isRunning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36___MKOverlayTileRequester_isRunning__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_startOnWorkQueue
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  tileRequest = [(GEOTileRequester *)self tileRequest];
  keyList = [tileRequest keyList];
  v6 = [v3 initWithCapacity:{objc_msgSend(keyList, "count")}];
  waiting = self->_waiting;
  self->_waiting = v6;

  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:4];
  running = self->_running;
  self->_running = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tileRequest2 = [(GEOTileRequester *)self tileRequest];
  keyList2 = [tileRequest2 keyList];

  v12 = [keyList2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(keyList2);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = objc_alloc_init(MKTileOverlayRequesterOp);
        [(MKTileOverlayRequesterOp *)v16 setKey:*v15, v15[1]];
        [(MKTileOverlayRequesterOp *)v16 setDelegate:self];
        [(MKTileOverlayRequesterOp *)v16 setDelegateQueue:self->_workQueue];
        [(NSMutableArray *)self->_waiting insertObject:v16 atIndex:0];

        ++v14;
      }

      while (v12 != v14);
      v12 = [keyList2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [(_MKOverlayTileRequester *)self _doWorkOrFinish];
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = _MKOverlayTileRequester;
  [(GEOTileRequester *)&v5 start];
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32___MKOverlayTileRequester_start__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_operationFailed:(id)failed error:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  v8 = errorCopy;
  if (!self->_cancelled)
  {
    if (errorCopy)
    {
      errors = self->_errors;
      if (!errors)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = self->_errors;
        self->_errors = v10;

        errors = self->_errors;
      }

      [(NSMutableArray *)errors addObject:v8];
    }

    [(NSMutableSet *)self->_running removeObject:failedCopy];
    v12 = [failedCopy key];
    v14 = v13;
    delegateQueue = [(GEOTileRequester *)self delegateQueue];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __50___MKOverlayTileRequester__operationFailed_error___block_invoke;
    v19 = &unk_1E76CCC00;
    selfCopy = self;
    v21 = v8;
    v22 = v12;
    v23 = v14;
    dispatch_async(delegateQueue, &v16);

    [(_MKOverlayTileRequester *)self _doWorkOrFinish:v16];
  }
}

- (void)_operationFinished:(id)finished
{
  finishedCopy = finished;
  if (!self->_cancelled)
  {
    [(NSMutableSet *)self->_running removeObject:finishedCopy];
    v5 = [finishedCopy key];
    v7 = v6;
    delegateQueue = [(GEOTileRequester *)self delegateQueue];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __46___MKOverlayTileRequester__operationFinished___block_invoke;
    v12 = &unk_1E76CCC00;
    v13 = finishedCopy;
    selfCopy = self;
    v15 = v5;
    v16 = v7;
    dispatch_async(delegateQueue, &v9);

    [(_MKOverlayTileRequester *)self _doWorkOrFinish:v9];
  }
}

- (void)_cleanup
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_running;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        [v7 cancel];
        [v7 setDelegate:0];
      }

      v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_waiting;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * j) setDelegate:{0, v15}];
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  running = self->_running;
  self->_running = 0;

  waiting = self->_waiting;
  self->_waiting = 0;

  errors = self->_errors;
  self->_errors = 0;
}

- (void)_doWorkOrFinish
{
  if ([_MKOverlayTileRequester _doWorkOrFinish]::once != -1)
  {
    dispatch_once(&[_MKOverlayTileRequester _doWorkOrFinish]::once, &__block_literal_global_3);
  }

  while ([(NSMutableArray *)self->_waiting count])
  {
    if ([_MKOverlayTileRequester _doWorkOrFinish]::enforceMaximumConcurrentLoads == 1 && [(NSMutableSet *)self->_running count]> 3)
    {
      break;
    }

    lastObject = [(NSMutableArray *)self->_waiting lastObject];
    [(NSMutableSet *)self->_running addObject:lastObject];
    [(NSMutableArray *)self->_waiting removeLastObject];
    [lastObject start];
  }

  running = self->_running;
  if (running)
  {
    if (![(NSMutableSet *)running count])
    {
      delegateQueue = [(GEOTileRequester *)self delegateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42___MKOverlayTileRequester__doWorkOrFinish__block_invoke_2;
      block[3] = &unk_1E76CDB38;
      block[4] = self;
      dispatch_async(delegateQueue, block);

      [(_MKOverlayTileRequester *)self _cleanup];
    }
  }
}

- (_MKOverlayTileRequester)initWithTileRequest:(id)request delegateQueue:(id)queue delegate:(id)delegate
{
  v11.receiver = self;
  v11.super_class = _MKOverlayTileRequester;
  v5 = [(GEOTileRequester *)&v11 initWithTileRequest:request delegateQueue:queue delegate:delegate];
  if (v5)
  {
    if (_tileRequesterWorkloop(void)::once != -1)
    {
      dispatch_once(&_tileRequesterWorkloop(void)::once, &__block_literal_global_85_38182);
    }

    v6 = _tileRequesterWorkloop(void)::workloop;
    v7 = geo_dispatch_queue_create_with_target();
    workQueue = v5->_workQueue;
    v5->_workQueue = v7;

    v9 = v5;
  }

  return v5;
}

+ (void)unregisterDataSource:(unsigned int)source
{
  if (RequesterRegistry::sharedInstance(void)::onceToken != -1)
  {
    dispatch_once(&RequesterRegistry::sharedInstance(void)::onceToken, &__block_literal_global_83_38163);
  }

  v4 = RequesterRegistry::sharedInstance(void)::singleton;
  std::mutex::lock((RequesterRegistry::sharedInstance(void)::singleton + 24));
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = v4 + 8;
    v7 = *(v4 + 8);
    do
    {
      v8 = *(v7 + 32);
      v9 = v8 >= source;
      v10 = v8 < source;
      if (v9)
      {
        v6 = v7;
      }

      v7 = *(v7 + 8 * v10);
    }

    while (v7);
    if (v6 != v4 + 8 && *(v6 + 32) <= source)
    {
      v11 = *(v6 + 8);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        v13 = v6;
        do
        {
          v12 = v13[2];
          v14 = *v12 == v13;
          v13 = v12;
        }

        while (!v14);
      }

      if (*v4 == v6)
      {
        *v4 = v12;
      }

      --*(v4 + 16);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v6);
      objc_destroyWeak((v6 + 40));
      operator delete(v6);
    }
  }

  std::mutex::unlock((v4 + 24));
}

+ (unsigned)registerDataSource:(id)source
{
  sourceCopy = source;
  if (RequesterRegistry::sharedInstance(void)::onceToken != -1)
  {
    dispatch_once(&RequesterRegistry::sharedInstance(void)::onceToken, &__block_literal_global_83_38163);
  }

  v4 = RequesterRegistry::sharedInstance(void)::singleton;
  v5 = sourceCopy;
  std::mutex::lock((v4 + 24));
  v6 = *(v4 + 88) + 1;
  *(v4 + 88) = v6;
  v9 = v6;
  v10 = &v9;
  v7 = std::__tree<std::__value_type<unsigned int,objc_object  {objcproto24_MKOverlayTileDataSource}* {__weak}>,std::__map_value_compare<unsigned int,objc_object  {objcproto24_MKOverlayTileDataSource}* {__weak},std::less<unsigned int>,true>,std::allocator<objc_object  {objcproto24_MKOverlayTileDataSource}* {__weak}>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::piecewise_construct_t const&<>>(v4, v6);
  objc_storeWeak(v7 + 5, v5);
  std::mutex::unlock((v4 + 24));
  LODWORD(v4) = v9;

  return v4;
}

@end