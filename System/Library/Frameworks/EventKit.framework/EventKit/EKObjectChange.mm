@interface EKObjectChange
+ (id)CADObjectChangeIDsFromEKObjectChanges:(id)changes;
+ (id)objectChangeWithProperties:(id)properties;
+ (id)processFetchResults:(id)results;
+ (int)entityType;
+ (void)fetchChangesToObjectsOfTypes:(id)types inCalendar:(id)calendar resultHandler:(id)handler;
+ (void)fetchChangesToObjectsOfTypes:(id)types inSource:(id)source resultHandler:(id)handler;
+ (void)fetchChangesToObjectsOfTypes:(id)types inStore:(id)store resultHandler:(id)handler;
+ (void)objectChangesOfType:(id)type inCalendar:(id)calendar resultHandler:(id)handler;
+ (void)objectChangesOfType:(id)type inSource:(id)source resultHandler:(id)handler;
+ (void)objectChangesOfType:(id)type inStore:(id)store resultHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (EKObjectChange)initWithChangeProperties:(id)properties;
- (id)description;
- (id)serializedPropertiesForConsumingChange;
@end

@implementation EKObjectChange

- (EKObjectChange)initWithChangeProperties:(id)properties
{
  propertiesCopy = properties;
  v12.receiver = self;
  v12.super_class = EKObjectChange;
  v5 = [(EKObjectChange *)&v12 init];
  if (v5)
  {
    v6 = [propertiesCopy objectForKeyedSubscript:@"record"];
    changedObjectID = v5->_changedObjectID;
    v5->_changedObjectID = v6;

    v8 = [propertiesCopy objectForKeyedSubscript:@"type"];
    v5->_changeType = [v8 integerValue];

    v9 = [propertiesCopy objectForKeyedSubscript:@"ROWID"];
    v5->_changeID = [v9 integerValue];

    v10 = [propertiesCopy objectForKeyedSubscript:@"sequence_number"];
    v5->_sequenceNumber = [v10 integerValue];
  }

  return v5;
}

+ (id)CADObjectChangeIDsFromEKObjectChanges:(id)changes
{
  v24 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = changesCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        changedObjectID = [v10 changedObjectID];
        databaseID = [changedObjectID databaseID];
        v13 = [MEMORY[0x1E696AD98] numberWithInt:databaseID];
        v14 = [v4 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
          v15 = [MEMORY[0x1E696AD98] numberWithInt:databaseID];
          [v4 setObject:v14 forKeyedSubscript:v15];
        }

        v16 = [objc_alloc(MEMORY[0x1E6992DD8]) initWithEntityType:objc_msgSend(objc_opt_class() changeID:{"entityType"), objc_msgSend(v10, "changeID")}];
        [v14 addObject:v16];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)objectChangesOfType:(id)type inStore:(id)store resultHandler:(id)handler
{
  storeCopy = store;
  typeCopy = type;
  v12 = [self processFetchResults:handler];
  connection = [storeCopy connection];

  cADOperationProxySync = [connection CADOperationProxySync];
  [cADOperationProxySync CADDatabaseFetchObjectChangesForEntityTypes:typeCopy insideObject:0 reply:v12];
}

+ (void)objectChangesOfType:(id)type inSource:(id)source resultHandler:(id)handler
{
  sourceCopy = source;
  typeCopy = type;
  v14 = [self processFetchResults:handler];
  eventStore = [sourceCopy eventStore];
  connection = [eventStore connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  cADObjectID = [sourceCopy CADObjectID];

  [cADOperationProxySync CADDatabaseFetchObjectChangesForEntityTypes:typeCopy insideObject:cADObjectID reply:v14];
}

+ (void)objectChangesOfType:(id)type inCalendar:(id)calendar resultHandler:(id)handler
{
  calendarCopy = calendar;
  typeCopy = type;
  v14 = [self processFetchResults:handler];
  eventStore = [calendarCopy eventStore];
  connection = [eventStore connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  cADObjectID = [calendarCopy CADObjectID];

  [cADOperationProxySync CADDatabaseFetchObjectChangesForEntityTypes:typeCopy insideObject:cADObjectID reply:v14];
}

+ (void)fetchChangesToObjectsOfTypes:(id)types inStore:(id)store resultHandler:(id)handler
{
  storeCopy = store;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__EKObjectChange_fetchChangesToObjectsOfTypes_inStore_resultHandler___block_invoke;
  v12[3] = &unk_1E77FE488;
  v13 = storeCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = storeCopy;
  [self objectChangesOfType:types inStore:v11 resultHandler:v12];
}

void __69__EKObjectChange_fetchChangesToObjectsOfTypes_inStore_resultHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  [*(a1 + 32) recordSequenceTokenForLegacyClients:v10];
  v8 = *(a1 + 40);
  if (v10)
  {
    v9 = [v10 legacyToken];
  }

  else
  {
    v9 = -1;
  }

  (*(v8 + 16))(v8, a2, v9, v7);
}

+ (void)fetchChangesToObjectsOfTypes:(id)types inSource:(id)source resultHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__EKObjectChange_fetchChangesToObjectsOfTypes_inSource_resultHandler___block_invoke;
  v12[3] = &unk_1E77FE488;
  v13 = sourceCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = sourceCopy;
  [self objectChangesOfType:types inSource:v11 resultHandler:v12];
}

void __70__EKObjectChange_fetchChangesToObjectsOfTypes_inSource_resultHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    [v8 legacyToken];
  }

  v7 = [*(a1 + 32) eventStore];
  [v7 recordSequenceTokenForLegacyClients:v8];

  (*(*(a1 + 40) + 16))();
}

+ (void)fetchChangesToObjectsOfTypes:(id)types inCalendar:(id)calendar resultHandler:(id)handler
{
  calendarCopy = calendar;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__EKObjectChange_fetchChangesToObjectsOfTypes_inCalendar_resultHandler___block_invoke;
  v12[3] = &unk_1E77FE488;
  v13 = calendarCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = calendarCopy;
  [self objectChangesOfType:types inCalendar:v11 resultHandler:v12];
}

void __72__EKObjectChange_fetchChangesToObjectsOfTypes_inCalendar_resultHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) eventStore];
  [v8 recordSequenceTokenForLegacyClients:v11];

  v9 = *(a1 + 40);
  if (v11)
  {
    v10 = [v11 legacyToken];
  }

  else
  {
    v10 = -1;
  }

  (*(v9 + 16))(v9, a2, v10, v7);
}

+ (id)processFetchResults:(id)results
{
  resultsCopy = results;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__EKObjectChange_processFetchResults___block_invoke;
  aBlock[3] = &unk_1E77FE4B0;
  v8 = resultsCopy;
  v4 = resultsCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

void __38__EKObjectChange_processFetchResults___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if (a2)
  {
    v11 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __38__EKObjectChange_processFetchResults___block_invoke_cold_1(v11, a2);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v22 = a3;
    v12 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [EKObjectChange objectChangeWithProperties:*(*(&v23 + 1) + 8 * v17)];
          if (v18)
          {
            [v12 addObject:v18];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v19 = *(a1 + 32);
    v20 = [[EKSequenceToken alloc] initWithCADSequenceToken:v9];
    (*(v19 + 16))(v19, v22, v20, v12);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_changeID == equalCopy->_changeID;
  }

  return v6;
}

- (id)description
{
  changeType = self->_changeType;
  if (changeType > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E77FE4D0[changeType];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[<%@: %p>: type=%@, row=%i, seq=%li, changeID=%li]", objc_opt_class(), self, v3, -[EKObjectID rowID](self->_changedObjectID, "rowID"), self->_sequenceNumber, self->_changeID];
}

+ (int)entityType
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"entityType must be implemented by an EKObjectChange inheriting class." userInfo:0];
  [v2 raise];

  return -1;
}

+ (id)objectChangeWithProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:@"record"];
  if (v4)
  {
    v5 = [EKObjectID objectIDWithCADObjectID:v4];
    v6 = [propertiesCopy mutableCopy];
    [v6 setObject:v5 forKeyedSubscript:@"record"];
    v7 = v6;

    entityType = [v5 entityType];
    v9 = entityType;
    switch(entityType)
    {
      case -1:
      case 3:
      case 12:
      case 13:
      case 14:
      case 18:
      case 20:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
        goto LABEL_3;
      case 0:
      case 22:
        goto LABEL_8;
      case 1:
        v13 = EKCalendarChange;
        goto LABEL_25;
      case 2:
        v13 = EKEventChange;
        goto LABEL_25;
      case 4:
        v13 = EKAlarmChange;
        goto LABEL_25;
      case 5:
        v13 = EKRecurrenceChange;
        goto LABEL_25;
      case 6:
        v13 = EKSourceChange;
        goto LABEL_25;
      case 7:
        v13 = EKAttendeeChange;
        goto LABEL_25;
      case 8:
        v13 = EKOrganizerChange;
        goto LABEL_25;
      case 9:
        v13 = EKEventActionChange;
        goto LABEL_25;
      case 10:
        v13 = EKExceptionDateChange;
        goto LABEL_25;
      case 11:
        v13 = EKAttachmentChange;
        goto LABEL_25;
      case 15:
        v13 = EKShareeChange;
        goto LABEL_25;
      case 16:
        v13 = EKInviteReplyNotificationChange;
        goto LABEL_25;
      case 17:
        v13 = EKResourceChangeNotificationChange;
        goto LABEL_25;
      case 19:
        v13 = EKSuggestionNotificationChange;
        goto LABEL_25;
      case 21:
        v13 = EKContactChange;
LABEL_25:
        v11 = [[v13 alloc] initWithChangeProperties:v7];
        break;
      default:
        if ((entityType - 100) < 3)
        {
LABEL_3:
          v10 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            [(EKObjectChange *)v9 objectChangeWithProperties:v10];
          }
        }

        else
        {
LABEL_8:
          v12 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            [(EKObjectChange *)v9 objectChangeWithProperties:v12];
          }
        }

        v11 = 0;
        break;
    }
  }

  else
  {
    v11 = 0;
    v7 = propertiesCopy;
  }

  return v11;
}

- (id)serializedPropertiesForConsumingChange
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"consumed_entity_class";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EKObjectID entityType](self->_changedObjectID, "entityType")}];
  v11[0] = v3;
  v10[1] = @"consumed_entity_id";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[EKObjectID rowID](self->_changedObjectID, "rowID")}];
  v11[1] = v4;
  v10[2] = @"consumed_change_id";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_changeID];
  v11[2] = v5;
  v10[3] = @"sequence_number";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sequenceNumber];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __38__EKObjectChange_processFetchResults___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = a1;
  v5 = [v3 errorWithCADResult:a2];
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_1A805E000, v4, OS_LOG_TYPE_ERROR, "Error fetching changed object IDs: %@", &v7, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)objectChangeWithProperties:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Unsupported entity type: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)objectChangeWithProperties:(int)a1 .cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Invalid entity type: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end