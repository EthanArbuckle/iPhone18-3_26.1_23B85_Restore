@interface _ATXInternalNotification
+ (void)postData:(id)data forNotificationNamed:(id)named;
- (_ATXInternalNotification)initWithNotificationName:(id)name;
- (void)dealloc;
- (void)registerForNotifications:(id)notifications;
@end

@implementation _ATXInternalNotification

- (_ATXInternalNotification)initWithNotificationName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    [(_ATXInternalNotification *)a2 initWithNotificationName:?];
  }

  v10.receiver = self;
  v10.super_class = _ATXInternalNotification;
  v7 = [(_ATXInternalNotification *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_notificationName, name);
    pthread_mutex_init(&v8->_lock, 0);
  }

  return v8;
}

- (void)dealloc
{
  pthread_mutex_lock(&self->_lock);
  if (self->_token)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_token];
  }

  pthread_mutex_unlock(&self->_lock);
  pthread_mutex_destroy(&self->_lock);
  v4.receiver = self;
  v4.super_class = _ATXInternalNotification;
  [(_ATXInternalNotification *)&v4 dealloc];
}

- (void)registerForNotifications:(id)notifications
{
  notificationsCopy = notifications;
  pthread_mutex_lock(&self->_lock);
  if (!self->_token)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationName = self->_notificationName;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53___ATXInternalNotification_registerForNotifications___block_invoke;
    v9[3] = &unk_27859E970;
    v10 = notificationsCopy;
    v7 = [defaultCenter addObserverForName:notificationName object:0 queue:0 usingBlock:v9];
    token = self->_token;
    self->_token = v7;
  }

  pthread_mutex_unlock(&self->_lock);
}

+ (void)postData:(id)data forNotificationNamed:(id)named
{
  v11[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  namedCopy = named;
  if (dataCopy)
  {
    v10 = @"data";
    v11[0] = dataCopy;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:namedCopy object:0 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithNotificationName:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXInternalNotification.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"notificationName"}];
}

@end