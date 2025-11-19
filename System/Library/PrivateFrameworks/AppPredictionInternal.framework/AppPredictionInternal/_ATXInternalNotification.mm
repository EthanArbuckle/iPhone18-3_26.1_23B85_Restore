@interface _ATXInternalNotification
+ (void)postData:(id)a3 forNotificationNamed:(id)a4;
- (_ATXInternalNotification)initWithNotificationName:(id)a3;
- (void)dealloc;
- (void)registerForNotifications:(id)a3;
@end

@implementation _ATXInternalNotification

- (_ATXInternalNotification)initWithNotificationName:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(_ATXInternalNotification *)a2 initWithNotificationName:?];
  }

  v10.receiver = self;
  v10.super_class = _ATXInternalNotification;
  v7 = [(_ATXInternalNotification *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_notificationName, a3);
    pthread_mutex_init(&v8->_lock, 0);
  }

  return v8;
}

- (void)dealloc
{
  pthread_mutex_lock(&self->_lock);
  if (self->_token)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_token];
  }

  pthread_mutex_unlock(&self->_lock);
  pthread_mutex_destroy(&self->_lock);
  v4.receiver = self;
  v4.super_class = _ATXInternalNotification;
  [(_ATXInternalNotification *)&v4 dealloc];
}

- (void)registerForNotifications:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  if (!self->_token)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    notificationName = self->_notificationName;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53___ATXInternalNotification_registerForNotifications___block_invoke;
    v9[3] = &unk_27859E970;
    v10 = v4;
    v7 = [v5 addObserverForName:notificationName object:0 queue:0 usingBlock:v9];
    token = self->_token;
    self->_token = v7;
  }

  pthread_mutex_unlock(&self->_lock);
}

+ (void)postData:(id)a3 forNotificationNamed:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v10 = @"data";
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:v6 object:0 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithNotificationName:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXInternalNotification.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"notificationName"}];
}

@end