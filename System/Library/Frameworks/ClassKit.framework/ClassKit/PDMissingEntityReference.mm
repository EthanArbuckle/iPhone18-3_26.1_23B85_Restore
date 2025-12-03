@interface PDMissingEntityReference
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDMissingEntityReference)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDMissingEntityReference

- (PDMissingEntityReference)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v15.receiver = self;
  v15.super_class = PDMissingEntityReference;
  v5 = [(PDMissingEntityReference *)&v15 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"entityId");
    entityID = v5->_entityID;
    v5->_entityID = v6;

    v8 = sub_10016D778(rowCopy, @"entityName");
    entityName = v5->_entityName;
    v5->_entityName = v8;

    v10 = sub_10016D778(rowCopy, @"referencingEntityId");
    referencingEntityID = v5->_referencingEntityID;
    v5->_referencingEntityID = v10;

    v12 = sub_10016D778(rowCopy, @"referencingEntityName");
    referencingEntityName = v5->_referencingEntityName;
    v5->_referencingEntityName = v12;
  }

  return v5;
}

- (void)bindTo:(id)to
{
  entityID = self->_entityID;
  toCopy = to;
  sub_1000982FC(toCopy, entityID, @"entityId");
  sub_1000982FC(toCopy, self->_entityName, @"entityName");
  sub_1000982FC(toCopy, self->_referencingEntityID, @"referencingEntityId");
  sub_1000982FC(toCopy, self->_referencingEntityName, @"referencingEntityName");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDMissingEntityReference(   entityId text not null,    entityName text not null,    referencingEntityId text,    referencingEntityName text)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDMissingEntityReference_entityId on PDMissingEntityReference (entityId)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDMissingEntityReference_entityName on PDMissingEntityReference (entityName)", 0, 0, 0))
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

@end