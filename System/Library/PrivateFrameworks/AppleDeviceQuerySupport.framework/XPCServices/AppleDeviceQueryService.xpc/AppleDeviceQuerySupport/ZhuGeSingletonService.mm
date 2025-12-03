@interface ZhuGeSingletonService
+ (id)sharedInstance;
@end

@implementation ZhuGeSingletonService

+ (id)sharedInstance
{
  if (qword_100019E08 != -1)
  {
    sub_100009758();
  }

  pthread_mutex_lock(&stru_100019E10);
  v3 = qword_100019E50;
  if (!qword_100019E50)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = qword_100019E50;
    qword_100019E50 = v4;

    v3 = qword_100019E50;
  }

  v6 = NSStringFromClass(self);
  v7 = [v3 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_alloc_init(self);
    v9 = qword_100019E50;
    v10 = NSStringFromClass(self);
    [v9 setObject:v8 forKeyedSubscript:v10];

    v11 = qword_100019E50;
    v12 = NSStringFromClass(self);
    v13 = [v11 objectForKeyedSubscript:v12];
    [v13 initData];
  }

  pthread_mutex_unlock(&stru_100019E10);
  v14 = qword_100019E50;
  v15 = NSStringFromClass(self);
  v16 = [v14 objectForKeyedSubscript:v15];

  return v16;
}

@end