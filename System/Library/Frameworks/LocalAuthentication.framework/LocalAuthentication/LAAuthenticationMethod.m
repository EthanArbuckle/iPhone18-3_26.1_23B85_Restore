@interface LAAuthenticationMethod
- (LAAuthenticationMethod)initWithConfiguration:(id)a3;
- (void)dealloc;
- (void)forEachObserverWithProtocol:(id)a3 selector:(SEL)a4 invoke:(id)a5;
- (void)terminate;
@end

@implementation LAAuthenticationMethod

- (LAAuthenticationMethod)initWithConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = LAAuthenticationMethod;
  v6 = [(LAAuthenticationMethod *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v8;
  }

  return v7;
}

- (void)forEachObserverWithProtocol:(id)a3 selector:(SEL)a4 invoke:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_observers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if (!v8 || [*(*(&v17 + 1) + 8 * v14) conformsToProtocol:{v8, v17}]) && (!a4 || (objc_opt_respondsToSelector()))
        {
          v9[2](v9, v15);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)terminate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__LAAuthenticationMethod_terminate__block_invoke;
  v3[3] = &unk_1E77CC060;
  v3[4] = self;
  [(LAAuthenticationMethod *)self forEachObserverWithProtocol:&unk_1F1A74C48 selector:sel_authenticationMethodWillTerminate_ invoke:v3];
  self->_running = 0;
}

- (void)dealloc
{
  if (self->_running)
  {
    [(LAAuthenticationMethod *)self terminate];
  }

  v3.receiver = self;
  v3.super_class = LAAuthenticationMethod;
  [(LAAuthenticationMethod *)&v3 dealloc];
}

@end