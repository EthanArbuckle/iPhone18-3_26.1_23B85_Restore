@interface CLSInsightEvent
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation CLSInsightEvent

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"data");
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
      v11 = v10;
      [(CLSInsightEvent *)v11 _initCommonPropsWithDatabaseRow:v4];

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

  v13 = sub_10016D778(v4, @"type");
  v14 = [v13 integerValue];

  v15 = [(CLSInsightEvent *)self initWithType:v14];
  v16 = v15;
  if (v15)
  {
    [(CLSInsightEvent *)v15 _initCommonPropsWithDatabaseRow:v4];
  }

  self = v16;
  v11 = self;
LABEL_10:

  return v11;
}

- (void)bindTo:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLSInsightEvent;
  v4 = a3;
  [(CLSInsightEvent *)&v10 bindTo:v4];
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

  sub_1000982FC(v4, v5, @"data");
  v8 = [NSNumber numberWithInteger:[(CLSInsightEvent *)self type]];
  sub_1000982FC(v4, v8, @"type");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(v7, @"create table CLSInsightEvent(   objectID           text not null,    dateCreated        real not null,    dateLastModified   real not null,    appIdentifier      text,    type               integer,    data               blob)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSInsightEvent_objectID on CLSInsightEvent (objectID)", 0, 0, 0))
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

@end