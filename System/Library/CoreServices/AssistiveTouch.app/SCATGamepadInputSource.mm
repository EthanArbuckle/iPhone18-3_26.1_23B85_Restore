@interface SCATGamepadInputSource
- (BOOL)handledEvent:(id)event;
- (id)_actionIdentifierForKeyCode:(unsigned __int16)code withType:(id)type;
- (id)_persistentSwitchIdentifierForKeyCode:(unsigned __int16)code;
- (id)_switchDisplayNameForKeyCode:(unsigned __int16)code;
@end

@implementation SCATGamepadInputSource

- (BOOL)handledEvent:(id)event
{
  eventCopy = event;
  creatorHIDEvent = [eventCopy creatorHIDEvent];
  if (eventCopy)
  {
    v6 = creatorHIDEvent;
    gameControllerInfo = [eventCopy gameControllerInfo];
    if ([gameControllerInfo isJoystickPressed] & 1) != 0 || (objc_msgSend(gameControllerInfo, "isDirectionPadPressed") & 1) != 0 || (objc_msgSend(gameControllerInfo, "isFaceButtonPressed") & 1) != 0 || (objc_msgSend(gameControllerInfo, "isShoulderButtonPressed"))
    {
      isKeyboardTypeButtonPressed = 1;
    }

    else
    {
      isKeyboardTypeButtonPressed = [gameControllerInfo isKeyboardTypeButtonPressed];
    }

    v9 = [AXGameControllerEvent axGameControllerKeyCodeForEvent:v6];
    v10 = v9 != 0;
    if (v9)
    {
      v11 = v9;
      v12 = [(SCATGamepadInputSource *)self _actionIdentifierForKeyCode:v9 withType:@"SwitchActionTypeNormal"];
      v13 = [(SCATGamepadInputSource *)self _actionIdentifierForKeyCode:v11 withType:@"SwitchActionTypeLongPress"];
      v14 = [(SCATGamepadInputSource *)self _persistentSwitchIdentifierForKeyCode:v11];
      v15 = [(SCATGamepadInputSource *)self _switchDisplayNameForKeyCode:v11];
      [(SCATInputSource *)self _handleAction:v12 longPressAction:v13 start:isKeyboardTypeButtonPressed switchIdentifier:v14 switchDisplayName:v15];
    }
  }

  else
  {
    _AXLogWithFacility();
    v10 = 0;
  }

  return v10;
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