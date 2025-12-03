@interface AXUIServiceContext
- (AXUIServiceContext)initWithService:(id)service serviceIdentifier:(id)identifier;
- (NSArray)clientMessengerList;
- (id)clientMessengerWithIdentifier:(id)identifier;
- (int)pidForClientWithIdentifier:(id)identifier;
- (unint64_t)_indexOfClientWithIdentifier:(id)identifier;
- (unint64_t)clientsCount;
- (void)addClientWithIdentifier:(id)identifier connection:(id)connection;
- (void)enumerateClientsUsingBlock:(id)block;
- (void)removeClientWithIdentifier:(id)identifier;
@end

@implementation AXUIServiceContext

- (AXUIServiceContext)initWithService:(id)service serviceIdentifier:(id)identifier
{
  serviceCopy = service;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = AXUIServiceContext;
  v8 = [(AXUIServiceContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXUIServiceContext *)v8 setService:serviceCopy];
    [(AXUIServiceContext *)v9 setServiceIdentifier:identifierCopy];
  }

  return v9;
}

- (unint64_t)clientsCount
{
  clientMessengers = [(AXUIServiceContext *)self clientMessengers];
  v3 = [clientMessengers count];

  return v3;
}

- (NSArray)clientMessengerList
{
  clientMessengers = [(AXUIServiceContext *)self clientMessengers];
  v3 = [clientMessengers copy];

  return v3;
}

- (void)addClientWithIdentifier:(id)identifier connection:(id)connection
{
  connectionCopy = connection;
  identifierCopy = identifier;
  clientMessengers = [(AXUIServiceContext *)self clientMessengers];
  if (!clientMessengers)
  {
    clientMessengers = objc_opt_new();
    [(AXUIServiceContext *)self setClientMessengers:?];
  }

  v8 = [[AXUIClientMessenger alloc] initWithClientIdentifier:identifierCopy connection:connectionCopy];

  [clientMessengers addObject:v8];
}

- (unint64_t)_indexOfClientWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    clientMessengers = [(AXUIServiceContext *)self clientMessengers];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__AXUIServiceContext__indexOfClientWithIdentifier___block_invoke;
    v8[3] = &unk_278BF32D0;
    v9 = identifierCopy;
    v6 = [clientMessengers indexOfObjectPassingTest:v8];
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

- (void)removeClientWithIdentifier:(id)identifier
{
  v4 = [(AXUIServiceContext *)self _indexOfClientWithIdentifier:identifier];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    clientMessengers = [(AXUIServiceContext *)self clientMessengers];
    v6 = [clientMessengers objectAtIndex:v5];
    [v6 setConnection:0];
    [clientMessengers removeObjectAtIndex:v5];
    if (![clientMessengers count])
    {
      [(AXUIServiceContext *)self setClientMessengers:0];
    }
  }
}

- (id)clientMessengerWithIdentifier:(id)identifier
{
  v4 = [(AXUIServiceContext *)self _indexOfClientWithIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    clientMessengers = [(AXUIServiceContext *)self clientMessengers];
    v5 = [clientMessengers objectAtIndex:v6];
  }

  return v5;
}

- (void)enumerateClientsUsingBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
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
      clientIdentifier = [v10 clientIdentifier];
      connection = [v10 connection];
      blockCopy[2](blockCopy, clientIdentifier, connection, &v18);

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

- (int)pidForClientWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__AXUIServiceContext_pidForClientWithIdentifier___block_invoke;
  v7[3] = &unk_278BF31E0;
  v5 = identifierCopy;
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