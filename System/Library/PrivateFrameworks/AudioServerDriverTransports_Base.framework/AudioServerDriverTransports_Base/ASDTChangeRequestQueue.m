@interface ASDTChangeRequestQueue
+ (id)forObject:(id)a3 withName:(id)a4 andManager:(id)a5;
- (ASDObject)object;
- (ASDTChangeRequestManager)manager;
- (BOOL)addChangeRequest:(id)a3;
- (id)initForObject:(id)a3 withName:(id)a4 andManager:(id)a5;
- (void)execute;
- (void)executeChangeRequest:(id)a3;
@end

@implementation ASDTChangeRequestQueue

- (id)initForObject:(id)a3 withName:(id)a4 andManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = ASDTChangeRequestQueue;
  v11 = [(ASDTChangeRequestQueue *)&v18 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_6;
  }

  v13 = 0;
  if (v8 && v9 && v10)
  {
    [(ASDTChangeRequestQueue *)v11 setManager:v10];
    [(ASDTChangeRequestQueue *)v12 setObject:v8];
    [(ASDTChangeRequestQueue *)v12 setName:v9];
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    [(ASDTChangeRequestQueue *)v12 setQueue:v14];

    v15 = [(ASDTChangeRequestQueue *)v12 queue];

    if (v15)
    {
LABEL_6:
      v13 = v12;
      goto LABEL_7;
    }

    v17 = ASDTBaseLogType();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ASDTChangeRequestQueue initForObject:v17 withName:? andManager:?];
    }

    v13 = 0;
  }

LABEL_7:

  return v13;
}

+ (id)forObject:(id)a3 withName:(id)a4 andManager:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initForObject:v10 withName:v9 andManager:v8];

  return v11;
}

- (BOOL)addChangeRequest:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(ASDTChangeRequestQueue *)self flags]& 2) != 0 && (v5 = pthread_self(), v5 == [(ASDTChangeRequestQueue *)self executionThread]))
  {
    v10 = [(ASDTChangeRequestQueue *)self manager];
    v11 = [v10 changeRequestLock];
    [v11 unlock];

    v12 = ASDTBaseLogType();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(ASDTChangeRequestQueue *)self manager];
      v14 = [v13 bundleID];
      v15 = [(ASDTChangeRequestQueue *)self name];
      v18 = 138412802;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 1024;
      v23 = [v4 index];
      _os_log_impl(&dword_241659000, v12, OS_LOG_TYPE_DEFAULT, "%@: Change requests already running for %@; running request %u inline.", &v18, 0x1Cu);
    }

    [(ASDTChangeRequestQueue *)self executeChangeRequest:v4];
    v16 = [(ASDTChangeRequestQueue *)self manager];
    v17 = [v16 changeRequestLock];
    [v17 lock];

    [(ASDTChangeRequestQueue *)self setChangeRequestsExecuted:[(ASDTChangeRequestQueue *)self changeRequestsExecuted]+ 1];
    v7 = 0;
  }

  else
  {
    v6 = [(ASDTChangeRequestQueue *)self queue];
    [v6 addObject:v4];

    v7 = [(ASDTChangeRequestQueue *)self flags]== 0;
    [(ASDTChangeRequestQueue *)self setFlags:[(ASDTChangeRequestQueue *)self flags]| 1];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)executeChangeRequest:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASDTBaseLogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ASDTChangeRequestQueue *)self manager];
    v7 = [v6 bundleID];
    v8 = [v4 index];
    v9 = [(ASDTChangeRequestQueue *)self name];
    v18 = 138412802;
    v19 = v7;
    v20 = 1024;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_241659000, v5, OS_LOG_TYPE_DEFAULT, "%@: Starting config change %u for device: %@", &v18, 0x1Cu);
  }

  v10 = [v4 block];

  if (v10)
  {
    v11 = [v4 block];
    v11[2]();
  }

  v12 = ASDTBaseLogType();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(ASDTChangeRequestQueue *)self manager];
    v14 = [v13 bundleID];
    v15 = [v4 index];
    v16 = [(ASDTChangeRequestQueue *)self name];
    v18 = 138412802;
    v19 = v14;
    v20 = 1024;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_241659000, v12, OS_LOG_TYPE_DEFAULT, "%@: Completed config change %u for device: %@", &v18, 0x1Cu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)execute
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [(ASDTChangeRequestQueue *)self manager];
  v4 = [v3 changeRequestLock];
  [v4 lock];

  v5 = [(ASDTChangeRequestQueue *)self object];

  if (v5)
  {
    [(ASDTChangeRequestQueue *)self setFlags:[(ASDTChangeRequestQueue *)self flags]| 2];
    [(ASDTChangeRequestQueue *)self setExecutionThread:pthread_self()];
    while (1)
    {
      v6 = [(ASDTChangeRequestQueue *)self queue];
      v7 = [v6 count];

      if (!v7)
      {
        break;
      }

      v8 = [(ASDTChangeRequestQueue *)self queue];
      v9 = [v8 objectAtIndex:0];

      v10 = [(ASDTChangeRequestQueue *)self queue];
      [v10 removeObjectAtIndex:0];

      v11 = [(ASDTChangeRequestQueue *)self manager];
      v12 = [v11 changeRequestLock];
      [v12 unlock];

      [(ASDTChangeRequestQueue *)self executeChangeRequest:v9];
      v13 = [(ASDTChangeRequestQueue *)self manager];
      v14 = [v13 changeRequestLock];
      [v14 lock];

      [(ASDTChangeRequestQueue *)self setChangeRequestsExecuted:[(ASDTChangeRequestQueue *)self changeRequestsExecuted]+ 1];
    }

    [(ASDTChangeRequestQueue *)self setFlags:0];
    [(ASDTChangeRequestQueue *)self setExecutionThread:0];
    v15 = [(ASDTChangeRequestQueue *)self manager];
    v16 = [v15 changeRequestQueues];
    v17 = [(ASDTChangeRequestQueue *)self name];
    [v16 removeObjectForKey:v17];

    v18 = [(ASDTChangeRequestQueue *)self manager];
    v19 = [v18 changeRequestLock];
    [v19 broadcast];

    v20 = [(ASDTChangeRequestQueue *)self manager];
    v21 = [v20 changeRequestLock];
    [v21 unlock];

    v22 = ASDTBaseLogType();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(ASDTChangeRequestQueue *)self manager];
      v24 = [v23 bundleID];
      v25 = [(ASDTChangeRequestQueue *)self changeRequestsExecuted];
      v26 = [(ASDTChangeRequestQueue *)self name];
      *buf = 138412802;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&dword_241659000, v22, OS_LOG_TYPE_DEFAULT, "%@: Executed %u change requests for device: %@", buf, 0x1Cu);
    }

    v27 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v28 = [(ASDTChangeRequestQueue *)self manager];
    v29 = [v28 changeRequestQueues];
    v30 = [(ASDTChangeRequestQueue *)self name];
    [v29 removeObjectForKey:v30];

    v31 = [(ASDTChangeRequestQueue *)self manager];
    v32 = [v31 changeRequestLock];
    [v32 broadcast];

    v35 = [(ASDTChangeRequestQueue *)self manager];
    v33 = [v35 changeRequestLock];
    [v33 unlock];

    v34 = *MEMORY[0x277D85DE8];
  }
}

- (ASDTChangeRequestManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (ASDObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end