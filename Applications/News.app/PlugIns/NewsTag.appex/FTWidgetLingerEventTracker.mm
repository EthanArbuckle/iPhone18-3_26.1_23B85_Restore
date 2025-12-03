@interface FTWidgetLingerEventTracker
- (FTWidgetLingerEventTracker)init;
- (void)_trackWidgetLingerEventWithEndTodaySource:(id)source endAppConfigTreatmentID:(id)d endWidgetDisplayMode:(unint64_t)mode endAppearanceType:(unint64_t)type endPropertiesChanged:(BOOL)changed lingerInterval:(double)interval;
- (void)trackWidgetLingerEventExtremity:(unint64_t)extremity atDate:(id)date withTodaySource:(id)source appConfigTreatmentID:(id)d widgetDisplayMode:(unint64_t)mode appearanceType:(unint64_t)type;
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

- (void)trackWidgetLingerEventExtremity:(unint64_t)extremity atDate:(id)date withTodaySource:(id)source appConfigTreatmentID:(id)d widgetDisplayMode:(unint64_t)mode appearanceType:(unint64_t)type
{
  dateCopy = date;
  dCopy = d;
  sourceCopy = source;
  +[NSThread isMainThread];
  if (!dateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009DCC4();
    if (sourceCopy)
    {
      goto LABEL_6;
    }
  }

  else if (sourceCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009DD88();
  }

LABEL_6:
  v17 = [[FTWidgetLingerState alloc] initWithTodaySource:sourceCopy appConfigTreatmentID:dCopy widgetDisplayMode:mode appearanceType:type];

  if (extremity != 1)
  {
    if (!extremity)
    {
      if ([(FTWidgetLingerEventTracker *)self isLingerInProgress]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10009E0A8();
      }

      startState = [(FTWidgetLingerEventTracker *)self startState];

      if (startState && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10009E17C();
      }

      startDate = [(FTWidgetLingerEventTracker *)self startDate];

      if (startDate && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10009E240();
      }

      [(FTWidgetLingerEventTracker *)self setStartState:v17];
      [(FTWidgetLingerEventTracker *)self setStartDate:dateCopy];
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
    startState2 = [(FTWidgetLingerEventTracker *)self startState];
    startDate2 = [(FTWidgetLingerEventTracker *)self startDate];
    if (!startState2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10009DF20();
      if (!startDate2)
      {
LABEL_25:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10009DFE4();
        }
      }
    }

    else if (!startDate2)
    {
      goto LABEL_25;
    }

    todaySourceIdentifier = [(FTWidgetLingerState *)v17 todaySourceIdentifier];
    appConfigTreatmentID = [(FTWidgetLingerState *)v17 appConfigTreatmentID];
    widgetDisplayMode = [(FTWidgetLingerState *)v17 widgetDisplayMode];
    appearanceType = [(FTWidgetLingerState *)v17 appearanceType];
    v26 = FTWidgetLingerStatePropertiesAreDifferent(startState2, v17);
    [dateCopy timeIntervalSinceDate:startDate2];
    [(FTWidgetLingerEventTracker *)self _trackWidgetLingerEventWithEndTodaySource:todaySourceIdentifier endAppConfigTreatmentID:appConfigTreatmentID endWidgetDisplayMode:widgetDisplayMode endAppearanceType:appearanceType endPropertiesChanged:v26 lingerInterval:?];

    [(FTWidgetLingerEventTracker *)self setLingerInProgress:0];
    [(FTWidgetLingerEventTracker *)self setStartState:0];
    [(FTWidgetLingerEventTracker *)self setStartDate:0];
  }

LABEL_28:
}

- (void)_trackWidgetLingerEventWithEndTodaySource:(id)source endAppConfigTreatmentID:(id)d endWidgetDisplayMode:(unint64_t)mode endAppearanceType:(unint64_t)type endPropertiesChanged:(BOOL)changed lingerInterval:(double)interval
{
  changedCopy = changed;
  sourceCopy = source;
  dCopy = d;
  if (!sourceCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009E304();
  }

  widgetLingerEventTracker = [(FTWidgetLingerEventTracker *)self widgetLingerEventTracker];
  v17 = FTHeadlineSourcePropertyValueWithTodaySource(sourceCopy);
  v18 = FTUserGroupPropertyValueWithAppConfigTreatmentID(dCopy);
  v19 = [NSNumber numberWithUnsignedInteger:mode, v17, v18];
  v23[2] = v19;
  v20 = [NSNumber numberWithUnsignedInteger:type];
  v23[3] = v20;
  v21 = FTBooleanPropertyValue(changedCopy);
  v23[4] = v21;
  v22 = [NSArray arrayWithObjects:v23 count:5];
  [widgetLingerEventTracker trackEventWithPropertyValues:v22 value:interval];
}

@end