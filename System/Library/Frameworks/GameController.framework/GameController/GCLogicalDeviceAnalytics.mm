@interface GCLogicalDeviceAnalytics
- (GCLogicalDeviceAnalytics)initWithAnonymousIdentifier:(id)a3 bundleIdentifier:(id)a4 productCategory:(id)a5;
- (double)sessionActiveDuration;
- (double)sessionTotalDuration;
- (id)description;
- (void)flushSessionAndSendCAEvent;
- (void)pauseSession;
- (void)resumeSession;
@end

@implementation GCLogicalDeviceAnalytics

- (GCLogicalDeviceAnalytics)initWithAnonymousIdentifier:(id)a3 bundleIdentifier:(id)a4 productCategory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = GCLogicalDeviceAnalytics;
  v12 = [(GCLogicalDeviceAnalytics *)&v16 init];
  if (v12)
  {
    v13 = [MEMORY[0x1E695DF70] array];
    sessionIntervals = v12->_sessionIntervals;
    v12->_sessionIntervals = v13;

    objc_storeStrong(&v12->_bundleID, a4);
    objc_storeStrong(&v12->_productCategory, a5);
    objc_storeStrong(&v12->_controllerID, a3);
    if (!v12->_bundleID)
    {
      v12->_bundleID = @"N/A";
    }

    if (!v12->_productCategory)
    {
      v12->_productCategory = @"N/A";
    }

    if (!v12->_controllerID)
    {
      v12->_controllerID = @"N/A";
    }
  }

  return v12;
}

- (double)sessionActiveDuration
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_sessionIntervals;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * i) duration];
        v6 = v6 + v8;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (double)sessionTotalDuration
{
  if (!self->_firstSessionStartTime)
  {
    return 0.0;
  }

  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  firstSessionStartTime = self->_firstSessionStartTime;
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v3 initWithStartDate:firstSessionStartTime endDate:v5];
  [v6 duration];
  v8 = v7;

  return v8;
}

- (void)resumeSession
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = getGCAnalyticsLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v2, v3, "Resume session - %@", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pauseSession
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = getGCAnalyticsLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v2, v3, "Pause session - %@", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)flushSessionAndSendCAEvent
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = getGCAnalyticsLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8();
    _os_log_error_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_ERROR, "%@ - ERROR! Attempting to flush a session that has already been flushed. Create a new devie analytics instance instead.", v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

id __54__GCLogicalDeviceAnalytics_flushSessionAndSendCAEvent__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v15 = *(v2 + 40);
  v14[0] = @"bundleID";
  v14[1] = @"productCategory";
  v16 = *(v2 + 32);
  v14[2] = @"controllerID";
  v14[3] = @"sessionTotalDuration";
  v3 = MEMORY[0x1E696AD98];
  [v2 sessionTotalDuration];
  LODWORD(v5) = llround(v4);
  v6 = [v3 numberWithInt:v5];
  v17 = v6;
  v14[4] = @"sessionActionDuration";
  v7 = MEMORY[0x1E696AD98];
  [*(a1 + 32) sessionActiveDuration];
  LODWORD(v9) = llround(v8);
  v10 = [v7 numberWithInt:v9];
  v18 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(GCLogicalDeviceAnalytics *)self controllerID];
  v6 = [(GCLogicalDeviceAnalytics *)self productCategory];
  v7 = [(GCLogicalDeviceAnalytics *)self bundleID];
  [(GCLogicalDeviceAnalytics *)self sessionTotalDuration];
  v9 = v8;
  [(GCLogicalDeviceAnalytics *)self sessionActiveDuration];
  v11 = [v3 stringWithFormat:@"<%@ for %@ (%@) - %@, total = %f, active = %f>", v4, v5, v6, v7, v9, v10];

  return v11;
}

@end