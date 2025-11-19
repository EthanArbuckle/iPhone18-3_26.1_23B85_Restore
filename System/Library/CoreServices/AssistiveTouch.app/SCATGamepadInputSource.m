@interface SCATGamepadInputSource
- (BOOL)handledEvent:(id)a3;
- (id)_actionIdentifierForKeyCode:(unsigned __int16)a3 withType:(id)a4;
- (id)_persistentSwitchIdentifierForKeyCode:(unsigned __int16)a3;
- (id)_switchDisplayNameForKeyCode:(unsigned __int16)a3;
@end

@implementation SCATGamepadInputSource

- (BOOL)handledEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 creatorHIDEvent];
  if (v4)
  {
    v6 = v5;
    v7 = [v4 gameControllerInfo];
    if ([v7 isJoystickPressed] & 1) != 0 || (objc_msgSend(v7, "isDirectionPadPressed") & 1) != 0 || (objc_msgSend(v7, "isFaceButtonPressed") & 1) != 0 || (objc_msgSend(v7, "isShoulderButtonPressed"))
    {
      v8 = 1;
    }

    else
    {
      v8 = [v7 isKeyboardTypeButtonPressed];
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
      [(SCATInputSource *)self _handleAction:v12 longPressAction:v13 start:v8 switchIdentifier:v14 switchDisplayName:v15];
    }
  }

  else
  {
    _AXLogWithFacility();
    v10 = 0;
  }

  return v10;
}

- (id)_actionIdentifierForKeyCode:(unsigned __int16)a3 withType:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SCATInputSource *)self actions];

  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedShort:v4];
    v9 = [(SCATInputSource *)self actions];
    v10 = [v9 objectForKeyedSubscript:v8];

    v11 = [v10 objectForKeyedSubscript:v6];
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

- (id)_persistentSwitchIdentifierForKeyCode:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(SCATHardwareInputSource *)self persistentSwitchIdentifiers];
  v5 = [NSNumber numberWithUnsignedShort:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)_switchDisplayNameForKeyCode:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(SCATHardwareInputSource *)self switchDisplayNames];
  v5 = [NSNumber numberWithUnsignedShort:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

@end