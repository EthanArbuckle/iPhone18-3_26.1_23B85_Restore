@interface PDServerScheduledEvent
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDDatabaseValue)identityValue;
- (PDServerScheduledEvent)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDServerScheduledEvent

- (PDServerScheduledEvent)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PDServerScheduledEvent;
  v5 = [(PDServerScheduledEvent *)&v18 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"objectID");
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = sub_10016D778(v4, @"scheduleID");
    scheduleID = v5->_scheduleID;
    v5->_scheduleID = v8;

    v10 = sub_10016D6F0(v4, @"dateCreated");
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v10;

    v12 = sub_10016D6F0(v4, @"dateLastModified");
    dateLastModified = v5->_dateLastModified;
    v5->_dateLastModified = v12;

    v14 = sub_10016D6F0(v4, @"eventDate");
    eventDate = v5->_eventDate;
    v5->_eventDate = v14;

    v16 = sub_10016D778(v4, @"status");
    v5->_status = [v16 integerValue];
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  objectID = self->_objectID;
  v5 = a3;
  sub_1000982FC(v5, objectID, @"objectID");
  sub_1000982FC(v5, self->_scheduleID, @"scheduleID");
  sub_1000982FC(v5, self->_dateCreated, @"dateCreated");
  sub_1000982FC(v5, self->_dateLastModified, @"dateLastModified");
  sub_1000982FC(v5, self->_eventDate, @"eventDate");
  v6 = [NSNumber numberWithInteger:self->_status];
  sub_1000982FC(v5, v6, @"status");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table PDServerScheduledEvent(   objectID          text not null,\n    scheduleID        text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    eventDate         real not null,\n    status            integer default 0\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDServerScheduledEvent_objectID on PDServerScheduledEvent (objectID)", 0, 0, 0))
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
    self = self->_objectID;
  }

  return self;
}

@end