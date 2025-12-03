@interface CLSHandoutRecipient
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database;
- (BOOL)canCopyToDatabase:(id)database;
- (CLSHandoutRecipient)initWithCKRecord:(id)record;
- (CLSHandoutRecipient)initWithDatabaseRow:(id)row;
- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies;
- (int64_t)syncBackend:(id)backend;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSHandoutRecipient

- (CLSHandoutRecipient)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"classID");
  v6 = sub_10016D778(rowCopy, @"personID");
  v7 = [(CLSHandoutRecipient *)self initWithClassID:v5 personID:v6];

  if (v7)
  {
    [(CLSHandoutRecipient *)v7 _initCommonPropsWithDatabaseRow:rowCopy];
    v8 = sub_10016D778(rowCopy, @"parentObjectID");
    [(CLSHandoutRecipient *)v7 setParentObjectID:v8];
  }

  return v7;
}

- (void)bindTo:(id)to
{
  v9.receiver = self;
  v9.super_class = CLSHandoutRecipient;
  toCopy = to;
  [(CLSHandoutRecipient *)&v9 bindTo:toCopy];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSHandoutRecipient *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  classID = [(CLSHandoutRecipient *)self classID];
  sub_1000982FC(toCopy, classID, @"classID");

  personID = [(CLSHandoutRecipient *)self personID];
  sub_1000982FC(toCopy, personID, @"personID");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version == 1)
  {
LABEL_7:
    if (sub_1000B9298(v8, @"create table CLSHandoutRecipient_temp (\n    objectID            text not null,\n    parentObjectID      text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    classID             text not null,\n    personID            text,\n    foreign key (parentObjectID) references CLSHandout(objectID) on delete cascade on update cascade\n)\n", 0, 0, 0) && sub_1000B9298(v8, @"insert into CLSHandoutRecipient_temp select objectID, parentObjectID, dateCreated, dateLastModified, classID, personID from CLSHandoutRecipient", 0, 0, 0) && sub_1000B9298(v8, @"drop table CLSHandoutRecipient", 0, 0, 0) && sub_1000B9298(v8, @"alter table CLSHandoutRecipient_temp rename to CLSHandoutRecipient", 0, 0, 0) && sub_1000B9298(v8, @"create unique index if not exists CLSHandoutRecipient_objectID on CLSHandoutRecipient (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index if not exists CLSHandoutRecipient_classID_personID_parentObjectID on CLSHandoutRecipient (classID, personID, parentObjectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index if not exists CLSHandoutRecipient_parentObjectID on CLSHandoutRecipient (parentObjectID)", 0, 0, 0))
    {
      version = 2;
      goto LABEL_15;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSHandoutRecipient(   objectID          text not null,    parentObjectID    text not null,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    classID           text not null,    personID          text,    foreign key (parentObjectID) references CLSHandout(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSHandoutRecipient_objectID on CLSHandoutRecipient (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSHandoutRecipient_classID_personID_parentObjectID on CLSHandoutRecipient (classID, personID, parentObjectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSHandoutRecipient_parentObjectID on CLSHandoutRecipient (parentObjectID)", 0, 0, 0))
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

LABEL_15:
  *finalVersion = version;
  v9 = 1;
LABEL_17:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSHandoutRecipient *)self objectID];
  v6 = [databaseCopy select:objc_opt_class() identity:objectID];
  if (!v6)
  {
    v7 = objc_opt_new();
    v6 = v7;
    if (v7)
    {
      objc_setProperty_nonatomic_copy(v7, v8, objectID, 8);
    }
  }

  classID = [(CLSHandoutRecipient *)self classID];
  v11 = classID;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  sub_10008121C(v6, v10);

  [databaseCopy insertOrUpdateObject:v6];
}

- (CLSHandoutRecipient)initWithCKRecord:(id)record
{
  recordCopy = record;
  _init = [(CLSHandoutRecipient *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithRecord:recordCopy];
    v7 = [recordCopy objectForKeyedSubscript:@"classID"];
    [v6 setClassID:v7];

    v8 = [recordCopy objectForKeyedSubscript:@"personID"];
    [v6 setPersonID:v8];
  }

  return v6;
}

- (void)populate:(id)populate
{
  v7.receiver = self;
  v7.super_class = CLSHandoutRecipient;
  populateCopy = populate;
  [(CLSHandoutRecipient *)&v7 populate:populateCopy];
  v5 = [(CLSHandoutRecipient *)self classID:v7.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"classID"];

  personID = [(CLSHandoutRecipient *)self personID];
  [populateCopy setObject:personID forKeyedSubscript:@"personID"];

  [(CLSHandoutRecipient *)self updateParentReferencesForRecord:populateCopy];
}

- (int64_t)syncBackend:(id)backend
{
  backendCopy = backend;
  parentObjectID = [(CLSHandoutRecipient *)self parentObjectID];
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
  v10 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v10 setType:4];
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
    [(PDDPPayload *)v10 setRecipient:v13];

    entityIdentity = [itemCopy entityIdentity];
    recipient = [(PDDPPayload *)v10 recipient];
    [recipient setObjectId:entityIdentity];

    entityIdentity2 = [itemCopy entityIdentity];
    v17 = [databaseCopy select:objc_opt_class() identity:entityIdentity2];
    v18 = v17;
    if (v17)
    {
      v19 = *(v17 + 16);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    firstObject = [v20 firstObject];
    recipient2 = [(PDDPPayload *)v10 recipient];
    [recipient2 setClassId:firstObject];
  }

  else
  {
    entityIdentity2 = sub_1000191B8(objectCopy);
    [(PDDPPayload *)v10 setRecipient:entityIdentity2];
  }

  v25 = v10;
  v23 = [NSArray arrayWithObjects:&v25 count:1];

  return v23;
}

- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies
{
  v5 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v5 setType:4];
  v6 = sub_1000191B8(self);
  [(PDDPPayload *)v5 setRecipient:v6];

  v9 = v5;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (BOOL)canCopyToDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_opt_class();
  parentObjectID = [(CLSHandoutRecipient *)self parentObjectID];
  v7 = [databaseCopy select:v5 identity:parentObjectID];

  LOBYTE(parentObjectID) = [v7 canCopyToDatabase:databaseCopy];
  return parentObjectID;
}

@end