@interface AXSwitch
+ (AXSwitch)switchWithAction:(int64_t)action name:(id)name source:(id)source type:(id)type;
+ (NSDictionary)expressionToSwitchTypeMapping;
- (AXSwitch)initWithAction:(int64_t)action name:(id)name source:(id)source type:(id)type;
- (AXSwitch)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsLongPress;
- (NSString)localizedSourceDescription;
- (NSString)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXSwitch

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AXSwitch action](self forKey:{"action"), @"SwitchActionKey"}];
  [coderCopy encodeInteger:-[AXSwitch longPressAction](self forKey:{"longPressAction"), @"SwitchLongPressAction"}];
  name = [(AXSwitch *)self name];
  [coderCopy encodeObject:name forKey:@"SwitchNameKey"];

  source = [(AXSwitch *)self source];
  [coderCopy encodeObject:source forKey:@"SwitchSourceKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSwitch isEnabled](self, "isEnabled")}];
  [coderCopy encodeObject:v7 forKey:@"SwitchIsEnabledKey"];

  type = [(AXSwitch *)self type];
  [coderCopy encodeObject:type forKey:@"SwitchTypeKey"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[AXSwitch keyCode](self, "keyCode")}];
  [coderCopy encodeObject:v9 forKey:@"SwitchKeyCodeKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXSwitch buttonNumber](self, "buttonNumber")}];
  [coderCopy encodeObject:v10 forKey:@"SwitchButtonNumberKey"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXSwitch headSwitch](self, "headSwitch")}];
  [coderCopy encodeObject:v11 forKey:@"SwitchHeadSwitch"];

  uuid = [(AXSwitch *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"SwitchUUID"];

  productName = [(AXSwitch *)self productName];
  [coderCopy encodeObject:productName forKey:@"SwithProductName"];

  manufacturerName = [(AXSwitch *)self manufacturerName];
  [coderCopy encodeObject:manufacturerName forKey:@"SwithManufacturerName"];

  remoteSwitchIdentifier = [(AXSwitch *)self remoteSwitchIdentifier];
  [coderCopy encodeObject:remoteSwitchIdentifier forKey:@"SwitchRemoteSwitchIdentifier"];

  remoteDeviceName = [(AXSwitch *)self remoteDeviceName];
  [coderCopy encodeObject:remoteDeviceName forKey:@"SwitchRemoteDeviceName"];

  remoteDeviceIdentifier = [(AXSwitch *)self remoteDeviceIdentifier];
  [coderCopy encodeObject:remoteDeviceIdentifier forKey:@"SwitchRemoteDeviceIdentifier"];

  midiEvent = [(AXSwitch *)self midiEvent];
  [coderCopy encodeObject:midiEvent forKey:@"SwitchMidiEvent"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXSwitch cameraSwitch](self, "cameraSwitch")}];
  [coderCopy encodeObject:v19 forKey:@"SwitchCameraSwitch"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXSwitch expressionSensitivity](self, "expressionSensitivity")}];
  [coderCopy encodeObject:v20 forKey:@"SwitchExpressionSensitivity"];

  v21 = [MEMORY[0x1E696AD98] numberWithLong:{-[AXSwitch accessibilityEventUsagePage](self, "accessibilityEventUsagePage")}];
  [coderCopy encodeObject:v21 forKey:@"SwitchAccessibilityEventUsagePage"];

  v22 = [MEMORY[0x1E696AD98] numberWithLong:{-[AXSwitch accessibilityEventUsage](self, "accessibilityEventUsage")}];
  [coderCopy encodeObject:v22 forKey:@"SwitchAccessibilityEventUsage"];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXSwitch accessibilityEventModifierFlags](self, "accessibilityEventModifierFlags")}];
  [coderCopy encodeObject:v23 forKey:@"SwitchAccessibilityEventModifierFlags"];

  shortcutIdentifier = [(AXSwitch *)self shortcutIdentifier];
  [coderCopy encodeObject:shortcutIdentifier forKey:@"shortcutIdentifier"];

  longPressShortcutIdentifier = [(AXSwitch *)self longPressShortcutIdentifier];
  [coderCopy encodeObject:longPressShortcutIdentifier forKey:@"longPressShortcutIdentifier"];
}

- (AXSwitch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = AXSwitch;
  v5 = [(AXSwitch *)&v49 init];
  if (v5)
  {
    v5->_action = [coderCopy decodeIntegerForKey:@"SwitchActionKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchNameKey"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchSourceKey"];
    source = v5->_source;
    v5->_source = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchTypeKey"];
    type = v5->_type;
    v5->_type = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchKeyCodeKey"];
    v5->_keyCode = [v13 unsignedShortValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchButtonNumberKey"];
    v5->_buttonNumber = [v14 integerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchHeadSwitch"];
    v5->_headSwitch = [v15 integerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwithProductName"];
    productName = v5->_productName;
    v5->_productName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwithManufacturerName"];
    manufacturerName = v5->_manufacturerName;
    v5->_manufacturerName = v20;

    v5->_longPressAction = [coderCopy decodeIntegerForKey:@"SwitchLongPressAction"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchRemoteSwitchIdentifier"];
    v23 = [v22 copy];
    remoteSwitchIdentifier = v5->_remoteSwitchIdentifier;
    v5->_remoteSwitchIdentifier = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchRemoteDeviceName"];
    v26 = [v25 copy];
    remoteDeviceName = v5->_remoteDeviceName;
    v5->_remoteDeviceName = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchRemoteDeviceIdentifier"];
    v29 = [v28 copy];
    remoteDeviceIdentifier = v5->_remoteDeviceIdentifier;
    v5->_remoteDeviceIdentifier = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchMidiEvent"];
    midiEvent = v5->_midiEvent;
    v5->_midiEvent = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchCameraSwitch"];
    v5->_cameraSwitch = [v33 unsignedIntegerValue];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchExpressionSensitivity"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutIdentifier"];
    [(AXSwitch *)v5 setShortcutIdentifier:v35];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"longPressShortcutIdentifier"];
    [(AXSwitch *)v5 setLongPressShortcutIdentifier:v36];

    if (v34)
    {
      unsignedIntegerValue = [v34 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 2;
    }

    v5->_expressionSensitivity = unsignedIntegerValue;
    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchAccessibilityEventUsagePage"];
    v5->_accessibilityEventUsagePage = [v38 integerValue];

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchAccessibilityEventUsage"];
    v5->_accessibilityEventUsage = [v39 integerValue];

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchAccessibilityEventModifierFlags"];
    v5->_accessibilityEventModifierFlags = [v40 integerValue];

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceBackTap") && [coderCopy containsValueForKey:@"SwitchBackTapType"])
    {
      v5->_accessibilityEventUsagePage = 1;
      v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchBackTapType"];
      v5->_accessibilityEventUsage = [v41 unsignedIntegerValue];
    }

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceSound") && [coderCopy containsValueForKey:@"SwitchSoundType"])
    {
      v5->_accessibilityEventUsagePage = 3;
      v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchSoundType"];
      v5->_accessibilityEventUsage = [v42 unsignedIntegerValue];
    }

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceHeadGesture") && [coderCopy containsValueForKey:@"SwitchHeadGestureType"])
    {
      v5->_accessibilityEventUsagePage = 7;
      v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchHeadGestureType"];
      v5->_accessibilityEventUsage = [v43 unsignedIntegerValue];
    }

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceCameraHandGesture") && [coderCopy containsValueForKey:@"SwitchCameraHandGestureType"])
    {
      v5->_accessibilityEventUsagePage = 8;
      v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchCameraHandGestureType"];
      v5->_accessibilityEventUsage = [v44 unsignedIntegerValue];
    }

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceHandGestures") && [coderCopy containsValueForKey:@"SwitchHandGesturesType"])
    {
      v5->_accessibilityEventUsagePage = 2;
      v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchHandGesturesType"];
      v5->_accessibilityEventUsage = [v45 unsignedIntegerValue];
    }

    if (-[NSString isEqualToString:](v5->_source, "isEqualToString:", @"SCATSwitchSourceAutomation") && [coderCopy containsValueForKey:@"SwitchAutomationType"])
    {
      v5->_accessibilityEventUsagePage = 5;
      v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchAutomationType"];
      v5->_accessibilityEventUsage = [v46 unsignedIntegerValue];
    }

    v5->_isEnabled = 1;
    if ([coderCopy containsValueForKey:@"SwitchIsEnabledKey"])
    {
      v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SwitchIsEnabledKey"];
      v5->_isEnabled = [v47 BOOLValue];
    }
  }

  return v5;
}

+ (AXSwitch)switchWithAction:(int64_t)action name:(id)name source:(id)source type:(id)type
{
  typeCopy = type;
  sourceCopy = source;
  nameCopy = name;
  v13 = [[self alloc] initWithAction:action name:nameCopy source:sourceCopy type:typeCopy];

  return v13;
}

- (AXSwitch)initWithAction:(int64_t)action name:(id)name source:(id)source type:(id)type
{
  nameCopy = name;
  sourceCopy = source;
  typeCopy = type;
  v20.receiver = self;
  v20.super_class = AXSwitch;
  v13 = [(AXSwitch *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_action = action;
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    objc_storeStrong(&v14->_source, source);
    objc_storeStrong(&v14->_type, type);
    v14->_isEnabled = 1;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v14->_uuid;
    v14->_uuid = uUID;
  }

  return v14;
}

- (NSString)name
{
  source = [(AXSwitch *)self source];
  v4 = [source isEqualToString:@"SwitchSourceScreen"];

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
  source = [(AXSwitch *)self source];
  if ([source isEqualToString:@"SwitchSourceScreen"])
  {
    v4 = 1;
  }

  else
  {
    source2 = [(AXSwitch *)self source];
    if ([source2 isEqualToString:@"SwitchSourceKeyboard"])
    {
      v4 = 1;
    }

    else
    {
      source3 = [(AXSwitch *)self source];
      if ([source3 isEqualToString:@"SwitchSourceMFI"])
      {
        v4 = 1;
      }

      else
      {
        source4 = [(AXSwitch *)self source];
        if ([source4 isEqualToString:@"SwitchSourceATVRemote"])
        {
          v4 = 1;
        }

        else
        {
          source5 = [(AXSwitch *)self source];
          if ([source5 isEqualToString:@"SwitchSourceMIDI"])
          {
            v4 = 1;
          }

          else
          {
            source6 = [(AXSwitch *)self source];
            if ([source6 isEqualToString:@"SwitchSourceRemote"])
            {
              v4 = 1;
            }

            else
            {
              source7 = [(AXSwitch *)self source];
              if ([source7 isEqualToString:@"SwitchSourceGamepad"])
              {
                v4 = 1;
              }

              else
              {
                source8 = [(AXSwitch *)self source];
                if ([source8 isEqualToString:@"SCATSwitchSourceCameraHandGesture"])
                {
                  v4 = 1;
                }

                else
                {
                  source9 = [(AXSwitch *)self source];
                  v4 = [source9 isEqualToString:@"SCATSwitchSourceAccessibility"];
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
  source = [(AXSwitch *)self source];
  if ([source isEqualToString:@"SwitchSourceCamera"])
  {
LABEL_2:
    v9 = @"SWITCH_SOURCE_CAMERA_LABEL";
LABEL_9:
    v10 = AXParameterizedLocalizedString(2, v9, v3, v4, v5, v6, v7, v8, v12);
    goto LABEL_10;
  }

  if ([source isEqualToString:@"SwitchSourceKeyboard"])
  {
    v9 = @"SWITCH_SOURCE_EXTERNAL_LABEL";
    goto LABEL_9;
  }

  if ([source isEqualToString:@"SwitchSourceMFI"])
  {
    v9 = @"SWITCH_SOURCE_MFI_LABEL";
    goto LABEL_9;
  }

  if ([source isEqualToString:@"SwitchSourceScreen"])
  {
    v9 = @"SWITCH_SOURCE_SCREEN_LABEL";
    goto LABEL_9;
  }

  if ([source isEqualToString:@"SwitchSourceATVRemote"])
  {
    v10 = @"Apple TV Remote";
  }

  else
  {
    if ([source isEqualToString:@"SwitchSourceRemote"])
    {
      v9 = @"SWITCH_SOURCE_REMOTE_LABEL";
      goto LABEL_9;
    }

    if ([source isEqualToString:@"SwitchSourceMIDI"])
    {
      v9 = @"SWITCH_SOURCE_MIDI_LABEL";
      goto LABEL_9;
    }

    if ([source isEqualToString:@"SCATSwitchSourceMotionTracker"])
    {
      goto LABEL_2;
    }

    if ([source isEqualToString:@"SCATSwitchSourceBackTap"])
    {
      v9 = @"SWITCH_SOURCE_BACK_TAP";
      goto LABEL_9;
    }

    if ([source isEqualToString:@"SCATSwitchSourceAccessibility"])
    {
      v9 = @"SWITCH_SOURCE_ACCESSIBILITY";
      goto LABEL_9;
    }

    if ([source isEqualToString:@"SwitchSourceGamepad"])
    {
      v9 = @"SWITCH_SOURCE_GAMEPAD";
      goto LABEL_9;
    }

    if ([source isEqualToString:@"SCATSwitchSourceAutomation"])
    {
      v9 = @"SWITCH_SOURCE_AUTOMATION";
      goto LABEL_9;
    }

    if ([source isEqualToString:@"SCATSwitchSourceHandGestures"])
    {
      goto LABEL_29;
    }

    if ([source isEqualToString:@"SCATSwitchSourceSound"])
    {
      v9 = @"SWITCH_SOURCE_SOUND";
      goto LABEL_9;
    }

    if ([source isEqualToString:@"SCATSwitchSourceHeadGesture"])
    {
      v9 = @"SWITCH_SOURCE_HEAD_GESTURES";
      goto LABEL_9;
    }

    if ([source isEqualToString:@"SCATSwitchSourceCameraHandGesture"])
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
  name = [(AXSwitch *)self name];
  source = [(AXSwitch *)self source];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSwitch isEnabled](self, "isEnabled")}];
  hasLongPressAction = [(AXSwitch *)self hasLongPressAction];
  v22 = v3;
  if (hasLongPressAction)
  {
    v23 = SCATActionDescription([(AXSwitch *)self longPressAction]);
  }

  else
  {
    v23 = @"None";
  }

  type = [(AXSwitch *)self type];
  keyCode = [(AXSwitch *)self keyCode];
  buttonNumber = [(AXSwitch *)self buttonNumber];
  headSwitch = [(AXSwitch *)self headSwitch];
  productName = [(AXSwitch *)self productName];
  manufacturerName = [(AXSwitch *)self manufacturerName];
  uuid = [(AXSwitch *)self uuid];
  remoteDeviceIdentifier = [(AXSwitch *)self remoteDeviceIdentifier];
  remoteDeviceName = [(AXSwitch *)self remoteDeviceName];
  remoteSwitchIdentifier = [(AXSwitch *)self remoteSwitchIdentifier];
  midiEvent = [(AXSwitch *)self midiEvent];
  shortcutIdentifier = [(AXSwitch *)self shortcutIdentifier];
  longPressShortcutIdentifier = [(AXSwitch *)self longPressShortcutIdentifier];
  v11 = [v21 stringWithFormat:@"[%@ (%p)]\nAction: %@ \nName: %@ \nSource: %@ \nIs Enabled: %@ \nLong Press action: %@ \nType: %@ \nKey code: %hu\nButton Number: %d\nHead Switch: %d\nProduct Name: %@\nManufacturer: %@\nUUID: %@\nRemote device identifier: %@\nRemote device name: %@\nRemote switch identifier: %@\nMIDI Event: %@\nShortcut %@ / Long press shortcut: %@\n", v19, self, v22, name, source, v24, v23, type, keyCode, buttonNumber, headSwitch, productName, manufacturerName, uuid, remoteDeviceIdentifier, remoteDeviceName, remoteSwitchIdentifier, midiEvent, shortcutIdentifier, longPressShortcutIdentifier];

  if (hasLongPressAction)
  {
  }

  return v11;
}

- (unint64_t)hash
{
  uuid = [(AXSwitch *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_53;
    }

    uuid = [(AXSwitch *)self uuid];
    uuid2 = [(AXSwitch *)equalCopy uuid];
    v8 = [uuid isEqual:uuid2];

    if ((v8 & 1) == 0)
    {
      v10 = equalCopy;
      remoteDeviceIdentifier = [(AXSwitch *)self remoteDeviceIdentifier];
      if (remoteDeviceIdentifier)
      {
        remoteDeviceIdentifier2 = [(AXSwitch *)v10 remoteDeviceIdentifier];
        remoteDeviceIdentifier3 = [(AXSwitch *)self remoteDeviceIdentifier];
        if (![remoteDeviceIdentifier2 isEqualToString:remoteDeviceIdentifier3])
        {
          goto LABEL_48;
        }

        v60 = remoteDeviceIdentifier3;
        v62 = remoteDeviceIdentifier2;
      }

      remoteSwitchIdentifier = [(AXSwitch *)self remoteSwitchIdentifier];
      if (remoteSwitchIdentifier)
      {
        remoteSwitchIdentifier2 = [(AXSwitch *)v10 remoteSwitchIdentifier];
        remoteSwitchIdentifier3 = [(AXSwitch *)self remoteSwitchIdentifier];
        if (![remoteSwitchIdentifier2 isEqualToString:remoteSwitchIdentifier3])
        {
          v22 = 1;
          goto LABEL_17;
        }

        v58 = remoteSwitchIdentifier2;
      }

      remoteDeviceName = [(AXSwitch *)self remoteDeviceName];
      if (remoteDeviceName)
      {
        v17 = remoteDeviceName;
        remoteDeviceName2 = [(AXSwitch *)v10 remoteDeviceName];
        [(AXSwitch *)self remoteDeviceName];
        v19 = v10;
        v21 = v20 = remoteDeviceIdentifier;
        v22 = [remoteDeviceName2 isEqualToString:v21] ^ 1;

        remoteDeviceIdentifier = v20;
        v10 = v19;
      }

      else
      {
        v22 = 0;
      }

      remoteSwitchIdentifier2 = v58;
      if (!remoteSwitchIdentifier)
      {
LABEL_18:
        if (remoteDeviceIdentifier)
        {
        }

        if (v22)
        {
          v9 = 0;
LABEL_52:

          goto LABEL_53;
        }

        source = [(AXSwitch *)self source];
        cameraSwitch = [(AXSwitch *)self cameraSwitch];
        if (cameraSwitch == [(AXSwitch *)v10 cameraSwitch])
        {
          expressionSensitivity = [(AXSwitch *)self expressionSensitivity];
          v26 = expressionSensitivity == [(AXSwitch *)v10 expressionSensitivity];
        }

        else
        {
          v26 = 0;
        }

        v63 = source;
        shortcutIdentifier = [(AXSwitch *)self shortcutIdentifier];
        if (shortcutIdentifier)
        {
          shortcutIdentifier2 = [(AXSwitch *)self shortcutIdentifier];
          remoteSwitchIdentifier = [(AXSwitch *)v10 shortcutIdentifier];
          if (![shortcutIdentifier2 isEqualToString:remoteSwitchIdentifier])
          {
            v33 = 0;
            goto LABEL_33;
          }

          v60 = shortcutIdentifier2;
        }

        longPressShortcutIdentifier = [(AXSwitch *)self longPressShortcutIdentifier];
        if (longPressShortcutIdentifier)
        {
          longPressShortcutIdentifier2 = [(AXSwitch *)self longPressShortcutIdentifier];
          [(AXSwitch *)v10 longPressShortcutIdentifier];
          v32 = v31 = v26;
          v33 = [longPressShortcutIdentifier2 isEqualToString:v32];

          v26 = v31;
        }

        else
        {
          v33 = 1;
        }

        shortcutIdentifier2 = v60;
        if (!shortcutIdentifier)
        {
LABEL_34:

          action = [(AXSwitch *)self action];
          if (action != [(AXSwitch *)v10 action])
          {
            v9 = 0;
            remoteDeviceIdentifier = v63;
            goto LABEL_51;
          }

          remoteDeviceIdentifier2 = [(AXSwitch *)self name];
          remoteDeviceIdentifier3 = [(AXSwitch *)v10 name];
          remoteDeviceIdentifier = v63;
          if (([remoteDeviceIdentifier2 isEqualToString:remoteDeviceIdentifier3] | v26))
          {
            v35 = remoteDeviceIdentifier2;
            source2 = [(AXSwitch *)v10 source];
            if ([v63 isEqual:source2])
            {
              type = [(AXSwitch *)self type];
              type2 = [(AXSwitch *)v10 type];
              if ([type isEqual:type2])
              {
                v61 = type;
                keyCode = [(AXSwitch *)self keyCode];
                if (keyCode == [(AXSwitch *)v10 keyCode]&& (v40 = [(AXSwitch *)self isEnabled], v40 == [(AXSwitch *)v10 isEnabled]) && (v41 = [(AXSwitch *)self buttonNumber], v41 == [(AXSwitch *)v10 buttonNumber]) && (v42 = [(AXSwitch *)self headSwitch], v42 == [(AXSwitch *)v10 headSwitch]) && (v43 = [(AXSwitch *)self hasLongPressAction], v43 == [(AXSwitch *)v10 hasLongPressAction]) && (v44 = [(AXSwitch *)self accessibilityEventUsagePage], v44 == [(AXSwitch *)v10 accessibilityEventUsagePage]))
                {
                  accessibilityEventUsage = [(AXSwitch *)self accessibilityEventUsage];
                  v59 = v10;
                  if (accessibilityEventUsage == [(AXSwitch *)v10 accessibilityEventUsage]&& (v46 = [(AXSwitch *)self accessibilityEventModifierFlags], v46 == [(AXSwitch *)v10 accessibilityEventModifierFlags]))
                  {
                    midiEvent = [(AXSwitch *)self midiEvent];
                    midiEvent2 = [(AXSwitch *)v59 midiEvent];
                    if (midiEvent == midiEvent2)
                    {
                      remoteSwitchIdentifier4 = [(AXSwitch *)self remoteSwitchIdentifier];
                      remoteSwitchIdentifier5 = [(AXSwitch *)v59 remoteSwitchIdentifier];
                      v57 = remoteSwitchIdentifier4;
                      if (remoteSwitchIdentifier4 == remoteSwitchIdentifier5)
                      {
                        remoteDeviceName3 = [(AXSwitch *)self remoteDeviceName];
                        remoteDeviceName4 = [(AXSwitch *)v59 remoteDeviceName];
                        v55 = remoteDeviceName3;
                        if (remoteDeviceName3 == remoteDeviceName4)
                        {
                          remoteDeviceIdentifier4 = [(AXSwitch *)self remoteDeviceIdentifier];
                          remoteSwitchIdentifier6 = [(AXSwitch *)v59 remoteSwitchIdentifier];
                          v9 = (remoteDeviceIdentifier4 == remoteSwitchIdentifier6) & v33;
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

                  remoteDeviceIdentifier = v63;
                  v10 = v59;
                }

                else
                {
                  v9 = 0;
                }

                type = v61;
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

            remoteDeviceIdentifier2 = v35;
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