@interface AXSwitch
+ (AXSwitch)switchWithAction:(int64_t)a3 name:(id)a4 source:(id)a5 type:(id)a6;
+ (NSDictionary)expressionToSwitchTypeMapping;
- (AXSwitch)initWithAction:(int64_t)a3 name:(id)a4 source:(id)a5 type:(id)a6;
- (AXSwitch)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsLongPress;
- (NSString)localizedSourceDescription;
- (NSString)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXSwitch

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[AXSwitch action](self forKey:{"action"), @"SwitchActionKey"}];
  [v4 encodeInteger:-[AXSwitch longPressAction](self forKey:{"longPressAction"), @"SwitchLongPressAction"}];
  v5 = [(AXSwitch *)self name];
  [v4 encodeObject:v5 forKey:@"SwitchNameKey"];

  v6 = [(AXSwitch *)self source];
  [v4 encodeObject:v6 forKey:@"SwitchSourceKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSwitch isEnabled](self, "isEnabled")}];
  [v4 encodeObject:v7 forKey:@"SwitchIsEnabledKey"];

  v8 = [(AXSwitch *)self type];
  [v4 encodeObject:v8 forKey:@"SwitchTypeKey"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[AXSwitch keyCode](self, "keyCode")}];
  [v4 encodeObject:v9 forKey:@"SwitchKeyCodeKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXSwitch buttonNumber](self, "buttonNumber")}];
  [v4 encodeObject:v10 forKey:@"SwitchButtonNumberKey"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXSwitch headSwitch](self, "headSwitch")}];
  [v4 encodeObject:v11 forKey:@"SwitchHeadSwitch"];

  v12 = [(AXSwitch *)self uuid];
  [v4 encodeObject:v12 forKey:@"SwitchUUID"];

  v13 = [(AXSwitch *)self productName];
  [v4 encodeObject:v13 forKey:@"SwithProductName"];

  v14 = [(AXSwitch *)self manufacturerName];
  [v4 encodeObject:v14 forKey:@"SwithManufacturerName"];

  v15 = [(AXSwitch *)self remoteSwitchIdentifier];
  [v4 encodeObject:v15 forKey:@"SwitchRemoteSwitchIdentifier"];

  v16 = [(AXSwitch *)self remoteDeviceName];
  [v4 encodeObject:v16 forKey:@"SwitchRemoteDeviceName"];

  v17 = [(AXSwitch *)self remoteDeviceIdentifier];
  [v4 encodeObject:v17 forKey:@"SwitchRemoteDeviceIdentifier"];

  v18 = [(AXSwitch *)self midiEvent];
  [v4 encodeObject:v18 forKey:@"SwitchMidiEvent"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXSwitch cameraSwitch](self, "cameraSwitch")}];
  [v4 encodeObject:v19 forKey:@"SwitchCameraSwitch"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXSwitch expressionSensitivity](self, "expressionSensitivity")}];
  [v4 encodeObject:v20 forKey:@"SwitchExpressionSensitivity"];

  v21 = [MEMORY[0x1E696AD98] numberWithLong:{-[AXSwitch accessibilityEventUsagePage](self, "accessibilityEventUsagePage")}];
  [v4 encodeObject:v21 forKey:@"SwitchAccessibilityEventUsagePage"];

  v22 = [MEMORY[0x1E696AD98] numberWithLong:{-[AXSwitch accessibilityEventUsage](self, "accessibilityEventUsage")}];
  [v4 encodeObject:v22 forKey:@"SwitchAccessibilityEventUsage"];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXSwitch accessibilityEventModifierFlags](self, "accessibilityEventModifierFlags")}];
  [v4 encodeObject:v23 forKey:@"SwitchAccessibilityEventModifierFlags"];

  v24 = [(AXSwitch *)self shortcutIdentifier];
  [v4 encodeObject:v24 forKey:@"shortcutIdentifier"];

  v25 = [(AXSwitch *)self longPressShortcutIdentifier];
  [v4 encodeObject:v25 forKey:@"longPressShortcutIdentifier"];
}

- (AXSwitch)initWithCoder:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = AXSwitch;
  v5 = [(AXSwitch *)&v49 init];
  if (v5)
  {
    v5->_action = [v4 decodeIntegerForKey:@"SwitchActionKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchNameKey"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchSourceKey"];
    source = v5->_source;
    v5->_source = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchTypeKey"];
    type = v5->_type;
    v5->_type = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchKeyCodeKey"];
    v5->_keyCode = [v13 unsignedShortValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchButtonNumberKey"];
    v5->_buttonNumber = [v14 integerValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchHeadSwitch"];
    v5->_headSwitch = [v15 integerValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwithProductName"];
    productName = v5->_productName;
    v5->_productName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwithManufacturerName"];
    manufacturerName = v5->_manufacturerName;
    v5->_manufacturerName = v20;

    v5->_longPressAction = [v4 decodeIntegerForKey:@"SwitchLongPressAction"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchRemoteSwitchIdentifier"];
    v23 = [v22 copy];
    remoteSwitchIdentifier = v5->_remoteSwitchIdentifier;
    v5->_remoteSwitchIdentifier = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchRemoteDeviceName"];
    v26 = [v25 copy];
    remoteDeviceName = v5->_remoteDeviceName;
    v5->_remoteDeviceName = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchRemoteDeviceIdentifier"];
    v29 = [v28 copy];
    remoteDeviceIdentifier = v5->_remoteDeviceIdentifier;
    v5->_remoteDeviceIdentifier = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchMidiEvent"];
    midiEvent = v5->_midiEvent;
    v5->_midiEvent = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchCameraSwitch"];
    v5->_cameraSwitch = [v33 unsignedIntegerValue];

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchExpressionSensitivity"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutIdentifier"];
    [(AXSwitch *)v5 setShortcutIdentifier:v35];

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"longPressShortcutIdentifier"];
    [(AXSwitch *)v5 setLongPressShortcutIdentifier:v36];

    if (v34)
    {
      v37 = [v34 unsignedIntegerValue];
    }

    else
    {
      v37 = 2;
    }

    v5->_expressionSensitivity = v37;
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchAccessibilityEventUsagePage"];
    v5->_accessibilityEventUsagePage = [v38 integerValue];

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchAccessibilityEventUsage"];
    v5->_accessibilityEventUsage = [v39 integerValue];

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchAccessibilityEventModifierFlags"];
    v5->_accessibilityEventModifierFlags = [v40 integerValue];

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceBackTap") && [v4 containsValueForKey:@"SwitchBackTapType"])
    {
      v5->_accessibilityEventUsagePage = 1;
      v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchBackTapType"];
      v5->_accessibilityEventUsage = [v41 unsignedIntegerValue];
    }

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceSound") && [v4 containsValueForKey:@"SwitchSoundType"])
    {
      v5->_accessibilityEventUsagePage = 3;
      v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchSoundType"];
      v5->_accessibilityEventUsage = [v42 unsignedIntegerValue];
    }

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceHeadGesture") && [v4 containsValueForKey:@"SwitchHeadGestureType"])
    {
      v5->_accessibilityEventUsagePage = 7;
      v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchHeadGestureType"];
      v5->_accessibilityEventUsage = [v43 unsignedIntegerValue];
    }

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceCameraHandGesture") && [v4 containsValueForKey:@"SwitchCameraHandGestureType"])
    {
      v5->_accessibilityEventUsagePage = 8;
      v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchCameraHandGestureType"];
      v5->_accessibilityEventUsage = [v44 unsignedIntegerValue];
    }

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceHandGestures") && [v4 containsValueForKey:@"SwitchHandGesturesType"])
    {
      v5->_accessibilityEventUsagePage = 2;
      v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchHandGesturesType"];
      v5->_accessibilityEventUsage = [v45 unsignedIntegerValue];
    }

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceAutomation") && [v4 containsValueForKey:@"SwitchAutomationType"])
    {
      v5->_accessibilityEventUsagePage = 5;
      v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchAutomationType"];
      v5->_accessibilityEventUsage = [v46 unsignedIntegerValue];
    }

    v5->_isEnabled = 1;
    if ([v4 containsValueForKey:@"SwitchIsEnabledKey"])
    {
      v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SwitchIsEnabledKey"];
      v5->_isEnabled = [v47 BOOLValue];
    }
  }

  return v5;
}

+ (AXSwitch)switchWithAction:(int64_t)a3 name:(id)a4 source:(id)a5 type:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[a1 alloc] initWithAction:a3 name:v12 source:v11 type:v10];

  return v13;
}

- (AXSwitch)initWithAction:(int64_t)a3 name:(id)a4 source:(id)a5 type:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = AXSwitch;
  v13 = [(AXSwitch *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_action = a3;
    v15 = [v10 copy];
    name = v14->_name;
    v14->_name = v15;

    objc_storeStrong(&v14->_source, a5);
    objc_storeStrong(&v14->_type, a6);
    v14->_isEnabled = 1;
    v17 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v14->_uuid;
    v14->_uuid = v17;
  }

  return v14;
}

- (NSString)name
{
  v3 = [(AXSwitch *)self source];
  v4 = [v3 isEqualToString:@"SwitchSourceScreen"];

  if (v4)
  {
    v5 = AXLocalizedString(@"SCREEN_SWITCH_NAME");
  }

  else
  {
    v5 = self->_name;
  }

  return v5;
}

- (BOOL)supportsLongPress
{
  v3 = [(AXSwitch *)self source];
  if ([v3 isEqualToString:@"SwitchSourceScreen"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(AXSwitch *)self source];
    if ([v5 isEqualToString:@"SwitchSourceKeyboard"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(AXSwitch *)self source];
      if ([v6 isEqualToString:@"SwitchSourceMFI"])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(AXSwitch *)self source];
        if ([v7 isEqualToString:@"SwitchSourceATVRemote"])
        {
          v4 = 1;
        }

        else
        {
          v8 = [(AXSwitch *)self source];
          if ([v8 isEqualToString:@"SwitchSourceMIDI"])
          {
            v4 = 1;
          }

          else
          {
            v9 = [(AXSwitch *)self source];
            if ([v9 isEqualToString:@"SwitchSourceRemote"])
            {
              v4 = 1;
            }

            else
            {
              v10 = [(AXSwitch *)self source];
              if ([v10 isEqualToString:@"SwitchSourceGamepad"])
              {
                v4 = 1;
              }

              else
              {
                v11 = [(AXSwitch *)self source];
                if ([v11 isEqualToString:@"SCATSwitchSourceCameraHandGesture"])
                {
                  v4 = 1;
                }

                else
                {
                  v12 = [(AXSwitch *)self source];
                  v4 = [v12 isEqualToString:@"SCATSwitchSourceAccessibility"];
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (NSString)localizedSourceDescription
{
  v2 = [(AXSwitch *)self source];
  if ([v2 isEqualToString:@"SwitchSourceCamera"])
  {
LABEL_2:
    v9 = @"SWITCH_SOURCE_CAMERA_LABEL";
LABEL_9:
    v10 = AXParameterizedLocalizedString(2, v9, v3, v4, v5, v6, v7, v8, v12);
    goto LABEL_10;
  }

  if ([v2 isEqualToString:@"SwitchSourceKeyboard"])
  {
    v9 = @"SWITCH_SOURCE_EXTERNAL_LABEL";
    goto LABEL_9;
  }

  if ([v2 isEqualToString:@"SwitchSourceMFI"])
  {
    v9 = @"SWITCH_SOURCE_MFI_LABEL";
    goto LABEL_9;
  }

  if ([v2 isEqualToString:@"SwitchSourceScreen"])
  {
    v9 = @"SWITCH_SOURCE_SCREEN_LABEL";
    goto LABEL_9;
  }

  if ([v2 isEqualToString:@"SwitchSourceATVRemote"])
  {
    v10 = @"Apple TV Remote";
  }

  else
  {
    if ([v2 isEqualToString:@"SwitchSourceRemote"])
    {
      v9 = @"SWITCH_SOURCE_REMOTE_LABEL";
      goto LABEL_9;
    }

    if ([v2 isEqualToString:@"SwitchSourceMIDI"])
    {
      v9 = @"SWITCH_SOURCE_MIDI_LABEL";
      goto LABEL_9;
    }

    if ([v2 isEqualToString:@"SCATSwitchSourceMotionTracker"])
    {
      goto LABEL_2;
    }

    if ([v2 isEqualToString:@"SCATSwitchSourceBackTap"])
    {
      v9 = @"SWITCH_SOURCE_BACK_TAP";
      goto LABEL_9;
    }

    if ([v2 isEqualToString:@"SCATSwitchSourceAccessibility"])
    {
      v9 = @"SWITCH_SOURCE_ACCESSIBILITY";
      goto LABEL_9;
    }

    if ([v2 isEqualToString:@"SwitchSourceGamepad"])
    {
      v9 = @"SWITCH_SOURCE_GAMEPAD";
      goto LABEL_9;
    }

    if ([v2 isEqualToString:@"SCATSwitchSourceAutomation"])
    {
      v9 = @"SWITCH_SOURCE_AUTOMATION";
      goto LABEL_9;
    }

    if ([v2 isEqualToString:@"SCATSwitchSourceHandGestures"])
    {
      goto LABEL_29;
    }

    if ([v2 isEqualToString:@"SCATSwitchSourceSound"])
    {
      v9 = @"SWITCH_SOURCE_SOUND";
      goto LABEL_9;
    }

    if ([v2 isEqualToString:@"SCATSwitchSourceHeadGesture"])
    {
      v9 = @"SWITCH_SOURCE_HEAD_GESTURES";
      goto LABEL_9;
    }

    if ([v2 isEqualToString:@"SCATSwitchSourceCameraHandGesture"])
    {
LABEL_29:
      v9 = @"SWITCH_SOURCE_HAND_GESTURES";
      goto LABEL_9;
    }

    v10 = &stru_1EFE6D570;
  }

LABEL_10:

  return v10;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  v19 = objc_opt_class();
  v3 = SCATActionDescription([(AXSwitch *)self action]);
  v26 = [(AXSwitch *)self name];
  v25 = [(AXSwitch *)self source];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSwitch isEnabled](self, "isEnabled")}];
  v20 = [(AXSwitch *)self hasLongPressAction];
  v22 = v3;
  if (v20)
  {
    v23 = SCATActionDescription([(AXSwitch *)self longPressAction]);
  }

  else
  {
    v23 = @"None";
  }

  v18 = [(AXSwitch *)self type];
  v17 = [(AXSwitch *)self keyCode];
  v16 = [(AXSwitch *)self buttonNumber];
  v15 = [(AXSwitch *)self headSwitch];
  v14 = [(AXSwitch *)self productName];
  v13 = [(AXSwitch *)self manufacturerName];
  v4 = [(AXSwitch *)self uuid];
  v5 = [(AXSwitch *)self remoteDeviceIdentifier];
  v6 = [(AXSwitch *)self remoteDeviceName];
  v7 = [(AXSwitch *)self remoteSwitchIdentifier];
  v8 = [(AXSwitch *)self midiEvent];
  v9 = [(AXSwitch *)self shortcutIdentifier];
  v10 = [(AXSwitch *)self longPressShortcutIdentifier];
  v11 = [v21 stringWithFormat:@"[%@ (%p)]\nAction: %@ \nName: %@ \nSource: %@ \nIs Enabled: %@ \nLong Press action: %@ \nType: %@ \nKey code: %hu\nButton Number: %d\nHead Switch: %d\nProduct Name: %@\nManufacturer: %@\nUUID: %@\nRemote device identifier: %@\nRemote device name: %@\nRemote switch identifier: %@\nMIDI Event: %@\nShortcut %@ / Long press shortcut: %@\n", v19, self, v22, v26, v25, v24, v23, v18, v17, v16, v15, v14, v13, v4, v5, v6, v7, v8, v9, v10];

  if (v20)
  {
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = [(AXSwitch *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self != v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_53;
    }

    v6 = [(AXSwitch *)self uuid];
    v7 = [(AXSwitch *)v5 uuid];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v10 = v5;
      v11 = [(AXSwitch *)self remoteDeviceIdentifier];
      if (v11)
      {
        v12 = [(AXSwitch *)v10 remoteDeviceIdentifier];
        v13 = [(AXSwitch *)self remoteDeviceIdentifier];
        if (![v12 isEqualToString:v13])
        {
          goto LABEL_48;
        }

        v60 = v13;
        v62 = v12;
      }

      v14 = [(AXSwitch *)self remoteSwitchIdentifier];
      if (v14)
      {
        v15 = [(AXSwitch *)v10 remoteSwitchIdentifier];
        v3 = [(AXSwitch *)self remoteSwitchIdentifier];
        if (![v15 isEqualToString:v3])
        {
          v22 = 1;
          goto LABEL_17;
        }

        v58 = v15;
      }

      v16 = [(AXSwitch *)self remoteDeviceName];
      if (v16)
      {
        v17 = v16;
        v18 = [(AXSwitch *)v10 remoteDeviceName];
        [(AXSwitch *)self remoteDeviceName];
        v19 = v10;
        v21 = v20 = v11;
        v22 = [v18 isEqualToString:v21] ^ 1;

        v11 = v20;
        v10 = v19;
      }

      else
      {
        v22 = 0;
      }

      v15 = v58;
      if (!v14)
      {
LABEL_18:
        if (v11)
        {
        }

        if (v22)
        {
          v9 = 0;
LABEL_52:

          goto LABEL_53;
        }

        v23 = [(AXSwitch *)self source];
        v24 = [(AXSwitch *)self cameraSwitch];
        if (v24 == [(AXSwitch *)v10 cameraSwitch])
        {
          v25 = [(AXSwitch *)self expressionSensitivity];
          v26 = v25 == [(AXSwitch *)v10 expressionSensitivity];
        }

        else
        {
          v26 = 0;
        }

        v63 = v23;
        v27 = [(AXSwitch *)self shortcutIdentifier];
        if (v27)
        {
          v28 = [(AXSwitch *)self shortcutIdentifier];
          v14 = [(AXSwitch *)v10 shortcutIdentifier];
          if (![v28 isEqualToString:v14])
          {
            v33 = 0;
            goto LABEL_33;
          }

          v60 = v28;
        }

        v29 = [(AXSwitch *)self longPressShortcutIdentifier];
        if (v29)
        {
          v30 = [(AXSwitch *)self longPressShortcutIdentifier];
          [(AXSwitch *)v10 longPressShortcutIdentifier];
          v32 = v31 = v26;
          v33 = [v30 isEqualToString:v32];

          v26 = v31;
        }

        else
        {
          v33 = 1;
        }

        v28 = v60;
        if (!v27)
        {
LABEL_34:

          v34 = [(AXSwitch *)self action];
          if (v34 != [(AXSwitch *)v10 action])
          {
            v9 = 0;
            v11 = v63;
            goto LABEL_51;
          }

          v12 = [(AXSwitch *)self name];
          v13 = [(AXSwitch *)v10 name];
          v11 = v63;
          if (([v12 isEqualToString:v13] | v26))
          {
            v35 = v12;
            v36 = [(AXSwitch *)v10 source];
            if ([v63 isEqual:v36])
            {
              v37 = [(AXSwitch *)self type];
              v38 = [(AXSwitch *)v10 type];
              if ([v37 isEqual:v38])
              {
                v61 = v37;
                v39 = [(AXSwitch *)self keyCode];
                if (v39 == [(AXSwitch *)v10 keyCode]&& (v40 = [(AXSwitch *)self isEnabled], v40 == [(AXSwitch *)v10 isEnabled]) && (v41 = [(AXSwitch *)self buttonNumber], v41 == [(AXSwitch *)v10 buttonNumber]) && (v42 = [(AXSwitch *)self headSwitch], v42 == [(AXSwitch *)v10 headSwitch]) && (v43 = [(AXSwitch *)self hasLongPressAction], v43 == [(AXSwitch *)v10 hasLongPressAction]) && (v44 = [(AXSwitch *)self accessibilityEventUsagePage], v44 == [(AXSwitch *)v10 accessibilityEventUsagePage]))
                {
                  v45 = [(AXSwitch *)self accessibilityEventUsage];
                  v59 = v10;
                  if (v45 == [(AXSwitch *)v10 accessibilityEventUsage]&& (v46 = [(AXSwitch *)self accessibilityEventModifierFlags], v46 == [(AXSwitch *)v10 accessibilityEventModifierFlags]))
                  {
                    v47 = [(AXSwitch *)self midiEvent];
                    v48 = [(AXSwitch *)v59 midiEvent];
                    if (v47 == v48)
                    {
                      v50 = [(AXSwitch *)self remoteSwitchIdentifier];
                      v56 = [(AXSwitch *)v59 remoteSwitchIdentifier];
                      v57 = v50;
                      if (v50 == v56)
                      {
                        v51 = [(AXSwitch *)self remoteDeviceName];
                        v54 = [(AXSwitch *)v59 remoteDeviceName];
                        v55 = v51;
                        if (v51 == v54)
                        {
                          v52 = [(AXSwitch *)self remoteDeviceIdentifier];
                          v53 = [(AXSwitch *)v59 remoteSwitchIdentifier];
                          v9 = (v52 == v53) & v33;
                        }

                        else
                        {
                          v9 = 0;
                        }
                      }

                      else
                      {
                        v9 = 0;
                      }
                    }

                    else
                    {
                      v9 = 0;
                    }
                  }

                  else
                  {
                    v9 = 0;
                  }

                  v11 = v63;
                  v10 = v59;
                }

                else
                {
                  v9 = 0;
                }

                v37 = v61;
              }

              else
              {
                v9 = 0;
              }
            }

            else
            {
              v9 = 0;
            }

            v12 = v35;
            goto LABEL_49;
          }

LABEL_48:
          v9 = 0;
LABEL_49:

LABEL_51:
          goto LABEL_52;
        }

LABEL_33:

        goto LABEL_34;
      }

LABEL_17:

      goto LABEL_18;
    }
  }

  v9 = 1;
LABEL_53:

  return v9;
}

+ (NSDictionary)expressionToSwitchTypeMapping
{
  if (expressionToSwitchTypeMapping_onceToken != -1)
  {
    +[AXSwitch expressionToSwitchTypeMapping];
  }

  v3 = expressionToSwitchTypeMapping_expressionToSwitchTypeMapping;

  return v3;
}

void __41__AXSwitch_expressionToSwitchTypeMapping__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1EFE96C10;
  v2[1] = &unk_1EFE96C40;
  v3[0] = &unk_1EFE96C28;
  v3[1] = &unk_1EFE96C58;
  v2[2] = &unk_1EFE96C70;
  v2[3] = &unk_1EFE96C58;
  v3[2] = &unk_1EFE96C40;
  v3[3] = &unk_1EFE96C10;
  v2[4] = &unk_1EFE96C88;
  v2[5] = &unk_1EFE96CA0;
  v3[4] = &unk_1EFE96C70;
  v3[5] = &unk_1EFE96C88;
  v2[6] = &unk_1EFE96CB8;
  v2[7] = &unk_1EFE96CE8;
  v3[6] = &unk_1EFE96CD0;
  v3[7] = &unk_1EFE96CE8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = expressionToSwitchTypeMapping_expressionToSwitchTypeMapping;
  expressionToSwitchTypeMapping_expressionToSwitchTypeMapping = v0;
}

@end