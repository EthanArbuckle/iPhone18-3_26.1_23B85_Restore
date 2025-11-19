@interface AAUIDataclassMergeActionPicker
- (id)descriptionForDataclassAction:(id)a3;
- (id)message;
- (id)title;
@end

@implementation AAUIDataclassMergeActionPicker

- (id)title
{
  if (self->_isPerformingBatchMerge)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"BATCH_MERGE_TITLE" value:&stru_1F447F790 table:@"Localizable"];
    v5 = [v2 stringWithFormat:v4, @"iCloud"];
  }

  else
  {
    v6 = MEMORY[0x1E69898E0];
    v7 = [(ACUIDataclassActionPicker *)self affectedDataclasses];
    v8 = [v7 lastObject];
    v3 = [v6 localizedTitleForDataclass:v8];

    v9 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v4 localizedStringForKey:@"MERGE_DATA_TO_SERVER_TITLE" value:&stru_1F447F790 table:@"Localizable"];
    v5 = [v9 stringWithFormat:v10, v3];
  }

  return v5;
}

- (id)message
{
  v3 = MEMORY[0x1E69898E0];
  v4 = [(ACUIDataclassActionPicker *)self affectedDataclasses];
  v5 = [v3 localizedTextForDataclasses:v4 usedAtBeginningOfSentence:0];

  if (self->_isPerformingBatchMerge)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"BATCH_MERGE_FORMAT"];
    v8 = [v6 localizedStringForKey:v7 value:&stru_1F447F790 table:@"Localizable"];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:v8, v5, @"iCloud"];
    goto LABEL_18;
  }

  v10 = MEMORY[0x1E69898E0];
  v11 = [(ACUIDataclassActionPicker *)self affectedDataclasses];
  v12 = [v11 lastObject];
  v8 = [v10 localizedReferenceToLocalSourceOfDataclass:v12];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"MERGE_DATA_TO_SERVER" value:&stru_1F447F790 table:@"Localizable"];
  v9 = [v13 stringWithFormat:v15, v5, @"iCloud"];

  if (self->_isTetheredSyncingEnabled && !self->_isAnotherAccountSyncingDataclass)
  {
    if ([(NSString *)self->_tetheredSyncingSource isEqualToString:@"OSX"])
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v17 = v23;
      v24 = @"MERGE_TETHERED_DATA_TO_SERVER_MAC";
    }

    else
    {
      if (![(NSString *)self->_tetheredSyncingSource isEqualToString:@"Windows"])
      {
        goto LABEL_16;
      }

      v22 = MEMORY[0x1E696AEC0];
      v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v17 = v23;
      v24 = @"MERGE_TETHERED_DATA_TO_SERVER_PC";
    }

    v18 = [v23 localizedStringForKey:v24 value:&stru_1F447F790 table:@"Localizable"];
    [v22 stringWithFormat:v18, v5, @"iCloud"];
    goto LABEL_14;
  }

  if (!self->_isDataclassSyncingUsingExchangeOnly)
  {
    if (!self->_isAnotherAccountSyncingDataclass)
    {
      goto LABEL_16;
    }

    v21 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"MERGE_DATA_TO_SERVER_OTHER_OTA_ENABLED" value:&stru_1F447F790 table:@"Localizable"];
    [v21 stringWithFormat:v18, v5, @"iCloud"];
    v20 = LABEL_14:;
    goto LABEL_15;
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v18 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"MERGE_DATA_TO_SERVER_EAS_PRESENT"];
  v19 = [v17 localizedStringForKey:v18 value:&stru_1F447F790 table:@"Localizable"];
  v20 = [v16 stringWithFormat:v19, v5, @"iCloud"];

  v9 = v19;
LABEL_15:

  v9 = v20;
LABEL_16:
  if (self->_localStoreHasReadOnlyCalendars)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"READ_ONLY_CALENDARS_WILL_BE_DELETED" value:&stru_1F447F790 table:@"Localizable"];
    v28 = [v25 stringWithFormat:v27, v8];
    v29 = [v25 stringWithFormat:@"%@ %@", v9, v28];

    v9 = v29;
  }

LABEL_18:

  return v9;
}

- (id)descriptionForDataclassAction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isPerformingBatchMerge)
  {
    if ([v4 type] == 5)
    {
      v6 = @"BATCH_MERGE_OK_BUTTON";
      goto LABEL_6;
    }

    if (![v5 type])
    {
      v6 = @"BATCH_MERGE_CANCEL_BUTTON";
LABEL_6:
      v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:v6 value:&stru_1F447F790 table:@"Localizable"];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  v10.receiver = self;
  v10.super_class = AAUIDataclassMergeActionPicker;
  v8 = [(ACUIDataclassActionPicker *)&v10 descriptionForDataclassAction:v5];
LABEL_8:

  return v8;
}

@end