@interface PDSyncMetadataCache
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDDatabaseValue)identityValue;
- (PDSyncMetadataCache)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDSyncMetadataCache

- (PDSyncMetadataCache)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v14.receiver = self;
  v14.super_class = PDSyncMetadataCache;
  v5 = [(PDSyncMetadataCache *)&v14 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"entity");
    v7 = [PDDatabase entityNamed:v6];
    entity = v5->_entity;
    v5->_entity = v7;

    if (!v5->_entity)
    {
      __assert_rtn("[PDSyncMetadataCache initWithDatabaseRow:]", "PDSyncMetadataCache.m", 41, "_entity != nil");
    }

    v9 = sub_10016D778(rowCopy, @"entityIdentity");
    entityIdentity = v5->_entityIdentity;
    v5->_entityIdentity = v9;

    v11 = sub_10016D778(rowCopy, @"metadata");
    metadata = v5->_metadata;
    v5->_metadata = v11;
  }

  return v5;
}

- (void)bindTo:(id)to
{
  toCopy = to;
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
  sub_1000982FC(toCopy, v4, @"entity");
  sub_1000982FC(toCopy, self->_entityIdentity, @"entityIdentity");
  sub_1000982FC(toCopy, self->_metadata, @"metadata");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDSyncMetadataCache (\n    entity text not null,\n    entityIdentity text not null,\n    metadata blob\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDSyncMetadataCache_entityIdentity on PDSyncMetadataCache (entityIdentity)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    version = 1;
  }

  *finalVersion = version;
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