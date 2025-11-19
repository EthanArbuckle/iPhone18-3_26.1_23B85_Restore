@interface ATXModeConfigurationUIFlowLogging
- (ATXModeConfigurationUIFlowLogging)init;
- (ATXModeConfigurationUIFlowLogging)initWithModeConfigurationUIFlowLoggingBiomeStream:(id)a3;
- (void)logModeConfigurationChangesForModeUUID:(id)a3 modeConfigurationUI:(int)a4 modeConfigurationEntityType:(int)a5 modeConfigurationType:(int64_t)a6 previousEntityIdentifiers:(id)a7 suggestedEntityIdentifiers:(id)a8 candidateEntityIdentifiers:(id)a9 currentEntityIdentifiers:(id)a10;
- (void)logModeConfigurationChangesOnboardingDismissedForModeUUID:(id)a3;
@end

@implementation ATXModeConfigurationUIFlowLogging

- (ATXModeConfigurationUIFlowLogging)initWithModeConfigurationUIFlowLoggingBiomeStream:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ATXModeConfigurationUIFlowLogging;
  v6 = [(ATXModeConfigurationUIFlowLogging *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeConfigurationUIFlowLoggingBiomeStream, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("ATXModeConfigurationUIFlowLogging.queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

- (ATXModeConfigurationUIFlowLogging)init
{
  v3 = objc_opt_new();
  v4 = [(ATXModeConfigurationUIFlowLogging *)self initWithModeConfigurationUIFlowLoggingBiomeStream:v3];

  return v4;
}

- (void)logModeConfigurationChangesForModeUUID:(id)a3 modeConfigurationUI:(int)a4 modeConfigurationEntityType:(int)a5 modeConfigurationType:(int64_t)a6 previousEntityIdentifiers:(id)a7 suggestedEntityIdentifiers:(id)a8 candidateEntityIdentifiers:(id)a9 currentEntityIdentifiers:(id)a10
{
  v36 = *&a4;
  v37 = *&a5;
  v54 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v19 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v35 = self;
    v20 = [v14 UUIDString];
    if (v36 >= 4)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v36];
    }

    else
    {
      v21 = off_1E80C0E30[v36];
    }

    v22 = v21;
    v34 = v14;
    if (v37 >= 3)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v37];
    }

    else
    {
      v23 = off_1E80C0E50[v37];
    }

    NSStringForATXModeConfigurationType(a6);
    v25 = v24 = a6;
    *buf = 138414082;
    v39 = v20;
    v40 = 2112;
    v41 = v22;
    v42 = 2112;
    v43 = v23;
    v44 = 2112;
    v45 = v15;
    v46 = 2112;
    v47 = v16;
    v48 = 2112;
    v49 = v17;
    v50 = 2112;
    v51 = v18;
    v52 = 2112;
    v53 = v25;
    _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "ModeConfigurationUIFlow logging returned from preferences: dndModeUUID: %@ modeConfigurationUI: %@ modeConfigurationEntityType: %@ previousEntityIdentifiers: %@ suggestedEntityIdentifiers: %@ candidateEntityIdentifiers: %@ currentEntityIdentifiers: %@ modeConfigurationType: %@", buf, 0x52u);

    a6 = v24;
    v14 = v34;
    self = v35;
  }

  if (v16)
  {
    if (v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v26 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [ATXModeConfigurationUIFlowLogging logModeConfigurationChangesForModeUUID:modeConfigurationUI:modeConfigurationEntityType:modeConfigurationType:previousEntityIdentifiers:suggestedEntityIdentifiers:candidateEntityIdentifiers:currentEntityIdentifiers:];
    }

    if (v17)
    {
LABEL_11:
      if (v15)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  v27 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    [ATXModeConfigurationUIFlowLogging logModeConfigurationChangesForModeUUID:modeConfigurationUI:modeConfigurationEntityType:modeConfigurationType:previousEntityIdentifiers:suggestedEntityIdentifiers:candidateEntityIdentifiers:currentEntityIdentifiers:];
  }

  if (v15)
  {
LABEL_12:
    if (v18)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_20:
  v28 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    [ATXModeConfigurationUIFlowLogging logModeConfigurationChangesForModeUUID:modeConfigurationUI:modeConfigurationEntityType:modeConfigurationType:previousEntityIdentifiers:suggestedEntityIdentifiers:candidateEntityIdentifiers:currentEntityIdentifiers:];
  }

  if (!v18)
  {
LABEL_23:
    v29 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [ATXModeConfigurationUIFlowLogging logModeConfigurationChangesForModeUUID:modeConfigurationUI:modeConfigurationEntityType:modeConfigurationType:previousEntityIdentifiers:suggestedEntityIdentifiers:candidateEntityIdentifiers:currentEntityIdentifiers:];
    }
  }

LABEL_26:
  v30 = [ATXModeConfigurationUIFlowLoggingEvent alloc];
  v31 = [MEMORY[0x1E695DF00] now];
  v32 = [(ATXModeConfigurationUIFlowLoggingEvent *)v30 initWithDndModeUUID:v14 modeConfigurationUI:v36 modeConfigurationEntityType:v37 modeConfigurationType:a6 suggestedEntityIdentifiers:v16 candidateEntityIdentifiers:v17 previousEntityIdentifiers:v15 currentEntityIdentifiers:v18 eventDate:v31];

  v33 = [(ATXModeConfigurationUIFlowLoggingBiomeStream *)self->_modeConfigurationUIFlowLoggingBiomeStream source];
  [v33 sendEvent:v32];
}

- (void)logModeConfigurationChangesOnboardingDismissedForModeUUID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__ATXModeConfigurationUIFlowLogging_logModeConfigurationChangesOnboardingDismissedForModeUUID___block_invoke;
  block[3] = &unk_1E80C0C90;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

void __95__ATXModeConfigurationUIFlowLogging_logModeConfigurationChangesOnboardingDismissedForModeUUID___block_invoke(uint64_t a1)
{
  v5 = +[ATXDNDModeConfigurationClient sharedInstance];
  v2 = [v5 dndModeForDNDModeWithUUID:*(a1 + 32)];
  v3 = objc_opt_new();
  [v3 setOnboardingOutcome:2];
  [v2 semanticType];
  v4 = DNDModeSemanticTypeToString();
  [v3 setModeSemanticType:v4];

  [v3 sendToCoreAnalytics];
}

@end