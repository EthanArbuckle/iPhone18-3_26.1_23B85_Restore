@interface AMSMetricsLoggingEvent
+ (id)_propertyValueClassesForKnownProperties;
+ (id)shouldSampleErrorsWithBag:(id)a3;
- (AMSMetricsLoggingEvent)initWithSubsystem:(id)a3 category:(id)a4 error:(id)a5;
- (BOOL)errorUserInfoEngagementPresented;
- (BOOL)eventInlineInterruption;
- (BOOL)underlyingErrorUserInfoEngagementPresented;
- (NSMutableDictionary)underlyingDictionaryForSentry;
- (double)eventEndTime;
- (double)eventStartTime;
- (double)lastBreadcrumbDuration;
- (id)cleanURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)getBuildType;
- (id)stringForLogLevel:(int64_t)a3;
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
- (void)setBreadcrumbs:(id)a3;
- (void)setErrorCode:(int64_t)a3;
- (void)setErrorUserInfoCryptoCode:(int64_t)a3;
- (void)setErrorUserInfoEngagementPresented:(BOOL)a3;
- (void)setErrorUserInfoServerErrorCode:(int64_t)a3;
- (void)setErrorUserInfoStatusCode:(int64_t)a3;
- (void)setEventDestinations:(id)a3;
- (void)setEventEndTime:(double)a3;
- (void)setEventInlineInterruption:(BOOL)a3;
- (void)setEventStartTime:(double)a3;
- (void)setJsVersions:(id)a3;
- (void)setLogLevel:(int64_t)a3;
- (void)setOriginatingURL:(id)a3;
- (void)setUnderlyingErrorCode:(int64_t)a3;
- (void)setUnderlyingErrorUserInfoCryptoCode:(int64_t)a3;
- (void)setUnderlyingErrorUserInfoEngagementPresented:(BOOL)a3;
- (void)setUnderlyingErrorUserInfoServerErrorCode:(int64_t)a3;
- (void)setUnderlyingErrorUserInfoStatusCode:(int64_t)a3;
- (void)setUrl:(id)a3;
@end

@implementation AMSMetricsLoggingEvent

- (AMSMetricsLoggingEvent)initWithSubsystem:(id)a3 category:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AMSMetricsLoggingEvent;
  v11 = [(AMSMetricsEvent *)&v14 initWithTopic:@"xp_amp_ams_log"];
  v12 = v11;
  if (v11)
  {
    [(AMSMetricsEvent *)v11 setSuppressEngagement:1];
    [(AMSMetricsLoggingEvent *)v12 setSubsystem:v8];
    [(AMSMetricsLoggingEvent *)v12 setCategory:v9];
    objc_storeStrong(&v12->_error, a5);
    [(AMSMetricsLoggingEvent *)v12 prepareEvent];
  }

  return v12;
}

- (void)prepareEvent
{
  [(AMSMetricsEvent *)self setAnonymous:1];
  [(AMSMetricsEvent *)self setCheckDiagnosticsAndUsageSetting:1];
  v3 = +[AMSProcessInfo currentProcess];
  v4 = [v3 bundleIdentifier];
  [(AMSMetricsLoggingEvent *)self setClientApp:v4];

  v5 = [(AMSMetricsLoggingEvent *)self getBuildType];
  [(AMSMetricsLoggingEvent *)self setClientBuildType:v5];

  v6 = +[AMSProcessInfo currentProcess];
  v7 = [v6 bundleIdentifier];
  [(AMSMetricsLoggingEvent *)self setCurrentProcess:v7];

  [(AMSMetricsEvent *)self setEventType:@"log"];
  [(AMSMetricsLoggingEvent *)self setLogLevel:1];
  v8 = [(AMSMetricsLoggingEvent *)self originatingURL];
  if (v8)
  {
    [(AMSMetricsLoggingEvent *)self setOriginatingURL:v8];
  }

  else
  {
    v9 = [(AMSMetricsLoggingEvent *)self error];
    v10 = [v9 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"AMSURL"];
    [(AMSMetricsLoggingEvent *)self setOriginatingURL:v11];
  }

  v12 = +[AMSProcessInfo currentProcess];
  v13 = [v12 clientVersion];
  [(AMSMetricsLoggingEvent *)self setReleaseVersion:v13];

  v14 = [(AMSMetricsLoggingEvent *)self error];
  -[AMSMetricsLoggingEvent setErrorCode:](self, "setErrorCode:", [v14 code]);

  v15 = [(AMSMetricsLoggingEvent *)self error];
  v16 = [v15 domain];
  [(AMSMetricsLoggingEvent *)self setErrorDomain:v16];

  v17 = [(AMSMetricsLoggingEvent *)self error];
  v18 = [v17 ams_title];
  [(AMSMetricsLoggingEvent *)self setErrorTitle:v18];

  v19 = [(AMSMetricsLoggingEvent *)self error];
  v20 = [v19 ams_message];
  [(AMSMetricsLoggingEvent *)self setErrorMessage:v20];

  v21 = [(AMSMetricsLoggingEvent *)self error];
  v22 = [v21 userInfo];
  v23 = [v22 objectForKeyedSubscript:@"AMSCryptoErrorCode"];
  -[AMSMetricsLoggingEvent setErrorUserInfoCryptoCode:](self, "setErrorUserInfoCryptoCode:", [v23 integerValue]);

  v24 = [(AMSMetricsLoggingEvent *)self error];
  v25 = [v24 userInfo];
  v26 = [v25 objectForKeyedSubscript:@"AMSEngagementPresented"];
  -[AMSMetricsLoggingEvent setErrorUserInfoEngagementPresented:](self, "setErrorUserInfoEngagementPresented:", [v26 BOOLValue]);

  v27 = [(AMSMetricsLoggingEvent *)self error];
  v28 = [v27 userInfo];
  v29 = [v28 objectForKeyedSubscript:@"AMSServerErrorCode"];
  -[AMSMetricsLoggingEvent setErrorUserInfoServerErrorCode:](self, "setErrorUserInfoServerErrorCode:", [v29 integerValue]);

  v30 = [(AMSMetricsLoggingEvent *)self error];
  v31 = [v30 userInfo];
  v32 = [v31 objectForKeyedSubscript:@"AMSStatusCode"];
  -[AMSMetricsLoggingEvent setErrorUserInfoStatusCode:](self, "setErrorUserInfoStatusCode:", [v32 integerValue]);

  v33 = [(AMSMetricsLoggingEvent *)self clientApp];
  if (([v33 isEqual:@"com.apple.Fitness"] & 1) == 0)
  {
    v34 = [(AMSMetricsLoggingEvent *)self clientApp];
    v35 = [v34 isEqual:@"com.apple.fitcored"];

    if (v35)
    {
      goto LABEL_8;
    }

    v36 = +[AMSDevice buildVersion];
    [(AMSMetricsEvent *)self setOsBuildVersion:v36];

    v33 = +[AMSDevice operatingSystem];
    [(AMSMetricsEvent *)self setOsName:v33];
  }

LABEL_8:
  v37 = [(AMSMetricsLoggingEvent *)self error];
  v38 = [v37 ams_underlyingError];
  -[AMSMetricsLoggingEvent setUnderlyingErrorCode:](self, "setUnderlyingErrorCode:", [v38 code]);

  v39 = [(AMSMetricsLoggingEvent *)self error];
  v40 = [v39 ams_underlyingError];
  v41 = [v40 domain];
  [(AMSMetricsLoggingEvent *)self setUnderlyingErrorDomain:v41];

  v42 = [(AMSMetricsLoggingEvent *)self error];
  v43 = [v42 ams_underlyingError];
  v44 = [v43 ams_message];
  [(AMSMetricsLoggingEvent *)self setUnderlyingErrorMessage:v44];

  v45 = [(AMSMetricsLoggingEvent *)self error];
  v46 = [v45 ams_underlyingError];
  v47 = [v46 ams_title];
  [(AMSMetricsLoggingEvent *)self setUnderlyingErrorTitle:v47];

  v48 = [(AMSMetricsLoggingEvent *)self error];
  v49 = [v48 ams_underlyingError];
  v50 = [v49 userInfo];
  v51 = [v50 objectForKeyedSubscript:@"AMSCryptoErrorCode"];
  -[AMSMetricsLoggingEvent setUnderlyingErrorUserInfoCryptoCode:](self, "setUnderlyingErrorUserInfoCryptoCode:", [v51 integerValue]);

  v52 = [(AMSMetricsLoggingEvent *)self error];
  v53 = [v52 ams_underlyingError];
  v54 = [v53 userInfo];
  v55 = [v54 objectForKeyedSubscript:@"AMSEngagementPresented"];
  -[AMSMetricsLoggingEvent setUnderlyingErrorUserInfoEngagementPresented:](self, "setUnderlyingErrorUserInfoEngagementPresented:", [v55 BOOLValue]);

  v56 = [(AMSMetricsLoggingEvent *)self error];
  v57 = [v56 ams_underlyingError];
  v58 = [v57 userInfo];
  v59 = [v58 objectForKeyedSubscript:@"AMSServerErrorCode"];
  -[AMSMetricsLoggingEvent setUnderlyingErrorUserInfoServerErrorCode:](self, "setUnderlyingErrorUserInfoServerErrorCode:", [v59 integerValue]);

  v63 = [(AMSMetricsLoggingEvent *)self error];
  v60 = [v63 ams_underlyingError];
  v61 = [v60 userInfo];
  v62 = [v61 objectForKeyedSubscript:@"AMSStatusCode"];
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

+ (id)shouldSampleErrorsWithBag:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 doubleForKey:@"amsmetrics-logging-sampling"];
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

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"amsmetrics-logging-sampling";
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "Bag not provided for %@", &buf, 0xCu);
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
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  [v3 setValue:v5 forKey:@"event_id"];

  v6 = [(AMSMetricsLoggingEvent *)self stringForLogLevel:[(AMSMetricsLoggingEvent *)self logLevel]];
  [v3 setValue:v6 forKey:@"level"];

  [v3 setValue:@"ams" forKey:@"project"];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(AMSMetricsEvent *)self osName];
  v9 = [(AMSMetricsEvent *)self osVersion];
  v10 = [v7 stringWithFormat:@"%@@%@", v8, v9];
  [v3 setValue:v10 forKey:@"release"];

  v11 = MEMORY[0x1E696AD98];
  v12 = [MEMORY[0x1E695DF00] date];
  [v12 timeIntervalSince1970];
  v14 = [v11 numberWithInteger:v13];
  [v3 setValue:v14 forKey:@"timestamp"];

  [v3 setValue:@"xp_amp_ams_error_log" forKey:@"topic"];
  v15 = [(AMSMetricsLoggingEvent *)self currentProcess];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"extra.%@", @"current_process"];
  [v3 ams_setValue:v15 forKeyPath:v16];

  v17 = [(AMSMetricsLoggingEvent *)self url];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"request", @"url"];
  v160 = v3;
  [v3 ams_setValue:v17 forKeyPath:v18];

  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v19 = [(AMSMetricsLoggingEvent *)self jsVersions];
  v20 = [v19 keyEnumerator];

  v21 = [v20 countByEnumeratingWithState:&v170 objects:v176 count:16];
  v161 = self;
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
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v170 + 1) + 8 * i);
        v26 = [(AMSMetricsLoggingEvent *)self eventDestinations];
        if ([v26 containsObject:v25])
        {
        }

        else
        {
          v27 = [(AMSMetricsLoggingEvent *)self eventDestinations];
          v28 = [v27 count];

          self = v161;
          if (v28)
          {
            continue;
          }
        }

        v29 = [(AMSMetricsLoggingEvent *)self jsVersions];
        v30 = [v29 objectForKeyedSubscript:v25];
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"modules", v25];
        [v160 ams_setValue:v30 forKeyPath:v31];

        self = v161;
      }

      v22 = [v20 countByEnumeratingWithState:&v170 objects:v176 count:16];
    }

    while (v22);
  }

  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v32 = [(AMSMetricsLoggingEvent *)self eventDestinations];
  v33 = [v32 countByEnumeratingWithState:&v166 objects:v175 count:16];
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
          objc_enumerationMutation(v32);
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
      v34 = [v32 countByEnumeratingWithState:&v166 objects:v175 count:16];
    }

    while (v34);

    self = v161;
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
  v43 = [(AMSMetricsLoggingEvent *)self jsVersions];
  v44 = [v43 allValues];
  v45 = [v44 componentsJoinedByString:{@", "}];

  if (!v45 || ([v45 isEqualToString:&stru_1F071BA78] & 1) == 0)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"js_version"];
    [v160 ams_setValue:v45 forKeyPath:v46];
  }

  v149 = v45;
  v47 = [(AMSMetricsLoggingEvent *)self clientBuildType];
  v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"build_type"];
  [v160 ams_setValue:v47 forKeyPath:v48];

  v49 = [(AMSMetricsLoggingEvent *)self clientApp];
  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"app_version"];
  [v160 ams_setValue:v49 forKeyPath:v50];

  v51 = [(AMSMetricsLoggingEvent *)self engagementEventType];
  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"engagement_event_type"];
  [v160 ams_setValue:v51 forKeyPath:v52];

  v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSMetricsLoggingEvent eventInlineInterruption](self, "eventInlineInterruption")}];
  v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"event_inline_interruption"];
  [v160 ams_setValue:v53 forKeyPath:v54];

  v55 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorCode](self, "errorCode")}];
  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"code"];
  [v160 ams_setValue:v55 forKeyPath:v56];

  v57 = [(AMSMetricsLoggingEvent *)self errorDomain];
  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"domain"];
  [v160 ams_setValue:v57 forKeyPath:v58];

  v59 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoCryptoCode](self, "errorUserInfoCryptoCode")}];
  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"error_crypto_code"];
  [v160 ams_setValue:v59 forKeyPath:v60];

  v61 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoStatusCode](self, "errorUserInfoStatusCode")}];
  v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"status_code"];
  [v160 ams_setValue:v61 forKeyPath:v62];

  v63 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoServerErrorCode](self, "errorUserInfoServerErrorCode")}];
  v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"error_server_code"];
  [v160 ams_setValue:v63 forKeyPath:v64];

  v65 = [(AMSMetricsLoggingEvent *)self eventPlacement];
  v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"event_placement"];
  [v160 ams_setValue:v65 forKeyPath:v66];

  v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSMetricsLoggingEvent errorUserInfoEngagementPresented](self, "errorUserInfoEngagementPresented")}];
  v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"presented"];
  [v160 ams_setValue:v67 forKeyPath:v68];

  v69 = [(AMSMetricsLoggingEvent *)self eventServiceType];
  v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"event_service_type"];
  [v160 ams_setValue:v69 forKeyPath:v70];

  v71 = [(AMSMetricsLoggingEvent *)self lastBreadcrumb];
  v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"last_breadcrumb"];
  [v160 ams_setValue:v71 forKeyPath:v72];

  v73 = MEMORY[0x1E696AD98];
  [(AMSMetricsLoggingEvent *)self lastBreadcrumbDuration];
  v74 = [v73 numberWithDouble:?];
  v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"last_breadcrumb_duration"];
  [v160 ams_setValue:v74 forKeyPath:v75];

  v76 = [(AMSMetricsEvent *)self osVersion];
  v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"osVersion"];
  [v160 ams_setValue:v76 forKeyPath:v77];

  v78 = [(AMSMetricsLoggingEvent *)v161 releaseVersion];
  v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"app_version"];
  [v160 ams_setValue:v78 forKeyPath:v79];

  v80 = [(AMSMetricsLoggingEvent *)v161 subsystem];
  v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"tags", @"subsystem"];
  [v160 ams_setValue:v80 forKeyPath:v81];

  v82 = [(AMSMetricsLoggingEvent *)v161 releaseVersion];
  v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v154, @"app_version"];
  [v160 ams_setValue:v82 forKeyPath:v83];

  v84 = [(AMSMetricsLoggingEvent *)v161 clientApp];
  v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v154, @"app_identifier"];
  [v160 ams_setValue:v84 forKeyPath:v85];

  v86 = [(AMSMetricsLoggingEvent *)v161 clientBuildType];
  v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v154, @"build_type"];
  [v160 ams_setValue:v86 forKeyPath:v87];

  v88 = [(AMSMetricsEvent *)v161 osVersion];
  v89 = v161;
  v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v152, @"osVersion"];
  [v160 ams_setValue:v88 forKeyPath:v90];

  v91 = [(AMSMetricsEvent *)v161 osBuildVersion];
  v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v152, @"build"];
  [v160 ams_setValue:v91 forKeyPath:v92];

  v93 = [(AMSMetricsEvent *)v161 osName];
  v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v152, @"name"];
  [v160 ams_setValue:v93 forKeyPath:v94];

  v155 = [MEMORY[0x1E695DF70] array];
  v95 = [MEMORY[0x1E695DF90] dictionary];
  v96 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorCode](v161, "errorCode")}];
  v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v156, @"ns_error", @"code"];
  [v95 ams_setValue:v96 forKeyPath:v97];

  v98 = [(AMSMetricsLoggingEvent *)v161 errorDomain];
  v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v156, @"ns_error", @"domain"];
  [v95 ams_setValue:v98 forKeyPath:v99];

  v100 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoCryptoCode](v161, "errorUserInfoCryptoCode")}];
  v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"error_crypto_code"];
  [v95 ams_setValue:v100 forKeyPath:v101];

  v102 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoServerErrorCode](v161, "errorUserInfoServerErrorCode")}];
  v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"error_server_code"];
  [v95 ams_setValue:v102 forKeyPath:v103];

  v104 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent errorUserInfoStatusCode](v161, "errorUserInfoStatusCode")}];
  v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"status_code"];
  [v95 ams_setValue:v104 forKeyPath:v105];

  [v95 setValue:MEMORY[0x1E695E118] forKey:@"handled"];
  v106 = [(AMSMetricsLoggingEvent *)v161 category];
  v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"mechanism", @"type"];
  [v95 ams_setValue:v106 forKeyPath:v107];

  v108 = [(AMSMetricsLoggingEvent *)v161 errorTitle];
  [v95 setValue:v108 forKey:@"type"];

  v109 = [(AMSMetricsLoggingEvent *)v161 errorMessage];
  if ([v109 length])
  {
    v110 = [(AMSMetricsLoggingEvent *)v161 errorMessage];
    [v95 setValue:v110 forKey:@"value"];
    v111 = v155;
  }

  else
  {
    v110 = [(AMSMetricsLoggingEvent *)v161 errorTitle];
    if ([v110 length])
    {
      [(AMSMetricsLoggingEvent *)v161 errorTitle];
    }

    else
    {
      [(AMSMetricsLoggingEvent *)v161 errorDomain];
    }
    v112 = ;
    v111 = v155;
    [v95 setValue:v112 forKey:@"value"];
  }

  v148 = v95;
  [v111 addObject:v95];
  v113 = [(AMSMetricsLoggingEvent *)v161 underlyingErrorTitle];
  v114 = [v113 length];

  if (v114)
  {
    v115 = [MEMORY[0x1E695DF90] dictionary];
    v116 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent underlyingErrorCode](v161, "underlyingErrorCode")}];
    v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v156, @"ns_error", @"code"];
    [v115 ams_setValue:v116 forKeyPath:v117];

    v118 = [(AMSMetricsLoggingEvent *)v161 errorDomain];
    v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v156, @"ns_error", @"domain"];
    [v115 ams_setValue:v118 forKeyPath:v119];

    v120 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent underlyingErrorUserInfoCryptoCode](v161, "underlyingErrorUserInfoCryptoCode")}];
    v121 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"error_crypto_code"];
    [v115 ams_setValue:v120 forKeyPath:v121];

    v122 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent underlyingErrorUserInfoServerErrorCode](v161, "underlyingErrorUserInfoServerErrorCode")}];
    v123 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"error_server_code"];
    [v115 ams_setValue:v122 forKeyPath:v123];

    [v115 setValue:MEMORY[0x1E695E118] forKey:@"handled"];
    v124 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSMetricsLoggingEvent underlyingErrorUserInfoStatusCode](v161, "underlyingErrorUserInfoStatusCode")}];
    v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"status_code"];
    [v115 ams_setValue:v124 forKeyPath:v125];

    v126 = [(AMSMetricsLoggingEvent *)v161 underlyingErrorTitle];
    [v115 setValue:v126 forKey:@"type"];

    v127 = [(AMSMetricsLoggingEvent *)v161 underlyingErrorMessage];
    [v115 setValue:v127 forKey:@"value"];

    v128 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSMetricsLoggingEvent underlyingErrorUserInfoEngagementPresented](v161, "underlyingErrorUserInfoEngagementPresented")}];
    v89 = v161;
    v111 = v155;
    v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v157, @"presented"];
    [v115 ams_setValue:v128 forKeyPath:v129];

    [v155 addObject:v115];
  }

  [v160 ams_setValue:v111 forKeyPath:v153];
  v158 = [MEMORY[0x1E695DF70] array];
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
        v135 = [MEMORY[0x1E695DF90] dictionary];
        v136 = [MEMORY[0x1E696AB78] ams_serverFriendlyFormatter];
        v137 = MEMORY[0x1E695DF00];
        [v134 doubleValue];
        v138 = [v137 dateWithTimeIntervalSince1970:?];
        v139 = [v136 stringFromDate:v138];
        [v135 setValue:v139 forKey:@"timestamp"];

        v140 = [(AMSMetricsLoggingEvent *)v161 breadcrumbs];
        v141 = [v140 objectForKeyedSubscript:v134];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v143 = [(AMSMetricsLoggingEvent *)v161 breadcrumbs];
          v144 = [v143 objectForKeyedSubscript:v134];

          v145 = [v144 objectForKeyedSubscript:@"message"];
          [v135 setValue:v145 forKey:@"message"];

          v146 = [v144 objectForKeyedSubscript:@"category"];
          [v135 setValue:v146 forKey:@"category"];

          [v158 addObject:v135];
        }
      }

      v131 = [obj countByEnumeratingWithState:&v162 objects:v174 count:16];
    }

    while (v131);
  }

  if ([v158 count])
  {
    [v160 ams_setValue:v158 forKeyPath:@"breadcrumbs"];
  }

  return v160;
}

- (int64_t)errorCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"errorCode"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)errorUserInfoCryptoCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"errorUserInfoCryptoCode"];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)errorUserInfoEngagementPresented
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"errorUserInfoEngagementPresented"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)errorUserInfoServerErrorCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"errorUserInfoServerErrorCode"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)errorUserInfoStatusCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"errorUserInfoStatusCode"];
  v3 = [v2 integerValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (id)stringForLogLevel:(int64_t)a3
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"debug", @"error", @"info", 0}];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)underlyingDictionaryOverride
{
  v3 = [(AMSMetricsEvent *)self topic];

  if (v3 == @"xp_amp_ams_error_log")
  {
    v4 = [(AMSMetricsLoggingEvent *)self underlyingDictionaryForSentry];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)underlyingErrorCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"underlyingErrorCode"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)underlyingErrorUserInfoCryptoCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"underlyingErrorUserInfoCryptoCode"];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)underlyingErrorUserInfoEngagementPresented
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"underlyingErrorUserInfoEngagementPresented"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)underlyingErrorUserInfoServerErrorCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"underlyingErrorUserInfoServerErrorCode"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)underlyingErrorUserInfoStatusCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"underlyingErrorUserInfoStatusCode"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setBreadcrumbs:(id)a3
{
  v18 = a3;
  v4 = [v18 allKeys];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_100];

  if (v5 && [v5 count])
  {
    v6 = [v5 lastObject];
    v7 = [v18 objectForKeyedSubscript:v6];
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
    v9 = [v5 lastObject];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v5 objectAtIndex:{objc_msgSend(v18, "count") - 2}];
    [v12 doubleValue];
    v14 = v13;

    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11 - v14];
    [(AMSMetricsEvent *)self setProperty:v15 forBodyKey:@"lastBreadcrumbDuration"];
  }

  v16 = [v18 copy];
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

- (void)setErrorCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"errorCode"];
}

- (void)setErrorUserInfoCryptoCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"errorUserInfoCryptoCode"];
}

- (void)setErrorUserInfoEngagementPresented:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"errorUserInfoEngagementPresented"];
}

- (void)setErrorUserInfoServerErrorCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"errorUserInfoServerErrorCode"];
}

- (void)setErrorUserInfoStatusCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"errorUserInfoStatusCode"];
}

- (void)setEventDestinations:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__AMSMetricsLoggingEvent_setEventDestinations___block_invoke;
  v8[3] = &unk_1E73B80E8;
  v9 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

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

- (void)setEventEndTime:(double)a3
{
  v4 = [AMSMetrics serverTimeFromTimeInterval:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"eventEndTime"];
}

- (void)setEventInlineInterruption:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"eventInlineInterruption"];
}

- (void)setEventStartTime:(double)a3
{
  v4 = [AMSMetrics serverTimeFromTimeInterval:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"eventStartTime"];
}

- (void)setJsVersions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
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

- (void)setLogLevel:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"logLevel"];
}

- (void)setOriginatingURL:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v22 = v4;
    v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v4];
    v6 = [v5 queryItems];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v6;
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
          v13 = [v12 name];
          v14 = [v13 isEqual:@"profile"];

          if (v14)
          {
            v15 = [v12 value];
            [(AMSMetricsLoggingEvent *)self setOriginatingURLParamBagProfile:v15];
          }

          v16 = [v12 name];
          v17 = [v16 isEqual:@"profileVersion"];

          if (v17)
          {
            v18 = [v12 value];
            [(AMSMetricsLoggingEvent *)self setOriginatingURLParamBagProfileVersion:v18];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v4 = v22;
  }

  v19 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  v20 = [(AMSMetricsLoggingEvent *)self cleanURL:v19];
  v21 = [v20 absoluteString];
  [(AMSMetricsEvent *)self setProperty:v21 forBodyKey:@"originatingURL"];
}

- (void)setUnderlyingErrorCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"underlyingErrorCode"];
}

- (void)setUnderlyingErrorUserInfoCryptoCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"underlyingErrorUserInfoCryptoCode"];
}

- (void)setUnderlyingErrorUserInfoEngagementPresented:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"underlyingErrorUserInfoEngagementPresented"];
}

- (void)setUnderlyingErrorUserInfoServerErrorCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"underlyingErrorUserInfoServerErrorCode"];
}

- (void)setUnderlyingErrorUserInfoStatusCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"underlyingErrorUserInfoStatusCode"];
}

- (void)setUrl:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v4];
    v6 = [v5 queryItems];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v6;
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
          v12 = [v11 name];
          v13 = [v12 isEqual:@"profile"];

          if (v13)
          {
            v14 = [v11 value];
            [(AMSMetricsLoggingEvent *)self setUrlParamBagProfile:v14];
          }

          v15 = [v11 name];
          v16 = [v15 isEqual:@"profileVersion"];

          if (v16)
          {
            v17 = [v11 value];
            [(AMSMetricsLoggingEvent *)self setUrlParamBagProfileVersion:v17];
          }

          v18 = [v11 name];
          v19 = [v18 isEqual:@"placement"];

          if (v19)
          {
            v20 = [v11 value];
            [(AMSMetricsLoggingEvent *)self setEventPlacement:v20];
          }

          v21 = [v11 name];
          v22 = [v21 isEqual:@"serviceType"];

          if (v22)
          {
            v23 = [v11 value];
            [(AMSMetricsLoggingEvent *)self setEventServiceType:v23];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }
  }

  v24 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  v25 = [(AMSMetricsLoggingEvent *)self cleanURL:v24];
  v26 = [v25 absoluteString];
  [(AMSMetricsEvent *)self setProperty:v26 forBodyKey:@"url"];
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

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___AMSMetricsLoggingEvent;
  v5 = objc_msgSendSuper2(&v7, sel__propertyValueClassesForKnownProperties);
  [v4 addEntriesFromDictionary:v5];

  return v4;
}

- (id)cleanURL:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696AF20];
    v4 = a3;
    v5 = [[v3 alloc] initWithURL:v4 resolvingAgainstBaseURL:1];

    v6 = [v5 queryItems];
    v7 = [v6 ams_mapWithTransformIgnoresNil:&__block_literal_global_401];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = AMSMetricsLoggingEvent;
  v4 = [(AMSMetricsEvent *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 8, self->_jsVersions);
  objc_storeStrong(v4 + 6, self->_breadcrumbs);
  objc_storeStrong(v4 + 7, self->_error);
  return v4;
}

@end