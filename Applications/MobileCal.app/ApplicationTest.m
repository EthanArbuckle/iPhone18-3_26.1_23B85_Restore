@interface ApplicationTest
+ (id)testName;
- (ApplicationTest)initWithApplication:(id)a3 model:(id)a4 options:(id)a5;
- (id)extractInitialDateOption;
- (void)runTest;
- (void)setupData;
@end

@implementation ApplicationTest

+ (id)testName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (ApplicationTest)initWithApplication:(id)a3 model:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ApplicationTest;
  v12 = [(ApplicationTest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_application, a3);
    objc_storeStrong(&v13->_options, a5);
    objc_storeStrong(&v13->_model, a4);
    [(ApplicationTest *)v13 setupData];
  }

  return v13;
}

- (void)runTest
{
  v3 = [objc_opt_class() testName];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSString stringWithFormat:@"runTest should be overridden for class: [%@]", v5];

  [(Application *)self->_application startedTest:v3];
  [(Application *)self->_application failedTest:v3 withFailure:v6];
  v7 = kCalUILogTestHandle;
  if (os_log_type_enabled(kCalUILogTestHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }
}

- (id)extractInitialDateOption
{
  v3 = [(ApplicationTest *)self model];
  v4 = [v3 eventStore];
  v5 = [v4 timeZone];

  v6 = [(ApplicationTest *)self options];
  v7 = [v6 objectForKey:@"initialDate"];

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 objectForKey:@"PPTForceRestoreDate"];

  v10 = objc_alloc_init(NSDateComponents);
  [v10 setYear:2024];
  [v10 setMonth:6];
  [v10 setDay:1];
  v11 = [[EKCalendarDate alloc] initWithDateComponents:v10 timeZone:v5];
  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (v12)
  {
    v13 = [v12 componentsSeparatedByString:@"-"];
    v14 = objc_opt_new();
    v15 = [v13 objectAtIndex:0];
    [v14 setYear:{objc_msgSend(v15, "intValue")}];

    v16 = [v13 objectAtIndex:1];
    [v14 setMonth:{objc_msgSend(v16, "intValue")}];

    v17 = [v13 objectAtIndex:2];
    [v14 setDay:{objc_msgSend(v17, "intValue")}];

    v18 = [v13 objectAtIndex:3];
    [v14 setHour:{objc_msgSend(v18, "intValue")}];

    v19 = [v13 objectAtIndex:4];
    [v14 setMinute:{objc_msgSend(v19, "intValue")}];

    v20 = [v13 objectAtIndex:5];
    [v20 doubleValue];
    [v14 setSecond:v21];

    v22 = [v13 objectAtIndex:5];
    [v22 doubleValue];
    [v14 setNanosecond:{-(objc_msgSend(v14, "second") - v23 * 1000000000.0)}];

    v24 = [[EKCalendarDate alloc] initWithDateComponents:v14 timeZone:v5];
  }

  else
  {
    v24 = v11;
  }

  v25 = v24;

  return v24;
}

- (void)setupData
{
  self->_useLegacyData = 0;
  v3 = [(NSDictionary *)self->_options objectForKey:@"useLegacyData"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
    self->_useLegacyData = v5;
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else if (!self->_useLegacyData)
  {
    goto LABEL_15;
  }

  v19 = v4;
  v6 = [(CUIKCalendarModel *)self->_model eventStore];
  v7 = [v6 calendarsForEntityType:0];

  v8 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 title];
        v16 = [v15 containsString:@"Legacy"];

        if (v16)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  model = self->_model;
  v18 = [NSSet setWithArray:v8];
  [(CUIKCalendarModel *)model setSelectedCalendars:v18];

  v4 = v19;
LABEL_15:
}

@end