@interface PDObserverTrackedItem
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDObserverTrackedItem)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDObserverTrackedItem

- (PDObserverTrackedItem)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PDObserverTrackedItem;
  v5 = [(PDObserverTrackedItem *)&v20 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"observerChangeID");
    v5->_observerChangeID = [v6 integerValue];

    v7 = sub_10016D778(v4, @"objectID");
    objectID = v5->_objectID;
    v5->_objectID = v7;

    v9 = sub_10016D778(v4, @"entityID");
    entityID = v5->_entityID;
    v5->_entityID = v9;

    v11 = sub_10016D778(v4, @"entityClassName");
    entityClassName = v5->_entityClassName;
    v5->_entityClassName = v11;

    v13 = sub_10016D778(v4, @"entityHash");
    if (v13)
    {
      v14 = [NSScanner scannerWithString:v13];
      v21 = 0;
      if ([v14 scanUnsignedLongLong:&v21])
      {
        v15 = v21;
      }

      else
      {
        v15 = [v13 hash];
      }
    }

    else
    {
      v15 = 0;
    }

    v5->_entityHash = v15;
    v16 = sub_10016D6F0(v4, @"dateLastChanged");
    dateLastChanged = v5->_dateLastChanged;
    v5->_dateLastChanged = v16;

    v18 = sub_10016D778(v4, @"action");
    v5->_action = [v18 intValue];
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  objectID = self->_objectID;
  v5 = a3;
  sub_1000982FC(v5, objectID, @"objectID");
  sub_1000982FC(v5, self->_entityID, @"entityID");
  sub_1000982FC(v5, self->_entityClassName, @"entityClassName");
  v6 = [NSString stringWithFormat:@"%lu", self->_entityHash];
  sub_1000982FC(v5, v6, @"entityHash");

  sub_1000982FC(v5, self->_dateLastChanged, @"dateLastChanged");
  v7 = [NSNumber numberWithInt:self->_action];
  sub_1000982FC(v5, v7, @"action");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 == 1)
  {
LABEL_8:
    if (sub_1000B9298(v8, @"drop table if exists PDObserverTrackedItem", 0, 0, 0) && sub_1000B9298(v8, @"create table PDObserverTrackedItem (\n    observerChangeID integer primary key,\n    objectID text not null,\n    entityID text not null,\n    entityClassName text not null,\n    entityHash text,\n    dateLastChanged real,\n    action integer)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDObserverTrackedItem_objectID on PDObserverTrackedItem (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index PDObserverTrackedItem_entityID on PDObserverTrackedItem (entityID)", 0, 0, 0) && sub_1000B9298(v8, @"create index PDObserverTrackedItem_entityClassName on PDObserverTrackedItem (entityClassName)", 0, 0, 0) && sub_1000B9298(v8, @"create index PDObserverTrackedItem_dateLastChanged on PDObserverTrackedItem (dateLastChanged)", 0, 0, 0))
    {
      a3 = 2;
      goto LABEL_15;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table PDObserverTrackedItem (\n    objectID text not null,\n    entityID text not null,\n    entityClassName text not null,\n    entityHash text,\n    dateLastChanged real,\n    action integer)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDObserverTrackedItem_objectID on PDObserverTrackedItem (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDObserverTrackedItem_entityID on PDObserverTrackedItem (entityID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDObserverTrackedItem_entityClassName on PDObserverTrackedItem (entityClassName)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDObserverTrackedItem_dateLastChanged on PDObserverTrackedItem (dateLastChanged)", 0, 0, 0))
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

LABEL_15:
  *a4 = a3;
  v9 = 1;
LABEL_17:

  return v9;
}

@end