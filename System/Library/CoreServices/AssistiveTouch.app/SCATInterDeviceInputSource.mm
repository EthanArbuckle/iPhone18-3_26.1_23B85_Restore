@interface SCATInterDeviceInputSource
- (id)_resolveSwitchForSwitchEvent:(id)a3 deviceName:(id)a4;
- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5;
- (void)_getActionIdentifier:(id)a3 longPressActionIdentifier:(id)a4 forSwitchEvent:(id)a5;
- (void)handleReceivedSwitchEvent:(id)a3 deviceName:(id)a4;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)updateWithSwitches:(id)a3 recipe:(id)a4;
@end

@implementation SCATInterDeviceInputSource

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v4.receiver = self;
  v4.super_class = SCATInterDeviceInputSource;
  [(SCATInputSource *)&v4 setDelegate:a3 queue:a4];
}

- (void)updateWithSwitches:(id)a3 recipe:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SCATInterDeviceInputSource;
  [(SCATInputSource *)&v16 updateWithSwitches:v6 recipe:v7];
  if (v7)
  {
    v8 = +[NSMutableDictionary dictionary];
    v9 = +[NSMutableDictionary dictionary];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B3168;
    v12[3] = &unk_1001D5B98;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v10 = v9;
    v11 = v8;
    [v6 enumerateObjectsUsingBlock:v12];
    [(SCATInterDeviceInputSource *)self setActionIdentifiersToRecipeMappingIndices:v11];
    [(SCATInterDeviceInputSource *)self setLongPressActionIdentifiersToRecipeMappingIndices:v10];
  }

  else
  {
    [(SCATInterDeviceInputSource *)self setActionIdentifiersToRecipeMappingIndices:0];
    [(SCATInterDeviceInputSource *)self setLongPressActionIdentifiersToRecipeMappingIndices:0];
  }
}

- (void)_getActionIdentifier:(id)a3 longPressActionIdentifier:(id)a4 forSwitchEvent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [v10 actions];
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(SCATInputSource *)self _identifierForInterDeviceAction:*(*(&v29 + 1) + 8 * v15)];
        if (v16)
        {
          v17 = v16;
          goto LABEL_11;
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = 103;
LABEL_11:

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [v10 longPressActions];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    while (2)
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [(SCATInputSource *)self _identifierForInterDeviceAction:*(*(&v25 + 1) + 8 * v22)];
        if (v23)
        {
          v24 = v23;
          goto LABEL_21;
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_21:

  if (v8)
  {
    [v8 setAction:v17];
  }

  if (v9)
  {
    [v9 setAction:v24];
  }
}

- (id)_resolveSwitchForSwitchEvent:(id)a3 deviceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AXSettings sharedInstance];
  v9 = [v8 assistiveTouchSwitches];

  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_1000B3848;
  v34 = &unk_1001D5990;
  v10 = v6;
  v35 = v10;
  v11 = [v9 objectsPassingTest:&v31];
  if ([v11 count] >= 2)
  {
    v30 = v11;
    _AXAssert();
  }

  v12 = [v11 anyObject];
  if (!v12)
  {
    if (CFPreferencesGetAppBooleanValue(@"IDCLog", @"com.apple.Accessibility.SwitchControl", 0))
    {
      NSLog(@"Existing switches: %@", v9);
    }

    v18 = objc_opt_new();
    v19 = objc_opt_new();
    [(SCATInterDeviceInputSource *)self _getActionIdentifier:v18 longPressActionIdentifier:v19 forSwitchEvent:v10];
    v20 = [v18 action];
    v21 = [v10 switchDisplayName];
    v13 = [AXSwitch switchWithAction:v20 name:v21 source:SCATSwitchSourceRemote type:SCATSwitchTypeOptional];

    [v13 setLongPressAction:{objc_msgSend(v19, "action")}];
    [v13 setRemoteDeviceName:v7];
    v22 = [v10 switchIdentifier];
    [v13 setRemoteSwitchIdentifier:v22];

    v23 = [v10 deviceIdentifier];
    [v13 setRemoteDeviceIdentifier:v23];

    v24 = [v9 mutableCopy];
    [v24 addObject:v13];
    v25 = +[AXSettings sharedInstance];
    [v25 setAssistiveTouchSwitches:v24];

    if (CFPreferencesGetAppBooleanValue(@"IDCLog", @"com.apple.Accessibility.SwitchControl", 0))
    {
      v26 = [v10 deviceIdentifier];
      v27 = [v10 switchIdentifier];
      NSLog(@"Created new remote switch for device identifier %@, switch identifier %@: %@", v26, v27, v13, v31, v32, v33, v34);
    }

    goto LABEL_16;
  }

  v13 = v12;
  v14 = [v12 remoteDeviceName];
  if (([v14 isEqualToString:v7] & 1) == 0)
  {

    goto LABEL_13;
  }

  v15 = [v13 name];
  v16 = [v10 switchDisplayName];
  v17 = [v15 isEqualToString:v16];

  if ((v17 & 1) == 0)
  {
LABEL_13:
    if (CFPreferencesGetAppBooleanValue(@"IDCLog", @"com.apple.Accessibility.SwitchControl", 0))
    {
      NSLog(@"Had to update name of existing remote switch %@", v13);
    }

    v18 = [v9 mutableCopy];
    [v18 removeObject:v13];
    [v13 setRemoteDeviceName:v7];
    v28 = [v10 switchDisplayName];
    [v13 setName:v28];

    [v18 addObject:v13];
    v19 = +[AXSettings sharedInstance];
    [v19 setAssistiveTouchSwitches:v18];
LABEL_16:
  }

  return v13;
}

- (void)handleReceivedSwitchEvent:(id)a3 deviceName:(id)a4
{
  v29 = a3;
  v6 = a4;
  v7 = [v29 deviceIdentifier];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(SCATInterDeviceInputSource *)self _resolveSwitchForSwitchEvent:v29 deviceName:v6];
    v10 = [(SCATInterDeviceInputSource *)self actionIdentifiersToRecipeMappingIndices];

    if (v10)
    {
      v11 = [(SCATInterDeviceInputSource *)self actionIdentifiersToRecipeMappingIndices];
      v12 = [v9 uuid];
      v13 = [v11 objectForKeyedSubscript:v12];

      if (v13)
      {
        v14 = v13;
        v15 = [(SCATInterDeviceInputSource *)self longPressActionIdentifiersToRecipeMappingIndices];
        v16 = [v9 uuid];
        v17 = [v15 objectForKeyedSubscript:v16];

        if (v17)
        {
          v18 = v17;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v13 = [SCATActionItem fromSwitch:v9 longPress:0];
      v17 = [SCATActionItem fromSwitch:v9 longPress:1];
    }

    if ([v13 action])
    {
      v20 = 1;
    }

    else
    {
      v21 = [v13 shortcutIdentifier];
      v20 = v21 != 0;
    }
  }

  else
  {
    v19 = [(SCATInterDeviceInputSource *)self actionIdentifiersToRecipeMappingIndices];

    if (v19)
    {
      v20 = 0;
      v17 = 0;
      v13 = 0;
    }

    else
    {
      if (CFPreferencesGetAppBooleanValue(@"IDCLog", @"com.apple.Accessibility.SwitchControl", 0))
      {
        NSLog(@"No device identifier for the remote switch event, so we had to forward it without saving it.");
      }

      [(SCATInterDeviceInputSource *)self _getActionIdentifier:0 longPressActionIdentifier:0 forSwitchEvent:v29];
      v17 = 0;
      v13 = 0;
      v20 = 1;
    }
  }

  if (CFPreferencesGetAppBooleanValue(@"IDCLog", @"com.apple.Accessibility.SwitchControl", 0))
  {
    NSLog(@"Should handle action: %i", v20);
  }

  v22 = [(SCATInputSource *)self delegate];
  v23 = [v22 shouldForwardSwitchEventsForInputSource:self];

  if (v23)
  {
    _AXAssert();
  }

  if (v20)
  {
    v24 = [v29 isDown];
    v25 = [v29 switchIdentifier];
    v26 = [v29 switchDisplayName];
    [(SCATInputSource *)self _handleAction:v13 longPressAction:v17 start:v24 switchIdentifier:v25 switchDisplayName:v26];
  }

  v27 = [(SCATInterDeviceInputSource *)self inputDeviceHandledAction];

  if (v27)
  {
    v28 = [(SCATInterDeviceInputSource *)self inputDeviceHandledAction];
    v28[2](v28, v20);
  }
}

- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5
{
  v8 = a3;
  v9 = [(SCATInputSource *)self delegate];
  v10 = [(SCATInputSource *)self queue];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B3D38;
    v11[3] = &unk_1001D5B70;
    v12 = v9;
    v13 = self;
    v14 = v8;
    v15 = a4;
    v16 = a5;
    [v10 performAsynchronousWritingBlock:v11];
  }
}

@end