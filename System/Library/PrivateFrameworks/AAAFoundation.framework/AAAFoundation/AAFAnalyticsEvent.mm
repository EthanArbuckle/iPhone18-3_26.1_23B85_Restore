@interface AAFAnalyticsEvent
+ (id)analyticsEventWithName:(id)a3 eventCategory:(id)a4 followupAnalyticsData:(id)a5 altDSID:(id)a6;
+ (id)analyticsEventWithName:(id)a3 eventCategory:(id)a4 initData:(id)a5 altDSID:(id)a6;
- (AAFAnalyticsEvent)initWithCoder:(id)a3;
- (AAFAnalyticsEvent)initWithEventName:(id)a3 eventCategory:(id)a4 initData:(id)a5 altDSID:(id)a6;
- (id)debugDescription;
- (void)_populateUnderlyingErrorsStartingWithRootError:(id)a3 maxDepth:(unsigned int)a4;
- (void)_updateAnalyticsEventWithFollowupAnalyticsInfo:(id)a3;
- (void)completeEvent;
- (void)encodeWithCoder:(id)a3;
- (void)populateUnderlyingErrorsStartingWithRootError:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation AAFAnalyticsEvent

- (void)completeEvent
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 eventName];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "Already reported event %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (id)debugDescription
{
  v3 = [(AAFAnalyticsEvent *)self topLevelError];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [(AAFAnalyticsEvent *)self eventName];
  if (v3)
  {
    v7 = [(AAFAnalyticsEvent *)self topLevelError];
    v8 = [(AAFAnalyticsEvent *)self reportData];
    v9 = [(AAFAnalyticsEvent *)self eventCategory];
    v10 = [(AAFAnalyticsEvent *)self altDSID];
    v11 = [v4 stringWithFormat:@"<%@: %p> EventName: [%@], EventError: [%@], ReportData: %@, EventCategory: [%@], EventAltDSID: [%{sensitive}@]", v5, self, v6, v7, v8, v9, v10];
  }

  else
  {
    v7 = [(AAFAnalyticsEvent *)self reportData];
    v8 = [(AAFAnalyticsEvent *)self eventCategory];
    v9 = [(AAFAnalyticsEvent *)self altDSID];
    v11 = [v4 stringWithFormat:@"<%@: %p> EventName: [%@], ReportData: %@, EventCategory: [%@], EventAltDSID: [%{sensitive}@]", v5, self, v6, v7, v8, v9];
  }

  return v11;
}

- (AAFAnalyticsEvent)initWithEventName:(id)a3 eventCategory:(id)a4 initData:(id)a5 altDSID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = AAFAnalyticsEvent;
  v15 = [(AAFAnalyticsEvent *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_eventName, a3);
    objc_storeStrong(&v16->_eventCategory, a4);
    objc_storeStrong(&v16->_altDSID, a6);
    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F8];
    }

    reportData = v16->_reportData;
    v16->_reportData = v17;

    mach_timebase_info(&v16->_clock_timebase);
    v16->_initTime = mach_absolute_time();
    v19 = [MEMORY[0x1E695DF00] now];
    [v19 timeIntervalSince1970];
    v16->_eventCreationTime = v20 * 1000.0;

    if (+[AFUtilities isInternalBuild])
    {
      v21 = CFPreferencesCopyAppValue(@"TelemetryInternalSignature", @"com.apple.AAAFoundation");
      [(AAFAnalyticsEvent *)v16 setObject:v21 forKeyedSubscript:@"internalTestSignature"];
    }
  }

  return v16;
}

+ (id)analyticsEventWithName:(id)a3 eventCategory:(id)a4 initData:(id)a5 altDSID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [[a1 alloc] initWithEventName:v10 eventCategory:v11 initData:v12 altDSID:v13];
  }

  else
  {
    v15 = _AAFLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AAFAnalyticsEvent analyticsEventWithName:v15 eventCategory:? initData:? altDSID:?];
    }

    v14 = 0;
  }

  return v14;
}

+ (id)analyticsEventWithName:(id)a3 eventCategory:(id)a4 followupAnalyticsData:(id)a5 altDSID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && v12)
  {
    v14 = [[a1 alloc] initWithEventName:v10 eventCategory:v11 initData:0 altDSID:v13];
    [v14 _updateAnalyticsEventWithFollowupAnalyticsInfo:v12];
  }

  else
  {
    v15 = _AAFLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AAFAnalyticsEvent analyticsEventWithName:v15 eventCategory:? initData:? altDSID:?];
    }

    v14 = 0;
  }

  return v14;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(NSDictionary *)self->_reportData mutableCopy];
    [v8 setObject:v6 forKeyedSubscript:v7];
    v9 = [v8 copy];
    reportData = self->_reportData;
    self->_reportData = v9;
  }

  else
  {
    v11 = _AAFLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [AAFAnalyticsEvent setObject:v11 forKeyedSubscript:?];
    }
  }
}

- (void)_populateUnderlyingErrorsStartingWithRootError:(id)a3 maxDepth:(unsigned int)a4
{
  v21 = a3;
  [(AAFAnalyticsEvent *)self setTopLevelError:v21];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v21, "code")}];
  [(AAFAnalyticsEvent *)self setObject:v6 forKeyedSubscript:@"errorCode"];

  v7 = [v21 domain];
  [(AAFAnalyticsEvent *)self setObject:v7 forKeyedSubscript:@"errorDomain"];

  v8 = [v21 userInfo];
  v23 = *MEMORY[0x1E696AA08];
  v9 = [v8 objectForKeyedSubscript:?];

  v22 = a4;
  if (v9)
  {
    v10 = a4 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = v9;
      v11 = (v12 + 1);
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", @"underlyingErrorCode", v11];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", @"underlyingErrorDomain", v11];
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "code")}];
      [(AAFAnalyticsEvent *)self setObject:v16 forKeyedSubscript:v14];

      v17 = [v13 domain];
      [(AAFAnalyticsEvent *)self setObject:v17 forKeyedSubscript:v15];

      v18 = [v13 userInfo];
      v9 = [v18 objectForKeyedSubscript:v23];

      if (!v9)
      {
        break;
      }

      v19 = v12 + 2;
      ++v12;
    }

    while (v19 <= v22);
  }

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
  [(AAFAnalyticsEvent *)self setObject:v20 forKeyedSubscript:@"numberOfUnderlyingErrors"];
}

- (void)populateUnderlyingErrorsStartingWithRootError:(id)a3
{
  if (a3)
  {
    [(AAFAnalyticsEvent *)self _populateUnderlyingErrorsStartingWithRootError:a3 maxDepth:AAFNumberofUnderlyingError];
  }
}

- (void)_updateAnalyticsEventWithFollowupAnalyticsInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 flowID];
  [(AAFAnalyticsEvent *)self setObject:v5 forKeyedSubscript:@"flowID"];

  v6 = [v4 cfuType];
  [(AAFAnalyticsEvent *)self setObject:v6 forKeyedSubscript:@"cfuType"];

  v7 = [v4 hasProxiedDevice];
  [(AAFAnalyticsEvent *)self setObject:v7 forKeyedSubscript:@"hasProxiedDevice"];

  v8 = [v4 proxiedBundleID];
  [(AAFAnalyticsEvent *)self setObject:v8 forKeyedSubscript:@"proxiedBundleId"];

  v9 = [v4 didSucceed];
  [(AAFAnalyticsEvent *)self setObject:v9 forKeyedSubscript:@"didSucceed"];

  v10 = [v4 client];

  [(AAFAnalyticsEvent *)self setObject:v10 forKeyedSubscript:@"processName"];
}

- (void)encodeWithCoder:(id)a3
{
  eventName = self->_eventName;
  v5 = a3;
  [v5 encodeObject:eventName forKey:@"_eventName"];
  [v5 encodeObject:self->_eventCategory forKey:@"_eventCategory"];
  [v5 encodeObject:self->_reportData forKey:@"_reportData"];
  [v5 encodeDouble:@"_eventCreationTime" forKey:self->_eventCreationTime];
  [v5 encodeObject:self->_clientName forKey:@"_clientName"];
  [v5 encodeObject:self->_clientBundleId forKey:@"_clientBundleId"];
  [v5 encodeObject:self->_clientType forKey:@"_clientType"];
  [v5 encodeObject:self->_altDSID forKey:@"_altDSID"];
}

- (AAFAnalyticsEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AAFAnalyticsEvent *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_eventName"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_eventCategory"];
    eventCategory = v5->_eventCategory;
    v5->_eventCategory = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_reportData"];
    reportData = v5->_reportData;
    v5->_reportData = v17;

    [v4 decodeDoubleForKey:@"_eventCreationTime"];
    v5->_eventCreationTime = v19;
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientName"];
    clientName = v5->_clientName;
    v5->_clientName = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleId"];
    clientBundleId = v5->_clientBundleId;
    v5->_clientBundleId = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientType"];
    clientType = v5->_clientType;
    v5->_clientType = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v26;
  }

  return v5;
}

@end