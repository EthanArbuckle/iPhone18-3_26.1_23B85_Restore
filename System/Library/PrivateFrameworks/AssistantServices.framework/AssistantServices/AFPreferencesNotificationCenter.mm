@interface AFPreferencesNotificationCenter
- (AFPreferencesNotificationCenter)init;
- (id)addObserverForDarwinName:(__CFString *)name usingBlock:(id)block;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation AFPreferencesNotificationCenter

- (AFPreferencesNotificationCenter)init
{
  v10.receiver = self;
  v10.super_class = AFPreferencesNotificationCenter;
  v2 = [(AFPreferencesNotificationCenter *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    instanceLock = v2->instanceLock;
    v2->instanceLock = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
    darwinRegistrationsByObserver = v2->darwinRegistrationsByObserver;
    v2->darwinRegistrationsByObserver = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
    darwinRegistrationsByName = v2->darwinRegistrationsByName;
    v2->darwinRegistrationsByName = v7;
  }

  return v2;
}

- (void)removeObserver:(id)observer
{
  v20 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [(NSLock *)self->instanceLock lock];
  observerCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", observerCopy];
  v6 = [(NSMutableDictionary *)self->darwinRegistrationsByObserver objectForKey:observerCopy];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->darwinRegistrationsByName objectForKey:v6];
    v8 = v7;
    if (v7)
    {
      intValue = [v7 intValue];
      darwinRegistrationsByName = self->darwinRegistrationsByName;
      if (intValue < 2)
      {
        [(NSMutableDictionary *)darwinRegistrationsByName removeObjectForKey:v6];
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v6, 0);
      }

      else
      {
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "intValue") - 1}];
        [(NSMutableDictionary *)darwinRegistrationsByName setObject:v11 forKey:v6];
      }
    }

    else
    {
      v12 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "[AFPreferencesNotificationCenter removeObserver:]";
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s Notification registration inconsistency detected for %@", buf, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->darwinRegistrationsByObserver removeObjectForKey:observerCopy];
  }

  [(NSLock *)self->instanceLock unlock];
  v15.receiver = self;
  v15.super_class = AFPreferencesNotificationCenter;
  [(AFPreferencesNotificationCenter *)&v15 removeObserver:observerCopy];

  v14 = *MEMORY[0x1E69E9840];
}

- (id)addObserverForDarwinName:(__CFString *)name usingBlock:(id)block
{
  nameCopy = name;
  instanceLock = self->instanceLock;
  blockCopy = block;
  [(NSLock *)instanceLock lock];
  v9 = [(NSMutableDictionary *)self->darwinRegistrationsByName objectForKey:nameCopy];
  v10 = v9;
  darwinRegistrationsByName = self->darwinRegistrationsByName;
  if (v9)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "intValue") + 1}];
    [(NSMutableDictionary *)darwinRegistrationsByName setObject:v12 forKey:nameCopy];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [(NSMutableDictionary *)darwinRegistrationsByName setObject:v13 forKey:nameCopy];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _AFPreferencesNotificationCenterTrampoline, nameCopy, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v18.receiver = self;
  v18.super_class = AFPreferencesNotificationCenter;
  v15 = [(AFPreferencesNotificationCenter *)&v18 addObserverForName:nameCopy object:0 queue:0 usingBlock:blockCopy];

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v15];
  [(NSMutableDictionary *)self->darwinRegistrationsByObserver setObject:nameCopy forKey:v16];
  [(NSLock *)self->instanceLock unlock];

  return v15;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = AFPreferencesNotificationCenter;
  [(AFPreferencesNotificationCenter *)&v4 dealloc];
}

@end