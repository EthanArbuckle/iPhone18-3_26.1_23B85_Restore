@interface LPThemeParametersObserver
+ (id)shared;
- (LPThemeParametersObserver)init;
- (void)addClient:(id)client;
- (void)dealloc;
- (void)didChangeThemeParameters;
- (void)removeClient:(id)client;
@end

@implementation LPThemeParametersObserver

- (LPThemeParametersObserver)init
{
  v6.receiver = self;
  v6.super_class = LPThemeParametersObserver;
  v2 = [(LPThemeParametersObserver *)&v6 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didChangeDarkenColorsStatus_ name:*MEMORY[0x1E69DD8B8] object:0];

    v4 = v2;
  }

  return v2;
}

+ (id)shared
{
  v2 = shared_observer;
  if (!shared_observer)
  {
    v3 = objc_alloc_init(LPThemeParametersObserver);
    v4 = shared_observer;
    shared_observer = v3;

    v2 = shared_observer;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = LPThemeParametersObserver;
  [(LPThemeParametersObserver *)&v4 dealloc];
}

- (void)addClient:(id)client
{
  clientCopy = client;
  clients = self->_clients;
  v8 = clientCopy;
  if (!clients)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_clients;
    self->_clients = weakObjectsHashTable;

    clients = self->_clients;
    clientCopy = v8;
  }

  if ([(NSHashTable *)clients containsObject:clientCopy])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to add a LPThemeClient that is already a client."];
  }

  [(NSHashTable *)self->_clients addObject:v8];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  clients = self->_clients;
  if (clients)
  {
    [(NSHashTable *)clients removeObject:clientCopy];
  }
}

- (void)didChangeThemeParameters
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = themeCache();
  [v3 removeAllObjects];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_clients;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 themeParametersDidChange];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end