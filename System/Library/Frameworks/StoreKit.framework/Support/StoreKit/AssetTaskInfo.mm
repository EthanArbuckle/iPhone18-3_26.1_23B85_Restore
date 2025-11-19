@interface AssetTaskInfo
+ (id)newTaskInfoForTask:(id)a3;
+ (id)taskInfoForTask:(id)a3;
+ (void)recordTaskInfo:(id)a3 forTask:(id)a4;
+ (void)removeAllTaskInfo;
+ (void)removeTaskInfo:(id)a3;
- (AssetPromise)promise;
- (AssetTaskInfo)initWithTask:(id)a3;
- (NSURLSession)session;
@end

@implementation AssetTaskInfo

+ (id)newTaskInfoForTask:(id)a3
{
  v4 = a3;
  v5 = [[AssetTaskInfo alloc] initWithTask:v4];
  [a1 recordTaskInfo:v5 forTask:v4];

  return v5;
}

- (AssetTaskInfo)initWithTask:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AssetTaskInfo;
  v6 = [(AssetTaskInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, a3);
    v8 = [v5 originalRequest];
    request = v7->_request;
    v7->_request = v8;
  }

  return v7;
}

+ (void)recordTaskInfo:(id)a3 forTask:(id)a4
{
  v15 = a3;
  v5 = a4;
  os_unfair_lock_lock(&unk_1003D4BD0);
  if (!qword_1003D4BC8)
  {
    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    v7 = qword_1003D4BC8;
    qword_1003D4BC8 = v6;
  }

  v8 = [v15 task];

  if (v8)
  {
    v9 = qword_1003D4BC8;
    v10 = [v15 task];
    [v9 removeObjectForKey:v10];
  }

  v11 = v15[17];
  v15[17] = v5;
  v12 = v5;

  v13 = qword_1003D4BC8;
  v14 = [v15 task];
  [v13 setObject:v15 forKey:v14];

  os_unfair_lock_unlock(&unk_1003D4BD0);
}

+ (void)removeAllTaskInfo
{
  os_unfair_lock_lock(&unk_1003D4BD0);
  v2 = qword_1003D4BC8;
  qword_1003D4BC8 = 0;

  os_unfair_lock_unlock(&unk_1003D4BD0);
}

+ (void)removeTaskInfo:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&unk_1003D4BD0);
  v3 = qword_1003D4BC8;
  if (qword_1003D4BC8)
  {
    v4 = [v5 task];
    [v3 removeObjectForKey:v4];
  }

  os_unfair_lock_unlock(&unk_1003D4BD0);
}

+ (id)taskInfoForTask:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&unk_1003D4BD0);
  if (qword_1003D4BC8)
  {
    v4 = [qword_1003D4BC8 objectForKey:v3];
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