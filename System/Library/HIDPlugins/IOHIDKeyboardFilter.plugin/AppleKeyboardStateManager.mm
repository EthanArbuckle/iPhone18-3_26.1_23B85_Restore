@interface AppleKeyboardStateManager
+ (id)sharedManager;
- (AppleKeyboardStateManager)init;
- (BOOL)isCapsLockEnabled:(id)enabled;
- (void)setCapsLockEnabled:(BOOL)enabled locationID:(id)d;
@end

@implementation AppleKeyboardStateManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29D42BDB0;
  block[3] = &unk_29F34F180;
  block[4] = self;
  if (qword_2A17A28F0 != -1)
  {
    dispatch_once(&qword_2A17A28F0, block);
  }

  v2 = qword_2A17A28E8;

  return v2;
}

- (AppleKeyboardStateManager)init
{
  v7.receiver = self;
  v7.super_class = AppleKeyboardStateManager;
  v2 = [(AppleKeyboardStateManager *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    capsLockStateTable = v2->_capsLockStateTable;
    v2->_capsLockStateTable = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)isCapsLockEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (enabledCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableSet *)selfCopy->_capsLockStateTable containsObject:enabledCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCapsLockEnabled:(BOOL)enabled locationID:(id)d
{
  enabledCopy = enabled;
  dCopy = d;
  if (dCopy)
  {
    v9 = dCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    capsLockStateTable = selfCopy->_capsLockStateTable;
    if (enabledCopy)
    {
      [(NSMutableSet *)capsLockStateTable addObject:v9];
    }

    else
    {
      [(NSMutableSet *)capsLockStateTable removeObject:v9];
    }

    objc_sync_exit(selfCopy);

    dCopy = v9;
  }
}

@end