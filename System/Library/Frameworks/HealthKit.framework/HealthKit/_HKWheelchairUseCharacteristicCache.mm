@interface _HKWheelchairUseCharacteristicCache
- (BOOL)_lock_isWheelchairUser;
- (BOOL)hasFetchedWheelchairUse;
- (BOOL)isWheelchairUser;
- (_HKWheelchairUseCharacteristicCache)initWithHealthStore:(id)store;
- (void)_handleCharacteristicsDidChangeNotification;
- (void)_handleFetchError:(id)error;
- (void)_handleFetchSuccess:(id)success;
- (void)_lock_fetchWheelchairUse;
- (void)_lock_fetchWheelchairUseIfNecessary;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation _HKWheelchairUseCharacteristicCache

- (_HKWheelchairUseCharacteristicCache)initWithHealthStore:(id)store
{
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = _HKWheelchairUseCharacteristicCache;
  v6 = [(_HKWheelchairUseCharacteristicCache *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v7->_state = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    v10 = HKCreateSerialDispatchQueue(0, @"fetchingQueue");
    queue = v7->_queue;
    v7->_queue = v10;

    v7->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v7->_lock);
    [(_HKWheelchairUseCharacteristicCache *)v7 _lock_fetchWheelchairUse];
    os_unfair_lock_unlock(&v7->_lock);
    objc_initWeak(&location, v7);
    v12 = MEMORY[0x1E69E96A0];
    v13 = MEMORY[0x1E69E96A0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59___HKWheelchairUseCharacteristicCache_initWithHealthStore___block_invoke;
    v15[3] = &unk_1E7379AA8;
    objc_copyWeak(&v16, &location);
    notify_register_dispatch("com.apple.healthd.user-characteristics.did-change", &v7->_characteristicUpdateToken, v12, v15);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  notify_cancel(self->_characteristicUpdateToken);
  v3.receiver = self;
  v3.super_class = _HKWheelchairUseCharacteristicCache;
  [(_HKWheelchairUseCharacteristicCache *)&v3 dealloc];
}

- (void)_handleCharacteristicsDidChangeNotification
{
  os_unfair_lock_lock(&self->_lock);
  [(_HKWheelchairUseCharacteristicCache *)self _lock_fetchWheelchairUse];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isWheelchairUser
{
  os_unfair_lock_lock(&self->_lock);
  _lock_isWheelchairUser = [(_HKWheelchairUseCharacteristicCache *)self _lock_isWheelchairUser];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_isWheelchairUser;
}

- (BOOL)_lock_isWheelchairUser
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(_HKWheelchairUseCharacteristicCache *)self _lock_fetchWheelchairUseIfNecessary];
  return [(HKWheelchairUseObject *)self->_wheelchairUseObject wheelchairUse]== HKWheelchairUseYes;
}

- (BOOL)hasFetchedWheelchairUse
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_wheelchairUseObject != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_lock_fetchWheelchairUseIfNecessary
{
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(_HKWheelchairUseCharacteristicCache *)self _lock_needsFetch])
  {

    [(_HKWheelchairUseCharacteristicCache *)self _lock_fetchWheelchairUse];
  }
}

- (void)_lock_fetchWheelchairUse
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_state = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___HKWheelchairUseCharacteristicCache__lock_fetchWheelchairUse__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleFetchError:(id)error
{
  errorCopy = error;
  if ((HKIsUnitTesting() & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(_HKWheelchairUseCharacteristicCache *)errorCopy _handleFetchError:v5];
    }
  }

  hk_isDatabaseAccessibilityError = [errorCopy hk_isDatabaseAccessibilityError];
  os_unfair_lock_lock(&self->_lock);
  if (hk_isDatabaseAccessibilityError)
  {
    self->_state = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    queryRetries = self->_queryRetries;
    self->_queryRetries = queryRetries + 1;
    os_unfair_lock_unlock(&self->_lock);
    if (queryRetries >= 5)
    {
      queryRetries = 5;
    }

    objc_initWeak(&location, self);
    v8 = dispatch_time(0, 1000000000 * queryRetries);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57___HKWheelchairUseCharacteristicCache__handleFetchError___block_invoke;
    v9[3] = &unk_1E73782E8;
    objc_copyWeak(&v10, &location);
    dispatch_after(v8, MEMORY[0x1E69E96A0], v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)_handleFetchSuccess:(id)success
{
  v23 = *MEMORY[0x1E69E9840];
  successCopy = success;
  os_unfair_lock_lock(&self->_lock);
  wheelchairUseObject = self->_wheelchairUseObject;
  self->_state = 2;
  self->_queryRetries = 0;
  wheelchairUse = [(HKWheelchairUseObject *)wheelchairUseObject wheelchairUse];
  if (wheelchairUse == [successCopy wheelchairUse])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogDefault;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      wheelchairUse2 = [(HKWheelchairUseObject *)self->_wheelchairUseObject wheelchairUse];
      if (wheelchairUse2 > HKWheelchairUseYes)
      {
        v10 = 0;
      }

      else
      {
        v10 = off_1E7383BF8[wheelchairUse2];
      }

      wheelchairUse3 = [successCopy wheelchairUse];
      if (wheelchairUse3 > 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = off_1E7383BF8[wheelchairUse3];
      }

      v17 = 138412802;
      selfCopy = self;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "%@: Wheelchair Use changed from %@ to %@, notifying observers.", &v17, 0x20u);
    }

    objc_storeStrong(&self->_wheelchairUseObject, success);
    _lock_isWheelchairUser = [(_HKWheelchairUseCharacteristicCache *)self _lock_isWheelchairUser];
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v15 = [allObjects copy];

    os_unfair_lock_unlock(&self->_lock);
    [(_HKWheelchairUseCharacteristicCache *)self _alertObservers:v15 didUpdateToWheelchairUser:_lock_isWheelchairUser];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleFetchError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error loading wheelchair use characteristic: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end