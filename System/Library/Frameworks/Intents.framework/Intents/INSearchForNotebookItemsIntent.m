@interface INSearchForNotebookItemsIntent
- (BOOL)includeAllNoteContents;
- (CLPlacemark)location;
- (INDateComponentsRange)dateTime;
- (INDateSearchType)dateSearchType;
- (INLocationSearchType)locationSearchType;
- (INNotebookItemType)itemType;
- (INSearchForNotebookItemsIntent)initWithTitle:(INSpeakableString *)title content:(NSString *)content itemType:(INNotebookItemType)itemType status:(INTaskStatus)status location:(CLPlacemark *)location locationSearchType:(INLocationSearchType)locationSearchType dateTime:(INDateComponentsRange *)dateTime dateSearchType:(INDateSearchType)dateSearchType temporalEventTriggerTypes:(INTemporalEventTriggerTypeOptions)temporalEventTriggerTypes taskPriority:(INTaskPriority)taskPriority notebookItemIdentifier:(NSString *)notebookItemIdentifier;
- (INSpeakableString)groupName;
- (INSpeakableString)title;
- (INTaskPriority)taskPriority;
- (INTaskStatus)status;
- (INTemporalEventTriggerTypeOptions)temporalEventTriggerTypes;
- (NSString)content;
- (NSString)notebookItemIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setContent:(id)a3;
- (void)setDateSearchType:(int64_t)a3;
- (void)setDateTime:(id)a3;
- (void)setGroupName:(id)a3;
- (void)setIncludeAllNoteContents:(BOOL)a3;
- (void)setItemType:(int64_t)a3;
- (void)setLocation:(id)a3;
- (void)setLocationSearchType:(int64_t)a3;
- (void)setNotebookItemIdentifier:(id)a3;
- (void)setStatus:(int64_t)a3;
- (void)setTaskPriority:(int64_t)a3;
- (void)setTemporalEventTriggerTypes:(unint64_t)a3;
- (void)setTitle:(id)a3;
@end

@implementation INSearchForNotebookItemsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v13 = v6;
  v8 = [v7 copy];
  v9 = [v7 location];
  v10 = INIntentSlotValueRedactedLocationFromLocation(v9, a3, v13);
  [v8 setLocation:v10];

  v11 = [v7 dateTime];
  v12 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v11, a3);

  [v8 setDateTime:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v39[11] = *MEMORY[0x1E69E9840];
  v38[0] = @"title";
  v3 = [(INSearchForNotebookItemsIntent *)self title];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v3;
  v39[0] = v3;
  v38[1] = @"content";
  v5 = [(INSearchForNotebookItemsIntent *)self content];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v5;
  v39[1] = v5;
  v38[2] = @"itemType";
  v7 = [(INSearchForNotebookItemsIntent *)self itemType];
  if ((v7 - 1) > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E727DE20[v7 - 1];
  }

  v36 = v6;
  v35 = v8;
  v39[2] = v35;
  v38[3] = @"status";
  v9 = [(INSearchForNotebookItemsIntent *)self status];
  v10 = @"unknown";
  if (v9 == INTaskStatusCompleted)
  {
    v10 = @"completed";
  }

  if (v9 == INTaskStatusNotCompleted)
  {
    v10 = @"notCompleted";
  }

  v34 = v10;
  v39[3] = v34;
  v38[4] = @"location";
  v11 = [(INSearchForNotebookItemsIntent *)self location];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v39[4] = v11;
  v38[5] = @"locationSearchType";
  v13 = [(INSearchForNotebookItemsIntent *)self locationSearchType];
  v14 = @"unknown";
  if (v13 == INLocationSearchTypeByLocationTrigger)
  {
    v14 = @"byLocationTrigger";
  }

  v33 = v14;
  v39[5] = v33;
  v38[6] = @"dateTime";
  v15 = [(INSearchForNotebookItemsIntent *)self dateTime];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v39[6] = v16;
  v38[7] = @"dateSearchType";
  v17 = [(INSearchForNotebookItemsIntent *)self dateSearchType];
  if ((v17 - 1) > 2)
  {
    v18 = @"unknown";
  }

  else
  {
    v18 = off_1E7280730[v17 - 1];
  }

  v37 = v4;
  v19 = v18;
  v39[7] = v19;
  v38[8] = @"temporalEventTriggerTypes";
  v20 = INTemporalEventTriggerTypeOptionsGetNames([(INSearchForNotebookItemsIntent *)self temporalEventTriggerTypes]);
  v21 = v20;
  if (!v20)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = v21;
  v38[9] = @"taskPriority";
  v22 = [(INSearchForNotebookItemsIntent *)self taskPriority];
  v23 = @"unknown";
  if (v22 == INTaskPriorityFlagged)
  {
    v23 = @"flagged";
  }

  if (v22 == INTaskPriorityNotFlagged)
  {
    v23 = @"notFlagged";
  }

  v24 = v23;
  v39[9] = v24;
  v38[10] = @"notebookItemIdentifier";
  v25 = [(INSearchForNotebookItemsIntent *)self notebookItemIdentifier];
  v26 = v25;
  if (!v25)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v39[10] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:11];
  if (!v25)
  {
  }

  if (!v20)
  {
  }

  if (!v15)
  {
  }

  if (!v12)
  {
  }

  if (!v36)
  {
  }

  if (!v37)
  {
  }

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (void)setNotebookItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  [v5 setNotebookItemIdentifier:v4];
}

- (NSString)notebookItemIdentifier
{
  v2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v3 = [v2 notebookItemIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (void)setIncludeAllNoteContents:(BOOL)a3
{
  v3 = a3;
  v4 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3)
  {
    [v4 setIncludeAllNoteContents:1];
  }

  else
  {
    [v4 setHasIncludeAllNoteContents:0];
  }
}

- (BOOL)includeAllNoteContents
{
  v3 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  if ([v3 hasIncludeAllNoteContents])
  {
    v4 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
    v5 = [v4 includeAllNoteContents];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setGroupName:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setGroupName:v5];
}

- (INSpeakableString)groupName
{
  v2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v3 = [v2 groupName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setTaskPriority:(int64_t)a3
{
  v4 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 > 2)
  {
    [v4 setHasTaskPriority:0];
  }

  else
  {
    [v4 setTaskPriority:a3];
  }
}

- (INTaskPriority)taskPriority
{
  v3 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v4 = [v3 hasTaskPriority];
  v5 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v6 = [v5 taskPriority];
  v7 = v6 == 1;
  if (v6 == 2)
  {
    v7 = 2;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = INTaskPriorityUnknown;
  }

  return v8;
}

- (void)setTemporalEventTriggerTypes:(unint64_t)a3
{
  v5 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  [v5 clearTemporalEventTriggerTypes];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__INSearchForNotebookItemsIntent_setTemporalEventTriggerTypes___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INTemporalEventTriggerTypeOptionsEnumerateBackingTypes(a3, v6);
}

void __63__INSearchForNotebookItemsIntent_setTemporalEventTriggerTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addTemporalEventTriggerType:a2];
}

- (INTemporalEventTriggerTypeOptions)temporalEventTriggerTypes
{
  v3 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v4 = [v3 temporalEventTriggerTypesCount];

  v5 = 0;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
      v8 = [v7 temporalEventTriggerTypeAtIndex:i];
      v9 = v5 | 2;
      v10 = v5 | 1;
      if (v8 != 1)
      {
        v10 = v5;
      }

      if (v8 != 2)
      {
        v9 = v10;
      }

      if (v8 == 3)
      {
        v5 |= 4uLL;
      }

      else
      {
        v5 = v9;
      }
    }
  }

  return v5;
}

- (void)setDateSearchType:(int64_t)a3
{
  v4 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 <= 3)
  {
    [v4 setDateSearchType:(10 * a3)];
  }

  else
  {
    [v4 setHasDateSearchType:0];
  }
}

- (INDateSearchType)dateSearchType
{
  v3 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v4 = [v3 hasDateSearchType];
  v5 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v6 = [v5 dateSearchType];
  v7 = 3;
  v8 = 2;
  if (v6 != 20)
  {
    v8 = v6 == 10;
  }

  if (v6 != 30)
  {
    v7 = v8;
  }

  if (v4)
  {
    v9 = v7;
  }

  else
  {
    v9 = INDateSearchTypeUnknown;
  }

  return v9;
}

- (void)setDateTime:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setDateTime:v5];
}

- (INDateComponentsRange)dateTime
{
  v2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v3 = [v2 dateTime];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (void)setLocationSearchType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 10;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasLocationSearchType:0];
  }

  else
  {
    [v5 setLocationSearchType:v4];
  }
}

- (INLocationSearchType)locationSearchType
{
  v3 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  LODWORD(v4) = [v3 hasLocationSearchType];
  v5 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  if ([v5 locationSearchType] == 10)
  {
    v4 = v4;
  }

  else
  {
    v4 = INLocationSearchTypeUnknown;
  }

  return v4;
}

- (void)setLocation:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(v4);

  [v6 setLocation:v5];
}

- (CLPlacemark)location
{
  v2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v3 = [v2 location];
  v4 = INIntentSlotValueTransformFromLocation(v3);

  return v4;
}

- (void)setStatus:(int64_t)a3
{
  v4 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 <= 2)
  {
    [v4 setStatus:(10 * a3)];
  }

  else
  {
    [v4 setHasStatus:0];
  }
}

- (INTaskStatus)status
{
  v3 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v4 = [v3 hasStatus];
  v5 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v6 = [v5 status];
  v7 = v6 == 10;
  if (v6 == 20)
  {
    v7 = 2;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = INTaskStatusUnknown;
  }

  return v8;
}

- (void)setItemType:(int64_t)a3
{
  v4 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 <= 3)
  {
    [v4 setItemType:(10 * a3)];
  }

  else
  {
    [v4 setHasItemType:0];
  }
}

- (INNotebookItemType)itemType
{
  v3 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v4 = [v3 hasItemType];
  v5 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v6 = [v5 itemType];
  v7 = 3;
  v8 = 2;
  if (v6 != 20)
  {
    v8 = v6 == 10;
  }

  if (v6 != 30)
  {
    v7 = v8;
  }

  if (v4)
  {
    v9 = v7;
  }

  else
  {
    v9 = INNotebookItemTypeUnknown;
  }

  return v9;
}

- (void)setContent:(id)a3
{
  v4 = a3;
  v5 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  [v5 setContent:v4];
}

- (NSString)content
{
  v2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v3 = [v2 content];
  v4 = [v3 copy];

  return v4;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setTitle:v5];
}

- (INSpeakableString)title
{
  v2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v3 = [v2 title];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (INSearchForNotebookItemsIntent)initWithTitle:(INSpeakableString *)title content:(NSString *)content itemType:(INNotebookItemType)itemType status:(INTaskStatus)status location:(CLPlacemark *)location locationSearchType:(INLocationSearchType)locationSearchType dateTime:(INDateComponentsRange *)dateTime dateSearchType:(INDateSearchType)dateSearchType temporalEventTriggerTypes:(INTemporalEventTriggerTypeOptions)temporalEventTriggerTypes taskPriority:(INTaskPriority)taskPriority notebookItemIdentifier:(NSString *)notebookItemIdentifier
{
  v19 = title;
  v20 = content;
  v21 = location;
  v22 = dateTime;
  v23 = notebookItemIdentifier;
  v27.receiver = self;
  v27.super_class = INSearchForNotebookItemsIntent;
  v24 = [(INIntent *)&v27 init];
  v25 = v24;
  if (v24)
  {
    [(INSearchForNotebookItemsIntent *)v24 setTitle:v19];
    [(INSearchForNotebookItemsIntent *)v25 setContent:v20];
    [(INSearchForNotebookItemsIntent *)v25 setItemType:itemType];
    [(INSearchForNotebookItemsIntent *)v25 setStatus:status];
    [(INSearchForNotebookItemsIntent *)v25 setLocation:v21];
    [(INSearchForNotebookItemsIntent *)v25 setLocationSearchType:locationSearchType];
    [(INSearchForNotebookItemsIntent *)v25 setDateTime:v22];
    [(INSearchForNotebookItemsIntent *)v25 setDateSearchType:dateSearchType];
    [(INSearchForNotebookItemsIntent *)v25 setTemporalEventTriggerTypes:temporalEventTriggerTypes];
    [(INSearchForNotebookItemsIntent *)v25 setTaskPriority:taskPriority];
    [(INSearchForNotebookItemsIntent *)v25 setNotebookItemIdentifier:v23];
  }

  return v25;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v3 = [v2 intentMetadata];

  return v3;
}

- (id)_typedBackingStore
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end