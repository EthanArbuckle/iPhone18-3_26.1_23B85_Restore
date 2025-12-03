@interface AMSMetricsLoggingEvent
+ (id)_propertyValueClassesForKnownProperties;
+ (id)shouldSampleErrorsWithBag:(id)bag;
- (AMSMetricsLoggingEvent)initWithSubsystem:(id)subsystem category:(id)category error:(id)error;
- (BOOL)errorUserInfoEngagementPresented;
- (BOOL)eventInlineInterruption;
- (BOOL)underlyingErrorUserInfoEngagementPresented;
- (NSMutableDictionary)underlyingDictionaryForSentry;
- (double)eventEndTime;
- (double)eventStartTime;
- (double)lastBreadcrumbDuration;
- (id)cleanURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getBuildType;
- (id)stringForLogLevel:(int64_t)level;
- (id)underlyingDictionaryOverride;
- (int64_t)errorCode;
- (int64_t)errorUserInfoCryptoCode;
- (int64_t)errorUserInfoServerErrorCode;
- (int64_t)errorUserInfoStatusCode;
- (int64_t)logLevel;
- (int64_t)underlyingErrorCode;
- (int64_t)underlyingErrorUserInfoCryptoCode;
- (int64_t)underlyingErrorUserInfoServerErrorCode;
- (int64_t)underlyingErrorUserInfoStatusCode;
- (void)prepareEvent;
- (void)setBreadcrumbs:(id)breadcrumbs;
- (void)setErrorCode:(int64_t)code;
- (void)setErrorUserInfoCryptoCode:(int64_t)code;
- (void)setErrorUserInfoEngagementPresented:(BOOL)presented;
- (void)setErrorUserInfoServerErrorCode:(int64_t)code;
- (void)setErrorUserInfoStatusCode:(int64_t)code;
- (void)setEventDestinations:(id)destinations;
- (void)setEventEndTime:(double)time;
- (void)setEventInlineInterruption:(BOOL)interruption;
- (void)setEventStartTime:(double)time;
- (void)setJsVersions:(id)versions;
- (void)setLogLevel:(int64_t)level;
- (void)setOriginatingURL:(id)l;
- (void)setUnderlyingErrorCode:(int64_t)code;
- (void)setUnderlyingErrorUserInfoCryptoCode:(int64_t)code;
- (void)setUnderlyingErrorUserInfoEngagementPresented:(BOOL)presented;
- (void)setUnderlyingErrorUserInfoServerErrorCode:(int64_t)code;
- (void)setUnderlyingErrorUserInfoStatusCode:(int64_t)code;
- (void)setUrl:(id)url;
@end

@implementation AMSMetricsLoggingEvent

- (AMSMetricsLoggingEvent)initWithSubsystem:(id)subsystem category:(id)category error:(id)error
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = AMSMetricsLoggingEvent;
  v11 = [(AMSMetricsEvent *)&v14 initWithTopic:@"xp_amp_ams_log"];
  v12 = v11;
  if (v11)
  {
    [(AMSMetricsEvent *)v11 setSuppressEngagement:1];
    [(AMSMetricsLoggingEvent *)v12 setSubsystem:subsystemCopy];
    [(AMSMetricsLoggingEvent *)v12 setCategory:categoryCopy];
    objc_storeStrong(&v12->_error, error);
    [(AMSMetricsLoggingEvent *)v12 prepareEvent];
  }

  return v12;
}

- (void)prepareEvent
{
  [(AMSMetricsEvent *)self setAnonymous:1];
  [(AMSMetricsEvent *)self setCheckDiagnosticsAndUsageSetting:1];
  v3 = +[AMSProcessInfo currentProcess];
  bundleIdentifier = [v3 bundleIdentifier];
  [(AMSMetricsLoggingEvent *)self setClientApp:bundleIdentifier];

  getBuildType = [(AMSMetricsLoggingEvent *)self getBuildType];
  [(AMSMetricsLoggingEvent *)self setClientBuildType:getBuildType];

  v6 = +[AMSProcessInfo currentProcess];
  bundleIdentifier2 = [v6 bundleIdentifier];
  [(AMSMetricsLoggingEvent *)self setCurrentProcess:bundleIdentifier2];

  [(AMSMetricsEvent *)self setEventType:@"log"];
  [(AMSMetricsLoggingEvent *)self setLogLevel:1];
  originatingURL = [(AMSMetricsLoggingEvent *)self originatingURL];
  if (originatingURL)
  {
    [(AMSMetricsLoggingEvent *)self setOriginatingURL:originatingURL];
  }

  else
  {
    error = [(AMSMetricsLoggingEvent *)self error];
    userInfo = [error userInfo];
    v11 = [userInfo objectForKeyedSubscript:@"AMSURL"];
    [(AMSMetricsLoggingEvent *)self setOriginatingURL:v11];
  }

  v12 = +[AMSProcessInfo currentProcess];
  clientVersion = [v12 clientVersion];
  [(AMSMetricsLoggingEvent *)self setReleaseVersion:clientVersion];

  error2 = [(AMSMetricsLoggingEvent *)self error];
  -[AMSMetricsLoggingEvent setErrorCode:](self, "setErrorCode:", [error2 code]);

  error3 = [(AMSMetricsLoggingEvent *)self error];
  domain = [error3 domain];
  [(AMSMetricsLoggingEvent *)self setErrorDomain:domain];

  error4 = [(AMSMetricsLoggingEvent *)self error];
  ams_title = [error4 ams_title];
  [(AMSMetricsLoggingEvent *)self setErrorTitle:ams_title];

  error5 = [(AMSMetricsLoggingEvent *)self error];
  ams_message = [error5 ams_message];
  [(AMSMetricsLoggingEvent *)self setErrorMessage:ams_message];

  error6 = [(AMSMetricsLoggingEvent *)self error];
  userInfo2 = [error6 userInfo];
  v23 = [userInfo2 objectForKeyedSubscript:@"AMSCryptoErrorCode"];
  -[AMSMetricsLoggingEvent setErrorUserInfoCryptoCode:](self, "setErrorUserInfoCryptoCode:", [v23 integerValue]);

  error7 = [(AMSMetricsLoggingEvent *)self error];
  userInfo3 = [error7 userInfo];
  v26 = [userInfo3 objectForKeyedSubscript:@"AMSEngagementPresented"];
  -[AMSMetricsLoggingEvent setErrorUserInfoEngagementPresented:](self, "setErrorUserInfoEngagementPresented:", [v26 BOOLValue]);

  error8 = [(AMSMetricsLoggingEvent *)self error];
  userInfo4 = [error8 userInfo];
  v29 = [userInfo4 objectForKeyedSubscript:@"AMSServerErrorCode"];
  -[AMSMetricsLoggingEvent setErrorUserInfoServerErrorCode:](self, "setErrorUserInfoServerErrorCode:", [v29 integerValue]);

  error9 = [(AMSMetricsLoggingEvent *)self error];
  userInfo5 = [error9 userInfo];
  v32 = [userInfo5 objectForKeyedSubscript:@"AMSStatusCode"];
  -[AMSMetricsLoggingEvent setErrorUserInfoStatusCode:](self, "setErrorUserInfoStatusCode:", [v32 integerValue]);

  clientApp = [(AMSMetricsLoggingEvent *)self clientApp];
  if (([clientApp isEqual:@"com.apple.Fitness"] & 1) == 0)
  {
    clientApp2 = [(AMSMetricsLoggingEvent *)self clientApp];
    v35 = [clientApp2 isEqual:@"com.apple.fitcored"];

    if (v35)
    {
      goto LABEL_8;
    }

    v36 = +[AMSDevice buildVersion];
    [(AMSMetricsEvent *)self setOsBuildVersion:v36];

    clientApp = +[AMSDevice operatingSystem];
    [(AMSMetricsEvent *)self setOsName:clientApp];
  }

LABEL_8:
  error10 = [(AMSMetricsLoggingEvent *)self error];
  ams_underlyingError = [error10 ams_underlyingError];
  -[AMSMetricsLoggingEvent setUnderlyingErrorCode:](self, "setUnderlyingErrorCode:", [ams_underlyingError code]);

  error11 = [(AMSMetricsLoggingEvent *)self error];
  ams_underlyingError2 = [error11 ams_underlyingError];
  domain2 = [ams_underlyingError2 domain];
  [(AMSMetricsLoggingEvent *)self setUnderlyingErrorDomain:domain2];

  error12 = [(AMSMetricsLoggingEvent *)self error];
  ams_underlyingError3 = [error12 ams_underlyingError];
  ams_message2 = [ams_underlyingError3 ams_message];
  [(AMSMetricsLoggingEvent *)self setUnderlyingErrorMessage:ams_message2];

  error13 = [(AMSMetricsLoggingEvent *)self error];
  ams_underlyingError4 = [error13 ams_underlyingError];
  ams_title2 = [ams_underlyingError4 ams_title];
  [(AMSMetricsLoggingEvent *)self setUnderlyingErrorTitle:ams_title2];

  error14 = [(AMSMetricsLoggingEvent *)self error];
  ams_underlyingError5 = [error14 ams_underlyingError];
  userInfo6 = [ams_underlyingError5 userInfo];
  v51 = [userInfo6 objectForKeyedSubscript:@"AMSCryptoErrorCode"];
  -[AMSMetricsLoggingEvent setUnderlyingErrorUserInfoCryptoCode:](self, "setUnderlyingErrorUserInfoCryptoCode:", [v51 integerValue]);

  error15 = [(AMSMetricsLoggingEvent *)self error];
  ams_underlyingError6 = [error15 ams_underlyingError];
  userInfo7 = [ams_underlyingError6 userInfo];
  v55 = [userInfo7 objectForKeyedSubscript:@"AMSEngagementPresented"];
  -[AMSMetricsLoggingEvent setUnderlyingErrorUserInfoEngagementPresented:](self, "setUnderlyingErrorUserInfoEngagementPresented:", [v55 BOOLValue]);

  error16 = [(AMSMetricsLoggingEvent *)self error];
  ams_underlyingError7 = [error16 ams_underlyingError];
  userInfo8 = [ams_underlyingError7 userInfo];
  v59 = [userInfo8 objectForKeyedSubscript:@"AMSServerErrorCode"];
  -[AMSMetricsLoggingEvent setUnderlyingErrorUserInfoServerErrorCode:](self, "setUnderlyingErrorUserInfoServerErrorCode:", [v59 integerValue]);

  error17 = [(AMSMetricsLoggingEvent *)self error];
  ams_underlyingError8 = [error17 ams_underlyingError];
  userInfo9 = [ams_underlyingError8 userInfo];
  v62 = [userInfo9 objectForKeyedSubscript:@"AMSStatusCode"];
  -[AMSMetricsLoggingEvent setUnderlyingErrorUserInfoStatusCode:](self, "setUnderlyingErrorUserInfoStatusCode:", [v62 integerValue]);
}

- (id)getBuildType
{
  if (os_variant_has_internal_content())
  {
    return @"internal";
  }

  else
  {
    return @"customer";
  }
}

+ (id)shouldSampleErrorsWithBag:(id)bag
{
  v19 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  v4 = bagCopy;
  if (bagCopy)
  {
    v5 = [bagCopy doubleForKey:@"amsmetrics-logging-sampling"];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__46;
    v17 = __Block_byref_object_dispose__46;
    v18 = [v4 doubleForKey:@"amsmetrics-logging-sampling-session"];
    v6 = objc_alloc_init(AMSMutableBinaryPromise);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__AMSMetricsLoggingEvent_shouldSampleErrorsWithBag___block_invoke;
    v11[3] = &unk_1E73BA128;
    p_buf = &buf;
    v7 = v6;
    v12 = v7;
    [v5 valueWithCompletion:v11];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v8 = +[AMSLogConfig sharedMetricsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"amsmetrics-logging-sampling";
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "Bag not provided for %@", &buf, 0xCu);
    }

    v7 = +[AMSBinaryPromise promiseWithSuccess];
  }

  return v7;
}

void __52__AMSMetricsLoggingEvent_shouldSampleErrorsWithBag___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a4)
  {
    v7 = +[AMSLogConfig sharedMetricsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = @"amsmetrics-logging-sampling";
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "Unable to pull bag value for %@", buf, 0xCu);
    }

    v6 = &unk_1F0779850;
  }

  v9 = *(*(*(a1 + 40) + 8) + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__AMSMetricsLoggingEvent_shouldSampleErrorsWithBag___block_invoke_321;
  v11[3] = &unk_1E73BA100;
  v12 = v6;
  v13 = *(a1 + 32);
  v10 = v6;
  [v9 valueWithCompletion:v11];
}

void __52__AMSMetricsLoggingEvent_shouldSampleErrorsWithBag___block_invoke_321(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = +[AMSLogConfig sharedMetricsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = @"amsmetrics-logging-sampling-session";
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "Unable to pull bag value for %@", &v15, 0xCu);
    }

    v6 = &unk_1F0779850;
  }

  [*(a1 + 32) doubleValue];
  v11 = v10;
  [v6 doubleValue];
  v13 = [AMSDefaults shouldSampleWithPercentage:0x1F0725758 sessionDuration:v11 identifier:v12];
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = AMSError(11, @"Metrics Logging Event Failure", @"Not sampling", 0);
  }

  [*(a1 + 40) finishWithSuccess:v13 error:v14];
}

- (NSMutableDictionary)underlyingDictionaryForSentry
{
  v177 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v154 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"contexts", @"app"];
  v151 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"breadcrumbs", @"values"];
  v157 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"mechanism", @"data"];
  v153 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"exception", @"values"];
  v156 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"mechanism", @"meta"];
  v152 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"contexts", @"os"];
  [v3 setValue:@"production" forKey:@"environment"];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v3 setValue:uUIDString forKey:@"event_id"];

  v6 = [(AMSMetricsLoggingEvent *)self stringForLogLevel:[(AMSMetricsLoggingEvent *)self logLevel]];
  [v3 setValue:v6 forKey:@"level"];

  [v3 setValue:@"ams" forKey:@"project"];
  v7 = MEMORY[0x1E696AEC0];
  osName = [(AMSMetricsEvent *)self osName];
  osVersion = [(AMSMetricsEvent *)self osVersion];
  v10 = [v7 stringWithFormat:@"%@@%@", osName, osVersion];
  [v3 setValue:v10 forKey:@"release"];

  v11 = MEMORY[0x1E696AD98];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v14 = [v11 numberWithInteger:v13];
  [v3 setValue:v14 forKey:@"timestamp"];

  [v3 setValue:@"xp_amp_ams_error_log" forKey:@"topic"];
  currentProcess = [(AMSMetricsLoggingEvent *)self currentProcess];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"extra.%@", @"current_process"];
  [v3 ams_setValue:currentProcess forKeyPath:v16];

  v17 = [(AMSMetricsLoggingEvent *)self url];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"request", @"url"];
  v160 = v3;
  [v3 ams_setValue:v17 forKeyPath:v18];

  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  jsVersions = [(AMSMetricsLoggingEvent *)self jsVersions];
  keyEnumerator = [jsVersions keyEnumerator];

  v21 = [keyEnumerator countByEnumeratingWithState:&v170 objects:v176 count:16];
  selfCopy = self;
  if (v21)
  {
    v22 = v21;
    v23 = *v171;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v171 != v23)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v25 = *(*(&v170 + 1) + 8 * i);
        eventDestinations = [(AMSMetricsLoggingEvent *)self eventDestinations];
        if ([eventDestinations containsObject:v25])
        {
        }

        else
        {
          eventDestinations2 = [(AMSMetricsLoggingEvent *)self eventDestinations];
          v28 = [eventDestinations2 count];

          self = selfCopy;
          if (v28)
          {
            continue;
          }
        }

        jsVersions2 = [(AMSMetricsLoggingEvent *)self jsVersions];
        v30 = [jsVersions2 objectForKeyedSubscript:v25];
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"modules", v25];
        [v160 ams_setValue:v30 forKeyPath:v31];

        self = selfCopy;
      }

      v22 = [keyEnumerator countByEnumeratingWithState:&v170 objects:v176 count:16];
    }

    while (v22);
  }

  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  eventDestinations3 = [(AMSMetricsLoggingEvent *)self eventDestinations];
  v33 = [eventDestinations3 countByEnumeratingWithState:&v166 objects:v175 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v167;
    v36 = &stru_1F071BA78;
    do
    {
      v37 = 0;
      v38 = v36;
      do
      {
        if (*v167 != v35)
        {
          objc_enumerationMutation(eventDestinations3);
        }

        v39 = *(*(&v166 + 1) + 8 * v37);
        v40 = MEMORY[0x1E696AEC0];
        if ([(__CFString *)v38 length])
        {
          v41 = @", ";
        }

        else
        {
          v41 = &stru_1F071BA78;
        }

        v36 = [v40 stringWithFormat:@"%@%@%@", v38, v41, v39];

        ++v37;
        v38 = v36;
      }

      while (v34 != v37);
      v34 = [eventDestinations3 countByEnumeratingWithState:&v166 objects:v175 count:16];
    }

    while (v34);

    self = selfCopy;
    if (!v36)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v36 = &stru_1F071BA78;
  }

  if (([(__CFString *)v36 isEqualToString:&stru_1F071BA78]& 1) == 0)
  {
LABEL_26:
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"destination"];
    [v160 ams_setValue:v36 forKeyPath:v42];
  }

  v150 = v36;
  jsVersions3 = [(AMSMetricsLoggingEvent *)self jsVersions];
  allValues = [jsVersions3 allValues];
  v45 = [allValues componentsJoinedByString:{@", "}];

  if (!v45 || ([v45 isEqualToString:&stru_1F071BA78] & 1) == 0)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"js_version"];
    [v160 ams_setValue:v45 forKeyPath:v46];
  }

  v149 = v45;
  clientBuildType = [(AMSMetricsLoggingEvent *)self clientBuildType];
  v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"build_type"];
  [v160 ams_setValue:clientBuildType forKeyPath:v48];

  clientApp = [(AMSMetricsLoggingEvent *)self clientApp];
  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"app_version"];
  [v160 ams_setValue:clientApp forKeyPath:v50];

  engagementEventType = [(AMSMetricsLoggingEvent *)self engagementEventType];
  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"engagement_event_type"];
  [v160 ams_setValue:engagementEventType forKeyPath:v52];

  v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSMetricsLoggingEvent eventInlineInterruption](self, "eventInlineInterruption")}];
  v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"event_inline_interruption"];
  [v160 ams_setValue:v53 forKeyPath:v54];

  v55 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorCode](self, "errorCode")}];
  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"code"];
  [v160 ams_setValue:v55 forKeyPath:v56];

  errorDomain = [(AMSMetricsLoggingEvent *)self errorDomain];
  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"domain"];
  [v160 ams_setValue:errorDomain forKeyPath:v58];

  v59 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoCryptoCode](self, "errorUserInfoCryptoCode")}];
  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"error_crypto_code"];
  [v160 ams_setValue:v59 forKeyPath:v60];

  v61 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoStatusCode](self, "errorUserInfoStatusCode")}];
  v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"status_code"];
  [v160 ams_setValue:v61 forKeyPath:v62];

  v63 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoServerErrorCode](self, "errorUserInfoServerErrorCode")}];
  v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"error_server_code"];
  [v160 ams_setValue:v63 forKeyPath:v64];

  eventPlacement = [(AMSMetricsLoggingEvent *)self eventPlacement];
  v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"event_placement"];
  [v160 ams_setValue:eventPlacement forKeyPath:v66];

  v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSMetricsLoggingEvent errorUserInfoEngagementPresented](self, "errorUserInfoEngagementPresented")}];
  v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"presented"];
  [v160 ams_setValue:v67 forKeyPath:v68];

  eventServiceType = [(AMSMetricsLoggingEvent *)self eventServiceType];
  v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"event_service_type"];
  [v160 ams_setValue:eventServiceType forKeyPath:v70];

  lastBreadcrumb = [(AMSMetricsLoggingEvent *)self lastBreadcrumb];
  v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"last_breadcrumb"];
  [v160 ams_setValue:lastBreadcrumb forKeyPath:v72];

  v73 = MEMORY[0x1E696AD98];
  [(AMSMetricsLoggingEvent *)self lastBreadcrumbDuration];
  v74 = [v73 numberWithDouble:?];
  v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"last_breadcrumb_duration"];
  [v160 ams_setValue:v74 forKeyPath:v75];

  osVersion2 = [(AMSMetricsEvent *)self osVersion];
  v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"osVersion"];
  [v160 ams_setValue:osVersion2 forKeyPath:v77];

  releaseVersion = [(AMSMetricsLoggingEvent *)selfCopy releaseVersion];
  v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"app_version"];
  [v160 ams_setValue:releaseVersion forKeyPath:v79];

  subsystem = [(AMSMetricsLoggingEvent *)selfCopy subsystem];
  v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"subsystem"];
  [v160 ams_setValue:subsystem forKeyPath:v81];

  releaseVersion2 = [(AMSMetricsLoggingEvent *)selfCopy releaseVersion];
  v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v154, @"app_version"];
  [v160 ams_setValue:releaseVersion2 forKeyPath:v83];

  clientApp2 = [(AMSMetricsLoggingEvent *)selfCopy clientApp];
  v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v154, @"app_identifier"];
  [v160 ams_setValue:clientApp2 forKeyPath:v85];

  clientBuildType2 = [(AMSMetricsLoggingEvent *)selfCopy clientBuildType];
  v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v154, @"build_type"];
  [v160 ams_setValue:clientBuildType2 forKeyPath:v87];

  osVersion3 = [(AMSMetricsEvent *)selfCopy osVersion];
  v89 = selfCopy;
  v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v152, @"osVersion"];
  [v160 ams_setValue:osVersion3 forKeyPath:v90];

  osBuildVersion = [(AMSMetricsEvent *)selfCopy osBuildVersion];
  v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v152, @"build"];
  [v160 ams_setValue:osBuildVersion forKeyPath:v92];

  osName2 = [(AMSMetricsEvent *)selfCopy osName];
  v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v152, @"name"];
  [v160 ams_setValue:osName2 forKeyPath:v94];

  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v96 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorCode](selfCopy, "errorCode")}];
  v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v156, @"ns_error", @"code"];
  [dictionary ams_setValue:v96 forKeyPath:v97];

  errorDomain2 = [(AMSMetricsLoggingEvent *)selfCopy errorDomain];
  v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v156, @"ns_error", @"domain"];
  [dictionary ams_setValue:errorDomain2 forKeyPath:v99];

  v100 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoCryptoCode](selfCopy, "errorUserInfoCryptoCode")}];
  v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"error_crypto_code"];
  [dictionary ams_setValue:v100 forKeyPath:v101];

  v102 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoServerErrorCode](selfCopy, "errorUserInfoServerErrorCode")}];
  v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"error_server_code"];
  [dictionary ams_setValue:v102 forKeyPath:v103];

  v104 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoStatusCode](selfCopy, "errorUserInfoStatusCode")}];
  v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"status_code"];
  [dictionary ams_setValue:v104 forKeyPath:v105];

  [dictionary setValue:MEMORY[0x1E695E118] forKey:@"handled"];
  category = [(AMSMetricsLoggingEvent *)selfCopy category];
  v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"mechanism", @"type"];
  [dictionary ams_setValue:category forKeyPath:v107];

  errorTitle = [(AMSMetricsLoggingEvent *)selfCopy errorTitle];
  [dictionary setValue:errorTitle forKey:@"type"];

  errorMessage = [(AMSMetricsLoggingEvent *)selfCopy errorMessage];
  if ([errorMessage length])
  {
    errorMessage2 = [(AMSMetricsLoggingEvent *)selfCopy errorMessage];
    [dictionary setValue:errorMessage2 forKey:@"value"];
    v111 = array;
  }

  else
  {
    errorMessage2 = [(AMSMetricsLoggingEvent *)selfCopy errorTitle];
    if ([errorMessage2 length])
    {
      [(AMSMetricsLoggingEvent *)selfCopy errorTitle];
    }

    else
    {
      [(AMSMetricsLoggingEvent *)selfCopy errorDomain];
    }
    v112 = ;
    v111 = array;
    [dictionary setValue:v112 forKey:@"value"];
  }

  v148 = dictionary;
  [v111 addObject:dictionary];
  underlyingErrorTitle = [(AMSMetricsLoggingEvent *)selfCopy underlyingErrorTitle];
  v114 = [underlyingErrorTitle length];

  if (v114)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v116 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent underlyingErrorCode](selfCopy, "underlyingErrorCode")}];
    v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v156, @"ns_error", @"code"];
    [dictionary2 ams_setValue:v116 forKeyPath:v117];

    errorDomain3 = [(AMSMetricsLoggingEvent *)selfCopy errorDomain];
    v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v156, @"ns_error", @"domain"];
    [dictionary2 ams_setValue:errorDomain3 forKeyPath:v119];

    v120 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent underlyingErrorUserInfoCryptoCode](selfCopy, "underlyingErrorUserInfoCryptoCode")}];
    v121 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"error_crypto_code"];
    [dictionary2 ams_setValue:v120 forKeyPath:v121];

    v122 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent underlyingErrorUserInfoServerErrorCode](selfCopy, "underlyingErrorUserInfoServerErrorCode")}];
    v123 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"error_server_code"];
    [dictionary2 ams_setValue:v122 forKeyPath:v123];

    [dictionary2 setValue:MEMORY[0x1E695E118] forKey:@"handled"];
    v124 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent underlyingErrorUserInfoStatusCode](selfCopy, "underlyingErrorUserInfoStatusCode")}];
    v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"status_code"];
    [dictionary2 ams_setValue:v124 forKeyPath:v125];

    underlyingErrorTitle2 = [(AMSMetricsLoggingEvent *)selfCopy underlyingErrorTitle];
    [dictionary2 setValue:underlyingErrorTitle2 forKey:@"type"];

    underlyingErrorMessage = [(AMSMetricsLoggingEvent *)selfCopy underlyingErrorMessage];
    [dictionary2 setValue:underlyingErrorMessage forKey:@"value"];

    v128 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSMetricsLoggingEvent underlyingErrorUserInfoEngagementPresented](selfCopy, "underlyingErrorUserInfoEngagementPresented")}];
    v89 = selfCopy;
    v111 = array;
    v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"presented"];
    [dictionary2 ams_setValue:v128 forKeyPath:v129];

    [array addObject:dictionary2];
  }

  [v160 ams_setValue:v111 forKeyPath:v153];
  array2 = [MEMORY[0x1E695DF70] array];
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  obj = [(AMSMetricsLoggingEvent *)v89 breadcrumbs];
  v130 = [obj countByEnumeratingWithState:&v162 objects:v174 count:16];
  if (v130)
  {
    v131 = v130;
    v132 = *v163;
    do
    {
      for (j = 0; j != v131; ++j)
      {
        if (*v163 != v132)
        {
          objc_enumerationMutation(obj);
        }

        v134 = *(*(&v162 + 1) + 8 * j);
        dictionary3 = [MEMORY[0x1E695DF90] dictionary];
        ams_serverFriendlyFormatter = [MEMORY[0x1E696AB78] ams_serverFriendlyFormatter];
        v137 = MEMORY[0x1E695DF00];
        [v134 doubleValue];
        v138 = [v137 dateWithTimeIntervalSince1970:?];
        v139 = [ams_serverFriendlyFormatter stringFromDate:v138];
        [dictionary3 setValue:v139 forKey:@"timestamp"];

        breadcrumbs = [(AMSMetricsLoggingEvent *)selfCopy breadcrumbs];
        v141 = [breadcrumbs objectForKeyedSubscript:v134];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          breadcrumbs2 = [(AMSMetricsLoggingEvent *)selfCopy breadcrumbs];
          v144 = [breadcrumbs2 objectForKeyedSubscript:v134];

          v145 = [v144 objectForKeyedSubscript:@"message"];
          [dictionary3 setValue:v145 forKey:@"message"];

          v146 = [v144 objectForKeyedSubscript:@"category"];
          [dictionary3 setValue:v146 forKey:@"category"];

          [array2 addObject:dictionary3];
        }
      }

      v131 = [obj countByEnumeratingWithState:&v162 objects:v174 count:16];
    }

    while (v131);
  }

  if ([array2 count])
  {
    [v160 ams_setValue:array2 forKeyPath:@"breadcrumbs"];
  }

  return v160;
}

- (int64_t)errorCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"errorCode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)errorUserInfoCryptoCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"errorUserInfoCryptoCode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)errorUserInfoEngagementPresented
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"errorUserInfoEngagementPresented"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)errorUserInfoServerErrorCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"errorUserInfoServerErrorCode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)errorUserInfoStatusCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"errorUserInfoStatusCode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (double)eventEndTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"eventEndTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (BOOL)eventInlineInterruption
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"eventInlineInterruption"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)eventStartTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"eventStartTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (double)lastBreadcrumbDuration
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"lastBreadcrumbDuration"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (int64_t)logLevel
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"logLevel"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)stringForLogLevel:(int64_t)level
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"debug", @"error", @"info", 0}];
  v5 = [v4 objectAtIndexedSubscript:level];

  return v5;
}

- (id)underlyingDictionaryOverride
{
  topic = [(AMSMetricsEvent *)self topic];

  if (topic == @"xp_amp_ams_error_log")
  {
    underlyingDictionaryForSentry = [(AMSMetricsLoggingEvent *)self underlyingDictionaryForSentry];
  }

  else
  {
    underlyingDictionaryForSentry = 0;
  }

  return underlyingDictionaryForSentry;
}

- (int64_t)underlyingErrorCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"underlyingErrorCode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)underlyingErrorUserInfoCryptoCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"underlyingErrorUserInfoCryptoCode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)underlyingErrorUserInfoEngagementPresented
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"underlyingErrorUserInfoEngagementPresented"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)underlyingErrorUserInfoServerErrorCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"underlyingErrorUserInfoServerErrorCode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)underlyingErrorUserInfoStatusCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"underlyingErrorUserInfoStatusCode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setBreadcrumbs:(id)breadcrumbs
{
  breadcrumbsCopy = breadcrumbs;
  allKeys = [breadcrumbsCopy allKeys];
  v5 = [allKeys sortedArrayUsingComparator:&__block_literal_global_100];

  if (v5 && [v5 count])
  {
    lastObject = [v5 lastObject];
    v7 = [breadcrumbsCopy objectForKeyedSubscript:lastObject];
    v8 = [v7 objectForKeyedSubscript:@"message"];
    [(AMSMetricsEvent *)self setProperty:v8 forBodyKey:@"lastBreadcrumb"];
  }

  else
  {
    [(AMSMetricsEvent *)self setProperty:0 forBodyKey:@"lastBreadcrumb"];
  }

  [(AMSMetricsEvent *)self setProperty:&unk_1F0779850 forBodyKey:@"lastBreadcrumbDuration"];
  if ([v5 count] >= 2)
  {
    lastObject2 = [v5 lastObject];
    [lastObject2 doubleValue];
    v11 = v10;

    v12 = [v5 objectAtIndex:{objc_msgSend(breadcrumbsCopy, "count") - 2}];
    [v12 doubleValue];
    v14 = v13;

    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11 - v14];
    [(AMSMetricsEvent *)self setProperty:v15 forBodyKey:@"lastBreadcrumbDuration"];
  }

  v16 = [breadcrumbsCopy copy];
  breadcrumbs = self->_breadcrumbs;
  self->_breadcrumbs = v16;
}

BOOL __41__AMSMetricsLoggingEvent_setBreadcrumbs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  return v6 > v8;
}

- (void)setErrorCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"errorCode"];
}

- (void)setErrorUserInfoCryptoCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"errorUserInfoCryptoCode"];
}

- (void)setErrorUserInfoEngagementPresented:(BOOL)presented
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:presented];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"errorUserInfoEngagementPresented"];
}

- (void)setErrorUserInfoServerErrorCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"errorUserInfoServerErrorCode"];
}

- (void)setErrorUserInfoStatusCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"errorUserInfoStatusCode"];
}

- (void)setEventDestinations:(id)destinations
{
  v4 = MEMORY[0x1E695DF70];
  destinationsCopy = destinations;
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__AMSMetricsLoggingEvent_setEventDestinations___block_invoke;
  v8[3] = &unk_1E73B80E8;
  v9 = v6;
  v7 = v6;
  [destinationsCopy enumerateObjectsUsingBlock:v8];

  [(AMSMetricsEvent *)self setProperty:v7 forBodyKey:@"eventDestinations"];
}

void __47__AMSMetricsLoggingEvent_setEventDestinations___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v6;

    v4 = *(a1 + 32);
    if (v3)
    {
      v5 = [v3 identifier];
      [v4 addObject:v5];

      goto LABEL_6;
    }
  }

  else
  {

    v4 = *(a1 + 32);
  }

  [v4 addObject:v6];
  v3 = 0;
LABEL_6:
}

- (void)setEventEndTime:(double)time
{
  v4 = [AMSMetrics serverTimeFromTimeInterval:time];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"eventEndTime"];
}

- (void)setEventInlineInterruption:(BOOL)interruption
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:interruption];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"eventInlineInterruption"];
}

- (void)setEventStartTime:(double)time
{
  v4 = [AMSMetrics serverTimeFromTimeInterval:time];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"eventStartTime"];
}

- (void)setJsVersions:(id)versions
{
  v22 = *MEMORY[0x1E69E9840];
  versionsCopy = versions;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = versionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = MEMORY[0x1E696AEC0];
        v12 = [v5 objectForKeyedSubscript:v10];
        v13 = [v11 stringWithFormat:@"%@: %@", v10, v12];
        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(AMSMetricsLoggingEvent *)self setJsVersionMap:v4];
  v14 = [v5 copy];
  jsVersions = self->_jsVersions;
  self->_jsVersions = v14;
}

- (void)setLogLevel:(int64_t)level
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:level];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"logLevel"];
}

- (void)setOriginatingURL:(id)l
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    v22 = lCopy;
    v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:lCopy];
    queryItems = [v5 queryItems];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = queryItems;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          name = [v12 name];
          v14 = [name isEqual:@"profile"];

          if (v14)
          {
            value = [v12 value];
            [(AMSMetricsLoggingEvent *)self setOriginatingURLParamBagProfile:value];
          }

          name2 = [v12 name];
          v17 = [name2 isEqual:@"profileVersion"];

          if (v17)
          {
            value2 = [v12 value];
            [(AMSMetricsLoggingEvent *)self setOriginatingURLParamBagProfileVersion:value2];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    lCopy = v22;
  }

  v19 = [MEMORY[0x1E695DFF8] URLWithString:lCopy];
  v20 = [(AMSMetricsLoggingEvent *)self cleanURL:v19];
  absoluteString = [v20 absoluteString];
  [(AMSMetricsEvent *)self setProperty:absoluteString forBodyKey:@"originatingURL"];
}

- (void)setUnderlyingErrorCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"underlyingErrorCode"];
}

- (void)setUnderlyingErrorUserInfoCryptoCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"underlyingErrorUserInfoCryptoCode"];
}

- (void)setUnderlyingErrorUserInfoEngagementPresented:(BOOL)presented
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:presented];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"underlyingErrorUserInfoEngagementPresented"];
}

- (void)setUnderlyingErrorUserInfoServerErrorCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"underlyingErrorUserInfoServerErrorCode"];
}

- (void)setUnderlyingErrorUserInfoStatusCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"underlyingErrorUserInfoStatusCode"];
}

- (void)setUrl:(id)url
{
  v33 = *MEMORY[0x1E69E9840];
  urlCopy = url;
  if (urlCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:urlCopy];
    queryItems = [v5 queryItems];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = queryItems;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          name = [v11 name];
          v13 = [name isEqual:@"profile"];

          if (v13)
          {
            value = [v11 value];
            [(AMSMetricsLoggingEvent *)self setUrlParamBagProfile:value];
          }

          name2 = [v11 name];
          v16 = [name2 isEqual:@"profileVersion"];

          if (v16)
          {
            value2 = [v11 value];
            [(AMSMetricsLoggingEvent *)self setUrlParamBagProfileVersion:value2];
          }

          name3 = [v11 name];
          v19 = [name3 isEqual:@"placement"];

          if (v19)
          {
            value3 = [v11 value];
            [(AMSMetricsLoggingEvent *)self setEventPlacement:value3];
          }

          name4 = [v11 name];
          v22 = [name4 isEqual:@"serviceType"];

          if (v22)
          {
            value4 = [v11 value];
            [(AMSMetricsLoggingEvent *)self setEventServiceType:value4];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }
  }

  v24 = [MEMORY[0x1E695DFF8] URLWithString:urlCopy];
  v25 = [(AMSMetricsLoggingEvent *)self cleanURL:v24];
  absoluteString = [v25 absoluteString];
  [(AMSMetricsEvent *)self setProperty:absoluteString forBodyKey:@"url"];
}

+ (id)_propertyValueClassesForKnownProperties
{
  v9[44] = *MEMORY[0x1E69E9840];
  v8[0] = @"category";
  v9[0] = objc_opt_class();
  v8[1] = @"clientApp";
  v9[1] = objc_opt_class();
  v8[2] = @"clientBuildType";
  v9[2] = objc_opt_class();
  v8[3] = @"currentProcess";
  v9[3] = objc_opt_class();
  v8[4] = @"engagementEventType";
  v9[4] = objc_opt_class();
  v8[5] = @"errorCode";
  v9[5] = objc_opt_class();
  v8[6] = @"errorDomain";
  v9[6] = objc_opt_class();
  v8[7] = @"errorMessage";
  v9[7] = objc_opt_class();
  v8[8] = @"errorTitle";
  v9[8] = objc_opt_class();
  v8[9] = @"errorUserInfoCryptoCode";
  v9[9] = objc_opt_class();
  v8[10] = @"errorUserInfoEngagementPresented";
  v9[10] = objc_opt_class();
  v8[11] = @"errorUserInfoServerErrorCode";
  v9[11] = objc_opt_class();
  v8[12] = @"errorUserInfoStatusCode";
  v9[12] = objc_opt_class();
  v8[13] = @"eventDestinations";
  v9[13] = objc_opt_class();
  v8[14] = @"eventEndTime";
  v9[14] = objc_opt_class();
  v8[15] = @"eventInlineInterruption";
  v9[15] = objc_opt_class();
  v8[16] = @"eventParamEventType";
  v9[16] = objc_opt_class();
  v8[17] = @"eventParamItemId";
  v9[17] = objc_opt_class();
  v8[18] = @"eventParamProductType";
  v9[18] = objc_opt_class();
  v8[19] = @"eventParamSource";
  v9[19] = objc_opt_class();
  v8[20] = @"eventParamSuccess";
  v9[20] = objc_opt_class();
  v8[21] = @"eventPlacement";
  v9[21] = objc_opt_class();
  v8[22] = @"eventServiceType";
  v9[22] = objc_opt_class();
  v8[23] = @"eventStartTime";
  v9[23] = objc_opt_class();
  v8[24] = @"jsVersionMap";
  v9[24] = objc_opt_class();
  v8[25] = @"lastBreadcrumb";
  v9[25] = objc_opt_class();
  v8[26] = @"lastBreadcrumbDuration";
  v9[26] = objc_opt_class();
  v8[27] = @"logLevel";
  v9[27] = objc_opt_class();
  v8[28] = @"originatingURL";
  v9[28] = objc_opt_class();
  v8[29] = @"originatingURLParamBagProfile";
  v9[29] = objc_opt_class();
  v8[30] = @"originatingURLParamBagProfileVersion";
  v9[30] = objc_opt_class();
  v8[31] = @"releaseVersion";
  v9[31] = objc_opt_class();
  v8[32] = @"subsystem";
  v9[32] = objc_opt_class();
  v8[33] = @"underlyingErrorCode";
  v9[33] = objc_opt_class();
  v8[34] = @"underlyingErrorDomain";
  v9[34] = objc_opt_class();
  v8[35] = @"underlyingErrorMessage";
  v9[35] = objc_opt_class();
  v8[36] = @"underlyingErrorTitle";
  v9[36] = objc_opt_class();
  v8[37] = @"underlyingErrorUserInfoCryptoCode";
  v9[37] = objc_opt_class();
  v8[38] = @"underlyingErrorUserInfoEngagementPresented";
  v9[38] = objc_opt_class();
  v8[39] = @"underlyingErrorUserInfoServerErrorCode";
  v9[39] = objc_opt_class();
  v8[40] = @"underlyingErrorUserInfoStatusCode";
  v9[40] = objc_opt_class();
  v8[41] = @"url";
  v9[41] = objc_opt_class();
  v8[42] = @"urlParamBagProfile";
  v9[42] = objc_opt_class();
  v8[43] = @"urlParamBagProfileVersion";
  v9[43] = objc_opt_class();
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:44];
  v4 = [v3 mutableCopy];

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___AMSMetricsLoggingEvent;
  v5 = objc_msgSendSuper2(&v7, sel__propertyValueClassesForKnownProperties);
  [v4 addEntriesFromDictionary:v5];

  return v4;
}

- (id)cleanURL:(id)l
{
  if (l)
  {
    v3 = MEMORY[0x1E696AF20];
    lCopy = l;
    v5 = [[v3 alloc] initWithURL:lCopy resolvingAgainstBaseURL:1];

    queryItems = [v5 queryItems];
    v7 = [queryItems ams_mapWithTransformIgnoresNil:&__block_literal_global_401];

    if ([v7 count])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    [v5 setQueryItems:v8];
    v9 = MEMORY[0x1E695DFF8];
    v10 = [v5 URL];
    v11 = AMSLogableURL(v10);
    v12 = [v9 URLWithString:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void *__35__AMSMetricsLoggingEvent_cleanURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 name];
  v4 = [v3 lowercaseString];
  if ([v4 isEqual:@"iadid"])
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = AMSMetricsLoggingEvent;
  v4 = [(AMSMetricsEvent *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 8, self->_jsVersions);
  objc_storeStrong(v4 + 6, self->_breadcrumbs);
  objc_storeStrong(v4 + 7, self->_error);
  return v4;
}

@end