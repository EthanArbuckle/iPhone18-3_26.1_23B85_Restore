@interface AFArbitrationParticipationController
- (AFArbitrationParticipationController)init;
- (AFSettingsConnection)settingsConnection;
- (void)_publishFeedbackArbitrationRecord;
- (void)_publishFeedbackArbitrationRecordForNearMiss;
- (void)_resetSettingsConnection;
- (void)_updateUserFeedbackParticipationAllAdvertisements:(id)a3 session:(id)a4 ownRecord:(id)a5 won:(BOOL)a6 triggerType:(id)a7 lastActivationTime:(double)a8 requestStartDate:(id)a9 voiceTriggerDate:(id)a10 scoreBoosters:(id)a11 deviceClass:(unsigned __int8)a12;
- (void)arbitrationDidUpdateWithContext:(id)a3 session:(id)a4 completion:(id)a5;
- (void)arbitrationEndedAdvertising:(id)a3;
- (void)arbitrationEndedTask:(id)a3;
- (void)arbitrationSessionWillStart:(id)a3;
- (void)dealloc;
- (void)requestWillPresentUsefulUserResult:(id)a3;
@end

@implementation AFArbitrationParticipationController

- (void)_resetSettingsConnection
{
  settingsConnection = self->_settingsConnection;
  if (settingsConnection)
  {
    self->_settingsConnection = 0;
  }
}

- (void)_updateUserFeedbackParticipationAllAdvertisements:(id)a3 session:(id)a4 ownRecord:(id)a5 won:(BOOL)a6 triggerType:(id)a7 lastActivationTime:(double)a8 requestStartDate:(id)a9 voiceTriggerDate:(id)a10 scoreBoosters:(id)a11 deviceClass:(unsigned __int8)a12
{
  v92 = a6;
  v119[1] = *MEMORY[0x1E69E9840];
  v97 = a3;
  v18 = a4;
  v19 = a5;
  v96 = a7;
  v98 = a9;
  v99 = a10;
  v20 = a11;
  v95 = v18;
  v21 = [v18 sessionId];
  v100 = [v21 UUIDString];

  v22 = v100;
  if ([v100 length])
  {
    v23 = [(NSMutableDictionary *)self->_participationsForUserFeedback objectForKeyedSubscript:v100];
    if (!v23)
    {
      v52 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "[AFArbitrationParticipationController _updateUserFeedbackParticipationAllAdvertisements:session:ownRecord:won:triggerType:lastActivationTime:requestStartDate:voiceTriggerDate:scoreBoosters:deviceClass:]";
        *&buf[12] = 2112;
        *&buf[14] = v100;
        _os_log_debug_impl(&dword_1912FE000, v52, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback unable to find SCDAFParticipation with myriad sessionId: %@", buf, 0x16u);
        v52 = AFSiriLogContextConnection;
      }

      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        participationsForUserFeedback = self->_participationsForUserFeedback;
        *buf = 136315394;
        *&buf[4] = "[AFArbitrationParticipationController _updateUserFeedbackParticipationAllAdvertisements:session:ownRecord:won:triggerType:lastActivationTime:requestStartDate:voiceTriggerDate:scoreBoosters:deviceClass:]";
        *&buf[12] = 2112;
        *&buf[14] = participationsForUserFeedback;
        _os_log_debug_impl(&dword_1912FE000, v52, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback unable to find SCDAFParticipation in: %@", buf, 0x16u);
      }

      goto LABEL_64;
    }

    [v23 setRawGoodnessScore:{objc_msgSend(v19, "rawAudioGoodnessScore")}];
    [v23 setRequestStartDate:v98];
    if (v99)
    {
      [v23 setVoiceTriggerDate:?];
    }

    [v23 setCdaId:v100];
    if (objc_opt_respondsToSelector())
    {
      [v23 performSelector:sel_setTriggerType_ withObject:v96];
    }

    v24 = [MEMORY[0x1E695DF00] date];
    [v24 timeIntervalSinceDate:v99];
    v26 = v25;

    if (v26 > 0.0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v27 = [MEMORY[0x1E696AD98] numberWithDouble:v26 * 1000.0];
      [v23 performSelector:sel_setTimeSinceTriggerInMilliseconds_ withObject:v27];
    }

    v28 = 0.0;
    if (a8 > 0.0)
    {
      v29 = [MEMORY[0x1E696AE30] processInfo];
      [v29 systemUptime];
      v31 = v30;

      v28 = (v31 - a8) * 1000.0;
    }

    if (objc_opt_respondsToSelector())
    {
      v32 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
      [v23 performSelector:sel_setTimeSinceLastWinInMilliseconds_ withObject:v32];
    }

    if (v92)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    [v23 setResult:v33];
    v34 = objc_alloc_init(MEMORY[0x1E69CE3B0]);
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v19, "userConfidence")}];
    [v34 setConfidence:{objc_msgSend(v35, "integerValue")}];

    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v19, "goodness")}];
    [v34 setGoodnessScore:{objc_msgSend(v36, "integerValue")}];

    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v19, "pHash")}];
    [v34 setAdvertHash:v37];

    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v19, "deviceClass")}];
    [v34 setDeviceClass:{objc_msgSend(v38, "integerValue")}];

    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v19, "tieBreaker")}];
    [v34 setTieBreaker:{objc_msgSend(v39, "integerValue")}];

    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v19, "productType")}];
    [v34 setProductType:{objc_msgSend(v40, "integerValue")}];

    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v19, "deviceGroup")}];
    [v34 setDeviceGroup:{objc_msgSend(v41, "integerValue")}];

    if (objc_opt_respondsToSelector())
    {
      v42 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v19, "deviceGroup")}];
      [v34 performSelector:sel_setDeviceGroupWithNumber_ withObject:v42];
    }

    [v23 setAdvertisement:v34];
    v43 = objc_alloc_init(MEMORY[0x1E69CE3C0]);
    v44 = MGCopyAnswer();
    [v43 setBuild:v44];

    if (MGGetSInt32Answer())
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X", MGGetSInt32Answer()];
      [v43 setEnclosureColor:v45];
    }

    v94 = [MEMORY[0x1E695DF58] currentLocale];
    if (v94)
    {
      v46 = [v94 countryCode];
      if (v46)
      {
        v47 = MEMORY[0x1E696AEC0];
        v48 = [v94 languageCode];
        v49 = [v94 countryCode];
        v50 = [v47 stringWithFormat:@"%@_%@", v48, v49];
      }

      else
      {
        v50 = [v94 languageCode];
      }

      if ([v50 length])
      {
        [v43 setLocale:v50];
      }
    }

    v54 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a12];
    v119[0] = v54;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:1];
    [v43 setDeviceClass:v55];

    v91 = MGCopyAnswer();
    if (v91)
    {
      v118 = v91;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
      [v43 setProductTypes:v56];
    }

    v57 = MGCopyAnswer();
    [v43 setName:v57];

    [v23 setDevice:v43];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v115 = __Block_byref_object_copy__38907;
    v116 = __Block_byref_object_dispose__38908;
    if (v92)
    {
      v58 = v34;
    }

    else
    {
      v58 = 0;
    }

    v117 = v58;
    v107[0] = 0;
    v107[1] = v107;
    v107[2] = 0x3032000000;
    v107[3] = __Block_byref_object_copy__38907;
    v107[4] = __Block_byref_object_dispose__38908;
    v108 = 0;
    v93 = v97;
    v59 = [MEMORY[0x1E695DF70] array];
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __203__AFArbitrationParticipationController__updateUserFeedbackParticipationAllAdvertisements_session_ownRecord_won_triggerType_lastActivationTime_requestStartDate_voiceTriggerDate_scoreBoosters_deviceClass___block_invoke;
    v101[3] = &unk_1E7347A40;
    v102 = v19;
    v89 = v34;
    v103 = v89;
    v90 = v59;
    v104 = v90;
    v105 = buf;
    v106 = v107;
    [v93 enumerateObjectsUsingBlock:v101];
    if (*(*&buf[8] + 40))
    {
      [v23 setWinnerAdvertisement:?];
    }

    v60 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *v110 = 136315394;
      v111 = "[AFArbitrationParticipationController _updateUserFeedbackParticipationAllAdvertisements:session:ownRecord:won:triggerType:lastActivationTime:requestStartDate:voiceTriggerDate:scoreBoosters:deviceClass:]";
      v112 = 2112;
      v113 = v20;
      _os_log_debug_impl(&dword_1912FE000, v60, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback scoreBoosters from myriadInstrumentation: %@", v110, 0x16u);
      if (v20)
      {
        goto LABEL_43;
      }
    }

    else if (v20)
    {
LABEL_43:
      if ([v20 isTrump])
      {
        v61 = [v20 trumpReason];
        if (v61 - 1 >= 8)
        {
          v62 = 0;
        }

        else
        {
          v62 = v61;
        }
      }

      else
      {
        v62 = 0;
      }

      v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v62];
      v109 = v63;
      v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
      [v23 setTrumpReasons:v64];

      v65 = [MEMORY[0x1E695DF70] array];
      if ([v20 deviceBoost])
      {
        v66 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
        [v66 setKind:0];
        [v66 setType:0];
        v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v20, "deviceBoost")}];
        [v67 floatValue];
        [v66 setBoostValue:v68];

        [v65 addObject:v66];
      }

      if ([v20 recentAlarmBoost])
      {
        v69 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
        [v69 setKind:6];
        [v69 setType:0];
        v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v20, "recentAlarmBoost")}];
        [v70 floatValue];
        [v69 setBoostValue:v71];

        [v65 addObject:v69];
      }

      if ([v20 recentMotionBoost])
      {
        v72 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
        [v72 setKind:4];
        [v72 setType:0];
        v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v20, "recentMotionBoost")}];
        [v73 floatValue];
        [v72 setBoostValue:v74];

        [v65 addObject:v72];
      }

      if ([v20 recentUnlockBoost])
      {
        v75 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
        [v75 setKind:1];
        [v75 setType:0];
        v76 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v20, "recentUnlockBoost")}];
        [v76 floatValue];
        [v75 setBoostValue:v77];

        [v65 addObject:v75];
      }

      if ([v20 recentPlaybackBoost])
      {
        v78 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
        [v78 setKind:5];
        [v78 setType:0];
        v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v20, "recentPlaybackBoost")}];
        [v79 floatValue];
        [v78 setBoostValue:v80];

        [v65 addObject:v78];
      }

      if ([v20 recentSiriRequestBoost])
      {
        v81 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
        [v81 setKind:3];
        [v81 setType:0];
        v82 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v20, "recentSiriRequestBoost")}];
        [v82 floatValue];
        [v81 setBoostValue:v83];

        [v65 addObject:v81];
      }

      if ([v20 recentRaiseToWakeBoost])
      {
        v84 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
        [v84 setKind:2];
        [v84 setType:0];
        v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v20, "recentRaiseToWakeBoost")}];
        [v85 floatValue];
        [v84 setBoostValue:v86];

        [v65 addObject:v84];
      }

      v87 = [MEMORY[0x1E695DEC8] arrayWithArray:v65];
      [v23 setBoosts:v87];
    }

    [v23 setSeenAdvertisements:v90];

    _Block_object_dispose(v107, 8);
    _Block_object_dispose(buf, 8);

LABEL_64:
    v22 = v100;
    goto LABEL_65;
  }

  v51 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "[AFArbitrationParticipationController _updateUserFeedbackParticipationAllAdvertisements:session:ownRecord:won:triggerType:lastActivationTime:requestStartDate:voiceTriggerDate:scoreBoosters:deviceClass:]";
    _os_log_debug_impl(&dword_1912FE000, v51, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback myriad sessionid is nil. Returning", buf, 0xCu);
  }

LABEL_65:

  v88 = *MEMORY[0x1E69E9840];
}

void __203__AFArbitrationParticipationController__updateUserFeedbackParticipationAllAdvertisements_session_ownRecord_won_triggerType_lastActivationTime_requestStartDate_voiceTriggerDate_scoreBoosters_deviceClass___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E69CE3B0]);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v18, "userConfidence")}];
  [v6 setConfidence:{objc_msgSend(v7, "integerValue")}];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v18, "goodness")}];
  [v6 setGoodnessScore:{objc_msgSend(v8, "integerValue")}];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v18, "pHash")}];
  [v6 setAdvertHash:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v18, "deviceClass")}];
  [v6 setDeviceClass:{objc_msgSend(v10, "integerValue")}];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v18, "tieBreaker")}];
  [v6 setTieBreaker:{objc_msgSend(v11, "integerValue")}];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v18, "productType")}];
  [v6 setProductType:{objc_msgSend(v12, "integerValue")}];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v18, "deviceGroup")}];
  [v6 setDeviceGroup:{objc_msgSend(v13, "integerValue")}];

  if (objc_opt_respondsToSelector())
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(*(a1 + 32), "deviceGroup")}];
    [*(a1 + 40) performSelector:sel_setDeviceGroupWithNumber_ withObject:v14];
  }

  [*(a1 + 48) addObject:v6];
  if (!a3)
  {
    v15 = *(*(a1 + 56) + 8);
    v17 = *(v15 + 40);
    v16 = (v15 + 40);
    if (!v17)
    {
      objc_storeStrong(v16, v6);
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    }
  }
}

- (void)_publishFeedbackArbitrationRecord
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_participationsForUserFeedback allValues];
  if (!self->_participationsPublished)
  {
    v4 = objc_opt_new();
    participationsPublished = self->_participationsPublished;
    self->_participationsPublished = v4;
  }

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v8 = v6;
    *buf = 136315394;
    v11 = "[AFArbitrationParticipationController _publishFeedbackArbitrationRecord]";
    v12 = 2048;
    v13 = [v3 count];
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback action: publishing %lu pariticipations", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__AFArbitrationParticipationController__publishFeedbackArbitrationRecord__block_invoke;
  v9[3] = &unk_1E7347A18;
  v9[4] = self;
  [v3 enumerateObjectsUsingBlock:v9];

  v7 = *MEMORY[0x1E69E9840];
}

void __73__AFArbitrationParticipationController__publishFeedbackArbitrationRecord__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 result] || (objc_msgSend(v3, "rawGoodnessScore"), v9 != 0.0))
  {
    v4 = [v3 requestStartDate];

    if (v4)
    {
      v5 = *(*(a1 + 32) + 32);
      v6 = [v3 requestStartDate];
      LODWORD(v5) = [v5 containsObject:v6];

      if (!v5)
      {
        v10 = [*(a1 + 32) settingsConnection];
        [v10 publishFeedbackArbitrationParticipation:v3];

        v11 = *(*(a1 + 32) + 32);
        v12 = [v3 requestStartDate];
        [v11 addObject:v12];

        goto LABEL_13;
      }

      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v14 = 136315138;
        v15 = "[AFArbitrationParticipationController _publishFeedbackArbitrationRecord]_block_invoke";
        v8 = "%s #myriad #feedback participation already published throwing out.";
LABEL_11:
        _os_log_debug_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEBUG, v8, &v14, 0xCu);
      }
    }

    else
    {
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v14 = 136315138;
        v15 = "[AFArbitrationParticipationController _publishFeedbackArbitrationRecord]_block_invoke";
        v8 = "%s #myriad #feedback participation without request start date, throwing out";
        goto LABEL_11;
      }
    }
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = "[AFArbitrationParticipationController _publishFeedbackArbitrationRecord]_block_invoke";
      v8 = "%s #myriad #feedback removing participation with nil result";
      goto LABEL_11;
    }
  }

LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_publishFeedbackArbitrationRecordForNearMiss
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = MGCopyAnswer();
  [v4 setBuild:v5];

  if (MGGetSInt32Answer())
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X", MGGetSInt32Answer()];
    [v4 setEnclosureColor:v6];
  }

  v7 = [MEMORY[0x1E695DF58] currentLocale];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 countryCode];
    if (v9)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [v8 languageCode];
      v12 = [v8 countryCode];
      v13 = [v10 stringWithFormat:@"%@_%@", v11, v12];
    }

    else
    {
      v13 = [v8 languageCode];
    }

    if ([v13 length])
    {
      [v4 setLocale:v13];
    }
  }

  v14 = MGCopyAnswer();
  v15 = v14;
  if (v14)
  {
    v24[0] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v4 setProductTypes:v16];
  }

  v17 = MGCopyAnswer();
  [v4 setName:v17];

  [v3 setDevice:v4];
  [v3 setResult:1];
  v18 = [MEMORY[0x1E695DF00] now];
  [v3 setRequestStartDate:v18];
  [v3 setVoiceTriggerDate:v18];
  v19 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "[AFArbitrationParticipationController _publishFeedbackArbitrationRecordForNearMiss]";
    _os_log_debug_impl(&dword_1912FE000, v19, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback", buf, 0xCu);
  }

  v20 = [(AFArbitrationParticipationController *)self settingsConnection];
  [v20 publishFeedbackArbitrationParticipation:v3];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)requestWillPresentUsefulUserResult:(id)a3
{
  if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AFArbitrationParticipationController_requestWillPresentUsefulUserResult___block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

uint64_t __75__AFArbitrationParticipationController_requestWillPresentUsefulUserResult___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[AFArbitrationParticipationController requestWillPresentUsefulUserResult:]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback event: requestWillPresentUsefulUserResult", &v5, 0xCu);
  }

  result = [*(a1 + 32) _publishFeedbackArbitrationRecord];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)arbitrationEndedTask:(id)a3
{
  if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__AFArbitrationParticipationController_arbitrationEndedTask___block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

uint64_t __61__AFArbitrationParticipationController_arbitrationEndedTask___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[AFArbitrationParticipationController arbitrationEndedTask:]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback event: arbitrationEndedTask", &v5, 0xCu);
  }

  result = [*(a1 + 32) _publishFeedbackArbitrationRecord];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)arbitrationEndedAdvertising:(id)a3
{
  if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__AFArbitrationParticipationController_arbitrationEndedAdvertising___block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

uint64_t __68__AFArbitrationParticipationController_arbitrationEndedAdvertising___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[AFArbitrationParticipationController arbitrationEndedAdvertising:]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback event: arbitrationEndedAdvertising", &v5, 0xCu);
  }

  result = [*(a1 + 32) _resetSettingsConnection];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)arbitrationDidUpdateWithContext:(id)a3 session:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91__AFArbitrationParticipationController_arbitrationDidUpdateWithContext_session_completion___block_invoke;
    v12[3] = &unk_1E73479F0;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(queue, v12);
  }
}

uint64_t __91__AFArbitrationParticipationController_arbitrationDidUpdateWithContext_session_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[AFArbitrationParticipationController arbitrationDidUpdateWithContext:session:completion:]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback event: arbitrationDidUpdateWithContext", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) advertisements];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) ownAdvertisement];
  v7 = [*(a1 + 40) decisionIsWon];
  v8 = [*(a1 + 40) triggerType];
  [*(a1 + 40) lastActivationTime];
  v10 = v9;
  v11 = [*(a1 + 40) requestStartDate];
  v12 = [*(a1 + 40) voiceTriggerDate];
  v13 = [*(a1 + 40) scoreBoosters];
  LOBYTE(v16) = [*(a1 + 40) deviceClass];
  [v3 _updateUserFeedbackParticipationAllAdvertisements:v4 session:v5 ownRecord:v6 won:v7 triggerType:v8 lastActivationTime:v11 requestStartDate:v10 voiceTriggerDate:v12 scoreBoosters:v13 deviceClass:v16];

  result = (*(*(a1 + 56) + 16))();
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)arbitrationSessionWillStart:(id)a3
{
  v4 = a3;
  if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__AFArbitrationParticipationController_arbitrationSessionWillStart___block_invoke;
    v6[3] = &unk_1E7349860;
    v6[4] = self;
    v7 = v4;
    dispatch_async(queue, v6);
  }
}

void __68__AFArbitrationParticipationController_arbitrationSessionWillStart___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[AFArbitrationParticipationController arbitrationSessionWillStart:]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback event: arbitrationSessionWillStart", &v10, 0xCu);
  }

  [*(*(a1 + 32) + 24) removeAllObjects];
  v3 = [*(a1 + 40) sessionId];
  v4 = [v3 UUIDString];

  if ([v4 length])
  {
    v5 = *(*(a1 + 32) + 24);
    v6 = objc_opt_new();
    [v5 setValue:v6 forKey:v4];

    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[AFArbitrationParticipationController arbitrationSessionWillStart:]_block_invoke";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s #myriad #feedback Created participation for %@", &v10, 0x16u);
    }
  }

  else
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315138;
      v11 = "[AFArbitrationParticipationController arbitrationSessionWillStart:]_block_invoke";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback myriad sessionid is nil. Returning", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (AFSettingsConnection)settingsConnection
{
  settingsConnection = self->_settingsConnection;
  if (!settingsConnection)
  {
    v4 = objc_alloc_init(AFSettingsConnection);
    v5 = self->_settingsConnection;
    self->_settingsConnection = v4;

    [(AFSettingsConnection *)self->_settingsConnection setXPCConnectionManagementQueue:self->_queue];
    settingsConnection = self->_settingsConnection;
  }

  return settingsConnection;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.voicetrigger.NearTrigger", 0);
  v4.receiver = self;
  v4.super_class = AFArbitrationParticipationController;
  [(AFArbitrationParticipationController *)&v4 dealloc];
}

- (AFArbitrationParticipationController)init
{
  v13.receiver = self;
  v13.super_class = AFArbitrationParticipationController;
  v2 = [(AFArbitrationParticipationController *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    participationsForUserFeedback = v2->_participationsForUserFeedback;
    v2->_participationsForUserFeedback = v3;

    v5 = objc_opt_new();
    participationsPublished = v2->_participationsPublished;
    v2->_participationsPublished = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);

    v9 = dispatch_queue_create("AFArbitrationParticipationQueue", v8);
    queue = v2->_queue;
    v2->_queue = v9;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, notificationNearMissCallback, @"com.apple.voicetrigger.NearTrigger", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

@end