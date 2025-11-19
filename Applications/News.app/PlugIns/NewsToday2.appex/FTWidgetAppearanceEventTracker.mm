@interface FTWidgetAppearanceEventTracker
- (FTWidgetAppearanceEventTracker)init;
- (FTWidgetAppearanceEventTracker)initWithMaxRowCount:(unint64_t)a3;
- (void)trackAppearanceAtDate:(id)a3 withHeadlineSource:(id)a4 appConfigTreatmentID:(id)a5 appearanceType:(unint64_t)a6 allItemsCount:(unint64_t)a7;
- (void)trackDisappearance;
@end

@implementation FTWidgetAppearanceEventTracker

- (FTWidgetAppearanceEventTracker)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTWidgetAppearanceEventTracker init]";
    v8 = 2080;
    v9 = "FTWidgetAppearanceEventTracker.m";
    v10 = 1024;
    v11 = 29;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTWidgetAppearanceEventTracker init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FTWidgetAppearanceEventTracker)initWithMaxRowCount:(unint64_t)a3
{
  v22.receiver = self;
  v22.super_class = FTWidgetAppearanceEventTracker;
  v4 = [(FTWidgetAppearanceEventTracker *)&v22 init];
  if (v4)
  {
    v5 = +[PETEventProperty ft_userGroupProperty];
    v6 = +[PETEventProperty ft_headlineSourceProperty];
    v7 = +[PETEventProperty ft_appearanceTypeProperty];
    v8 = [PETEventProperty propertyWithName:@"headlines" range:0, a3 + 1];
    v9 = [PETScalarEventTracker alloc];
    v24[0] = v6;
    v24[1] = v5;
    v24[2] = v7;
    v24[3] = v8;
    v10 = [NSArray arrayWithObjects:v24 count:4];
    v11 = [v9 initWithFeatureId:@"NewsWidget" event:@"wdgtDidAppear" registerProperties:v10];
    widgetAppearanceEventTracker = v4->_widgetAppearanceEventTracker;
    v4->_widgetAppearanceEventTracker = v11;

    v13 = [[PETScalarEventTracker alloc] initWithFeatureId:@"NewsWidget" event:@"wdgtDidDisappear" registerProperties:&__NSArray0__struct];
    widgetDisappearanceEventTracker = v4->_widgetDisappearanceEventTracker;
    v4->_widgetDisappearanceEventTracker = v13;

    v15 = +[PETEventProperty ft_localTimeHourProperty];
    v16 = +[PETEventProperty ft_timeZoneProperty];
    v17 = [PETScalarEventTracker alloc];
    v23[0] = v6;
    v23[1] = v5;
    v23[2] = v15;
    v23[3] = v16;
    v18 = [NSArray arrayWithObjects:v23 count:4];
    v19 = [v17 initWithFeatureId:@"NewsWidget" event:@"wdgtDidAppear_tod" registerProperties:v18];
    timeOfDayWidgetAppearanceEventTracker = v4->_timeOfDayWidgetAppearanceEventTracker;
    v4->_timeOfDayWidgetAppearanceEventTracker = v19;
  }

  return v4;
}

- (void)trackAppearanceAtDate:(id)a3 withHeadlineSource:(id)a4 appConfigTreatmentID:(id)a5 appearanceType:(unint64_t)a6 allItemsCount:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6A80();
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else if (v13)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6B60();
  }

LABEL_6:
  v15 = FTHeadlineSourcePropertyValueWithTodaySource(v13);
  v16 = FTUserGroupPropertyValueWithAppConfigTreatmentID(v14);
  v17 = [(FTWidgetAppearanceEventTracker *)self widgetAppearanceEventTracker];
  v26[0] = v15;
  v26[1] = v16;
  v18 = [NSNumber numberWithUnsignedInteger:a6];
  v26[2] = v18;
  v19 = [NSNumber numberWithUnsignedInteger:a7];
  v26[3] = v19;
  v20 = [NSArray arrayWithObjects:v26 count:4];
  [v17 trackEventWithPropertyValues:v20];

  v21 = [(FTWidgetAppearanceEventTracker *)self timeOfDayWidgetAppearanceEventTracker];
  v25[0] = v15;
  v25[1] = v16;
  v22 = FTLocalTimeHourPropertyValue(v12);
  v25[2] = v22;
  v23 = FTTimeZonePropertyValue();
  v25[3] = v23;
  v24 = [NSArray arrayWithObjects:v25 count:4];
  [v21 trackEventWithPropertyValues:v24];
}

- (void)trackDisappearance
{
  v2 = [(FTWidgetAppearanceEventTracker *)self widgetDisappearanceEventTracker];
  [v2 trackEventWithPropertyValues:&__NSArray0__struct];
}

@end