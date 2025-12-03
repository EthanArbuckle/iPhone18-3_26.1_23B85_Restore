@interface EventImportData
+ (BOOL)isSessionManaged:(id)managed;
+ (BOOL)itemContainsCalendarICSData:(id)data;
+ (id)_extractEventDataFromEventICSData:(id)data;
+ (id)_extractEventDataFromMapKitItemData:(id)data;
+ (id)_extractEventDataFromReminderICSData:(id)data;
+ (id)_extractEventDataFromSpotlightIdentifier:(id)identifier;
+ (id)_extractEventDataFromURL:(id)l;
+ (id)_extractEventDataFromUTF8StringData:(id)data;
+ (id)acceptedTypeIdentifiers;
+ (id)eventImportDataFromData:(id)data forType:(id)type;
+ (void)extractEventImportDataFromDropSession:(id)session completionBlock:(id)block;
- (EventImportData)init;
@end

@implementation EventImportData

+ (id)acceptedTypeIdentifiers
{
  v6[7] = *MEMORY[0x1E69E9840];
  identifier = [*MEMORY[0x1E6983030] identifier];
  v6[5] = identifier;
  identifier2 = [*MEMORY[0x1E6983060] identifier];
  v6[6] = identifier2;
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

+ (void)extractEventImportDataFromDropSession:(id)session completionBlock:(id)block
{
  v48 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  blockCopy = block;
  acceptedTypeIdentifiers = [self acceptedTypeIdentifiers];
  selfCopy = self;
  v27 = [self isSessionManaged:sessionCopy];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  items = [sessionCopy items];
  v9 = [items countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v9)
  {

LABEL_26:
    blockCopy[2](blockCopy, 0);
    goto LABEL_27;
  }

  v10 = v9;
  v29 = blockCopy;
  v25 = sessionCopy;
  v11 = 0;
  v12 = *v43;
  v26 = v34;
  v30 = *v43;
  v31 = items;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v43 != v12)
      {
        objc_enumerationMutation(items);
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
        v15 = acceptedTypeIdentifiers;
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
              itemProvider = [v14 itemProvider];
              v22 = [itemProvider hasItemConformingToTypeIdentifier:v20];

              if (v22)
              {
                itemProvider2 = [v14 itemProvider];
                v33[0] = MEMORY[0x1E69E9820];
                v33[1] = 3221225472;
                v34[0] = __73__EventImportData_extractEventImportDataFromDropSession_completionBlock___block_invoke;
                v34[1] = &unk_1E8442418;
                v36 = selfCopy;
                v34[2] = v20;
                v37 = v27;
                v35 = v29;
                v24 = [itemProvider2 loadDataRepresentationForTypeIdentifier:v20 completionHandler:v33];

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
          items = v31;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    v10 = [items countByEnumeratingWithState:&v42 objects:v47 count:16];
  }

  while (v10);

  sessionCopy = v25;
  blockCopy = v29;
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

+ (BOOL)isSessionManaged:(id)managed
{
  managedCopy = managed;
  if ([managedCopy conformsToProtocol:&unk_1F4FD2C90])
  {
    v4 = managedCopy;
    v5 = [v4 _dataOwner] == 2 || objc_msgSend(v4, "_dataOwner") == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)itemContainsCalendarICSData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  dataCopy = data;
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
        itemProvider = [dataCopy itemProvider];
        LOBYTE(v8) = [itemProvider hasItemConformingToTypeIdentifier:v8];

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

+ (id)eventImportDataFromData:(id)data forType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  if ([typeCopy isEqualToString:@"com.apple.calendar.spotlight.identifier"])
  {
    v8 = [self _extractEventDataFromSpotlightIdentifier:dataCopy];
LABEL_6:
    v9 = v8;
    goto LABEL_7;
  }

  if (([typeCopy isEqualToString:@"com.apple.calendar.ics"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.ical.ics"))
  {
    v8 = [self _extractEventDataFromEventICSData:dataCopy];
    goto LABEL_6;
  }

  if ([typeCopy isEqualToString:@"com.apple.reminders.ics"])
  {
    v8 = [self _extractEventDataFromReminderICSData:dataCopy];
    goto LABEL_6;
  }

  identifier = [*MEMORY[0x1E6983030] identifier];
  v12 = [typeCopy isEqualToString:identifier];

  if (v12)
  {
    v8 = [self _extractEventDataFromURL:dataCopy];
    goto LABEL_6;
  }

  identifier2 = [*MEMORY[0x1E6983060] identifier];
  v14 = [typeCopy isEqualToString:identifier2];

  if (v14)
  {
    v8 = [self _extractEventDataFromUTF8StringData:dataCopy];
    goto LABEL_6;
  }

  if ([typeCopy isEqualToString:@"com.apple.mapkit.map-item"])
  {
    v8 = [self _extractEventDataFromMapKitItemData:dataCopy];
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_extractEventDataFromSpotlightIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithData:identifierCopy encoding:4];

  v6 = [v5 componentsSeparatedByString:@"."];
  firstObject = [v6 firstObject];
  v8 = objc_alloc_init(MEMORY[0x1E6966A18]);
  v9 = [v8 calendarItemWithIdentifier:firstObject];
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
          uniqueId = [v11 uniqueId];
          v17 = [v8 eventWithUniqueId:uniqueId occurrenceDate:v15];

          v12 = v9;
          if (v17)
          {
            v12 = v17;
          }
        }
      }
    }

    v11 = objc_opt_new();
    uniqueId2 = [v12 uniqueId];
    [v11 setUniqueId:uniqueId2];

    startDate = [v12 startDate];
    [v11 setStartDate:startDate];

    [v11 setRequestedAction:2];
  }

  else
  {
    v12 = 0;
  }

  return v11;
}

+ (id)_extractEventDataFromEventICSData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  [v4 setIcsData:dataCopy];

  [v4 setRequestedAction:1];

  return v4;
}

+ (id)_extractEventDataFromUTF8StringData:(id)data
{
  v3 = MEMORY[0x1E696AEC0];
  dataCopy = data;
  v5 = [[v3 alloc] initWithData:dataCopy encoding:4];

  v6 = objc_opt_new();
  [v6 setTitle:v5];
  [v6 setRequestedAction:0];

  return v6;
}

+ (id)_extractEventDataFromReminderICSData:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = [objc_alloc(MEMORY[0x1E6966A18]) initWithEKOptions:48];
  defaultCalendarForNewReminders = [v4 defaultCalendarForNewReminders];
  v6 = [v4 importICSData:dataCopy intoCalendar:defaultCalendarForNewReminders options:0xFFFFFFFF80000000];

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
      title = [v12 title];
      [v8 setTitle:title];

      notes = [v12 notes];
      [v8 setNotes:notes];

      dueDate = [v12 dueDate];
      [v8 setStartDate:dueDate];

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

+ (id)_extractEventDataFromURL:(id)l
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = *MEMORY[0x1E6983030];
  lCopy = l;
  identifier = [v4 identifier];
  v12 = 0;
  v7 = [v3 objectWithItemProviderData:lCopy typeIdentifier:identifier error:&v12];

  if (v7)
  {
    v8 = objc_opt_new();
    _title = [v7 _title];
    if (!_title)
    {
      _title = [v7 resourceSpecifier];
      if ([_title hasPrefix:@"//"])
      {
        v10 = [_title stringByReplacingCharactersInRange:0 withString:{2, &stru_1F4EF6790}];

        _title = v10;
      }
    }

    [v8 setTitle:_title];
    [v8 setURL:v7];
    [v8 setRequestedAction:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_extractEventDataFromMapKitItemData:(id)data
{
  v14 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v11 = 0;
  v4 = [EKWeakLinkClass() objectWithItemProviderData:dataCopy typeIdentifier:@"com.apple.mapkit.map-item" error:&v11];

  v5 = v11;
  if (v4)
  {
    v6 = objc_opt_new();
    name = [v4 name];
    [v6 setTitle:name];

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