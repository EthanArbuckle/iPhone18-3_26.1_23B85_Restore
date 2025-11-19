@interface PDMissingEntityReference
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDMissingEntityReference)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDMissingEntityReference

- (PDMissingEntityReference)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PDMissingEntityReference;
  v5 = [(PDMissingEntityReference *)&v15 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"entityId");
    entityID = v5->_entityID;
    v5->_entityID = v6;

    v8 = sub_10016D778(v4, @"entityName");
    entityName = v5->_entityName;
    v5->_entityName = v8;

    v10 = sub_10016D778(v4, @"referencingEntityId");
    referencingEntityID = v5->_referencingEntityID;
    v5->_referencingEntityID = v10;

    v12 = sub_10016D778(v4, @"referencingEntityName");
    referencingEntityName = v5->_referencingEntityName;
    v5->_referencingEntityName = v12;
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  entityID = self->_entityID;
  v5 = a3;
  sub_1000982FC(v5, entityID, @"entityId");
  sub_1000982FC(v5, self->_entityName, @"entityName");
  sub_1000982FC(v5, self->_referencingEntityID, @"referencingEntityId");
  sub_1000982FC(v5, self->_referencingEntityName, @"referencingEntityName");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table PDMissingEntityReference(   entityId text not null,    entityName text not null,    referencingEntityId text,    referencingEntityName text)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDMissingEntityReference_entityId on PDMissingEntityReference (entityId)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDMissingEntityReference_entityName on PDMissingEntityReference (entityName)", 0, 0, 0))
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

@end