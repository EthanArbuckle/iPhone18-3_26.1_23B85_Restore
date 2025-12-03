@interface AFCheckSRT
- (AFCheckSRT)init;
- (BOOL)trackEvent:(double)event forTurn:(id)turn;
- (void)dealloc;
- (void)didReceivePluginSelected:(id)selected;
@end

@implementation AFCheckSRT

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"SelectedFlowPlugin", 0);
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "[AFCheckSRT dealloc]";
    v9 = 2112;
    v10 = @"SelectedFlowPlugin";
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s No longer listening for '%@' notifications", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = AFCheckSRT;
  [(AFCheckSRT *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)didReceivePluginSelected:(id)selected
{
  v11 = *MEMORY[0x1E69E9840];
  selectedCopy = selected;
  v5 = selectedCopy;
  if (selectedCopy)
  {
    v6 = [selectedCopy objectForKey:@"FlowPlugin"];
    if (v6)
    {
      os_unfair_lock_lock(&self->_stateLock);
      objc_storeStrong(&self->_pluginSelected, v6);
      os_unfair_lock_unlock(&self->_stateLock);
    }
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[AFCheckSRT didReceivePluginSelected:]";
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Unexpected nil payload, no-op", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)trackEvent:(double)event forTurn:(id)turn
{
  v29[2] = *MEMORY[0x1E69E9840];
  turnCopy = turn;
  currentTurnID = self->_currentTurnID;
  if (currentTurnID && [(NSString *)currentTurnID isEqualToString:turnCopy])
  {
    v9 = 0;
  }

  else
  {
    objc_storeStrong(&self->_currentTurnID, turn);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v11 = v10;
    os_unfair_lock_lock(&self->_stateLock);
    pluginSelected = self->_pluginSelected;
    if (pluginSelected)
    {
      v13 = pluginSelected;
      v14 = self->_pluginSelected;
      self->_pluginSelected = 0;

      os_unfair_lock_unlock(&self->_stateLock);
      v28[0] = @"SRTTime";
      *&v15 = v11 - event;
      v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
      v28[1] = @"PluginMeasuringSRT";
      v29[0] = v16;
      v29[1] = v13;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

      v18 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v22 = 136315650;
        v23 = "[AFCheckSRT trackEvent:forTurn:]";
        v24 = 2112;
        v25 = @"com.apple.assistant.srt.stats";
        v26 = 2112;
        v27 = v17;
        _os_log_debug_impl(&dword_1912FE000, v18, OS_LOG_TYPE_DEBUG, "%s Posting notification '%@' with SRT stats: %@", &v22, 0x20u);
      }

      DistributedCenter = CFNotificationCenterGetDistributedCenter();
      v9 = 1;
      CFNotificationCenterPostNotification(DistributedCenter, @"com.apple.assistant.srt.stats", 0, v17, 1u);
    }

    else
    {
      os_unfair_lock_unlock(&self->_stateLock);
      v9 = 1;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v9;
}

- (AFCheckSRT)init
{
  v14 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = AFCheckSRT;
  v2 = [(AFCheckSRT *)&v9 init];
  if (v2)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v11 = "[AFCheckSRT init]";
      v12 = 2112;
      v13 = @"SelectedFlowPlugin";
      _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s Listening for '%@' notifications", buf, 0x16u);
    }

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v2, _FlowPluginSelected, @"SelectedFlowPlugin", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    pluginSelected = v2->_pluginSelected;
    v2->_pluginSelected = 0;

    currentTurnID = v2->_currentTurnID;
    v2->_currentTurnID = 0;

    v2->_stateLock._os_unfair_lock_opaque = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

@end