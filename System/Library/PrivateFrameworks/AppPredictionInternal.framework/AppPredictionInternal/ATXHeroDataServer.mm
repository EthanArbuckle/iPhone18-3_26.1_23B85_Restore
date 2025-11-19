@interface ATXHeroDataServer
- (ATXHeroDataServer)init;
- (ATXHeroDataServer)initWithHeroClipManager:(id)a3 heroAppManager:(id)a4 heroPoiManager:(id)a5 tracker:(id)a6 predictionsTracker:(id)a7 locationManager:(id)a8;
- (ATXHeroDataServer)initWithHeroClipManager:(id)a3 heroAppManager:(id)a4 tracker:(id)a5;
- (BOOL)_didPredictionsChange:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_filterPredictions:(id)a3 currentLocation:(id)a4;
- (id)_heroAppPredictionsFromPredictions:(id)a3;
- (id)_heroClipPredictionsFromPredictions:(id)a3;
- (id)_heroPoiPredictionsFromPredictions:(id)a3;
- (id)processPredictions:(id)a3;
- (void)_addBundleIdsToPredictions:(id)a3;
- (void)_donateAppClipsToHeroClipManager:(id)a3;
- (void)_donateHeroAppsToHeroAppManager:(id)a3;
- (void)_donatePoiCategoriesToHeroPoiManager:(id)a3;
- (void)_setExpiry;
- (void)_setPredictionsInDefaults:(id)a3;
- (void)addConfirmForAppClipWithHeroAppPrediction:(id)a3 completion:(id)a4;
- (void)addHardRejectForAppClipWithHeroAppPrediction:(id)a3 completion:(id)a4;
- (void)addSoftRejectForAppClipWithHeroAppPrediction:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)donateHeroAppPredictions:(id)a3 completion:(id)a4;
- (void)donatePredictions:(id)a3 shouldOnlyDonateHeroPoiPredictions:(BOOL)a4;
- (void)feedbackScoreForAppClipWithHeroAppPrediction:(id)a3 completion:(id)a4;
- (void)getCurrentHeroPoiCategoryWithCompletion:(id)a3;
- (void)updateHeroAppManagerAndHeroClipManagerWithPredictions:(id)a3;
@end

@implementation ATXHeroDataServer

- (ATXHeroDataServer)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [(ATXHeroDataServer *)self initWithHeroClipManager:v3 heroAppManager:v4 tracker:v5];

  return v6;
}

- (ATXHeroDataServer)initWithHeroClipManager:(id)a3 heroAppManager:(id)a4 tracker:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(ATXHeroPoiManager);
  v12 = objc_opt_new();
  v13 = [MEMORY[0x277D41BF8] sharedInstance];
  v14 = [(ATXHeroDataServer *)self initWithHeroClipManager:v10 heroAppManager:v9 heroPoiManager:v11 tracker:v8 predictionsTracker:v12 locationManager:v13];

  return v14;
}

- (ATXHeroDataServer)initWithHeroClipManager:(id)a3 heroAppManager:(id)a4 heroPoiManager:(id)a5 tracker:(id)a6 predictionsTracker:(id)a7 locationManager:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  obj = a6;
  v18 = a6;
  v35 = a7;
  v19 = a7;
  v36 = a8;
  v37.receiver = self;
  v37.super_class = ATXHeroDataServer;
  v20 = [(ATXHeroDataServer *)&v37 init];
  if (v20)
  {
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v33 = a8;
    v21 = v19;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v26 = v25 = v15;
    v27 = dispatch_queue_create("ATXHeroServerQueue", v26);
    queue = v20->_queue;
    v20->_queue = v27;

    v15 = v25;
    v16 = v24;
    v17 = v23;
    v18 = v22;
    v19 = v21;
    objc_storeStrong(&v20->_heroClipManager, a3);
    objc_storeStrong(&v20->_heroAppManager, a4);
    objc_storeStrong(&v20->_heroPoiManager, a5);
    objc_storeStrong(&v20->_tracker, obj);
    objc_storeStrong(&v20->_predictionsTracker, v35);
    objc_storeStrong(&v20->_locationManager, v33);
    v29 = objc_alloc(MEMORY[0x277CCAE98]);
    v30 = [v29 initWithMachServiceName:*MEMORY[0x277D13200]];
    listener = v20->_listener;
    v20->_listener = v30;

    [(NSXPCListener *)v20->_listener setDelegate:v20];
    [(NSXPCListener *)v20->_listener resume];
  }

  return v20;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = ATXHeroDataServer;
  [(ATXHeroDataServer *)&v3 dealloc];
}

- (void)donateHeroAppPredictions:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_xpc();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_xpc();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "donateHeroAppPredictions", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = __atxlog_handle_hero();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v6 count];
    *buf = 136315394;
    v22 = "[ATXHeroDataServer donateHeroAppPredictions:completion:]";
    v23 = 2048;
    v24 = v13;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%s Received %lu hero app predictions", buf, 0x16u);
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__ATXHeroDataServer_donateHeroAppPredictions_completion___block_invoke;
  v19[3] = &unk_278596C10;
  v19[4] = self;
  v20 = v6;
  v15 = v6;
  dispatch_sync(queue, v19);
  if (v7)
  {
    v7[2](v7, 0);
  }

  v16 = __atxlog_handle_xpc();
  v17 = v16;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v17, OS_SIGNPOST_INTERVAL_END, v9, "donateHeroAppPredictions", " enableTelemetry=YES ", buf, 2u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addConfirmForAppClipWithHeroAppPrediction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = __atxlog_handle_xpc();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_xpc();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "addConfirmForAppClip", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = [(ATXHeroClipManager *)self->_heroClipManager feedback];
  LODWORD(v13) = 1.0;
  [v12 addConfirmForAppClipWithHeroAppPrediction:v7 weight:v13];

  if (v6)
  {
    v6[2](v6, 0);
  }

  v14 = __atxlog_handle_xpc();
  v15 = v14;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v15, OS_SIGNPOST_INTERVAL_END, v9, "addConfirmForAppClip", " enableTelemetry=YES ", v16, 2u);
  }
}

- (void)addSoftRejectForAppClipWithHeroAppPrediction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = __atxlog_handle_xpc();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_xpc();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "addSoftRejectForAppClip", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = [(ATXHeroClipManager *)self->_heroClipManager feedback];
  LODWORD(v13) = 1.0;
  [v12 addRejectForAppClipWithHeroAppPrediction:v7 weight:v13];

  if (v6)
  {
    v6[2](v6, 0);
  }

  v14 = __atxlog_handle_xpc();
  v15 = v14;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v15, OS_SIGNPOST_INTERVAL_END, v9, "addSoftRejectForAppClip", " enableTelemetry=YES ", v16, 2u);
  }
}

- (void)addHardRejectForAppClipWithHeroAppPrediction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = __atxlog_handle_xpc();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_xpc();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "addHardRejectForAppClip", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = [(ATXHeroClipManager *)self->_heroClipManager feedback];
  LODWORD(v13) = 1.0;
  [v12 addRejectForAppClipWithHeroAppPrediction:v7 weight:v13];

  if (v6)
  {
    v6[2](v6, 0);
  }

  v14 = __atxlog_handle_xpc();
  v15 = v14;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v15, OS_SIGNPOST_INTERVAL_END, v9, "addHardRejectForAppClip", " enableTelemetry=YES ", v16, 2u);
  }
}

- (void)feedbackScoreForAppClipWithHeroAppPrediction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = __atxlog_handle_xpc();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_xpc();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "feedbackScoreForAppClip", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = [(ATXHeroClipManager *)self->_heroClipManager feedback];
  [v12 feedbackScoreForAppClipWithHeroAppPrediction:v7];
  v14 = v13;

  if (v6)
  {
    v6[2](v6, 0, v14);
  }

  v15 = __atxlog_handle_xpc();
  v16 = v15;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v16, OS_SIGNPOST_INTERVAL_END, v9, "feedbackScoreForAppClip", " enableTelemetry=YES ", v17, 2u);
  }
}

- (void)getCurrentHeroPoiCategoryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = __atxlog_handle_xpc();
  v6 = os_signpost_id_generate(v5);

  v7 = __atxlog_handle_xpc();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "getCurrentPoiCategory", " enableTelemetry=YES ", buf, 2u);
  }

  v9 = [(ATXHeroPoiManager *)self->_heroPoiManager currentPoiCategory];
  v4[2](v4, v9, 0);

  v10 = __atxlog_handle_xpc();
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_END, v6, "getCurrentPoiCategory", " enableTelemetry=YES ", v12, 2u);
  }
}

- (id)processPredictions:(id)a3
{
  v4 = a3;
  v5 = [(ATXLocationManagerProtocol *)self->_locationManager getCurrentLocation];
  if (v5)
  {
    v6 = [(ATXHeroDataServer *)self _filterPredictions:v4 currentLocation:v5];

    v7 = [ATXHeroDataServerHelper heroAppPredictionsSortedByDistance:v6 currentLocation:v5];

    [(ATXHeroDataServer *)self _addBundleIdsToPredictions:v7];
    v4 = v7;
    v8 = v4;
  }

  else
  {
    v9 = __atxlog_handle_hero();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXHeroDataServer processPredictions:v9];
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)donatePredictions:(id)a3 shouldOnlyDonateHeroPoiPredictions:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ATXHeroDataServer *)self _heroPoiPredictionsFromPredictions:v6];
  if (!v4)
  {
    v9 = [(ATXHeroDataServer *)self _heroAppPredictionsFromPredictions:v6];
    v10 = [(ATXHeroDataServer *)self _heroClipPredictionsFromPredictions:v6];
    v11 = [v6 count];
    v12 = [(ATXHeroDataServer *)self _didPredictionsChange:v6];
    if (v12 || !v11)
    {
      [(ATXHeroDataServer *)self _donateAppClipsToHeroClipManager:v10];
      if ([v10 count])
      {
        v16 = MEMORY[0x277CBEBF8];
        v17 = self;
      }

      else
      {
        v17 = self;
        v16 = v9;
      }

      [(ATXHeroDataServer *)v17 _donateHeroAppsToHeroAppManager:v16];
      [(ATXHeroDataServer *)self _setPredictionsInDefaults:v6];
      if (v11)
      {
        [(ATXHeroDataServer *)self _setExpiry];
      }

      if (v12)
      {
        [(ATXHeroDataServer *)self _donatePoiCategoriesToHeroPoiManager:v7];
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v13 = __atxlog_handle_hero();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        v14 = "Not sending POI categories to blending, since nil predictions were recently donated.";
        v15 = v19;
        goto LABEL_23;
      }
    }

    else
    {
      v13 = __atxlog_handle_hero();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 0;
        v14 = "Not sending predictions to blending, since same predictions were recently donated.";
        v15 = &v18;
LABEL_23:
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
      }
    }

    goto LABEL_25;
  }

  v8 = __atxlog_handle_hero();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "The user is in a location where we only donate POI category predictions.", buf, 2u);
  }

  if (![(ATXHeroDataServer *)self _didPredictionsChange:v7])
  {
    v9 = __atxlog_handle_hero();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "The same POI category prediction already donated. Not donating another prediction of the same category", v20, 2u);
    }

    goto LABEL_26;
  }

  [(ATXHeroDataServer *)self _setPredictionsInDefaults:v7];
  if ([v7 count])
  {
    [(ATXHeroDataServer *)self _setExpiry];
  }

  [(ATXHeroDataServer *)self _donatePoiCategoriesToHeroPoiManager:v7];
LABEL_27:
}

- (void)updateHeroAppManagerAndHeroClipManagerWithPredictions:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(ATXLocationManagerProtocol *)self->_locationManager locationOfInterestAtCurrentLocation];
  v6 = __atxlog_handle_hero();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 136315394;
    *&v34[4] = "[ATXHeroDataServer updateHeroAppManagerAndHeroClipManagerWithPredictions:]";
    *&v34[12] = 2112;
    *&v34[14] = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%s Location of Interest: %@", v34, 0x16u);
  }

  if (!v5 || [v5 type] == -1)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = [v5 type] != 3;
    v8 = 1;
  }

  v9 = [(ATXLocationManagerProtocol *)self->_locationManager isNearFrequentLocationOfInterest];
  v10 = +[ATXHeroDataServerHelper canPredictClipsGivenRecentMotion];
  v11 = [(ATXHeroDataServer *)self heroAppAndClipPredictionsAreEligibleGivenIsMoving:!v10 isNearKnownTypeLOI:v8 isNearFrequentLOI:v9];
  v12 = [(ATXHeroDataServer *)self heroPoiPredictionsAreEligibleGivenIsMoving:!v10 isNearKnownTypeLOIExcludingGym:v7 isNearFrequentLOI:v9];
  if ([MEMORY[0x277D42590] isInternalBuild])
  {
    v13 = *MEMORY[0x277CEBDC8];
    v34[0] = 0;
    if (CFPreferencesGetAppBooleanValue(v13, *MEMORY[0x277CEBD00], v34))
    {
      v14 = __atxlog_handle_hero();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Defaults for OverrideHeroAppPredictionEligibility set to True: Overriding hero app and clip predictions location eligibility and setting to True", v34, 2u);
      }

      goto LABEL_14;
    }
  }

  if (v11)
  {
    if (v12)
    {
LABEL_14:
      v15 = 0;
LABEL_27:
      v22 = 1;
LABEL_39:
      v29 = [(ATXHeroDataServer *)self processPredictions:v4, *v34, *&v34[16]];

      [(ATXHeroDataServer *)self donatePredictions:v29 shouldOnlyDonateHeroPoiPredictions:v22 & v15];
      v4 = v29;
      goto LABEL_40;
    }
  }

  else
  {
    v16 = __atxlog_handle_hero();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"YES";
      if (v10)
      {
        v18 = @"NO";
      }

      else
      {
        v18 = @"YES";
      }

      if (v8)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      *v34 = 138412802;
      *&v34[4] = v18;
      *&v34[12] = 2112;
      *&v34[14] = v19;
      if (!v9)
      {
        v17 = @"NO";
      }

      *&v34[22] = 2112;
      v35 = v17;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Clearing Hero App and Clip Predictions because the person is moving, or is near a known LOI, or is near a frequently visited LOI. isMoving: %@, isNearKnownTypeLOI: %@, isNearFrequentLOI: %@", v34, 0x20u);
    }

    v20 = objc_opt_new();
    [(ATXHeroDataServer *)self _donateHeroAppsToHeroAppManager:v20];

    v21 = objc_opt_new();
    [(ATXHeroDataServer *)self _donateAppClipsToHeroClipManager:v21];

    if (v12)
    {
      v15 = 1;
      goto LABEL_27;
    }
  }

  v23 = __atxlog_handle_hero();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = @"YES";
    if (v10)
    {
      v25 = @"NO";
    }

    else
    {
      v25 = @"YES";
    }

    if (!v7)
    {
      v24 = @"NO";
    }

    *v34 = 138412546;
    *&v34[4] = v25;
    *&v34[12] = 2112;
    *&v34[14] = v24;
    _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "Clearing Hero POI Predictions because the person is moving, or is near a known LOI excluding gym. isMoving: %@, isNearKnownTypeLOIExcludingGym: %@", v34, 0x16u);
  }

  v26 = objc_opt_new();
  v27 = [(ATXHeroDataServer *)self _didPredictionsChange:v26];

  if (v27)
  {
    v28 = objc_opt_new();
    [(ATXHeroDataServer *)self _donatePoiCategoriesToHeroPoiManager:v28];
  }

  if (v11)
  {
    v15 = 0;
    v22 = 0;
    goto LABEL_39;
  }

  v31 = objc_opt_new();
  v32 = [(ATXHeroDataServer *)self _didPredictionsChange:v31];

  if (v32)
  {
    v33 = objc_opt_new();
    [(ATXHeroDataServer *)self _setPredictionsInDefaults:v33];
  }

LABEL_40:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_donateAppClipsToHeroClipManager:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __atxlog_handle_hero();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 description];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Sending app clip predictions to App Clips manager. Predictions: %@", &v8, 0xCu);
  }

  [(ATXHeroClipManager *)self->_heroClipManager donateAppClipsWithHeroAppPredictions:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_donateHeroAppsToHeroAppManager:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __atxlog_handle_hero();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 description];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Sending hero app predictions to Hero App Manager. Predictions: %@", &v8, 0xCu);
  }

  [(ATXHeroAppManager *)self->_heroAppManager donateHeroAppPredictions:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_donatePoiCategoriesToHeroPoiManager:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __atxlog_handle_hero();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 description];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Sending hero poi predictions to Hero POI Manager. Predictions: %@", &v8, 0xCu);
  }

  [(ATXHeroPoiManager *)self->_heroPoiManager donateHeroPoiPredictions:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_filterPredictions:(id)a3 currentLocation:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v7)
  {
    v8 = [ATXHeroDataServerHelper inRadiusPredictionsFrom:v6 currentLocation:v7];

    v9 = __atxlog_handle_hero();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = [v8 count];
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Left with %lu hero app predictions after removing out of radius predictions.", &v14, 0xCu);
    }

    v6 = v8;
    v10 = v6;
  }

  else
  {
    v11 = __atxlog_handle_hero();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Empty location received while applying radius filter. Clearing predictions.", &v14, 2u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_addBundleIdsToPredictions:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [ATXHeroDataServerHelper bundleIdForPrediction:v10, v13];
        [v10 setBundleId:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_heroAppPredictionsFromPredictions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = *MEMORY[0x277D131F8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 bundleId];
        v14 = [v13 isEqualToString:v10];

        if ((v14 & 1) == 0)
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_heroClipPredictionsFromPredictions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = *MEMORY[0x277D131F8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 bundleId];
        if ([v13 isEqualToString:v10])
        {
          v14 = [v12 urlHash];

          if (v14)
          {
            [v5 addObject:v12];
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_heroPoiPredictionsFromPredictions:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 poiCategory];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 poiCategory];
          v15 = [v14 isEqualToString:&stru_2839A6058];

          if ((v15 & 1) == 0)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_didPredictionsChange:(id)a3
{
  v3 = self;
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  LOBYTE(v3) = [(ATXHeroPredictionsTracker *)v3->_predictionsTracker didPredictionsChange:v5];

  return v3;
}

- (void)_setPredictionsInDefaults:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(ATXHeroPredictionsTracker *)self->_predictionsTracker setPredictionsInDefaults:v5];
}

- (void)_setExpiry
{
  v3 = __atxlog_handle_hero();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Setting hero expiry", buf, 2u);
  }

  v4 = +[ATXHeroAndClipConstants sharedInstance];
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = *MEMORY[0x277D86250];
  [v4 heroAppPredictionExpirationInterval];
  xpc_dictionary_set_int64(v5, v6, v7);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], 60);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_string(v5, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __31__ATXHeroDataServer__setExpiry__block_invoke;
  handler[3] = &unk_278598500;
  handler[4] = self;
  xpc_activity_register("com.apple.duetexpertd.expire-hero", v5, handler);
}

void __31__ATXHeroDataServer__setExpiry__block_invoke(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) == 2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__ATXHeroDataServer__setExpiry__block_invoke_2;
    block[3] = &unk_278596BB8;
    block[4] = v3;
    dispatch_sync(v4, block);
  }
}

void __31__ATXHeroDataServer__setExpiry__block_invoke_2(uint64_t a1)
{
  v2 = __atxlog_handle_hero();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Expiring hero apps since time interval has passed", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  [v3 _donateHeroAppsToHeroAppManager:v4];

  v5 = *(a1 + 32);
  v6 = objc_opt_new();
  [v5 _donateAppClipsToHeroClipManager:v6];

  v7 = *(a1 + 32);
  v8 = objc_opt_new();
  LODWORD(v7) = [v7 _didPredictionsChange:v8];

  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_new();
    [v9 _setPredictionsInDefaults:v10];

    v11 = *(a1 + 32);
    v12 = objc_opt_new();
    [v11 _donatePoiCategoriesToHeroPoiManager:v12];
  }

  else
  {
    v12 = __atxlog_handle_hero();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Not sending POI categories to blending, since nil predictions were recently donated.", v13, 2u);
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x277D13200];
  v7 = [v5 valueForEntitlement:*MEMORY[0x277D13200]];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = ATXHeroDataXPCInterface();
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:self];
    [v5 setInterruptionHandler:&__block_literal_global_171];
    [v5 setInvalidationHandler:&__block_literal_global_49_3];
    [v5 resume];
    v9 = 1;
  }

  else
  {
    v10 = __atxlog_handle_hero();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationDigestRankerServer *)v5 listener:v6 shouldAcceptNewConnection:v10];
    }

    v9 = 0;
  }

  return v9;
}

void __56__ATXHeroDataServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_hero();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Unexpected interruption on App Prediction ATXServer XPC interface", v1, 2u);
  }
}

void __56__ATXHeroDataServer_listener_shouldAcceptNewConnection___block_invoke_47()
{
  v0 = __atxlog_handle_hero();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Connection invalidated on App Prediction ATXServer XPC interface. Client went away.", v1, 2u);
  }
}

@end