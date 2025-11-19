@interface NTHeadlineEngagementEventTracker
- (NTHeadlineEngagementEventTracker)init;
- (NTHeadlineEngagementEventTracker)initWithMaxRowCount:(unint64_t)a3;
- (void)trackEngagementWithTodaySource:(id)a3 appConfigTreatmentID:(id)a4 section:(id)a5 otherVisibleSections:(id)a6 headlineOrder:(unint64_t)a7 widgetDisplayMode:(unint64_t)a8;
@end

@implementation NTHeadlineEngagementEventTracker

- (NTHeadlineEngagementEventTracker)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[NTHeadlineEngagementEventTracker init]";
    v8 = 2080;
    v9 = "FTHeadlineEngagementEventTracker.m";
    v10 = 1024;
    v11 = 26;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[NTHeadlineEngagementEventTracker init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (NTHeadlineEngagementEventTracker)initWithMaxRowCount:(unint64_t)a3
{
  v21.receiver = self;
  v21.super_class = NTHeadlineEngagementEventTracker;
  v4 = [(NTHeadlineEngagementEventTracker *)&v21 init];
  if (v4)
  {
    v19 = +[PETEventProperty ft_headlineSourceProperty];
    v5 = +[PETEventProperty ft_sectionProperty];
    v20 = [PETEventProperty propertyWithName:@"hlOrder" range:0, a3];
    v6 = +[PETEventProperty ft_userGroupProperty];
    v18 = +[PETEventProperty ft_widgetDisplayModeProperty];
    v7 = [PETScalarEventTracker alloc];
    v23[0] = v5;
    v23[1] = v20;
    v23[2] = v6;
    v23[3] = v18;
    v8 = [NSArray arrayWithObjects:v23 count:4];
    v9 = [v7 initWithFeatureId:@"NewsWidget" event:@"hlEngagement_order" registerProperties:v8];
    orderHeadlineEngagementEventTracker = v4->_orderHeadlineEngagementEventTracker;
    v4->_orderHeadlineEngagementEventTracker = v9;

    v11 = +[PETEventProperty ft_localTimeHourProperty];
    v12 = +[PETEventProperty ft_timeZoneProperty];
    v13 = [PETScalarEventTracker alloc];
    v22[0] = v19;
    v22[1] = v5;
    v22[2] = v6;
    v22[3] = v11;
    v22[4] = v12;
    v14 = [NSArray arrayWithObjects:v22 count:5];
    v15 = [v13 initWithFeatureId:@"NewsWidget" event:@"hlEngagement_tod2" registerProperties:v14];
    timeOfDayHeadlineEngagementEventTracker = v4->_timeOfDayHeadlineEngagementEventTracker;
    v4->_timeOfDayHeadlineEngagementEventTracker = v15;
  }

  return v4;
}

- (void)trackEngagementWithTodaySource:(id)a3 appConfigTreatmentID:(id)a4 section:(id)a5 otherVisibleSections:(id)a6 headlineOrder:(unint64_t)a7 widgetDisplayMode:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v30 = a6;
  if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C67E0();
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
    sub_1000C68C0();
  }

LABEL_6:
  v17 = FTSectionPropertyValueWithSection(v16);
  v18 = FTUserGroupPropertyValueWithAppConfigTreatmentID(v15);
  v19 = [(NTHeadlineEngagementEventTracker *)self orderHeadlineEngagementEventTracker];
  v32[0] = v17;
  v29 = v15;
  v20 = [NSNumber numberWithUnsignedInteger:a7];
  v32[1] = v20;
  v32[2] = v18;
  v21 = [NSNumber numberWithUnsignedInteger:a8];
  v32[3] = v21;
  v22 = [NSArray arrayWithObjects:v32 count:4];
  [v19 trackEventWithPropertyValues:v22];

  v23 = +[NSDate date];
  v24 = [(NTHeadlineEngagementEventTracker *)self timeOfDayHeadlineEngagementEventTracker];
  v25 = FTHeadlineSourcePropertyValueWithTodaySource(v14);
  v31[0] = v25;
  v31[1] = v17;
  v31[2] = v18;
  v26 = FTLocalTimeHourPropertyValue(v23);
  v31[3] = v26;
  v27 = FTTimeZonePropertyValue();
  v31[4] = v27;
  v28 = [NSArray arrayWithObjects:v31 count:5];
  [v24 trackEventWithPropertyValues:v28];
}

@end