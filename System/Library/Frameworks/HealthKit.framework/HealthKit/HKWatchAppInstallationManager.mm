@interface HKWatchAppInstallationManager
- (HKWatchAppInstallationManager)initWithBundleIdentifier:(id)identifier;
- (id)isWatchAppInstalledWithError:(id *)error;
- (void)_queue_notifyObservers;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)startObserving;
- (void)stopObserving;
- (void)unregisterObserver:(id)observer;
@end

@implementation HKWatchAppInstallationManager

- (HKWatchAppInstallationManager)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = HKWatchAppInstallationManager;
  v6 = [(HKWatchAppInstallationManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v8 = HKCreateSerialDispatchQueue(v7, @"HKWatchAppInstallationManager private queue");
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = [HKObserverSet alloc];
    v11 = [(HKWatchAppInstallationManager *)v7 description];
    v12 = HKLogInfrastructure();
    v13 = [(HKObserverSet *)v10 initWithName:v11 loggingCategory:v12];
    observers = v7->_observers;
    v7->_observers = v13;
  }

  return v7;
}

- (void)registerObserver:(id)observer queue:(id)queue
{
  observers = self->_observers;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__HKWatchAppInstallationManager_registerObserver_queue___block_invoke;
  v5[3] = &unk_1E7376780;
  v5[4] = self;
  [(HKObserverSet *)observers registerObserver:observer queue:queue runIfFirstObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__HKWatchAppInstallationManager_unregisterObserver___block_invoke;
  v4[3] = &unk_1E7376780;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:observer runIfLastObserver:v4];
}

- (void)_queue_notifyObservers
{
  dispatch_assert_queue_V2(self->_queue);
  observers = self->_observers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__HKWatchAppInstallationManager__queue_notifyObservers__block_invoke;
  v4[3] = &unk_1E7379230;
  v4[4] = self;
  [(HKObserverSet *)observers notifyObservers:v4];
}

- (id)isWatchAppInstalledWithError:(id *)error
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)startObserving
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_3();

  NSRequestConcreteImplementation();
}

- (void)stopObserving
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_3();

  NSRequestConcreteImplementation();
}

@end