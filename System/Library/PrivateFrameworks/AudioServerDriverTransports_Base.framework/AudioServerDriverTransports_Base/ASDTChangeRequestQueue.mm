@interface ASDTChangeRequestQueue
+ (id)forObject:(id)object withName:(id)name andManager:(id)manager;
- (ASDObject)object;
- (ASDTChangeRequestManager)manager;
- (BOOL)addChangeRequest:(id)request;
- (id)initForObject:(id)object withName:(id)name andManager:(id)manager;
- (void)execute;
- (void)executeChangeRequest:(id)request;
@end

@implementation ASDTChangeRequestQueue

- (id)initForObject:(id)object withName:(id)name andManager:(id)manager
{
  objectCopy = object;
  nameCopy = name;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = ASDTChangeRequestQueue;
  v11 = [(ASDTChangeRequestQueue *)&v18 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_6;
  }

  v13 = 0;
  if (objectCopy && nameCopy && managerCopy)
  {
    [(ASDTChangeRequestQueue *)v11 setManager:managerCopy];
    [(ASDTChangeRequestQueue *)v12 setObject:objectCopy];
    [(ASDTChangeRequestQueue *)v12 setName:nameCopy];
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    [(ASDTChangeRequestQueue *)v12 setQueue:v14];

    queue = [(ASDTChangeRequestQueue *)v12 queue];

    if (queue)
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

+ (id)forObject:(id)object withName:(id)name andManager:(id)manager
{
  managerCopy = manager;
  nameCopy = name;
  objectCopy = object;
  v11 = [[self alloc] initForObject:objectCopy withName:nameCopy andManager:managerCopy];

  return v11;
}

- (BOOL)addChangeRequest:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (([(ASDTChangeRequestQueue *)self flags]& 2) != 0 && (v5 = pthread_self(), v5 == [(ASDTChangeRequestQueue *)self executionThread]))
  {
    manager = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock = [manager changeRequestLock];
    [changeRequestLock unlock];

    v12 = ASDTBaseLogType();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      manager2 = [(ASDTChangeRequestQueue *)self manager];
      bundleID = [manager2 bundleID];
      name = [(ASDTChangeRequestQueue *)self name];
      v18 = 138412802;
      v19 = bundleID;
      v20 = 2112;
      v21 = name;
      v22 = 1024;
      index = [requestCopy index];
      _os_log_impl(&dword_241659000, v12, OS_LOG_TYPE_DEFAULT, "%@: Change requests already running for %@; running request %u inline.", &v18, 0x1Cu);
    }

    [(ASDTChangeRequestQueue *)self executeChangeRequest:requestCopy];
    manager3 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock2 = [manager3 changeRequestLock];
    [changeRequestLock2 lock];

    [(ASDTChangeRequestQueue *)self setChangeRequestsExecuted:[(ASDTChangeRequestQueue *)self changeRequestsExecuted]+ 1];
    v7 = 0;
  }

  else
  {
    queue = [(ASDTChangeRequestQueue *)self queue];
    [queue addObject:requestCopy];

    v7 = [(ASDTChangeRequestQueue *)self flags]== 0;
    [(ASDTChangeRequestQueue *)self setFlags:[(ASDTChangeRequestQueue *)self flags]| 1];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)executeChangeRequest:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = ASDTBaseLogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    manager = [(ASDTChangeRequestQueue *)self manager];
    bundleID = [manager bundleID];
    index = [requestCopy index];
    name = [(ASDTChangeRequestQueue *)self name];
    v18 = 138412802;
    v19 = bundleID;
    v20 = 1024;
    v21 = index;
    v22 = 2112;
    v23 = name;
    _os_log_impl(&dword_241659000, v5, OS_LOG_TYPE_DEFAULT, "%@: Starting config change %u for device: %@", &v18, 0x1Cu);
  }

  block = [requestCopy block];

  if (block)
  {
    block2 = [requestCopy block];
    block2[2]();
  }

  v12 = ASDTBaseLogType();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    manager2 = [(ASDTChangeRequestQueue *)self manager];
    bundleID2 = [manager2 bundleID];
    index2 = [requestCopy index];
    name2 = [(ASDTChangeRequestQueue *)self name];
    v18 = 138412802;
    v19 = bundleID2;
    v20 = 1024;
    v21 = index2;
    v22 = 2112;
    v23 = name2;
    _os_log_impl(&dword_241659000, v12, OS_LOG_TYPE_DEFAULT, "%@: Completed config change %u for device: %@", &v18, 0x1Cu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)execute
{
  v42 = *MEMORY[0x277D85DE8];
  manager = [(ASDTChangeRequestQueue *)self manager];
  changeRequestLock = [manager changeRequestLock];
  [changeRequestLock lock];

  object = [(ASDTChangeRequestQueue *)self object];

  if (object)
  {
    [(ASDTChangeRequestQueue *)self setFlags:[(ASDTChangeRequestQueue *)self flags]| 2];
    [(ASDTChangeRequestQueue *)self setExecutionThread:pthread_self()];
    while (1)
    {
      queue = [(ASDTChangeRequestQueue *)self queue];
      v7 = [queue count];

      if (!v7)
      {
        break;
      }

      queue2 = [(ASDTChangeRequestQueue *)self queue];
      v9 = [queue2 objectAtIndex:0];

      queue3 = [(ASDTChangeRequestQueue *)self queue];
      [queue3 removeObjectAtIndex:0];

      manager2 = [(ASDTChangeRequestQueue *)self manager];
      changeRequestLock2 = [manager2 changeRequestLock];
      [changeRequestLock2 unlock];

      [(ASDTChangeRequestQueue *)self executeChangeRequest:v9];
      manager3 = [(ASDTChangeRequestQueue *)self manager];
      changeRequestLock3 = [manager3 changeRequestLock];
      [changeRequestLock3 lock];

      [(ASDTChangeRequestQueue *)self setChangeRequestsExecuted:[(ASDTChangeRequestQueue *)self changeRequestsExecuted]+ 1];
    }

    [(ASDTChangeRequestQueue *)self setFlags:0];
    [(ASDTChangeRequestQueue *)self setExecutionThread:0];
    manager4 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestQueues = [manager4 changeRequestQueues];
    name = [(ASDTChangeRequestQueue *)self name];
    [changeRequestQueues removeObjectForKey:name];

    manager5 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock4 = [manager5 changeRequestLock];
    [changeRequestLock4 broadcast];

    manager6 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock5 = [manager6 changeRequestLock];
    [changeRequestLock5 unlock];

    v22 = ASDTBaseLogType();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      manager7 = [(ASDTChangeRequestQueue *)self manager];
      bundleID = [manager7 bundleID];
      changeRequestsExecuted = [(ASDTChangeRequestQueue *)self changeRequestsExecuted];
      name2 = [(ASDTChangeRequestQueue *)self name];
      *buf = 138412802;
      v37 = bundleID;
      v38 = 1024;
      v39 = changeRequestsExecuted;
      v40 = 2112;
      v41 = name2;
      _os_log_impl(&dword_241659000, v22, OS_LOG_TYPE_DEFAULT, "%@: Executed %u change requests for device: %@", buf, 0x1Cu);
    }

    v27 = *MEMORY[0x277D85DE8];
  }

  else
  {
    manager8 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestQueues2 = [manager8 changeRequestQueues];
    name3 = [(ASDTChangeRequestQueue *)self name];
    [changeRequestQueues2 removeObjectForKey:name3];

    manager9 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock6 = [manager9 changeRequestLock];
    [changeRequestLock6 broadcast];

    manager10 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock7 = [manager10 changeRequestLock];
    [changeRequestLock7 unlock];

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