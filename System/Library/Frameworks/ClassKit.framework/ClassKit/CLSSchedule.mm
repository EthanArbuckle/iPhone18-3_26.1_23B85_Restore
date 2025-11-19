@interface CLSSchedule
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (id)hashableColumnNames;
+ (id)payloadsForObject:(id)a3 withSyncItem:(id)a4 database:(id)a5;
- (BOOL)canCopyToDatabase:(id)a3;
- (CLSSchedule)initWithCKRecord:(id)a3;
- (CLSSchedule)initWithDatabaseRow:(id)a3;
- (id)payloadsWithClassIDs:(id)a3 dependencies:(id)a4;
- (int64_t)syncBackend:(id)a3;
- (unint64_t)changeHash;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSSchedule

- (CLSSchedule)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CLSSchedule *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithRecord:v4];
    v7 = [v4 objectForKeyedSubscript:@"scheduleDate"];
    [v6 setScheduleDate:v7];

    v8 = [v4 objectForKeyedSubscript:@"scheduledEntityType"];
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

    v11 = [v4 objectForKeyedSubscript:@"scheduleAction"];
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

    v14 = [v4 objectForKeyedSubscript:@"scheduledObjectID"];
    [v6 setParentObjectID:v14];

    v15 = [v4 objectForKeyedSubscript:@"scheduledEntityType"];
    [v6 setScheduledEntityType:{objc_msgSend(v15, "integerValue")}];
  }

  return v6;
}

- (void)populate:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLSSchedule;
  v4 = a3;
  [(CLSSchedule *)&v9 populate:v4];
  v5 = [(CLSSchedule *)self scheduleDate:v9.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"scheduleDate"];

  v6 = [NSNumber numberWithInteger:[(CLSSchedule *)self scheduledEntityType]];
  [v4 setObject:v6 forKeyedSubscript:@"scheduledEntityType"];

  v7 = [NSNumber numberWithInteger:[(CLSSchedule *)self scheduleAction]];
  [v4 setObject:v7 forKeyedSubscript:@"scheduleAction"];

  v8 = [(CLSSchedule *)self parentObjectID];
  [v4 setObject:v8 forKeyedSubscript:@"scheduledObjectID"];

  [(CLSSchedule *)self updateParentReferencesForRecord:v4];
}

- (int64_t)syncBackend:(id)a3
{
  v4 = a3;
  v5 = [(CLSSchedule *)self parentObjectID];
  if (v5)
  {
    v6 = [v4 select:objc_opt_class() identity:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 syncBackend:v4];
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

+ (id)payloadsForObject:(id)a3 withSyncItem:(id)a4 database:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  [v11 setType:30];
  v12 = [v8 state] - 1;
  if (v12 < 3)
  {
    v13 = (v12 + 1);
  }

  else
  {
    v13 = 0;
  }

  [v11 setAction:v13];
  v14 = [v8 entityIdentity];
  v15 = v7;
  v64 = v8;
  v68 = v15;
  v63 = v9;
  v65 = v14;
  if ([v8 state] == 3)
  {
    v16 = objc_opt_new();
    [v11 setSchedule:v16];

    v17 = [v11 schedule];
    [v17 setObjectId:v14];

    v18 = [v9 select:objc_opt_class() identity:v14];
    v19 = v18;
    v20 = v9;
    if (v18)
    {
      v21 = *(v18 + 16);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = [v22 firstObject];
    v24 = [v23 copy];

    v25 = [v11 schedule];
    [v25 setClassId:v24];

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

  v34 = sub_1000C2320(v9, v15);
  v35 = sub_10001FF94(v15);
  [v11 setSchedule:v35];

  v36 = [v11 schedule];
  [v36 setClassId:v34];

  [v10 addObject:v11];
  v37 = sub_1000C23D8(v9, v14);
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

      v72 = [v33 scheduleDate];
      if (v72)
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
            v49 = [v33 scheduleDate];
            if (v49)
            {
              v50 = v49;
              v51 = v33;
              v52 = v10;
              v53 = *v42;
              v54 = [v51 scheduleDate];
              v55 = [v53 isEqualToDate:v54];

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

      v72 = 0;
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

- (id)payloadsWithClassIDs:(id)a3 dependencies:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v6 setType:30];
  v7 = sub_10001FF94(self);
  [(PDDPPayload *)v6 setSchedule:v7];

  v8 = [v5 firstObject];
  v9 = [(PDDPPayload *)v6 schedule];
  [v9 setClassId:v8];

  v10 = [v5 firstObject];

  v11 = sub_1000205FC(self, v10);

  v14[0] = v6;
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];

  return v12;
}

- (BOOL)canCopyToDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CLSSchedule *)self parentObjectID];
  v7 = [v4 select:v5 identity:v6];

  LOBYTE(v6) = [v7 canCopyToDatabase:v4];
  return v6;
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
  v3 = [(CLSSchedule *)&v13 changeHash];
  v4 = [(CLSSchedule *)self parentObjectID];
  if (v4)
  {
    v5 = [(CLSSchedule *)self parentObjectID];
    v6 = [v5 _cls_stableHash];
  }

  else
  {
    v6 = 11;
  }

  v7 = v6 ^ v3 ^ (2 * [(CLSSchedule *)self scheduledEntityType]);
  v8 = v7 ^ (4 * [(CLSSchedule *)self scheduleAction]);
  v9 = v8 ^ (8 * [(CLSSchedule *)self scheduleUpdateStatus]);
  v10 = [(CLSSchedule *)self scheduleDate];
  v11 = [v10 hash];

  return v9 ^ v11;
}

- (CLSSchedule)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSSchedule *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D6F0(v4, @"scheduleDate");
    [v6 setScheduleDate:v8];

    v9 = sub_10016D778(v4, @"scheduledEntityType");
    [v6 setScheduledEntityType:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(v4, @"scheduleAction");
    [v6 setScheduleAction:{objc_msgSend(v10, "integerValue")}];

    v11 = sub_10016D778(v4, @"scheduleUpdateStatus");
    [v6 setScheduleUpdateStatus:{objc_msgSend(v11, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v11.receiver = self;
  v11.super_class = CLSSchedule;
  v4 = a3;
  [(CLSSchedule *)&v11 bindTo:v4];
  v12 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v12 count:1, v11.receiver, v11.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSSchedule *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSSchedule *)self scheduledEntityType]];
  sub_1000982FC(v4, v7, @"scheduledEntityType");

  v8 = [NSNumber numberWithInteger:[(CLSSchedule *)self scheduleAction]];
  sub_1000982FC(v4, v8, @"scheduleAction");

  v9 = [(CLSSchedule *)self scheduleDate];
  sub_1000982FC(v4, v9, @"scheduleDate");

  v10 = [NSNumber numberWithInteger:[(CLSSchedule *)self scheduleUpdateStatus]];
  sub_1000982FC(v4, v10, @"scheduleUpdateStatus");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSSchedule(   objectID              text not null,\n    parentObjectID        text not null,\n    dateCreated           real not null,\n    dateLastModified      real not null,\n    scheduledEntityType   integer not null,\n    scheduleAction        integer not null,\n    scheduleDate          real not null,\n    scheduleUpdateStatus  integer\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSSchedule_objectID on CLSSchedule (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_7:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSSchedule *)self objectID];
  v6 = [v4 select:objc_opt_class() identity:v5];
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
      objc_setProperty_nonatomic_copy(v9, v10, v5, 8);
    }
  }

  v11 = [v4 select:objc_opt_class() identity:v5];
  v12 = sub_1000C2320(v4, v11);
  if (v12)
  {
    [v7 addObject:v12];
    v13 = [v7 allObjects];
    sub_10008121C(v6, v13);

    if (([v4 insertOrUpdateObject:v6] & 1) == 0)
    {
      CLSInitLog();
      v14 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = v5;
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