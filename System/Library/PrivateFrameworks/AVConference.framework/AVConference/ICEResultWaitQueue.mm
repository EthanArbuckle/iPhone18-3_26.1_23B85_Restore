@interface ICEResultWaitQueue
- (ICEResultWaitQueue)init;
- (id)copyResultForCallID:(unsigned int)d;
- (void)addResult:(tagCONNRESULT *)result forCallID:(unsigned int)d;
- (void)dealloc;
@end

@implementation ICEResultWaitQueue

- (ICEResultWaitQueue)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = ICEResultWaitQueue;
  v2 = [(ICEResultWaitQueue *)&v4 init];
  v2->queryList = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  pthread_mutex_init(&v2->resMutex, 0);
  pthread_cond_init(&v2->resCond, 0);
  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->queryList removeAllObjects];

  pthread_mutex_destroy(&self->resMutex);
  pthread_cond_destroy(&self->resCond);
  v3.receiver = self;
  v3.super_class = ICEResultWaitQueue;
  [(ICEResultWaitQueue *)&v3 dealloc];
}

- (id)copyResultForCallID:(unsigned int)d
{
  v3 = *&d;
  v28 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->resMutex);
  v5 = 0;
  v15 = xmmword_1DBD45AE0;
  do
  {
    if (v5)
    {
      if ([(ICEResultQuery *)v5 isQueryAnswered])
      {
        goto LABEL_26;
      }

      v16.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v16.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v16.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      queryList = self->queryList;
      v7 = [(NSMutableArray *)queryList countByEnumeratingWithState:&v24 objects:v23 count:16];
      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = v7;
      v5 = 0;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(queryList);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          if ([(ICEResultQuery *)v11 callID]== v3)
          {
            v5 = v11;
          }
        }

        v8 = [(NSMutableArray *)queryList countByEnumeratingWithState:&v24 objects:v23 count:16];
      }

      while (v8);
      if (!v5)
      {
LABEL_17:
        v5 = [[ICEResultQuery alloc] initWithCallID:v3];
        [(NSMutableArray *)self->queryList addObject:v5];
        goto LABEL_18;
      }
    }

    if ([(ICEResultQuery *)v5 isQueryAnswered:v15])
    {
LABEL_26:
      [(NSMutableArray *)self->queryList removeObject:v5, v15];
      pthread_mutex_unlock(&self->resMutex);
      return v5;
    }

LABEL_18:
    v16 = v15;
  }

  while (!pthread_cond_timedwait_relative_np(&self->resCond, &self->resMutex, &v16));
  if (v5 && [(NSMutableArray *)self->queryList containsObject:v5])
  {
    [(NSMutableArray *)self->queryList removeObject:v5];
  }

  pthread_mutex_unlock(&self->resMutex);
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = v12;
      v19 = 2080;
      v20 = "[ICEResultWaitQueue copyResultForCallID:]";
      v21 = 1024;
      v22 = 126;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Didn't return a connection result in the ICE result wait queue.  This shouldn't happen", buf, 0x1Cu);
    }
  }

  return 0;
}

- (void)addResult:(tagCONNRESULT *)result forCallID:(unsigned int)d
{
  v4 = *&d;
  v21 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->resMutex);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  queryList = self->queryList;
  v8 = [(NSMutableArray *)queryList countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v18;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(queryList);
      }

      v13 = *(*(&v17 + 1) + 8 * i);
      if ([v13 callID] == v4)
      {
        v10 = v13;
      }
    }

    v9 = [(NSMutableArray *)queryList countByEnumeratingWithState:&v17 objects:v16 count:16];
  }

  while (v9);
  if (v10)
  {
    [v10 setResult:result];
  }

  else
  {
LABEL_12:
    v14 = [[ICEResultQuery alloc] initWithResult:result];
    v15 = v14;
    if (!result)
    {
      [(ICEResultQuery *)v14 setCallID:v4];
    }

    [(NSMutableArray *)self->queryList addObject:v15];
  }

  pthread_cond_broadcast(&self->resCond);
  pthread_mutex_unlock(&self->resMutex);
}

@end