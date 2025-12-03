@interface ASDTIOServiceDependency
+ (BOOL)ioServiceMatched:(id)matched withClassName:(id)name andIdentifier:(id)identifier;
+ (id)forAnyInstanceOfClassName:(id)name andConfiguration:(id)configuration;
+ (id)forClassName:(id)name idValue:(id)value andConfiguration:(id)configuration;
- (ASDTIOServiceManager)ioServiceManager;
- (BOOL)ioServiceAvailable:(id)available withManager:(id)manager;
- (BOOL)ioServiceIdentifierMatches:(id)matches;
- (BOOL)ioServiceMatches:(id)matches withManager:(id)manager;
- (id)description;
- (id)initForAnyInstanceOfClassName:(id)name andConfiguration:(id)configuration;
- (id)initForClassName:(id)name idValue:(id)value andConfiguration:(id)configuration;
- (void)addManagerDelegate:(id)delegate;
@end

@implementation ASDTIOServiceDependency

+ (id)forClassName:(id)name idValue:(id)value andConfiguration:(id)configuration
{
  configurationCopy = configuration;
  valueCopy = value;
  nameCopy = name;
  v11 = [[self alloc] initForClassName:nameCopy idValue:valueCopy andConfiguration:configurationCopy];

  return v11;
}

+ (id)forAnyInstanceOfClassName:(id)name andConfiguration:(id)configuration
{
  configurationCopy = configuration;
  nameCopy = name;
  v8 = [[self alloc] initForAnyInstanceOfClassName:nameCopy andConfiguration:configurationCopy];

  return v8;
}

- (id)initForClassName:(id)name idValue:(id)value andConfiguration:(id)configuration
{
  nameCopy = name;
  valueCopy = value;
  configurationCopy = configuration;
  selfCopy = 0;
  if (nameCopy && valueCopy)
  {
    v15.receiver = self;
    v15.super_class = ASDTIOServiceDependency;
    v12 = [(ASDTIOServiceDependency *)&v15 init];
    v13 = v12;
    if (v12)
    {
      [(ASDTIOServiceDependency *)v12 setIoServiceClassName:nameCopy];
      [(ASDTIOServiceDependency *)v13 setIoServiceID:valueCopy];
      [(ASDTIOServiceDependency *)v13 setConfiguration:configurationCopy];
    }

    self = v13;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)initForAnyInstanceOfClassName:(id)name andConfiguration:(id)configuration
{
  nameCopy = name;
  configurationCopy = configuration;
  if (nameCopy)
  {
    v12.receiver = self;
    v12.super_class = ASDTIOServiceDependency;
    v8 = [(ASDTIOServiceDependency *)&v12 init];
    v9 = v8;
    if (v8)
    {
      [(ASDTIOServiceDependency *)v8 setIoServiceClassName:nameCopy];
      [(ASDTIOServiceDependency *)v9 setConfiguration:configurationCopy];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)addManagerDelegate:(id)delegate
{
  v12[1] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  ioServiceManager = [(ASDTIOServiceDependency *)self ioServiceManager];

  if (!ioServiceManager)
  {
    ioServiceClassName = [(ASDTIOServiceDependency *)self ioServiceClassName];
    v7 = [ASDTIOServiceManager forIOServiceWithClassName:ioServiceClassName];
    [(ASDTIOServiceDependency *)self setIoServiceManager:v7];
  }

  ioServiceID = [(ASDTIOServiceDependency *)self ioServiceID];

  if (ioServiceID)
  {
    ioServiceID2 = [(ASDTIOServiceDependency *)self ioServiceID];
    v12[0] = ioServiceID2;
    ioServiceID = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  ioServiceManager2 = [(ASDTIOServiceDependency *)self ioServiceManager];
  [ioServiceManager2 addDelegate:delegateCopy forIDValues:ioServiceID];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)ioServiceIdentifierMatches:(id)matches
{
  matchesCopy = matches;
  ioServiceID = [(ASDTIOServiceDependency *)self ioServiceID];
  if (ioServiceID)
  {
    ioServiceID2 = [(ASDTIOServiceDependency *)self ioServiceID];
    v7 = [ioServiceID2 isEqual:matchesCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)ioServiceMatches:(id)matches withManager:(id)manager
{
  matchesCopy = matches;
  managerCopy = manager;
  ioServiceManager = [(ASDTIOServiceDependency *)self ioServiceManager];

  if (ioServiceManager == managerCopy && ([matchesCopy idValue], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[ASDTIOServiceDependency ioServiceIdentifierMatches:](self, "ioServiceIdentifierMatches:", v9), v9, v10))
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ASDTIOServiceDependency ioServiceMatches:v11 withManager:?];
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)ioServiceAvailable:(id)available withManager:(id)manager
{
  availableCopy = available;
  managerCopy = manager;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ioService = [(ASDTIOServiceDependency *)selfCopy ioService];

  if (!ioService)
  {
    if (![(ASDTIOServiceDependency *)selfCopy ioServiceMatches:availableCopy withManager:managerCopy])
    {
      v10 = 0;
      goto LABEL_5;
    }

    [(ASDTIOServiceDependency *)selfCopy setIoService:availableCopy];
  }

  v10 = 1;
LABEL_5:
  objc_sync_exit(selfCopy);

  return v10;
}

- (id)description
{
  ioServiceID = [(ASDTIOServiceDependency *)self ioServiceID];

  if (ioServiceID)
  {
    v4 = MEMORY[0x277CCACA8];
    ioServiceID2 = [(ASDTIOServiceDependency *)self ioServiceID];
    v6 = [v4 stringWithFormat:@"('%@')", ioServiceID2];
  }

  else
  {
    v6 = &stru_28534DD28;
  }

  v7 = MEMORY[0x277CCACA8];
  ioServiceClassName = [(ASDTIOServiceDependency *)self ioServiceClassName];
  v9 = [v7 stringWithFormat:@"%@%@", ioServiceClassName, v6];

  return v9;
}

+ (BOOL)ioServiceMatched:(id)matched withClassName:(id)name andIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  matchedCopy = matched;
  nameCopy = name;
  identifierCopy = identifier;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = matchedCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        ioService = [v14 ioService];
        if (ioService)
        {
          v16 = ioService;
          ioServiceClassName = [v14 ioServiceClassName];
          if ([ioServiceClassName isEqualToString:nameCopy])
          {
            v18 = [v14 ioServiceIdentifierMatches:identifierCopy];

            if (v18)
            {
              LOBYTE(v11) = 1;
              goto LABEL_13;
            }
          }

          else
          {
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (ASDTIOServiceManager)ioServiceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_ioServiceManager);

  return WeakRetained;
}

- (void)ioServiceMatches:(uint64_t)a1 withManager:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_241659000, a2, OS_LOG_TYPE_DEBUG, "Matched: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end