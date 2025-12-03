@interface _LSDeviceIdentifierManager
+ (id)sharedInstance;
- (_LSDeviceIdentifierManager)init;
- (id)cacheForPersona:(id)persona;
@end

@implementation _LSDeviceIdentifierManager

+ (id)sharedInstance
{
  _LSAssertRunningInServer("+[_LSDeviceIdentifierManager sharedInstance]");
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___LSDeviceIdentifierManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[_LSDeviceIdentifierManager sharedInstance]::once != -1)
  {
    dispatch_once(&+[_LSDeviceIdentifierManager sharedInstance]::once, block);
  }

  v3 = +[_LSDeviceIdentifierManager sharedInstance]::result;

  return v3;
}

- (id)cacheForPersona:(id)persona
{
  personaCopy = persona;
  if (personaCopy && (getUMUserPersonaClass(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = personaCopy;
    if ([v5 isEnterprisePersona])
    {
      userPersonaUniqueString = [v5 userPersonaUniqueString];
    }

    else
    {
      userPersonaUniqueString = &stru_1EEF65710;
    }
  }

  else
  {
    userPersonaUniqueString = &stru_1EEF65710;
  }

  v7 = self->_sharedCaches;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_sharedCaches objectForKey:userPersonaUniqueString];
  if (!v8)
  {
    v8 = [[_LSDeviceIdentifierCache alloc] initWithPersona:userPersonaUniqueString];
    [(NSMutableDictionary *)self->_sharedCaches setObject:v8 forKey:userPersonaUniqueString];
  }

  objc_sync_exit(v7);

  return v8;
}

- (_LSDeviceIdentifierManager)init
{
  v6.receiver = self;
  v6.super_class = _LSDeviceIdentifierManager;
  v2 = [(_LSDeviceIdentifierManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sharedCaches = v2->_sharedCaches;
    v2->_sharedCaches = v3;
  }

  return v2;
}

@end