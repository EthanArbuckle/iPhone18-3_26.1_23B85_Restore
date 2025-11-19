@interface ASDTIOServiceManager
+ (id)dependencyForConfiguration:(id)a3;
+ (id)dependencyForID:(id)a3 andConfiguration:(id)a4;
+ (id)dependencyForIdentifier:(id)a3 andConfiguration:(id)a4;
+ (id)forIOServiceWithClassName:(id)a3 withIDProperty:(id)a4 managerClass:(Class)a5;
+ (id)get;
+ (id)matchedIOServiceForID:(id)a3;
+ (void)resetAll;
- (NSArray)delegateList;
- (id)allocateMatcher;
- (id)findOrAddIOServiceForID:(id)a3;
- (id)initForIOServiceWithClassName:(id)a3 andIDProperty:(id)a4;
- (id)matchedIOServiceForID:(id)a3;
- (void)addDelegate:(id)a3 forIDValues:(id)a4;
- (void)removeDelegate:(id)a3;
- (void)reset;
@end

@implementation ASDTIOServiceManager

+ (id)forIOServiceWithClassName:(id)a3 withIDProperty:(id)a4 managerClass:(Class)a5
{
  v7 = a3;
  v8 = a4;
  if (forIOServiceWithClassName_withIDProperty_managerClass__predicate == -1)
  {
    if (a5)
    {
LABEL_3:
      v9 = [(objc_class *)a5 isSubclassOfClass:objc_opt_class()];
      v10 = 0;
      if (!v7 || (v9 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }
  }

  else
  {
    +[ASDTIOServiceManager forIOServiceWithClassName:withIDProperty:managerClass:];
    if (a5)
    {
      goto LABEL_3;
    }
  }

  if (!v7)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_8:
  if ([v7 isEqualToString:&stru_28534DD28])
  {
    goto LABEL_9;
  }

  [gServiceManagerLock lock];
  v11 = [gServiceManagerDictionary objectForKey:v7];
  v10 = v11;
  if (a5)
  {
    if (!v11)
    {
      v10 = [[a5 alloc] initForIOServiceWithClassName:v7 andIDProperty:v8];
      if (v10)
      {
        [gServiceManagerDictionary setObject:v10 forKey:v7];
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
  v3 = [a1 ioServiceClassName];
  v4 = [a1 ioServiceIDProperty];
  v5 = [a1 forIOServiceWithClassName:v3 withIDProperty:v4 managerClass:a1];

  return v5;
}

- (id)initForIOServiceWithClassName:(id)a3 andIDProperty:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 || [v7 isEqualToString:&stru_28534DD28])
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOServiceManager initForIOServiceWithClassName:v9 andIDProperty:?];
    }

    if (!v7 || [v7 isEqualToString:&stru_28534DD28])
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

  [(ASDTIOServiceManager *)v10 setIdProperty:v8];
  [(ASDTIOServiceManager *)v11 setIoServiceClassName:v7];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [(ASDTIOServiceManager *)v11 ioServiceClassName];
  v16 = [v12 stringWithFormat:@"%@.%@", v14, v15];
  [(ASDTIOServiceManager *)v11 setName:v16];

  v17 = MEMORY[0x277CCACA8];
  v18 = [(ASDTIOServiceManager *)v11 name];
  v19 = [v17 stringWithFormat:@"%s.%@", "com.apple.AudioServerDriverTransports", v18];
  v20 = [ASDTCondition conditionWithName:v19];
  [(ASDTIOServiceManager *)v11 setCond:v20];

  v21 = [MEMORY[0x277CBEB18] array];
  [(ASDTIOServiceManager *)v11 setDelegates:v21];

  v22 = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTIOServiceManager *)v11 setIoServices:v22];

  v23 = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTIOServiceManager *)v11 setIoServicesByIdentifier:v23];

  v24 = [(ASDTIOServiceManager *)v11 cond];
  if (!v24)
  {
    goto LABEL_16;
  }

  v25 = v24;
  v26 = [(ASDTIOServiceManager *)v11 delegates];
  if (!v26)
  {
    goto LABEL_15;
  }

  v27 = v26;
  v28 = [(ASDTIOServiceManager *)v11 ioServices];
  if (!v28)
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

  v29 = v28;
  v30 = [(ASDTIOServiceManager *)v11 ioServicesByIdentifier];

  if (!v30)
  {
    goto LABEL_16;
  }

  v31 = [(ASDTIOServiceManager *)v11 allocateMatcher];
  [(ASDTIOServiceManager *)v11 setMatcher:v31];

  v32 = [(ASDTIOServiceManager *)v11 matcher];

  if (!v32)
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
  v4 = [(ASDTIOServiceManager *)self ioServiceClassName];
  v5 = [v3 initForIOServiceWithClassName:v4 withDelegate:self];

  return v5;
}

- (NSArray)delegateList
{
  v3 = [(ASDTIOServiceManager *)self cond];
  [v3 lock];

  v4 = [(ASDTIOServiceManager *)self delegates];
  v5 = [v4 copy];

  v6 = [(ASDTIOServiceManager *)self cond];
  [v6 unlock];

  return v5;
}

- (id)findOrAddIOServiceForID:(id)a3
{
  v4 = a3;
  v5 = [(ASDTIOServiceManager *)self ioServices];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
    v9 = [v4 identifier];
    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      v7 = -[ASDTIOServiceManager createIOServiceForIOObject:andIDValue:](self, "createIOServiceForIOObject:andIDValue:", [v10 ioObject], v4);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)addDelegate:(id)a3 forIDValues:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(ASDTIOServiceManager *)self cond];
  [v9 lock];

  v10 = [(ASDTIOServiceManager *)self matcher];

  if (!v10)
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOServiceManager addDelegate:? forIDValues:?];
    }

    v12 = [(ASDTIOServiceManager *)self matcher];

    if (!v12)
    {
      [ASDTIOServiceManager addDelegate:a2 forIDValues:?];
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v13 = [(ASDTIOServiceManager *)self delegates];
  v14 = [v13 countByEnumeratingWithState:&v68 objects:v76 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v68 + 1) + 8 * i);
        v19 = [v18 delegate];

        if (v19 == v7)
        {
          if (v8)
          {
            v22 = [MEMORY[0x277CBEB58] set];
            v23 = [v18 idValues];
            v24 = [v23 count];

            if (v24)
            {
              v25 = [v18 idValues];
              v26 = [v25 allObjects];
              [v22 addObjectsFromArray:v26];
            }

            [v22 addObjectsFromArray:v8];
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

      v15 = [v13 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v20 = [ASDTIOServiceManagerDelegateProxy forDelegate:v7 andIDValues:v8];
  if (v20)
  {
    v13 = v20;
    v21 = [(ASDTIOServiceManager *)self delegates];
    [v21 addObject:v13];

LABEL_21:
    v28 = ASDTBaseLogType();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [ASDTIOServiceManager addDelegate:forIDValues:];
    }

    v29 = [MEMORY[0x277CBEB18] array];
    v30 = [MEMORY[0x277CBEB18] array];
    v31 = v30;
    if (v8)
    {
      [v30 addObjectsFromArray:v8];
    }

    else
    {
      v55 = v7;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v32 = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
      v33 = [v32 allKeys];

      v34 = v33;
      v35 = [v33 countByEnumeratingWithState:&v64 objects:v75 count:16];
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

      v7 = v55;
      v8 = 0;
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
            [v29 addObject:v46];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v43);
    }

    v47 = [(ASDTIOServiceManager *)self cond];
    [v47 unlock];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v48 = v29;
    v49 = [v48 countByEnumeratingWithState:&v56 objects:v72 count:16];
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
            objc_enumerationMutation(v48);
          }

          [v7 ioServiceAvailable:*(*(&v56 + 1) + 8 * m) withManager:self];
        }

        v50 = [v48 countByEnumeratingWithState:&v56 objects:v72 count:16];
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

    v48 = [(ASDTIOServiceManager *)self cond];
    [v48 unlock];
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASDTIOServiceManager *)self cond];
  [v5 lock];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(ASDTIOServiceManager *)self delegates];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 delegate];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 delegate];

          if (v15 != v4)
          {
            continue;
          }
        }

        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [(ASDTIOServiceManager *)self delegates];
  [v16 removeObjectsInArray:v6];

  v17 = [(ASDTIOServiceManager *)self cond];
  [v17 unlock];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)matchedIOServiceForID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(ASDTIOServiceManager *)self cond];
    [v5 lock];

    v6 = [(ASDTIOServiceManager *)self findOrAddIOServiceForID:v4];

    v7 = [(ASDTIOServiceManager *)self cond];
    [v7 unlock];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)matchedIOServiceForID:(id)a3
{
  v4 = a3;
  v5 = [a1 get];
  v6 = [v5 matchedIOServiceForID:v4];

  return v6;
}

- (void)reset
{
  v3 = [(ASDTIOServiceManager *)self cond];
  [v3 lock];

  v4 = [(ASDTIOServiceManager *)self ioServices];
  [v4 removeAllObjects];

  v5 = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
  [v5 removeAllObjects];

  v6 = [(ASDTIOServiceManager *)self delegates];
  [v6 removeAllObjects];

  v7 = [(ASDTIOServiceManager *)self allocateMatcher];
  [(ASDTIOServiceManager *)self setMatcher:v7];

  v8 = [(ASDTIOServiceManager *)self cond];
  [v8 unlock];
}

+ (void)resetAll
{
  v14 = *MEMORY[0x277D85DE8];
  [gServiceManagerLock lock];
  v2 = [gServiceManagerDictionary allValues];
  [gServiceManagerLock unlock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
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

+ (id)dependencyForID:(id)a3 andConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 get];
  v9 = [v8 ioServiceClassName];
  v10 = [ASDTIOServiceDependency forClassName:v9 idValue:v7 andConfiguration:v6];

  return v10;
}

+ (id)dependencyForIdentifier:(id)a3 andConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 get];
  v9 = [v8 ioServiceClassName];
  v10 = [ASDTIOServiceID forIdentifier:v7 andClientType:0];

  v11 = [ASDTIOServiceDependency forClassName:v9 idValue:v10 andConfiguration:v6];

  return v11;
}

+ (id)dependencyForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [a1 get];
  v6 = [v5 ioServiceClassName];
  v7 = [ASDTIOServiceDependency forAnyInstanceOfClassName:v6 andConfiguration:v4];

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