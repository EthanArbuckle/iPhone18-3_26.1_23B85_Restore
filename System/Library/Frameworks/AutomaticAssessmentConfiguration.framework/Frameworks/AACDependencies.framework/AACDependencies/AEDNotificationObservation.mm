@interface AEDNotificationObservation
- (void)dealloc;
- (void)endObserving;
- (void)invalidate;
- (void)notificationDidFire:(id)a3;
@end

@implementation AEDNotificationObservation

- (void)dealloc
{
  [(AEDNotificationObservation *)self endObserving];
  v3.receiver = self;
  v3.super_class = AEDNotificationObservation;
  [(AEDNotificationObservation *)&v3 dealloc];
}

void __40__AEDNotificationObservation_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[5])
  {
    v2 = WeakRetained;
    __40__AEDNotificationObservation_invalidate__block_invoke_cold_1(WeakRetained);
    WeakRetained = v2;
  }
}

void __50__AEDNotificationObservation_notificationDidFire___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[5])
  {
    v4 = WeakRetained;
    v3 = *(a1 + 32);
    (*(WeakRetained[5] + 16))();
    WeakRetained = v4;
  }
}

- (void)endObserving
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 32);
    v4 = *(a1 + 8);
    v5 = v2;
    [v5 removeObserver:a1 name:v4 object:v3];
  }
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__AEDNotificationObservation_invalidate__block_invoke;
  v5[3] = &unk_278A0C440;
  v4 = queue;
  objc_copyWeak(&v6, &location);
  dispatch_async(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)notificationDidFire:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AEDNotificationObservation_notificationDidFire___block_invoke;
  block[3] = &unk_278A0C468;
  v6 = queue;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __40__AEDNotificationObservation_invalidate__block_invoke_cold_1(void *a1)
{
  [(AEDNotificationObservation *)a1 endObserving];
  objc_setProperty_nonatomic_copy(a1, v2, 0, 40);
  v3 = a1[4];
  a1[4] = 0;
}

@end