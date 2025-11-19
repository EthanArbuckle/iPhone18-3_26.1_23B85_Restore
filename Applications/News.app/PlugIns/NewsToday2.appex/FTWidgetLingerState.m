@interface FTWidgetLingerState
- (FTWidgetLingerState)init;
- (FTWidgetLingerState)initWithTodaySource:(id)a3 appConfigTreatmentID:(id)a4 widgetDisplayMode:(unint64_t)a5 appearanceType:(unint64_t)a6;
@end

@implementation FTWidgetLingerState

- (FTWidgetLingerState)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTWidgetLingerState init]";
    v8 = 2080;
    v9 = "FTWidgetLingerEventTracker.m";
    v10 = 1024;
    v11 = 35;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTWidgetLingerState init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FTWidgetLingerState)initWithTodaySource:(id)a3 appConfigTreatmentID:(id)a4 widgetDisplayMode:(unint64_t)a5 appearanceType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C56E8();
  }

  v18.receiver = self;
  v18.super_class = FTWidgetLingerState;
  v12 = [(FTWidgetLingerState *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    todaySourceIdentifier = v12->_todaySourceIdentifier;
    v12->_todaySourceIdentifier = v13;

    v15 = [v11 copy];
    appConfigTreatmentID = v12->_appConfigTreatmentID;
    v12->_appConfigTreatmentID = v15;

    v12->_widgetDisplayMode = a5;
    v12->_appearanceType = a6;
  }

  return v12;
}

@end