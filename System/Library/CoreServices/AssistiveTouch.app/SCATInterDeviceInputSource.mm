@interface SCATInterDeviceInputSource
- (id)_resolveSwitchForSwitchEvent:(id)event deviceName:(id)name;
- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold;
- (void)_getActionIdentifier:(id)identifier longPressActionIdentifier:(id)actionIdentifier forSwitchEvent:(id)event;
- (void)handleReceivedSwitchEvent:(id)event deviceName:(id)name;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)updateWithSwitches:(id)switches recipe:(id)recipe;
@end

@implementation SCATInterDeviceInputSource

- (void)setDelegate:(id)delegate queue:(id)queue
{
  v4.receiver = self;
  v4.super_class = SCATInterDeviceInputSource;
  [(SCATInputSource *)&v4 setDelegate:delegate queue:queue];
}

- (void)updateWithSwitches:(id)switches recipe:(id)recipe
{
  switchesCopy = switches;
  recipeCopy = recipe;
  v16.receiver = self;
  v16.super_class = SCATInterDeviceInputSource;
  [(SCATInputSource *)&v16 updateWithSwitches:switchesCopy recipe:recipeCopy];
  if (recipeCopy)
  {
    v8 = +[NSMutableDictionary dictionary];
    v9 = +[NSMutableDictionary dictionary];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B3168;
    v12[3] = &unk_1001D5B98;
    v13 = recipeCopy;
    v14 = v8;
    v15 = v9;
    v10 = v9;
    v11 = v8;
    [switchesCopy enumerateObjectsUsingBlock:v12];
    [(SCATInterDeviceInputSource *)self setActionIdentifiersToRecipeMappingIndices:v11];
    [(SCATInterDeviceInputSource *)self setLongPressActionIdentifiersToRecipeMappingIndices:v10];
  }

  else
  {
    [(SCATInterDeviceInputSource *)self setActionIdentifiersToRecipeMappingIndices:0];
    [(SCATInterDeviceInputSource *)self setLongPressActionIdentifiersToRecipeMappingIndices:0];
  }
}

- (void)_getActionIdentifier:(id)identifier longPressActionIdentifier:(id)actionIdentifier forSwitchEvent:(id)event
{
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  eventCopy = event;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  actions = [eventCopy actions];
  v12 = [actions countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(actions);
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
      v13 = [actions countByEnumeratingWithState:&v29 objects:v34 count:16];
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
  longPressActions = [eventCopy longPressActions];
  v19 = [longPressActions countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(longPressActions);
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
      v20 = [longPressActions countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_21:

  if (identifierCopy)
  {
    [identifierCopy setAction:v17];
  }

  if (actionIdentifierCopy)
  {
    [actionIdentifierCopy setAction:v24];
  }
}

- (id)_resolveSwitchForSwitchEvent:(id)event deviceName:(id)name
{
  eventCopy = event;
  nameCopy = name;
  v8 = +[AXSettings sharedInstance];
  assistiveTouchSwitches = [v8 assistiveTouchSwitches];

  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_1000B3848;
  v34 = &unk_1001D5990;
  v10 = eventCopy;
  v35 = v10;
  v11 = [assistiveTouchSwitches objectsPassingTest:&v31];
  if ([v11 count] >= 2)
  {
    v30 = v11;
    _AXAssert();
  }

  anyObject = [v11 anyObject];
  if (!anyObject)
  {
    if (CFPreferencesGetAppBooleanValue(@"IDCLog", @"com.apple.Accessibility.SwitchControl", 0))
    {
      NSLog(@"Existing switches: %@", assistiveTouchSwitches);
    }

    v18 = objc_opt_new();
    v19 = objc_opt_new();
    [(SCATInterDeviceInputSource *)self _getActionIdentifier:v18 longPressActionIdentifier:v19 forSwitchEvent:v10];
    action = [v18 action];
    switchDisplayName = [v10 switchDisplayName];
    v13 = [AXSwitch switchWithAction:action name:switchDisplayName source:SCATSwitchSourceRemote type:SCATSwitchTypeOptional];

    [v13 setLongPressAction:{objc_msgSend(v19, "action")}];
    [v13 setRemoteDeviceName:nameCopy];
    switchIdentifier = [v10 switchIdentifier];
    [v13 setRemoteSwitchIdentifier:switchIdentifier];

    deviceIdentifier = [v10 deviceIdentifier];
    [v13 setRemoteDeviceIdentifier:deviceIdentifier];

    v24 = [assistiveTouchSwitches mutableCopy];
    [v24 addObject:v13];
    v25 = +[AXSettings sharedInstance];
    [v25 setAssistiveTouchSwitches:v24];

    if (CFPreferencesGetAppBooleanValue(@"IDCLog", @"com.apple.Accessibility.SwitchControl", 0))
    {
      deviceIdentifier2 = [v10 deviceIdentifier];
      switchIdentifier2 = [v10 switchIdentifier];
      NSLog(@"Created new remote switch for device identifier %@, switch identifier %@: %@", deviceIdentifier2, switchIdentifier2, v13, v31, v32, v33, v34);
    }

    goto LABEL_16;
  }

  v13 = anyObject;
  remoteDeviceName = [anyObject remoteDeviceName];
  if (([remoteDeviceName isEqualToString:nameCopy] & 1) == 0)
  {

    goto LABEL_13;
  }

  name = [v13 name];
  switchDisplayName2 = [v10 switchDisplayName];
  v17 = [name isEqualToString:switchDisplayName2];

  if ((v17 & 1) == 0)
  {
LABEL_13:
    if (CFPreferencesGetAppBooleanValue(@"IDCLog", @"com.apple.Accessibility.SwitchControl", 0))
    {
      NSLog(@"Had to update name of existing remote switch %@", v13);
    }

    v18 = [assistiveTouchSwitches mutableCopy];
    [v18 removeObject:v13];
    [v13 setRemoteDeviceName:nameCopy];
    switchDisplayName3 = [v10 switchDisplayName];
    [v13 setName:switchDisplayName3];

    [v18 addObject:v13];
    v19 = +[AXSettings sharedInstance];
    [v19 setAssistiveTouchSwitches:v18];
LABEL_16:
  }

  return v13;
}

- (void)handleReceivedSwitchEvent:(id)event deviceName:(id)name
{
  eventCopy = event;
  nameCopy = name;
  deviceIdentifier = [eventCopy deviceIdentifier];
  v8 = [deviceIdentifier length];

  if (v8)
  {
    v9 = [(SCATInterDeviceInputSource *)self _resolveSwitchForSwitchEvent:eventCopy deviceName:nameCopy];
    actionIdentifiersToRecipeMappingIndices = [(SCATInterDeviceInputSource *)self actionIdentifiersToRecipeMappingIndices];

    if (actionIdentifiersToRecipeMappingIndices)
    {
      actionIdentifiersToRecipeMappingIndices2 = [(SCATInterDeviceInputSource *)self actionIdentifiersToRecipeMappingIndices];
      uuid = [v9 uuid];
      v13 = [actionIdentifiersToRecipeMappingIndices2 objectForKeyedSubscript:uuid];

      if (v13)
      {
        v14 = v13;
        longPressActionIdentifiersToRecipeMappingIndices = [(SCATInterDeviceInputSource *)self longPressActionIdentifiersToRecipeMappingIndices];
        uuid2 = [v9 uuid];
        v17 = [longPressActionIdentifiersToRecipeMappingIndices objectForKeyedSubscript:uuid2];

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
      shortcutIdentifier = [v13 shortcutIdentifier];
      v20 = shortcutIdentifier != 0;
    }
  }

  else
  {
    actionIdentifiersToRecipeMappingIndices3 = [(SCATInterDeviceInputSource *)self actionIdentifiersToRecipeMappingIndices];

    if (actionIdentifiersToRecipeMappingIndices3)
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

      [(SCATInterDeviceInputSource *)self _getActionIdentifier:0 longPressActionIdentifier:0 forSwitchEvent:eventCopy];
      v17 = 0;
      v13 = 0;
      v20 = 1;
    }
  }

  if (CFPreferencesGetAppBooleanValue(@"IDCLog", @"com.apple.Accessibility.SwitchControl", 0))
  {
    NSLog(@"Should handle action: %i", v20);
  }

  delegate = [(SCATInputSource *)self delegate];
  v23 = [delegate shouldForwardSwitchEventsForInputSource:self];

  if (v23)
  {
    _AXAssert();
  }

  if (v20)
  {
    isDown = [eventCopy isDown];
    switchIdentifier = [eventCopy switchIdentifier];
    switchDisplayName = [eventCopy switchDisplayName];
    [(SCATInputSource *)self _handleAction:v13 longPressAction:v17 start:isDown switchIdentifier:switchIdentifier switchDisplayName:switchDisplayName];
  }

  inputDeviceHandledAction = [(SCATInterDeviceInputSource *)self inputDeviceHandledAction];

  if (inputDeviceHandledAction)
  {
    inputDeviceHandledAction2 = [(SCATInterDeviceInputSource *)self inputDeviceHandledAction];
    inputDeviceHandledAction2[2](inputDeviceHandledAction2, v20);
  }
}

- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold
{
  identifierCopy = identifier;
  delegate = [(SCATInputSource *)self delegate];
  queue = [(SCATInputSource *)self queue];
  if (queue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B3D38;
    v11[3] = &unk_1001D5B70;
    v12 = delegate;
    selfCopy = self;
    v14 = identifierCopy;
    startCopy = start;
    holdCopy = hold;
    [queue performAsynchronousWritingBlock:v11];
  }
}

@end