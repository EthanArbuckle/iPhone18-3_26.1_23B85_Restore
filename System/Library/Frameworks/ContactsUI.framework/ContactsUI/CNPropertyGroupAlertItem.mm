@interface CNPropertyGroupAlertItem
+ (id)emptyValueForLabel:(id)label;
- (BOOL)isEquivalentToItem:(id)item whenEditing:(BOOL)editing;
- (BOOL)isValidValue:(id)value;
- (id)_toneManager;
- (id)_vibrationManager;
- (id)description;
- (id)displayLabel;
- (id)displayStringForValue:(id)value;
- (id)labeledValue;
- (id)replacementForInvalidValue:(id)value;
- (void)setLabeledValue:(id)value;
@end

@implementation CNPropertyGroupAlertItem

+ (id)emptyValueForLabel:(id)label
{
  v3 = objc_alloc_init(MEMORY[0x1E695CD18]);

  return v3;
}

- (id)_vibrationManager
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getTLVibrationManagerClass_softClass;
  v10 = getTLVibrationManagerClass_softClass;
  if (!getTLVibrationManagerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getTLVibrationManagerClass_block_invoke;
    v6[3] = &unk_1E74E7518;
    v6[4] = &v7;
    __getTLVibrationManagerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  sharedVibrationManager = [v2 sharedVibrationManager];

  return sharedVibrationManager;
}

- (id)_toneManager
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getTLToneManagerClass_softClass;
  v10 = getTLToneManagerClass_softClass;
  if (!getTLToneManagerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getTLToneManagerClass_block_invoke;
    v6[3] = &unk_1E74E7518;
    v6[4] = &v7;
    __getTLToneManagerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  sharedToneManager = [v2 sharedToneManager];

  return sharedToneManager;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  property = [(CNPropertyGroupItem *)self property];
  labeledValue = [(CNPropertyGroupAlertItem *)self labeledValue];
  value = [labeledValue value];
  v8 = [v3 stringWithFormat:@"<%@ %p> [%@] %@", v4, self, property, value];

  return v8;
}

- (BOOL)isEquivalentToItem:(id)item whenEditing:(BOOL)editing
{
  itemCopy = item;
  property = [(CNPropertyGroupItem *)self property];
  property2 = [itemCopy property];
  if ([property isEqualToString:property2])
  {
    labeledValue = [(CNPropertyGroupAlertItem *)self labeledValue];
    value = [labeledValue value];
    labeledValue2 = [itemCopy labeledValue];
    value2 = [labeledValue2 value];
    v12 = [value isEqual:value2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)replacementForInvalidValue:(id)value
{
  valueCopy = value;
  sound = [valueCopy sound];
  vibration = [valueCopy vibration];
  if (valueCopy)
  {
    if (sound)
    {
      _toneManager = [(CNPropertyGroupAlertItem *)self _toneManager];
      sound2 = [valueCopy sound];
      v9 = [_toneManager toneWithIdentifierIsValid:sound2];

      if ((v9 & 1) == 0)
      {

        sound = 0;
      }
    }

    if (vibration)
    {
      _vibrationManager = [(CNPropertyGroupAlertItem *)self _vibrationManager];
      vibration2 = [valueCopy vibration];
      v12 = [_vibrationManager vibrationWithIdentifierIsValid:vibration2];

      if ((v12 & 1) == 0)
      {

        vibration = 0;
      }
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E695CD18]) initWithSound:sound vibration:vibration ignoreMute:{objc_msgSend(valueCopy, "ignoreMute")}];

  return v13;
}

- (BOOL)isValidValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    sound = [valueCopy sound];

    if (sound)
    {
      _toneManager = [(CNPropertyGroupAlertItem *)self _toneManager];
      sound2 = [v5 sound];
      v9 = [_toneManager toneWithIdentifierIsValid:sound2];
    }

    else
    {
      v9 = 1;
    }

    vibration = [v5 vibration];

    if (vibration)
    {
      _vibrationManager = [(CNPropertyGroupAlertItem *)self _vibrationManager];
      vibration2 = [v5 vibration];
      v9 &= [_vibrationManager vibrationWithIdentifierIsValid:vibration2];
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (id)displayStringForValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (!valueCopy)
  {
    goto LABEL_25;
  }

  sound = [valueCopy sound];
  if (sound)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"ALERT_SOUND_LABEL_AND_VALUE" value:&stru_1F0CE7398 table:@"Localized"];
    _toneManager = [(CNPropertyGroupAlertItem *)self _toneManager];
    sound2 = [v5 sound];
    v12 = [_toneManager nameForToneIdentifier:sound2];
    v13 = [v7 stringWithFormat:v9, v12];
  }

  else
  {
    v13 = 0;
  }

  vibration = [v5 vibration];
  if (vibration)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = CNContactsUIBundle();
    v17 = [v16 localizedStringForKey:@"ALERT_VIBRATION_LABEL_AND_VALUE" value:&stru_1F0CE7398 table:@"Localized"];
    _vibrationManager = [(CNPropertyGroupAlertItem *)self _vibrationManager];
    vibration2 = [v5 vibration];
    v20 = [_vibrationManager nameOfVibrationWithIdentifier:vibration2];
    v21 = [v15 stringWithFormat:v17, v20];
  }

  else
  {
    v21 = 0;
  }

  if ([v5 ignoreMute])
  {
    v22 = CNContactsUIBundle();
    v23 = [v22 localizedStringForKey:@"ALERT_IGNORE_MUTE_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  }

  else
  {
    v23 = 0;
  }

  string = [MEMORY[0x1E696AD60] string];
  v25 = string;
  if (v13)
  {
    [string appendString:v13];
  }

  if (v21)
  {
    if ([v25 length])
    {
      [v25 appendString:@"\n"];
    }

    [v25 appendString:v21];
  }

  if (v23)
  {
    if ([v25 length])
    {
      [v25 appendString:@"\n"];
    }

    [v25 appendString:v23];
  }

  v26 = [v25 length] ? v25 : 0;

  if (!v26)
  {
LABEL_25:
    v27 = CNContactsUIBundle();
    v26 = [v27 localizedStringForKey:@"RINGTONE_CARD_ITEM_DEFAULT_VALUE" value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v26;
}

- (id)displayLabel
{
  property = [(CNPropertyGroupItem *)self property];
  v3 = [property isEqualToString:*MEMORY[0x1E695C1E0]];

  v4 = CNContactsUIBundle();
  v5 = v4;
  if (v3)
  {
    v6 = @"RINGTONE_CARD_ITEM_LABEL";
  }

  else
  {
    v6 = @"TEXTTONE_CARD_ITEM_LABEL";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F0CE7398 table:@"Localized"];

  return v7;
}

- (void)setLabeledValue:(id)value
{
  valueCopy = value;
  group = [(CNPropertyGroupItem *)self group];
  [group setLabeledValue:valueCopy];
}

- (id)labeledValue
{
  group = [(CNPropertyGroupItem *)self group];
  labeledValue = [group labeledValue];

  return labeledValue;
}

@end