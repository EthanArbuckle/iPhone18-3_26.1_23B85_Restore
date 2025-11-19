@interface VSBinder
- (VSBinder)init;
- (VSBinder)initWithBoundObject:(id)a3;
- (id)_infoForBinding:(id)a3;
- (id)boundObject;
- (id)valueForBinding:(id)a3;
- (void)dealloc;
- (void)establishBinding:(id)a3 withInfo:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setValue:(id)a3 forBinding:(id)a4;
- (void)tearDownBinding:(id)a3;
@end

@implementation VSBinder

- (VSBinder)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSBinder)initWithBoundObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The boundObject parameter must not be nil."];
  }

  v11.receiver = self;
  v11.super_class = VSBinder;
  v5 = [(VSBinder *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA940]);
    currentlyChangingBindings = v5->_currentlyChangingBindings;
    v5->_currentlyChangingBindings = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    establishedBindings = v5->_establishedBindings;
    v5->_establishedBindings = v8;

    objc_storeWeak(&v5->_boundObject, v4);
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v2->_establishmentProhibited = 1;
  v3 = [(NSMutableDictionary *)v2->_establishedBindings allKeys];
  v4 = [v3 copy];

  objc_sync_exit(v2);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(VSBinder *)v2 tearDownBinding:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = v2;
  v9.super_class = VSBinder;
  [(VSBinder *)&v9 dealloc];
}

- (id)_infoForBinding:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  v5 = [(VSBinder *)self establishedBindings];
  v6 = [v5 objectForKey:v4];
  v7 = [VSOptional optionalWithObject:v6];

  return v7;
}

- (void)establishBinding:(id)a3 withInfo:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (v15)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The bindingInfo parameter must not be nil."];
LABEL_3:
  [v6 requireExpectedConcurrency];
  v7 = self;
  objc_sync_enter(v7);
  if (![(VSBinder *)v7 isEstablishmentProhibited])
  {
    v8 = [(VSBinder *)v7 _infoForBinding:v15];
    v9 = [v8 object];

    if (v9)
    {
      [(VSBinder *)v7 tearDownBinding:v15];
    }

    v10 = [(VSBinder *)v7 establishedBindings];
    [v10 setObject:v6 forKey:v15];
    v11 = objc_autoreleasePoolPush();
    v12 = [v6 weakObservedObject];
    if (v12)
    {
      v13 = [v6 keyPath];
      [v12 addObserver:v7 forKeyPath:v13 options:12 context:v15];
      v14 = [v12 vs_unbinderCreatingIfNeeded:1];
      [v14 binder:v7 didEstablishBinding:v15];
    }

    else
    {
      [v10 removeObjectForKey:v15];
    }

    objc_autoreleasePoolPop(v11);
  }

  objc_sync_exit(v7);
}

- (void)tearDownBinding:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  v5 = self;
  objc_sync_enter(v5);
  v6 = [(VSBinder *)v5 _infoForBinding:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__VSBinder_tearDownBinding___block_invoke;
  v8[3] = &unk_278B74340;
  v8[4] = v5;
  v7 = v4;
  v9 = v7;
  [v6 conditionallyUnwrapObject:v8 otherwise:&__block_literal_global_27];

  objc_sync_exit(v5);
}

void __28__VSBinder_tearDownBinding___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 requireExpectedConcurrency];
  v4 = [v3 unsafeObservedObject];
  v5 = [v3 keyPath];
  [v4 removeObserver:*(a1 + 32) forKeyPath:v5 context:*(a1 + 40)];
  v6 = [*(a1 + 32) establishedBindings];
  [v6 removeObjectForKey:*(a1 + 40)];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = v5;
  v7 = intermediaryKeyPathsForKeyPath(v5);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v4 valueForKeyPath:*(*(&v18 + 1) + 8 * v11)];
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 vs_unbinderCreatingIfNeeded:0];
        [v14 binder:*(a1 + 32) didTearDownBinding:*(a1 + 40)];

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [v4 vs_unbinderCreatingIfNeeded:0];
  [v16 binder:*(a1 + 32) didTearDownBinding:*(a1 + 40)];

  objc_autoreleasePoolPop(v15);
}

- (id)valueForBinding:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(VSBinder *)v5 _infoForBinding:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__VSBinder_valueForBinding___block_invoke;
  v9[3] = &unk_278B74368;
  v9[4] = &v10;
  [v6 conditionallyUnwrapObject:v9];

  objc_sync_exit(v5);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __28__VSBinder_valueForBinding___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 value];

  return MEMORY[0x2821F96F8]();
}

- (void)setValue:(id)a3 forBinding:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(VSBinder *)v8 currentlyChangingBindings];
  [v9 addObject:v7];
  v10 = [(VSBinder *)v8 _infoForBinding:v7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__VSBinder_setValue_forBinding___block_invoke;
  v12[3] = &unk_278B74390;
  v11 = v6;
  v13 = v11;
  [v10 conditionallyUnwrapObject:v12];

  [v9 removeObject:v7];
  objc_sync_exit(v8);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v31 = a4;
  v30 = a5;
  if (v10)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPathOrNil parameter must not be nil."];
    if (a6)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The context parameter must not be nil."];
LABEL_3:
  v11 = a6;
  v12 = self;
  objc_sync_enter(v12);
  v13 = [(VSBinder *)v12 _infoForBinding:v11];
  [v13 conditionallyUnwrapObject:&__block_literal_global_24];
  v29 = v10;

  objc_sync_exit(v12);
  v14 = [v30 objectForKey:*MEMORY[0x277CCA2F8]];
  v15 = [v14 BOOLValue];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (!v10)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPathOrNil parameter must not be nil."];
  }

  v16 = intermediaryKeyPathsForKeyPath(v10);
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v17)
  {
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = [v31 valueForKeyPath:*(*(&v32 + 1) + 8 * i)];
        v21 = objc_autoreleasePoolPush();
        v22 = [v20 vs_unbinderCreatingIfNeeded:v15 ^ 1u];
        v23 = v22;
        if (v15)
        {
          [v22 binder:v12 didTearDownBinding:v11];
        }

        else
        {
          [v22 binder:v12 didEstablishBinding:v11];
        }

        objc_autoreleasePoolPop(v21);
      }

      v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }

  v24 = v12;
  objc_sync_enter(v24);
  v25 = [(VSBinder *)v24 currentlyChangingBindings];
  v26 = [v25 containsObject:v11];

  if (((v26 | v15) & 1) == 0)
  {
    v27 = [(VSBinder *)v24 valueForBinding:v11];
    v28 = [(VSBinder *)v24 boundObject];
    [v28 setValue:v27 forKey:v11];
  }

  objc_sync_exit(v24);
}

- (id)boundObject
{
  WeakRetained = objc_loadWeakRetained(&self->_boundObject);

  return WeakRetained;
}

@end