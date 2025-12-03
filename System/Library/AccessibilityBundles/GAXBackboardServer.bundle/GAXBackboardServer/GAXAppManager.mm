@interface GAXAppManager
- (BOOL)_appIsSessionAppWithIdentifier:(id)identifier;
- (BOOL)_axAppIsValidGAXApp:(id)app;
- (BOOL)_sessionAppIsEffectiveApp:(id)app;
- (BOOL)_sessionAppsContainMobilePhoneOrFacetime;
- (BOOL)appLayoutIsMultiApp;
- (BOOL)appWithIdentifierIsASessionApp:(id)app;
- (BOOL)effectiveAppIsAcceptableForSessionApps;
- (BOOL)effectiveAppIsCoreAuthUI;
- (BOOL)effectiveAppIsHostedByTheSystemApp;
- (BOOL)effectiveAppIsPreferences;
- (BOOL)effectiveAppIsPurpleBuddy;
- (BOOL)effectiveAppPrepareForTransitionToWorkspaceAndRetrieveRestrictionsInformation:(id *)information;
- (BOOL)effectiveAppWasPlayingMedia;
- (BOOL)sessionAppGAXClientDidCheckIn;
- (BOOL)sessionAppIsEffectiveApp:(id)app;
- (BOOL)sessionAppIsHostedByTheSystemApp:(id)app;
- (BOOL)sessionAppsContainPreferences;
- (BOOL)sessionAppsContainPurpleBuddy;
- (GAXAppManager)init;
- (GAXAppManagerDelegate)delegate;
- (NSArray)sessionAllowedBundleIdentifiers;
- (NSString)description;
- (NSString)effectiveAppBundleIdentifier;
- (id)_appWithBundleIdentifier:(id)identifier;
- (id)_bundleIdentifierFromLayoutIdentifier:(id)identifier;
- (id)_effectiveApp;
- (id)_makeGAXAppFromAXApp:(id)app;
- (id)_sessionApps;
- (id)effectiveAppContainedViewsForArchivedFingerPath:(id)path;
- (id)effectiveAppRestrictionIdentifiers;
- (unint64_t)sessionAppRelaunchAttemptsForAppWithIdentifier:(id)identifier;
- (void)_updateGAXApp:(id)app fromAXApp:(id)xApp;
- (void)addSessionAppWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)effectiveAppRestrictionWithIdentifier:(id)identifier didChangeState:(int64_t)state;
- (void)gaxAppDidGoInvalid:(id)invalid;
- (void)incrementRelaunchAttemptsForSessionAppWithIdentifier:(id)identifier;
- (void)monitorForPurpleBuddyDeath;
- (void)resetRelaunchAttempts;
- (void)resumeEffectiveApp;
- (void)scheduleResetLaunchAttempts;
- (void)setLastKnownEffectiveApp:(id)app;
- (void)suspendEffectiveApp;
- (void)terminateEffectiveApp;
- (void)updateManagedAppState:(BOOL)state;
- (void)updateSessionAppBundleIdentifiers:(id)identifiers;
@end

@implementation GAXAppManager

- (GAXAppManager)init
{
  v13.receiver = self;
  v13.super_class = GAXAppManager;
  v2 = [(GAXAppManager *)&v13 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    [(GAXAppManager *)v2 setManagedApps:v3];

    objc_initWeak(&location, v2);
    v4 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    [v4 setNeedsUserInteractivePriority:1];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_24FAC;
    v10 = &unk_4DE18;
    objc_copyWeak(&v11, &location);
    [v4 setTransitionHandler:&v7];
    v5 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v4, v7, v8, v9, v10];
    [(GAXAppManager *)v2 setAppLayoutMonitor:v5];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(GAXAppManager *)self setDelegate:0];
  appLayoutMonitor = [(GAXAppManager *)self appLayoutMonitor];
  [appLayoutMonitor invalidate];

  [(GAXAppManager *)self setLastKnownEffectiveApp:0];
  v4.receiver = self;
  v4.super_class = GAXAppManager;
  [(GAXAppManager *)&v4 dealloc];
}

- (NSString)description
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  _sessionApps = [(GAXAppManager *)self _sessionApps];
  v5 = [NSMutableString stringWithFormat:@"AppManager:<%p>\nEffective App:%@\nSession Apps:%@\nManaged Apps:", self, _effectiveApp, _sessionApps];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  managedApps = [(GAXAppManager *)self managedApps];
  v7 = [managedApps countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(managedApps);
        }

        [v5 appendFormat:@"  %@\n", *(*(&v12 + 1) + 8 * i)];
      }

      v8 = [managedApps countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)updateManagedAppState:(BOOL)state
{
  v5 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_25384;
  v6[3] = &unk_4D550;
  stateCopy = state;
  v6[4] = self;
  dispatch_async(v5, v6);
}

- (BOOL)appLayoutIsMultiApp
{
  selfCopy = self;
  appLayoutMonitor = [(GAXAppManager *)self appLayoutMonitor];
  currentLayout = [appLayoutMonitor currentLayout];

  if (currentLayout)
  {
    if (qword_59630 != -1)
    {
      sub_2BC94();
    }

    elements = [currentLayout elements];
    v6 = [NSPredicate predicateWithBlock:&stru_4DE98];
    v7 = [elements filteredArrayUsingPredicate:v6];

    firstObject = [v7 firstObject];
    bundleIdentifier = [firstObject bundleIdentifier];

    if (bundleIdentifier)
    {
      v10 = [v7 count];
      if (v10 < 2)
      {
        v17 = 1;
      }

      else
      {
        v11 = v10;
        v28 = selfCopy;
        v29 = currentLayout;
        for (i = 1; i != v11; ++i)
        {
          v13 = [v7 objectAtIndexedSubscript:i, v28, v29];
          bundleIdentifier2 = [v13 bundleIdentifier];
          if ([bundleIdentifier2 isEqualToString:bundleIdentifier])
          {
          }

          else
          {
            v15 = [v7 objectAtIndexedSubscript:i];
            identifier = [v15 identifier];
            v17 = [identifier isEqualToString:@"com.apple.springboard.floating-dock"];

            if (!v17)
            {
              goto LABEL_12;
            }
          }
        }

        v17 = 1;
LABEL_12:
        selfCopy = v28;
        currentLayout = v29;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = GAXLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v31 = [v7 count];
      v32 = 1024;
      v33 = v17;
      v34 = 2114;
      v35 = v7;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "App layout has %d elements from same app %i: %{public}@", buf, 0x18u);
    }

    v20 = [v7 count];
    v21 = v17 ^ 1;
    if (v20 < 2)
    {
      v21 = 1;
    }

    if (v21)
    {
      if (v20 < 2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v22 = +[AXSettings sharedInstance];
      guidedAccessAllowsMultipleWindows = [v22 guidedAccessAllowsMultipleWindows];

      if (guidedAccessAllowsMultipleWindows)
      {
LABEL_24:
        v18 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    _effectiveApp = [(GAXAppManager *)selfCopy _effectiveApp];
    layoutRole = [_effectiveApp layoutRole];

    v26 = GAXLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v31 = layoutRole;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Layout role for effective app is %d", buf, 8u);
    }

    v18 = layoutRole != &dword_0 + 3;
    goto LABEL_29;
  }

  v7 = GAXLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_2BCA8();
  }

  v18 = 0;
LABEL_30:

  return v18;
}

- (void)resetRelaunchAttempts
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  managedApps = [(GAXAppManager *)self managedApps];
  v3 = [managedApps countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(managedApps);
        }

        [*(*(&v7 + 1) + 8 * v6) setRelaunchAttempts:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [managedApps countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)scheduleResetLaunchAttempts
{
  resetRelaunchAttemptsTimer = [(GAXAppManager *)self resetRelaunchAttemptsTimer];

  if (!resetRelaunchAttemptsTimer)
  {
    v4 = [AXAccessQueueTimer alloc];
    v5 = +[AXAccessQueue mainAccessQueue];
    v6 = [v4 initWithTargetAccessQueue:v5];

    [(GAXAppManager *)self setResetRelaunchAttemptsTimer:v6];
  }

  resetRelaunchAttemptsTimer2 = [(GAXAppManager *)self resetRelaunchAttemptsTimer];
  [resetRelaunchAttemptsTimer2 cancel];

  resetRelaunchAttemptsTimer3 = [(GAXAppManager *)self resetRelaunchAttemptsTimer];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_261F0;
  v9[3] = &unk_4C958;
  v9[4] = self;
  [resetRelaunchAttemptsTimer3 afterDelay:v9 processBlock:5.0];
}

- (void)monitorForPurpleBuddyDeath
{
  purpleBuddyPIDMonitor = [(GAXAppManager *)self purpleBuddyPIDMonitor];

  if (!purpleBuddyPIDMonitor)
  {
    v4 = +[AXSpringBoardServer server];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_26588;
    v5[3] = &unk_4DEE8;
    v5[4] = self;
    [v4 purpleBuddyPID:v5];
  }
}

- (void)setLastKnownEffectiveApp:(id)app
{
  appCopy = app;
  lastKnownEffectiveApp = self->_lastKnownEffectiveApp;
  if (appCopy | lastKnownEffectiveApp)
  {
    if ((appCopy == 0) != (lastKnownEffectiveApp == 0) || (-[_GAXAppRepresentation bundleIdentifier](lastKnownEffectiveApp, "bundleIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), -[_GAXAppRepresentation bundleIdentifier](appCopy, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqualToString:v7], v7, v6, (v8 & 1) == 0))
    {
      delegate = [(GAXAppManager *)self delegate];
      bundleIdentifier = [(_GAXAppRepresentation *)appCopy bundleIdentifier];
      [delegate effectiveAppDidChange:bundleIdentifier withAppManager:self];
    }
  }

  v11 = self->_lastKnownEffectiveApp;
  self->_lastKnownEffectiveApp = appCopy;
}

- (BOOL)effectiveAppIsPurpleBuddy
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  isPurpleBuddy = [_effectiveApp isPurpleBuddy];

  return isPurpleBuddy;
}

- (BOOL)effectiveAppIsPreferences
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  isPreferences = [_effectiveApp isPreferences];

  return isPreferences;
}

- (BOOL)effectiveAppIsCoreAuthUI
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  isCoreAuthUI = [_effectiveApp isCoreAuthUI];

  return isCoreAuthUI;
}

- (NSString)effectiveAppBundleIdentifier
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  bundleIdentifier = [_effectiveApp bundleIdentifier];

  return bundleIdentifier;
}

- (void)terminateEffectiveApp
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  [_effectiveApp terminate];
}

- (void)suspendEffectiveApp
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  [_effectiveApp suspend];
}

- (void)resumeEffectiveApp
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  [_effectiveApp resume];
}

- (BOOL)effectiveAppWasPlayingMedia
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  wasPlayingMedia = [_effectiveApp wasPlayingMedia];

  return wasPlayingMedia;
}

- (id)effectiveAppContainedViewsForArchivedFingerPath:(id)path
{
  pathCopy = path;
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  v6 = [_effectiveApp containedViewsForArchivedFingerPath:pathCopy];

  return v6;
}

- (BOOL)effectiveAppPrepareForTransitionToWorkspaceAndRetrieveRestrictionsInformation:(id *)information
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  LOBYTE(information) = [_effectiveApp prepareForTransitionToWorkspaceAndRetrieveRestrictionsInformation:information];

  return information;
}

- (id)effectiveAppRestrictionIdentifiers
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  restrictionIdentifiers = [_effectiveApp restrictionIdentifiers];

  return restrictionIdentifiers;
}

- (void)effectiveAppRestrictionWithIdentifier:(id)identifier didChangeState:(int64_t)state
{
  identifierCopy = identifier;
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  [_effectiveApp restrictionWithIdentifier:identifierCopy didChangeState:state];
}

- (BOOL)effectiveAppIsHostedByTheSystemApp
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  isHostedByTheSystemApp = [_effectiveApp isHostedByTheSystemApp];

  return isHostedByTheSystemApp;
}

- (NSArray)sessionAllowedBundleIdentifiers
{
  sessionAppBundleIdentifiers = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  sessionAppBundleIdentifiers2 = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  v5 = [sessionAppBundleIdentifiers2 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(sessionAppBundleIdentifiers2);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        if ([v9 isEqualToString:@"com.apple.ContactlessUIService"])
        {
          v10 = GAXLogCommon();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v32 = v9;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "App allows primary app to continue running during SAM/ASAM: %@", buf, 0xCu);
          }

          appLayoutMonitor = [(GAXAppManager *)self appLayoutMonitor];
          currentLayout = [appLayoutMonitor currentLayout];
          elements = [currentLayout elements];

          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v14 = elements;
          v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v23;
            while (2)
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v23 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v22 + 1) + 8 * j);
                if ([v19 isUIApplicationElement] && objc_msgSend(v19, "layoutRole") == &dword_0 + 1)
                {
                  sessionAppBundleIdentifiers2 = [v19 bundleIdentifier];
                  v20 = GAXLogCommon();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v32 = sessionAppBundleIdentifiers2;
                    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Primary app: %@", buf, 0xCu);
                  }

                  if (sessionAppBundleIdentifiers2 && ([sessionAppBundleIdentifiers containsObject:sessionAppBundleIdentifiers2] & 1) == 0)
                  {
                    [sessionAppBundleIdentifiers addObject:sessionAppBundleIdentifiers2];
                  }

                  goto LABEL_27;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          sessionAppBundleIdentifiers2 = 0;
LABEL_27:

          goto LABEL_28;
        }
      }

      v6 = [sessionAppBundleIdentifiers2 countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  if (([sessionAppBundleIdentifiers containsObject:@"com.apple.AccessibilityUIServer"] & 1) == 0)
  {
    [sessionAppBundleIdentifiers addObject:@"com.apple.AccessibilityUIServer"];
  }

  return sessionAppBundleIdentifiers;
}

- (void)updateSessionAppBundleIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  [(GAXAppManager *)self setSessionAppBundleIdentifiers:v4];
}

- (void)addSessionAppWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sessionAppBundleIdentifiers = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  [sessionAppBundleIdentifiers addObject:identifierCopy];
}

- (BOOL)sessionAppIsEffectiveApp:(id)app
{
  selfCopy = self;
  v4 = [(GAXAppManager *)self _appWithBundleIdentifier:app];
  LOBYTE(selfCopy) = [(GAXAppManager *)selfCopy _sessionAppIsEffectiveApp:v4];

  return selfCopy;
}

- (BOOL)_sessionAppIsEffectiveApp:(id)app
{
  appCopy = app;
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  v6 = _effectiveApp;
  v7 = 0;
  if (appCopy && _effectiveApp)
  {
    bundleIdentifier = [appCopy bundleIdentifier];
    bundleIdentifier2 = [v6 bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:bundleIdentifier2];
  }

  return v7;
}

- (BOOL)_sessionAppsContainMobilePhoneOrFacetime
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _sessionApps = [(GAXAppManager *)self _sessionApps];
  v3 = [_sessionApps countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(_sessionApps);
        }

        bundleIdentifier = [*(*(&v9 + 1) + 8 * i) bundleIdentifier];
        v7 = GAXAppIsMobilePhoneOrFacetime(bundleIdentifier);

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [_sessionApps countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)effectiveAppIsAcceptableForSessionApps
{
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  if (_effectiveApp)
  {
  }

  else
  {
    sessionAppBundleIdentifiers = [(GAXAppManager *)self sessionAppBundleIdentifiers];
    v2 = [sessionAppBundleIdentifiers count];

    if (v2 > 1)
    {
      return 1;
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _sessionApps = [(GAXAppManager *)self _sessionApps];
  v8 = [_sessionApps countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v2 = v8;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(_sessionApps);
        }

        if ([(GAXAppManager *)self _sessionAppIsEffectiveApp:*(*(&v15 + 1) + 8 * i)])
        {
          v6 = 1;
          goto LABEL_19;
        }
      }

      v2 = [_sessionApps countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  _sessionAppsContainMobilePhoneOrFacetime = [(GAXAppManager *)self _sessionAppsContainMobilePhoneOrFacetime];
  if (_sessionAppsContainMobilePhoneOrFacetime && (-[GAXAppManager _effectiveApp](self, "_effectiveApp"), _sessionApps = objc_claimAutoreleasedReturnValue(), [_sessionApps bundleIdentifier], v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v2, "isEqualToString:", @"com.apple.InCallService") & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    _effectiveApp2 = [(GAXAppManager *)self _effectiveApp];
    bundleIdentifier = [_effectiveApp2 bundleIdentifier];
    v6 = [bundleIdentifier isEqualToString:@"com.apple.CoreAuthUI"];

    if (!_sessionAppsContainMobilePhoneOrFacetime)
    {
      return v6;
    }
  }

LABEL_19:
  return v6;
}

- (BOOL)sessionAppIsHostedByTheSystemApp:(id)app
{
  v3 = [(GAXAppManager *)self _appWithBundleIdentifier:app];
  v4 = v3;
  if (v3)
  {
    isHostedByTheSystemApp = [v3 isHostedByTheSystemApp];
  }

  else
  {
    isHostedByTheSystemApp = 0;
  }

  return isHostedByTheSystemApp;
}

- (BOOL)sessionAppGAXClientDidCheckIn
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _sessionApps = [(GAXAppManager *)self _sessionApps];
  v3 = [_sessionApps countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(_sessionApps);
        }

        if ([*(*(&v7 + 1) + 8 * i) isGAXClientLoaded])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [_sessionApps countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)sessionAppsContainPurpleBuddy
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _sessionApps = [(GAXAppManager *)self _sessionApps];
  v3 = [_sessionApps countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(_sessionApps);
        }

        if ([*(*(&v7 + 1) + 8 * i) isPurpleBuddy])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [_sessionApps countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)sessionAppsContainPreferences
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _sessionApps = [(GAXAppManager *)self _sessionApps];
  v3 = [_sessionApps countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(_sessionApps);
        }

        if ([*(*(&v7 + 1) + 8 * i) isPreferences])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [_sessionApps countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)appWithIdentifierIsASessionApp:(id)app
{
  appCopy = app;
  sessionAppBundleIdentifiers = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  v6 = [sessionAppBundleIdentifiers containsObject:appCopy];

  return v6;
}

- (BOOL)_appIsSessionAppWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sessionAppBundleIdentifiers = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  v6 = [sessionAppBundleIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(sessionAppBundleIdentifiers);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:identifierCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [sessionAppBundleIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (unint64_t)sessionAppRelaunchAttemptsForAppWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(GAXAppManager *)self _appIsSessionAppWithIdentifier:identifierCopy])
  {
    v5 = [(GAXAppManager *)self _appWithBundleIdentifier:identifierCopy];
    relaunchAttempts = [v5 relaunchAttempts];
  }

  else
  {
    relaunchAttempts = 0x7FFFFFFFFFFFFFFFLL;
  }

  return relaunchAttempts;
}

- (void)incrementRelaunchAttemptsForSessionAppWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(GAXAppManager *)self _appIsSessionAppWithIdentifier:?])
  {
    v4 = [(GAXAppManager *)self _appWithBundleIdentifier:identifierCopy];
    [v4 setRelaunchAttempts:{objc_msgSend(v4, "relaunchAttempts") + 1}];
  }
}

- (BOOL)_axAppIsValidGAXApp:(id)app
{
  bundleIdentifier = [app bundleIdentifier];
  v4 = [bundleIdentifier rangeOfString:@"springboard"] == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (id)_effectiveApp
{
  v3 = GAXAllowedRemoteUIProcesses();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  managedApps = [(GAXAppManager *)self managedApps];
  v5 = [managedApps countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(managedApps);
      }

      v9 = *(*(&v26 + 1) + 8 * v8);
      if ([v9 isLayoutFullscreenModal])
      {
        bundleIdentifier = [v9 bundleIdentifier];
        v11 = [v3 containsObject:bundleIdentifier];

        if (v11)
        {
          if (qword_59640 != -1)
          {
            sub_2BD68();
          }

          v12 = qword_59638;
          bundleIdentifier2 = [v9 bundleIdentifier];
          LODWORD(v12) = [v12 containsObject:bundleIdentifier2];

          if (!v12)
          {
            break;
          }
        }
      }

      if (v6 == ++v8)
      {
        v6 = [managedApps countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v15 = v9;

    v14 = selfCopy;
    if (v15)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_13:

    v14 = selfCopy;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  managedApps2 = [(GAXAppManager *)v14 managedApps];
  v15 = [managedApps2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(managedApps2);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if ([v19 isLayoutPrimary] && -[GAXAppManager _axAppIsValidGAXApp:](v14, "_axAppIsValidGAXApp:", v19))
        {
          v15 = v19;
          goto LABEL_26;
        }
      }

      v15 = [managedApps2 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

LABEL_27:
  [(GAXAppManager *)v14 setLastKnownEffectiveApp:v15];

  return v15;
}

- (id)_sessionApps
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sessionAppBundleIdentifiers = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  v5 = [sessionAppBundleIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sessionAppBundleIdentifiers);
        }

        v9 = [(GAXAppManager *)self _appWithBundleIdentifier:*(*(&v11 + 1) + 8 * i)];
        [v3 axSafelyAddObject:v9];
      }

      v6 = [sessionAppBundleIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_appWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  managedApps = [(GAXAppManager *)self managedApps];
  v6 = [managedApps countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(managedApps);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        bundleIdentifier = [v9 bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [managedApps countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_bundleIdentifierFromLayoutIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = GAXAllowedRemoteUIProcesses();
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      v10 = [NSString stringWithFormat:@"sceneID:%@-", v9];
      if ([identifierCopy hasPrefix:v10])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v9;

    if (v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v11 = identifierCopy;
LABEL_12:

  return v11;
}

- (id)_makeGAXAppFromAXApp:(id)app
{
  appCopy = app;
  v5 = [[_GAXAppRepresentation alloc] initWithDelegate:self];
  bundleIdentifier = [appCopy bundleIdentifier];
  [(_GAXAppRepresentation *)v5 setBundleIdentifier:bundleIdentifier];

  -[_GAXAppRepresentation setPid:](v5, "setPid:", [appCopy pid]);
  layoutRole = [appCopy layoutRole];

  [(_GAXAppRepresentation *)v5 setLayoutRole:layoutRole];

  return v5;
}

- (void)_updateGAXApp:(id)app fromAXApp:(id)xApp
{
  xAppCopy = xApp;
  appCopy = app;
  bundleIdentifier = [xAppCopy bundleIdentifier];
  [appCopy setBundleIdentifier:bundleIdentifier];

  [appCopy setPid:{objc_msgSend(xAppCopy, "pid")}];
  layoutRole = [xAppCopy layoutRole];

  [appCopy setLayoutRole:layoutRole];
}

- (void)gaxAppDidGoInvalid:(id)invalid
{
  invalidCopy = invalid;
  if (([invalidCopy isGAXClientLoaded] & 1) == 0)
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = invalidCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "The GAXClientLoaded flag was not set when this app went invalid. Something is out of sync: %{public}@", &v11, 0xCu);
    }
  }

  [invalidCopy setGaxClientLoaded:0];
  [invalidCopy setPid:0xFFFFFFFFLL];
  _effectiveApp = [(GAXAppManager *)self _effectiveApp];
  bundleIdentifier = [_effectiveApp bundleIdentifier];
  bundleIdentifier2 = [invalidCopy bundleIdentifier];
  v9 = [bundleIdentifier isEqualToString:bundleIdentifier2];

  if (v9)
  {
    delegate = [(GAXAppManager *)self delegate];
    [delegate effectiveAppDidBecomeInvalidWithAppManager:self];
  }
}

- (GAXAppManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end