@interface EKObjectChange
+ (id)CADObjectChangeIDsFromEKObjectChanges:(id)a3;
+ (id)objectChangeWithProperties:(id)a3;
+ (id)processFetchResults:(id)a3;
+ (int)entityType;
+ (void)fetchChangesToObjectsOfTypes:(id)a3 inCalendar:(id)a4 resultHandler:(id)a5;
+ (void)fetchChangesToObjectsOfTypes:(id)a3 inSource:(id)a4 resultHandler:(id)a5;
+ (void)fetchChangesToObjectsOfTypes:(id)a3 inStore:(id)a4 resultHandler:(id)a5;
+ (void)objectChangesOfType:(id)a3 inCalendar:(id)a4 resultHandler:(id)a5;
+ (void)objectChangesOfType:(id)a3 inSource:(id)a4 resultHandler:(id)a5;
+ (void)objectChangesOfType:(id)a3 inStore:(id)a4 resultHandler:(id)a5;
- (BOOL)isEqual:(id)a3;
- (EKObjectChange)initWithChangeProperties:(id)a3;
- (id)description;
- (id)serializedPropertiesForConsumingChange;
@end

@implementation EKObjectChange

- (EKObjectChange)initWithChangeProperties:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = EKObjectChange;
  v5 = [(EKObjectChange *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"record"];
    changedObjectID = v5->_changedObjectID;
    v5->_changedObjectID = v6;

    v8 = [v4 objectForKeyedSubscript:@"type"];
    v5->_changeType = [v8 integerValue];

    v9 = [v4 objectForKeyedSubscript:@"ROWID"];
    v5->_changeID = [v9 integerValue];

    v10 = [v4 objectForKeyedSubscript:@"sequence_number"];
    v5->_sequenceNumber = [v10 integerValue];
  }

  return v5;
}

+ (id)CADObjectChangeIDsFromEKObjectChanges:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
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
        v11 = [v10 changedObjectID];
        v12 = [v11 databaseID];
        v13 = [MEMORY[0x1E696AD98] numberWithInt:v12];
        v14 = [v4 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
          v15 = [MEMORY[0x1E696AD98] numberWithInt:v12];
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

+ (void)objectChangesOfType:(id)a3 inStore:(id)a4 resultHandler:(id)a5
{
  v8 = a4;
  v9 = a3;
  v12 = [a1 processFetchResults:a5];
  v10 = [v8 connection];

  v11 = [v10 CADOperationProxySync];
  [v11 CADDatabaseFetchObjectChangesForEntityTypes:v9 insideObject:0 reply:v12];
}

+ (void)objectChangesOfType:(id)a3 inSource:(id)a4 resultHandler:(id)a5
{
  v8 = a4;
  v9 = a3;
  v14 = [a1 processFetchResults:a5];
  v10 = [v8 eventStore];
  v11 = [v10 connection];
  v12 = [v11 CADOperationProxySync];
  v13 = [v8 CADObjectID];

  [v12 CADDatabaseFetchObjectChangesForEntityTypes:v9 insideObject:v13 reply:v14];
}

+ (void)objectChangesOfType:(id)a3 inCalendar:(id)a4 resultHandler:(id)a5
{
  v8 = a4;
  v9 = a3;
  v14 = [a1 processFetchResults:a5];
  v10 = [v8 eventStore];
  v11 = [v10 connection];
  v12 = [v11 CADOperationProxySync];
  v13 = [v8 CADObjectID];

  [v12 CADDatabaseFetchObjectChangesForEntityTypes:v9 insideObject:v13 reply:v14];
}

+ (void)fetchChangesToObjectsOfTypes:(id)a3 inStore:(id)a4 resultHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__EKObjectChange_fetchChangesToObjectsOfTypes_inStore_resultHandler___block_invoke;
  v12[3] = &unk_1E77FE488;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [a1 objectChangesOfType:a3 inStore:v11 resultHandler:v12];
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

+ (void)fetchChangesToObjectsOfTypes:(id)a3 inSource:(id)a4 resultHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__EKObjectChange_fetchChangesToObjectsOfTypes_inSource_resultHandler___block_invoke;
  v12[3] = &unk_1E77FE488;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [a1 objectChangesOfType:a3 inSource:v11 resultHandler:v12];
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

+ (void)fetchChangesToObjectsOfTypes:(id)a3 inCalendar:(id)a4 resultHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__EKObjectChange_fetchChangesToObjectsOfTypes_inCalendar_resultHandler___block_invoke;
  v12[3] = &unk_1E77FE488;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [a1 objectChangesOfType:a3 inCalendar:v11 resultHandler:v12];
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

+ (id)processFetchResults:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__EKObjectChange_processFetchResults___block_invoke;
  aBlock[3] = &unk_1E77FE4B0;
  v8 = v3;
  v4 = v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_changeID == v4->_changeID;
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

+ (id)objectChangeWithProperties:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"record"];
  if (v4)
  {
    v5 = [EKObjectID objectIDWithCADObjectID:v4];
    v6 = [v3 mutableCopy];
    [v6 setObject:v5 forKeyedSubscript:@"record"];
    v7 = v6;

    v8 = [v5 entityType];
    v9 = v8;
    switch(v8)
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
        if ((v8 - 100) < 3)
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
    v7 = v3;
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