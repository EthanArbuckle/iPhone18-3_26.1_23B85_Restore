@interface CLSProgressReportingCapability
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSProgressReportingCapability)initWithCKRecord:(id)record;
- (CLSProgressReportingCapability)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
@end

@implementation CLSProgressReportingCapability

- (CLSProgressReportingCapability)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSProgressReportingCapability *)self _init];
  v6 = _init;
  if (_init)
  {
    [(CLSProgressReportingCapability *)_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, CLSPredicateKeyPathParentObjectID);
    [(CLSProgressReportingCapability *)v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, CLSProgressReportingCapabilityPropertyKind);
    -[CLSProgressReportingCapability setKind:](v6, "setKind:", [v8 intValue]);

    v9 = sub_10016D778(rowCopy, CLSProgressReportingCapabilityPropertyDetails);
    [(CLSProgressReportingCapability *)v6 setDetails:v9];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v9.receiver = self;
  v9.super_class = CLSProgressReportingCapability;
  toCopy = to;
  [(CLSProgressReportingCapability *)&v9 bindTo:toCopy];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSProgressReportingCapability *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, CLSPredicateKeyPathParentObjectID);

  v7 = [NSNumber numberWithInteger:[(CLSProgressReportingCapability *)self kind]];
  sub_1000982FC(toCopy, v7, CLSProgressReportingCapabilityPropertyKind);

  details = [(CLSProgressReportingCapability *)self details];
  sub_1000982FC(toCopy, details, CLSProgressReportingCapabilityPropertyDetails);
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSProgressReportingCapability(   objectID          text not null,    parentObjectID    text not null,    dateCreated       real not null,    dateLastModified  real not null,    kind              integer,    details           text,    foreign key (parentObjectID) references CLSContext(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSProgressReportingCapability_objectID on CLSProgressReportingCapability (objectID)", 0, 0, 0))
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

- (CLSProgressReportingCapability)initWithCKRecord:(id)record
{
  recordCopy = record;
  _init = [(CLSProgressReportingCapability *)self _init];
  v6 = _init;
  if (_init)
  {
    [(CLSProgressReportingCapability *)_init _initCommonPropsWithRecord:recordCopy];
    v7 = [recordCopy objectForKeyedSubscript:CLSProgressReportingCapabilityPropertyKind];
    if (!v7)
    {
      CLSInitLog();
      v8 = CLSLogSync;
      if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CLSProgressReportingCapability synced from CloudKit is missing kind information", v11, 2u);
      }
    }

    -[CLSProgressReportingCapability setKind:](v6, "setKind:", [v7 intValue]);
    v9 = [recordCopy objectForKeyedSubscript:CLSProgressReportingCapabilityPropertyDetails];
    [(CLSProgressReportingCapability *)v6 setDetails:v9];
  }

  return v6;
}

- (void)populate:(id)populate
{
  v7.receiver = self;
  v7.super_class = CLSProgressReportingCapability;
  populateCopy = populate;
  [(CLSProgressReportingCapability *)&v7 populate:populateCopy];
  v5 = [NSNumber numberWithInteger:[(CLSProgressReportingCapability *)self kind:v7.receiver]];
  [populateCopy setObject:v5 forKeyedSubscript:CLSProgressReportingCapabilityPropertyKind];

  details = [(CLSProgressReportingCapability *)self details];
  [populateCopy setObject:details forKeyedSubscript:CLSProgressReportingCapabilityPropertyDetails];

  [(CLSProgressReportingCapability *)self updateParentReferencesForRecord:populateCopy];
}

@end