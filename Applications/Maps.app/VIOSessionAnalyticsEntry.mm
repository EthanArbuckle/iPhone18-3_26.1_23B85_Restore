@interface VIOSessionAnalyticsEntry
- (GEOMarcoLiteUsageState)usageState;
- (VIOSessionAnalyticsEntry)initWithUsageType:(int)type value:(id)value;
- (id)description;
- (void)completeEntryWithReason:(int)reason;
@end

@implementation VIOSessionAnalyticsEntry

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  usageType = self->_usageType;
  if (usageType >= 0x1A)
  {
    v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_usageType];
  }

  else
  {
    v6 = off_10165F498[usageType];
  }

  exitReason = self->_exitReason;
  if (exitReason)
  {
    integerValue = [(NSNumber *)self->_exitReason integerValue];
    if (integerValue >= 0x1A)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", integerValue];
    }

    else
    {
      v9 = off_10165F498[integerValue & 0x1F];
    }
  }

  else
  {
    v9 = @"none";
  }

  startDate = self->_startDate;
  value = self->_value;
  endDate = self->_endDate;
  [(VIOSessionAnalyticsEntry *)self totalTime];
  v14 = [NSString stringWithFormat:@"<%@ %p: type: %@ exit: %@ value: %@ from: %@ to: %@ total: %f>", v4, self, v6, v9, value, startDate, endDate, v13];;
  if (exitReason)
  {
  }

  return v14;
}

- (GEOMarcoLiteUsageState)usageState
{
  if (![(VIOSessionAnalyticsEntry *)self isComplete])
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[VIOSessionAnalyticsEntry usageState]";
      v15 = 2080;
      v16 = "VIOSessionAnalyticsEntry.m";
      v17 = 1024;
      v18 = 64;
      v19 = 2080;
      v20 = "self.isComplete";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v13, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }
  }

  v3 = objc_opt_new();
  [v3 setStateType:{-[VIOSessionAnalyticsEntry usageType](self, "usageType")}];
  [(VIOSessionAnalyticsEntry *)self totalTime];
  LODWORD(v5) = vcvtpd_u64_f64(v4);
  [v3 setStateTime:v5];
  value = [(VIOSessionAnalyticsEntry *)self value];

  if (value)
  {
    value2 = [(VIOSessionAnalyticsEntry *)self value];
    [v3 setStateValue:{objc_msgSend(value2, "unsignedIntegerValue")}];
  }

  exitReason = [(VIOSessionAnalyticsEntry *)self exitReason];
  [v3 setStateExitReason:{objc_msgSend(exitReason, "integerValue")}];

  return v3;
}

- (void)completeEntryWithReason:(int)reason
{
  v3 = *&reason;
  if ([(VIOSessionAnalyticsEntry *)self isComplete])
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = "[VIOSessionAnalyticsEntry completeEntryWithReason:]";
      v14 = 2080;
      v15 = "VIOSessionAnalyticsEntry.m";
      v16 = 1024;
      v17 = 48;
      v18 = 2080;
      v19 = "!self.isComplete";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v12, 0x26u);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }
  }

  if (![(VIOSessionAnalyticsEntry *)self isComplete])
  {
    v5 = +[NSDate date];
    endDate = self->_endDate;
    self->_endDate = v5;

    v7 = [NSNumber numberWithInt:v3];
    exitReason = self->_exitReason;
    self->_exitReason = v7;
  }
}

- (VIOSessionAnalyticsEntry)initWithUsageType:(int)type value:(id)value
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = VIOSessionAnalyticsEntry;
  v8 = [(VIOSessionAnalyticsEntry *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_usageType = type;
    objc_storeStrong(&v8->_value, value);
    v10 = +[NSDate date];
    startDate = v9->_startDate;
    v9->_startDate = v10;
  }

  return v9;
}

@end