@interface EventImportData
+ (BOOL)isSessionManaged:(id)a3;
+ (BOOL)itemContainsCalendarICSData:(id)a3;
+ (id)_extractEventDataFromEventICSData:(id)a3;
+ (id)_extractEventDataFromMapKitItemData:(id)a3;
+ (id)_extractEventDataFromReminderICSData:(id)a3;
+ (id)_extractEventDataFromSpotlightIdentifier:(id)a3;
+ (id)_extractEventDataFromURL:(id)a3;
+ (id)_extractEventDataFromUTF8StringData:(id)a3;
+ (id)acceptedTypeIdentifiers;
+ (id)eventImportDataFromData:(id)a3 forType:(id)a4;
+ (void)extractEventImportDataFromDropSession:(id)a3 completionBlock:(id)a4;
- (EventImportData)init;
@end

@implementation EventImportData

+ (id)acceptedTypeIdentifiers
{
  v6[7] = *MEMORY[0x1E69E9840];
  v2 = [*MEMORY[0x1E6983030] identifier];
  v6[5] = v2;
  v3 = [*MEMORY[0x1E6983060] identifier];
  v6[6] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:7];

  return v4;
}

- (EventImportData)init
{
  v3.receiver = self;
  v3.super_class = EventImportData;
  result = [(EventImportData *)&v3 init];
  if (result)
  {
    result->_requestedAction = 0;
  }

  return result;
}

+ (void)extractEventImportDataFromDropSession:(id)a3 completionBlock:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v32 = [a1 acceptedTypeIdentifiers];
  v28 = a1;
  v27 = [a1 isSessionManaged:v6];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = [v6 items];
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v9)
  {

LABEL_26:
    v7[2](v7, 0);
    goto LABEL_27;
  }

  v10 = v9;
  v29 = v7;
  v25 = v6;
  v11 = 0;
  v12 = *v43;
  v26 = v34;
  v30 = *v43;
  v31 = v8;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v43 != v12)
      {
        objc_enumerationMutation(v8);
      }

      if (v11)
      {
        v11 = 1;
      }

      else
      {
        v14 = *(*(&v42 + 1) + 8 * i);
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v15 = v32;
        v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v39;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v39 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v38 + 1) + 8 * j);
              v21 = [v14 itemProvider];
              v22 = [v21 hasItemConformingToTypeIdentifier:v20];

              if (v22)
              {
                v23 = [v14 itemProvider];
                v33[0] = MEMORY[0x1E69E9820];
                v33[1] = 3221225472;
                v34[0] = __73__EventImportData_extractEventImportDataFromDropSession_completionBlock___block_invoke;
                v34[1] = &unk_1E8442418;
                v36 = v28;
                v34[2] = v20;
                v37 = v27;
                v35 = v29;
                v24 = [v23 loadDataRepresentationForTypeIdentifier:v20 completionHandler:v33];

                v11 = 1;
                goto LABEL_18;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }

          v11 = 0;
LABEL_18:
          v12 = v30;
          v8 = v31;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
  }

  while (v10);

  v6 = v25;
  v7 = v29;
  if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_27:
}

void __73__EventImportData_extractEventImportDataFromDropSession_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 48) eventImportDataFromData:a2 forType:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v3 setPrefersManagedCalendar:*(a1 + 56)];
  (*(*(a1 + 40) + 16))();
}

+ (BOOL)isSessionManaged:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_1F4FD2C90])
  {
    v4 = v3;
    v5 = [v4 _dataOwner] == 2 || objc_msgSend(v4, "_dataOwner") == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)itemContainsCalendarICSData:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [MEMORY[0x1E695DEC8] arrayWithObjects:{@"com.apple.calendar.ics", @"com.apple.ical.ics", 0}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v3 itemProvider];
        LOBYTE(v8) = [v9 hasItemConformingToTypeIdentifier:v8];

        if (v8)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (id)eventImportDataFromData:(id)a3 forType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"com.apple.calendar.spotlight.identifier"])
  {
    v8 = [a1 _extractEventDataFromSpotlightIdentifier:v6];
LABEL_6:
    v9 = v8;
    goto LABEL_7;
  }

  if (([v7 isEqualToString:@"com.apple.calendar.ics"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"com.apple.ical.ics"))
  {
    v8 = [a1 _extractEventDataFromEventICSData:v6];
    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"com.apple.reminders.ics"])
  {
    v8 = [a1 _extractEventDataFromReminderICSData:v6];
    goto LABEL_6;
  }

  v11 = [*MEMORY[0x1E6983030] identifier];
  v12 = [v7 isEqualToString:v11];

  if (v12)
  {
    v8 = [a1 _extractEventDataFromURL:v6];
    goto LABEL_6;
  }

  v13 = [*MEMORY[0x1E6983060] identifier];
  v14 = [v7 isEqualToString:v13];

  if (v14)
  {
    v8 = [a1 _extractEventDataFromUTF8StringData:v6];
    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"com.apple.mapkit.map-item"])
  {
    v8 = [a1 _extractEventDataFromMapKitItemData:v6];
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_extractEventDataFromSpotlightIdentifier:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4 encoding:4];

  v6 = [v5 componentsSeparatedByString:@"."];
  v7 = [v6 firstObject];
  v8 = objc_alloc_init(MEMORY[0x1E6966A18]);
  v9 = [v8 calendarItemWithIdentifier:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v11)
  {
    v12 = v9;
    if ([v6 count] >= 2)
    {
      v12 = v9;
      if ([v11 hasRecurrenceRules])
      {
        v13 = [v6 objectAtIndex:1];
        [v13 doubleValue];
        v12 = v9;
        if (v14 > 1.0)
        {
          v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
          v16 = [v11 uniqueId];
          v17 = [v8 eventWithUniqueId:v16 occurrenceDate:v15];

          v12 = v9;
          if (v17)
          {
            v12 = v17;
          }
        }
      }
    }

    v11 = objc_opt_new();
    v18 = [v12 uniqueId];
    [v11 setUniqueId:v18];

    v19 = [v12 startDate];
    [v11 setStartDate:v19];

    [v11 setRequestedAction:2];
  }

  else
  {
    v12 = 0;
  }

  return v11;
}

+ (id)_extractEventDataFromEventICSData:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setIcsData:v3];

  [v4 setRequestedAction:1];

  return v4;
}

+ (id)_extractEventDataFromUTF8StringData:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4 encoding:4];

  v6 = objc_opt_new();
  [v6 setTitle:v5];
  [v6 setRequestedAction:0];

  return v6;
}

+ (id)_extractEventDataFromReminderICSData:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E6966A18]) initWithEKOptions:48];
  v5 = [v4 defaultCalendarForNewReminders];
  v6 = [v4 importICSData:v3 intoCalendar:v5 options:0xFFFFFFFF80000000];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v11;

    if (v12)
    {
      v8 = objc_opt_new();
      v13 = [v12 title];
      [v8 setTitle:v13];

      v14 = [v12 notes];
      [v8 setNotes:v14];

      v15 = [v12 dueDate];
      [v8 setStartDate:v15];

      [v8 setRequestedAction:0];
      goto LABEL_12;
    }

    v8 = 0;
  }

  else
  {
LABEL_9:
    v12 = v7;
LABEL_12:
  }

  return v8;
}

+ (id)_extractEventDataFromURL:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = *MEMORY[0x1E6983030];
  v5 = a3;
  v6 = [v4 identifier];
  v12 = 0;
  v7 = [v3 objectWithItemProviderData:v5 typeIdentifier:v6 error:&v12];

  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [v7 _title];
    if (!v9)
    {
      v9 = [v7 resourceSpecifier];
      if ([v9 hasPrefix:@"//"])
      {
        v10 = [v9 stringByReplacingCharactersInRange:0 withString:{2, &stru_1F4EF6790}];

        v9 = v10;
      }
    }

    [v8 setTitle:v9];
    [v8 setURL:v7];
    [v8 setRequestedAction:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_extractEventDataFromMapKitItemData:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0;
  v4 = [EKWeakLinkClass() objectWithItemProviderData:v3 typeIdentifier:@"com.apple.mapkit.map-item" error:&v11];

  v5 = v11;
  if (v4)
  {
    v6 = objc_opt_new();
    v7 = [v4 name];
    [v6 setTitle:v7];

    v8 = [MEMORY[0x1E6966B08] locationWithMapItem:v4];
    [v6 setStructuredLocation:v8];

    [v6 setRequestedAction:0];
  }

  else
  {
    v9 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_ERROR, "Unable to import mapkit data from drop. Error: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

@end