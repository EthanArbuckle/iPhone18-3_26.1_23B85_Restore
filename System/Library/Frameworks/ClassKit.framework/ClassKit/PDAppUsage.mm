@interface PDAppUsage
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDAppUsage)initWithDatabaseRow:(id)row;
- (PDDatabaseValue)identityValue;
- (void)bindTo:(id)to;
@end

@implementation PDAppUsage

- (PDAppUsage)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v21.receiver = self;
  v21.super_class = PDAppUsage;
  v5 = [(PDAppUsage *)&v21 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"objectID");
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = sub_10016D778(rowCopy, @"activityID");
    activityID = v5->_activityID;
    v5->_activityID = v8;

    v10 = sub_10016D778(rowCopy, @"bundleIdentifier");
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v12 = sub_10016D6F0(rowCopy, @"startDate");
    startDate = v5->_startDate;
    v5->_startDate = v12;

    v14 = sub_10016D6F0(rowCopy, @"endDate");
    endDate = v5->_endDate;
    v5->_endDate = v14;

    v16 = sub_10016D778(rowCopy, @"starting");
    v5->_starting = [v16 BOOLValue];

    v17 = sub_10016D778(rowCopy, @"ignoreSignal");
    v5->_ignoreSignal = [v17 BOOLValue];

    v18 = sub_10016D6F0(rowCopy, @"dateCreated");
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v18;
  }

  return v5;
}

- (PDDatabaseValue)identityValue
{
  if (self)
  {
    self = self->_objectID;
  }

  return self;
}

- (void)bindTo:(id)to
{
  objectID = self->_objectID;
  toCopy = to;
  sub_1000982FC(toCopy, objectID, @"objectID");
  sub_1000982FC(toCopy, self->_activityID, @"activityID");
  sub_1000982FC(toCopy, self->_bundleIdentifier, @"bundleIdentifier");
  sub_1000982FC(toCopy, self->_startDate, @"startDate");
  sub_1000982FC(toCopy, self->_endDate, @"endDate");
  v5 = [NSNumber numberWithBool:self->_starting];
  sub_1000982FC(toCopy, v5, @"starting");

  v6 = [NSNumber numberWithBool:self->_ignoreSignal];
  sub_1000982FC(toCopy, v6, @"ignoreSignal");

  sub_1000982FC(toCopy, self->_dateCreated, @"dateCreated");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDAppUsage(   objectID          text not null,\n    activityID        text not null,\n    bundleIdentifier  text not null,\n    dateCreated       real not null,\n    startDate         real,\n    endDate           real,\n    starting          integer,\n    ignoreSignal      integer,\n    foreign key (activityID) references CLSActivity(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDAppUsage_objectID on PDAppUsage (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDAppUsage_bundleIdentifier on PDAppUsage (bundleIdentifier)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDAppUsage_activityID on PDAppUsage (activityID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_9;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_9:

  return v9;
}

@end