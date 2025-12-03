@interface BYMultilingualAnalyticsEvent
+ (id)identifierForAction:(unint64_t)action;
+ (id)stringDescriptionForArray:(id)array;
+ (id)stringDescriptionForNestedArray:(id)array;
+ (id)stringNameForMultilingualPane:(unint64_t)pane;
+ (unint64_t)actionTypeForStarting:(id)starting endingDataSet:(id)set;
+ (void)recordExpressPaneShownUserCustomized:(BOOL)customized withData:(id)data analyticsManager:(id)manager;
+ (void)recordMultilingualPane:(unint64_t)pane startingData:(id)data modifiedData:(id)modifiedData analyticsManager:(id)manager;
- (BYMultilingualAnalyticsEvent)initWithWithEventName:(id)name sourcePane:(id)pane;
- (id)description;
- (void)recordWithAnalyticsManager:(id)manager;
@end

@implementation BYMultilingualAnalyticsEvent

- (BYMultilingualAnalyticsEvent)initWithWithEventName:(id)name sourcePane:(id)pane
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v12 = 0;
  objc_storeStrong(&v12, pane);
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = BYMultilingualAnalyticsEvent;
  selfCopy = [(BYMultilingualAnalyticsEvent *)&v11 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 2, location[0]);
    v15 = @"pane";
    v16 = v12;
    v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v7 = [(NSDictionary *)v6 mutableCopy];
    v8 = *(selfCopy + 1);
    *(selfCopy + 1) = v7;
  }

  v9 = selfCopy;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)recordWithAnalyticsManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v3 = location[0];
  eventName = [(BYMultilingualAnalyticsEvent *)selfCopy eventName];
  mutablePayload = [(BYMultilingualAnalyticsEvent *)selfCopy mutablePayload];
  v6 = [(NSMutableDictionary *)mutablePayload copy];
  [v3 addEvent:eventName withPayload:v6 persist:1];

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(BYMultilingualAnalyticsEvent *)selfCopy description];
    sub_10006AE18(buf, v7);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "recording MultilingualAnalyticsEvent %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

+ (void)recordMultilingualPane:(unint64_t)pane startingData:(id)data modifiedData:(id)modifiedData analyticsManager:(id)manager
{
  selfCopy = self;
  v22 = a2;
  paneCopy = pane;
  location = 0;
  objc_storeStrong(&location, data);
  v19 = 0;
  objc_storeStrong(&v19, modifiedData);
  v18 = 0;
  objc_storeStrong(&v18, manager);
  v8 = [BYMultilingualAnalyticsEvent alloc];
  v9 = [selfCopy stringNameForMultilingualPane:paneCopy];
  v17 = [(BYMultilingualAnalyticsEvent *)v8 initWithWithEventName:@"com.apple.setupassistant.ios.multilingual.individual" sourcePane:v9];

  v16 = [selfCopy actionTypeForStarting:location endingDataSet:v19];
  mutablePayload = [v17 mutablePayload];
  v11 = [selfCopy identifierForAction:v16];
  [mutablePayload setObject:v11 forKey:@"typeValue"];

  mutablePayload2 = [v17 mutablePayload];
  v13 = [selfCopy stringDescriptionForArray:location];
  [mutablePayload2 setObject:v13 forKey:@"startData"];

  mutablePayload3 = [v17 mutablePayload];
  v15 = [selfCopy stringDescriptionForArray:v19];
  [mutablePayload3 setObject:v15 forKey:@"endData"];

  [v17 recordWithAnalyticsManager:v18];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&location, 0);
}

+ (void)recordExpressPaneShownUserCustomized:(BOOL)customized withData:(id)data analyticsManager:(id)manager
{
  selfCopy = self;
  v16 = a2;
  customizedCopy = customized;
  location = 0;
  objc_storeStrong(&location, data);
  v13 = 0;
  objc_storeStrong(&v13, manager);
  v12 = [selfCopy stringNameForMultilingualPane:3];
  v11 = @"selectedDefaults";
  if (customizedCopy)
  {
    objc_storeStrong(&v11, @"selectedCustomize");
  }

  v6 = [BYMultilingualAnalyticsEvent alloc];
  v10 = [(BYMultilingualAnalyticsEvent *)v6 initWithWithEventName:@"com.apple.setupassistant.ios.multilingual.individual" sourcePane:v12];
  mutablePayload = [(BYMultilingualAnalyticsEvent *)v10 mutablePayload];
  [(NSMutableDictionary *)mutablePayload setObject:v11 forKey:@"typeValue"];

  mutablePayload2 = [(BYMultilingualAnalyticsEvent *)v10 mutablePayload];
  v9 = [selfCopy stringDescriptionForNestedArray:location];
  [(NSMutableDictionary *)mutablePayload2 setObject:v9 forKey:@"endData"];

  [(BYMultilingualAnalyticsEvent *)v10 recordWithAnalyticsManager:v13];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

+ (unint64_t)actionTypeForStarting:(id)starting endingDataSet:(id)set
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, starting);
  v16 = 0;
  objc_storeStrong(&v16, set);
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
          identifier = [v9 identifier];
          v11 = [location[0] objectAtIndexedSubscript:v15];
          identifier2 = [v11 identifier];
          v13 = [identifier isEqualToString:identifier2] ^ 1;

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

+ (id)identifierForAction:(unint64_t)action
{
  if (action)
  {
    switch(action)
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

+ (id)stringNameForMultilingualPane:(unint64_t)pane
{
  if (pane)
  {
    switch(pane)
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

+ (id)stringDescriptionForArray:(id)array
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  v3 = [location[0] valueForKey:@"identifier"];
  v4 = [v3 componentsJoinedByString:@" "];

  objc_storeStrong(location, 0);

  return v4;
}

+ (id)stringDescriptionForNestedArray:(id)array
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
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
        v8 = [selfCopy stringDescriptionForArray:v12];
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