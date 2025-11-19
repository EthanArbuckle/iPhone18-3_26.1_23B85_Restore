@interface AXUIServiceContext
- (AXUIServiceContext)initWithService:(id)a3 serviceIdentifier:(id)a4;
- (NSArray)clientMessengerList;
- (id)clientMessengerWithIdentifier:(id)a3;
- (int)pidForClientWithIdentifier:(id)a3;
- (unint64_t)_indexOfClientWithIdentifier:(id)a3;
- (unint64_t)clientsCount;
- (void)addClientWithIdentifier:(id)a3 connection:(id)a4;
- (void)enumerateClientsUsingBlock:(id)a3;
- (void)removeClientWithIdentifier:(id)a3;
@end

@implementation AXUIServiceContext

- (AXUIServiceContext)initWithService:(id)a3 serviceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AXUIServiceContext;
  v8 = [(AXUIServiceContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXUIServiceContext *)v8 setService:v6];
    [(AXUIServiceContext *)v9 setServiceIdentifier:v7];
  }

  return v9;
}

- (unint64_t)clientsCount
{
  v2 = [(AXUIServiceContext *)self clientMessengers];
  v3 = [v2 count];

  return v3;
}

- (NSArray)clientMessengerList
{
  v2 = [(AXUIServiceContext *)self clientMessengers];
  v3 = [v2 copy];

  return v3;
}

- (void)addClientWithIdentifier:(id)a3 connection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(AXUIServiceContext *)self clientMessengers];
  if (!v9)
  {
    v9 = objc_opt_new();
    [(AXUIServiceContext *)self setClientMessengers:?];
  }

  v8 = [[AXUIClientMessenger alloc] initWithClientIdentifier:v7 connection:v6];

  [v9 addObject:v8];
}

- (unint64_t)_indexOfClientWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AXUIServiceContext *)self clientMessengers];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__AXUIServiceContext__indexOfClientWithIdentifier___block_invoke;
    v8[3] = &unk_278BF32D0;
    v9 = v4;
    v6 = [v5 indexOfObjectPassingTest:v8];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

uint64_t __51__AXUIServiceContext__indexOfClientWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)removeClientWithIdentifier:(id)a3
{
  v4 = [(AXUIServiceContext *)self _indexOfClientWithIdentifier:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v7 = [(AXUIServiceContext *)self clientMessengers];
    v6 = [v7 objectAtIndex:v5];
    [v6 setConnection:0];
    [v7 removeObjectAtIndex:v5];
    if (![v7 count])
    {
      [(AXUIServiceContext *)self setClientMessengers:0];
    }
  }
}

- (id)clientMessengerWithIdentifier:(id)a3
{
  v4 = [(AXUIServiceContext *)self _indexOfClientWithIdentifier:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(AXUIServiceContext *)self clientMessengers];
    v5 = [v7 objectAtIndex:v6];
  }

  return v5;
}

- (void)enumerateClientsUsingBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(AXUIServiceContext *)self clientMessengers];
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v11 = [v10 clientIdentifier];
      v12 = [v10 connection];
      v4[2](v4, v11, v12, &v18);

      if (v18)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (int)pidForClientWithIdentifier:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__AXUIServiceContext_pidForClientWithIdentifier___block_invoke;
  v7[3] = &unk_278BF31E0;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(AXUIServiceContext *)self enumerateClientsUsingBlock:v7];
  LODWORD(self) = *(v11 + 6);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __49__AXUIServiceContext_pidForClientWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 pid];
    *a4 = 1;
  }
}

@end