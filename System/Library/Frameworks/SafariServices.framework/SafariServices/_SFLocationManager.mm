@interface _SFLocationManager
+ (id)sharedLocationManager;
- (_SFLocationManager)init;
- (void)_handleApplicationStateChange:(id)a3;
- (void)_setApplication:(id)a3 isForeground:(BOOL)a4;
- (void)_updateApplicationsToMonitor;
- (void)_updateAssertion;
- (void)addClientForApplication:(id)a3;
- (void)removeClientForApplication:(id)a3;
@end

@implementation _SFLocationManager

+ (id)sharedLocationManager
{
  if (sharedLocationManager_onceToken != -1)
  {
    +[_SFLocationManager sharedLocationManager];
  }

  v3 = sharedLocationManager_shared;

  return v3;
}

- (_SFLocationManager)init
{
  v14.receiver = self;
  v14.super_class = _SFLocationManager;
  v2 = [(_SFLocationManager *)&v14 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = [objc_alloc(MEMORY[0x1E698D028]) initWithBundleIDs:0 states:0];
    stateMonitor = v2->_stateMonitor;
    v2->_stateMonitor = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    foregroundApplications = v2->_foregroundApplications;
    v2->_foregroundApplications = v7;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __26___SFLocationManager_init__block_invoke;
    v11[3] = &unk_1E8490FC8;
    objc_copyWeak(&v12, &location);
    [(BKSApplicationStateMonitor *)v2->_stateMonitor setHandler:v11];
    v9 = v2;
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_updateAssertion
{
  v3 = [(NSMutableSet *)self->_foregroundApplications intersectsSet:self->_clients];
  assertion = self->_assertion;
  if (v3)
  {
    if (assertion)
    {
      return;
    }

    v5 = [MEMORY[0x1E695FBE0] newAssertionForBundleIdentifier:@"com.apple.mobilesafari" withReason:@"SFSafariViewController is being used by a foreground app." level:1];
  }

  else
  {
    if (!assertion)
    {
      return;
    }

    [(CLInUseAssertion *)assertion invalidate];
    v5 = 0;
  }

  v6 = self->_assertion;
  self->_assertion = v5;
}

- (void)_handleApplicationStateChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698CFF8]];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698D010]];
    v8 = [v7 unsignedIntegerValue];

    if (v8 <= 0x20)
    {
      if (((1 << v8) & 0x10015) != 0)
      {
LABEL_4:
        v9 = 0;
LABEL_7:
        [(_SFLocationManager *)self _setApplication:v6 isForeground:v9];

        goto LABEL_8;
      }

      if (((1 << v8) & 0x100000100) != 0)
      {
        v9 = 1;
        goto LABEL_7;
      }

      if (v8 == 1)
      {
        if ([(NSCountedSet *)self->_clients containsObject:v6])
        {
          do
          {
            [(NSCountedSet *)self->_clients removeObject:v6];
          }

          while (([(NSCountedSet *)self->_clients containsObject:v6]& 1) != 0);
        }

        goto LABEL_4;
      }
    }

    v10 = WBS_LOG_CHANNEL_PREFIXViewService();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_SFLocationManager *)v8 _handleApplicationStateChange:v10];
    }

    goto LABEL_4;
  }

LABEL_8:
}

- (void)_setApplication:(id)a3 isForeground:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([(NSMutableSet *)self->_foregroundApplications containsObject:?]!= v4 && [(NSCountedSet *)self->_clients containsObject:v7])
  {
    foregroundApplications = self->_foregroundApplications;
    if (v4)
    {
      [(NSMutableSet *)foregroundApplications addObject:v7];
    }

    else
    {
      [(NSMutableSet *)foregroundApplications removeObject:v7];
    }

    [(_SFLocationManager *)self _updateAssertion];
  }
}

- (void)_updateApplicationsToMonitor
{
  if ([(NSCountedSet *)self->_clients count])
  {
    v3 = *MEMORY[0x1E698CFE8];
  }

  else
  {
    v3 = 0;
  }

  stateMonitor = self->_stateMonitor;
  v5 = [(NSCountedSet *)self->_clients allObjects];
  [(BKSApplicationStateMonitor *)stateMonitor updateInterestedBundleIDs:v5 states:v3];
}

- (void)addClientForApplication:(id)a3
{
  v7 = a3;
  v4 = [(NSCountedSet *)self->_clients containsObject:v7];
  [(NSCountedSet *)self->_clients addObject:v7];
  if ((v4 & 1) == 0)
  {
    [(_SFLocationManager *)self _updateApplicationsToMonitor];
  }

  stateMonitor = self->_stateMonitor;
  v6 = [(BKSApplicationStateMonitor *)stateMonitor handler];
  [(BKSApplicationStateMonitor *)stateMonitor applicationInfoForApplication:v7 completion:v6];
}

- (void)removeClientForApplication:(id)a3
{
  v6 = a3;
  v4 = [(NSCountedSet *)self->_clients containsObject:v6];
  v5 = v6;
  if (v4)
  {
    [(NSCountedSet *)self->_clients removeObject:v6];
    if (([(NSCountedSet *)self->_clients containsObject:v6]& 1) == 0)
    {
      [(NSMutableSet *)self->_foregroundApplications removeObject:v6];
      [(_SFLocationManager *)self _updateApplicationsToMonitor];
    }

    [(_SFLocationManager *)self _updateAssertion];
    v5 = v6;
  }
}

- (void)_handleApplicationStateChange:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Unknown BKSApplicationState value %u", v2, 8u);
}

@end