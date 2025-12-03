@interface PDServerScheduledEvent
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDDatabaseValue)identityValue;
- (PDServerScheduledEvent)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDServerScheduledEvent

- (PDServerScheduledEvent)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v18.receiver = self;
  v18.super_class = PDServerScheduledEvent;
  v5 = [(PDServerScheduledEvent *)&v18 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"objectID");
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = sub_10016D778(rowCopy, @"scheduleID");
    scheduleID = v5->_scheduleID;
    v5->_scheduleID = v8;

    v10 = sub_10016D6F0(rowCopy, @"dateCreated");
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v10;

    v12 = sub_10016D6F0(rowCopy, @"dateLastModified");
    dateLastModified = v5->_dateLastModified;
    v5->_dateLastModified = v12;

    v14 = sub_10016D6F0(rowCopy, @"eventDate");
    eventDate = v5->_eventDate;
    v5->_eventDate = v14;

    v16 = sub_10016D778(rowCopy, @"status");
    v5->_status = [v16 integerValue];
  }

  return v5;
}

- (void)bindTo:(id)to
{
  objectID = self->_objectID;
  toCopy = to;
  sub_1000982FC(toCopy, objectID, @"objectID");
  sub_1000982FC(toCopy, self->_scheduleID, @"scheduleID");
  sub_1000982FC(toCopy, self->_dateCreated, @"dateCreated");
  sub_1000982FC(toCopy, self->_dateLastModified, @"dateLastModified");
  sub_1000982FC(toCopy, self->_eventDate, @"eventDate");
  v6 = [NSNumber numberWithInteger:self->_status];
  sub_1000982FC(toCopy, v6, @"status");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDServerScheduledEvent(   objectID          text not null,\n    scheduleID        text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    eventDate         real not null,\n    status            integer default 0\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDServerScheduledEvent_objectID on PDServerScheduledEvent (objectID)", 0, 0, 0))
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
    self = self->_objectID;
  }

  return self;
}

@end