@interface CLSMultipleChoiceAnswerItem
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database;
- (BOOL)canCopyToDatabase:(id)database;
- (CLSMultipleChoiceAnswerItem)initWithDatabaseRow:(id)row;
- (id)initWithCKRecord:(id)record;
- (int64_t)syncBackend:(id)backend;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSMultipleChoiceAnswerItem

- (BOOL)canCopyToDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_opt_class();
  parentObjectID = [(CLSMultipleChoiceAnswerItem *)self parentObjectID];
  v7 = [databaseCopy select:v5 identity:parentObjectID];

  LOBYTE(parentObjectID) = [v7 canCopyToDatabase:databaseCopy];
  return parentObjectID;
}

- (CLSMultipleChoiceAnswerItem)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSMultipleChoiceAnswerItem *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"itemText");
    [v6 setItemText:v8];

    v9 = sub_10016D778(rowCopy, @"displayOrder");
    [v6 setDisplayOrder:{objc_msgSend(v9, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v9.receiver = self;
  v9.super_class = CLSMultipleChoiceAnswerItem;
  toCopy = to;
  [(CLSMultipleChoiceAnswerItem *)&v9 bindTo:toCopy];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSMultipleChoiceAnswerItem *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  itemText = [(CLSMultipleChoiceAnswerItem *)self itemText];
  sub_1000982FC(toCopy, itemText, @"itemText");

  v8 = [NSNumber numberWithInteger:[(CLSMultipleChoiceAnswerItem *)self displayOrder]];
  sub_1000982FC(toCopy, v8, @"displayOrder");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSMultipleChoiceAnswerItem (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    itemText          text,\n    displayOrder      integer,\nforeign key (parentObjectID) references CLSMultipleChoiceAnswerFormat(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSMultipleChoiceAnswerItem_objectID on CLSMultipleChoiceAnswerItem (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSMultipleChoiceAnswerItem_parentObjectID on CLSMultipleChoiceAnswerItem (parentObjectID)", 0, 0, 0))
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
  objectID = [(CLSMultipleChoiceAnswerItem *)self objectID];
  v7 = objectID;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

- (id)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"itemText"];
  v6 = [recordCopy objectForKeyedSubscript:@"displayOrder"];
  integerValue = [v6 integerValue];

  v8 = [(CLSMultipleChoiceAnswerItem *)self initWithText:v5];
  v9 = v8;
  if (v8)
  {
    [(CLSMultipleChoiceAnswerItem *)v8 _initCommonPropsWithRecord:recordCopy];
    [(CLSMultipleChoiceAnswerItem *)v9 setDisplayOrder:integerValue];
  }

  return v9;
}

- (void)populate:(id)populate
{
  v7.receiver = self;
  v7.super_class = CLSMultipleChoiceAnswerItem;
  populateCopy = populate;
  [(CLSMultipleChoiceAnswerItem *)&v7 populate:populateCopy];
  v5 = [(CLSMultipleChoiceAnswerItem *)self itemText:v7.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"itemText"];

  v6 = [NSNumber numberWithInteger:[(CLSMultipleChoiceAnswerItem *)self displayOrder]];
  [populateCopy setObject:v6 forKeyedSubscript:@"displayOrder"];

  [(CLSMultipleChoiceAnswerItem *)self updateParentReferencesForRecord:populateCopy];
}

- (int64_t)syncBackend:(id)backend
{
  backendCopy = backend;
  parentObjectID = [(CLSMultipleChoiceAnswerItem *)self parentObjectID];
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
  v12 = v11;
  if (objectCopy)
  {
    v45 = v11;
    v13 = objc_alloc_init(PDDPPayload);
    [(PDDPPayload *)v13 setType:26];
    v14 = [itemCopy state] - 1;
    if (v14 < 3)
    {
      v15 = (v14 + 1);
    }

    else
    {
      v15 = 0;
    }

    [(PDDPPayload *)v13 setAction:v15];
    parentObjectID = [objectCopy parentObjectID];
    v17 = sub_10012109C(databaseCopy, parentObjectID);

    parentObjectID2 = [v17 parentObjectID];
    v19 = sub_100070560(databaseCopy, parentObjectID2);

    v20 = objc_opt_class();
    objectID = [v19 objectID];
    v48 = objectID;
    v22 = [NSArray arrayWithObjects:&v48 count:1];
    v23 = [databaseCopy select:v20 where:@"entityIdentity = ?" bindings:v22];

    if (!v23)
    {
      objectID2 = [v17 objectID];
      v25 = sub_100120F3C(databaseCopy, objectID2);

      v44 = v25;
      v26 = sub_10001AD90(v19, v17, v25);
      [(PDDPPayload *)v13 setSurveyStep:v26];

      objectID3 = [v19 objectID];
      v28 = sub_10006FEFC(databaseCopy, objectID3);

      v43 = v28;
      v29 = [v28 mutableCopy];
      surveyStep = [(PDDPPayload *)v13 surveyStep];
      [surveyStep setClassIds:v29];

      parentObjectID3 = [v19 parentObjectID];
      if (parentObjectID3)
      {
        v42 = sub_1000C8BEC(databaseCopy, parentObjectID3);
        [CLSSurvey payloadForObject:v42 action:2 database:databaseCopy];
        v32 = v41 = itemCopy;
        v47 = parentObjectID3;
        [NSArray arrayWithObjects:&v47 count:1];
        v34 = v33 = v10;
        sub_1000C8DF8(databaseCopy, v34, 1);

        v46[0] = v13;
        v46[1] = v32;
        v35 = [NSArray arrayWithObjects:v46 count:2];
        [v33 addObjectsFromArray:v35];

        v10 = v33;
        itemCopy = v41;
      }

      else
      {
        [v10 addObject:v13];
      }
    }

    v12 = v45;
  }

  else
  {
    CLSInitLog();
    v36 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v37 = v36;
      v38 = objc_opt_class();
      v39 = v38;
      *buf = 138543618;
      v50 = v38;
      v51 = 2050;
      state = [itemCopy state];
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "'%{public}@': Do not expect CLSMultipleChoiceAnswerItem object to be nil with action %{public}ld", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v12);

  return v10;
}

@end