@interface AAFAnalyticsEvent
+ (id)analyticsEventWithName:(id)name eventCategory:(id)category followupAnalyticsData:(id)data altDSID:(id)d;
+ (id)analyticsEventWithName:(id)name eventCategory:(id)category initData:(id)data altDSID:(id)d;
- (AAFAnalyticsEvent)initWithCoder:(id)coder;
- (AAFAnalyticsEvent)initWithEventName:(id)name eventCategory:(id)category initData:(id)data altDSID:(id)d;
- (id)debugDescription;
- (void)_populateUnderlyingErrorsStartingWithRootError:(id)error maxDepth:(unsigned int)depth;
- (void)_updateAnalyticsEventWithFollowupAnalyticsInfo:(id)info;
- (void)completeEvent;
- (void)encodeWithCoder:(id)coder;
- (void)populateUnderlyingErrorsStartingWithRootError:(id)error;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation AAFAnalyticsEvent

- (void)completeEvent
{
  v7 = *MEMORY[0x1E69E9840];
  eventName = [self eventName];
  v5 = 138412290;
  v6 = eventName;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "Already reported event %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (id)debugDescription
{
  topLevelError = [(AAFAnalyticsEvent *)self topLevelError];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  eventName = [(AAFAnalyticsEvent *)self eventName];
  if (topLevelError)
  {
    topLevelError2 = [(AAFAnalyticsEvent *)self topLevelError];
    reportData = [(AAFAnalyticsEvent *)self reportData];
    eventCategory = [(AAFAnalyticsEvent *)self eventCategory];
    altDSID = [(AAFAnalyticsEvent *)self altDSID];
    v11 = [v4 stringWithFormat:@"<%@: %p> EventName: [%@], EventError: [%@], ReportData: %@, EventCategory: [%@], EventAltDSID: [%{sensitive}@]", v5, self, eventName, topLevelError2, reportData, eventCategory, altDSID];
  }

  else
  {
    topLevelError2 = [(AAFAnalyticsEvent *)self reportData];
    reportData = [(AAFAnalyticsEvent *)self eventCategory];
    eventCategory = [(AAFAnalyticsEvent *)self altDSID];
    v11 = [v4 stringWithFormat:@"<%@: %p> EventName: [%@], ReportData: %@, EventCategory: [%@], EventAltDSID: [%{sensitive}@]", v5, self, eventName, topLevelError2, reportData, eventCategory];
  }

  return v11;
}

- (AAFAnalyticsEvent)initWithEventName:(id)name eventCategory:(id)category initData:(id)data altDSID:(id)d
{
  nameCopy = name;
  categoryCopy = category;
  dataCopy = data;
  dCopy = d;
  v23.receiver = self;
  v23.super_class = AAFAnalyticsEvent;
  v15 = [(AAFAnalyticsEvent *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_eventName, name);
    objc_storeStrong(&v16->_eventCategory, category);
    objc_storeStrong(&v16->_altDSID, d);
    if (dataCopy)
    {
      v17 = dataCopy;
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

+ (id)analyticsEventWithName:(id)name eventCategory:(id)category initData:(id)data altDSID:(id)d
{
  nameCopy = name;
  categoryCopy = category;
  dataCopy = data;
  dCopy = d;
  if (nameCopy)
  {
    v14 = [[self alloc] initWithEventName:nameCopy eventCategory:categoryCopy initData:dataCopy altDSID:dCopy];
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

+ (id)analyticsEventWithName:(id)name eventCategory:(id)category followupAnalyticsData:(id)data altDSID:(id)d
{
  nameCopy = name;
  categoryCopy = category;
  dataCopy = data;
  dCopy = d;
  if (nameCopy && dataCopy)
  {
    v14 = [[self alloc] initWithEventName:nameCopy eventCategory:categoryCopy initData:0 altDSID:dCopy];
    [v14 _updateAnalyticsEventWithFollowupAnalyticsInfo:dataCopy];
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

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  if (subscriptCopy)
  {
    v8 = [(NSDictionary *)self->_reportData mutableCopy];
    [v8 setObject:objectCopy forKeyedSubscript:subscriptCopy];
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

- (void)_populateUnderlyingErrorsStartingWithRootError:(id)error maxDepth:(unsigned int)depth
{
  errorCopy = error;
  [(AAFAnalyticsEvent *)self setTopLevelError:errorCopy];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  [(AAFAnalyticsEvent *)self setObject:v6 forKeyedSubscript:@"errorCode"];

  domain = [errorCopy domain];
  [(AAFAnalyticsEvent *)self setObject:domain forKeyedSubscript:@"errorDomain"];

  userInfo = [errorCopy userInfo];
  v23 = *MEMORY[0x1E696AA08];
  v9 = [userInfo objectForKeyedSubscript:?];

  depthCopy = depth;
  if (v9)
  {
    v10 = depth == 0;
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

      domain2 = [v13 domain];
      [(AAFAnalyticsEvent *)self setObject:domain2 forKeyedSubscript:v15];

      userInfo2 = [v13 userInfo];
      v9 = [userInfo2 objectForKeyedSubscript:v23];

      if (!v9)
      {
        break;
      }

      v19 = v12 + 2;
      ++v12;
    }

    while (v19 <= depthCopy);
  }

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
  [(AAFAnalyticsEvent *)self setObject:v20 forKeyedSubscript:@"numberOfUnderlyingErrors"];
}

- (void)populateUnderlyingErrorsStartingWithRootError:(id)error
{
  if (error)
  {
    [(AAFAnalyticsEvent *)self _populateUnderlyingErrorsStartingWithRootError:error maxDepth:AAFNumberofUnderlyingError];
  }
}

- (void)_updateAnalyticsEventWithFollowupAnalyticsInfo:(id)info
{
  infoCopy = info;
  flowID = [infoCopy flowID];
  [(AAFAnalyticsEvent *)self setObject:flowID forKeyedSubscript:@"flowID"];

  cfuType = [infoCopy cfuType];
  [(AAFAnalyticsEvent *)self setObject:cfuType forKeyedSubscript:@"cfuType"];

  hasProxiedDevice = [infoCopy hasProxiedDevice];
  [(AAFAnalyticsEvent *)self setObject:hasProxiedDevice forKeyedSubscript:@"hasProxiedDevice"];

  proxiedBundleID = [infoCopy proxiedBundleID];
  [(AAFAnalyticsEvent *)self setObject:proxiedBundleID forKeyedSubscript:@"proxiedBundleId"];

  didSucceed = [infoCopy didSucceed];
  [(AAFAnalyticsEvent *)self setObject:didSucceed forKeyedSubscript:@"didSucceed"];

  client = [infoCopy client];

  [(AAFAnalyticsEvent *)self setObject:client forKeyedSubscript:@"processName"];
}

- (void)encodeWithCoder:(id)coder
{
  eventName = self->_eventName;
  coderCopy = coder;
  [coderCopy encodeObject:eventName forKey:@"_eventName"];
  [coderCopy encodeObject:self->_eventCategory forKey:@"_eventCategory"];
  [coderCopy encodeObject:self->_reportData forKey:@"_reportData"];
  [coderCopy encodeDouble:@"_eventCreationTime" forKey:self->_eventCreationTime];
  [coderCopy encodeObject:self->_clientName forKey:@"_clientName"];
  [coderCopy encodeObject:self->_clientBundleId forKey:@"_clientBundleId"];
  [coderCopy encodeObject:self->_clientType forKey:@"_clientType"];
  [coderCopy encodeObject:self->_altDSID forKey:@"_altDSID"];
}

- (AAFAnalyticsEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AAFAnalyticsEvent *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_eventName"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_eventCategory"];
    eventCategory = v5->_eventCategory;
    v5->_eventCategory = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"_reportData"];
    reportData = v5->_reportData;
    v5->_reportData = v17;

    [coderCopy decodeDoubleForKey:@"_eventCreationTime"];
    v5->_eventCreationTime = v19;
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientName"];
    clientName = v5->_clientName;
    v5->_clientName = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleId"];
    clientBundleId = v5->_clientBundleId;
    v5->_clientBundleId = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientType"];
    clientType = v5->_clientType;
    v5->_clientType = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v26;
  }

  return v5;
}

@end