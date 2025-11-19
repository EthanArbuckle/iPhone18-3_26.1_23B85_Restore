@interface CLSHandout
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (id)hashableColumnNames;
+ (id)payloadsForObject:(id)a3 withSyncItem:(id)a4 database:(id)a5;
- (BOOL)writeInDatabase:(id)a3;
- (CLSHandout)initWithCKRecord:(id)a3;
- (CLSHandout)initWithDatabaseRow:(id)a3;
- (id)payloadsWithClassIDs:(id)a3 dependencies:(id)a4;
- (unint64_t)changeHash;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSHandout

- (BOOL)writeInDatabase:(id)a3
{
  v4 = a3;
  if (([(CLSHandout *)self isReviewed]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CLSHandout *)self isDeleted]^ 1;
  }

  v6 = objc_opt_class();
  v7 = [(CLSHandout *)self objectID];
  v16 = v7;
  v8 = [NSArray arrayWithObjects:&v16 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BFFB0;
  v13[3] = &unk_100204848;
  v14 = v4;
  v15 = v5;
  v9 = v4;
  [v9 selectAll:v6 where:@"parentObjectID = ?" bindings:v8 block:v13];

  v12.receiver = self;
  v12.super_class = CLSHandout;
  v10 = [(CLSHandout *)&v12 writeInDatabase:v9];

  return v10;
}

+ (id)payloadsForObject:(id)a3 withSyncItem:(id)a4 database:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v10 setType:2];
  v11 = [v8 state] - 1;
  if (v11 < 3)
  {
    v12 = (v11 + 1);
  }

  else
  {
    v12 = 0;
  }

  [(PDDPPayload *)v10 setAction:v12];
  if ([(PDDPPayload *)v10 action]== 3 && sub_1000B2958())
  {
    [(PDDPPayload *)v10 setActionFlags:1];
  }

  if ([v8 state] == 3)
  {
    v13 = objc_opt_new();
    [(PDDPPayload *)v10 setHandout:v13];

    v14 = [v8 entityIdentity];
    v15 = [(PDDPPayload *)v10 handout];
    [v15 setObjectId:v14];

    v16 = [v9 select:objc_opt_class() identity:v14];
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
    v21 = [(PDDPPayload *)v10 handout];
    [v21 setClassIds:v20];
  }

  else
  {
    v22 = sub_100018B04(v7);
    [(PDDPPayload *)v10 setHandout:v22];

    v23 = [v7 objectID];
    v14 = sub_100175C6C(v9, v23);

    v17 = [v14 mutableCopy];
    v19 = [(PDDPPayload *)v10 handout];
    [v19 setClassIds:v17];
  }

  v26 = v10;
  v24 = [NSArray arrayWithObjects:&v26 count:1];

  return v24;
}

- (CLSHandout)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CLSHandout *)self init];
  v6 = v5;
  if (v5)
  {
    [(CLSHandout *)v5 _initCommonPropsWithRecord:v4];
    v7 = [v4 objectForKeyedSubscript:@"dueDate"];
    [(CLSHandout *)v6 setDueDate:v7];

    v8 = [v4 objectForKeyedSubscript:@"instructions"];
    [(CLSHandout *)v6 setInstructions:v8];

    v9 = [v4 objectForKeyedSubscript:@"title"];
    [(CLSHandout *)v6 setTitle:v9];

    v10 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_self();
    if ([v10 isEqualToString:@"Private"])
    {
      v11 = 1;
    }

    else if ([v10 isEqualToString:@"Public"])
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    [(CLSHandout *)v6 setType:v11];
    v12 = [v4 objectForKeyedSubscript:@"version"];
    -[CLSHandout setVersion:](v6, "setVersion:", [v12 integerValue]);
  }

  return v6;
}

- (void)populate:(id)a3
{
  v12.receiver = self;
  v12.super_class = CLSHandout;
  v4 = a3;
  [(CLSHandout *)&v12 populate:v4];
  v5 = [(CLSHandout *)self dueDate:v12.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"dueDate"];

  v6 = [(CLSHandout *)self instructions];
  [v4 setObject:v6 forKeyedSubscript:@"instructions"];

  v7 = [(CLSHandout *)self title];
  [v4 setObject:v7 forKeyedSubscript:@"title"];

  v8 = [(CLSHandout *)self type];
  objc_opt_self();
  v9 = @"Private";
  if (v8 == 2)
  {
    v9 = @"Public";
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"Unknown";
  }

  [v4 setObject:v10 forKeyedSubscript:@"type"];
  v11 = [NSNumber numberWithInteger:[(CLSHandout *)self version]];
  [v4 setObject:v11 forKeyedSubscript:@"version"];
}

- (id)payloadsWithClassIDs:(id)a3 dependencies:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v6 setType:2];
  v7 = sub_100018B04(self);
  [(PDDPPayload *)v6 setHandout:v7];

  v8 = [v5 mutableCopy];
  v9 = [(PDDPPayload *)v6 handout];
  [v9 setClassIds:v8];

  v12 = v6;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  return v10;
}

+ (id)hashableColumnNames
{
  v4[0] = @"rowid";
  v4[1] = @"dateLastModified";
  v4[2] = @"state";
  v4[3] = @"substate";
  v4[4] = @"publishingState";
  v4[5] = @"flags";
  v4[6] = @"version";
  v2 = [NSArray arrayWithObjects:v4 count:7];

  return v2;
}

- (unint64_t)changeHash
{
  v8.receiver = self;
  v8.super_class = CLSHandout;
  v3 = [(CLSHandout *)&v8 changeHash];
  v4 = v3 ^ (2 * [(CLSHandout *)self state]);
  v5 = v4 ^ (4 * [(CLSHandout *)self publishingState]);
  v6 = v5 ^ (8 * [(CLSHandout *)self flags]);
  return v6 ^ (16 * [(CLSHandout *)self version]);
}

- (CLSHandout)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSHandout *)self init];
  v6 = v5;
  if (v5)
  {
    [(CLSHandout *)v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"title");
    [(CLSHandout *)v6 setTitle:v7];

    v8 = sub_10016D778(v4, @"instructions");
    [(CLSHandout *)v6 setInstructions:v8];

    v9 = sub_10016D6F0(v4, @"dateOfPublication");
    [(CLSHandout *)v6 setDateOfPublication:v9];

    v10 = sub_10016D6F0(v4, @"dueDate");
    [(CLSHandout *)v6 setDueDate:v10];

    v11 = sub_10016D778(v4, @"reviewed");
    -[CLSHandout setReviewed:](v6, "setReviewed:", [v11 BOOLValue]);

    v12 = sub_10016D778(v4, @"state");
    -[CLSHandout setState:](v6, "setState:", [v12 integerValue]);

    v13 = sub_10016D778(v4, @"substate");
    -[CLSHandout setSubstate:](v6, "setSubstate:", [v13 integerValue]);

    v14 = sub_10016D778(v4, @"flags");
    -[CLSHandout setFlags:](v6, "setFlags:", [v14 unsignedIntegerValue]);

    v15 = sub_10016D6F0(v4, @"dateLastReviewed");
    [(CLSHandout *)v6 setLastReviewedDate:v15];

    v16 = sub_10016D778(v4, @"publishingState");
    -[CLSHandout setPublishingState:](v6, "setPublishingState:", [v16 integerValue]);

    v17 = sub_10016D778(v4, @"publishError");
    v18 = [CLSUtil errorFromData:v17];
    [(CLSHandout *)v6 setPublishError:v18];

    v19 = sub_10016D778(v4, @"type");
    -[CLSHandout setType:](v6, "setType:", [v19 integerValue]);

    v20 = sub_10016D778(v4, @"version");
    -[CLSHandout setVersion:](v6, "setVersion:", [v20 integerValue]);
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v20.receiver = self;
  v20.super_class = CLSHandout;
  v4 = a3;
  [(CLSHandout *)&v20 bindTo:v4];
  v21 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v21 count:1, v20.receiver, v20.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSHandout *)self dateOfPublication];
  sub_1000982FC(v4, v6, @"dateOfPublication");

  v7 = [(CLSHandout *)self dueDate];
  sub_1000982FC(v4, v7, @"dueDate");

  v8 = [(CLSHandout *)self instructions];
  sub_1000982FC(v4, v8, @"instructions");

  v9 = [(CLSHandout *)self title];
  sub_1000982FC(v4, v9, @"title");

  v10 = [NSNumber numberWithBool:[(CLSHandout *)self isReviewed]];
  sub_1000982FC(v4, v10, @"reviewed");

  v11 = [NSNumber numberWithInteger:[(CLSHandout *)self state]];
  sub_1000982FC(v4, v11, @"state");

  v12 = [NSNumber numberWithUnsignedInteger:[(CLSHandout *)self substate]];
  sub_1000982FC(v4, v12, @"substate");

  v13 = [NSNumber numberWithUnsignedInteger:[(CLSHandout *)self flags]];
  sub_1000982FC(v4, v13, @"flags");

  v14 = [(CLSHandout *)self lastReviewedDate];
  sub_1000982FC(v4, v14, @"dateLastReviewed");

  v15 = [NSNumber numberWithInteger:[(CLSHandout *)self publishingState]];
  sub_1000982FC(v4, v15, @"publishingState");

  v16 = [(CLSHandout *)self publishError];
  v17 = [CLSUtil dataFromError:v16];

  sub_1000982FC(v4, v17, @"publishError");
  v18 = [NSNumber numberWithInteger:[(CLSHandout *)self type]];
  sub_1000982FC(v4, v18, @"type");

  v19 = [NSNumber numberWithInteger:[(CLSHandout *)self version]];
  sub_1000982FC(v4, v19, @"version");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  v9 = 8;
  if (a3)
  {
    v9 = a3;
  }

  if (v9 <= 4)
  {
    if ((v9 - 3) >= 2)
    {
      if (v9 == 1)
      {
        if (!sub_1000B9298(v7, @"create trigger if not exists trigger_cleanup_cached_reports_for_due_date_change  after update  on CLSHandout  when OLD.dueDate != NEW.dueDate begin  delete from CLSHandoutReportItem where handoutID=OLD.objectID; end", 0, 0, 0))
        {
          goto LABEL_30;
        }
      }

      else if (v9 != 2)
      {
        goto LABEL_29;
      }

      if (!sub_1000B9298(v8, @"alter table CLSHandout add column flags integer", 0, 0, 0))
      {
        goto LABEL_30;
      }
    }

    if (!sub_1000B9298(v8, @"alter table CLSHandout add column substate integer", 0, 0, 0))
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  if (v9 <= 6)
  {
    if (v9 != 5)
    {
LABEL_21:
      if (!sub_1000B9298(v8, @"alter table CLSHandout add column version integer default 0", 0, 0, 0))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

LABEL_20:
    if (!sub_1000B9298(v8, @"alter table CLSHandout add column type integer default 1", 0, 0, 0))
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  if (v9 == 7)
  {
LABEL_22:
    if (sub_1000B9298(v8, @"create table CLSHandout_temp (\n    objectID            text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    dateOfPublication   real,\n    dateLastReviewed    real,\n    dueDate             real,\n    instructions        text,\n    title               text,\n    reviewed            integer,\n    state               integer,\n    publishingState     integer,\n    publishError        blob,\n    flags               integer,\n    substate            integer,\n    type                integer default 1,\n    version             integer default 0\n)", 0, 0, 0) && sub_1000B9298(v8, @"insert into CLSHandout_temp select objectID, dateCreated, dateLastModified, dateOfPublication, dateLastReviewed, dueDate, instructions, title, reviewed, state, publishingState, publishError, flags, substate, type, version from CLSHandout", 0, 0, 0) && sub_1000B9298(v8, @"drop table CLSHandout", 0, 0, 0) && sub_1000B9298(v8, @"alter table CLSHandout_temp rename to CLSHandout", 0, 0, 0) && sub_1000B9298(v8, @"create unique index if not exists CLSHandout_objectID on CLSHandout (objectID)", 0, 0, 0) && (sub_1000B9298(v8, @"create trigger if not exists trigger_cleanup_cached_reports_for_due_date_change  after update  on CLSHandout  when OLD.dueDate != NEW.dueDate begin  delete from CLSHandoutReportItem where handoutID=OLD.objectID; end", 0, 0, 0) & 1) != 0)
    {
LABEL_28:
      a3 = 9;
      goto LABEL_29;
    }

LABEL_30:
    v10 = 0;
    goto LABEL_31;
  }

  if (v9 == 8)
  {
    if (sub_1000B9298(v7, @"create table CLSHandout (\n    objectID            text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    dateOfPublication   real,\n    dateLastReviewed    real,\n    dueDate             real,\n    instructions        text,\n    title               text,\n    reviewed            integer,\n    state               integer,\n    publishingState     integer,\n    publishError        blob,\n    flags               integer,\n    substate            integer,\n    type                integer default 1,\n    version             integer default 0\n)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index if not exists CLSHandout_objectID on CLSHandout (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create trigger if not exists trigger_cleanup_cached_reports_for_due_date_change  after update  on CLSHandout  when OLD.dueDate != NEW.dueDate begin  delete from CLSHandoutReportItem where handoutID=OLD.objectID; end", 0, 0, 0))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

LABEL_29:
  *a4 = a3;
  v10 = 1;
LABEL_31:

  return v10;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSHandout *)self objectID];
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

  v11 = sub_100175C6C(v4, v5);
  [v7 addObjectsFromArray:v11];

  v12 = [v7 allObjects];
  sub_10008121C(v6, v12);

  if ([v4 insertOrUpdateObject:v6])
  {
    v14 = v5;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
  }
}

@end