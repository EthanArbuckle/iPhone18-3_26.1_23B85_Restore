@interface VSRemoteNotifier
+ (id)_currentProcessIdentifier;
- (VSRemoteNotifier)init;
- (VSRemoteNotifier)initWithNotificationName:(id)a3;
- (VSRemoteNotifierDelegate)delegate;
- (void)_didReceiveDistributedNotification:(id)a3;
- (void)dealloc;
- (void)postNotificationWithUserInfo:(id)a3;
@end

@implementation VSRemoteNotifier

+ (id)_currentProcessIdentifier
{
  if (_currentProcessIdentifier___vs_lazy_init_predicate != -1)
  {
    +[VSRemoteNotifier _currentProcessIdentifier];
  }

  v3 = _currentProcessIdentifier___vs_lazy_init_variable;

  return v3;
}

void __45__VSRemoteNotifier__currentProcessIdentifier__block_invoke()
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v0 = [v3 UUIDString];
  v1 = [v0 copy];
  v2 = _currentProcessIdentifier___vs_lazy_init_variable;
  _currentProcessIdentifier___vs_lazy_init_variable = v1;
}

- (VSRemoteNotifier)init
{
  [(VSRemoteNotifier *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VSRemoteNotifier)initWithNotificationName:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VSRemoteNotifier;
  v5 = [(VSRemoteNotifier *)&v13 init];
  if (v5)
  {
    v6 = [objc_opt_class() _currentProcessIdentifier];
    notificationObject = v5->_notificationObject;
    v5->_notificationObject = v6;

    v8 = [MEMORY[0x277CCA9A0] defaultCenter];
    distributedNotificationCenter = v5->_distributedNotificationCenter;
    v5->_distributedNotificationCenter = v8;

    v10 = [v4 copy];
    remoteNotificationName = v5->_remoteNotificationName;
    v5->_remoteNotificationName = v10;

    [(NSDistributedNotificationCenter *)v5->_distributedNotificationCenter addObserver:v5 selector:sel__didReceiveDistributedNotification_ name:v4 object:0];
  }

  return v5;
}

- (void)dealloc
{
  [(NSDistributedNotificationCenter *)self->_distributedNotificationCenter removeObserver:self name:self->_remoteNotificationName object:0];
  v3.receiver = self;
  v3.super_class = VSRemoteNotifier;
  [(VSRemoteNotifier *)&v3 dealloc];
}

- (void)_didReceiveDistributedNotification:(id)a3
{
  v9 = a3;
  v4 = [(VSRemoteNotifier *)self notificationObject];
  v5 = [v9 object];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(VSRemoteNotifier *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v9 userInfo];
      [v7 remoteNotifier:self didReceiveRemoteNotificationWithUserInfo:v8];
    }
  }
}

- (void)postNotificationWithUserInfo:(id)a3
{
  v4 = a3;
  v7 = [(VSRemoteNotifier *)self distributedNotificationCenter];
  v5 = [(VSRemoteNotifier *)self remoteNotificationName];
  v6 = [(VSRemoteNotifier *)self notificationObject];
  [v7 postNotificationName:v5 object:v6 userInfo:v4];
}

- (VSRemoteNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end