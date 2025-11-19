@interface MKMapItemMetadataRequester
+ (id)sharedInstance;
- (MKMapItemMetadataRequester)init;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)cancelRequestsForMapItem:(id)a3;
- (void)dealloc;
- (void)handleTask:(id)a3 withData:(id)a4 error:(id)a5;
- (void)sendRequest:(id)a3;
@end

@implementation MKMapItemMetadataRequester

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  dataForTasks = self->_dataForTasks;
  v8 = a5;
  v9 = a4;
  v10 = [(NSMapTable *)dataForTasks objectForKey:v9];
  [(MKMapItemMetadataRequester *)self handleTask:v9 withData:v10 error:v8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a5;
  v7 = [(NSMapTable *)self->_dataForTasks objectForKey:a4];
  if (v8)
  {
    [v7 appendData:v8];
  }
}

- (void)handleTask:(id)a3 withData:(id)a4 error:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 originalRequest];
  v12 = [v11 URL];

  v13 = [(NSMapTable *)self->_requestsForURLs objectForKey:v12];
  v14 = v13;
  if (v10)
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v27 + 1) + 8 * i) handleError:v10];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v19 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v23 + 1) + 8 * j) handleData:v9];
        }

        v20 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v20);
    }
  }

  [(NSMapTable *)self->_dataForTasks removeObjectForKey:v8];
  [(NSMapTable *)self->_requestsForURLs removeObjectForKey:v12];
  [(NSMapTable *)self->_tasksForURLs removeObjectForKey:v12];
}

- (void)cancelRequestsForMapItem:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [(NSMapTable *)self->_requestsForURLs objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if ([v11 count])
        {
          v12 = [v11 objectAtIndex:0];
          v13 = [v12 url];
          v14 = [v12 mapItem];

          if (v14 == v4 && v13 != 0)
          {
            [v5 addObject:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * j);
        [(NSMapTable *)self->_requestsForURLs removeObjectForKey:v21, v23];
        v22 = [(NSMapTable *)self->_tasksForURLs objectForKey:v21];
        [v22 cancel];
        if (v22)
        {
          [(NSMapTable *)self->_dataForTasks removeObjectForKey:v22];
        }

        [(NSMapTable *)self->_tasksForURLs removeObjectForKey:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }
}

- (void)sendRequest:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 url];
  v6 = [(NSMapTable *)self->_requestsForURLs objectForKey:v5];
  v7 = v6;
  requestsForURLs = self->_requestsForURLs;
  if (v6)
  {
    v9 = [v6 arrayByAddingObject:v4];
    [(NSMapTable *)requestsForURLs setObject:v9 forKey:v5];
  }

  else
  {
    v16[0] = v4;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [(NSMapTable *)requestsForURLs setObject:v10 forKey:v5];

    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__MKMapItemMetadataRequester_sendRequest___block_invoke;
    block[3] = &unk_1E76CCC28;
    v13 = v4;
    v14 = self;
    v15 = v5;
    dispatch_async(v11, block);
  }
}

void __42__MKMapItemMetadataRequester_sendRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) urlRequest];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MKMapItemMetadataRequester_sendRequest___block_invoke_2;
  block[3] = &unk_1E76CCC28;
  v3 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v6 = v3;
  v7 = v2;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __42__MKMapItemMetadataRequester_sendRequest___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];

  if (v2)
  {
    v5 = [*(a1[4] + 8) dataTaskWithRequest:a1[6]];
    [*(a1[4] + 24) setObject:v5 forKey:a1[5]];
    v3 = *(a1[4] + 32);
    v4 = [MEMORY[0x1E695DF88] data];
    [v3 setObject:v4 forKey:v5];

    [v5 resume];
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_requestsForURLs;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_tasksForURLs objectForKey:*(*(&v10 + 1) + 8 * v7)];
        [v8 cancel];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = MKMapItemMetadataRequester;
  [(MKMapItemMetadataRequester *)&v9 dealloc];
}

- (MKMapItemMetadataRequester)init
{
  v16.receiver = self;
  v16.super_class = MKMapItemMetadataRequester;
  v2 = [(MKMapItemMetadataRequester *)&v16 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AF78];
    v4 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    v5 = [MEMORY[0x1E696ADC8] mainQueue];
    v6 = [v3 sessionWithConfiguration:v4 delegate:v2 delegateQueue:v5];
    session = v2->_session;
    v2->_session = v6;

    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    tasksForURLs = v2->_tasksForURLs;
    v2->_tasksForURLs = v8;

    v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    requestsForURLs = v2->_requestsForURLs;
    v2->_requestsForURLs = v10;

    v12 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    dataForTasks = v2->_dataForTasks;
    v2->_dataForTasks = v12;

    v14 = v2;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9752 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9752, &__block_literal_global_9753);
  }

  v3 = __sharedMetadataRequester;

  return v3;
}

void __44__MKMapItemMetadataRequester_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MKMapItemMetadataRequester);
  v1 = __sharedMetadataRequester;
  __sharedMetadataRequester = v0;
}

@end