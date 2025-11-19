@interface CLSProgressReportingCapability
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSProgressReportingCapability)initWithCKRecord:(id)a3;
- (CLSProgressReportingCapability)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
@end

@implementation CLSProgressReportingCapability

- (CLSProgressReportingCapability)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSProgressReportingCapability *)self _init];
  v6 = v5;
  if (v5)
  {
    [(CLSProgressReportingCapability *)v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, CLSPredicateKeyPathParentObjectID);
    [(CLSProgressReportingCapability *)v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, CLSProgressReportingCapabilityPropertyKind);
    -[CLSProgressReportingCapability setKind:](v6, "setKind:", [v8 intValue]);

    v9 = sub_10016D778(v4, CLSProgressReportingCapabilityPropertyDetails);
    [(CLSProgressReportingCapability *)v6 setDetails:v9];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLSProgressReportingCapability;
  v4 = a3;
  [(CLSProgressReportingCapability *)&v9 bindTo:v4];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSProgressReportingCapability *)self parentObjectID];
  sub_1000982FC(v4, v6, CLSPredicateKeyPathParentObjectID);

  v7 = [NSNumber numberWithInteger:[(CLSProgressReportingCapability *)self kind]];
  sub_1000982FC(v4, v7, CLSProgressReportingCapabilityPropertyKind);

  v8 = [(CLSProgressReportingCapability *)self details];
  sub_1000982FC(v4, v8, CLSProgressReportingCapabilityPropertyDetails);
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSProgressReportingCapability(   objectID          text not null,    parentObjectID    text not null,    dateCreated       real not null,    dateLastModified  real not null,    kind              integer,    details           text,    foreign key (parentObjectID) references CLSContext(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSProgressReportingCapability_objectID on CLSProgressReportingCapability (objectID)", 0, 0, 0))
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

- (CLSProgressReportingCapability)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CLSProgressReportingCapability *)self _init];
  v6 = v5;
  if (v5)
  {
    [(CLSProgressReportingCapability *)v5 _initCommonPropsWithRecord:v4];
    v7 = [v4 objectForKeyedSubscript:CLSProgressReportingCapabilityPropertyKind];
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
    v9 = [v4 objectForKeyedSubscript:CLSProgressReportingCapabilityPropertyDetails];
    [(CLSProgressReportingCapability *)v6 setDetails:v9];
  }

  return v6;
}

- (void)populate:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLSProgressReportingCapability;
  v4 = a3;
  [(CLSProgressReportingCapability *)&v7 populate:v4];
  v5 = [NSNumber numberWithInteger:[(CLSProgressReportingCapability *)self kind:v7.receiver]];
  [v4 setObject:v5 forKeyedSubscript:CLSProgressReportingCapabilityPropertyKind];

  v6 = [(CLSProgressReportingCapability *)self details];
  [v4 setObject:v6 forKeyedSubscript:CLSProgressReportingCapabilityPropertyDetails];

  [(CLSProgressReportingCapability *)self updateParentReferencesForRecord:v4];
}

@end