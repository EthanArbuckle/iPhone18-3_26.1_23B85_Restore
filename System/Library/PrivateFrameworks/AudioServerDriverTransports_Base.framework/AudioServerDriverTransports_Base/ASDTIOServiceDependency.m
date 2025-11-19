@interface ASDTIOServiceDependency
+ (BOOL)ioServiceMatched:(id)a3 withClassName:(id)a4 andIdentifier:(id)a5;
+ (id)forAnyInstanceOfClassName:(id)a3 andConfiguration:(id)a4;
+ (id)forClassName:(id)a3 idValue:(id)a4 andConfiguration:(id)a5;
- (ASDTIOServiceManager)ioServiceManager;
- (BOOL)ioServiceAvailable:(id)a3 withManager:(id)a4;
- (BOOL)ioServiceIdentifierMatches:(id)a3;
- (BOOL)ioServiceMatches:(id)a3 withManager:(id)a4;
- (id)description;
- (id)initForAnyInstanceOfClassName:(id)a3 andConfiguration:(id)a4;
- (id)initForClassName:(id)a3 idValue:(id)a4 andConfiguration:(id)a5;
- (void)addManagerDelegate:(id)a3;
@end

@implementation ASDTIOServiceDependency

+ (id)forClassName:(id)a3 idValue:(id)a4 andConfiguration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initForClassName:v10 idValue:v9 andConfiguration:v8];

  return v11;
}

+ (id)forAnyInstanceOfClassName:(id)a3 andConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initForAnyInstanceOfClassName:v7 andConfiguration:v6];

  return v8;
}

- (id)initForClassName:(id)a3 idValue:(id)a4 andConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  if (v8 && v9)
  {
    v15.receiver = self;
    v15.super_class = ASDTIOServiceDependency;
    v12 = [(ASDTIOServiceDependency *)&v15 init];
    v13 = v12;
    if (v12)
    {
      [(ASDTIOServiceDependency *)v12 setIoServiceClassName:v8];
      [(ASDTIOServiceDependency *)v13 setIoServiceID:v9];
      [(ASDTIOServiceDependency *)v13 setConfiguration:v10];
    }

    self = v13;
    v11 = self;
  }

  return v11;
}

- (id)initForAnyInstanceOfClassName:(id)a3 andConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v12.receiver = self;
    v12.super_class = ASDTIOServiceDependency;
    v8 = [(ASDTIOServiceDependency *)&v12 init];
    v9 = v8;
    if (v8)
    {
      [(ASDTIOServiceDependency *)v8 setIoServiceClassName:v6];
      [(ASDTIOServiceDependency *)v9 setConfiguration:v7];
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addManagerDelegate:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASDTIOServiceDependency *)self ioServiceManager];

  if (!v5)
  {
    v6 = [(ASDTIOServiceDependency *)self ioServiceClassName];
    v7 = [ASDTIOServiceManager forIOServiceWithClassName:v6];
    [(ASDTIOServiceDependency *)self setIoServiceManager:v7];
  }

  v8 = [(ASDTIOServiceDependency *)self ioServiceID];

  if (v8)
  {
    v9 = [(ASDTIOServiceDependency *)self ioServiceID];
    v12[0] = v9;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  v10 = [(ASDTIOServiceDependency *)self ioServiceManager];
  [v10 addDelegate:v4 forIDValues:v8];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)ioServiceIdentifierMatches:(id)a3
{
  v4 = a3;
  v5 = [(ASDTIOServiceDependency *)self ioServiceID];
  if (v5)
  {
    v6 = [(ASDTIOServiceDependency *)self ioServiceID];
    v7 = [v6 isEqual:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)ioServiceMatches:(id)a3 withManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASDTIOServiceDependency *)self ioServiceManager];

  if (v8 == v7 && ([v6 idValue], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[ASDTIOServiceDependency ioServiceIdentifierMatches:](self, "ioServiceIdentifierMatches:", v9), v9, v10))
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

- (BOOL)ioServiceAvailable:(id)a3 withManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(ASDTIOServiceDependency *)v8 ioService];

  if (!v9)
  {
    if (![(ASDTIOServiceDependency *)v8 ioServiceMatches:v6 withManager:v7])
    {
      v10 = 0;
      goto LABEL_5;
    }

    [(ASDTIOServiceDependency *)v8 setIoService:v6];
  }

  v10 = 1;
LABEL_5:
  objc_sync_exit(v8);

  return v10;
}

- (id)description
{
  v3 = [(ASDTIOServiceDependency *)self ioServiceID];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(ASDTIOServiceDependency *)self ioServiceID];
    v6 = [v4 stringWithFormat:@"('%@')", v5];
  }

  else
  {
    v6 = &stru_28534DD28;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(ASDTIOServiceDependency *)self ioServiceClassName];
  v9 = [v7 stringWithFormat:@"%@%@", v8, v6];

  return v9;
}

+ (BOOL)ioServiceMatched:(id)a3 withClassName:(id)a4 andIdentifier:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v7;
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
        v15 = [v14 ioService];
        if (v15)
        {
          v16 = v15;
          v17 = [v14 ioServiceClassName];
          if ([v17 isEqualToString:v8])
          {
            v18 = [v14 ioServiceIdentifierMatches:v9];

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