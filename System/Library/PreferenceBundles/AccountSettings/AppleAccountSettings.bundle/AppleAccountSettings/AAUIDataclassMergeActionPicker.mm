@interface AAUIDataclassMergeActionPicker
- (id)descriptionForDataclassAction:(id)action;
- (id)message;
- (id)title;
@end

@implementation AAUIDataclassMergeActionPicker

- (id)title
{
  if (self->_isPerformingBatchMerge)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"BATCH_MERGE_TITLE" value:&stru_5A5F0 table:@"Localizable"];
    v4 = [NSString stringWithFormat:v3, @"iCloud"];
  }

  else
  {
    affectedDataclasses = [(AAUIDataclassMergeActionPicker *)self affectedDataclasses];
    lastObject = [affectedDataclasses lastObject];
    v2 = [ACUILocalization localizedTitleForDataclass:lastObject];

    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v3 localizedStringForKey:@"MERGE_DATA_TO_SERVER_TITLE" value:&stru_5A5F0 table:@"Localizable"];
    v4 = [NSString stringWithFormat:v7, v2];
  }

  return v4;
}

- (id)message
{
  affectedDataclasses = [(AAUIDataclassMergeActionPicker *)self affectedDataclasses];
  v4 = [ACUILocalization localizedTextForDataclasses:affectedDataclasses usedAtBeginningOfSentence:0];

  if (self->_isPerformingBatchMerge)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"BATCH_MERGE_FORMAT"];
    v7 = [v5 localizedStringForKey:v6 value:&stru_5A5F0 table:@"Localizable"];

    v8 = [NSString stringWithFormat:v7, v4, @"iCloud"];
    goto LABEL_18;
  }

  affectedDataclasses2 = [(AAUIDataclassMergeActionPicker *)self affectedDataclasses];
  lastObject = [affectedDataclasses2 lastObject];
  v7 = [ACUILocalization localizedReferenceToLocalSourceOfDataclass:lastObject];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"MERGE_DATA_TO_SERVER" value:&stru_5A5F0 table:@"Localizable"];
  v8 = [NSString stringWithFormat:v12, v4, @"iCloud"];

  if (self->_isTetheredSyncingEnabled && !self->_isAnotherAccountSyncingDataclass)
  {
    if ([(NSString *)self->_tetheredSyncingSource isEqualToString:@"OSX"])
    {
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = v17;
      v18 = @"MERGE_TETHERED_DATA_TO_SERVER_MAC";
    }

    else
    {
      if (![(NSString *)self->_tetheredSyncingSource isEqualToString:@"Windows"])
      {
        goto LABEL_16;
      }

      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = v17;
      v18 = @"MERGE_TETHERED_DATA_TO_SERVER_PC";
    }

    v14 = [v17 localizedStringForKey:v18 value:&stru_5A5F0 table:@"Localizable"];
    [NSString stringWithFormat:v14, v4, @"iCloud"];
    goto LABEL_14;
  }

  if (!self->_isDataclassSyncingUsingExchangeOnly)
  {
    if (!self->_isAnotherAccountSyncingDataclass)
    {
      goto LABEL_16;
    }

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"MERGE_DATA_TO_SERVER_OTHER_OTA_ENABLED" value:&stru_5A5F0 table:@"Localizable"];
    [NSString stringWithFormat:v14, v4, @"iCloud"];
    v16 = LABEL_14:;
    goto LABEL_15;
  }

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MERGE_DATA_TO_SERVER_EAS_PRESENT"];
  v15 = [v13 localizedStringForKey:v14 value:&stru_5A5F0 table:@"Localizable"];
  v16 = [NSString stringWithFormat:v15, v4, @"iCloud"];

  v8 = v15;
LABEL_15:

  v8 = v16;
LABEL_16:
  if (self->_localStoreHasReadOnlyCalendars)
  {
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"READ_ONLY_CALENDARS_WILL_BE_DELETED" value:&stru_5A5F0 table:@"Localizable"];
    v21 = [NSString stringWithFormat:v20, v7];
    v22 = [NSString stringWithFormat:@"%@ %@", v8, v21];

    v8 = v22;
  }

LABEL_18:

  return v8;
}

- (id)descriptionForDataclassAction:(id)action
{
  actionCopy = action;
  v5 = actionCopy;
  if (self->_isPerformingBatchMerge)
  {
    if ([actionCopy type] == &dword_4 + 1)
    {
      v6 = @"BATCH_MERGE_OK_BUTTON";
      goto LABEL_6;
    }

    if (![v5 type])
    {
      v6 = @"BATCH_MERGE_CANCEL_BUTTON";
LABEL_6:
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:v6 value:&stru_5A5F0 table:@"Localizable"];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  v10.receiver = self;
  v10.super_class = AAUIDataclassMergeActionPicker;
  v8 = [(AAUIDataclassMergeActionPicker *)&v10 descriptionForDataclassAction:v5];
LABEL_8:

  return v8;
}

@end