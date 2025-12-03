@interface PDPendingIngestItem
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDDatabaseValue)identityValue;
- (PDPendingIngestItem)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDPendingIngestItem

- (PDPendingIngestItem)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v13.receiver = self;
  v13.super_class = PDPendingIngestItem;
  v5 = [(PDPendingIngestItem *)&v13 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"entity");
    v7 = [PDDatabase entityNamed:v6];
    entity = v5->_entity;
    v5->_entity = v7;

    if (!v5->_entity)
    {
      __assert_rtn("[PDPendingIngestItem initWithDatabaseRow:]", "PDPendingIngestItem.m", 27, "_entity != nil");
    }

    v9 = sub_10016D778(rowCopy, @"wasDeleted");
    v5->_wasDeleted = [v9 BOOLValue];

    v10 = sub_10016D778(rowCopy, @"entityIdentity");
    entityIdentity = v5->_entityIdentity;
    v5->_entityIdentity = v10;
  }

  return v5;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  if (!self->_entity)
  {
    __assert_rtn("[PDPendingIngestItem bindTo:]", "PDPendingIngestItem.m", 38, "_entity != nil");
  }

  v7 = toCopy;
  v5 = [PDDatabase nameOfEntity:?];
  sub_1000982FC(v7, v5, @"entity");
  v6 = [NSNumber numberWithBool:self->_wasDeleted];
  sub_1000982FC(v7, v6, @"wasDeleted");

  sub_1000982FC(v7, self->_entityIdentity, @"entityIdentity");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(databaseCopy, @"create table PDPendingIngestItem(   entity text not null,    wasDeleted integer not null,    entityIdentity text not null)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDPendingIngestItem_entityIdentity on PDPendingIngestItem (entityIdentity)", 0, 0, 0))
  {
    v9 = 1;
    *finalVersion = 1;
  }

  else
  {
    v9 = 0;
  }

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