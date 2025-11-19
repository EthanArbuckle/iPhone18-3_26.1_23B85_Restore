@interface ADLogManager
+ (id)defaultLoggerWithName:(id)a3;
+ (id)defaults;
- (ADLogManager)initWithHandlers:(id)a3;
- (id)visualLoggerPrefices;
- (int64_t)addHandler:(id)a3;
- (int64_t)setHostName:(id)a3;
- (int64_t)setLogFolder:(id)a3;
- (uint64_t)logMatrix4x3:(__n128)a3 name:(__n128)a4 priority:(__n128)a5;
- (uint64_t)logMatrix4x4:(__n128)a3 name:(__n128)a4 priority:(__n128)a5;
- (void)applyConfigurationToNewHandler:(id)a3;
- (void)disable:(id)a3;
- (void)disableAll;
- (void)disableFileLogging;
- (void)disableVisualLogging;
- (void)enable:(id)a3;
- (void)enableAll;
- (void)enableFileLogging;
- (void)enableVisualLogging;
- (void)logCalibration:(id)a3 name:(const char *)a4 priority:(unint64_t)a5;
- (void)logCalibration:(id)a3 name:(const char *)a4 priority:(unint64_t)a5 timestamp:(double)a6;
- (void)logDictionary:(id)a3 name:(const char *)a4 priority:(unint64_t)a5;
- (void)logDictionary:(id)a3 name:(const char *)a4 priority:(unint64_t)a5 timestamp:(double)a6;
- (void)logMatrix4x3:(double)a3 name:(double)a4 priority:(double)a5 timestamp:(double)a6;
- (void)logMatrix4x4:(__n128)a3 name:(__n128)a4 priority:(__n128)a5 timestamp:(double)a6;
- (void)logPixelBuffer:(__CVBuffer *)a3 name:(const char *)a4 priority:(unint64_t)a5;
- (void)logPixelBuffer:(__CVBuffer *)a3 name:(const char *)a4 priority:(unint64_t)a5 timestamp:(double)a6;
- (void)logPointCloud:(id)a3 name:(const char *)a4 priority:(unint64_t)a5;
- (void)logPointCloud:(id)a3 name:(const char *)a4 priority:(unint64_t)a5 timestamp:(double)a6;
- (void)logRawBuffer:(void *)a3 size:(unint64_t)a4 name:(const char *)a5 priority:(unint64_t)a6;
- (void)logRawBuffer:(void *)a3 size:(unint64_t)a4 name:(const char *)a5 priority:(unint64_t)a6 timestamp:(double)a7;
- (void)logString:(id)a3 name:(const char *)a4 priority:(unint64_t)a5;
- (void)logString:(id)a3 name:(const char *)a4 priority:(unint64_t)a5 timestamp:(double)a6;
- (void)processConfigurationChange:(id)a3;
- (void)setHumanReadableFormat:(BOOL)a3;
- (void)toggleByClass:(Class)a3 enable:(BOOL)a4;
- (void)toggleHandler:(id)a3 enable:(BOOL)a4;
- (void)updateTimestampWithOverride:(double *)a3;
@end

@implementation ADLogManager

- (void)applyConfigurationToNewHandler:(id)a3
{
  v6 = a3;
  if (-[NSSet containsObject:](self->_enabledLoggerOverrideSet, "containsObject:", @"vz") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || -[NSSet containsObject:](self->_enabledLoggerOverrideSet, "containsObject:", @"fl") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (enabledLoggerOverrideSet = self->_enabledLoggerOverrideSet, [v6 name], v5 = objc_claimAutoreleasedReturnValue(), LODWORD(enabledLoggerOverrideSet) = -[NSSet containsObject:](enabledLoggerOverrideSet, "containsObject:", v5), v5, enabledLoggerOverrideSet))
  {
    [(ADLogManager *)self toggleHandler:v6 enable:1];
  }
}

- (void)processConfigurationChange:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([v4 isEqualToString:kADDeviceConfigurationKeyLoggingHostName])
  {
    v6 = [objc_opt_class() defaults];
    v7 = [v6 stringForKey:v4];
    [(ADLogManager *)v5 setHostName:v7];
  }

  if ([v4 isEqualToString:kADDeviceConfigurationKeyLogFolder])
  {
    v8 = [objc_opt_class() defaults];
    v9 = [v8 stringForKey:v4];
    [(ADLogManager *)v5 setLogFolder:v9];
  }

  if ([v4 isEqualToString:kADDeviceConfigurationKeyLoggingPriorityForceAll])
  {
    v10 = [objc_opt_class() defaults];
    v5->_forceAllPriorities = [v10 BOOLForKey:kADDeviceConfigurationKeyLoggingPriorityForceAll];
  }

  if ([v4 isEqualToString:kADDeviceConfigurationKeyLoggingForceCounterAsTimestamp])
  {
    v11 = [objc_opt_class() defaults];
    v5->_forceCounterAsTimestamp = [v11 BOOLForKey:kADDeviceConfigurationKeyLoggingForceCounterAsTimestamp];
  }

  if ([v4 isEqualToString:kADDeviceConfigurationKeyEnabledLoggers])
  {
    v12 = [objc_opt_class() defaults];
    v13 = [v12 listForKey:v4];

    if (v13)
    {
      [MEMORY[0x277CBEB98] setWithArray:v13];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v14 = ;
    v15 = [(NSSet *)v5->_enabledLoggerOverrideSet mutableCopy];
    [v15 minusSet:v14];
    if ([v15 containsObject:@"vz"])
    {
      [(ADLogManager *)v5 disableVisualLogging];
    }

    if ([v15 containsObject:@"fl"])
    {
      [(ADLogManager *)v5 disableFileLogging];
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v17)
      {
        v18 = *v31;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [(ADLogManager *)v5 disable:*(*(&v30 + 1) + 8 * i)];
          }

          v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v17);
      }
    }

    v20 = [(NSSet *)v14 mutableCopy];
    [v20 minusSet:v5->_enabledLoggerOverrideSet];
    if ([v20 containsObject:@"vz"])
    {
      [(ADLogManager *)v5 enableVisualLogging];
    }

    if ([v20 containsObject:@"fl"])
    {
      [(ADLogManager *)v5 enableFileLogging];
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v22)
      {
        v23 = *v27;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v27 != v23)
            {
              objc_enumerationMutation(v21);
            }

            [(ADLogManager *)v5 enable:*(*(&v26 + 1) + 8 * j), v26];
          }

          v22 = [v21 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v22);
      }
    }

    enabledLoggerOverrideSet = v5->_enabledLoggerOverrideSet;
    v5->_enabledLoggerOverrideSet = v14;
  }

  objc_sync_exit(v5);
}

- (void)logMatrix4x4:(__n128)a3 name:(__n128)a4 priority:(__n128)a5 timestamp:(double)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = a6;
  if (*(a1 + 8) >= 1 && (*(a1 + 80) >= a9 || *(a1 + 48) == 1))
  {
    [a1 updateTimestampWithOverride:{&v24, *&a2, *&a3, *&a4, *&a5}];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = *(a1 + 16);
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if ([v15 active])
          {
            [v15 logMatrix4x4:a8 name:v16 timestamp:{v17, v18, v19, v24}];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

- (void)logMatrix4x3:(double)a3 name:(double)a4 priority:(double)a5 timestamp:(double)a6
{
  if (*(a1 + 2) >= 1 && (*(a1 + 10) >= a8 || *(a1 + 48) == 1))
  {
    return [a1 logMatrix4x4:a3 name:a4 priority:a5 timestamp:a6];
  }

  return a1;
}

- (uint64_t)logMatrix4x3:(__n128)a3 name:(__n128)a4 priority:(__n128)a5
{
  if (*(result + 8) >= 1 && (*(result + 80) >= a8 || *(result + 48) == 1))
  {
    v8 = result;
    v11 = [MEMORY[0x277CCAC38] processInfo];
    [v11 systemUptime];
    v13 = v12;

    return [v8 logMatrix4x3:a7 name:a8 priority:v14 timestamp:{v15, v16, v17, v13}];
  }

  return result;
}

- (uint64_t)logMatrix4x4:(__n128)a3 name:(__n128)a4 priority:(__n128)a5
{
  if (*(result + 8) >= 1 && (*(result + 80) >= a8 || *(result + 48) == 1))
  {
    v8 = result;
    v11 = [MEMORY[0x277CCAC38] processInfo];
    [v11 systemUptime];
    v13 = v12;

    return [v8 logMatrix4x4:a7 name:a8 priority:v14 timestamp:{v15, v16, v17, v13}];
  }

  return result;
}

- (void)logDictionary:(id)a3 name:(const char *)a4 priority:(unint64_t)a5 timestamp:(double)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v20 = a6;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a5 || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&v20];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_handlers;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if ([v15 active])
          {
            [v15 logDictionary:v10 name:a4 timestamp:v20];
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)logDictionary:(id)a3 name:(const char *)a4 priority:(unint64_t)a5
{
  v11 = a3;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a5 || self->_forceAllPriorities))
  {
    v8 = [MEMORY[0x277CCAC38] processInfo];
    [v8 systemUptime];
    v10 = v9;

    [(ADLogManager *)self logDictionary:v11 name:a4 priority:a5 timestamp:v10];
  }
}

- (void)logCalibration:(id)a3 name:(const char *)a4 priority:(unint64_t)a5 timestamp:(double)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v20 = a6;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a5 || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&v20];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_handlers;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if ([v15 active])
          {
            [v15 logCalibration:v10 name:a4 timestamp:v20];
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)logCalibration:(id)a3 name:(const char *)a4 priority:(unint64_t)a5
{
  v11 = a3;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a5 || self->_forceAllPriorities))
  {
    v8 = [MEMORY[0x277CCAC38] processInfo];
    [v8 systemUptime];
    v10 = v9;

    [(ADLogManager *)self logCalibration:v11 name:a4 priority:a5 timestamp:v10];
  }
}

- (void)logRawBuffer:(void *)a3 size:(unint64_t)a4 name:(const char *)a5 priority:(unint64_t)a6 timestamp:(double)a7
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = a7;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a6 || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&v20];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_handlers;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if ([v15 active])
          {
            [v15 logRawBuffer:a3 size:a4 name:a5 timestamp:v20];
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)logRawBuffer:(void *)a3 size:(unint64_t)a4 name:(const char *)a5 priority:(unint64_t)a6
{
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a6 || self->_forceAllPriorities))
  {
    v11 = [MEMORY[0x277CCAC38] processInfo];
    [v11 systemUptime];
    v13 = v12;

    [(ADLogManager *)self logRawBuffer:a3 size:a4 name:a5 priority:a6 timestamp:v13];
  }
}

- (void)logString:(id)a3 name:(const char *)a4 priority:(unint64_t)a5 timestamp:(double)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v20 = a6;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a5 || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&v20];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_handlers;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if ([v15 active])
          {
            [v15 logString:v10 name:a4 timestamp:v20];
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)logString:(id)a3 name:(const char *)a4 priority:(unint64_t)a5
{
  v11 = a3;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a5 || self->_forceAllPriorities))
  {
    v8 = [MEMORY[0x277CCAC38] processInfo];
    [v8 systemUptime];
    v10 = v9;

    [(ADLogManager *)self logString:v11 name:a4 priority:a5 timestamp:v10];
  }
}

- (void)logPointCloud:(id)a3 name:(const char *)a4 priority:(unint64_t)a5 timestamp:(double)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v20 = a6;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a5 || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&v20];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_handlers;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if ([v15 active])
          {
            [v15 logPointCloud:v10 name:a4 timestamp:v20];
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)logPointCloud:(id)a3 name:(const char *)a4 priority:(unint64_t)a5
{
  v11 = a3;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a5 || self->_forceAllPriorities))
  {
    v8 = [MEMORY[0x277CCAC38] processInfo];
    [v8 systemUptime];
    v10 = v9;

    [(ADLogManager *)self logPointCloud:v11 name:a4 priority:a5 timestamp:v10];
  }
}

- (void)logPixelBuffer:(__CVBuffer *)a3 name:(const char *)a4 priority:(unint64_t)a5 timestamp:(double)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = a6;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a5 || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&v18];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = self->_handlers;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([v13 active])
          {
            [v13 logPixelBuffer:a3 name:a4 timestamp:v18];
          }
        }

        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)logPixelBuffer:(__CVBuffer *)a3 name:(const char *)a4 priority:(unint64_t)a5
{
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= a5 || self->_forceAllPriorities))
  {
    v9 = [MEMORY[0x277CCAC38] processInfo];
    [v9 systemUptime];
    v11 = v10;

    [(ADLogManager *)self logPixelBuffer:a3 name:a4 priority:a5 timestamp:v11];
  }
}

- (void)disableVisualLogging
{
  [(ADLogManager *)self toggleByClass:objc_opt_class() enable:0];
  v3 = objc_opt_class();

  [(ADLogManager *)self toggleByClass:v3 enable:0];
}

- (void)enableVisualLogging
{
  [(ADLogManager *)self toggleByClass:objc_opt_class() enable:1];
  v3 = objc_opt_class();

  [(ADLogManager *)self toggleByClass:v3 enable:1];
}

- (void)disableFileLogging
{
  v3 = objc_opt_class();

  [(ADLogManager *)self toggleByClass:v3 enable:0];
}

- (void)enableFileLogging
{
  v3 = objc_opt_class();

  [(ADLogManager *)self toggleByClass:v3 enable:1];
}

- (void)disable:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5->_handlers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v4 isEqualToString:v11];

        if (v12)
        {
          [(ADLogManager *)v5 toggleHandler:v10 enable:0];
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)enable:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5->_handlers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v4 isEqualToString:v11];

        if (v12)
        {
          [(ADLogManager *)v5 toggleHandler:v10 enable:1];
        }

        else
        {
          v13 = [v10 name];
          v14 = [v4 hasPrefix:v13];

          if (v14)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v10 setActive:1];
              ++v5->_activeHandlersCounter;
            }
          }
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)disableAll
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = v2->_handlers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(ADLogManager *)v2 toggleHandler:*(*(&v7 + 1) + 8 * v6++) enable:0, v7];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

- (void)enableAll
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = v2->_handlers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(ADLogManager *)v2 toggleHandler:*(*(&v7 + 1) + 8 * v6++) enable:1, v7];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

- (void)toggleByClass:(Class)a3 enable:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v5 = self;
  objc_sync_enter(v5);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5->_handlers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_isKindOfClass())
        {
          [(ADLogManager *)v5 toggleHandler:v10 enable:v4, v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)toggleHandler:(id)a3 enable:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (v4)
  {
    if (([v6 active] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 name];
        v16 = 138412290;
        v17 = v8;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "enabling logger handler %@", &v16, 0xCu);
      }

      ++v7->_activeHandlersCounter;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        logFolder = v7->_logFolder;
        v10 = [v6 name];
        v16 = 138412546;
        v17 = logFolder;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "setting log folder %@ for logger handler %@", &v16, 0x16u);
      }

      if ([v6 setLogFolder:v7->_logFolder])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LOWORD(v16) = 0;
          v11 = MEMORY[0x277D86220];
          v12 = "logger handler failed assigning log folder. aborting rest of handlers";
LABEL_20:
          _os_log_error_impl(&dword_2402F6000, v11, OS_LOG_TYPE_ERROR, v12, &v16, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          hostName = v7->_hostName;
          v15 = [v6 name];
          v16 = 138412546;
          v17 = hostName;
          v18 = 2112;
          v19 = v15;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "setting host name %@ for logger handler %@", &v16, 0x16u);
        }

        if (![v6 setHostName:v7->_hostName])
        {
          [v6 preEnable];
          [v6 setActive:1];
          goto LABEL_14;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LOWORD(v16) = 0;
          v11 = MEMORY[0x277D86220];
          v12 = "logger handler failed assigning host name. aborting rest of handlers";
          goto LABEL_20;
        }
      }
    }
  }

  else if ([v6 active])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 name];
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "disabling logger handler %@", &v16, 0xCu);
    }

    --v7->_activeHandlersCounter;
    [v6 setActive:0];
    [v6 postDisable];
  }

LABEL_14:
  objc_sync_exit(v7);
}

- (int64_t)setHostName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  objc_storeStrong(&v6->_hostName, a3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6->_handlers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 active])
        {
          [v11 setHostName:v6->_hostName];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  return 0;
}

- (int64_t)setLogFolder:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  objc_storeStrong(&v6->_logFolder, a3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6->_handlers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 active])
        {
          [v11 setLogFolder:v6->_logFolder];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  return 0;
}

- (id)visualLoggerPrefices
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_handlers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        v9 = [v8 name];
        [v3 addObject:v9];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v3;
}

- (int64_t)addHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    [v4 setHumanReadableFormat:v5->_humanReadableFormat];
    [(NSMutableArray *)v5->_handlers addObject:v4];
    [(ADLogManager *)v5 applyConfigurationToNewHandler:v4];
    if ([v4 active])
    {
      ++v5->_activeHandlersCounter;
    }

    objc_sync_exit(v5);

    v6 = 0;
  }

  else
  {
    v6 = -22953;
  }

  return v6;
}

- (ADLogManager)initWithHandlers:(id)a3
{
  v17[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ADLogManager;
  v5 = [(ADLogManager *)&v16 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
    }

    else
    {
      v6 = objc_opt_new();
    }

    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    *(v5 + 2) = 0;
    *(v5 + 10) = 0;
    v5[48] = 0;
    *(v5 + 56) = xmmword_240406FF0;
    v8 = [MEMORY[0x277CBEB98] set];
    v9 = *(v5 + 5);
    *(v5 + 5) = v8;

    v17[0] = kADDeviceConfigurationKeyEnabledLoggers;
    v17[1] = kADDeviceConfigurationKeyLoggingHostName;
    v17[2] = kADDeviceConfigurationKeyLogFolder;
    v17[3] = kADDeviceConfigurationKeyLoggingPriorityForceAll;
    v17[4] = kADDeviceConfigurationKeyLoggingForceCounterAsTimestamp;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];
    objc_initWeak(&location, v5);
    v11 = [objc_opt_class() defaults];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __33__ADLogManager_initWithHandlers___block_invoke;
    v13[3] = &unk_278CA1688;
    objc_copyWeak(&v14, &location);
    [v11 registerUpdateHandlerForKeys:v10 invokeOnRegistration:1 scopeObject:v5 handlerBlock:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __33__ADLogManager_initWithHandlers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processConfigurationChange:v3];
}

- (void)setHumanReadableFormat:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  self->_humanReadableFormat = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_handlers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) setHumanReadableFormat:self->_humanReadableFormat, v8];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateTimestampWithOverride:(double *)a3
{
  if (self->_forceCounterAsTimestamp)
  {
    if (*a3 <= self->_lastTimestamp)
    {
      counterTimestamp = self->_counterTimestamp;
    }

    else
    {
      counterTimestamp = self->_counterTimestamp + 0.001;
      self->_lastTimestamp = *a3;
      self->_counterTimestamp = counterTimestamp;
    }

    *a3 = counterTimestamp;
  }
}

+ (id)defaults
{
  v10[5] = *MEMORY[0x277D85DE8];
  p_vtable = &OBJC_METACLASS___ADStereoV2Pipeline.vtable;
  {
    v9[0] = kADDeviceConfigurationKeyEnabledLoggers;
    v5 = [MEMORY[0x277CBEB68] null];
    v10[0] = v5;
    v9[1] = kADDeviceConfigurationKeyLoggingHostName;
    v6 = [MEMORY[0x277CBEB68] null];
    v10[1] = v6;
    v9[2] = kADDeviceConfigurationKeyLogFolder;
    v7 = [MEMORY[0x277CBEB68] null];
    v10[2] = v7;
    v10[3] = MEMORY[0x277CBEC28];
    v9[3] = kADDeviceConfigurationKeyLoggingPriorityForceAll;
    v9[4] = kADDeviceConfigurationKeyLoggingForceCounterAsTimestamp;
    v10[4] = MEMORY[0x277CBEC28];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];
    +[ADLogManager defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v8];

    p_vtable = (&OBJC_METACLASS___ADStereoV2Pipeline + 24);
  }

  v3 = p_vtable[466];

  return v3;
}

+ (id)defaultLoggerWithName:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [[ADVisualLoggerHandler alloc] initWithName:v3];
  [v4 addHandler:v5];

  v6 = [[ADFileLoggerHandler alloc] initWithName:v3];
  [v4 addHandler:v6];

  return v4;
}

@end