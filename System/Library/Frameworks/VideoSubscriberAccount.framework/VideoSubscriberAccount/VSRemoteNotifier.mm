@interface VSRemoteNotifier
+ (id)_currentProcessIdentifier;
- (VSRemoteNotifier)init;
- (VSRemoteNotifier)initWithNotificationName:(id)name;
- (VSRemoteNotifierDelegate)delegate;
- (void)_didReceiveDistributedNotification:(id)notification;
- (void)dealloc;
- (void)postNotificationWithUserInfo:(id)info;
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

- (VSRemoteNotifier)initWithNotificationName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = VSRemoteNotifier;
  v5 = [(VSRemoteNotifier *)&v13 init];
  if (v5)
  {
    _currentProcessIdentifier = [objc_opt_class() _currentProcessIdentifier];
    notificationObject = v5->_notificationObject;
    v5->_notificationObject = _currentProcessIdentifier;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    distributedNotificationCenter = v5->_distributedNotificationCenter;
    v5->_distributedNotificationCenter = defaultCenter;

    v10 = [nameCopy copy];
    remoteNotificationName = v5->_remoteNotificationName;
    v5->_remoteNotificationName = v10;

    [(NSDistributedNotificationCenter *)v5->_distributedNotificationCenter addObserver:v5 selector:sel__didReceiveDistributedNotification_ name:nameCopy object:0];
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

- (void)_didReceiveDistributedNotification:(id)notification
{
  notificationCopy = notification;
  notificationObject = [(VSRemoteNotifier *)self notificationObject];
  object = [notificationCopy object];
  v6 = [notificationObject isEqual:object];

  if ((v6 & 1) == 0)
  {
    delegate = [(VSRemoteNotifier *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      userInfo = [notificationCopy userInfo];
      [delegate remoteNotifier:self didReceiveRemoteNotificationWithUserInfo:userInfo];
    }
  }
}

- (void)postNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  distributedNotificationCenter = [(VSRemoteNotifier *)self distributedNotificationCenter];
  remoteNotificationName = [(VSRemoteNotifier *)self remoteNotificationName];
  notificationObject = [(VSRemoteNotifier *)self notificationObject];
  [distributedNotificationCenter postNotificationName:remoteNotificationName object:notificationObject userInfo:infoCopy];
}

- (VSRemoteNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end