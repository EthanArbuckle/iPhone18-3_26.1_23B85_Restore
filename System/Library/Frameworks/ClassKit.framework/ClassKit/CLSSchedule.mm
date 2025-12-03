@interface CLSSchedule
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (id)hashableColumnNames;
+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database;
- (BOOL)canCopyToDatabase:(id)database;
- (CLSSchedule)initWithCKRecord:(id)record;
- (CLSSchedule)initWithDatabaseRow:(id)row;
- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies;
- (int64_t)syncBackend:(id)backend;
- (unint64_t)changeHash;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSSchedule

- (CLSSchedule)initWithCKRecord:(id)record
{
  recordCopy = record;
  _init = [(CLSSchedule *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithRecord:recordCopy];
    v7 = [recordCopy objectForKeyedSubscript:@"scheduleDate"];
    [v6 setScheduleDate:v7];

    v8 = [recordCopy objectForKeyedSubscript:@"scheduledEntityType"];
    v9 = v8;
    if (v8)
    {
      [v6 setScheduledEntityType:{objc_msgSend(v8, "integerValue")}];
    }

    else
    {
      CLSInitLog();
      v10 = CLSLogSync;
      if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CLSSchedule synced from CloudKit is missing scheduledEntityType information", buf, 2u);
      }
    }

    v11 = [recordCopy objectForKeyedSubscript:@"scheduleAction"];
    v12 = v11;
    if (v11)
    {
      [v6 setScheduleAction:{objc_msgSend(v11, "integerValue")}];
    }

    else
    {
      CLSInitLog();
      v13 = CLSLogSync;
      if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "CLSSchedule synced from CloudKit is missing scheduleAction information", v17, 2u);
      }
    }

    v14 = [recordCopy objectForKeyedSubscript:@"scheduledObjectID"];
    [v6 setParentObjectID:v14];

    v15 = [recordCopy objectForKeyedSubscript:@"scheduledEntityType"];
    [v6 setScheduledEntityType:{objc_msgSend(v15, "integerValue")}];
  }

  return v6;
}

- (void)populate:(id)populate
{
  v9.receiver = self;
  v9.super_class = CLSSchedule;
  populateCopy = populate;
  [(CLSSchedule *)&v9 populate:populateCopy];
  v5 = [(CLSSchedule *)self scheduleDate:v9.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"scheduleDate"];

  v6 = [NSNumber numberWithInteger:[(CLSSchedule *)self scheduledEntityType]];
  [populateCopy setObject:v6 forKeyedSubscript:@"scheduledEntityType"];

  v7 = [NSNumber numberWithInteger:[(CLSSchedule *)self scheduleAction]];
  [populateCopy setObject:v7 forKeyedSubscript:@"scheduleAction"];

  parentObjectID = [(CLSSchedule *)self parentObjectID];
  [populateCopy setObject:parentObjectID forKeyedSubscript:@"scheduledObjectID"];

  [(CLSSchedule *)self updateParentReferencesForRecord:populateCopy];
}

- (int64_t)syncBackend:(id)backend
{
  backendCopy = backend;
  parentObjectID = [(CLSSchedule *)self parentObjectID];
  if (parentObjectID)
  {
    v6 = [backendCopy select:objc_opt_class() identity:parentObjectID];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 syncBackend:backendCopy];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database
{
  objectCopy = object;
  itemCopy = item;
  databaseCopy = database;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  [v11 setType:30];
  v12 = [itemCopy state] - 1;
  if (v12 < 3)
  {
    v13 = (v12 + 1);
  }

  else
  {
    v13 = 0;
  }

  [v11 setAction:v13];
  entityIdentity = [itemCopy entityIdentity];
  v15 = objectCopy;
  v64 = itemCopy;
  v68 = v15;
  v63 = databaseCopy;
  v65 = entityIdentity;
  if ([itemCopy state] == 3)
  {
    v16 = objc_opt_new();
    [v11 setSchedule:v16];

    schedule = [v11 schedule];
    [schedule setObjectId:entityIdentity];

    v18 = [databaseCopy select:objc_opt_class() identity:entityIdentity];
    v19 = v18;
    v20 = databaseCopy;
    if (v18)
    {
      v21 = *(v18 + 16);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    firstObject = [v22 firstObject];
    v24 = [firstObject copy];

    schedule2 = [v11 schedule];
    [schedule2 setClassId:v24];

    [v10 addObject:v11];
    v26 = sub_1000C23D8(v20, v65);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v75 objects:v83 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v76;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v76 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = sub_10002050C(*(*(&v75 + 1) + 8 * i), v24);
          [v10 addObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v75 objects:v83 count:16];
      }

      while (v28);
    }

    v32 = v64;
    v33 = v68;
    goto LABEL_54;
  }

  v34 = sub_1000C2320(databaseCopy, v15);
  v35 = sub_10001FF94(v15);
  [v11 setSchedule:v35];

  schedule3 = [v11 schedule];
  [schedule3 setClassId:v34];

  [v10 addObject:v11];
  v37 = sub_1000C23D8(databaseCopy, entityIdentity);
  v71 = v34;
  v33 = v15;
  v62 = v37;
  if (!v15)
  {
    v59 = 0;
    v32 = v64;
    goto LABEL_53;
  }

  v38 = objc_opt_new();
  if (![v37 count])
  {
    v58 = sub_1000205FC(v15, v71);
    v84[0] = v58;
    v59 = [NSArray arrayWithObjects:v84 count:1];

    v33 = v15;
    goto LABEL_52;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v39 = v37;
  v74 = [v39 countByEnumeratingWithState:&v79 objects:v84 count:16];
  if (!v74)
  {

    goto LABEL_50;
  }

  v66 = 0;
  v73 = *v80;
  obj = v39;
  v70 = v38;
  v67 = v11;
  do
  {
    v40 = 0;
    do
    {
      if (*v80 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(*(&v79 + 1) + 8 * v40);
      if (v41)
      {
        v42 = v41 + 5;
        v43 = v41[5];
        if (v43)
        {
          v44 = v43;
          v45 = *v42;
          if (v45)
          {
            v46 = v45;
            v47 = 0;
            goto LABEL_30;
          }

LABEL_35:

LABEL_40:
          v56 = sub_10002050C(v41, v71);
          [v38 addObject:v56];

          goto LABEL_41;
        }
      }

      scheduleDate = [v33 scheduleDate];
      if (scheduleDate)
      {
        if (v41)
        {
          v42 = v41 + 5;
          v48 = v41[5];
          v44 = 0;
          if (v48)
          {
            v46 = v48;
            v47 = 1;
LABEL_30:
            scheduleDate2 = [v33 scheduleDate];
            if (scheduleDate2)
            {
              v50 = scheduleDate2;
              v51 = v33;
              v52 = v10;
              v53 = *v42;
              scheduleDate3 = [v51 scheduleDate];
              v55 = [v53 isEqualToDate:scheduleDate3];

              if (v47)
              {
              }

              else
              {
              }

              v10 = v52;
              v38 = v70;
              if (v55)
              {
                v66 = 1;
                v11 = v67;
                v33 = v68;
                goto LABEL_41;
              }

              v11 = v67;
              v33 = v68;
              goto LABEL_40;
            }

            v38 = v70;
            if (!v47)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v44 = 0;
        }

        goto LABEL_35;
      }

      scheduleDate = 0;
      v66 = 1;
LABEL_41:
      v40 = v40 + 1;
    }

    while (v74 != v40);
    v57 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
    v74 = v57;
  }

  while (v57);

  if ((v66 & 1) == 0)
  {
LABEL_50:
    v60 = sub_1000205FC(v33, v71);
    [v38 addObject:v60];
  }

  v59 = v38;
LABEL_52:
  v32 = v64;

LABEL_53:
  [v10 addObjectsFromArray:v59];

LABEL_54:

  return v10;
}

- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies
{
  dsCopy = ds;
  v6 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v6 setType:30];
  v7 = sub_10001FF94(self);
  [(PDDPPayload *)v6 setSchedule:v7];

  firstObject = [dsCopy firstObject];
  schedule = [(PDDPPayload *)v6 schedule];
  [schedule setClassId:firstObject];

  firstObject2 = [dsCopy firstObject];

  v11 = sub_1000205FC(self, firstObject2);

  v14[0] = v6;
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];

  return v12;
}

- (BOOL)canCopyToDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_opt_class();
  parentObjectID = [(CLSSchedule *)self parentObjectID];
  v7 = [databaseCopy select:v5 identity:parentObjectID];

  LOBYTE(parentObjectID) = [v7 canCopyToDatabase:databaseCopy];
  return parentObjectID;
}

+ (id)hashableColumnNames
{
  v4[0] = @"rowid";
  v4[1] = @"parentObjectID";
  v4[2] = @"dateLastModified";
  v4[3] = @"scheduledEntityType";
  v4[4] = @"scheduleAction";
  v4[5] = @"scheduleDate";
  v2 = [NSArray arrayWithObjects:v4 count:6];

  return v2;
}

- (unint64_t)changeHash
{
  v13.receiver = self;
  v13.super_class = CLSSchedule;
  changeHash = [(CLSSchedule *)&v13 changeHash];
  parentObjectID = [(CLSSchedule *)self parentObjectID];
  if (parentObjectID)
  {
    parentObjectID2 = [(CLSSchedule *)self parentObjectID];
    _cls_stableHash = [parentObjectID2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash = 11;
  }

  v7 = _cls_stableHash ^ changeHash ^ (2 * [(CLSSchedule *)self scheduledEntityType]);
  v8 = v7 ^ (4 * [(CLSSchedule *)self scheduleAction]);
  v9 = v8 ^ (8 * [(CLSSchedule *)self scheduleUpdateStatus]);
  scheduleDate = [(CLSSchedule *)self scheduleDate];
  v11 = [scheduleDate hash];

  return v9 ^ v11;
}

- (CLSSchedule)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSSchedule *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D6F0(rowCopy, @"scheduleDate");
    [v6 setScheduleDate:v8];

    v9 = sub_10016D778(rowCopy, @"scheduledEntityType");
    [v6 setScheduledEntityType:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(rowCopy, @"scheduleAction");
    [v6 setScheduleAction:{objc_msgSend(v10, "integerValue")}];

    v11 = sub_10016D778(rowCopy, @"scheduleUpdateStatus");
    [v6 setScheduleUpdateStatus:{objc_msgSend(v11, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v11.receiver = self;
  v11.super_class = CLSSchedule;
  toCopy = to;
  [(CLSSchedule *)&v11 bindTo:toCopy];
  v12 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v12 count:1, v11.receiver, v11.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSSchedule *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSSchedule *)self scheduledEntityType]];
  sub_1000982FC(toCopy, v7, @"scheduledEntityType");

  v8 = [NSNumber numberWithInteger:[(CLSSchedule *)self scheduleAction]];
  sub_1000982FC(toCopy, v8, @"scheduleAction");

  scheduleDate = [(CLSSchedule *)self scheduleDate];
  sub_1000982FC(toCopy, scheduleDate, @"scheduleDate");

  v10 = [NSNumber numberWithInteger:[(CLSSchedule *)self scheduleUpdateStatus]];
  sub_1000982FC(toCopy, v10, @"scheduleUpdateStatus");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSSchedule(   objectID              text not null,\n    parentObjectID        text not null,\n    dateCreated           real not null,\n    dateLastModified      real not null,\n    scheduledEntityType   integer not null,\n    scheduleAction        integer not null,\n    scheduleDate          real not null,\n    scheduleUpdateStatus  integer\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSSchedule_objectID on CLSSchedule (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_7:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSSchedule *)self objectID];
  v6 = [databaseCopy select:objc_opt_class() identity:objectID];
  v7 = objc_opt_new();
  if (v6)
  {
    v8 = v6[2];
    [v7 addObjectsFromArray:v8];
  }

  else
  {
    v9 = objc_opt_new();
    v6 = v9;
    if (v9)
    {
      objc_setProperty_nonatomic_copy(v9, v10, objectID, 8);
    }
  }

  v11 = [databaseCopy select:objc_opt_class() identity:objectID];
  v12 = sub_1000C2320(databaseCopy, v11);
  if (v12)
  {
    [v7 addObject:v12];
    allObjects = [v7 allObjects];
    sub_10008121C(v6, allObjects);

    if (([databaseCopy insertOrUpdateObject:v6] & 1) == 0)
    {
      CLSInitLog();
      v14 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = objectID;
        v15 = "Could not insert into PDDeletedObjectClassIDs, objectID=%@";
        v16 = v14;
        v17 = 12;
LABEL_12:
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v15, &v19, v17);
      }
    }
  }

  else
  {
    CLSInitLog();
    v18 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      v15 = "Could not insert into PDDeletedObjectClassIDs, classID is nil";
      v16 = v18;
      v17 = 2;
      goto LABEL_12;
    }
  }
}

@end