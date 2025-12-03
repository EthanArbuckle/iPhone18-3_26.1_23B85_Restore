@interface AFMyriadMetrics
+ (id)sharedInstance;
- (BOOL)isMyriadMetricsMessage:(id)message;
- (double)getSessionId:(MyriadMetricsDataV1 *)id;
- (id)_getRequestType:(unint64_t)type;
- (id)getCDASessionId:(MyriadMetricsDataV1 *)id;
- (int)_getCDASchemaCDATriggerType:(unint64_t)type;
- (unsigned)getVersion:(MyriadMetricsDataV1 *)version;
- (void)_decisionMadeContext:(MyriadMetricsDataV1 *)context additionalContext:(id)additionalContext instrumentation:(id)instrumentation completion:(id)completion;
- (void)_submitMyriadMetrics:(MyriadMetricsDataV1 *)metrics additionalContext:(id)context toStream:(id)stream instrumentation:(id)instrumentation completion:(id)completion;
- (void)submitAccessoryMyriadMetricsToAnalyticsStream:(id)stream payload:(id)payload additionalContext:(id)context instrumentation:(id)instrumentation completion:(id)completion;
@end

@implementation AFMyriadMetrics

- (void)submitAccessoryMyriadMetricsToAnalyticsStream:(id)stream payload:(id)payload additionalContext:(id)context instrumentation:(id)instrumentation completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  payloadCopy = payload;
  contextCopy = context;
  instrumentationCopy = instrumentation;
  completionCopy = completion;
  if (streamCopy)
  {
    v17 = [[AFMyriadAccessoryMetricMessage alloc] initWithMetricData:payloadCopy];
    if (v17)
    {
      v18 = v17;
      v19 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        *v25 = 136315906;
        *&v25[4] = "[AFMyriadMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
        *&v25[12] = 1024;
        *&v25[14] = [v18 version];
        v26 = 2048;
        v27 = streamCopy;
        v28 = 2112;
        *&v29 = contextCopy;
        _os_log_impl(&dword_1912FE000, v20, OS_LOG_TYPE_INFO, "%s version = %u analytics stream = %p additional = [%@]", v25, 0x26u);
      }

      [v18 messageAsStruct];
      [(AFMyriadMetrics *)self _submitMyriadMetrics:v25 additionalContext:contextCopy toStream:streamCopy instrumentation:instrumentationCopy completion:completionCopy];
    }

    else
    {
      v22 = [AFError errorWithCode:2202];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v22, 0);
      }

      v23 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *v25 = 136315138;
        *&v25[4] = "[AFMyriadMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
        _os_log_error_impl(&dword_1912FE000, v23, OS_LOG_TYPE_ERROR, "%s Invalid analytics data received", v25, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v21 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315138;
      *&v25[4] = "[AFMyriadMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
      _os_log_error_impl(&dword_1912FE000, v21, OS_LOG_TYPE_ERROR, "%s Invalid analytics stream.", v25, 0xCu);
    }

    v18 = [AFError errorWithCode:2202];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v18, 0);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_decisionMadeContext:(MyriadMetricsDataV1 *)context additionalContext:(id)additionalContext instrumentation:(id)instrumentation completion:(id)completion
{
  v78[3] = *MEMORY[0x1E69E9840];
  additionalContextCopy = additionalContext;
  instrumentationCopy = instrumentation;
  completionCopy = completion;
  if (completionCopy)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (context->version)
    {
      selfCopy = self;
      v68 = completionCopy;
      v71 = instrumentationCopy;
      v72 = additionalContextCopy;
      electionParticipantCount = context->electionParticipantCount;
      electionParticipantCount = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", electionParticipantCount];
      v70 = v13;
      [v13 setObject:electionParticipantCount forKey:@"device_count"];

      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:electionParticipantCount];
      v17 = v16;
      if (electionParticipantCount >= 0x32)
      {
        v18 = 50;
      }

      else
      {
        v18 = electionParticipantCount;
      }

      v69 = v18;
      v73 = electionParticipantCount;
      v74 = v16;
      if (electionParticipantCount)
      {
        electionParticipantDeviceType = context->electionParticipantDeviceType;
        v20 = v18;
        do
        {
          v21 = objc_alloc(MEMORY[0x1E695DF90]);
          v77[0] = @"dc";
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*electionParticipantDeviceType];
          v78[0] = v22;
          v77[1] = @"pt";
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:electionParticipantDeviceType[50]];
          v78[1] = v23;
          v77[2] = @"goodness";
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(electionParticipantDeviceType - 50)];
          v78[2] = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:3];
          v26 = [v21 initWithDictionary:v25];

          v17 = v74;
          [v74 addObject:v26];

          ++electionParticipantDeviceType;
          --v20;
        }

        while (v20);
      }

      v13 = v70;
      [v70 setObject:v17 forKey:@"goodness_scores"];
      if (context->previousDecision)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      [v70 setObject:v27 forKey:@"previous_decision"];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", context->previousDecisionTime];
      [v70 setObject:v28 forKey:@"previous_decision_time"];

      if (context->decision)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      [v70 setObject:v29 forKey:@"decision"];
      if (v73)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", context->electionParticipantGoodnessScore[0]];
        [v70 setObject:v30 forKey:@"winner_goodness"];

        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", context->electionParticipantDeviceType[0]];
        [v70 setObject:v31 forKey:@"winner_device_class"];

        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", context->electionParticipantProductType[0]];
        [v70 setObject:v32 forKey:@"winner_product_type"];
      }

      if (context->homepodInvolved)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      [v70 setObject:v33 forKey:@"homepod_involved"];
      instrumentationCopy = v71;
      if (v73 && !context->decision)
      {
        if (context->electionParticipantGoodnessScore[0] == 255)
        {
          v34 = @"YES";
        }

        else
        {
          v34 = @"NO";
        }

        [v70 setObject:v34 forKey:@"winner_sent_suppresssion"];
      }

      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:context->version];
      [v70 setObject:v35 forKey:@"version"];

      if (context->lateToElection)
      {
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
        [v70 setObject:v36 forKey:@"late_for_device_arbitration"];

        v37 = [MEMORY[0x1E696AD98] numberWithDouble:context->advInterval];
        [v70 setObject:v37 forKey:@"device_arbitration_delay"];
      }

      if (additionalContextCopy)
      {
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", objc_msgSend(additionalContextCopy, "rawGoodnessScore")];
        [v70 setObject:v38 forKey:@"raw_goodness_score"];

        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", objc_msgSend(additionalContextCopy, "goodnessScore")];
        [v70 setObject:v39 forKey:@"my_goodness"];

        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(additionalContextCopy, "deviceClass")];
        [v70 setObject:v40 forKey:@"my_device_class"];

        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(additionalContextCopy, "deviceProductType")];
        [v70 setObject:v41 forKey:@"my_product_type"];
      }

      v42 = +[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (v71 && v42)
      {
        v43 = objc_alloc_init(MEMORY[0x1E69CE940]);
        v44 = context->electionParticipantDeviceType;
        [v43 setDeviceClass:context->electionParticipantDeviceType[0]];
        [v43 setProductType:context->electionParticipantProductType[0]];
        v66 = v43;
        [v43 setGoodnessScore:context->electionParticipantGoodnessScore[0]];
        v45 = objc_alloc_init(MEMORY[0x1E69CE940]);
        [v45 setDeviceClass:{objc_msgSend(additionalContextCopy, "deviceClass")}];
        [v45 setProductType:{objc_msgSend(additionalContextCopy, "deviceProductType")}];
        v65 = v45;
        [v45 setGoodnessScore:{objc_msgSend(additionalContextCopy, "goodnessScore")}];
        if (v73)
        {
          v46 = context->electionParticipantDeviceType;
          v47 = v69;
          do
          {
            v48 = objc_alloc(MEMORY[0x1E695DF90]);
            v75[0] = @"dc";
            v49 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*v46];
            v76[0] = v49;
            v75[1] = @"pt";
            v50 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v46[50]];
            v76[1] = v50;
            v75[2] = @"goodness";
            v51 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v46 - 50)];
            v76[2] = v51;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:3];
            v53 = [v48 initWithDictionary:v52];

            [v74 addObject:v53];
            ++v46;
            --v47;
          }

          while (v47);
        }

        v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v73];
        v55 = v69;
        if (v73)
        {
          do
          {
            v56 = objc_alloc_init(MEMORY[0x1E69CE940]);
            [v56 setDeviceClass:*v44];
            [v56 setProductType:v44[50]];
            [v56 setGoodnessScore:*(v44 - 50)];
            [v54 addObject:v56];

            ++v44;
            --v55;
          }

          while (v55);
        }

        if (context->decision)
        {
          v57 = 1;
        }

        else
        {
          v57 = 2;
        }

        if (context->previousDecision)
        {
          v58 = 1;
        }

        else
        {
          v58 = 2;
        }

        v59 = mach_absolute_time();
        instrumentationCopy = v71;
        if (_AFMachAbsoluteTimeRate_onceToken != -1)
        {
          dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
        }

        additionalContextCopy = v72;
        v13 = v70;
        v60 = (((*&_AFMachAbsoluteTimeRate_rate * v59) - context->previousDecisionTime) / 1000000.0);
        rawGoodnessScore = [v72 rawGoodnessScore];
        v62 = [(AFMyriadMetrics *)selfCopy getCDASessionId:context];
        LODWORD(v64) = rawGoodnessScore;
        [v71 logCDAElectionDecisionMade:11 withDecision:v57 withPreviousDecision:v58 timeSincePreviousDecision:v60 withWinningDevice:v66 withThisDevice:v65 withParticipants:v54 withRawScore:v64 withBoost:0 withCdaId:v62 currentRequestId:0 withTimestamp:mach_absolute_time()];

        v17 = v74;
      }

      completionCopy = v68;
    }

    completionCopy[2](completionCopy, v13);
  }

  v63 = *MEMORY[0x1E69E9840];
}

- (void)_submitMyriadMetrics:(MyriadMetricsDataV1 *)metrics additionalContext:(id)context toStream:(id)stream instrumentation:(id)instrumentation completion:(id)completion
{
  v111[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  streamCopy = stream;
  instrumentationCopy = instrumentation;
  completionCopy = completion;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__23453;
  v94 = __Block_byref_object_dispose__23454;
  v95 = 0;
  if (!metrics)
  {
    v16 = 2202;
    goto LABEL_13;
  }

  eventType = metrics->eventType;
  v16 = 2201;
  if (eventType <= 2)
  {
    if (!metrics->eventType)
    {
      requestType = metrics->requestType;
      state = metrics->state;
      v110[0] = @"state";
      state = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", state];
      v110[1] = @"trigger";
      v111[0] = state;
      v46 = [(AFMyriadMetrics *)self _getRequestType:requestType];
      v111[1] = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:2];
      v48 = [(AFMyriadMetrics *)self getVersion:metrics];
      [(AFMyriadMetrics *)self getSessionId:metrics];
      v49 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v47 forVersion:v48 sessionId:?];
      v50 = v91[5];
      v91[5] = v49;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [streamCopy logEventWithType:2011 context:v91[5]];
      }

      v51 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!instrumentationCopy)
      {
        LOBYTE(v51) = 1;
      }

      if ((v51 & 1) == 0)
      {
        v52 = [(AFMyriadMetrics *)self _getCDASchemaCDATriggerType:requestType];
        v53 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDADeviceStateActivityStartedOrChanged:(state + 1) withTrigger:v52 withCdaId:v53 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

    if (eventType == 1)
    {
      v70 = metrics->state;
      v108 = @"state";
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v70];
      v109 = v71;
      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      v73 = [(AFMyriadMetrics *)self getVersion:metrics];
      [(AFMyriadMetrics *)self getSessionId:metrics];
      v74 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v72 forVersion:v73 sessionId:?];
      v75 = v91[5];
      v91[5] = v74;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [streamCopy logEventWithType:2012 context:v91[5]];
      }

      v76 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!instrumentationCopy)
      {
        LOBYTE(v76) = 1;
      }

      if ((v76 & 1) == 0)
      {
        v77 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDADeviceStateActivityEnded:(v70 + 1) withCdaId:v77 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

    if (eventType == 2)
    {
      v29 = metrics->state;
      advDelay = metrics->advDelay;
      advInterval = metrics->advInterval;
      v106[0] = @"state";
      v83 = v29;
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v29];
      v107[0] = v32;
      v106[1] = @"adv-delay";
      v33 = [MEMORY[0x1E696AD98] numberWithDouble:advDelay];
      v107[1] = v33;
      v106[2] = @"adv-interval";
      v34 = [MEMORY[0x1E696AD98] numberWithDouble:advInterval];
      v107[2] = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:3];
      v36 = [(AFMyriadMetrics *)self getVersion:metrics];
      [(AFMyriadMetrics *)self getSessionId:metrics];
      v37 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v35 forVersion:v36 sessionId:?];
      v38 = v91[5];
      v91[5] = v37;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [streamCopy logEventWithType:2002 context:v91[5]];
      }

      v39 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!instrumentationCopy)
      {
        LOBYTE(v39) = 1;
      }

      if ((v39 & 1) == 0)
      {
        v40 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
        v41 = mach_absolute_time();
        *&v42 = advDelay;
        *&v43 = advInterval;
        [instrumentationCopy logCDAElectionAdvertisingStarting:(v83 + 1) withDelay:v40 withInterval:v41 withCdaId:v42 withTimestamp:v43];
      }

      goto LABEL_50;
    }

    goto LABEL_13;
  }

  if (metrics->eventType <= 4u)
  {
    if (eventType == 3)
    {
      v54 = metrics->state;
      v104 = @"state";
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v54];
      v105 = v55;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      v57 = [(AFMyriadMetrics *)self getVersion:metrics];
      [(AFMyriadMetrics *)self getSessionId:metrics];
      v58 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v56 forVersion:v57 sessionId:?];
      v59 = v91[5];
      v91[5] = v58;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [streamCopy logEventWithType:2003 context:v91[5]];
      }

      v60 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!instrumentationCopy)
      {
        LOBYTE(v60) = 1;
      }

      if ((v60 & 1) == 0)
      {
        v61 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDAElectionAdvertisingStarted:(v54 + 1) withCdaId:v61 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

    if (eventType == 4)
    {
      v17 = metrics->state;
      v102[0] = @"state";
      v82 = v17;
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v17];
      v102[1] = @"unixTime";
      v103[0] = v18;
      v19 = MEMORY[0x1E696AD98];
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v21 = [v19 numberWithDouble:?];
      v103[1] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
      v23 = [(AFMyriadMetrics *)self getVersion:metrics];
      [(AFMyriadMetrics *)self getSessionId:metrics];
      v24 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v22 forVersion:v23 sessionId:?];
      v25 = v91[5];
      v91[5] = v24;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [streamCopy logEventWithType:2010 context:v91[5]];
      }

      v26 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!instrumentationCopy)
      {
        LOBYTE(v26) = 1;
      }

      if ((v26 & 1) == 0)
      {
        v27 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDAElectionTimerEnded:(v82 + 1) withCdaId:v27 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

LABEL_13:
    v28 = [AFError errorWithCode:v16];
    goto LABEL_51;
  }

  if (eventType == 5)
  {
    v62 = metrics->state;
    v100 = @"state";
    v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v62];
    v101 = v63;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v65 = [(AFMyriadMetrics *)self getVersion:metrics];
    [(AFMyriadMetrics *)self getSessionId:metrics];
    v66 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v64 forVersion:v65 sessionId:?];
    v67 = v91[5];
    v91[5] = v66;

    if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      [streamCopy logEventWithType:2005 context:v91[5]];
    }

    v68 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
    if (!instrumentationCopy)
    {
      LOBYTE(v68) = 1;
    }

    if ((v68 & 1) == 0)
    {
      v69 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
      [instrumentationCopy logCDAElectionAdvertisingEnded:(v62 + 1) withCdaId:v69 withTimestamp:mach_absolute_time()];
    }

    goto LABEL_50;
  }

  if (eventType != 6)
  {
    goto LABEL_13;
  }

  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __94__AFMyriadMetrics__submitMyriadMetrics_additionalContext_toStream_instrumentation_completion___block_invoke;
  v86[3] = &unk_1E73458A8;
  v88 = &v90;
  metricsCopy = metrics;
  v86[4] = self;
  v87 = streamCopy;
  [(AFMyriadMetrics *)self _decisionMadeContext:metrics additionalContext:contextCopy instrumentation:instrumentationCopy completion:v86];

LABEL_50:
  v28 = 0;
LABEL_51:
  v78 = AFSiriLogContextMyriad;
  if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_DEBUG))
  {
    v81 = v91[5];
    *buf = 136315394;
    v97 = "[AFMyriadMetrics _submitMyriadMetrics:additionalContext:toStream:instrumentation:completion:]";
    v98 = 2112;
    v99 = v81;
    _os_log_debug_impl(&dword_1912FE000, v78, OS_LOG_TYPE_DEBUG, "%s Myriad endpoint metrics context: %@", buf, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (completionCopy)
  {
LABEL_53:
    v79 = [v91[5] copy];
    completionCopy[2](completionCopy, v28, v79);
  }

LABEL_54:

  _Block_object_dispose(&v90, 8);
  v80 = *MEMORY[0x1E69E9840];
}

uint64_t __94__AFMyriadMetrics__submitMyriadMetrics_additionalContext_toStream_instrumentation_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = a2;
  v6 = [v3 getVersion:v4];
  [*(a1 + 32) getSessionId:*(a1 + 56)];
  v7 = [v3 _createEndAnalyticContexFromIntermediateContext:v5 forVersion:v6 sessionId:?];

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  result = +[AFFeatureFlags isMyriadSelfMetricsEnabled];
  if ((result & 1) == 0)
  {
    v11 = *(a1 + 40);
    v12 = *(*(*(a1 + 48) + 8) + 40);

    return [v11 logEventWithType:2006 context:v12];
  }

  return result;
}

- (id)getCDASessionId:(MyriadMetricsDataV1 *)id
{
  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  v5 = v4;
  if (id)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"00000000-0000-0000-0000-%012u", id->sessionId];
    v7 = [v5 initWithUUIDString:v6];
  }

  else
  {
    v7 = [v4 initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  }

  return v7;
}

- (BOOL)isMyriadMetricsMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [messageCopy objectForKeyedSubscript:@"accessoryMetrics"];
    if (v4)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (double)getSessionId:(MyriadMetricsDataV1 *)id
{
  if (id)
  {
    return id->sessionId;
  }

  else
  {
    return 0.0;
  }
}

- (unsigned)getVersion:(MyriadMetricsDataV1 *)version
{
  if (version)
  {
    return version->version;
  }

  else
  {
    return 0;
  }
}

- (int)_getCDASchemaCDATriggerType:(unint64_t)type
{
  if (type - 2 > 6)
  {
    return 0;
  }

  else
  {
    return dword_1914CFE28[type - 2];
  }
}

- (id)_getRequestType:(unint64_t)type
{
  if (type - 2 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E73458C8[type - 2];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_23503 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_23503, &__block_literal_global_23504);
  }

  v3 = sharedInstance_metrics;

  return v3;
}

void __33__AFMyriadMetrics_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AFMyriadMetrics);
  v1 = sharedInstance_metrics;
  sharedInstance_metrics = v0;
}

@end