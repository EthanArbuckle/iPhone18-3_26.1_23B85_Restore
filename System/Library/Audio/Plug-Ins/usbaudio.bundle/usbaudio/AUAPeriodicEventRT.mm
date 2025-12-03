@interface AUAPeriodicEventRT
- (void)dealloc;
- (void)start:(unint64_t)start maxPeriodMach:(unint64_t)mach eventHandler:(id)handler;
- (void)stop;
@end

@implementation AUAPeriodicEventRT

- (void)start:(unint64_t)start maxPeriodMach:(unint64_t)mach eventHandler:(id)handler
{
  handler;
  [(AUAPeriodicEventRT *)self stop];
  operator new();
}

- (void)stop
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&impl->var5);
    impl->var1 = 1;
    pthread_cond_signal(&impl->var7);
    pthread_mutex_unlock(&impl->var5);
    v4 = self->_impl;
    if (v4)
    {
      (*(v4->var0 + 1))(v4);
    }

    self->_impl = 0;
  }
}

- (void)dealloc
{
  [(AUAPeriodicEventRT *)self stop];
  v3.receiver = self;
  v3.super_class = AUAPeriodicEventRT;
  [(AUAPeriodicEventRT *)&v3 dealloc];
}

@end