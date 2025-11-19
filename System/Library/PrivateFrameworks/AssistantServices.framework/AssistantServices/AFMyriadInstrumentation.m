@interface AFMyriadInstrumentation
- (AFMyriadInstrumentation)init;
- (id)_boostTypeAsString:(unsigned __int8)a3;
- (id)_createSchemaClientEvent:(id)a3;
- (void)_logRequestLinkMessageRequestId:(id)a3 cdaId:(id)a4;
- (void)_sendAndLogClientEvent:(id)a3 stState:(int)a4 atTimestamp:(unint64_t)a5;
- (void)getPreviousBoostsWithCompletion:(id)a3;
- (void)logCDADeviceStateActivityEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5;
- (void)logCDADeviceStateActivityStartedOrChanged:(int)a3 withTrigger:(int)a4 withCdaId:(id)a5 withTimestamp:(unint64_t)a6;
- (void)logCDAElectionAdvertisingEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5;
- (void)logCDAElectionAdvertisingEnding:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5;
- (void)logCDAElectionAdvertisingStarted:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5;
- (void)logCDAElectionAdvertisingStarting:(int)a3 withDelay:(float)a4 withInterval:(float)a5 withCdaId:(id)a6 withTimestamp:(unint64_t)a7;
- (void)logCDAElectionDecisionMade:(int)a3 withDecision:(int)a4 withPreviousDecision:(int)a5 timeSincePreviousDecision:(unint64_t)a6 withWinningDevice:(id)a7 withThisDevice:(id)a8 withParticipants:(id)a9 withRawScore:(unsigned int)a10 withBoost:(id)a11 withCdaId:(id)a12 currentRequestId:(id)a13 withTimestamp:(unint64_t)a14;
- (void)logCDAElectionDecisionMadeDebug:(int)a3 withCrossDeviceArbitrationAllowed:(BOOL)a4 advertisementData:(id)a5 withDeviceGroup:(unsigned int)a6 withCdaId:(id)a7 withTimestamp:(unint64_t)a8;
- (void)logCDAElectionTimerEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5;
- (void)resetCurrentBoost;
- (void)updateBoost:(unsigned __int8)a3 value:(unsigned int)a4;
- (void)updateIsTrump:(BOOL)a3 withReason:(int)a4;
@end

@implementation AFMyriadInstrumentation

- (void)_logRequestLinkMessageRequestId:(id)a3 cdaId:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__AFMyriadInstrumentation__logRequestLinkMessageRequestId_cdaId___block_invoke;
    v12[3] = &unk_1E7349860;
    v13 = v7;
    v14 = v6;
    dispatch_async(queue, v12);
  }

  else
  {
    v10 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = "[AFMyriadInstrumentation _logRequestLinkMessageRequestId:cdaId:]";
      _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s Skipped emitting RequestLinkEvent as requestId or cdaId is nil", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __65__AFMyriadInstrumentation__logRequestLinkMessageRequestId_cdaId___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) UUIDString];
  v3 = ADCreateRequestLinkInfo(v2, 23);

  v4 = [*(a1 + 40) UUIDString];
  v5 = ADCreateRequestLinkInfo(v4, 1);

  ADEmitRequestLinkEventMessage(v3, v5);
  v6 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 136315650;
    v11 = "[AFMyriadInstrumentation _logRequestLinkMessageRequestId:cdaId:]_block_invoke";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s Emitting Myriad RequestLinkEvent with requestId: %@, cdaId: %@", &v10, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_createSchemaClientEvent:(id)a3
{
  v3 = MEMORY[0x1E69CE8D0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v4];

  v7 = objc_alloc_init(MEMORY[0x1E69CE8D8]);
  [v7 setCdaId:v6];
  [v5 setEventMetadata:v7];

  return v5;
}

- (void)updateIsTrump:(BOOL)a3 withReason:(int)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AFMyriadInstrumentation_updateIsTrump_withReason___block_invoke;
  v5[3] = &unk_1E73469A8;
  v5[4] = self;
  v7 = a3;
  v6 = a4;
  dispatch_async(queue, v5);
}

void __52__AFMyriadInstrumentation_updateIsTrump_withReason___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69CE948]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  [v2 setIsTrump:*(a1 + 44)];
  [*(*(a1 + 32) + 16) setTrumpReason:*(a1 + 40)];
  v6 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 44);
    v9 = *(a1 + 40) - 1;
    if (v9 > 7)
    {
      v10 = @"CDATRUMPREASON_UNKNOWN";
    }

    else
    {
      v10 = off_1E7346AD0[v9];
    }

    v12 = 136315650;
    v13 = "[AFMyriadInstrumentation updateIsTrump:withReason:]_block_invoke";
    v14 = 1024;
    v15 = v8;
    v16 = 2112;
    v17 = v10;
    v11 = v6;
    _os_log_debug_impl(&dword_1912FE000, v11, OS_LOG_TYPE_DEBUG, "%s trump: %d, with Reason:%@", &v12, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateBoost:(unsigned __int8)a3 value:(unsigned int)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AFMyriadInstrumentation_updateBoost_value___block_invoke;
  v5[3] = &unk_1E73469A8;
  v5[4] = self;
  v7 = a3;
  v6 = a4;
  dispatch_async(queue, v5);
}

void __45__AFMyriadInstrumentation_updateBoost_value___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(MEMORY[0x1E69CE948]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;
  }

  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 44);
    v10 = v5;
    v11 = [v8 _boostTypeAsString:v9];
    v12 = *(a1 + 40);
    v13 = 136315650;
    v14 = "[AFMyriadInstrumentation updateBoost:value:]_block_invoke";
    v15 = 2112;
    v16 = v11;
    v17 = 1024;
    v18 = v12;
    _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s boostType: %@, boostValue:%d", &v13, 0x1Cu);
  }

  v6 = *(a1 + 44);
  if (v6 <= 3)
  {
    switch(v6)
    {
      case 1u:
        [*(*(a1 + 32) + 16) setDeviceBoost:*(a1 + 40)];
        break;
      case 2u:
        [*(*(a1 + 32) + 16) setRecentUnlockBoost:*(a1 + 40)];
        break;
      case 3u:
        [*(*(a1 + 32) + 16) setRecentRaiseToWakeBoost:*(a1 + 40)];
        break;
    }
  }

  else if (*(a1 + 44) > 5u)
  {
    if (v6 == 6)
    {
      [*(*(a1 + 32) + 16) setRecentPlaybackBoost:*(a1 + 40)];
    }

    else if (v6 == 7)
    {
      [*(*(a1 + 32) + 16) setRecentAlarmBoost:*(a1 + 40)];
    }
  }

  else if (v6 == 4)
  {
    [*(*(a1 + 32) + 16) setRecentSiriRequestBoost:*(a1 + 40)];
  }

  else if (v6 == 5)
  {
    [*(*(a1 + 32) + 16) setRecentMotionBoost:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_boostTypeAsString:(unsigned __int8)a3
{
  if ((a3 - 1) > 6)
  {
    return @"AFCDABoostTypeUnknown";
  }

  else
  {
    return off_1E7346A98[(a3 - 1)];
  }
}

- (void)_sendAndLogClientEvent:(id)a3 stState:(int)a4 atTimestamp:(unint64_t)a5
{
  v6 = MEMORY[0x1E69CE1E8];
  v7 = a3;
  v8 = [v6 sharedStream];
  [v8 emitMessage:v7 timestamp:a5];
}

- (void)resetCurrentBoost
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AFMyriadInstrumentation_resetCurrentBoost__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__AFMyriadInstrumentation_resetCurrentBoost__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (void)logCDAElectionDecisionMadeDebug:(int)a3 withCrossDeviceArbitrationAllowed:(BOOL)a4 advertisementData:(id)a5 withDeviceGroup:(unsigned int)a6 withCdaId:(id)a7 withTimestamp:(unint64_t)a8
{
  v14 = a5;
  v15 = a7;
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __151__AFMyriadInstrumentation_logCDAElectionDecisionMadeDebug_withCrossDeviceArbitrationAllowed_advertisementData_withDeviceGroup_withCdaId_withTimestamp___block_invoke;
  v19[3] = &unk_1E7346980;
  v19[4] = self;
  v20 = v15;
  v25 = a4;
  v23 = a6;
  v24 = a3;
  v21 = v14;
  v22 = a8;
  v17 = v14;
  v18 = v15;
  dispatch_async(queue, v19);
}

void __151__AFMyriadInstrumentation_logCDAElectionDecisionMadeDebug_withCrossDeviceArbitrationAllowed_advertisementData_withDeviceGroup_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE8E0]);
  [v3 setIsCrossDeviceArbitrationAllowed:*(a1 + 72)];
  [v3 setDeviceGroup:*(a1 + 64)];
  [v3 setAdvertisementDatas:*(a1 + 48)];
  [v2 setDebugElectionDecisionMade:v3];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 68) atTimestamp:*(a1 + 56)];
  v4 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 68) - 1;
    if (v7 > 0x11)
    {
      v8 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E7346A08[v7];
    }

    v9 = *(a1 + 72);
    v10 = *(a1 + 64);
    v11 = *(a1 + 48);
    v13 = 136316418;
    v14 = "[AFMyriadInstrumentation logCDAElectionDecisionMadeDebug:withCrossDeviceArbitrationAllowed:advertisementData:withDeviceGroup:withCdaId:withTimestamp:]_block_invoke";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v12 = v4;
    _os_log_debug_impl(&dword_1912FE000, v12, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@, arbitrationAllowed: %d, deviceGroup: %d, advertisements: %@", &v13, 0x36u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionDecisionMade:(int)a3 withDecision:(int)a4 withPreviousDecision:(int)a5 timeSincePreviousDecision:(unint64_t)a6 withWinningDevice:(id)a7 withThisDevice:(id)a8 withParticipants:(id)a9 withRawScore:(unsigned int)a10 withBoost:(id)a11 withCdaId:(id)a12 currentRequestId:(id)a13 withTimestamp:(unint64_t)a14
{
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __228__AFMyriadInstrumentation_logCDAElectionDecisionMade_withDecision_withPreviousDecision_timeSincePreviousDecision_withWinningDevice_withThisDevice_withParticipants_withRawScore_withBoost_withCdaId_currentRequestId_withTimestamp___block_invoke;
  block[3] = &unk_1E7346958;
  block[4] = self;
  v34 = v22;
  v42 = a4;
  v43 = a5;
  v35 = v18;
  v36 = v19;
  v37 = v21;
  v38 = v20;
  v44 = a10;
  v45 = a3;
  v40 = a6;
  v41 = a14;
  v39 = v23;
  v24 = v23;
  v25 = v20;
  v26 = v21;
  v27 = v19;
  v28 = v18;
  v29 = v22;
  dispatch_async(queue, block);
}

void __228__AFMyriadInstrumentation_logCDAElectionDecisionMade_withDecision_withPreviousDecision_timeSincePreviousDecision_withWinningDevice_withThisDevice_withParticipants_withRawScore_withBoost_withCdaId_currentRequestId_withTimestamp___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE930]);
  [v3 setDecision:*(a1 + 104)];
  [v3 setPreviousDecision:*(a1 + 108)];
  [v3 setWinningDevice:*(a1 + 48)];
  [v3 setThisDevice:*(a1 + 56)];
  [v3 setRawGoodnessScore:*(a1 + 112)];
  [v3 setTimeSinceLastDecisionInMs:*(a1 + 88)];
  v4 = *(a1 + 64);
  if (!v4)
  {
    v4 = *(*(a1 + 32) + 16);
  }

  [v3 setGoodnessScoreBoosts:v4];
  [v3 setHeardParticipants:*(a1 + 72)];
  [v2 setElectionDecisionMade:v3];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 116) atTimestamp:*(a1 + 96)];
  [*(a1 + 32) _logRequestLinkMessageRequestId:*(a1 + 80) cdaId:*(a1 + 40)];
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 116) - 1;
    if (v9 > 0x11)
    {
      v10 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v10 = off_1E7346A08[v9];
    }

    v31 = v10;
    v11 = @"CDADECISION_UNKNOWN";
    v12 = *(a1 + 104);
    v13 = *(a1 + 108);
    if (v12 == 1)
    {
      v14 = @"CDADECISION_WIN";
    }

    else
    {
      v14 = @"CDADECISION_UNKNOWN";
    }

    if (v12 == 2)
    {
      v15 = @"CDADECISION_LOSS";
    }

    else
    {
      v15 = v14;
    }

    if (v13 == 1)
    {
      v11 = @"CDADECISION_WIN";
    }

    if (v13 == 2)
    {
      v11 = @"CDADECISION_LOSS";
    }

    v28 = v11;
    v29 = *(a1 + 88);
    v30 = v15;
    v16 = *(a1 + 48);
    v25 = *(a1 + 40);
    v27 = [v16 goodnessScore];
    v17 = *(a1 + 56);
    v26 = [v17 goodnessScore];
    v18 = [*(a1 + 72) debugDescription];
    v24 = *(a1 + 112);
    v19 = [v3 goodnessScoreBoosts];
    v20 = [v19 debugDescription];
    v21 = [v3 goodnessScoreBoosts];
    v22 = [v21 trumpReason] - 1;
    if (v22 > 7)
    {
      v23 = @"CDATRUMPREASON_UNKNOWN";
    }

    else
    {
      v23 = off_1E7346AD0[v22];
    }

    *buf = 136318466;
    v33 = "[AFMyriadInstrumentation logCDAElectionDecisionMade:withDecision:withPreviousDecision:timeSincePreviousDecision:withWinningDevice:withThisDevice:withParticipants:withRawScore:withBoost:withCdaId:currentRequestId:withTimestamp:]_block_invoke";
    v34 = 2112;
    v35 = v25;
    v36 = 2112;
    v37 = v31;
    v38 = 2112;
    v39 = v30;
    v40 = 2112;
    v41 = v28;
    v42 = 2048;
    v43 = v29;
    v44 = 2112;
    v45 = v16;
    v46 = 1024;
    v47 = v27;
    v48 = 2112;
    v49 = v17;
    v50 = 1024;
    v51 = v26;
    v52 = 2112;
    v53 = v18;
    v54 = 1024;
    v55 = v24;
    v56 = 2112;
    v57 = v20;
    v58 = 2112;
    v59 = v23;
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@, withDecision: %@, withPreviousDecision: %@, timeSincePreviousDecision: %llu, withWinningDevice: %@ (score: %d), withThisDevice: %@ (score: %d), withParticipants: %@, withRawScore:%u, withBoost:%@, withTrumpReason:%@", buf, 0x82u);
  }

  if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
  {
    objc_storeStrong((*(a1 + 32) + 24), *(*(a1 + 32) + 16));
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = 0;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionTimerEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5
{
  v8 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__AFMyriadInstrumentation_logCDAElectionTimerEnded_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E7346908;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __76__AFMyriadInstrumentation_logCDAElectionTimerEnded_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE938]);
  [v3 setState:*(a1 + 56)];
  [v2 setElectionTimerEnded:v3];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v4 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56) - 1;
    if (v7 > 0x11)
    {
      v8 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E7346A08[v7];
    }

    v10 = 136315650;
    v11 = "[AFMyriadInstrumentation logCDAElectionTimerEnded:withCdaId:withTimestamp:]_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v9 = v4;
    _os_log_debug_impl(&dword_1912FE000, v9, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v10, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionAdvertisingEnding:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5
{
  v8 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__AFMyriadInstrumentation_logCDAElectionAdvertisingEnding_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E7346908;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __83__AFMyriadInstrumentation_logCDAElectionAdvertisingEnding_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE918]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE8E8]);
  [v4 setStartedOrChanged:v3];
  [v2 setCdaAdvertisingEndChanged:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56) - 1;
    if (v8 > 0x11)
    {
      v9 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v9 = off_1E7346A08[v8];
    }

    v11 = 136315650;
    v12 = "[AFMyriadInstrumentation logCDAElectionAdvertisingEnding:withCdaId:withTimestamp:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v10 = v5;
    _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v11, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionAdvertisingEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5
{
  v8 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__AFMyriadInstrumentation_logCDAElectionAdvertisingEnded_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E7346908;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __82__AFMyriadInstrumentation_logCDAElectionAdvertisingEnded_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE910]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE8E8]);
  [v4 setEnded:v3];
  [v2 setCdaAdvertisingEndChanged:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56) - 1;
    if (v8 > 0x11)
    {
      v9 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v9 = off_1E7346A08[v8];
    }

    v11 = 136315650;
    v12 = "[AFMyriadInstrumentation logCDAElectionAdvertisingEnded:withCdaId:withTimestamp:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v10 = v5;
    _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v11, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionAdvertisingStarting:(int)a3 withDelay:(float)a4 withInterval:(float)a5 withCdaId:(id)a6 withTimestamp:(unint64_t)a7
{
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__AFMyriadInstrumentation_logCDAElectionAdvertisingStarting_withDelay_withInterval_withCdaId_withTimestamp___block_invoke;
  block[3] = &unk_1E7346930;
  block[4] = self;
  v16 = v12;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v17 = a7;
  v14 = v12;
  dispatch_async(queue, block);
}

void __108__AFMyriadInstrumentation_logCDAElectionAdvertisingStarting_withDelay_withInterval_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE928]);
  [v3 setState:*(a1 + 56)];
  LODWORD(v4) = *(a1 + 60);
  [v3 setAdvertisementDelay:v4];
  LODWORD(v5) = *(a1 + 64);
  [v3 setAdvertisementInterval:v5];
  v6 = objc_alloc_init(MEMORY[0x1E69CE8F0]);
  [v6 setStartedOrChanged:v3];
  [v2 setCdaAdvertisingStartChanged:v6];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v7 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 56) - 1;
    if (v10 > 0x11)
    {
      v11 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v11 = off_1E7346A08[v10];
    }

    v13 = 136315650;
    v14 = "[AFMyriadInstrumentation logCDAElectionAdvertisingStarting:withDelay:withInterval:withCdaId:withTimestamp:]_block_invoke";
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v11;
    v12 = v7;
    _os_log_debug_impl(&dword_1912FE000, v12, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v13, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionAdvertisingStarted:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5
{
  v8 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__AFMyriadInstrumentation_logCDAElectionAdvertisingStarted_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E7346908;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __84__AFMyriadInstrumentation_logCDAElectionAdvertisingStarted_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE920]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE8F0]);
  [v4 setEnded:v3];
  [v2 setCdaAdvertisingStartChanged:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56) - 1;
    if (v8 > 0x11)
    {
      v9 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v9 = off_1E7346A08[v8];
    }

    v11 = 136315650;
    v12 = "[AFMyriadInstrumentation logCDAElectionAdvertisingStarted:withCdaId:withTimestamp:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v10 = v5;
    _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v11, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)logCDADeviceStateActivityEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5
{
  v8 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__AFMyriadInstrumentation_logCDADeviceStateActivityEnded_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E7346908;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __82__AFMyriadInstrumentation_logCDADeviceStateActivityEnded_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE8F8]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE908]);
  [v4 setEnded:v3];
  [v2 setDeviceElectionStateContext:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56) - 1;
    if (v8 > 0x11)
    {
      v9 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v9 = off_1E7346A08[v8];
    }

    v11 = 136315650;
    v12 = "[AFMyriadInstrumentation logCDADeviceStateActivityEnded:withCdaId:withTimestamp:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v10 = v5;
    _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v11, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)logCDADeviceStateActivityStartedOrChanged:(int)a3 withTrigger:(int)a4 withCdaId:(id)a5 withTimestamp:(unint64_t)a6
{
  v10 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __105__AFMyriadInstrumentation_logCDADeviceStateActivityStartedOrChanged_withTrigger_withCdaId_withTimestamp___block_invoke;
  v13[3] = &unk_1E73482A0;
  v13[4] = self;
  v14 = v10;
  v16 = a3;
  v17 = a4;
  v15 = a6;
  v12 = v10;
  dispatch_async(queue, v13);
}

void __105__AFMyriadInstrumentation_logCDADeviceStateActivityStartedOrChanged_withTrigger_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE900]);
  [v3 setState:*(a1 + 56)];
  if (*(a1 + 60))
  {
    [v3 setTrigger:?];
  }

  v4 = objc_alloc_init(MEMORY[0x1E69CE908]);
  [v4 setStartedOrChanged:v3];
  [v2 setDeviceElectionStateContext:v4];
  v5 = [MEMORY[0x1E69CE1E8] sharedStream];
  [v5 emitMessage:v2 timestamp:*(a1 + 48)];

  v6 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 56) - 1;
    if (v8 > 0x11)
    {
      v9 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v9 = off_1E7346A08[v8];
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 60) - 1;
    if (v11 > 7)
    {
      v12 = @"CDATRIGGER_UKNOWN";
    }

    else
    {
      v12 = off_1E73469C8[v11];
    }

    v14 = 136315906;
    v15 = "[AFMyriadInstrumentation logCDADeviceStateActivityStartedOrChanged:withTrigger:withCdaId:withTimestamp:]_block_invoke";
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v12;
    v13 = v6;
    _os_log_debug_impl(&dword_1912FE000, v13, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@, trigger: %@", &v14, 0x2Au);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getPreviousBoostsWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__AFMyriadInstrumentation_getPreviousBoostsWithCompletion___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __59__AFMyriadInstrumentation_getPreviousBoostsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 24));
  }

  return result;
}

- (AFMyriadInstrumentation)init
{
  v8.receiver = self;
  v8.super_class = AFMyriadInstrumentation;
  v2 = [(AFMyriadInstrumentation *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.assistant.myriad.instrumentation", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

@end