@interface ATXPredictionUserContext
- (ATXPredictionUserContext)initWithLastUnlockDate:(id)date lastAppLaunch:(id)launch lastAppLaunchDate:(id)launchDate secondMostRecentAppLaunch:(id)appLaunch lastAppActionLaunch:(id)actionLaunch;
- (ATXPredictionUserContext)initWithProto:(id)proto;
- (ATXPredictionUserContext)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPredictionUserContext:(id)context;
- (NSDate)lastAppLaunchDate;
- (NSDate)lastUnlockDate;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXPredictionUserContext

- (NSDate)lastUnlockDate
{
  if (self->_absoluteLastUnlockDate == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:self->_absoluteLastUnlockDate];
  }

  return v2;
}

- (ATXPredictionUserContext)initWithLastUnlockDate:(id)date lastAppLaunch:(id)launch lastAppLaunchDate:(id)launchDate secondMostRecentAppLaunch:(id)appLaunch lastAppActionLaunch:(id)actionLaunch
{
  dateCopy = date;
  launchCopy = launch;
  launchDateCopy = launchDate;
  appLaunchCopy = appLaunch;
  actionLaunchCopy = actionLaunch;
  v28.receiver = self;
  v28.super_class = ATXPredictionUserContext;
  v17 = [(ATXPredictionUserContext *)&v28 init];
  if (v17)
  {
    v18 = 0.0;
    v19 = 0.0;
    if (dateCopy)
    {
      [dateCopy timeIntervalSince1970];
    }

    v17->_absoluteLastUnlockDate = v19;
    v20 = [launchCopy copy];
    lastAppLaunch = v17->_lastAppLaunch;
    v17->_lastAppLaunch = v20;

    if (launchDateCopy)
    {
      [launchDateCopy timeIntervalSince1970];
      v18 = v22;
    }

    v17->_absoluteLastAppLaunchDate = v18;
    v23 = [appLaunchCopy copy];
    secondMostRecentAppLaunch = v17->_secondMostRecentAppLaunch;
    v17->_secondMostRecentAppLaunch = v23;

    v25 = [actionLaunchCopy copy];
    lastAppActionLaunch = v17->_lastAppActionLaunch;
    v17->_lastAppActionLaunch = v25;
  }

  return v17;
}

- (NSDate)lastAppLaunchDate
{
  if (self->_absoluteLastAppLaunchDate == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:self->_absoluteLastAppLaunchDate];
  }

  return v2;
}

- (id)description
{
  jsonDict = [(ATXPredictionUserContext *)self jsonDict];
  v3 = [jsonDict description];

  return v3;
}

- (id)jsonDict
{
  v17[5] = *MEMORY[0x277D85DE8];
  v16[0] = @"lastUnlockDate";
  lastUnlockDate = [(ATXPredictionUserContext *)self lastUnlockDate];
  if (lastUnlockDate)
  {
    lastUnlockDate2 = [(ATXPredictionUserContext *)self lastUnlockDate];
    v6 = [lastUnlockDate2 description];
  }

  else
  {
    v6 = @"nil";
  }

  lastAppLaunch = self->_lastAppLaunch;
  if (!lastAppLaunch)
  {
    lastAppLaunch = @"nil";
  }

  v17[0] = v6;
  v17[1] = lastAppLaunch;
  v16[1] = @"lastAppLaunch";
  v16[2] = @"lastAppLaunchDate";
  lastAppLaunchDate = [(ATXPredictionUserContext *)self lastAppLaunchDate];
  if (lastAppLaunchDate)
  {
    lastAppLaunchDate2 = [(ATXPredictionUserContext *)self lastAppLaunchDate];
    v9 = [lastAppLaunchDate2 description];
  }

  else
  {
    v9 = @"nil";
  }

  secondMostRecentAppLaunch = self->_secondMostRecentAppLaunch;
  if (!secondMostRecentAppLaunch)
  {
    secondMostRecentAppLaunch = @"nil";
  }

  v17[2] = v9;
  v17[3] = secondMostRecentAppLaunch;
  lastAppActionLaunch = self->_lastAppActionLaunch;
  v16[3] = @"secondMostRecentAppLaunch";
  v16[4] = @"lastAppActionLaunch";
  if (lastAppActionLaunch)
  {
    v12 = lastAppActionLaunch;
  }

  else
  {
    v12 = @"nil";
  }

  v17[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  if (lastAppLaunchDate)
  {
  }

  if (lastUnlockDate)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (ATXPredictionUserContext)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBPredictionUserContext alloc] initWithData:dataCopy];

    self = [(ATXPredictionUserContext *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXPredictionUserContext *)self proto];
  data = [proto data];

  return data;
}

- (ATXPredictionUserContext)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(ATXPredictionUserContext *)self initWithProto:v8];
    }

    goto LABEL_8;
  }

  v5 = protoCopy;
  if ([v5 hasLastUnlockDate])
  {
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v5 lastUnlockDate];
    v7 = [v6 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v7 = 0;
  }

  if ([v5 hasLastAppLaunchDate])
  {
    v10 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v5 lastAppLaunchDate];
    v11 = [v10 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v11 = 0;
  }

  lastAppLaunch = [v5 lastAppLaunch];
  secondMostRecentAppLaunch = [v5 secondMostRecentAppLaunch];
  lastAppActionLaunch = [v5 lastAppActionLaunch];
  self = [(ATXPredictionUserContext *)self initWithLastUnlockDate:v7 lastAppLaunch:lastAppLaunch lastAppLaunchDate:v11 secondMostRecentAppLaunch:secondMostRecentAppLaunch lastAppActionLaunch:lastAppActionLaunch];

  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_absoluteLastUnlockDate != 0.0)
  {
    [v3 setLastUnlockDate:?];
  }

  [v4 setLastAppLaunch:self->_lastAppLaunch];
  if (self->_absoluteLastAppLaunchDate != 0.0)
  {
    [v4 setLastAppLaunchDate:?];
  }

  [v4 setSecondMostRecentAppLaunch:self->_secondMostRecentAppLaunch];
  [v4 setLastAppActionLaunch:self->_lastAppActionLaunch];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionUserContext *)self isEqualToATXPredictionUserContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPredictionUserContext:(id)context
{
  contextCopy = context;
  if (self->_absoluteLastUnlockDate != contextCopy[1])
  {
    goto LABEL_7;
  }

  v5 = self->_lastAppLaunch;
  v6 = v5;
  if (v5 == *(contextCopy + 3))
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (self->_absoluteLastAppLaunchDate != contextCopy[2])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v10 = self->_secondMostRecentAppLaunch;
  v11 = v10;
  if (v10 == *(contextCopy + 4))
  {
  }

  else
  {
    v12 = [(NSString *)v10 isEqual:?];

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v13 = self->_lastAppActionLaunch;
  v14 = v13;
  if (v13 == *(contextCopy + 5))
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v13 isEqual:?];
  }

LABEL_8:
  return v8;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBPredictionUserContext proto", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end