@interface ASDTIOServiceManager
+ (id)dependencyForConfiguration:(id)configuration;
+ (id)dependencyForID:(id)d andConfiguration:(id)configuration;
+ (id)dependencyForIdentifier:(id)identifier andConfiguration:(id)configuration;
+ (id)forIOServiceWithClassName:(id)name withIDProperty:(id)property managerClass:(Class)class;
+ (id)get;
+ (id)matchedIOServiceForID:(id)d;
+ (void)resetAll;
- (NSArray)delegateList;
- (id)allocateMatcher;
- (id)findOrAddIOServiceForID:(id)d;
- (id)initForIOServiceWithClassName:(id)name andIDProperty:(id)property;
- (id)matchedIOServiceForID:(id)d;
- (void)addDelegate:(id)delegate forIDValues:(id)values;
- (void)removeDelegate:(id)delegate;
- (void)reset;
@end

@implementation ASDTIOServiceManager

+ (id)forIOServiceWithClassName:(id)name withIDProperty:(id)property managerClass:(Class)class
{
  nameCopy = name;
  propertyCopy = property;
  if (forIOServiceWithClassName_withIDProperty_managerClass__predicate == -1)
  {
    if (class)
    {
LABEL_3:
      v9 = [(objc_class *)class isSubclassOfClass:objc_opt_class()];
      v10 = 0;
      if (!nameCopy || (v9 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }
  }

  else
  {
    +[ASDTIOServiceManager forIOServiceWithClassName:withIDProperty:managerClass:];
    if (class)
    {
      goto LABEL_3;
    }
  }

  if (!nameCopy)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_8:
  if ([nameCopy isEqualToString:&stru_28534DD28])
  {
    goto LABEL_9;
  }

  [gServiceManagerLock lock];
  v11 = [gServiceManagerDictionary objectForKey:nameCopy];
  v10 = v11;
  if (class)
  {
    if (!v11)
    {
      v10 = [[class alloc] initForIOServiceWithClassName:nameCopy andIDProperty:propertyCopy];
      if (v10)
      {
        [gServiceManagerDictionary setObject:v10 forKey:nameCopy];
      }
    }
  }

  [gServiceManagerLock unlock];
LABEL_15:

  return v10;
}

uint64_t __78__ASDTIOServiceManager_forIOServiceWithClassName_withIDProperty_managerClass___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = gServiceManagerLock;
  gServiceManagerLock = v0;

  [gServiceManagerLock setName:@"com.apple.AudioServerDriverTransports.ASDTIOServiceManager"];
  gServiceManagerDictionary = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

+ (id)get
{
  ioServiceClassName = [self ioServiceClassName];
  ioServiceIDProperty = [self ioServiceIDProperty];
  v5 = [self forIOServiceWithClassName:ioServiceClassName withIDProperty:ioServiceIDProperty managerClass:self];

  return v5;
}

- (id)initForIOServiceWithClassName:(id)name andIDProperty:(id)property
{
  nameCopy = name;
  propertyCopy = property;
  if (!nameCopy || [nameCopy isEqualToString:&stru_28534DD28])
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOServiceManager initForIOServiceWithClassName:v9 andIDProperty:?];
    }

    if (!nameCopy || [nameCopy isEqualToString:&stru_28534DD28])
    {
      [ASDTIOServiceManager initForIOServiceWithClassName:a2 andIDProperty:self];
    }
  }

  v36.receiver = self;
  v36.super_class = ASDTIOServiceManager;
  v10 = [(ASDTIOServiceManager *)&v36 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  [(ASDTIOServiceManager *)v10 setIdProperty:propertyCopy];
  [(ASDTIOServiceManager *)v11 setIoServiceClassName:nameCopy];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  ioServiceClassName = [(ASDTIOServiceManager *)v11 ioServiceClassName];
  v16 = [v12 stringWithFormat:@"%@.%@", v14, ioServiceClassName];
  [(ASDTIOServiceManager *)v11 setName:v16];

  v17 = MEMORY[0x277CCACA8];
  name = [(ASDTIOServiceManager *)v11 name];
  v19 = [v17 stringWithFormat:@"%s.%@", "com.apple.AudioServerDriverTransports", name];
  v20 = [ASDTCondition conditionWithName:v19];
  [(ASDTIOServiceManager *)v11 setCond:v20];

  array = [MEMORY[0x277CBEB18] array];
  [(ASDTIOServiceManager *)v11 setDelegates:array];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTIOServiceManager *)v11 setIoServices:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTIOServiceManager *)v11 setIoServicesByIdentifier:dictionary2];

  cond = [(ASDTIOServiceManager *)v11 cond];
  if (!cond)
  {
    goto LABEL_16;
  }

  v25 = cond;
  delegates = [(ASDTIOServiceManager *)v11 delegates];
  if (!delegates)
  {
    goto LABEL_15;
  }

  v27 = delegates;
  ioServices = [(ASDTIOServiceManager *)v11 ioServices];
  if (!ioServices)
  {

LABEL_15:
LABEL_16:
    v34 = ASDTBaseLogType();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMAction initWithConfig:v11 forSequencer:?];
    }

    goto LABEL_18;
  }

  v29 = ioServices;
  ioServicesByIdentifier = [(ASDTIOServiceManager *)v11 ioServicesByIdentifier];

  if (!ioServicesByIdentifier)
  {
    goto LABEL_16;
  }

  allocateMatcher = [(ASDTIOServiceManager *)v11 allocateMatcher];
  [(ASDTIOServiceManager *)v11 setMatcher:allocateMatcher];

  matcher = [(ASDTIOServiceManager *)v11 matcher];

  if (!matcher)
  {
    v34 = ASDTBaseLogType();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOServiceManager initForIOServiceWithClassName:v11 andIDProperty:?];
    }

LABEL_18:

    v33 = 0;
    goto LABEL_19;
  }

LABEL_13:
  v33 = v11;
LABEL_19:

  return v33;
}

- (id)allocateMatcher
{
  v3 = objc_alloc([objc_opt_class() ioServiceMatcherClass]);
  ioServiceClassName = [(ASDTIOServiceManager *)self ioServiceClassName];
  v5 = [v3 initForIOServiceWithClassName:ioServiceClassName withDelegate:self];

  return v5;
}

- (NSArray)delegateList
{
  cond = [(ASDTIOServiceManager *)self cond];
  [cond lock];

  delegates = [(ASDTIOServiceManager *)self delegates];
  v5 = [delegates copy];

  cond2 = [(ASDTIOServiceManager *)self cond];
  [cond2 unlock];

  return v5;
}

- (id)findOrAddIOServiceForID:(id)d
{
  dCopy = d;
  ioServices = [(ASDTIOServiceManager *)self ioServices];
  v6 = [ioServices objectForKey:dCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    ioServicesByIdentifier = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
    identifier = [dCopy identifier];
    v10 = [ioServicesByIdentifier objectForKey:identifier];

    if (v10)
    {
      v7 = -[ASDTIOServiceManager createIOServiceForIOObject:andIDValue:](self, "createIOServiceForIOObject:andIDValue:", [v10 ioObject], dCopy);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)addDelegate:(id)delegate forIDValues:(id)values
{
  v77 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  valuesCopy = values;
  cond = [(ASDTIOServiceManager *)self cond];
  [cond lock];

  matcher = [(ASDTIOServiceManager *)self matcher];

  if (!matcher)
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOServiceManager addDelegate:? forIDValues:?];
    }

    matcher2 = [(ASDTIOServiceManager *)self matcher];

    if (!matcher2)
    {
      [ASDTIOServiceManager addDelegate:a2 forIDValues:?];
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  delegates = [(ASDTIOServiceManager *)self delegates];
  v14 = [delegates countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v69;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v69 != v16)
        {
          objc_enumerationMutation(delegates);
        }

        v18 = *(*(&v68 + 1) + 8 * i);
        delegate = [v18 delegate];

        if (delegate == delegateCopy)
        {
          if (valuesCopy)
          {
            v22 = [MEMORY[0x277CBEB58] set];
            idValues = [v18 idValues];
            v24 = [idValues count];

            if (v24)
            {
              idValues2 = [v18 idValues];
              allObjects = [idValues2 allObjects];
              [v22 addObjectsFromArray:allObjects];
            }

            [v22 addObjectsFromArray:valuesCopy];
            v27 = [v22 copy];
            [v18 setIdValues:v27];
          }

          else
          {
            [v18 setIdValues:0];
          }

          goto LABEL_21;
        }
      }

      v15 = [delegates countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v20 = [ASDTIOServiceManagerDelegateProxy forDelegate:delegateCopy andIDValues:valuesCopy];
  if (v20)
  {
    delegates = v20;
    delegates2 = [(ASDTIOServiceManager *)self delegates];
    [delegates2 addObject:delegates];

LABEL_21:
    v28 = ASDTBaseLogType();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [ASDTIOServiceManager addDelegate:forIDValues:];
    }

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v31 = array2;
    if (valuesCopy)
    {
      [array2 addObjectsFromArray:valuesCopy];
    }

    else
    {
      v55 = delegateCopy;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      ioServicesByIdentifier = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
      allKeys = [ioServicesByIdentifier allKeys];

      v34 = allKeys;
      v35 = [allKeys countByEnumeratingWithState:&v64 objects:v75 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v65;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v65 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = [ASDTIOServiceID forIdentifier:*(*(&v64 + 1) + 8 * j) andClientType:0];
            if (v39)
            {
              [v31 addObject:v39];
            }

            else
            {
              v40 = ASDTBaseLogType();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                [ASDTIOServiceManager addDelegate:v74 forIDValues:self];
              }
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v64 objects:v75 count:16];
        }

        while (v36);
      }

      delegateCopy = v55;
      valuesCopy = 0;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v41 = v31;
    v42 = [v41 countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v61;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v61 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [(ASDTIOServiceManager *)self findOrAddIOServiceForID:*(*(&v60 + 1) + 8 * k)];
          if (v46)
          {
            [array addObject:v46];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v43);
    }

    cond2 = [(ASDTIOServiceManager *)self cond];
    [cond2 unlock];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    cond3 = array;
    v49 = [cond3 countByEnumeratingWithState:&v56 objects:v72 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v57;
      do
      {
        for (m = 0; m != v50; ++m)
        {
          if (*v57 != v51)
          {
            objc_enumerationMutation(cond3);
          }

          [delegateCopy ioServiceAvailable:*(*(&v56 + 1) + 8 * m) withManager:self];
        }

        v50 = [cond3 countByEnumeratingWithState:&v56 objects:v72 count:16];
      }

      while (v50);
    }
  }

  else
  {
    v54 = ASDTBaseLogType();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMAction initWithConfig:? forSequencer:?];
    }

    cond3 = [(ASDTIOServiceManager *)self cond];
    [cond3 unlock];
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)delegate
{
  v24 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  cond = [(ASDTIOServiceManager *)self cond];
  [cond lock];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  delegates = [(ASDTIOServiceManager *)self delegates];
  v8 = [delegates countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(delegates);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        delegate = [v12 delegate];
        if (delegate)
        {
          v14 = delegate;
          delegate2 = [v12 delegate];

          if (delegate2 != delegateCopy)
          {
            continue;
          }
        }

        [v6 addObject:v12];
      }

      v9 = [delegates countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  delegates2 = [(ASDTIOServiceManager *)self delegates];
  [delegates2 removeObjectsInArray:v6];

  cond2 = [(ASDTIOServiceManager *)self cond];
  [cond2 unlock];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)matchedIOServiceForID:(id)d
{
  if (d)
  {
    dCopy = d;
    cond = [(ASDTIOServiceManager *)self cond];
    [cond lock];

    v6 = [(ASDTIOServiceManager *)self findOrAddIOServiceForID:dCopy];

    cond2 = [(ASDTIOServiceManager *)self cond];
    [cond2 unlock];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)matchedIOServiceForID:(id)d
{
  dCopy = d;
  v5 = [self get];
  v6 = [v5 matchedIOServiceForID:dCopy];

  return v6;
}

- (void)reset
{
  cond = [(ASDTIOServiceManager *)self cond];
  [cond lock];

  ioServices = [(ASDTIOServiceManager *)self ioServices];
  [ioServices removeAllObjects];

  ioServicesByIdentifier = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
  [ioServicesByIdentifier removeAllObjects];

  delegates = [(ASDTIOServiceManager *)self delegates];
  [delegates removeAllObjects];

  allocateMatcher = [(ASDTIOServiceManager *)self allocateMatcher];
  [(ASDTIOServiceManager *)self setMatcher:allocateMatcher];

  cond2 = [(ASDTIOServiceManager *)self cond];
  [cond2 unlock];
}

+ (void)resetAll
{
  v14 = *MEMORY[0x277D85DE8];
  [gServiceManagerLock lock];
  allValues = [gServiceManagerDictionary allValues];
  [gServiceManagerLock unlock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = allValues;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)dependencyForID:(id)d andConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dCopy = d;
  v8 = [self get];
  ioServiceClassName = [v8 ioServiceClassName];
  v10 = [ASDTIOServiceDependency forClassName:ioServiceClassName idValue:dCopy andConfiguration:configurationCopy];

  return v10;
}

+ (id)dependencyForIdentifier:(id)identifier andConfiguration:(id)configuration
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v8 = [self get];
  ioServiceClassName = [v8 ioServiceClassName];
  v10 = [ASDTIOServiceID forIdentifier:identifierCopy andClientType:0];

  v11 = [ASDTIOServiceDependency forClassName:ioServiceClassName idValue:v10 andConfiguration:configurationCopy];

  return v11;
}

+ (id)dependencyForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [self get];
  ioServiceClassName = [v5 ioServiceClassName];
  v7 = [ASDTIOServiceDependency forAnyInstanceOfClassName:ioServiceClassName andConfiguration:configurationCopy];

  return v7;
}

- (void)initForIOServiceWithClassName:(uint64_t)a1 andIDProperty:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDTIOServiceManager.m" lineNumber:190 description:@"Bad argument."];
}

- (void)initForIOServiceWithClassName:(void *)a1 andIDProperty:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(void *)a1 forIDValues:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(void *)a1 forIDValues:(uint64_t)a2 .cold.2(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [a1 name];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ASDTIOServiceManager.m" lineNumber:275 description:{@"%@: Failed to allocate ASDTIOServiceMatcher.", v5}];
}

- (void)addDelegate:forIDValues:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 name];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_7(&dword_241659000, v2, v3, "%@: Adding delegate for IDs: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(uint64_t)a1 forIDValues:(uint64_t)a2 .cold.4(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_5_0(v2, 5.7779e-34);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8(v3, v4, v5, v6);
}

- (void)getIdentifierForIOObject:(void *)a1 withProperties:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v9 = [a1 idProperty];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)matchedIOService:withProperties:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 name];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)matchedIOService:(uint64_t)a1 withProperties:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_5_0(v2, 5.7779e-34);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8(v3, v4, v5, v6);
}

- (void)matchedIOService:withProperties:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 name];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)ioServiceWillTerminate:withProperties:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 name];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_7(&dword_241659000, v2, v3, "%@: Not managing IOService with identifier: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end