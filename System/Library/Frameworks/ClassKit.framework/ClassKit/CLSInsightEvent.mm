@interface CLSInsightEvent
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation CLSInsightEvent

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"data");
  if (v5)
  {
    v6 = +[CLSInsightEvent supportedInfoDictionaryClasses];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v19[3] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v19 count:4];
    v8 = [NSSet setWithArray:v7];
    v9 = [v6 setByAddingObjectsFromSet:v8];

    v10 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v9 withData:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = v10;
      [(CLSInsightEvent *)selfCopy _initCommonPropsWithDatabaseRow:rowCopy];

      goto LABEL_10;
    }
  }

  CLSInitLog();
  v12 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to read insight event from db.", v18, 2u);
  }

  v13 = sub_10016D778(rowCopy, @"type");
  integerValue = [v13 integerValue];

  v15 = [(CLSInsightEvent *)self initWithType:integerValue];
  v16 = v15;
  if (v15)
  {
    [(CLSInsightEvent *)v15 _initCommonPropsWithDatabaseRow:rowCopy];
  }

  self = v16;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)bindTo:(id)to
{
  v10.receiver = self;
  v10.super_class = CLSInsightEvent;
  toCopy = to;
  [(CLSInsightEvent *)&v10 bindTo:toCopy];
  v9 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v9];
  v6 = v9;
  if (v6)
  {
    CLSInitLog();
    v7 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to write insight event to db: %@.", buf, 0xCu);
    }
  }

  sub_1000982FC(toCopy, v5, @"data");
  v8 = [NSNumber numberWithInteger:[(CLSInsightEvent *)self type]];
  sub_1000982FC(toCopy, v8, @"type");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(databaseCopy, @"create table CLSInsightEvent(   objectID           text not null,    dateCreated        real not null,    dateLastModified   real not null,    appIdentifier      text,    type               integer,    data               blob)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSInsightEvent_objectID on CLSInsightEvent (objectID)", 0, 0, 0))
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

@end