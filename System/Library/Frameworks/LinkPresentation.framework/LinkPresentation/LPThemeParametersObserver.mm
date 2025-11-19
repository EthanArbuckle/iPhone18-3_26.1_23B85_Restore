@interface LPThemeParametersObserver
+ (id)shared;
- (LPThemeParametersObserver)init;
- (void)addClient:(id)a3;
- (void)dealloc;
- (void)didChangeThemeParameters;
- (void)removeClient:(id)a3;
@end

@implementation LPThemeParametersObserver

- (LPThemeParametersObserver)init
{
  v6.receiver = self;
  v6.super_class = LPThemeParametersObserver;
  v2 = [(LPThemeParametersObserver *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_didChangeDarkenColorsStatus_ name:*MEMORY[0x1E69DD8B8] object:0];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = LPThemeParametersObserver;
  [(LPThemeParametersObserver *)&v4 dealloc];
}

- (void)addClient:(id)a3
{
  v4 = a3;
  clients = self->_clients;
  v8 = v4;
  if (!clients)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_clients;
    self->_clients = v6;

    clients = self->_clients;
    v4 = v8;
  }

  if ([(NSHashTable *)clients containsObject:v4])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to add a LPThemeClient that is already a client."];
  }

  [(NSHashTable *)self->_clients addObject:v8];
}

- (void)removeClient:(id)a3
{
  v5 = a3;
  clients = self->_clients;
  if (clients)
  {
    [(NSHashTable *)clients removeObject:v5];
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