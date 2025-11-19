@interface RDMutex
- (RDMutex)init;
- (RDMutex)initWithoutTracking;
- (id)description;
- (int)lock;
- (int)trylock;
- (int)unlock;
- (void)dealloc;
@end

@implementation RDMutex

- (RDMutex)init
{
  v4.receiver = self;
  v4.super_class = RDMutex;
  v2 = [(RDMutex *)&v4 init];
  if (v2)
  {
    v5.__sig = 0;
    *v5.__opaque = 0;
    pthread_mutexattr_init(&v5);
    pthread_mutexattr_settype(&v5, 2);
    pthread_mutex_init(&v2->pthreadLock, &v5);
    pthread_mutexattr_destroy(&v5);
    v2->trackOwner = 0;
  }

  return v2;
}

- (RDMutex)initWithoutTracking
{
  v4.receiver = self;
  v4.super_class = RDMutex;
  v2 = [(RDMutex *)&v4 init];
  if (v2)
  {
    v5.__sig = 0;
    *v5.__opaque = 0;
    pthread_mutexattr_init(&v5);
    pthread_mutexattr_settype(&v5, 2);
    pthread_mutex_init(&v2->pthreadLock, &v5);
    pthread_mutexattr_destroy(&v5);
    v2->trackOwner = 0;
  }

  return v2;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->pthreadLock);
  [(RDMutex *)self setWhoHasTheLock:0];
  v3.receiver = self;
  v3.super_class = RDMutex;
  [(RDMutex *)&v3 dealloc];
}

- (int)lock
{
  v3 = pthread_mutex_lock(&self->pthreadLock);
  if (self->trackOwner)
  {
    v4 = +[NSThread currentThread];
    v5 = [v4 description];
    [(RDMutex *)self setWhoHasTheLock:v5];
  }

  return v3;
}

- (int)trylock
{
  v3 = pthread_mutex_trylock(&self->pthreadLock);
  if (self->trackOwner)
  {
    v4 = +[NSThread currentThread];
    v5 = [v4 description];
    [(RDMutex *)self setWhoHasTheLock:v5];
  }

  return v3;
}

- (int)unlock
{
  [(RDMutex *)self setWhoHasTheLock:0];

  return pthread_mutex_unlock(&self->pthreadLock);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RDMutex;
  v3 = [(RDMutex *)&v7 description];
  v4 = [(RDMutex *)self whoHasTheLock];
  v5 = [NSString stringWithFormat:@"%@ -- Owner: %@", v3, v4];

  return v5;
}

@end