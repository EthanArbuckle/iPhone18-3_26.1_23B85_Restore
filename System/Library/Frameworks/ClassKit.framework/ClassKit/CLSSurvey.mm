@interface CLSSurvey
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (id)hashableColumnNames;
+ (id)payloadsForDeletedSurvey:(id)survey classIDs:(id)ds database:(id)database;
+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database;
- (BOOL)canCopyToDatabase:(id)database;
- (CLSSurvey)initWithCKRecord:(id)record;
- (CLSSurvey)initWithDatabaseRow:(id)row;
- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies;
- (int64_t)syncBackend:(id)backend;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSSurvey

- (BOOL)canCopyToDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_opt_class();
  parentObjectID = [(CLSSurvey *)self parentObjectID];
  v7 = [databaseCopy select:v5 identity:parentObjectID];

  LOBYTE(parentObjectID) = [v7 canCopyToDatabase:databaseCopy];
  return parentObjectID;
}

+ (id)hashableColumnNames
{
  v4[0] = @"rowid";
  v4[1] = @"dateLastModified";
  v4[2] = @"surveyUpdateStatus";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (CLSSurvey)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSSurvey *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(rowCopy, @"title");
    [v6 setTitle:v9];

    v10 = sub_10016D778(rowCopy, @"authorID");
    [v6 setAuthorID:v10];

    v11 = sub_10016D6F0(rowCopy, @"studentFirstSubmissionDate");
    [v6 setStudentFirstSubmissionDate:v11];

    v12 = sub_10016D6F0(rowCopy, @"teacherLastModifiedDate");
    [v6 setTeacherLastModifiedDate:v12];

    v13 = sub_10016D778(rowCopy, @"serverETag");
    [v6 setServerETag:v13];

    v14 = sub_10016D778(rowCopy, @"surveyUpdateStatus");
    [v6 setSurveyUpdateStatus:{objc_msgSend(v14, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v14.receiver = self;
  v14.super_class = CLSSurvey;
  toCopy = to;
  [(CLSSurvey *)&v14 bindTo:toCopy];
  v15 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v15 count:1, v14.receiver, v14.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSSurvey *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSSurvey *)self type]];
  sub_1000982FC(toCopy, v7, @"type");

  title = [(CLSSurvey *)self title];
  sub_1000982FC(toCopy, title, @"title");

  authorID = [(CLSSurvey *)self authorID];
  sub_1000982FC(toCopy, authorID, @"authorID");

  serverETag = [(CLSSurvey *)self serverETag];
  sub_1000982FC(toCopy, serverETag, @"serverETag");

  teacherLastModifiedDate = [(CLSSurvey *)self teacherLastModifiedDate];
  sub_1000982FC(toCopy, teacherLastModifiedDate, @"teacherLastModifiedDate");

  studentFirstSubmissionDate = [(CLSSurvey *)self studentFirstSubmissionDate];
  sub_1000982FC(toCopy, studentFirstSubmissionDate, @"studentFirstSubmissionDate");

  v13 = [NSNumber numberWithInteger:[(CLSSurvey *)self surveyUpdateStatus]];
  sub_1000982FC(toCopy, v13, @"surveyUpdateStatus");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSSurvey (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    title             text not null,\n    authorID          text not null,\n    type              integer,\n    serverETag        text,\n    teacherLastModifiedDate     real,\n    studentFirstSubmissionDate  real,\n    surveyUpdateStatus  integer,\n    foreign key (parentObjectID) references CLSHandoutAttachment(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSSurvey_objectID on CLSSurvey (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSSurvey_parentObjectID on CLSSurvey (parentObjectID)", 0, 0, 0))
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
  objectID = [(CLSSurvey *)self objectID];
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

  v11 = sub_1000C8950(databaseCopy, objectID);
  [v7 addObjectsFromArray:v11];

  allObjects = [v7 allObjects];
  sub_10008121C(v6, allObjects);

  if ([databaseCopy insertOrUpdateObject:v6])
  {
    v23 = objectID;
    v13 = [NSArray arrayWithObjects:&v23 count:1];
    v14 = objc_opt_new();
    v15 = objc_opt_new();
    v17 = v15;
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v16, objectID, 8);
    }

    v18 = objc_opt_class();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000C8A38;
    v21[3] = &unk_100203888;
    v22 = v14;
    v19 = v14;
    [databaseCopy selectAll:v18 where:@"parentObjectID = ?" bindings:v13 block:v21];
    allObjects2 = [v19 allObjects];
    sub_10008121C(v17, allObjects2);

    [databaseCopy insertOrUpdateObject:v17];
    [databaseCopy deleteAllWithoutTracking:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
  }
}

- (CLSSurvey)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"type"];
  if (v5)
  {
    v6 = CLSSurveyTypeFromString();
    v7 = [recordCopy objectForKeyedSubscript:@"authorID"];
    v8 = [(CLSSurvey *)self initWithType:v6 authorID:v7];
    v9 = v8;
    if (v8)
    {
      [(CLSSurvey *)v8 _initCommonPropsWithRecord:recordCopy];
      v10 = [recordCopy objectForKeyedSubscript:@"title"];
      [(CLSSurvey *)v9 setTitle:v10];
    }

    self = v9;

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
  v8.receiver = self;
  v8.super_class = CLSSurvey;
  populateCopy = populate;
  [(CLSSurvey *)&v8 populate:populateCopy];
  v5 = [(CLSSurvey *)self authorID:v8.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"authorID"];

  [(CLSSurvey *)self type];
  v6 = NSStringFromSurveyType();
  [populateCopy setObject:v6 forKeyedSubscript:@"type"];

  title = [(CLSSurvey *)self title];
  [populateCopy setObject:title forKeyedSubscript:@"title"];

  [(CLSSurvey *)self updateParentReferencesForRecord:populateCopy];
}

- (int64_t)syncBackend:(id)backend
{
  backendCopy = backend;
  parentObjectID = [(CLSSurvey *)self parentObjectID];
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

+ (id)payloadsForDeletedSurvey:(id)survey classIDs:(id)ds database:(id)database
{
  surveyCopy = survey;
  dsCopy = ds;
  databaseCopy = database;
  v10 = [databaseCopy select:objc_opt_class() identity:surveyCopy];
  if (v10)
  {
    v26 = databaseCopy;
    v27 = surveyCopy;
    v11 = objc_opt_new();
    v25 = v10;
    v12 = v10[2];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = objc_alloc_init(PDDPPayload);
          [(PDDPPayload *)v19 setType:26];
          [(PDDPPayload *)v19 setAction:3];
          v20 = objc_opt_new();
          [(PDDPPayload *)v19 setSurveyStep:v20];

          surveyStep = [(PDDPPayload *)v19 surveyStep];
          [surveyStep setObjectId:v17];

          v22 = [dsCopy mutableCopy];
          surveyStep2 = [(PDDPPayload *)v19 surveyStep];
          [surveyStep2 setClassIds:v22];

          [v11 addObject:v19];
          objc_autoreleasePoolPop(v18);
        }

        v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    databaseCopy = v26;
    surveyCopy = v27;
    v10 = v25;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database
{
  objectCopy = object;
  itemCopy = item;
  databaseCopy = database;
  v10 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v10 setType:25];
  v11 = [itemCopy state] - 1;
  if (v11 < 3)
  {
    v12 = (v11 + 1);
  }

  else
  {
    v12 = 0;
  }

  [(PDDPPayload *)v10 setAction:v12];
  if ([itemCopy state] == 3)
  {
    v13 = objc_opt_new();
    [(PDDPPayload *)v10 setSurvey:v13];

    entityIdentity = [itemCopy entityIdentity];
    survey = [(PDDPPayload *)v10 survey];
    [survey setObjectId:entityIdentity];

    v16 = [databaseCopy select:objc_opt_class() identity:entityIdentity];
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 16);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v20 = [v19 mutableCopy];
    survey2 = [(PDDPPayload *)v10 survey];
    [survey2 setClassIds:v20];

    if (v17)
    {
      v22 = v17[2];
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v24 = [CLSSurvey payloadsForDeletedSurvey:entityIdentity classIDs:v23 database:databaseCopy];

    if (v24)
    {
      v25 = [NSMutableArray arrayWithObject:v10];
      [v25 addObjectsFromArray:v24];
      v26 = [v25 copy];

      goto LABEL_15;
    }
  }

  else
  {
    v27 = sub_10001ABBC(objectCopy);
    [(PDDPPayload *)v10 setSurvey:v27];

    objectID = [objectCopy objectID];
    entityIdentity = sub_1000C8950(databaseCopy, objectID);

    v17 = [entityIdentity mutableCopy];
    survey3 = [(PDDPPayload *)v10 survey];
    [survey3 setClassIds:v17];
  }

  if (objectCopy)
  {
    objectID2 = [objectCopy objectID];
    v34 = objectID2;
    v31 = [NSArray arrayWithObjects:&v34 count:1];
    sub_1000C8DF8(databaseCopy, v31, 1);
  }

  v33 = v10;
  v26 = [NSArray arrayWithObjects:&v33 count:1];
LABEL_15:

  return v26;
}

- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies
{
  dsCopy = ds;
  v6 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v6 setType:25];
  v7 = sub_10001ABBC(self);
  [(PDDPPayload *)v6 setSurvey:v7];

  v8 = [dsCopy mutableCopy];
  survey = [(PDDPPayload *)v6 survey];
  [survey setClassIds:v8];

  v12 = v6;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  return v10;
}

@end