@interface CLSMultipleChoiceAnswerItem
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (id)payloadsForObject:(id)a3 withSyncItem:(id)a4 database:(id)a5;
- (BOOL)canCopyToDatabase:(id)a3;
- (CLSMultipleChoiceAnswerItem)initWithDatabaseRow:(id)a3;
- (id)initWithCKRecord:(id)a3;
- (int64_t)syncBackend:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSMultipleChoiceAnswerItem

- (BOOL)canCopyToDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CLSMultipleChoiceAnswerItem *)self parentObjectID];
  v7 = [v4 select:v5 identity:v6];

  LOBYTE(v6) = [v7 canCopyToDatabase:v4];
  return v6;
}

- (CLSMultipleChoiceAnswerItem)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSMultipleChoiceAnswerItem *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"itemText");
    [v6 setItemText:v8];

    v9 = sub_10016D778(v4, @"displayOrder");
    [v6 setDisplayOrder:{objc_msgSend(v9, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLSMultipleChoiceAnswerItem;
  v4 = a3;
  [(CLSMultipleChoiceAnswerItem *)&v9 bindTo:v4];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSMultipleChoiceAnswerItem *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [(CLSMultipleChoiceAnswerItem *)self itemText];
  sub_1000982FC(v4, v7, @"itemText");

  v8 = [NSNumber numberWithInteger:[(CLSMultipleChoiceAnswerItem *)self displayOrder]];
  sub_1000982FC(v4, v8, @"displayOrder");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSMultipleChoiceAnswerItem (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    itemText          text,\n    displayOrder      integer,\nforeign key (parentObjectID) references CLSMultipleChoiceAnswerFormat(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSMultipleChoiceAnswerItem_objectID on CLSMultipleChoiceAnswerItem (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSMultipleChoiceAnswerItem_parentObjectID on CLSMultipleChoiceAnswerItem (parentObjectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_8;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_8:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSMultipleChoiceAnswerItem *)self objectID];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

- (id)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"itemText"];
  v6 = [v4 objectForKeyedSubscript:@"displayOrder"];
  v7 = [v6 integerValue];

  v8 = [(CLSMultipleChoiceAnswerItem *)self initWithText:v5];
  v9 = v8;
  if (v8)
  {
    [(CLSMultipleChoiceAnswerItem *)v8 _initCommonPropsWithRecord:v4];
    [(CLSMultipleChoiceAnswerItem *)v9 setDisplayOrder:v7];
  }

  return v9;
}

- (void)populate:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLSMultipleChoiceAnswerItem;
  v4 = a3;
  [(CLSMultipleChoiceAnswerItem *)&v7 populate:v4];
  v5 = [(CLSMultipleChoiceAnswerItem *)self itemText:v7.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"itemText"];

  v6 = [NSNumber numberWithInteger:[(CLSMultipleChoiceAnswerItem *)self displayOrder]];
  [v4 setObject:v6 forKeyedSubscript:@"displayOrder"];

  [(CLSMultipleChoiceAnswerItem *)self updateParentReferencesForRecord:v4];
}

- (int64_t)syncBackend:(id)a3
{
  v4 = a3;
  v5 = [(CLSMultipleChoiceAnswerItem *)self parentObjectID];
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
  v11 = objc_autoreleasePoolPush();
  v12 = v11;
  if (v7)
  {
    v45 = v11;
    v13 = objc_alloc_init(PDDPPayload);
    [(PDDPPayload *)v13 setType:26];
    v14 = [v8 state] - 1;
    if (v14 < 3)
    {
      v15 = (v14 + 1);
    }

    else
    {
      v15 = 0;
    }

    [(PDDPPayload *)v13 setAction:v15];
    v16 = [v7 parentObjectID];
    v17 = sub_10012109C(v9, v16);

    v18 = [v17 parentObjectID];
    v19 = sub_100070560(v9, v18);

    v20 = objc_opt_class();
    v21 = [v19 objectID];
    v48 = v21;
    v22 = [NSArray arrayWithObjects:&v48 count:1];
    v23 = [v9 select:v20 where:@"entityIdentity = ?" bindings:v22];

    if (!v23)
    {
      v24 = [v17 objectID];
      v25 = sub_100120F3C(v9, v24);

      v44 = v25;
      v26 = sub_10001AD90(v19, v17, v25);
      [(PDDPPayload *)v13 setSurveyStep:v26];

      v27 = [v19 objectID];
      v28 = sub_10006FEFC(v9, v27);

      v43 = v28;
      v29 = [v28 mutableCopy];
      v30 = [(PDDPPayload *)v13 surveyStep];
      [v30 setClassIds:v29];

      v31 = [v19 parentObjectID];
      if (v31)
      {
        v42 = sub_1000C8BEC(v9, v31);
        [CLSSurvey payloadForObject:v42 action:2 database:v9];
        v32 = v41 = v8;
        v47 = v31;
        [NSArray arrayWithObjects:&v47 count:1];
        v34 = v33 = v10;
        sub_1000C8DF8(v9, v34, 1);

        v46[0] = v13;
        v46[1] = v32;
        v35 = [NSArray arrayWithObjects:v46 count:2];
        [v33 addObjectsFromArray:v35];

        v10 = v33;
        v8 = v41;
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
      v52 = [v8 state];
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "'%{public}@': Do not expect CLSMultipleChoiceAnswerItem object to be nil with action %{public}ld", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v12);

  return v10;
}

@end