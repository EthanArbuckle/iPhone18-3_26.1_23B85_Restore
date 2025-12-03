@interface PDDeletedEntityID
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDDeletedEntityID)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDDeletedEntityID

- (PDDeletedEntityID)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v15.receiver = self;
  v15.super_class = PDDeletedEntityID;
  v5 = [(PDDeletedEntityID *)&v15 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"entityIdentity");
    entityIdentity = v5->_entityIdentity;
    v5->_entityIdentity = v6;

    v8 = sub_10016D6F0(rowCopy, @"deletedAtDate");
    deletedAtDate = v5->_deletedAtDate;
    v5->_deletedAtDate = v8;

    v10 = sub_10016D778(rowCopy, @"entityName");
    entityName = v5->_entityName;
    v5->_entityName = v10;

    v12 = sub_10016D778(rowCopy, @"parentObjectID");
    parentObjectID = v5->_parentObjectID;
    v5->_parentObjectID = v12;
  }

  return v5;
}

- (void)bindTo:(id)to
{
  entityIdentity = self->_entityIdentity;
  toCopy = to;
  sub_1000982FC(toCopy, entityIdentity, @"entityIdentity");
  sub_1000982FC(toCopy, self->_deletedAtDate, @"deletedAtDate");
  sub_1000982FC(toCopy, self->_entityName, @"entityName");
  sub_1000982FC(toCopy, self->_parentObjectID, @"parentObjectID");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version == 1)
  {
LABEL_5:
    if (sub_1000B9298(v8, @"alter table PDDeletedEntityID add column parentObjectID text", 0, 0, 0))
    {
      version = 2;
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDDeletedEntityID(   entityIdentity text not null,    deletedAtDate real not null,    entityName text not null)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDDeletedEntityID_entityIdentity on PDDeletedEntityID (entityIdentity)", 0, 0, 0))
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

LABEL_7:
  *finalVersion = version;
  v9 = 1;
LABEL_9:

  return v9;
}

@end