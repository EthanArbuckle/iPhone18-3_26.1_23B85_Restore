@interface CLSQuestionStep
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database;
- (BOOL)canCopyToDatabase:(id)database;
- (CLSQuestionStep)initWithCKRecord:(id)record;
- (CLSQuestionStep)initWithDatabaseRow:(id)row;
- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies;
- (int64_t)syncBackend:(id)backend;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSQuestionStep

- (CLSQuestionStep)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"type"];
  if (v5)
  {
    v6 = CLSSurveyStepTypeFromString();
    v7 = [recordCopy objectForKeyedSubscript:@"questionType"];
    v8 = SurveyQuestionTypeFromString();

    v9 = [(CLSQuestionStep *)self init];
    v10 = v9;
    if (v9)
    {
      [(CLSQuestionStep *)v9 _initCommonPropsWithRecord:recordCopy];
      v11 = [recordCopy objectForKeyedSubscript:@"questionText"];
      [(CLSQuestionStep *)v10 setQuestionText:v11];

      v12 = [recordCopy objectForKeyedSubscript:@"displayOrder"];
      -[CLSQuestionStep setDisplayOrder:](v10, "setDisplayOrder:", [v12 integerValue]);

      v13 = [recordCopy objectForKeyedSubscript:@"version"];
      -[CLSQuestionStep setVersion:](v10, "setVersion:", [v13 integerValue]);

      [(CLSQuestionStep *)v10 setType:v6];
      [(CLSQuestionStep *)v10 setQuestionType:v8];
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)populate:(id)populate
{
  v10.receiver = self;
  v10.super_class = CLSQuestionStep;
  populateCopy = populate;
  [(CLSQuestionStep *)&v10 populate:populateCopy];
  [(CLSQuestionStep *)self type:v10.receiver];
  v5 = NSStringFromCLSSurveyStepType();
  [(CLSQuestionStep *)self questionType];
  v6 = NSStringFromSurveyQuestionType();
  [populateCopy setObject:v5 forKeyedSubscript:@"type"];
  questionText = [(CLSQuestionStep *)self questionText];
  [populateCopy setObject:questionText forKeyedSubscript:@"questionText"];

  v8 = [NSNumber numberWithInteger:[(CLSQuestionStep *)self displayOrder]];
  [populateCopy setObject:v8 forKeyedSubscript:@"displayOrder"];

  v9 = [NSNumber numberWithInteger:[(CLSQuestionStep *)self version]];
  [populateCopy setObject:v9 forKeyedSubscript:@"version"];

  [populateCopy setObject:v6 forKeyedSubscript:@"questionType"];
  [(CLSQuestionStep *)self updateParentReferencesForRecord:populateCopy];
}

- (int64_t)syncBackend:(id)backend
{
  backendCopy = backend;
  parentObjectID = [(CLSQuestionStep *)self parentObjectID];
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
  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v12 setType:26];
  v13 = [itemCopy state] - 1;
  if (v13 < 3)
  {
    v14 = (v13 + 1);
  }

  else
  {
    v14 = 0;
  }

  [(PDDPPayload *)v12 setAction:v14];
  if ([itemCopy state] == 3)
  {
    v15 = objc_opt_new();
    [(PDDPPayload *)v12 setSurveyStep:v15];

    entityIdentity = [itemCopy entityIdentity];
    surveyStep = [(PDDPPayload *)v12 surveyStep];
    [surveyStep setObjectId:entityIdentity];

    v18 = [databaseCopy select:objc_opt_class() identity:entityIdentity];
    v19 = v18;
    v51 = v11;
    if (v18)
    {
      v20 = *(v18 + 16);
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = [v21 mutableCopy];
    surveyStep2 = [(PDDPPayload *)v12 surveyStep];
    [surveyStep2 setClassIds:v22];

    v24 = [databaseCopy select:objc_opt_class() identity:entityIdentity];
    v25 = v24;
    if (v24)
    {
      v26 = *(v24 + 16);
    }

    else
    {
      v26 = 0;
    }

    parentObjectID = v26;
LABEL_17:
    v40 = parentObjectID;

    if (v40)
    {
      v41 = sub_1000C8BEC(databaseCopy, v40);
      v42 = [CLSSurvey payloadForObject:v41 action:2 database:databaseCopy];
      v53 = v40;
      v43 = [NSArray arrayWithObjects:&v53 count:1];
      sub_1000C8DF8(databaseCopy, v43, 1);

      v52[0] = v12;
      v52[1] = v42;
      v44 = [NSArray arrayWithObjects:v52 count:2];
      [v10 addObjectsFromArray:v44];
    }

    else
    {
      CLSInitLog();
      v45 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        v47 = v45;
        v48 = objc_opt_class();
        v49 = v48;
        entityIdentity2 = [itemCopy entityIdentity];
        *buf = 138543618;
        v55 = v48;
        v56 = 2114;
        v57 = entityIdentity2;
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}@: did not find surveyID for question step %{public}@", buf, 0x16u);
      }

      [v10 addObject:v12];
    }

    v11 = v51;
    goto LABEL_23;
  }

  questionType = [objectCopy questionType];
  objectID = [objectCopy objectID];
  entityIdentity = sub_100070148(databaseCopy, questionType, objectID);

  if (entityIdentity)
  {
    objc_opt_class();
    v51 = v11;
    if (objc_opt_isKindOfClass())
    {
      objectID2 = [entityIdentity objectID];
      v19 = sub_100120F3C(databaseCopy, objectID2);
    }

    else
    {
      v19 = 0;
    }

    v36 = sub_10001AD90(objectCopy, entityIdentity, v19);
    [(PDDPPayload *)v12 setSurveyStep:v36];

    objectID3 = [objectCopy objectID];
    v25 = sub_10006FEFC(databaseCopy, objectID3);

    v38 = [v25 mutableCopy];
    surveyStep3 = [(PDDPPayload *)v12 surveyStep];
    [surveyStep3 setClassIds:v38];

    parentObjectID = [objectCopy parentObjectID];
    goto LABEL_17;
  }

  CLSInitLog();
  v31 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
  {
    v32 = v31;
    v33 = objc_opt_class();
    v34 = v33;
    objectID4 = [objectCopy objectID];
    *buf = 138543618;
    v55 = v33;
    v56 = 2114;
    v57 = objectID4;
    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@: did not find answer format for question step %{public}@", buf, 0x16u);
  }

LABEL_23:

  objc_autoreleasePoolPop(v11);

  return v10;
}

- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies
{
  dsCopy = ds;
  dependenciesCopy = dependencies;
  v8 = objc_opt_new();
  v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dependenciesCopy, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = dependenciesCopy;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v9 addObject:{v15, v33}];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v12);
  }

  v16 = objc_autoreleasePoolPush();
  if ([v9 count])
  {
    v17 = objc_alloc_init(PDDPPayload);
    [(PDDPPayload *)v17 setType:26];
    v18 = [v9 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v20 = [v9 objectAtIndexedSubscript:0];
      objc_opt_class();
      v21 = 0;
      if (objc_opt_isKindOfClass())
      {
        v22 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 1, [v9 count] - 1);
        v21 = [v9 objectsAtIndexes:v22];
      }

      v23 = sub_10001AD90(self, v20, v21);
      [(PDDPPayload *)v17 setSurveyStep:v23];

      v24 = [dsCopy mutableCopy];
      surveyStep = [(PDDPPayload *)v17 surveyStep];
      [surveyStep setClassIds:v24];

      [v8 addObject:v17];
    }

    else
    {
      CLSInitLog();
      v29 = CLSLogDefault;
      if (!os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v20 = v29;
      v31 = objc_opt_class();
      *buf = 138543362;
      v38 = v31;
      v32 = v31;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@: expects first element in dependency list to be answerFormat type", buf, 0xCu);
    }
  }

  else
  {
    CLSInitLog();
    v26 = CLSLogDefault;
    if (!os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v17 = v26;
    v27 = objc_opt_class();
    *buf = 138543362;
    v38 = v27;
    v28 = v27;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: expects non-empty dependency list to build survey step payload", buf, 0xCu);
  }

LABEL_19:

LABEL_20:
  objc_autoreleasePoolPop(v16);

  return v8;
}

- (CLSQuestionStep)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSQuestionStep *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"questionText");
    [v6 setQuestionText:v8];

    v9 = sub_10016D778(rowCopy, @"displayOrder");
    [v6 setDisplayOrder:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(rowCopy, @"version");
    [v6 setVersion:{objc_msgSend(v10, "integerValue")}];

    v11 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v11, "integerValue")}];

    v12 = sub_10016D778(rowCopy, @"questionType");
    [v6 setQuestionType:{objc_msgSend(v12, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v12.receiver = self;
  v12.super_class = CLSQuestionStep;
  toCopy = to;
  [(CLSQuestionStep *)&v12 bindTo:toCopy];
  v13 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v13 count:1, v12.receiver, v12.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSQuestionStep *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  questionText = [(CLSQuestionStep *)self questionText];
  sub_1000982FC(toCopy, questionText, @"questionText");

  v8 = [NSNumber numberWithInteger:[(CLSQuestionStep *)self displayOrder]];
  sub_1000982FC(toCopy, v8, @"displayOrder");

  v9 = [NSNumber numberWithInteger:[(CLSQuestionStep *)self version]];
  sub_1000982FC(toCopy, v9, @"version");

  v10 = [NSNumber numberWithInteger:[(CLSQuestionStep *)self type]];
  sub_1000982FC(toCopy, v10, @"type");

  v11 = [NSNumber numberWithInteger:[(CLSQuestionStep *)self questionType]];
  sub_1000982FC(toCopy, v11, @"questionType");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSQuestionStep(   objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    questionText      text,\n    version           integer,\n    displayOrder      integer,\n    type              integer,\n    questionType      integer,\n    foreign key (parentObjectID) references CLSSurvey(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index CLSQuestionStep_objectID on CLSQuestionStep (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSQuestionStep_parentObjectID on CLSQuestionStep (parentObjectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_8;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_8:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSQuestionStep *)self objectID];
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

  v11 = sub_10006FEFC(databaseCopy, objectID);
  [v7 addObjectsFromArray:v11];

  allObjects = [v7 allObjects];
  sub_10008121C(v6, allObjects);

  if ([databaseCopy insertOrUpdateObject:v6])
  {
    v13 = objc_opt_new();
    v15 = v13;
    if (v13)
    {
      objc_setProperty_nonatomic_copy(v13, v14, objectID, 8);
      parentObjectID = [(CLSQuestionStep *)self parentObjectID];
      objc_setProperty_nonatomic_copy(v15, v17, parentObjectID, 16);
    }

    else
    {
      parentObjectID = [(CLSQuestionStep *)self parentObjectID];
    }

    if ([databaseCopy insertOrUpdateObject:v15])
    {
      v20 = objectID;
      v18 = [NSArray arrayWithObjects:&v20 count:1];
      [databaseCopy deleteAllWithoutTracking:objc_opt_class() where:@"parentObjectID = ?" bindings:v18];
      [databaseCopy deleteAllWithoutTracking:objc_opt_class() where:@"parentObjectID = ?" bindings:v18];
      [databaseCopy deleteAllWithoutTracking:objc_opt_class() where:@"parentObjectID = ?" bindings:v18];
      [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v18];
    }

    else
    {
      CLSInitLog();
      v19 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v22 = objectID;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Can't save reference to surveyID for objectID: %{public}@.", buf, 0xCu);
      }
    }
  }
}

- (BOOL)canCopyToDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_opt_class();
  parentObjectID = [(CLSQuestionStep *)self parentObjectID];
  v7 = [databaseCopy select:v5 identity:parentObjectID];

  LOBYTE(parentObjectID) = [v7 canCopyToDatabase:databaseCopy];
  return parentObjectID;
}

@end