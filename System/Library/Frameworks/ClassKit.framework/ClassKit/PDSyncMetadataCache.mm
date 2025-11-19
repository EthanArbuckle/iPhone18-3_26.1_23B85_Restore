@interface PDSyncMetadataCache
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDDatabaseValue)identityValue;
- (PDSyncMetadataCache)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDSyncMetadataCache

- (PDSyncMetadataCache)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PDSyncMetadataCache;
  v5 = [(PDSyncMetadataCache *)&v14 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"entity");
    v7 = [PDDatabase entityNamed:v6];
    entity = v5->_entity;
    v5->_entity = v7;

    if (!v5->_entity)
    {
      __assert_rtn("[PDSyncMetadataCache initWithDatabaseRow:]", "PDSyncMetadataCache.m", 41, "_entity != nil");
    }

    v9 = sub_10016D778(v4, @"entityIdentity");
    entityIdentity = v5->_entityIdentity;
    v5->_entityIdentity = v9;

    v11 = sub_10016D778(v4, @"metadata");
    metadata = v5->_metadata;
    v5->_metadata = v11;
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  v6 = a3;
  if (!self->_entity)
  {
    __assert_rtn("[PDSyncMetadataCache bindTo:]", "PDSyncMetadataCache.m", 52, "_entity != nil");
  }

  v4 = [PDDatabase nameOfEntity:?];
  if (!v4)
  {
    __assert_rtn("[PDSyncMetadataCache bindTo:]", "PDSyncMetadataCache.m", 55, "entityName != nil");
  }

  v5 = v4;
  sub_1000982FC(v6, v4, @"entity");
  sub_1000982FC(v6, self->_entityIdentity, @"entityIdentity");
  sub_1000982FC(v6, self->_metadata, @"metadata");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table PDSyncMetadataCache (\n    entity text not null,\n    entityIdentity text not null,\n    metadata blob\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDSyncMetadataCache_entityIdentity on PDSyncMetadataCache (entityIdentity)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_7:

  return v9;
}

- (PDDatabaseValue)identityValue
{
  if (self)
  {
    self = self->_entityIdentity;
  }

  return self;
}

@end