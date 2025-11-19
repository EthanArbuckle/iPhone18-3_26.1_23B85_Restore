@interface PDDeletedEntityID
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDDeletedEntityID)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDDeletedEntityID

- (PDDeletedEntityID)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PDDeletedEntityID;
  v5 = [(PDDeletedEntityID *)&v15 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"entityIdentity");
    entityIdentity = v5->_entityIdentity;
    v5->_entityIdentity = v6;

    v8 = sub_10016D6F0(v4, @"deletedAtDate");
    deletedAtDate = v5->_deletedAtDate;
    v5->_deletedAtDate = v8;

    v10 = sub_10016D778(v4, @"entityName");
    entityName = v5->_entityName;
    v5->_entityName = v10;

    v12 = sub_10016D778(v4, @"parentObjectID");
    parentObjectID = v5->_parentObjectID;
    v5->_parentObjectID = v12;
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  entityIdentity = self->_entityIdentity;
  v5 = a3;
  sub_1000982FC(v5, entityIdentity, @"entityIdentity");
  sub_1000982FC(v5, self->_deletedAtDate, @"deletedAtDate");
  sub_1000982FC(v5, self->_entityName, @"entityName");
  sub_1000982FC(v5, self->_parentObjectID, @"parentObjectID");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 == 1)
  {
LABEL_5:
    if (sub_1000B9298(v8, @"alter table PDDeletedEntityID add column parentObjectID text", 0, 0, 0))
    {
      a3 = 2;
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table PDDeletedEntityID(   entityIdentity text not null,    deletedAtDate real not null,    entityName text not null)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDDeletedEntityID_entityIdentity on PDDeletedEntityID (entityIdentity)", 0, 0, 0))
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

LABEL_7:
  *a4 = a3;
  v9 = 1;
LABEL_9:

  return v9;
}

@end