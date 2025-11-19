@interface AppleKeyboardStateManager
+ (id)sharedManager;
- (AppleKeyboardStateManager)init;
- (BOOL)isCapsLockEnabled:(id)a3;
- (void)setCapsLockEnabled:(BOOL)a3 locationID:(id)a4;
@end

@implementation AppleKeyboardStateManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29D42BDB0;
  block[3] = &unk_29F34F180;
  block[4] = a1;
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

- (BOOL)isCapsLockEnabled:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableSet *)v5->_capsLockStateTable containsObject:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCapsLockEnabled:(BOOL)a3 locationID:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    v9 = v6;
    v7 = self;
    objc_sync_enter(v7);
    capsLockStateTable = v7->_capsLockStateTable;
    if (v4)
    {
      [(NSMutableSet *)capsLockStateTable addObject:v9];
    }

    else
    {
      [(NSMutableSet *)capsLockStateTable removeObject:v9];
    }

    objc_sync_exit(v7);

    v6 = v9;
  }
}

@end