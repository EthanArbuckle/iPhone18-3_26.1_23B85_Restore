@interface SRDeviceUsageReport
+ (SRDeviceUsageReport)deviceUsageReportWithInterval:(id)interval;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)applicationUsageByCategory;
- (NSDictionary)notificationUsageByCategory;
- (NSDictionary)webUsageByCategory;
- (NSString)description;
- (NSString)version;
- (SRDeviceUsageReport)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRDeviceUsageReport)initWithCoder:(id)coder;
- (id)_activityLevels;
- (id)_motionActivities;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRDeviceUsageReport

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogUsageReport = os_log_create("com.apple.SensorKit", "SRDeviceUsageReport");
  }
}

- (SRDeviceUsageReport)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v29.receiver = self;
  v29.super_class = SRDeviceUsageReport;
  v6 = [(SRDeviceUsageReport *)&v29 init];
  if (v6)
  {
    v6->_totalScreenWakes = [coder decodeIntegerForKey:@"totalScreenWakes"];
    [coder decodeDoubleForKey:@"totalScreenWakeDuration"];
    v6->_totalScreenWakeDuration = v7;
    v6->_totalUnlocks = [coder decodeIntegerForKey:@"totalUnlocks"];
    [coder decodeDoubleForKey:@"totalUnlockDuration"];
    v6->_totalUnlockDuration = v8;
    [coder decodeDoubleForKey:@"totalChargingDuration"];
    v6->__totalChargingDuration = v9;
    [coder decodeDoubleForKey:@"startTime"];
    v6->_startTime = v10;
    [coder decodeDoubleForKey:@"duration"];
    v6->_duration = v11;
    v6->_version = [coder decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v6->_mutableApplicationUsageByCategory = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v12 forKey:{"setWithObjects:", v13, v14, v15, objc_opt_class(), 0), @"applicationUsage", "mutableCopy"}];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v6->_mutableNotificationUsageByCategory = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v16 forKey:{"setWithObjects:", v17, v18, v19, objc_opt_class(), 0), @"notificationsUsage", "mutableCopy"}];
    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v6->_mutableWebUsageByCategory = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v20 forKey:{"setWithObjects:", v21, v22, v23, objc_opt_class(), 0), @"webUsage", "mutableCopy"}];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v6->__mutableMotionActivities = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v24 forKey:{"setWithObjects:", v25, objc_opt_class(), 0), @"motionActivities", "mutableCopy"}];
    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v6->__mutableActivityLevels = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v26 forKey:{"setWithObjects:", v27, objc_opt_class(), 0), @"activityLevels", "mutableCopy"}];
    v6->__reportApplicationIdentifierByBundleIdentifier = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeDouble:@"startTime" forKey:self->_startTime];
  [coder encodeDouble:@"duration" forKey:self->_duration];
  [coder encodeObject:-[SRDeviceUsageReport mutableNotificationUsageByCategory](self forKey:{"mutableNotificationUsageByCategory"), @"notificationsUsage"}];
  [coder encodeObject:-[SRDeviceUsageReport mutableApplicationUsageByCategory](self forKey:{"mutableApplicationUsageByCategory"), @"applicationUsage"}];
  [coder encodeObject:-[SRDeviceUsageReport mutableWebUsageByCategory](self forKey:{"mutableWebUsageByCategory"), @"webUsage"}];
  [coder encodeInteger:-[SRDeviceUsageReport totalScreenWakes](self forKey:{"totalScreenWakes"), @"totalScreenWakes"}];
  [(SRDeviceUsageReport *)self totalScreenWakeDuration];
  [coder encodeDouble:@"totalScreenWakeDuration" forKey:?];
  [coder encodeInteger:-[SRDeviceUsageReport totalUnlocks](self forKey:{"totalUnlocks"), @"totalUnlocks"}];
  [(SRDeviceUsageReport *)self totalUnlockDuration];
  [coder encodeDouble:@"totalUnlockDuration" forKey:?];
  [(SRDeviceUsageReport *)self _totalChargingDuration];
  [coder encodeDouble:@"totalChargingDuration" forKey:?];
  [coder encodeObject:-[SRDeviceUsageReport _mutableMotionActivities](self forKey:{"_mutableMotionActivities"), @"motionActivities"}];
  [coder encodeObject:-[SRDeviceUsageReport _mutableActivityLevels](self forKey:{"_mutableActivityLevels"), @"activityLevels"}];
  version = [(SRDeviceUsageReport *)self version];

  [coder encodeObject:version forKey:@"version"];
}

+ (SRDeviceUsageReport)deviceUsageReportWithInterval:(id)interval
{
  v4 = objc_alloc_init(SRDeviceUsageReport);
  [objc_msgSend(interval "startDate")];
  [(SRDeviceUsageReport *)v4 setStartTime:?];
  [interval duration];
  [(SRDeviceUsageReport *)v4 setDuration:?];
  -[SRDeviceUsageReport setMutableWebUsageByCategory:](v4, "setMutableWebUsageByCategory:", [MEMORY[0x1E695DF90] dictionary]);
  -[SRDeviceUsageReport setMutableApplicationUsageByCategory:](v4, "setMutableApplicationUsageByCategory:", [MEMORY[0x1E695DF90] dictionary]);
  -[SRDeviceUsageReport setMutableNotificationUsageByCategory:](v4, "setMutableNotificationUsageByCategory:", [MEMORY[0x1E695DF90] dictionary]);
  -[SRDeviceUsageReport set_mutableMotionActivities:](v4, "set_mutableMotionActivities:", [MEMORY[0x1E695DF70] array]);
  -[SRDeviceUsageReport set_mutableActivityLevels:](v4, "set_mutableActivityLevels:", [MEMORY[0x1E695DF70] array]);
  -[SRDeviceUsageReport set_reportApplicationIdentifierByBundleIdentifier:](v4, "set_reportApplicationIdentifierByBundleIdentifier:", [MEMORY[0x1E695DF90] dictionary]);
  [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
  [(SRDeviceUsageReport *)v4 set_firstAppLaunchTimeRelativeToInterval:?];

  return v4;
}

- (void)dealloc
{
  self->_mutableNotificationUsageByCategory = 0;

  self->_mutableApplicationUsageByCategory = 0;
  self->_mutableWebUsageByCategory = 0;

  self->__mutableMotionActivities = 0;
  self->__mutableActivityLevels = 0;

  v3.receiver = self;
  v3.super_class = SRDeviceUsageReport;
  [(SRDeviceUsageReport *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    startTime = self->_startTime;
    [equal startTime];
    if (startTime != v6)
    {
      goto LABEL_17;
    }

    duration = self->_duration;
    [equal duration];
    if (duration == v8 && (totalScreenWakes = self->_totalScreenWakes, totalScreenWakes == [equal totalScreenWakes]) && (totalScreenWakeDuration = self->_totalScreenWakeDuration, objc_msgSend(equal, "totalScreenWakeDuration"), totalScreenWakeDuration == v11) && (totalUnlocks = self->_totalUnlocks, totalUnlocks == objc_msgSend(equal, "totalUnlocks")))
    {
      v13 = -[NSString isEqualToString:](-[SRDeviceUsageReport version](self, "version"), "isEqualToString:", [equal version]);
      if (v13)
      {
        v13 = -[NSMutableDictionary isEqualToDictionary:](self->_mutableWebUsageByCategory, "isEqualToDictionary:", [equal mutableWebUsageByCategory]);
        if (v13)
        {
          v13 = -[NSMutableDictionary isEqualToDictionary:](self->_mutableApplicationUsageByCategory, "isEqualToDictionary:", [equal mutableApplicationUsageByCategory]);
          if (v13)
          {
            v13 = -[NSMutableDictionary isEqualToDictionary:](self->_mutableNotificationUsageByCategory, "isEqualToDictionary:", [equal mutableNotificationUsageByCategory]);
            if (v13)
            {
              v13 = -[NSMutableArray isEqualToArray:](self->__mutableMotionActivities, "isEqualToArray:", [equal _mutableMotionActivities]);
              if (v13)
              {
                v13 = -[NSMutableArray isEqualToArray:](self->__mutableActivityLevels, "isEqualToArray:", [equal _mutableActivityLevels]);
                if (v13)
                {
                  reportApplicationIdentifierByBundleIdentifier = self->__reportApplicationIdentifierByBundleIdentifier;
                  _reportApplicationIdentifierByBundleIdentifier = [equal _reportApplicationIdentifierByBundleIdentifier];

                  LOBYTE(v13) = [(NSMutableDictionary *)reportApplicationIdentifierByBundleIdentifier isEqualToDictionary:_reportApplicationIdentifierByBundleIdentifier];
                }
              }
            }
          }
        }
      }
    }

    else
    {
LABEL_17:
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (SRDeviceUsageReport)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if ([representation length])
  {
    v11.receiver = self;
    v11.super_class = SRDeviceUsageReport;
    v7 = [(SRDeviceUsageReport *)&v11 init];
    if (v7)
    {
      v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:0];
      if (v8)
      {
        v9 = v8;

        return v9;
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(SRDeviceUsageReport *)self startTime];
  v7 = v6;
  [(SRDeviceUsageReport *)self duration];
  v9 = v8;
  totalScreenWakes = [(SRDeviceUsageReport *)self totalScreenWakes];
  [(SRDeviceUsageReport *)self totalScreenWakeDuration];
  v12 = v11;
  totalUnlocks = [(SRDeviceUsageReport *)self totalUnlocks];
  [(SRDeviceUsageReport *)self totalUnlockDuration];
  v15 = v14;
  [(SRDeviceUsageReport *)self _totalChargingDuration];
  return [v3 stringWithFormat:@"%@ {Start time: %f, duration: %f, total screen wakes: %lu, total screen wake duration: %f, total Unlocks: %lu, Total Unlock Duration: %f, total charging duration: %f, version: %@, Application Use By Category: %@\nNotification Use By Category: %@\nWeb Use By Category: %@\nMotionActivities: %@\nActivityLevels: %@\n}", v5, v7, v9, totalScreenWakes, v12, totalUnlocks, v15, v16, -[SRDeviceUsageReport version](self, "version"), -[SRDeviceUsageReport mutableApplicationUsageByCategory](self, "mutableApplicationUsageByCategory"), -[SRDeviceUsageReport mutableNotificationUsageByCategory](self, "mutableNotificationUsageByCategory"), -[SRDeviceUsageReport mutableWebUsageByCategory](self, "mutableWebUsageByCategory"), -[SRDeviceUsageReport _motionActivities](self, "_motionActivities"), -[SRDeviceUsageReport _activityLevels](self, "_activityLevels")];
}

- (NSDictionary)applicationUsageByCategory
{
  if (self->_mutableApplicationUsageByCategory)
  {
    return [MEMORY[0x1E695DF20] dictionaryWithDictionary:?];
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (NSDictionary)notificationUsageByCategory
{
  if (self->_mutableNotificationUsageByCategory)
  {
    return [MEMORY[0x1E695DF20] dictionaryWithDictionary:?];
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (NSDictionary)webUsageByCategory
{
  if (self->_mutableWebUsageByCategory)
  {
    return [MEMORY[0x1E695DF20] dictionaryWithDictionary:?];
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (id)_motionActivities
{
  if (self->__mutableMotionActivities)
  {
    return [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)_activityLevels
{
  if (self->__mutableActivityLevels)
  {
    return [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSString)version
{
  if (self->_version)
  {
    return self->_version;
  }

  else
  {
    return &stru_1F48BB5C0;
  }
}

- (id)sr_dictionaryRepresentation
{
  v11[12] = *MEMORY[0x1E69E9840];
  v3 = __50__SRDeviceUsageReport_sr_dictionaryRepresentation__block_invoke(self->_mutableApplicationUsageByCategory);
  v4 = __50__SRDeviceUsageReport_sr_dictionaryRepresentation__block_invoke(self->_mutableNotificationUsageByCategory);
  v5 = __50__SRDeviceUsageReport_sr_dictionaryRepresentation__block_invoke(self->_mutableWebUsageByCategory);
  v6 = __50__SRDeviceUsageReport_sr_dictionaryRepresentation__block_invoke_2([(SRDeviceUsageReport *)self _motionActivities]);
  v7 = __50__SRDeviceUsageReport_sr_dictionaryRepresentation__block_invoke_2([(SRDeviceUsageReport *)self _activityLevels]);
  v10[0] = @"totalScreenWakes";
  v11[0] = [MEMORY[0x1E696AD98] numberWithInteger:self->_totalScreenWakes];
  v10[1] = @"totalScreenWakeDuration";
  v11[1] = [MEMORY[0x1E696AD98] numberWithDouble:self->_totalScreenWakeDuration];
  v10[2] = @"totalUnlocks";
  v11[2] = [MEMORY[0x1E696AD98] numberWithInteger:self->_totalUnlocks];
  v10[3] = @"totalUnlockDuration";
  v11[3] = [MEMORY[0x1E696AD98] numberWithDouble:self->_totalUnlockDuration];
  v10[4] = @"totalChargingDuration";
  v11[4] = [MEMORY[0x1E696AD98] numberWithDouble:self->__totalChargingDuration];
  v10[5] = @"duration";
  v11[5] = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  v11[6] = v3;
  v10[6] = @"applicationUsage";
  v10[7] = @"notificationsUsage";
  v11[7] = v4;
  v11[8] = v5;
  v10[8] = @"webUsage";
  v10[9] = @"motionActivities";
  v11[9] = v6;
  v11[10] = v7;
  v10[10] = @"activityLevels";
  v10[11] = @"version";
  v11[11] = [(SRDeviceUsageReport *)self version];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:12];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __50__SRDeviceUsageReport_sr_dictionaryRepresentation__block_invoke(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      v5 = 0;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v20 + 1) + 8 * v5);
        v7 = [MEMORY[0x1E695DF70] array];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = [a1 objectForKeyedSubscript:v6];
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            v12 = 0;
            do
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [v7 addObject:{objc_msgSend(*(*(&v16 + 1) + 8 * v12++), "sr_dictionaryRepresentation")}];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }

        [v15 setObject:v7 forKeyedSubscript:v6];
        ++v5;
      }

      while (v5 != v3);
      v3 = [a1 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v3);
  }

  result = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v15];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __50__SRDeviceUsageReport_sr_dictionaryRepresentation__block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 addObject:{objc_msgSend(*(*(&v9 + 1) + 8 * v6++), "sr_dictionaryRepresentation")}];
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [MEMORY[0x1E695DEC8] arrayWithArray:v2];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end