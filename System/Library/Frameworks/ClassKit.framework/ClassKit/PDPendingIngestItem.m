@interface PDPendingIngestItem
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDDatabaseValue)identityValue;
- (PDPendingIngestItem)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDPendingIngestItem

- (PDPendingIngestItem)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PDPendingIngestItem;
  v5 = [(PDPendingIngestItem *)&v13 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"entity");
    v7 = [PDDatabase entityNamed:v6];
    entity = v5->_entity;
    v5->_entity = v7;

    if (!v5->_entity)
    {
      __assert_rtn("[PDPendingIngestItem initWithDatabaseRow:]", "PDPendingIngestItem.m", 27, "_entity != nil");
    }

    v9 = sub_10016D778(v4, @"wasDeleted");
    v5->_wasDeleted = [v9 BOOLValue];

    v10 = sub_10016D778(v4, @"entityIdentity");
    entityIdentity = v5->_entityIdentity;
    v5->_entityIdentity = v10;
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  if (!self->_entity)
  {
    __assert_rtn("[PDPendingIngestItem bindTo:]", "PDPendingIngestItem.m", 38, "_entity != nil");
  }

  v7 = v4;
  v5 = [PDDatabase nameOfEntity:?];
  sub_1000982FC(v7, v5, @"entity");
  v6 = [NSNumber numberWithBool:self->_wasDeleted];
  sub_1000982FC(v7, v6, @"wasDeleted");

  sub_1000982FC(v7, self->_entityIdentity, @"entityIdentity");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(v7, @"create table PDPendingIngestItem(   entity text not null,    wasDeleted integer not null,    entityIdentity text not null)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDPendingIngestItem_entityIdentity on PDPendingIngestItem (entityIdentity)", 0, 0, 0))
  {
    v9 = 1;
    *a4 = 1;
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