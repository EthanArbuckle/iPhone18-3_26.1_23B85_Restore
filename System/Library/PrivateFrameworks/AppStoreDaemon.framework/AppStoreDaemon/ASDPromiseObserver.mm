@interface ASDPromiseObserver
- (ASDPromiseObserver)initWithValueBlock:(id)block errorBlock:(id)errorBlock scheduler:(id)scheduler;
- (void)notifyRejectedWithError:(id)error;
- (void)notifyResolvedWithValue:(id)value;
@end

@implementation ASDPromiseObserver

- (ASDPromiseObserver)initWithValueBlock:(id)block errorBlock:(id)errorBlock scheduler:(id)scheduler
{
  blockCopy = block;
  errorBlockCopy = errorBlock;
  schedulerCopy = scheduler;
  v17.receiver = self;
  v17.super_class = ASDPromiseObserver;
  v11 = [(ASDPromiseObserver *)&v17 init];
  if (v11)
  {
    v12 = [blockCopy copy];
    valueBlock = v11->_valueBlock;
    v11->_valueBlock = v12;

    v14 = [errorBlockCopy copy];
    errorBlock = v11->_errorBlock;
    v11->_errorBlock = v14;

    objc_storeStrong(&v11->_scheduler, scheduler);
  }

  return v11;
}

- (void)notifyResolvedWithValue:(id)value
{
  valueCopy = value;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__ASDPromiseObserver_notifyResolvedWithValue___block_invoke;
  v8[3] = &unk_1E7CDB868;
  v8[4] = self;
  v9 = valueCopy;
  v7 = valueCopy;
  [Property scheduleBlock:v8];
}

uint64_t __46__ASDPromiseObserver_notifyResolvedWithValue___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 8, 1);
  }

  v4 = *(a1 + 40);
  v5 = Property[2];

  return v5();
}

- (void)notifyRejectedWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__ASDPromiseObserver_notifyRejectedWithError___block_invoke;
  v8[3] = &unk_1E7CDB868;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  [Property scheduleBlock:v8];
}

uint64_t __46__ASDPromiseObserver_notifyRejectedWithError___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  v4 = *(a1 + 40);
  v5 = Property[2];

  return v5();
}

@end