@interface ATXModeMetricsLogUploader
- (void)uploadFocusLogsToCoreAnalyticsWithActivity:(id)activity contactStore:(id)store;
- (void)uploadNotificationLogsToCoreAnalyticsWithTask:(id)task contactStore:(id)store;
@end

@implementation ATXModeMetricsLogUploader

- (void)uploadFocusLogsToCoreAnalyticsWithActivity:(id)activity contactStore:(id)store
{
  v154 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  storeCopy = store;
  didDefer = [activityCopy didDefer];
  v8 = __atxlog_handle_metrics();
  v9 = v8;
  if (!didDefer)
  {
    v12 = os_signpost_id_generate(v8);

    v13 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v152 = 138412290;
      v153 = v15;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_INFO, "%@ - Logging app session metrics", &v152, 0xCu);
    }

    v16 = __atxlog_handle_metrics();
    v17 = v16;
    v18 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.SessionMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v19 = objc_autoreleasePoolPush();
    v20 = objc_opt_new();
    [v20 logAppSessionMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v19);
    v21 = __atxlog_handle_metrics();
    v22 = v21;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v22, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.SessionMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    didDefer2 = [activityCopy didDefer];
    v9 = __atxlog_handle_metrics();
    v24 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (didDefer2)
    {
      if (!v24)
      {
        goto LABEL_79;
      }

LABEL_76:
      v83 = objc_opt_class();
      v11 = NSStringFromClass(v83);
      v152 = 138412290;
      v153 = v11;
      goto LABEL_77;
    }

    if (v24)
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v152 = 138412290;
      v153 = v26;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "%@ - Logging mode transition metrics", &v152, 0xCu);
    }

    v27 = __atxlog_handle_metrics();
    v28 = v27;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.TransitionMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v29 = objc_autoreleasePoolPush();
    v30 = objc_opt_new();
    [v30 uploadLogsToCoreAnalyticsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v29);
    v31 = __atxlog_handle_metrics();
    v32 = v31;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v32, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.TransitionMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    didDefer3 = [activityCopy didDefer];
    v9 = __atxlog_handle_metrics();
    v34 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (didDefer3)
    {
      if (!v34)
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    if (v34)
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v152 = 138412290;
      v153 = v36;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "%@ - Logging mode configuration metrics", &v152, 0xCu);
    }

    v37 = __atxlog_handle_metrics();
    v38 = v37;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.ModeConfigurations", " enableTelemetry=YES ", &v152, 2u);
    }

    v39 = objc_autoreleasePoolPush();
    v40 = objc_opt_new();
    [v40 logModeConfigurationsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v39);
    v41 = __atxlog_handle_metrics();
    v42 = v41;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v42, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.ModeConfigurations", " enableTelemetry=YES ", &v152, 2u);
    }

    didDefer4 = [activityCopy didDefer];
    v9 = __atxlog_handle_metrics();
    v44 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (didDefer4)
    {
      if (!v44)
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    if (v44)
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v152 = 138412290;
      v153 = v46;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "%@ - Logging notification adjacent suggestion metrics", &v152, 0xCu);
    }

    v47 = __atxlog_handle_metrics();
    v48 = v47;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v48, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.NotificationAdjacentSuggestions", " enableTelemetry=YES ", &v152, 2u);
    }

    v49 = objc_autoreleasePoolPush();
    v50 = objc_opt_new();
    [v50 logNotificationAdjacentSuggestionMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v49);
    v51 = __atxlog_handle_metrics();
    v52 = v51;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v52, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.NotificationAdjacentSuggestions", " enableTelemetry=YES ", &v152, 2u);
    }

    v53 = __atxlog_handle_metrics();
    v54 = v53;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.OnboardingSuggestions", " enableTelemetry=YES ", &v152, 2u);
    }

    v55 = objc_autoreleasePoolPush();
    v56 = objc_opt_new();
    [v56 logDigestOnboardingSuggestionMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v55);
    v57 = __atxlog_handle_metrics();
    v58 = v57;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v58, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.OnboardingSuggestions", " enableTelemetry=YES ", &v152, 2u);
    }

    v59 = __atxlog_handle_metrics();
    v60 = v59;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v60, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.OnboardingMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v61 = objc_autoreleasePoolPush();
    v62 = objc_opt_new();
    [v62 logDigestOnboardingMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v61);
    v63 = __atxlog_handle_metrics();
    v64 = v63;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v64, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.OnboardingMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v65 = __atxlog_handle_metrics();
    v66 = v65;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v66, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.OnboardingAppSelectionMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v67 = objc_autoreleasePoolPush();
    v68 = objc_opt_new();
    [v68 logDigestOnboardingAppSelectionMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v67);
    v69 = __atxlog_handle_metrics();
    v70 = v69;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v70, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.OnboardingAppSelectionMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    didDefer5 = [activityCopy didDefer];
    v9 = __atxlog_handle_metrics();
    v72 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (didDefer5)
    {
      if (!v72)
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    if (v72)
    {
      v73 = objc_opt_class();
      v74 = NSStringFromClass(v73);
      v152 = 138412290;
      v153 = v74;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "%@ - Logging device usage metrics", &v152, 0xCu);
    }

    v75 = __atxlog_handle_metrics();
    v76 = v75;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v76, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.DeviceUsage", " enableTelemetry=YES ", &v152, 2u);
    }

    v77 = objc_autoreleasePoolPush();
    v78 = objc_opt_new();
    [v78 logDeviceUsageWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v77);
    v79 = __atxlog_handle_metrics();
    v80 = v79;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v80, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.DeviceUsage", " enableTelemetry=YES ", &v152, 2u);
    }

    didDefer6 = [activityCopy didDefer];
    v9 = __atxlog_handle_metrics();
    v82 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (didDefer6)
    {
      if (!v82)
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    if (v82)
    {
      v85 = objc_opt_class();
      v86 = NSStringFromClass(v85);
      v152 = 138412290;
      v153 = v86;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "%@ - Logging missed notification ranking metrics", &v152, 0xCu);
    }

    v87 = __atxlog_handle_metrics();
    v88 = v87;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v87))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v88, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.MissedNotificationRanking", " enableTelemetry=YES ", &v152, 2u);
    }

    v89 = objc_autoreleasePoolPush();
    v90 = objc_opt_new();
    [v90 logMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v89);
    v91 = __atxlog_handle_metrics();
    v92 = v91;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v91))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v92, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.MissedNotificationRanking", " enableTelemetry=YES ", &v152, 2u);
    }

    v93 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
      v94 = objc_opt_class();
      v95 = NSStringFromClass(v94);
      v152 = 138412290;
      v153 = v95;
      _os_log_impl(&dword_2263AA000, v93, OS_LOG_TYPE_INFO, "%@ - Logging AppConfiguration metrics", &v152, 0xCu);
    }

    v96 = __atxlog_handle_metrics();
    v97 = v96;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v96))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v97, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.AppConfigurationMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v98 = objc_autoreleasePoolPush();
    v99 = objc_opt_new();
    [v99 logMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v98);
    v100 = __atxlog_handle_metrics();
    v101 = v100;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v100))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v101, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.AppConfigurationMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v102 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
    {
      v103 = objc_opt_class();
      v104 = NSStringFromClass(v103);
      v152 = 138412290;
      v153 = v104;
      _os_log_impl(&dword_2263AA000, v102, OS_LOG_TYPE_INFO, "%@ - Logging Home Screen Focus Suggestion metrics", &v152, 0xCu);
    }

    v105 = __atxlog_handle_metrics();
    v106 = v105;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v105))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v106, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.HomeScreenFocusSuggestionMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v107 = objc_autoreleasePoolPush();
    v108 = objc_opt_new();
    [v108 logHomeScreenFocusSuggestionMetrics];

    objc_autoreleasePoolPop(v107);
    v109 = __atxlog_handle_metrics();
    v110 = v109;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v109))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v110, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.HomeScreenFocusSuggestionMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v111 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
    {
      v112 = objc_opt_class();
      v113 = NSStringFromClass(v112);
      v152 = 138412290;
      v153 = v113;
      _os_log_impl(&dword_2263AA000, v111, OS_LOG_TYPE_INFO, "%@ - Logging Mode Setup Experience metrics", &v152, 0xCu);
    }

    v114 = __atxlog_handle_metrics();
    v115 = v114;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v114))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v115, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.ModeSetupExperienceMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v116 = objc_autoreleasePoolPush();
    v117 = objc_opt_new();
    [v117 logMetrics];

    objc_autoreleasePoolPop(v116);
    v118 = __atxlog_handle_metrics();
    v119 = v118;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v118))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v119, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.ModeSetupExperienceMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v120 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
    {
      v121 = objc_opt_class();
      v122 = NSStringFromClass(v121);
      v152 = 138412290;
      v153 = v122;
      _os_log_impl(&dword_2263AA000, v120, OS_LOG_TYPE_INFO, "%@ - Logging Focus Mode Setup Prediction metrics", &v152, 0xCu);
    }

    v123 = __atxlog_handle_metrics();
    v124 = v123;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v123))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v124, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.ModeSetupPredictionMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    v125 = objc_autoreleasePoolPush();
    v126 = objc_opt_new();
    [v126 logMetrics];

    objc_autoreleasePoolPop(v125);
    v127 = __atxlog_handle_metrics();
    v128 = v127;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v128, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.ModeSetupPredictionMetrics", " enableTelemetry=YES ", &v152, 2u);
    }

    didDefer7 = [activityCopy didDefer];
    v9 = __atxlog_handle_metrics();
    v130 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (didDefer7)
    {
      if (!v130)
      {
        goto LABEL_79;
      }

      v131 = objc_opt_class();
      v11 = NSStringFromClass(v131);
      v152 = 138412290;
      v153 = v11;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "%@ - Terminating due to XPC deferral", &v152, 0xCu);

      goto LABEL_78;
    }

    if (v130)
    {
      v132 = objc_opt_class();
      v133 = NSStringFromClass(v132);
      v152 = 138412290;
      v153 = v133;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "%@ - Logging mode configuration UI flow metrics and signals for apps and contacts", &v152, 0xCu);
    }

    v134 = __atxlog_handle_metrics();
    v135 = v134;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v134))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v135, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.UIFlow", " enableTelemetry=YES ", &v152, 2u);
    }

    v9 = objc_opt_new();
    v136 = objc_autoreleasePoolPush();
    v137 = [[ATXModeConfigurationUIFlowMetricLogger alloc] initWithFocusModeSignalsLogger:v9 contactStore:storeCopy];
    [(ATXModeConfigurationUIFlowMetricLogger *)v137 logModeConfigurationUIFlowMetricWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v136);
    v138 = __atxlog_handle_metrics();
    v139 = v138;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v138))
    {
      LOWORD(v152) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v139, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.UIFlow", " enableTelemetry=YES ", &v152, 2u);
    }

    didDefer8 = [activityCopy didDefer];
    v141 = __atxlog_handle_metrics();
    v142 = os_log_type_enabled(v141, OS_LOG_TYPE_INFO);
    if (didDefer8)
    {
      if (v142)
      {
LABEL_144:
        v150 = objc_opt_class();
        v151 = NSStringFromClass(v150);
        v152 = 138412290;
        v153 = v151;
        _os_log_impl(&dword_2263AA000, v141, OS_LOG_TYPE_INFO, "%@ - Terminating due to XPC deferral", &v152, 0xCu);
      }
    }

    else
    {
      if (v142)
      {
        v143 = objc_opt_class();
        v144 = NSStringFromClass(v143);
        v152 = 138412290;
        v153 = v144;
        _os_log_impl(&dword_2263AA000, v141, OS_LOG_TYPE_INFO, "%@ - Logging focus mode signals for Wigets", &v152, 0xCu);
      }

      v145 = __atxlog_handle_metrics();
      v146 = v145;
      if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v145))
      {
        LOWORD(v152) = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v146, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.WidgetSignals", " enableTelemetry=YES ", &v152, 2u);
      }

      v147 = objc_autoreleasePoolPush();
      [v9 logFocusModeWidgetSignalsWithXPCActivity:activityCopy];
      objc_autoreleasePoolPop(v147);
      v148 = __atxlog_handle_metrics();
      v149 = v148;
      if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v148))
      {
        LOWORD(v152) = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v149, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.WidgetSignals", " enableTelemetry=YES ", &v152, 2u);
      }

      if (![activityCopy didDefer])
      {
        goto LABEL_79;
      }

      v141 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
      {
        goto LABEL_144;
      }
    }

    goto LABEL_79;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v152 = 138412290;
    v153 = v11;
LABEL_77:
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "%@ - Terminating due to XPC deferral", &v152, 0xCu);
LABEL_78:
  }

LABEL_79:

  v84 = *MEMORY[0x277D85DE8];
}

- (void)uploadNotificationLogsToCoreAnalyticsWithTask:(id)task contactStore:(id)store
{
  v39 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  storeCopy = store;
  didDefer = [taskCopy didDefer];
  v8 = __atxlog_handle_metrics();
  v9 = v8;
  if (didDefer)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      v10 = "Notification metrics logging immediately deferred";
LABEL_4:
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, v10, &v37, 2u);
    }
  }

  else
  {
    v11 = os_signpost_id_generate(v8);

    v12 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v37 = 138412290;
      v38 = v14;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "%@ - Logging notification metrics", &v37, 0xCu);
    }

    v15 = __atxlog_handle_metrics();
    v16 = v15;
    v17 = v11 - 1;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(v37) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FocusMetricsLogging.NotificationTelemetry", " enableTelemetry=YES ", &v37, 2u);
    }

    v18 = objc_autoreleasePoolPush();
    v19 = [[ATXNotificationTelemetryLogger alloc] initWithContactStore:storeCopy];
    [(ATXNotificationTelemetryLogger *)v19 logNotificationMetricsWithTask:taskCopy];

    objc_autoreleasePoolPop(v18);
    v20 = __atxlog_handle_metrics();
    v21 = v20;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(v37) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v21, OS_SIGNPOST_INTERVAL_END, v11, "FocusMetricsLogging.NotificationTelemetry", " enableTelemetry=YES ", &v37, 2u);
    }

    didDefer2 = [taskCopy didDefer];
    v23 = __atxlog_handle_metrics();
    v9 = v23;
    if (didDefer2)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v37 = 138412290;
        v38 = v25;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "%@ - Deferring after notification telemetry logging", &v37, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v37 = 138412290;
        v38 = v27;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%@ - Logging notification setting metrics", &v37, 0xCu);
      }

      v28 = __atxlog_handle_metrics();
      v29 = v28;
      if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        LOWORD(v37) = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FocusMetricsLogging.NotificationSettings", " enableTelemetry=YES ", &v37, 2u);
      }

      v30 = objc_autoreleasePoolPush();
      v31 = objc_opt_new();
      [v31 logNotificationSettingsMetrics];

      objc_autoreleasePoolPop(v30);
      v32 = __atxlog_handle_metrics();
      v33 = v32;
      if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        LOWORD(v37) = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v33, OS_SIGNPOST_INTERVAL_END, v11, "FocusMetricsLogging.NotificationSettings", " enableTelemetry=YES ", &v37, 2u);
      }

      setDone = [taskCopy setDone];
      v35 = __atxlog_handle_metrics();
      v9 = v35;
      if (setDone)
      {
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        LOWORD(v37) = 0;
        v10 = "Notification metrics logging task successfully set to DONE";
        goto LABEL_4;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [ATXModeMetricsLogUploader uploadNotificationLogsToCoreAnalyticsWithTask:v9 contactStore:?];
      }
    }
  }

LABEL_29:

  v36 = *MEMORY[0x277D85DE8];
}

@end