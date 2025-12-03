@interface APSDeferredTask
- (APSDeferredTask)init;
- (id)result;
- (void)dealloc;
- (void)setNotCompleted;
- (void)setResult:(id)result;
@end

@implementation APSDeferredTask

- (id)result
{
  pthread_mutex_lock(&self->_mutex);
  while (!self->_completed)
  {
    pthread_cond_wait(&self->_cond, &self->_mutex);
  }

  v3 = self->_obj;
  pthread_mutex_unlock(&self->_mutex);
  return v3;
}

- (void)setNotCompleted
{
  pthread_mutex_lock(&self->_mutex);
  self->_completed = 0;

  pthread_mutex_unlock(&self->_mutex);
}

- (void)setResult:(id)result
{
  pthread_mutex_lock(&self->_mutex);
  obj = self->_obj;
  resultCopy = result;
  self->_obj = result;

  self->_completed = 1;
  pthread_cond_signal(&self->_cond);

  pthread_mutex_unlock(&self->_mutex);
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_mutex);
  pthread_cond_destroy(&self->_cond);

  self->_obj = 0;
  v3.receiver = self;
  v3.super_class = APSDeferredTask;
  [(APSDeferredTask *)&v3 dealloc];
}

- (APSDeferredTask)init
{
  v5.receiver = self;
  v5.super_class = APSDeferredTask;
  v2 = [(APSDeferredTask *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_mutex, 0);
    pthread_cond_init(&v3->_cond, 0);
    v3->_completed = 0;
  }

  return v3;
}

@end