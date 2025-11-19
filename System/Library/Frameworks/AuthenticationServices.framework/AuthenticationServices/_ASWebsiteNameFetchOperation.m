@interface _ASWebsiteNameFetchOperation
- (BOOL)isCancelled;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (_ASWebsiteNameFetchOperation)initWithDomain:(id)a3 metadataEntry:(id)a4 provider:(id)a5;
- (id)debugDescription;
- (void)_finish;
- (void)_run;
- (void)cancel;
- (void)start;
@end

@implementation _ASWebsiteNameFetchOperation

- (_ASWebsiteNameFetchOperation)initWithDomain:(id)a3 metadataEntry:(id)a4 provider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = _ASWebsiteNameFetchOperation;
  v11 = [(_ASWebsiteNameFetchOperation *)&v22 init];
  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"com.apple.SafariCore.%@.%p", v14, v11];
    v16 = dispatch_queue_create([v15 UTF8String], 0);
    queue = v11->_queue;
    v11->_queue = v16;

    v18 = [v8 copy];
    domain = v11->_domain;
    v11->_domain = v18;

    objc_storeStrong(&v11->_metadataEntry, a4);
    objc_storeWeak(&v11->_provider, v10);
    [(_ASWebsiteNameFetchOperation *)v11 setName:v8];
    v20 = v11;
  }

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ASWebsiteNameFetchOperation *)self name];
  if ([(_ASWebsiteNameFetchOperation *)self isFinished])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(_ASWebsiteNameFetchOperation *)self isReady])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(_ASWebsiteNameFetchOperation *)self isCancelled])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(_ASWebsiteNameFetchOperation *)self isExecuting])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p name = %@, isFinished = %@; isReady = %@; isCancelled = %@; isExecuting = %@ >", v5, self, v6, v7, v8, v9, v10];;

  return v11;
}

- (BOOL)isFinished
{
  v2 = self;
  objc_sync_enter(v2);
  isFinished = v2->_state.isFinished;
  objc_sync_exit(v2);

  return isFinished;
}

- (BOOL)isExecuting
{
  v2 = self;
  objc_sync_enter(v2);
  isExecuting = v2->_state.isExecuting;
  objc_sync_exit(v2);

  return isExecuting;
}

- (BOOL)isCancelled
{
  v2 = self;
  objc_sync_enter(v2);
  isCancelled = v2->_state.isCancelled;
  objc_sync_exit(v2);

  return isCancelled;
}

- (void)start
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_state.isCancelled)
  {
    [(_ASWebsiteNameFetchOperation *)obj _finish];
    objc_sync_exit(obj);
  }

  else
  {
    [(_ASWebsiteNameFetchOperation *)obj willChangeValueForKey:@"isExecuting"];
    obj->_state.isExecuting = 1;
    [(_ASWebsiteNameFetchOperation *)obj didChangeValueForKey:@"isExecuting"];
    objc_sync_exit(obj);

    queue = obj->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37___ASWebsiteNameFetchOperation_start__block_invoke;
    block[3] = &unk_1E7AF7608;
    block[4] = obj;
    dispatch_async(queue, block);
  }
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_state.isCancelled)
  {
    [(_ASWebsiteNameFetchOperation *)obj willChangeValueForKey:@"isCancelled"];
    obj->_state.isCancelled = 1;
    [(_ASWebsiteNameFetchOperation *)obj didChangeValueForKey:@"isCancelled"];
    [(_ASWebsiteNameFetchOperation *)obj _finish];
  }

  objc_sync_exit(obj);
}

- (void)_run
{
  if (![(_ASWebsiteNameFetchOperation *)self isCancelled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_provider);
    if (WeakRetained)
    {
      v4 = objc_opt_class();
      domain = self->_domain;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __36___ASWebsiteNameFetchOperation__run__block_invoke;
      v7[3] = &unk_1E7AF8B00;
      v8 = WeakRetained;
      v9 = self;
      [v4 fetchWebsiteNameForDomain:domain completionHandler:v7];
    }

    else
    {
      v6 = self;
      objc_sync_enter(v6);
      [(_ASWebsiteNameFetchOperation *)v6 _finish];
      objc_sync_exit(v6);
    }
  }
}

- (void)_finish
{
  p_state = &self->_state;
  isFinished = self->_state.isFinished;
  isExecuting = self->_state.isExecuting;
  if (!isFinished)
  {
    [(_ASWebsiteNameFetchOperation *)self willChangeValueForKey:@"isFinished"];
  }

  if (isExecuting)
  {
    [(_ASWebsiteNameFetchOperation *)self willChangeValueForKey:@"isExecuting"];
    *&p_state->isExecuting = 256;
    [(_ASWebsiteNameFetchOperation *)self didChangeValueForKey:@"isExecuting"];
    if (isFinished)
    {
      return;
    }
  }

  else
  {
    *&p_state->isExecuting = 256;
    if (isFinished)
    {
      return;
    }
  }

  [(_ASWebsiteNameFetchOperation *)self didChangeValueForKey:@"isFinished"];
}

@end