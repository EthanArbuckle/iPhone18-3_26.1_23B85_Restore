@interface CNPropertyGroupAlertItem
+ (id)emptyValueForLabel:(id)a3;
- (BOOL)isEquivalentToItem:(id)a3 whenEditing:(BOOL)a4;
- (BOOL)isValidValue:(id)a3;
- (id)_toneManager;
- (id)_vibrationManager;
- (id)description;
- (id)displayLabel;
- (id)displayStringForValue:(id)a3;
- (id)labeledValue;
- (id)replacementForInvalidValue:(id)a3;
- (void)setLabeledValue:(id)a3;
@end

@implementation CNPropertyGroupAlertItem

+ (id)emptyValueForLabel:(id)a3
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
  v4 = [v2 sharedVibrationManager];

  return v4;
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
  v4 = [v2 sharedToneManager];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CNPropertyGroupItem *)self property];
  v6 = [(CNPropertyGroupAlertItem *)self labeledValue];
  v7 = [v6 value];
  v8 = [v3 stringWithFormat:@"<%@ %p> [%@] %@", v4, self, v5, v7];

  return v8;
}

- (BOOL)isEquivalentToItem:(id)a3 whenEditing:(BOOL)a4
{
  v5 = a3;
  v6 = [(CNPropertyGroupItem *)self property];
  v7 = [v5 property];
  if ([v6 isEqualToString:v7])
  {
    v8 = [(CNPropertyGroupAlertItem *)self labeledValue];
    v9 = [v8 value];
    v10 = [v5 labeledValue];
    v11 = [v10 value];
    v12 = [v9 isEqual:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)replacementForInvalidValue:(id)a3
{
  v4 = a3;
  v5 = [v4 sound];
  v6 = [v4 vibration];
  if (v4)
  {
    if (v5)
    {
      v7 = [(CNPropertyGroupAlertItem *)self _toneManager];
      v8 = [v4 sound];
      v9 = [v7 toneWithIdentifierIsValid:v8];

      if ((v9 & 1) == 0)
      {

        v5 = 0;
      }
    }

    if (v6)
    {
      v10 = [(CNPropertyGroupAlertItem *)self _vibrationManager];
      v11 = [v4 vibration];
      v12 = [v10 vibrationWithIdentifierIsValid:v11];

      if ((v12 & 1) == 0)
      {

        v6 = 0;
      }
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E695CD18]) initWithSound:v5 vibration:v6 ignoreMute:{objc_msgSend(v4, "ignoreMute")}];

  return v13;
}

- (BOOL)isValidValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 sound];

    if (v6)
    {
      v7 = [(CNPropertyGroupAlertItem *)self _toneManager];
      v8 = [v5 sound];
      v9 = [v7 toneWithIdentifierIsValid:v8];
    }

    else
    {
      v9 = 1;
    }

    v10 = [v5 vibration];

    if (v10)
    {
      v11 = [(CNPropertyGroupAlertItem *)self _vibrationManager];
      v12 = [v5 vibration];
      v9 &= [v11 vibrationWithIdentifierIsValid:v12];
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (id)displayStringForValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_25;
  }

  v6 = [v4 sound];
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"ALERT_SOUND_LABEL_AND_VALUE" value:&stru_1F0CE7398 table:@"Localized"];
    v10 = [(CNPropertyGroupAlertItem *)self _toneManager];
    v11 = [v5 sound];
    v12 = [v10 nameForToneIdentifier:v11];
    v13 = [v7 stringWithFormat:v9, v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v5 vibration];
  if (v14)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = CNContactsUIBundle();
    v17 = [v16 localizedStringForKey:@"ALERT_VIBRATION_LABEL_AND_VALUE" value:&stru_1F0CE7398 table:@"Localized"];
    v18 = [(CNPropertyGroupAlertItem *)self _vibrationManager];
    v19 = [v5 vibration];
    v20 = [v18 nameOfVibrationWithIdentifier:v19];
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

  v24 = [MEMORY[0x1E696AD60] string];
  v25 = v24;
  if (v13)
  {
    [v24 appendString:v13];
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
  v2 = [(CNPropertyGroupItem *)self property];
  v3 = [v2 isEqualToString:*MEMORY[0x1E695C1E0]];

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

- (void)setLabeledValue:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyGroupItem *)self group];
  [v5 setLabeledValue:v4];
}

- (id)labeledValue
{
  v2 = [(CNPropertyGroupItem *)self group];
  v3 = [v2 labeledValue];

  return v3;
}

@end