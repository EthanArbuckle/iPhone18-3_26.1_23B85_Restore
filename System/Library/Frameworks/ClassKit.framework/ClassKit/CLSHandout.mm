@interface CLSHandout
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (id)hashableColumnNames;
+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database;
- (BOOL)writeInDatabase:(id)database;
- (CLSHandout)initWithCKRecord:(id)record;
- (CLSHandout)initWithDatabaseRow:(id)row;
- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies;
- (unint64_t)changeHash;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSHandout

- (BOOL)writeInDatabase:(id)database
{
  databaseCopy = database;
  if (([(CLSHandout *)self isReviewed]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CLSHandout *)self isDeleted]^ 1;
  }

  v6 = objc_opt_class();
  objectID = [(CLSHandout *)self objectID];
  v16 = objectID;
  v8 = [NSArray arrayWithObjects:&v16 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BFFB0;
  v13[3] = &unk_100204848;
  v14 = databaseCopy;
  v15 = v5;
  v9 = databaseCopy;
  [v9 selectAll:v6 where:@"parentObjectID = ?" bindings:v8 block:v13];

  v12.receiver = self;
  v12.super_class = CLSHandout;
  v10 = [(CLSHandout *)&v12 writeInDatabase:v9];

  return v10;
}

+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database
{
  objectCopy = object;
  itemCopy = item;
  databaseCopy = database;
  v10 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v10 setType:2];
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
  if ([(PDDPPayload *)v10 action]== 3 && sub_1000B2958())
  {
    [(PDDPPayload *)v10 setActionFlags:1];
  }

  if ([itemCopy state] == 3)
  {
    v13 = objc_opt_new();
    [(PDDPPayload *)v10 setHandout:v13];

    entityIdentity = [itemCopy entityIdentity];
    handout = [(PDDPPayload *)v10 handout];
    [handout setObjectId:entityIdentity];

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

    handout3 = v18;
    v20 = [handout3 mutableCopy];
    handout2 = [(PDDPPayload *)v10 handout];
    [handout2 setClassIds:v20];
  }

  else
  {
    v22 = sub_100018B04(objectCopy);
    [(PDDPPayload *)v10 setHandout:v22];

    objectID = [objectCopy objectID];
    entityIdentity = sub_100175C6C(databaseCopy, objectID);

    v17 = [entityIdentity mutableCopy];
    handout3 = [(PDDPPayload *)v10 handout];
    [handout3 setClassIds:v17];
  }

  v26 = v10;
  v24 = [NSArray arrayWithObjects:&v26 count:1];

  return v24;
}

- (CLSHandout)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [(CLSHandout *)self init];
  v6 = v5;
  if (v5)
  {
    [(CLSHandout *)v5 _initCommonPropsWithRecord:recordCopy];
    v7 = [recordCopy objectForKeyedSubscript:@"dueDate"];
    [(CLSHandout *)v6 setDueDate:v7];

    v8 = [recordCopy objectForKeyedSubscript:@"instructions"];
    [(CLSHandout *)v6 setInstructions:v8];

    v9 = [recordCopy objectForKeyedSubscript:@"title"];
    [(CLSHandout *)v6 setTitle:v9];

    v10 = [recordCopy objectForKeyedSubscript:@"type"];
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
    v12 = [recordCopy objectForKeyedSubscript:@"version"];
    -[CLSHandout setVersion:](v6, "setVersion:", [v12 integerValue]);
  }

  return v6;
}

- (void)populate:(id)populate
{
  v12.receiver = self;
  v12.super_class = CLSHandout;
  populateCopy = populate;
  [(CLSHandout *)&v12 populate:populateCopy];
  v5 = [(CLSHandout *)self dueDate:v12.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"dueDate"];

  instructions = [(CLSHandout *)self instructions];
  [populateCopy setObject:instructions forKeyedSubscript:@"instructions"];

  title = [(CLSHandout *)self title];
  [populateCopy setObject:title forKeyedSubscript:@"title"];

  type = [(CLSHandout *)self type];
  objc_opt_self();
  v9 = @"Private";
  if (type == 2)
  {
    v9 = @"Public";
  }

  if (type)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"Unknown";
  }

  [populateCopy setObject:v10 forKeyedSubscript:@"type"];
  v11 = [NSNumber numberWithInteger:[(CLSHandout *)self version]];
  [populateCopy setObject:v11 forKeyedSubscript:@"version"];
}

- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies
{
  dsCopy = ds;
  v6 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v6 setType:2];
  v7 = sub_100018B04(self);
  [(PDDPPayload *)v6 setHandout:v7];

  v8 = [dsCopy mutableCopy];
  handout = [(PDDPPayload *)v6 handout];
  [handout setClassIds:v8];

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
  changeHash = [(CLSHandout *)&v8 changeHash];
  v4 = changeHash ^ (2 * [(CLSHandout *)self state]);
  v5 = v4 ^ (4 * [(CLSHandout *)self publishingState]);
  v6 = v5 ^ (8 * [(CLSHandout *)self flags]);
  return v6 ^ (16 * [(CLSHandout *)self version]);
}

- (CLSHandout)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = [(CLSHandout *)self init];
  v6 = v5;
  if (v5)
  {
    [(CLSHandout *)v5 _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"title");
    [(CLSHandout *)v6 setTitle:v7];

    v8 = sub_10016D778(rowCopy, @"instructions");
    [(CLSHandout *)v6 setInstructions:v8];

    v9 = sub_10016D6F0(rowCopy, @"dateOfPublication");
    [(CLSHandout *)v6 setDateOfPublication:v9];

    v10 = sub_10016D6F0(rowCopy, @"dueDate");
    [(CLSHandout *)v6 setDueDate:v10];

    v11 = sub_10016D778(rowCopy, @"reviewed");
    -[CLSHandout setReviewed:](v6, "setReviewed:", [v11 BOOLValue]);

    v12 = sub_10016D778(rowCopy, @"state");
    -[CLSHandout setState:](v6, "setState:", [v12 integerValue]);

    v13 = sub_10016D778(rowCopy, @"substate");
    -[CLSHandout setSubstate:](v6, "setSubstate:", [v13 integerValue]);

    v14 = sub_10016D778(rowCopy, @"flags");
    -[CLSHandout setFlags:](v6, "setFlags:", [v14 unsignedIntegerValue]);

    v15 = sub_10016D6F0(rowCopy, @"dateLastReviewed");
    [(CLSHandout *)v6 setLastReviewedDate:v15];

    v16 = sub_10016D778(rowCopy, @"publishingState");
    -[CLSHandout setPublishingState:](v6, "setPublishingState:", [v16 integerValue]);

    v17 = sub_10016D778(rowCopy, @"publishError");
    v18 = [CLSUtil errorFromData:v17];
    [(CLSHandout *)v6 setPublishError:v18];

    v19 = sub_10016D778(rowCopy, @"type");
    -[CLSHandout setType:](v6, "setType:", [v19 integerValue]);

    v20 = sub_10016D778(rowCopy, @"version");
    -[CLSHandout setVersion:](v6, "setVersion:", [v20 integerValue]);
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v20.receiver = self;
  v20.super_class = CLSHandout;
  toCopy = to;
  [(CLSHandout *)&v20 bindTo:toCopy];
  v21 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v21 count:1, v20.receiver, v20.super_class];
  sub_1000983A8(toCopy, v5);

  dateOfPublication = [(CLSHandout *)self dateOfPublication];
  sub_1000982FC(toCopy, dateOfPublication, @"dateOfPublication");

  dueDate = [(CLSHandout *)self dueDate];
  sub_1000982FC(toCopy, dueDate, @"dueDate");

  instructions = [(CLSHandout *)self instructions];
  sub_1000982FC(toCopy, instructions, @"instructions");

  title = [(CLSHandout *)self title];
  sub_1000982FC(toCopy, title, @"title");

  v10 = [NSNumber numberWithBool:[(CLSHandout *)self isReviewed]];
  sub_1000982FC(toCopy, v10, @"reviewed");

  v11 = [NSNumber numberWithInteger:[(CLSHandout *)self state]];
  sub_1000982FC(toCopy, v11, @"state");

  v12 = [NSNumber numberWithUnsignedInteger:[(CLSHandout *)self substate]];
  sub_1000982FC(toCopy, v12, @"substate");

  v13 = [NSNumber numberWithUnsignedInteger:[(CLSHandout *)self flags]];
  sub_1000982FC(toCopy, v13, @"flags");

  lastReviewedDate = [(CLSHandout *)self lastReviewedDate];
  sub_1000982FC(toCopy, lastReviewedDate, @"dateLastReviewed");

  v15 = [NSNumber numberWithInteger:[(CLSHandout *)self publishingState]];
  sub_1000982FC(toCopy, v15, @"publishingState");

  publishError = [(CLSHandout *)self publishError];
  v17 = [CLSUtil dataFromError:publishError];

  sub_1000982FC(toCopy, v17, @"publishError");
  v18 = [NSNumber numberWithInteger:[(CLSHandout *)self type]];
  sub_1000982FC(toCopy, v18, @"type");

  v19 = [NSNumber numberWithInteger:[(CLSHandout *)self version]];
  sub_1000982FC(toCopy, v19, @"version");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  versionCopy = 8;
  if (version)
  {
    versionCopy = version;
  }

  if (versionCopy <= 4)
  {
    if ((versionCopy - 3) >= 2)
    {
      if (versionCopy == 1)
      {
        if (!sub_1000B9298(databaseCopy, @"create trigger if not exists trigger_cleanup_cached_reports_for_due_date_change  after update  on CLSHandout  when OLD.dueDate != NEW.dueDate begin  delete from CLSHandoutReportItem where handoutID=OLD.objectID; end", 0, 0, 0))
        {
          goto LABEL_30;
        }
      }

      else if (versionCopy != 2)
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

  if (versionCopy <= 6)
  {
    if (versionCopy != 5)
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

  if (versionCopy == 7)
  {
LABEL_22:
    if (sub_1000B9298(v8, @"create table CLSHandout_temp (\n    objectID            text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    dateOfPublication   real,\n    dateLastReviewed    real,\n    dueDate             real,\n    instructions        text,\n    title               text,\n    reviewed            integer,\n    state               integer,\n    publishingState     integer,\n    publishError        blob,\n    flags               integer,\n    substate            integer,\n    type                integer default 1,\n    version             integer default 0\n)", 0, 0, 0) && sub_1000B9298(v8, @"insert into CLSHandout_temp select objectID, dateCreated, dateLastModified, dateOfPublication, dateLastReviewed, dueDate, instructions, title, reviewed, state, publishingState, publishError, flags, substate, type, version from CLSHandout", 0, 0, 0) && sub_1000B9298(v8, @"drop table CLSHandout", 0, 0, 0) && sub_1000B9298(v8, @"alter table CLSHandout_temp rename to CLSHandout", 0, 0, 0) && sub_1000B9298(v8, @"create unique index if not exists CLSHandout_objectID on CLSHandout (objectID)", 0, 0, 0) && (sub_1000B9298(v8, @"create trigger if not exists trigger_cleanup_cached_reports_for_due_date_change  after update  on CLSHandout  when OLD.dueDate != NEW.dueDate begin  delete from CLSHandoutReportItem where handoutID=OLD.objectID; end", 0, 0, 0) & 1) != 0)
    {
LABEL_28:
      version = 9;
      goto LABEL_29;
    }

LABEL_30:
    v10 = 0;
    goto LABEL_31;
  }

  if (versionCopy == 8)
  {
    if (sub_1000B9298(databaseCopy, @"create table CLSHandout (\n    objectID            text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    dateOfPublication   real,\n    dateLastReviewed    real,\n    dueDate             real,\n    instructions        text,\n    title               text,\n    reviewed            integer,\n    state               integer,\n    publishingState     integer,\n    publishError        blob,\n    flags               integer,\n    substate            integer,\n    type                integer default 1,\n    version             integer default 0\n)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index if not exists CLSHandout_objectID on CLSHandout (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create trigger if not exists trigger_cleanup_cached_reports_for_due_date_change  after update  on CLSHandout  when OLD.dueDate != NEW.dueDate begin  delete from CLSHandoutReportItem where handoutID=OLD.objectID; end", 0, 0, 0))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

LABEL_29:
  *finalVersion = version;
  v10 = 1;
LABEL_31:

  return v10;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSHandout *)self objectID];
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

  v11 = sub_100175C6C(databaseCopy, objectID);
  [v7 addObjectsFromArray:v11];

  allObjects = [v7 allObjects];
  sub_10008121C(v6, allObjects);

  if ([databaseCopy insertOrUpdateObject:v6])
  {
    v14 = objectID;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
  }
}

@end