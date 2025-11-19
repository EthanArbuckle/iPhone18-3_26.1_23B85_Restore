@interface FTWidgetLingerEventTracker
- (FTWidgetLingerEventTracker)init;
- (void)_trackWidgetLingerEventWithEndTodaySource:(id)a3 endAppConfigTreatmentID:(id)a4 endWidgetDisplayMode:(unint64_t)a5 endAppearanceType:(unint64_t)a6 endPropertiesChanged:(BOOL)a7 lingerInterval:(double)a8;
- (void)trackWidgetLingerEventExtremity:(unint64_t)a3 atDate:(id)a4 withTodaySource:(id)a5 appConfigTreatmentID:(id)a6 widgetDisplayMode:(unint64_t)a7 appearanceType:(unint64_t)a8;
@end

@implementation FTWidgetLingerEventTracker

- (FTWidgetLingerEventTracker)init
{
  v13.receiver = self;
  v13.super_class = FTWidgetLingerEventTracker;
  v2 = [(FTWidgetLingerEventTracker *)&v13 init];
  if (v2)
  {
    v3 = [PETEventProperty ft_BOOLeanPropertyWithName:@"propChanged"];
    v4 = [PETDistributionEventTracker alloc];
    v5 = +[PETEventProperty ft_headlineSourceProperty];
    v14[0] = v5;
    v6 = +[PETEventProperty ft_userGroupProperty];
    v14[1] = v6;
    v7 = +[PETEventProperty ft_widgetDisplayModeProperty];
    v14[2] = v7;
    v8 = +[PETEventProperty ft_appearanceTypeProperty];
    v14[3] = v8;
    v14[4] = v3;
    v9 = [NSArray arrayWithObjects:v14 count:5];
    v10 = [v4 initWithFeatureId:@"NewsWidget" event:@"wdgtLinger" registerProperties:v9];
    widgetLingerEventTracker = v2->_widgetLingerEventTracker;
    v2->_widgetLingerEventTracker = v10;
  }

  return v2;
}

- (void)trackWidgetLingerEventExtremity:(unint64_t)a3 atDate:(id)a4 withTodaySource:(id)a5 appConfigTreatmentID:(id)a6 widgetDisplayMode:(unint64_t)a7 appearanceType:(unint64_t)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a5;
  +[NSThread isMainThread];
  if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009DCC4();
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009DD88();
  }

LABEL_6:
  v17 = [[FTWidgetLingerState alloc] initWithTodaySource:v16 appConfigTreatmentID:v15 widgetDisplayMode:a7 appearanceType:a8];

  if (a3 != 1)
  {
    if (!a3)
    {
      if ([(FTWidgetLingerEventTracker *)self isLingerInProgress]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10009E0A8();
      }

      v18 = [(FTWidgetLingerEventTracker *)self startState];

      if (v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10009E17C();
      }

      v19 = [(FTWidgetLingerEventTracker *)self startDate];

      if (v19 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10009E240();
      }

      [(FTWidgetLingerEventTracker *)self setStartState:v17];
      [(FTWidgetLingerEventTracker *)self setStartDate:v14];
      [(FTWidgetLingerEventTracker *)self setLingerInProgress:1];
    }

    goto LABEL_28;
  }

  if (![(FTWidgetLingerEventTracker *)self isLingerInProgress]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009DE4C();
  }

  if ([(FTWidgetLingerEventTracker *)self isLingerInProgress])
  {
    v20 = [(FTWidgetLingerEventTracker *)self startState];
    v21 = [(FTWidgetLingerEventTracker *)self startDate];
    if (!v20 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10009DF20();
      if (!v21)
      {
LABEL_25:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10009DFE4();
        }
      }
    }

    else if (!v21)
    {
      goto LABEL_25;
    }

    v22 = [(FTWidgetLingerState *)v17 todaySourceIdentifier];
    v23 = [(FTWidgetLingerState *)v17 appConfigTreatmentID];
    v24 = [(FTWidgetLingerState *)v17 widgetDisplayMode];
    v25 = [(FTWidgetLingerState *)v17 appearanceType];
    v26 = FTWidgetLingerStatePropertiesAreDifferent(v20, v17);
    [v14 timeIntervalSinceDate:v21];
    [(FTWidgetLingerEventTracker *)self _trackWidgetLingerEventWithEndTodaySource:v22 endAppConfigTreatmentID:v23 endWidgetDisplayMode:v24 endAppearanceType:v25 endPropertiesChanged:v26 lingerInterval:?];

    [(FTWidgetLingerEventTracker *)self setLingerInProgress:0];
    [(FTWidgetLingerEventTracker *)self setStartState:0];
    [(FTWidgetLingerEventTracker *)self setStartDate:0];
  }

LABEL_28:
}

- (void)_trackWidgetLingerEventWithEndTodaySource:(id)a3 endAppConfigTreatmentID:(id)a4 endWidgetDisplayMode:(unint64_t)a5 endAppearanceType:(unint64_t)a6 endPropertiesChanged:(BOOL)a7 lingerInterval:(double)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009E304();
  }

  v16 = [(FTWidgetLingerEventTracker *)self widgetLingerEventTracker];
  v17 = FTHeadlineSourcePropertyValueWithTodaySource(v14);
  v18 = FTUserGroupPropertyValueWithAppConfigTreatmentID(v15);
  v19 = [NSNumber numberWithUnsignedInteger:a5, v17, v18];
  v23[2] = v19;
  v20 = [NSNumber numberWithUnsignedInteger:a6];
  v23[3] = v20;
  v21 = FTBooleanPropertyValue(v9);
  v23[4] = v21;
  v22 = [NSArray arrayWithObjects:v23 count:5];
  [v16 trackEventWithPropertyValues:v22 value:a8];
}

@end