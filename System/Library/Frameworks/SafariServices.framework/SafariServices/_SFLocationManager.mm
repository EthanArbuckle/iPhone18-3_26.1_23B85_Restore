@interface _SFLocationManager
+ (id)sharedLocationManager;
- (_SFLocationManager)init;
- (void)_handleApplicationStateChange:(id)change;
- (void)_setApplication:(id)application isForeground:(BOOL)foreground;
- (void)_updateApplicationsToMonitor;
- (void)_updateAssertion;
- (void)addClientForApplication:(id)application;
- (void)removeClientForApplication:(id)application;
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

- (void)_handleApplicationStateChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (changeCopy)
  {
    v6 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E698CFF8]];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698D010]];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    if (unsignedIntegerValue <= 0x20)
    {
      if (((1 << unsignedIntegerValue) & 0x10015) != 0)
      {
LABEL_4:
        v9 = 0;
LABEL_7:
        [(_SFLocationManager *)self _setApplication:v6 isForeground:v9];

        goto LABEL_8;
      }

      if (((1 << unsignedIntegerValue) & 0x100000100) != 0)
      {
        v9 = 1;
        goto LABEL_7;
      }

      if (unsignedIntegerValue == 1)
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
      [(_SFLocationManager *)unsignedIntegerValue _handleApplicationStateChange:v10];
    }

    goto LABEL_4;
  }

LABEL_8:
}

- (void)_setApplication:(id)application isForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  applicationCopy = application;
  if ([(NSMutableSet *)self->_foregroundApplications containsObject:?]!= foregroundCopy && [(NSCountedSet *)self->_clients containsObject:applicationCopy])
  {
    foregroundApplications = self->_foregroundApplications;
    if (foregroundCopy)
    {
      [(NSMutableSet *)foregroundApplications addObject:applicationCopy];
    }

    else
    {
      [(NSMutableSet *)foregroundApplications removeObject:applicationCopy];
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
  allObjects = [(NSCountedSet *)self->_clients allObjects];
  [(BKSApplicationStateMonitor *)stateMonitor updateInterestedBundleIDs:allObjects states:v3];
}

- (void)addClientForApplication:(id)application
{
  applicationCopy = application;
  v4 = [(NSCountedSet *)self->_clients containsObject:applicationCopy];
  [(NSCountedSet *)self->_clients addObject:applicationCopy];
  if ((v4 & 1) == 0)
  {
    [(_SFLocationManager *)self _updateApplicationsToMonitor];
  }

  stateMonitor = self->_stateMonitor;
  handler = [(BKSApplicationStateMonitor *)stateMonitor handler];
  [(BKSApplicationStateMonitor *)stateMonitor applicationInfoForApplication:applicationCopy completion:handler];
}

- (void)removeClientForApplication:(id)application
{
  applicationCopy = application;
  v4 = [(NSCountedSet *)self->_clients containsObject:applicationCopy];
  v5 = applicationCopy;
  if (v4)
  {
    [(NSCountedSet *)self->_clients removeObject:applicationCopy];
    if (([(NSCountedSet *)self->_clients containsObject:applicationCopy]& 1) == 0)
    {
      [(NSMutableSet *)self->_foregroundApplications removeObject:applicationCopy];
      [(_SFLocationManager *)self _updateApplicationsToMonitor];
    }

    [(_SFLocationManager *)self _updateAssertion];
    v5 = applicationCopy;
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