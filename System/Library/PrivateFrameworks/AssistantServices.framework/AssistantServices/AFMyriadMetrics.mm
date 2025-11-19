@interface AFMyriadMetrics
+ (id)sharedInstance;
- (BOOL)isMyriadMetricsMessage:(id)a3;
- (double)getSessionId:(MyriadMetricsDataV1 *)a3;
- (id)_getRequestType:(unint64_t)a3;
- (id)getCDASessionId:(MyriadMetricsDataV1 *)a3;
- (int)_getCDASchemaCDATriggerType:(unint64_t)a3;
- (unsigned)getVersion:(MyriadMetricsDataV1 *)a3;
- (void)_decisionMadeContext:(MyriadMetricsDataV1 *)a3 additionalContext:(id)a4 instrumentation:(id)a5 completion:(id)a6;
- (void)_submitMyriadMetrics:(MyriadMetricsDataV1 *)a3 additionalContext:(id)a4 toStream:(id)a5 instrumentation:(id)a6 completion:(id)a7;
- (void)submitAccessoryMyriadMetricsToAnalyticsStream:(id)a3 payload:(id)a4 additionalContext:(id)a5 instrumentation:(id)a6 completion:(id)a7;
@end

@implementation AFMyriadMetrics

- (void)submitAccessoryMyriadMetricsToAnalyticsStream:(id)a3 payload:(id)a4 additionalContext:(id)a5 instrumentation:(id)a6 completion:(id)a7
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v17 = [[AFMyriadAccessoryMetricMessage alloc] initWithMetricData:v13];
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
        v27 = v12;
        v28 = 2112;
        *&v29 = v14;
        _os_log_impl(&dword_1912FE000, v20, OS_LOG_TYPE_INFO, "%s version = %u analytics stream = %p additional = [%@]", v25, 0x26u);
      }

      [v18 messageAsStruct];
      [(AFMyriadMetrics *)self _submitMyriadMetrics:v25 additionalContext:v14 toStream:v12 instrumentation:v15 completion:v16];
    }

    else
    {
      v22 = [AFError errorWithCode:2202];
      if (v16)
      {
        v16[2](v16, v22, 0);
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
    if (v16)
    {
      v16[2](v16, v18, 0);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_decisionMadeContext:(MyriadMetricsDataV1 *)a3 additionalContext:(id)a4 instrumentation:(id)a5 completion:(id)a6
{
  v78[3] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (a3->version)
    {
      v67 = self;
      v68 = v12;
      v71 = v11;
      v72 = v10;
      electionParticipantCount = a3->electionParticipantCount;
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", electionParticipantCount];
      v70 = v13;
      [v13 setObject:v15 forKey:@"device_count"];

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
        electionParticipantDeviceType = a3->electionParticipantDeviceType;
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
      if (a3->previousDecision)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      [v70 setObject:v27 forKey:@"previous_decision"];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a3->previousDecisionTime];
      [v70 setObject:v28 forKey:@"previous_decision_time"];

      if (a3->decision)
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
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", a3->electionParticipantGoodnessScore[0]];
        [v70 setObject:v30 forKey:@"winner_goodness"];

        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a3->electionParticipantDeviceType[0]];
        [v70 setObject:v31 forKey:@"winner_device_class"];

        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a3->electionParticipantProductType[0]];
        [v70 setObject:v32 forKey:@"winner_product_type"];
      }

      if (a3->homepodInvolved)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      [v70 setObject:v33 forKey:@"homepod_involved"];
      v11 = v71;
      if (v73 && !a3->decision)
      {
        if (a3->electionParticipantGoodnessScore[0] == 255)
        {
          v34 = @"YES";
        }

        else
        {
          v34 = @"NO";
        }

        [v70 setObject:v34 forKey:@"winner_sent_suppresssion"];
      }

      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a3->version];
      [v70 setObject:v35 forKey:@"version"];

      if (a3->lateToElection)
      {
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
        [v70 setObject:v36 forKey:@"late_for_device_arbitration"];

        v37 = [MEMORY[0x1E696AD98] numberWithDouble:a3->advInterval];
        [v70 setObject:v37 forKey:@"device_arbitration_delay"];
      }

      if (v10)
      {
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", objc_msgSend(v10, "rawGoodnessScore")];
        [v70 setObject:v38 forKey:@"raw_goodness_score"];

        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", objc_msgSend(v10, "goodnessScore")];
        [v70 setObject:v39 forKey:@"my_goodness"];

        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v10, "deviceClass")];
        [v70 setObject:v40 forKey:@"my_device_class"];

        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v10, "deviceProductType")];
        [v70 setObject:v41 forKey:@"my_product_type"];
      }

      v42 = +[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (v71 && v42)
      {
        v43 = objc_alloc_init(MEMORY[0x1E69CE940]);
        v44 = a3->electionParticipantDeviceType;
        [v43 setDeviceClass:a3->electionParticipantDeviceType[0]];
        [v43 setProductType:a3->electionParticipantProductType[0]];
        v66 = v43;
        [v43 setGoodnessScore:a3->electionParticipantGoodnessScore[0]];
        v45 = objc_alloc_init(MEMORY[0x1E69CE940]);
        [v45 setDeviceClass:{objc_msgSend(v10, "deviceClass")}];
        [v45 setProductType:{objc_msgSend(v10, "deviceProductType")}];
        v65 = v45;
        [v45 setGoodnessScore:{objc_msgSend(v10, "goodnessScore")}];
        if (v73)
        {
          v46 = a3->electionParticipantDeviceType;
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

        if (a3->decision)
        {
          v57 = 1;
        }

        else
        {
          v57 = 2;
        }

        if (a3->previousDecision)
        {
          v58 = 1;
        }

        else
        {
          v58 = 2;
        }

        v59 = mach_absolute_time();
        v11 = v71;
        if (_AFMachAbsoluteTimeRate_onceToken != -1)
        {
          dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
        }

        v10 = v72;
        v13 = v70;
        v60 = (((*&_AFMachAbsoluteTimeRate_rate * v59) - a3->previousDecisionTime) / 1000000.0);
        v61 = [v72 rawGoodnessScore];
        v62 = [(AFMyriadMetrics *)v67 getCDASessionId:a3];
        LODWORD(v64) = v61;
        [v71 logCDAElectionDecisionMade:11 withDecision:v57 withPreviousDecision:v58 timeSincePreviousDecision:v60 withWinningDevice:v66 withThisDevice:v65 withParticipants:v54 withRawScore:v64 withBoost:0 withCdaId:v62 currentRequestId:0 withTimestamp:mach_absolute_time()];

        v17 = v74;
      }

      v12 = v68;
    }

    v12[2](v12, v13);
  }

  v63 = *MEMORY[0x1E69E9840];
}

- (void)_submitMyriadMetrics:(MyriadMetricsDataV1 *)a3 additionalContext:(id)a4 toStream:(id)a5 instrumentation:(id)a6 completion:(id)a7
{
  v111[2] = *MEMORY[0x1E69E9840];
  v85 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__23453;
  v94 = __Block_byref_object_dispose__23454;
  v95 = 0;
  if (!a3)
  {
    v16 = 2202;
    goto LABEL_13;
  }

  eventType = a3->eventType;
  v16 = 2201;
  if (eventType <= 2)
  {
    if (!a3->eventType)
    {
      requestType = a3->requestType;
      state = a3->state;
      v110[0] = @"state";
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", state];
      v110[1] = @"trigger";
      v111[0] = v45;
      v46 = [(AFMyriadMetrics *)self _getRequestType:requestType];
      v111[1] = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:2];
      v48 = [(AFMyriadMetrics *)self getVersion:a3];
      [(AFMyriadMetrics *)self getSessionId:a3];
      v49 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v47 forVersion:v48 sessionId:?];
      v50 = v91[5];
      v91[5] = v49;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [v12 logEventWithType:2011 context:v91[5]];
      }

      v51 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!v13)
      {
        LOBYTE(v51) = 1;
      }

      if ((v51 & 1) == 0)
      {
        v52 = [(AFMyriadMetrics *)self _getCDASchemaCDATriggerType:requestType];
        v53 = [(AFMyriadMetrics *)self getCDASessionId:a3];
        [v13 logCDADeviceStateActivityStartedOrChanged:(state + 1) withTrigger:v52 withCdaId:v53 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

    if (eventType == 1)
    {
      v70 = a3->state;
      v108 = @"state";
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v70];
      v109 = v71;
      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      v73 = [(AFMyriadMetrics *)self getVersion:a3];
      [(AFMyriadMetrics *)self getSessionId:a3];
      v74 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v72 forVersion:v73 sessionId:?];
      v75 = v91[5];
      v91[5] = v74;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [v12 logEventWithType:2012 context:v91[5]];
      }

      v76 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!v13)
      {
        LOBYTE(v76) = 1;
      }

      if ((v76 & 1) == 0)
      {
        v77 = [(AFMyriadMetrics *)self getCDASessionId:a3];
        [v13 logCDADeviceStateActivityEnded:(v70 + 1) withCdaId:v77 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

    if (eventType == 2)
    {
      v29 = a3->state;
      advDelay = a3->advDelay;
      advInterval = a3->advInterval;
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
      v36 = [(AFMyriadMetrics *)self getVersion:a3];
      [(AFMyriadMetrics *)self getSessionId:a3];
      v37 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v35 forVersion:v36 sessionId:?];
      v38 = v91[5];
      v91[5] = v37;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [v12 logEventWithType:2002 context:v91[5]];
      }

      v39 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!v13)
      {
        LOBYTE(v39) = 1;
      }

      if ((v39 & 1) == 0)
      {
        v40 = [(AFMyriadMetrics *)self getCDASessionId:a3];
        v41 = mach_absolute_time();
        *&v42 = advDelay;
        *&v43 = advInterval;
        [v13 logCDAElectionAdvertisingStarting:(v83 + 1) withDelay:v40 withInterval:v41 withCdaId:v42 withTimestamp:v43];
      }

      goto LABEL_50;
    }

    goto LABEL_13;
  }

  if (a3->eventType <= 4u)
  {
    if (eventType == 3)
    {
      v54 = a3->state;
      v104 = @"state";
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v54];
      v105 = v55;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      v57 = [(AFMyriadMetrics *)self getVersion:a3];
      [(AFMyriadMetrics *)self getSessionId:a3];
      v58 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v56 forVersion:v57 sessionId:?];
      v59 = v91[5];
      v91[5] = v58;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [v12 logEventWithType:2003 context:v91[5]];
      }

      v60 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!v13)
      {
        LOBYTE(v60) = 1;
      }

      if ((v60 & 1) == 0)
      {
        v61 = [(AFMyriadMetrics *)self getCDASessionId:a3];
        [v13 logCDAElectionAdvertisingStarted:(v54 + 1) withCdaId:v61 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

    if (eventType == 4)
    {
      v17 = a3->state;
      v102[0] = @"state";
      v82 = v17;
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v17];
      v102[1] = @"unixTime";
      v103[0] = v18;
      v19 = MEMORY[0x1E696AD98];
      v20 = [MEMORY[0x1E695DF00] date];
      [v20 timeIntervalSince1970];
      v21 = [v19 numberWithDouble:?];
      v103[1] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
      v23 = [(AFMyriadMetrics *)self getVersion:a3];
      [(AFMyriadMetrics *)self getSessionId:a3];
      v24 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v22 forVersion:v23 sessionId:?];
      v25 = v91[5];
      v91[5] = v24;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [v12 logEventWithType:2010 context:v91[5]];
      }

      v26 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!v13)
      {
        LOBYTE(v26) = 1;
      }

      if ((v26 & 1) == 0)
      {
        v27 = [(AFMyriadMetrics *)self getCDASessionId:a3];
        [v13 logCDAElectionTimerEnded:(v82 + 1) withCdaId:v27 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

LABEL_13:
    v28 = [AFError errorWithCode:v16];
    goto LABEL_51;
  }

  if (eventType == 5)
  {
    v62 = a3->state;
    v100 = @"state";
    v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v62];
    v101 = v63;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v65 = [(AFMyriadMetrics *)self getVersion:a3];
    [(AFMyriadMetrics *)self getSessionId:a3];
    v66 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v64 forVersion:v65 sessionId:?];
    v67 = v91[5];
    v91[5] = v66;

    if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      [v12 logEventWithType:2005 context:v91[5]];
    }

    v68 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
    if (!v13)
    {
      LOBYTE(v68) = 1;
    }

    if ((v68 & 1) == 0)
    {
      v69 = [(AFMyriadMetrics *)self getCDASessionId:a3];
      [v13 logCDAElectionAdvertisingEnded:(v62 + 1) withCdaId:v69 withTimestamp:mach_absolute_time()];
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
  v89 = a3;
  v86[4] = self;
  v87 = v12;
  [(AFMyriadMetrics *)self _decisionMadeContext:a3 additionalContext:v85 instrumentation:v13 completion:v86];

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
    if (!v14)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v14)
  {
LABEL_53:
    v79 = [v91[5] copy];
    v14[2](v14, v28, v79);
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

- (id)getCDASessionId:(MyriadMetricsDataV1 *)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  v5 = v4;
  if (a3)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"00000000-0000-0000-0000-%012u", a3->sessionId];
    v7 = [v5 initWithUUIDString:v6];
  }

  else
  {
    v7 = [v4 initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  }

  return v7;
}

- (BOOL)isMyriadMetricsMessage:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"accessoryMetrics"];
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

- (double)getSessionId:(MyriadMetricsDataV1 *)a3
{
  if (a3)
  {
    return a3->sessionId;
  }

  else
  {
    return 0.0;
  }
}

- (unsigned)getVersion:(MyriadMetricsDataV1 *)a3
{
  if (a3)
  {
    return a3->version;
  }

  else
  {
    return 0;
  }
}

- (int)_getCDASchemaCDATriggerType:(unint64_t)a3
{
  if (a3 - 2 > 6)
  {
    return 0;
  }

  else
  {
    return dword_1914CFE28[a3 - 2];
  }
}

- (id)_getRequestType:(unint64_t)a3
{
  if (a3 - 2 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E73458C8[a3 - 2];
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