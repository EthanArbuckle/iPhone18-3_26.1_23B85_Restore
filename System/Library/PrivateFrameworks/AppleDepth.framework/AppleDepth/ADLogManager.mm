@interface ADLogManager
+ (id)defaultLoggerWithName:(id)name;
+ (id)defaults;
- (ADLogManager)initWithHandlers:(id)handlers;
- (id)visualLoggerPrefices;
- (int64_t)addHandler:(id)handler;
- (int64_t)setHostName:(id)name;
- (int64_t)setLogFolder:(id)folder;
- (uint64_t)logMatrix4x3:(__n128)matrix4x3 name:(__n128)name priority:(__n128)priority;
- (uint64_t)logMatrix4x4:(__n128)matrix4x4 name:(__n128)name priority:(__n128)priority;
- (void)applyConfigurationToNewHandler:(id)handler;
- (void)disable:(id)disable;
- (void)disableAll;
- (void)disableFileLogging;
- (void)disableVisualLogging;
- (void)enable:(id)enable;
- (void)enableAll;
- (void)enableFileLogging;
- (void)enableVisualLogging;
- (void)logCalibration:(id)calibration name:(const char *)name priority:(unint64_t)priority;
- (void)logCalibration:(id)calibration name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp;
- (void)logDictionary:(id)dictionary name:(const char *)name priority:(unint64_t)priority;
- (void)logDictionary:(id)dictionary name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp;
- (void)logMatrix4x3:(double)matrix4x3 name:(double)name priority:(double)priority timestamp:(double)timestamp;
- (void)logMatrix4x4:(__n128)matrix4x4 name:(__n128)name priority:(__n128)priority timestamp:(double)timestamp;
- (void)logPixelBuffer:(__CVBuffer *)buffer name:(const char *)name priority:(unint64_t)priority;
- (void)logPixelBuffer:(__CVBuffer *)buffer name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp;
- (void)logPointCloud:(id)cloud name:(const char *)name priority:(unint64_t)priority;
- (void)logPointCloud:(id)cloud name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp;
- (void)logRawBuffer:(void *)buffer size:(unint64_t)size name:(const char *)name priority:(unint64_t)priority;
- (void)logRawBuffer:(void *)buffer size:(unint64_t)size name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp;
- (void)logString:(id)string name:(const char *)name priority:(unint64_t)priority;
- (void)logString:(id)string name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp;
- (void)processConfigurationChange:(id)change;
- (void)setHumanReadableFormat:(BOOL)format;
- (void)toggleByClass:(Class)class enable:(BOOL)enable;
- (void)toggleHandler:(id)handler enable:(BOOL)enable;
- (void)updateTimestampWithOverride:(double *)override;
@end

@implementation ADLogManager

- (void)applyConfigurationToNewHandler:(id)handler
{
  handlerCopy = handler;
  if (-[NSSet containsObject:](self->_enabledLoggerOverrideSet, "containsObject:", @"vz") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || -[NSSet containsObject:](self->_enabledLoggerOverrideSet, "containsObject:", @"fl") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (enabledLoggerOverrideSet = self->_enabledLoggerOverrideSet, [handlerCopy name], v5 = objc_claimAutoreleasedReturnValue(), LODWORD(enabledLoggerOverrideSet) = -[NSSet containsObject:](enabledLoggerOverrideSet, "containsObject:", v5), v5, enabledLoggerOverrideSet))
  {
    [(ADLogManager *)self toggleHandler:handlerCopy enable:1];
  }
}

- (void)processConfigurationChange:(id)change
{
  v36 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([changeCopy isEqualToString:kADDeviceConfigurationKeyLoggingHostName])
  {
    defaults = [objc_opt_class() defaults];
    v7 = [defaults stringForKey:changeCopy];
    [(ADLogManager *)selfCopy setHostName:v7];
  }

  if ([changeCopy isEqualToString:kADDeviceConfigurationKeyLogFolder])
  {
    defaults2 = [objc_opt_class() defaults];
    v9 = [defaults2 stringForKey:changeCopy];
    [(ADLogManager *)selfCopy setLogFolder:v9];
  }

  if ([changeCopy isEqualToString:kADDeviceConfigurationKeyLoggingPriorityForceAll])
  {
    defaults3 = [objc_opt_class() defaults];
    selfCopy->_forceAllPriorities = [defaults3 BOOLForKey:kADDeviceConfigurationKeyLoggingPriorityForceAll];
  }

  if ([changeCopy isEqualToString:kADDeviceConfigurationKeyLoggingForceCounterAsTimestamp])
  {
    defaults4 = [objc_opt_class() defaults];
    selfCopy->_forceCounterAsTimestamp = [defaults4 BOOLForKey:kADDeviceConfigurationKeyLoggingForceCounterAsTimestamp];
  }

  if ([changeCopy isEqualToString:kADDeviceConfigurationKeyEnabledLoggers])
  {
    defaults5 = [objc_opt_class() defaults];
    v13 = [defaults5 listForKey:changeCopy];

    if (v13)
    {
      [MEMORY[0x277CBEB98] setWithArray:v13];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v14 = ;
    v15 = [(NSSet *)selfCopy->_enabledLoggerOverrideSet mutableCopy];
    [v15 minusSet:v14];
    if ([v15 containsObject:@"vz"])
    {
      [(ADLogManager *)selfCopy disableVisualLogging];
    }

    if ([v15 containsObject:@"fl"])
    {
      [(ADLogManager *)selfCopy disableFileLogging];
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

            [(ADLogManager *)selfCopy disable:*(*(&v30 + 1) + 8 * i)];
          }

          v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v17);
      }
    }

    v20 = [(NSSet *)v14 mutableCopy];
    [v20 minusSet:selfCopy->_enabledLoggerOverrideSet];
    if ([v20 containsObject:@"vz"])
    {
      [(ADLogManager *)selfCopy enableVisualLogging];
    }

    if ([v20 containsObject:@"fl"])
    {
      [(ADLogManager *)selfCopy enableFileLogging];
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

            [(ADLogManager *)selfCopy enable:*(*(&v26 + 1) + 8 * j), v26];
          }

          v22 = [v21 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v22);
      }
    }

    enabledLoggerOverrideSet = selfCopy->_enabledLoggerOverrideSet;
    selfCopy->_enabledLoggerOverrideSet = v14;
  }

  objc_sync_exit(selfCopy);
}

- (void)logMatrix4x4:(__n128)matrix4x4 name:(__n128)name priority:(__n128)priority timestamp:(double)timestamp
{
  v26 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  if (*(self + 8) >= 1 && (*(self + 80) >= a9 || *(self + 48) == 1))
  {
    [self updateTimestampWithOverride:{&timestampCopy, *&a2, *&matrix4x4, *&name, *&priority}];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = *(self + 16);
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
            [v15 logMatrix4x4:a8 name:v16 timestamp:{v17, v18, v19, timestampCopy}];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

- (void)logMatrix4x3:(double)matrix4x3 name:(double)name priority:(double)priority timestamp:(double)timestamp
{
  if (*(self + 2) >= 1 && (*(self + 10) >= a8 || *(self + 48) == 1))
  {
    return [self logMatrix4x4:matrix4x3 name:name priority:priority timestamp:timestamp];
  }

  return self;
}

- (uint64_t)logMatrix4x3:(__n128)matrix4x3 name:(__n128)name priority:(__n128)priority
{
  if (*(result + 8) >= 1 && (*(result + 80) >= a8 || *(result + 48) == 1))
  {
    v8 = result;
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v13 = v12;

    return [v8 logMatrix4x3:a7 name:a8 priority:v14 timestamp:{v15, v16, v17, v13}];
  }

  return result;
}

- (uint64_t)logMatrix4x4:(__n128)matrix4x4 name:(__n128)name priority:(__n128)priority
{
  if (*(result + 8) >= 1 && (*(result + 80) >= a8 || *(result + 48) == 1))
  {
    v8 = result;
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v13 = v12;

    return [v8 logMatrix4x4:a7 name:a8 priority:v14 timestamp:{v15, v16, v17, v13}];
  }

  return result;
}

- (void)logDictionary:(id)dictionary name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp
{
  v22 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  timestampCopy = timestamp;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&timestampCopy];
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
            [v15 logDictionary:dictionaryCopy name:name timestamp:timestampCopy];
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)logDictionary:(id)dictionary name:(const char *)name priority:(unint64_t)priority
{
  dictionaryCopy = dictionary;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v10 = v9;

    [(ADLogManager *)self logDictionary:dictionaryCopy name:name priority:priority timestamp:v10];
  }
}

- (void)logCalibration:(id)calibration name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp
{
  v22 = *MEMORY[0x277D85DE8];
  calibrationCopy = calibration;
  timestampCopy = timestamp;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&timestampCopy];
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
            [v15 logCalibration:calibrationCopy name:name timestamp:timestampCopy];
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)logCalibration:(id)calibration name:(const char *)name priority:(unint64_t)priority
{
  calibrationCopy = calibration;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v10 = v9;

    [(ADLogManager *)self logCalibration:calibrationCopy name:name priority:priority timestamp:v10];
  }
}

- (void)logRawBuffer:(void *)buffer size:(unint64_t)size name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp
{
  v22 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&timestampCopy];
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
            [v15 logRawBuffer:buffer size:size name:name timestamp:timestampCopy];
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)logRawBuffer:(void *)buffer size:(unint64_t)size name:(const char *)name priority:(unint64_t)priority
{
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v13 = v12;

    [(ADLogManager *)self logRawBuffer:buffer size:size name:name priority:priority timestamp:v13];
  }
}

- (void)logString:(id)string name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp
{
  v22 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  timestampCopy = timestamp;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&timestampCopy];
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
            [v15 logString:stringCopy name:name timestamp:timestampCopy];
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)logString:(id)string name:(const char *)name priority:(unint64_t)priority
{
  stringCopy = string;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v10 = v9;

    [(ADLogManager *)self logString:stringCopy name:name priority:priority timestamp:v10];
  }
}

- (void)logPointCloud:(id)cloud name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp
{
  v22 = *MEMORY[0x277D85DE8];
  cloudCopy = cloud;
  timestampCopy = timestamp;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&timestampCopy];
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
            [v15 logPointCloud:cloudCopy name:name timestamp:timestampCopy];
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)logPointCloud:(id)cloud name:(const char *)name priority:(unint64_t)priority
{
  cloudCopy = cloud;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v10 = v9;

    [(ADLogManager *)self logPointCloud:cloudCopy name:name priority:priority timestamp:v10];
  }
}

- (void)logPixelBuffer:(__CVBuffer *)buffer name:(const char *)name priority:(unint64_t)priority timestamp:(double)timestamp
{
  v20 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    [(ADLogManager *)self updateTimestampWithOverride:&timestampCopy];
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
            [v13 logPixelBuffer:buffer name:name timestamp:timestampCopy];
          }
        }

        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)logPixelBuffer:(__CVBuffer *)buffer name:(const char *)name priority:(unint64_t)priority
{
  if (self->_activeHandlersCounter >= 1 && (self->_loggingPriority >= priority || self->_forceAllPriorities))
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v11 = v10;

    [(ADLogManager *)self logPixelBuffer:buffer name:name priority:priority timestamp:v11];
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

- (void)disable:(id)disable
{
  v18 = *MEMORY[0x277D85DE8];
  disableCopy = disable;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = selfCopy->_handlers;
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
        name = [v10 name];
        v12 = [disableCopy isEqualToString:name];

        if (v12)
        {
          [(ADLogManager *)selfCopy toggleHandler:v10 enable:0];
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)enable:(id)enable
{
  v20 = *MEMORY[0x277D85DE8];
  enableCopy = enable;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = selfCopy->_handlers;
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
        name = [v10 name];
        v12 = [enableCopy isEqualToString:name];

        if (v12)
        {
          [(ADLogManager *)selfCopy toggleHandler:v10 enable:1];
        }

        else
        {
          name2 = [v10 name];
          v14 = [enableCopy hasPrefix:name2];

          if (v14)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v10 setActive:1];
              ++selfCopy->_activeHandlersCounter;
            }
          }
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)disableAll
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = selfCopy->_handlers;
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

        [(ADLogManager *)selfCopy toggleHandler:*(*(&v7 + 1) + 8 * v6++) enable:0, v7];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (void)enableAll
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = selfCopy->_handlers;
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

        [(ADLogManager *)selfCopy toggleHandler:*(*(&v7 + 1) + 8 * v6++) enable:1, v7];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (void)toggleByClass:(Class)class enable:(BOOL)enable
{
  enableCopy = enable;
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = selfCopy->_handlers;
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
          [(ADLogManager *)selfCopy toggleHandler:v10 enable:enableCopy, v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)toggleHandler:(id)handler enable:(BOOL)enable
{
  enableCopy = enable;
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (enableCopy)
  {
    if (([handlerCopy active] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        name = [handlerCopy name];
        v16 = 138412290;
        v17 = name;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "enabling logger handler %@", &v16, 0xCu);
      }

      ++selfCopy->_activeHandlersCounter;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        logFolder = selfCopy->_logFolder;
        name2 = [handlerCopy name];
        v16 = 138412546;
        v17 = logFolder;
        v18 = 2112;
        v19 = name2;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "setting log folder %@ for logger handler %@", &v16, 0x16u);
      }

      if ([handlerCopy setLogFolder:selfCopy->_logFolder])
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
          hostName = selfCopy->_hostName;
          name3 = [handlerCopy name];
          v16 = 138412546;
          v17 = hostName;
          v18 = 2112;
          v19 = name3;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "setting host name %@ for logger handler %@", &v16, 0x16u);
        }

        if (![handlerCopy setHostName:selfCopy->_hostName])
        {
          [handlerCopy preEnable];
          [handlerCopy setActive:1];
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

  else if ([handlerCopy active])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      name4 = [handlerCopy name];
      v16 = 138412290;
      v17 = name4;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "disabling logger handler %@", &v16, 0xCu);
    }

    --selfCopy->_activeHandlersCounter;
    [handlerCopy setActive:0];
    [handlerCopy postDisable];
  }

LABEL_14:
  objc_sync_exit(selfCopy);
}

- (int64_t)setHostName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_hostName, name);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = selfCopy->_handlers;
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
          [v11 setHostName:selfCopy->_hostName];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
  return 0;
}

- (int64_t)setLogFolder:(id)folder
{
  v18 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_logFolder, folder);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = selfCopy->_handlers;
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
          [v11 setLogFolder:selfCopy->_logFolder];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
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

        name = [v8 name];
        [v3 addObject:name];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v3;
}

- (int64_t)addHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [handlerCopy setHumanReadableFormat:selfCopy->_humanReadableFormat];
    [(NSMutableArray *)selfCopy->_handlers addObject:handlerCopy];
    [(ADLogManager *)selfCopy applyConfigurationToNewHandler:handlerCopy];
    if ([handlerCopy active])
    {
      ++selfCopy->_activeHandlersCounter;
    }

    objc_sync_exit(selfCopy);

    v6 = 0;
  }

  else
  {
    v6 = -22953;
  }

  return v6;
}

- (ADLogManager)initWithHandlers:(id)handlers
{
  v17[5] = *MEMORY[0x277D85DE8];
  handlersCopy = handlers;
  v16.receiver = self;
  v16.super_class = ADLogManager;
  v5 = [(ADLogManager *)&v16 init];
  if (v5)
  {
    if (handlersCopy)
    {
      v6 = [MEMORY[0x277CBEB18] arrayWithArray:handlersCopy];
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
    defaults = [objc_opt_class() defaults];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __33__ADLogManager_initWithHandlers___block_invoke;
    v13[3] = &unk_278CA1688;
    objc_copyWeak(&v14, &location);
    [defaults registerUpdateHandlerForKeys:v10 invokeOnRegistration:1 scopeObject:v5 handlerBlock:v13];

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

- (void)setHumanReadableFormat:(BOOL)format
{
  v13 = *MEMORY[0x277D85DE8];
  self->_humanReadableFormat = format;
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

- (void)updateTimestampWithOverride:(double *)override
{
  if (self->_forceCounterAsTimestamp)
  {
    if (*override <= self->_lastTimestamp)
    {
      counterTimestamp = self->_counterTimestamp;
    }

    else
    {
      counterTimestamp = self->_counterTimestamp + 0.001;
      self->_lastTimestamp = *override;
      self->_counterTimestamp = counterTimestamp;
    }

    *override = counterTimestamp;
  }
}

+ (id)defaults
{
  v10[5] = *MEMORY[0x277D85DE8];
  p_vtable = &OBJC_METACLASS___ADStereoV2Pipeline.vtable;
  {
    v9[0] = kADDeviceConfigurationKeyEnabledLoggers;
    null = [MEMORY[0x277CBEB68] null];
    v10[0] = null;
    v9[1] = kADDeviceConfigurationKeyLoggingHostName;
    null2 = [MEMORY[0x277CBEB68] null];
    v10[1] = null2;
    v9[2] = kADDeviceConfigurationKeyLogFolder;
    null3 = [MEMORY[0x277CBEB68] null];
    v10[2] = null3;
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

+ (id)defaultLoggerWithName:(id)name
{
  nameCopy = name;
  v4 = objc_opt_new();
  v5 = [[ADVisualLoggerHandler alloc] initWithName:nameCopy];
  [v4 addHandler:v5];

  v6 = [[ADFileLoggerHandler alloc] initWithName:nameCopy];
  [v4 addHandler:v6];

  return v4;
}

@end