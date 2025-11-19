@interface BYMultilingualAnalyticsEvent
+ (id)identifierForAction:(unint64_t)a3;
+ (id)stringDescriptionForArray:(id)a3;
+ (id)stringDescriptionForNestedArray:(id)a3;
+ (id)stringNameForMultilingualPane:(unint64_t)a3;
+ (unint64_t)actionTypeForStarting:(id)a3 endingDataSet:(id)a4;
+ (void)recordExpressPaneShownUserCustomized:(BOOL)a3 withData:(id)a4 analyticsManager:(id)a5;
+ (void)recordMultilingualPane:(unint64_t)a3 startingData:(id)a4 modifiedData:(id)a5 analyticsManager:(id)a6;
- (BYMultilingualAnalyticsEvent)initWithWithEventName:(id)a3 sourcePane:(id)a4;
- (id)description;
- (void)recordWithAnalyticsManager:(id)a3;
@end

@implementation BYMultilingualAnalyticsEvent

- (BYMultilingualAnalyticsEvent)initWithWithEventName:(id)a3 sourcePane:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v5 = v14;
  v14 = 0;
  v11.receiver = v5;
  v11.super_class = BYMultilingualAnalyticsEvent;
  v14 = [(BYMultilingualAnalyticsEvent *)&v11 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    objc_storeStrong(v14 + 2, location[0]);
    v15 = @"pane";
    v16 = v12;
    v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v7 = [(NSDictionary *)v6 mutableCopy];
    v8 = *(v14 + 1);
    *(v14 + 1) = v7;
  }

  v9 = v14;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v9;
}

- (void)recordWithAnalyticsManager:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BYMultilingualAnalyticsEvent *)v10 eventName];
  v5 = [(BYMultilingualAnalyticsEvent *)v10 mutablePayload];
  v6 = [(NSMutableDictionary *)v5 copy];
  [v3 addEvent:v4 withPayload:v6 persist:1];

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(BYMultilingualAnalyticsEvent *)v10 description];
    sub_10006AE18(buf, v7);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "recording MultilingualAnalyticsEvent %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

+ (void)recordMultilingualPane:(unint64_t)a3 startingData:(id)a4 modifiedData:(id)a5 analyticsManager:(id)a6
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = 0;
  objc_storeStrong(&v18, a6);
  v8 = [BYMultilingualAnalyticsEvent alloc];
  v9 = [v23 stringNameForMultilingualPane:v21];
  v17 = [(BYMultilingualAnalyticsEvent *)v8 initWithWithEventName:@"com.apple.setupassistant.ios.multilingual.individual" sourcePane:v9];

  v16 = [v23 actionTypeForStarting:location endingDataSet:v19];
  v10 = [v17 mutablePayload];
  v11 = [v23 identifierForAction:v16];
  [v10 setObject:v11 forKey:@"typeValue"];

  v12 = [v17 mutablePayload];
  v13 = [v23 stringDescriptionForArray:location];
  [v12 setObject:v13 forKey:@"startData"];

  v14 = [v17 mutablePayload];
  v15 = [v23 stringDescriptionForArray:v19];
  [v14 setObject:v15 forKey:@"endData"];

  [v17 recordWithAnalyticsManager:v18];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&location, 0);
}

+ (void)recordExpressPaneShownUserCustomized:(BOOL)a3 withData:(id)a4 analyticsManager:(id)a5
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v12 = [v17 stringNameForMultilingualPane:3];
  v11 = @"selectedDefaults";
  if (v15)
  {
    objc_storeStrong(&v11, @"selectedCustomize");
  }

  v6 = [BYMultilingualAnalyticsEvent alloc];
  v10 = [(BYMultilingualAnalyticsEvent *)v6 initWithWithEventName:@"com.apple.setupassistant.ios.multilingual.individual" sourcePane:v12];
  v7 = [(BYMultilingualAnalyticsEvent *)v10 mutablePayload];
  [(NSMutableDictionary *)v7 setObject:v11 forKey:@"typeValue"];

  v8 = [(BYMultilingualAnalyticsEvent *)v10 mutablePayload];
  v9 = [v17 stringDescriptionForNestedArray:location];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:@"endData"];

  [(BYMultilingualAnalyticsEvent *)v10 recordWithAnalyticsManager:v13];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

+ (unint64_t)actionTypeForStarting:(id)a3 endingDataSet:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v5 = [v16 count];
  if (v5 <= [location[0] count])
  {
    v6 = [v16 count];
    if (v6 >= [location[0] count])
    {
      v7 = [v16 count];
      if (v7 == [location[0] count])
      {
        for (LODWORD(v15) = 0; ; LODWORD(v15) = v15 + 1)
        {
          v8 = v15;
          if (v8 >= [location[0] count])
          {
            break;
          }

          v9 = [v16 objectAtIndexedSubscript:v15];
          v10 = [v9 identifier];
          v11 = [location[0] objectAtIndexedSubscript:v15];
          v12 = [v11 identifier];
          v13 = [v10 isEqualToString:v12] ^ 1;

          if (v13)
          {
            v18 = 2;
            goto LABEL_12;
          }
        }
      }

      v18 = 3;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_12:
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v18;
}

- (id)description
{
  v2 = [(BYMultilingualAnalyticsEvent *)self mutablePayload:a2];
  v3 = [(NSMutableDictionary *)v2 description];

  return v3;
}

+ (id)identifierForAction:(unint64_t)a3
{
  if (a3)
  {
    switch(a3)
    {
      case 1uLL:
        v4 = @"deleted";
        break;
      case 2uLL:
        v4 = @"rearranged";
        break;
      case 3uLL:
        v4 = @"unchanged";
        break;
    }
  }

  else
  {
    v4 = @"inserted";
  }

  return v4;
}

+ (id)stringNameForMultilingualPane:(unint64_t)a3
{
  if (a3)
  {
    switch(a3)
    {
      case 1uLL:
        v4 = @"Keyboard";
        break;
      case 2uLL:
        v4 = @"Dictation";
        break;
      case 3uLL:
        v4 = @"MultilingualExpress";
        break;
    }
  }

  else
  {
    v4 = @"Language";
  }

  return v4;
}

+ (id)stringDescriptionForArray:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] valueForKey:@"identifier"];
  v4 = [v3 componentsJoinedByString:@" "];

  objc_storeStrong(location, 0);

  return v4;
}

+ (id)stringDescriptionForNestedArray:(id)a3
{
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = +[NSMutableString string];
  memset(v11, 0, sizeof(v11));
  v3 = location[0];
  v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v11[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(v11[1] + 8 * i);
        v7 = v13;
        v8 = [v15 stringDescriptionForArray:v12];
        [v7 appendString:v8];

        [v13 appendString:@" | "];
      }

      v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = [v13 copy];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v9;
}

@end