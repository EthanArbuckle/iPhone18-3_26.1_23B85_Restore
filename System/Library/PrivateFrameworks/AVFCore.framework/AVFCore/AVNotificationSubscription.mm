@interface AVNotificationSubscription
- (AVNotificationSubscription)initWithObject:(id)a3 notificationName:(id)a4 callbackBlock:(id)a5;
- (void)cancel;
- (void)dealloc;
@end

@implementation AVNotificationSubscription

- (AVNotificationSubscription)initWithObject:(id)a3 notificationName:(id)a4 callbackBlock:(id)a5
{
  v15.receiver = self;
  v15.super_class = AVNotificationSubscription;
  v8 = [(AVNotificationSubscription *)&v15 init];
  if (v8)
  {
    v8->_object = a3;
    v8->_callback = [a5 copy];
    v8->_cancelMutex = FigSimpleMutexCreate();
    objc_initWeak(&location, v8);
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    object = v8->_object;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__AVNotificationSubscription_initWithObject_notificationName_callbackBlock___block_invoke;
    v12[3] = &unk_1E7460BB0;
    objc_copyWeak(&v13, &location);
    v8->_observerToken = [v9 addObserverForName:a4 object:object queue:0 usingBlock:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __76__AVNotificationSubscription_initWithObject_notificationName_callbackBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    (*(Weak[3] + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (void)dealloc
{
  [(AVNotificationSubscription *)self cancel];
  if (self->_cancelMutex)
  {
    FigSimpleMutexDestroy();
  }

  self->_object = 0;
  self->_callback = 0;
  v3.receiver = self;
  v3.super_class = AVNotificationSubscription;
  [(AVNotificationSubscription *)&v3 dealloc];
}

- (void)cancel
{
  FigSimpleMutexLock();
  if (self->_observerToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    self->_observerToken = 0;
  }

  FigSimpleMutexUnlock();
}

@end