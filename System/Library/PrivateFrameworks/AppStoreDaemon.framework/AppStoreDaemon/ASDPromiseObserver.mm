@interface ASDPromiseObserver
- (ASDPromiseObserver)initWithValueBlock:(id)a3 errorBlock:(id)a4 scheduler:(id)a5;
- (void)notifyRejectedWithError:(id)a3;
- (void)notifyResolvedWithValue:(id)a3;
@end

@implementation ASDPromiseObserver

- (ASDPromiseObserver)initWithValueBlock:(id)a3 errorBlock:(id)a4 scheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ASDPromiseObserver;
  v11 = [(ASDPromiseObserver *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    valueBlock = v11->_valueBlock;
    v11->_valueBlock = v12;

    v14 = [v9 copy];
    errorBlock = v11->_errorBlock;
    v11->_errorBlock = v14;

    objc_storeStrong(&v11->_scheduler, a5);
  }

  return v11;
}

- (void)notifyResolvedWithValue:(id)a3
{
  v5 = a3;
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
  v9 = v5;
  v7 = v5;
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

- (void)notifyRejectedWithError:(id)a3
{
  v5 = a3;
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
  v9 = v5;
  v7 = v5;
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