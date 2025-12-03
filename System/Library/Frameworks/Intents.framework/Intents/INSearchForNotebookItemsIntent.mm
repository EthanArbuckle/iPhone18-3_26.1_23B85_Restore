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
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setContent:(id)content;
- (void)setDateSearchType:(int64_t)type;
- (void)setDateTime:(id)time;
- (void)setGroupName:(id)name;
- (void)setIncludeAllNoteContents:(BOOL)contents;
- (void)setItemType:(int64_t)type;
- (void)setLocation:(id)location;
- (void)setLocationSearchType:(int64_t)type;
- (void)setNotebookItemIdentifier:(id)identifier;
- (void)setStatus:(int64_t)status;
- (void)setTaskPriority:(int64_t)priority;
- (void)setTemporalEventTriggerTypes:(unint64_t)types;
- (void)setTitle:(id)title;
@end

@implementation INSearchForNotebookItemsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v13 = idCopy;
  v8 = [_typedBackingStore copy];
  location = [_typedBackingStore location];
  v10 = INIntentSlotValueRedactedLocationFromLocation(location, options, v13);
  [v8 setLocation:v10];

  dateTime = [_typedBackingStore dateTime];
  v12 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(dateTime, options);

  [v8 setDateTime:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v39[11] = *MEMORY[0x1E69E9840];
  v38[0] = @"title";
  title = [(INSearchForNotebookItemsIntent *)self title];
  v4 = title;
  if (!title)
  {
    title = [MEMORY[0x1E695DFB0] null];
  }

  v32 = title;
  v39[0] = title;
  v38[1] = @"content";
  content = [(INSearchForNotebookItemsIntent *)self content];
  v6 = content;
  if (!content)
  {
    content = [MEMORY[0x1E695DFB0] null];
  }

  v31 = content;
  v39[1] = content;
  v38[2] = @"itemType";
  itemType = [(INSearchForNotebookItemsIntent *)self itemType];
  if ((itemType - 1) > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E727DE20[itemType - 1];
  }

  v36 = v6;
  v35 = v8;
  v39[2] = v35;
  v38[3] = @"status";
  status = [(INSearchForNotebookItemsIntent *)self status];
  v10 = @"unknown";
  if (status == INTaskStatusCompleted)
  {
    v10 = @"completed";
  }

  if (status == INTaskStatusNotCompleted)
  {
    v10 = @"notCompleted";
  }

  v34 = v10;
  v39[3] = v34;
  v38[4] = @"location";
  location = [(INSearchForNotebookItemsIntent *)self location];
  v12 = location;
  if (!location)
  {
    location = [MEMORY[0x1E695DFB0] null];
  }

  v39[4] = location;
  v38[5] = @"locationSearchType";
  locationSearchType = [(INSearchForNotebookItemsIntent *)self locationSearchType];
  v14 = @"unknown";
  if (locationSearchType == INLocationSearchTypeByLocationTrigger)
  {
    v14 = @"byLocationTrigger";
  }

  v33 = v14;
  v39[5] = v33;
  v38[6] = @"dateTime";
  dateTime = [(INSearchForNotebookItemsIntent *)self dateTime];
  null = dateTime;
  if (!dateTime)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v39[6] = null;
  v38[7] = @"dateSearchType";
  dateSearchType = [(INSearchForNotebookItemsIntent *)self dateSearchType];
  if ((dateSearchType - 1) > 2)
  {
    v18 = @"unknown";
  }

  else
  {
    v18 = off_1E7280730[dateSearchType - 1];
  }

  v37 = v4;
  v19 = v18;
  v39[7] = v19;
  v38[8] = @"temporalEventTriggerTypes";
  v20 = INTemporalEventTriggerTypeOptionsGetNames([(INSearchForNotebookItemsIntent *)self temporalEventTriggerTypes]);
  null2 = v20;
  if (!v20)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = null2;
  v38[9] = @"taskPriority";
  taskPriority = [(INSearchForNotebookItemsIntent *)self taskPriority];
  v23 = @"unknown";
  if (taskPriority == INTaskPriorityFlagged)
  {
    v23 = @"flagged";
  }

  if (taskPriority == INTaskPriorityNotFlagged)
  {
    v23 = @"notFlagged";
  }

  v24 = v23;
  v39[9] = v24;
  v38[10] = @"notebookItemIdentifier";
  notebookItemIdentifier = [(INSearchForNotebookItemsIntent *)self notebookItemIdentifier];
  null3 = notebookItemIdentifier;
  if (!notebookItemIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v39[10] = null3;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:11];
  if (!notebookItemIdentifier)
  {
  }

  if (!v20)
  {
  }

  if (!dateTime)
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

- (void)setNotebookItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  [_typedBackingStore setNotebookItemIdentifier:identifierCopy];
}

- (NSString)notebookItemIdentifier
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  notebookItemIdentifier = [_typedBackingStore notebookItemIdentifier];
  v4 = [notebookItemIdentifier copy];

  return v4;
}

- (void)setIncludeAllNoteContents:(BOOL)contents
{
  contentsCopy = contents;
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (contentsCopy)
  {
    [_typedBackingStore setIncludeAllNoteContents:1];
  }

  else
  {
    [_typedBackingStore setHasIncludeAllNoteContents:0];
  }
}

- (BOOL)includeAllNoteContents
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasIncludeAllNoteContents])
  {
    _typedBackingStore2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
    includeAllNoteContents = [_typedBackingStore2 includeAllNoteContents];
  }

  else
  {
    includeAllNoteContents = 0;
  }

  return includeAllNoteContents;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setGroupName:v5];
}

- (INSpeakableString)groupName
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  groupName = [_typedBackingStore groupName];
  v4 = INIntentSlotValueTransformFromDataString(groupName);

  return v4;
}

- (void)setTaskPriority:(int64_t)priority
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (priority > 2)
  {
    [_typedBackingStore setHasTaskPriority:0];
  }

  else
  {
    [_typedBackingStore setTaskPriority:priority];
  }
}

- (INTaskPriority)taskPriority
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  hasTaskPriority = [_typedBackingStore hasTaskPriority];
  _typedBackingStore2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  taskPriority = [_typedBackingStore2 taskPriority];
  v7 = taskPriority == 1;
  if (taskPriority == 2)
  {
    v7 = 2;
  }

  if (hasTaskPriority)
  {
    v8 = v7;
  }

  else
  {
    v8 = INTaskPriorityUnknown;
  }

  return v8;
}

- (void)setTemporalEventTriggerTypes:(unint64_t)types
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  [_typedBackingStore clearTemporalEventTriggerTypes];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__INSearchForNotebookItemsIntent_setTemporalEventTriggerTypes___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INTemporalEventTriggerTypeOptionsEnumerateBackingTypes(types, v6);
}

void __63__INSearchForNotebookItemsIntent_setTemporalEventTriggerTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addTemporalEventTriggerType:a2];
}

- (INTemporalEventTriggerTypeOptions)temporalEventTriggerTypes
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  temporalEventTriggerTypesCount = [_typedBackingStore temporalEventTriggerTypesCount];

  v5 = 0;
  if (temporalEventTriggerTypesCount)
  {
    for (i = 0; i != temporalEventTriggerTypesCount; ++i)
    {
      _typedBackingStore2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
      v8 = [_typedBackingStore2 temporalEventTriggerTypeAtIndex:i];
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

- (void)setDateSearchType:(int64_t)type
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (type <= 3)
  {
    [_typedBackingStore setDateSearchType:(10 * type)];
  }

  else
  {
    [_typedBackingStore setHasDateSearchType:0];
  }
}

- (INDateSearchType)dateSearchType
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  hasDateSearchType = [_typedBackingStore hasDateSearchType];
  _typedBackingStore2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  dateSearchType = [_typedBackingStore2 dateSearchType];
  v7 = 3;
  v8 = 2;
  if (dateSearchType != 20)
  {
    v8 = dateSearchType == 10;
  }

  if (dateSearchType != 30)
  {
    v7 = v8;
  }

  if (hasDateSearchType)
  {
    v9 = v7;
  }

  else
  {
    v9 = INDateSearchTypeUnknown;
  }

  return v9;
}

- (void)setDateTime:(id)time
{
  timeCopy = time;
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(timeCopy);

  [_typedBackingStore setDateTime:v5];
}

- (INDateComponentsRange)dateTime
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  dateTime = [_typedBackingStore dateTime];
  v4 = INIntentSlotValueTransformFromDateTimeRange(dateTime);

  return v4;
}

- (void)setLocationSearchType:(int64_t)type
{
  if (type == 1)
  {
    v3 = 10;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (type)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v6 = _typedBackingStore;
  if (v4 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasLocationSearchType:0];
  }

  else
  {
    [_typedBackingStore setLocationSearchType:v4];
  }
}

- (INLocationSearchType)locationSearchType
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  LODWORD(v4) = [_typedBackingStore hasLocationSearchType];
  _typedBackingStore2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  if ([_typedBackingStore2 locationSearchType] == 10)
  {
    v4 = v4;
  }

  else
  {
    v4 = INLocationSearchTypeUnknown;
  }

  return v4;
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(locationCopy);

  [_typedBackingStore setLocation:v5];
}

- (CLPlacemark)location
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  location = [_typedBackingStore location];
  v4 = INIntentSlotValueTransformFromLocation(location);

  return v4;
}

- (void)setStatus:(int64_t)status
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (status <= 2)
  {
    [_typedBackingStore setStatus:(10 * status)];
  }

  else
  {
    [_typedBackingStore setHasStatus:0];
  }
}

- (INTaskStatus)status
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  hasStatus = [_typedBackingStore hasStatus];
  _typedBackingStore2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  status = [_typedBackingStore2 status];
  v7 = status == 10;
  if (status == 20)
  {
    v7 = 2;
  }

  if (hasStatus)
  {
    v8 = v7;
  }

  else
  {
    v8 = INTaskStatusUnknown;
  }

  return v8;
}

- (void)setItemType:(int64_t)type
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (type <= 3)
  {
    [_typedBackingStore setItemType:(10 * type)];
  }

  else
  {
    [_typedBackingStore setHasItemType:0];
  }
}

- (INNotebookItemType)itemType
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  hasItemType = [_typedBackingStore hasItemType];
  _typedBackingStore2 = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  itemType = [_typedBackingStore2 itemType];
  v7 = 3;
  v8 = 2;
  if (itemType != 20)
  {
    v8 = itemType == 10;
  }

  if (itemType != 30)
  {
    v7 = v8;
  }

  if (hasItemType)
  {
    v9 = v7;
  }

  else
  {
    v9 = INNotebookItemTypeUnknown;
  }

  return v9;
}

- (void)setContent:(id)content
{
  contentCopy = content;
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  [_typedBackingStore setContent:contentCopy];
}

- (NSString)content
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  content = [_typedBackingStore content];
  v4 = [content copy];

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(titleCopy);

  [_typedBackingStore setTitle:v5];
}

- (INSpeakableString)title
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  title = [_typedBackingStore title];
  v4 = INIntentSlotValueTransformFromDataString(title);

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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSearchForNotebookItemsIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (id)_typedBackingStore
{
  backingStore = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = backingStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end