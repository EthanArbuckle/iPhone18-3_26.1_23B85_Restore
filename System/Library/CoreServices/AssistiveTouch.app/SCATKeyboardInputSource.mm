@interface SCATKeyboardInputSource
- (BOOL)handledEvent:(id)event;
- (id)_actionIdentifierForKeyCode:(unsigned __int16)code withType:(id)type;
- (id)_persistentSwitchIdentifierForKeyCode:(unsigned __int16)code;
- (id)_switchDisplayNameForKeyCode:(unsigned __int16)code;
@end

@implementation SCATKeyboardInputSource

- (BOOL)handledEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 10 || objc_msgSend(eventCopy, "type") == 11)
  {
    keyInfo = [eventCopy keyInfo];
    keyDown = [keyInfo keyDown];

    keyInfo2 = [eventCopy keyInfo];
    keyCode = [keyInfo2 keyCode];

    v9 = [(SCATKeyboardInputSource *)self _actionIdentifierForKeyCode:keyCode withType:@"SwitchActionTypeNormal"];
    v10 = [(SCATKeyboardInputSource *)self _actionIdentifierForKeyCode:keyCode withType:@"SwitchActionTypeLongPress"];
    v11 = [(SCATKeyboardInputSource *)self _persistentSwitchIdentifierForKeyCode:keyCode];
    v12 = [(SCATKeyboardInputSource *)self _switchDisplayNameForKeyCode:keyCode];
    [(SCATInputSource *)self _handleAction:v9 longPressAction:v10 start:keyDown switchIdentifier:v11 switchDisplayName:v12];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_actionIdentifierForKeyCode:(unsigned __int16)code withType:(id)type
{
  codeCopy = code;
  typeCopy = type;
  actions = [(SCATInputSource *)self actions];

  if (actions)
  {
    v8 = [NSNumber numberWithUnsignedShort:codeCopy];
    actions2 = [(SCATInputSource *)self actions];
    v10 = [actions2 objectForKeyedSubscript:v8];

    v11 = [v10 objectForKeyedSubscript:typeCopy];
  }

  else
  {
    v12 = SWCHLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100127EF8(v12);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_persistentSwitchIdentifierForKeyCode:(unsigned __int16)code
{
  codeCopy = code;
  persistentSwitchIdentifiers = [(SCATHardwareInputSource *)self persistentSwitchIdentifiers];
  v5 = [NSNumber numberWithUnsignedShort:codeCopy];
  v6 = [persistentSwitchIdentifiers objectForKeyedSubscript:v5];

  return v6;
}

- (id)_switchDisplayNameForKeyCode:(unsigned __int16)code
{
  codeCopy = code;
  switchDisplayNames = [(SCATHardwareInputSource *)self switchDisplayNames];
  v5 = [NSNumber numberWithUnsignedShort:codeCopy];
  v6 = [switchDisplayNames objectForKeyedSubscript:v5];

  return v6;
}

@end