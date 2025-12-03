@interface _UIRemotePidManagerAccessibility
+ (id)sharedInstance;
- (_UIRemotePidManagerAccessibility)init;
- (void)_main_suspendPid:(int)pid forAssertionPointer:(id)pointer;
- (void)_main_unsuspendPid:(int)pid forAssertionPointer:(id)pointer;
- (void)suspendPid:(int)pid forAssertionPointer:(id)pointer;
- (void)unsuspendPid:(int)pid forAssertionPointer:(id)pointer;
@end

@implementation _UIRemotePidManagerAccessibility

+ (id)sharedInstance
{
  v5 = &sharedInstance_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_5);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance__shared;

  return v2;
}

- (_UIRemotePidManagerAccessibility)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = _UIRemotePidManagerAccessibility;
  v7 = [(_UIRemotePidManagerAccessibility *)&v5 init];
  objc_storeStrong(&v7, v7);
  if (v7)
  {
    v4 = MEMORY[0x29EDC9748](v7);
    AXPerformBlockOnMainThread();
    objc_storeStrong(&v4, 0);
  }

  v3 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  return v3;
}

- (void)unsuspendPid:(int)pid forAssertionPointer:(id)pointer
{
  selfCopy = self;
  v14 = a2;
  pidCopy = pid;
  location = 0;
  objc_storeStrong(&location, pointer);
  v4 = MEMORY[0x29EDCA5F8];
  v5 = -1073741824;
  v6 = 0;
  v7 = __69___UIRemotePidManagerAccessibility_unsuspendPid_forAssertionPointer___block_invoke;
  v8 = &unk_29F30C9C0;
  v9 = MEMORY[0x29EDC9748](selfCopy);
  v11 = pidCopy;
  v10 = MEMORY[0x29EDC9748](location);
  AXPerformBlockOnMainThread();
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

- (void)_main_unsuspendPid:(int)pid forAssertionPointer:(id)pointer
{
  selfCopy = self;
  v14 = a2;
  pidCopy = pid;
  location = 0;
  objc_storeStrong(&location, pointer);
  pidToAssertions = selfCopy->_pidToAssertions;
  v10 = [MEMORY[0x29EDBA070] numberWithInt:pidCopy];
  v11 = [(NSMutableDictionary *)pidToAssertions objectForKey:?];
  *&v4 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    *&v5 = MEMORY[0x29EDC9740](0).n128_u64[0];
    v7 = selfCopy->_pidToAssertions;
    v8 = [MEMORY[0x29EDBA070] numberWithInt:{pidCopy, v5}];
    [(NSMutableDictionary *)v7 setObject:v11 forKey:?];
    MEMORY[0x29EDC9740](v8);
    AXPidUnsuspend();
  }

  [v11 addObject:{location, v4, &v11}];
  objc_storeStrong(v6, 0);
  objc_storeStrong(&location, 0);
}

- (void)suspendPid:(int)pid forAssertionPointer:(id)pointer
{
  selfCopy = self;
  v14 = a2;
  pidCopy = pid;
  location = 0;
  objc_storeStrong(&location, pointer);
  v4 = MEMORY[0x29EDCA5F8];
  v5 = -1073741824;
  v6 = 0;
  v7 = __67___UIRemotePidManagerAccessibility_suspendPid_forAssertionPointer___block_invoke;
  v8 = &unk_29F30C9C0;
  v9 = MEMORY[0x29EDC9748](selfCopy);
  v11 = pidCopy;
  v10 = MEMORY[0x29EDC9748](location);
  AXPerformBlockOnMainThread();
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

- (void)_main_suspendPid:(int)pid forAssertionPointer:(id)pointer
{
  selfCopy = self;
  v12 = a2;
  pidCopy = pid;
  location = 0;
  objc_storeStrong(&location, pointer);
  pidToAssertions = selfCopy->_pidToAssertions;
  v8 = [MEMORY[0x29EDBA070] numberWithInt:pidCopy];
  v9 = [(NSMutableDictionary *)pidToAssertions objectForKey:?];
  *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v9)
  {
    [v9 removeObject:{location, v4}];
    if (![v9 count])
    {
      v5 = selfCopy->_pidToAssertions;
      v6 = [MEMORY[0x29EDBA070] numberWithInt:pidCopy];
      [(NSMutableDictionary *)v5 removeObjectForKey:?];
      MEMORY[0x29EDC9740](v6);
      AXPidSuspend();
    }
  }

  else
  {
    AXPidSuspend();
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

@end