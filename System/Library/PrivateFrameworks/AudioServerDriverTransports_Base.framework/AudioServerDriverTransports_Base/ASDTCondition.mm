@interface ASDTCondition
+ (ASDTCondition)conditionWithName:(id)name;
- (ASDTCondition)init;
- (BOOL)waitUntilTime:(ASDTTime *)time;
- (void)dealloc;
@end

@implementation ASDTCondition

- (ASDTCondition)init
{
  v6.receiver = self;
  v6.super_class = ASDTCondition;
  v2 = [(ASDTCondition *)&v6 init];
  v3 = v2;
  if (v2)
  {
    pthread_cond_init(&v2->_cond, 0);
    pthread_mutex_init(&v3->_mutex, 0);
    v4 = v3;
  }

  return v3;
}

+ (ASDTCondition)conditionWithName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(self);
  [v5 setName:nameCopy];

  return v5;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_mutex);
  pthread_cond_destroy(&self->_cond);
  v3.receiver = self;
  v3.super_class = ASDTCondition;
  [(ASDTCondition *)&v3 dealloc];
}

- (BOOL)waitUntilTime:(ASDTTime *)time
{
  ASDTTime::machAbsoluteTime(self, &v13);
  v7 = v13 < time->nsec;
  if (v13 < time->nsec)
  {
    do
    {
      v10 = *&time->nsec;
      v11 = *&time->hostFrac;
      ASDTTime::operator-=(&v10, &v13, v5, v6);
      v12.tv_sec = v10 / 1000000000;
      v12.tv_nsec = v10 % 1000000000;
      v8 = pthread_cond_timedwait_relative_np(&self->_cond, &self->_mutex, &v12);
      if (v8 != 60)
      {
        break;
      }

      ASDTTime::machAbsoluteTime(v8, &v10);
      v13 = v10;
      v14 = v11;
      v7 = v10 < time->nsec;
    }

    while (v10 < time->nsec);
  }

  return v7;
}

@end