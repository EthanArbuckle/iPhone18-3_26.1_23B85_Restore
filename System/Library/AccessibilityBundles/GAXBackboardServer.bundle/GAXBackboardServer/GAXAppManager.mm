@interface GAXAppManager
- (BOOL)_appIsSessionAppWithIdentifier:(id)a3;
- (BOOL)_axAppIsValidGAXApp:(id)a3;
- (BOOL)_sessionAppIsEffectiveApp:(id)a3;
- (BOOL)_sessionAppsContainMobilePhoneOrFacetime;
- (BOOL)appLayoutIsMultiApp;
- (BOOL)appWithIdentifierIsASessionApp:(id)a3;
- (BOOL)effectiveAppIsAcceptableForSessionApps;
- (BOOL)effectiveAppIsCoreAuthUI;
- (BOOL)effectiveAppIsHostedByTheSystemApp;
- (BOOL)effectiveAppIsPreferences;
- (BOOL)effectiveAppIsPurpleBuddy;
- (BOOL)effectiveAppPrepareForTransitionToWorkspaceAndRetrieveRestrictionsInformation:(id *)a3;
- (BOOL)effectiveAppWasPlayingMedia;
- (BOOL)sessionAppGAXClientDidCheckIn;
- (BOOL)sessionAppIsEffectiveApp:(id)a3;
- (BOOL)sessionAppIsHostedByTheSystemApp:(id)a3;
- (BOOL)sessionAppsContainPreferences;
- (BOOL)sessionAppsContainPurpleBuddy;
- (GAXAppManager)init;
- (GAXAppManagerDelegate)delegate;
- (NSArray)sessionAllowedBundleIdentifiers;
- (NSString)description;
- (NSString)effectiveAppBundleIdentifier;
- (id)_appWithBundleIdentifier:(id)a3;
- (id)_bundleIdentifierFromLayoutIdentifier:(id)a3;
- (id)_effectiveApp;
- (id)_makeGAXAppFromAXApp:(id)a3;
- (id)_sessionApps;
- (id)effectiveAppContainedViewsForArchivedFingerPath:(id)a3;
- (id)effectiveAppRestrictionIdentifiers;
- (unint64_t)sessionAppRelaunchAttemptsForAppWithIdentifier:(id)a3;
- (void)_updateGAXApp:(id)a3 fromAXApp:(id)a4;
- (void)addSessionAppWithIdentifier:(id)a3;
- (void)dealloc;
- (void)effectiveAppRestrictionWithIdentifier:(id)a3 didChangeState:(int64_t)a4;
- (void)gaxAppDidGoInvalid:(id)a3;
- (void)incrementRelaunchAttemptsForSessionAppWithIdentifier:(id)a3;
- (void)monitorForPurpleBuddyDeath;
- (void)resetRelaunchAttempts;
- (void)resumeEffectiveApp;
- (void)scheduleResetLaunchAttempts;
- (void)setLastKnownEffectiveApp:(id)a3;
- (void)suspendEffectiveApp;
- (void)terminateEffectiveApp;
- (void)updateManagedAppState:(BOOL)a3;
- (void)updateSessionAppBundleIdentifiers:(id)a3;
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
  v3 = [(GAXAppManager *)self appLayoutMonitor];
  [v3 invalidate];

  [(GAXAppManager *)self setLastKnownEffectiveApp:0];
  v4.receiver = self;
  v4.super_class = GAXAppManager;
  [(GAXAppManager *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [(GAXAppManager *)self _effectiveApp];
  v4 = [(GAXAppManager *)self _sessionApps];
  v5 = [NSMutableString stringWithFormat:@"AppManager:<%p>\nEffective App:%@\nSession Apps:%@\nManaged Apps:", self, v3, v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(GAXAppManager *)self managedApps];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [v5 appendFormat:@"  %@\n", *(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)updateManagedAppState:(BOOL)a3
{
  v5 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_25384;
  v6[3] = &unk_4D550;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

- (BOOL)appLayoutIsMultiApp
{
  v2 = self;
  v3 = [(GAXAppManager *)self appLayoutMonitor];
  v4 = [v3 currentLayout];

  if (v4)
  {
    if (qword_59630 != -1)
    {
      sub_2BC94();
    }

    v5 = [v4 elements];
    v6 = [NSPredicate predicateWithBlock:&stru_4DE98];
    v7 = [v5 filteredArrayUsingPredicate:v6];

    v8 = [v7 firstObject];
    v9 = [v8 bundleIdentifier];

    if (v9)
    {
      v10 = [v7 count];
      if (v10 < 2)
      {
        v17 = 1;
      }

      else
      {
        v11 = v10;
        v28 = v2;
        v29 = v4;
        for (i = 1; i != v11; ++i)
        {
          v13 = [v7 objectAtIndexedSubscript:i, v28, v29];
          v14 = [v13 bundleIdentifier];
          if ([v14 isEqualToString:v9])
          {
          }

          else
          {
            v15 = [v7 objectAtIndexedSubscript:i];
            v16 = [v15 identifier];
            v17 = [v16 isEqualToString:@"com.apple.springboard.floating-dock"];

            if (!v17)
            {
              goto LABEL_12;
            }
          }
        }

        v17 = 1;
LABEL_12:
        v2 = v28;
        v4 = v29;
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
      v23 = [v22 guidedAccessAllowsMultipleWindows];

      if (v23)
      {
LABEL_24:
        v18 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    v24 = [(GAXAppManager *)v2 _effectiveApp];
    v25 = [v24 layoutRole];

    v26 = GAXLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v31 = v25;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Layout role for effective app is %d", buf, 8u);
    }

    v18 = v25 != &dword_0 + 3;
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
  v2 = [(GAXAppManager *)self managedApps];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) setRelaunchAttempts:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)scheduleResetLaunchAttempts
{
  v3 = [(GAXAppManager *)self resetRelaunchAttemptsTimer];

  if (!v3)
  {
    v4 = [AXAccessQueueTimer alloc];
    v5 = +[AXAccessQueue mainAccessQueue];
    v6 = [v4 initWithTargetAccessQueue:v5];

    [(GAXAppManager *)self setResetRelaunchAttemptsTimer:v6];
  }

  v7 = [(GAXAppManager *)self resetRelaunchAttemptsTimer];
  [v7 cancel];

  v8 = [(GAXAppManager *)self resetRelaunchAttemptsTimer];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_261F0;
  v9[3] = &unk_4C958;
  v9[4] = self;
  [v8 afterDelay:v9 processBlock:5.0];
}

- (void)monitorForPurpleBuddyDeath
{
  v3 = [(GAXAppManager *)self purpleBuddyPIDMonitor];

  if (!v3)
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

- (void)setLastKnownEffectiveApp:(id)a3
{
  v4 = a3;
  lastKnownEffectiveApp = self->_lastKnownEffectiveApp;
  if (v4 | lastKnownEffectiveApp)
  {
    if ((v4 == 0) != (lastKnownEffectiveApp == 0) || (-[_GAXAppRepresentation bundleIdentifier](lastKnownEffectiveApp, "bundleIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), -[_GAXAppRepresentation bundleIdentifier](v4, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqualToString:v7], v7, v6, (v8 & 1) == 0))
    {
      v9 = [(GAXAppManager *)self delegate];
      v10 = [(_GAXAppRepresentation *)v4 bundleIdentifier];
      [v9 effectiveAppDidChange:v10 withAppManager:self];
    }
  }

  v11 = self->_lastKnownEffectiveApp;
  self->_lastKnownEffectiveApp = v4;
}

- (BOOL)effectiveAppIsPurpleBuddy
{
  v2 = [(GAXAppManager *)self _effectiveApp];
  v3 = [v2 isPurpleBuddy];

  return v3;
}

- (BOOL)effectiveAppIsPreferences
{
  v2 = [(GAXAppManager *)self _effectiveApp];
  v3 = [v2 isPreferences];

  return v3;
}

- (BOOL)effectiveAppIsCoreAuthUI
{
  v2 = [(GAXAppManager *)self _effectiveApp];
  v3 = [v2 isCoreAuthUI];

  return v3;
}

- (NSString)effectiveAppBundleIdentifier
{
  v2 = [(GAXAppManager *)self _effectiveApp];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)terminateEffectiveApp
{
  v2 = [(GAXAppManager *)self _effectiveApp];
  [v2 terminate];
}

- (void)suspendEffectiveApp
{
  v2 = [(GAXAppManager *)self _effectiveApp];
  [v2 suspend];
}

- (void)resumeEffectiveApp
{
  v2 = [(GAXAppManager *)self _effectiveApp];
  [v2 resume];
}

- (BOOL)effectiveAppWasPlayingMedia
{
  v2 = [(GAXAppManager *)self _effectiveApp];
  v3 = [v2 wasPlayingMedia];

  return v3;
}

- (id)effectiveAppContainedViewsForArchivedFingerPath:(id)a3
{
  v4 = a3;
  v5 = [(GAXAppManager *)self _effectiveApp];
  v6 = [v5 containedViewsForArchivedFingerPath:v4];

  return v6;
}

- (BOOL)effectiveAppPrepareForTransitionToWorkspaceAndRetrieveRestrictionsInformation:(id *)a3
{
  v4 = [(GAXAppManager *)self _effectiveApp];
  LOBYTE(a3) = [v4 prepareForTransitionToWorkspaceAndRetrieveRestrictionsInformation:a3];

  return a3;
}

- (id)effectiveAppRestrictionIdentifiers
{
  v2 = [(GAXAppManager *)self _effectiveApp];
  v3 = [v2 restrictionIdentifiers];

  return v3;
}

- (void)effectiveAppRestrictionWithIdentifier:(id)a3 didChangeState:(int64_t)a4
{
  v6 = a3;
  v7 = [(GAXAppManager *)self _effectiveApp];
  [v7 restrictionWithIdentifier:v6 didChangeState:a4];
}

- (BOOL)effectiveAppIsHostedByTheSystemApp
{
  v2 = [(GAXAppManager *)self _effectiveApp];
  v3 = [v2 isHostedByTheSystemApp];

  return v3;
}

- (NSArray)sessionAllowedBundleIdentifiers
{
  v3 = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
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
          objc_enumerationMutation(v4);
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

          v11 = [(GAXAppManager *)self appLayoutMonitor];
          v12 = [v11 currentLayout];
          v13 = [v12 elements];

          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v14 = v13;
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
                  v4 = [v19 bundleIdentifier];
                  v20 = GAXLogCommon();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v32 = v4;
                    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Primary app: %@", buf, 0xCu);
                  }

                  if (v4 && ([v3 containsObject:v4] & 1) == 0)
                  {
                    [v3 addObject:v4];
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

          v4 = 0;
LABEL_27:

          goto LABEL_28;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  if (([v3 containsObject:@"com.apple.AccessibilityUIServer"] & 1) == 0)
  {
    [v3 addObject:@"com.apple.AccessibilityUIServer"];
  }

  return v3;
}

- (void)updateSessionAppBundleIdentifiers:(id)a3
{
  v4 = [a3 mutableCopy];
  [(GAXAppManager *)self setSessionAppBundleIdentifiers:v4];
}

- (void)addSessionAppWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  [v5 addObject:v4];
}

- (BOOL)sessionAppIsEffectiveApp:(id)a3
{
  v3 = self;
  v4 = [(GAXAppManager *)self _appWithBundleIdentifier:a3];
  LOBYTE(v3) = [(GAXAppManager *)v3 _sessionAppIsEffectiveApp:v4];

  return v3;
}

- (BOOL)_sessionAppIsEffectiveApp:(id)a3
{
  v4 = a3;
  v5 = [(GAXAppManager *)self _effectiveApp];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [v4 bundleIdentifier];
    v9 = [v6 bundleIdentifier];
    v7 = [v8 isEqualToString:v9];
  }

  return v7;
}

- (BOOL)_sessionAppsContainMobilePhoneOrFacetime
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(GAXAppManager *)self _sessionApps];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) bundleIdentifier];
        v7 = GAXAppIsMobilePhoneOrFacetime(v6);

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v4 = [(GAXAppManager *)self _effectiveApp];
  if (v4)
  {
  }

  else
  {
    v5 = [(GAXAppManager *)self sessionAppBundleIdentifiers];
    v2 = [v5 count];

    if (v2 > 1)
    {
      return 1;
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(GAXAppManager *)self _sessionApps];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        if ([(GAXAppManager *)self _sessionAppIsEffectiveApp:*(*(&v15 + 1) + 8 * i)])
        {
          v6 = 1;
          goto LABEL_19;
        }
      }

      v2 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v11 = [(GAXAppManager *)self _sessionAppsContainMobilePhoneOrFacetime];
  if (v11 && (-[GAXAppManager _effectiveApp](self, "_effectiveApp"), v7 = objc_claimAutoreleasedReturnValue(), [v7 bundleIdentifier], v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v2, "isEqualToString:", @"com.apple.InCallService") & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    v12 = [(GAXAppManager *)self _effectiveApp];
    v13 = [v12 bundleIdentifier];
    v6 = [v13 isEqualToString:@"com.apple.CoreAuthUI"];

    if (!v11)
    {
      return v6;
    }
  }

LABEL_19:
  return v6;
}

- (BOOL)sessionAppIsHostedByTheSystemApp:(id)a3
{
  v3 = [(GAXAppManager *)self _appWithBundleIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isHostedByTheSystemApp];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)sessionAppGAXClientDidCheckIn
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(GAXAppManager *)self _sessionApps];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isGAXClientLoaded])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v2 = [(GAXAppManager *)self _sessionApps];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isPurpleBuddy])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v2 = [(GAXAppManager *)self _sessionApps];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isPreferences])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (BOOL)appWithIdentifierIsASessionApp:(id)a3
{
  v4 = a3;
  v5 = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)_appIsSessionAppWithIdentifier:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (unint64_t)sessionAppRelaunchAttemptsForAppWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(GAXAppManager *)self _appIsSessionAppWithIdentifier:v4])
  {
    v5 = [(GAXAppManager *)self _appWithBundleIdentifier:v4];
    v6 = [v5 relaunchAttempts];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)incrementRelaunchAttemptsForSessionAppWithIdentifier:(id)a3
{
  v5 = a3;
  if ([(GAXAppManager *)self _appIsSessionAppWithIdentifier:?])
  {
    v4 = [(GAXAppManager *)self _appWithBundleIdentifier:v5];
    [v4 setRelaunchAttempts:{objc_msgSend(v4, "relaunchAttempts") + 1}];
  }
}

- (BOOL)_axAppIsValidGAXApp:(id)a3
{
  v3 = [a3 bundleIdentifier];
  v4 = [v3 rangeOfString:@"springboard"] == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (id)_effectiveApp
{
  v3 = GAXAllowedRemoteUIProcesses();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = self;
  v4 = [(GAXAppManager *)self managedApps];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v26 + 1) + 8 * v8);
      if ([v9 isLayoutFullscreenModal])
      {
        v10 = [v9 bundleIdentifier];
        v11 = [v3 containsObject:v10];

        if (v11)
        {
          if (qword_59640 != -1)
          {
            sub_2BD68();
          }

          v12 = qword_59638;
          v13 = [v9 bundleIdentifier];
          LODWORD(v12) = [v12 containsObject:v13];

          if (!v12)
          {
            break;
          }
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v15 = v9;

    v14 = v21;
    if (v15)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_13:

    v14 = v21;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [(GAXAppManager *)v14 managedApps];
  v15 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v16);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if ([v19 isLayoutPrimary] && -[GAXAppManager _axAppIsValidGAXApp:](v14, "_axAppIsValidGAXApp:", v19))
        {
          v15 = v19;
          goto LABEL_26;
        }
      }

      v15 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
  v4 = [(GAXAppManager *)self sessionAppBundleIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [(GAXAppManager *)self _appWithBundleIdentifier:*(*(&v11 + 1) + 8 * i)];
        [v3 axSafelyAddObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_appWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(GAXAppManager *)self managedApps];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_bundleIdentifierFromLayoutIdentifier:(id)a3
{
  v3 = a3;
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
      if ([v3 hasPrefix:v10])
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

  v11 = v3;
LABEL_12:

  return v11;
}

- (id)_makeGAXAppFromAXApp:(id)a3
{
  v4 = a3;
  v5 = [[_GAXAppRepresentation alloc] initWithDelegate:self];
  v6 = [v4 bundleIdentifier];
  [(_GAXAppRepresentation *)v5 setBundleIdentifier:v6];

  -[_GAXAppRepresentation setPid:](v5, "setPid:", [v4 pid]);
  v7 = [v4 layoutRole];

  [(_GAXAppRepresentation *)v5 setLayoutRole:v7];

  return v5;
}

- (void)_updateGAXApp:(id)a3 fromAXApp:(id)a4
{
  v5 = a4;
  v8 = a3;
  v6 = [v5 bundleIdentifier];
  [v8 setBundleIdentifier:v6];

  [v8 setPid:{objc_msgSend(v5, "pid")}];
  v7 = [v5 layoutRole];

  [v8 setLayoutRole:v7];
}

- (void)gaxAppDidGoInvalid:(id)a3
{
  v4 = a3;
  if (([v4 isGAXClientLoaded] & 1) == 0)
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "The GAXClientLoaded flag was not set when this app went invalid. Something is out of sync: %{public}@", &v11, 0xCu);
    }
  }

  [v4 setGaxClientLoaded:0];
  [v4 setPid:0xFFFFFFFFLL];
  v6 = [(GAXAppManager *)self _effectiveApp];
  v7 = [v6 bundleIdentifier];
  v8 = [v4 bundleIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(GAXAppManager *)self delegate];
    [v10 effectiveAppDidBecomeInvalidWithAppManager:self];
  }
}

- (GAXAppManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end