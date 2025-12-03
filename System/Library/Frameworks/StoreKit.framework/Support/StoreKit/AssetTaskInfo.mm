@interface AssetTaskInfo
+ (id)newTaskInfoForTask:(id)task;
+ (id)taskInfoForTask:(id)task;
+ (void)recordTaskInfo:(id)info forTask:(id)task;
+ (void)removeAllTaskInfo;
+ (void)removeTaskInfo:(id)info;
- (AssetPromise)promise;
- (AssetTaskInfo)initWithTask:(id)task;
- (NSURLSession)session;
@end

@implementation AssetTaskInfo

+ (id)newTaskInfoForTask:(id)task
{
  taskCopy = task;
  v5 = [[AssetTaskInfo alloc] initWithTask:taskCopy];
  [self recordTaskInfo:v5 forTask:taskCopy];

  return v5;
}

- (AssetTaskInfo)initWithTask:(id)task
{
  taskCopy = task;
  v11.receiver = self;
  v11.super_class = AssetTaskInfo;
  v6 = [(AssetTaskInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, task);
    originalRequest = [taskCopy originalRequest];
    request = v7->_request;
    v7->_request = originalRequest;
  }

  return v7;
}

+ (void)recordTaskInfo:(id)info forTask:(id)task
{
  infoCopy = info;
  taskCopy = task;
  os_unfair_lock_lock(&unk_1003D4BD0);
  if (!qword_1003D4BC8)
  {
    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    v7 = qword_1003D4BC8;
    qword_1003D4BC8 = v6;
  }

  task = [infoCopy task];

  if (task)
  {
    v9 = qword_1003D4BC8;
    task2 = [infoCopy task];
    [v9 removeObjectForKey:task2];
  }

  v11 = infoCopy[17];
  infoCopy[17] = taskCopy;
  v12 = taskCopy;

  v13 = qword_1003D4BC8;
  task3 = [infoCopy task];
  [v13 setObject:infoCopy forKey:task3];

  os_unfair_lock_unlock(&unk_1003D4BD0);
}

+ (void)removeAllTaskInfo
{
  os_unfair_lock_lock(&unk_1003D4BD0);
  v2 = qword_1003D4BC8;
  qword_1003D4BC8 = 0;

  os_unfair_lock_unlock(&unk_1003D4BD0);
}

+ (void)removeTaskInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock(&unk_1003D4BD0);
  v3 = qword_1003D4BC8;
  if (qword_1003D4BC8)
  {
    task = [infoCopy task];
    [v3 removeObjectForKey:task];
  }

  os_unfair_lock_unlock(&unk_1003D4BD0);
}

+ (id)taskInfoForTask:(id)task
{
  taskCopy = task;
  os_unfair_lock_lock(&unk_1003D4BD0);
  if (qword_1003D4BC8)
  {
    v4 = [qword_1003D4BC8 objectForKey:taskCopy];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&unk_1003D4BD0);

  return v4;
}

- (AssetPromise)promise
{
  WeakRetained = objc_loadWeakRetained(&self->_promise);

  return WeakRetained;
}

- (NSURLSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end