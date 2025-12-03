@interface VSBinder
- (VSBinder)init;
- (VSBinder)initWithBoundObject:(id)object;
- (id)_infoForBinding:(id)binding;
- (id)boundObject;
- (id)valueForBinding:(id)binding;
- (void)dealloc;
- (void)establishBinding:(id)binding withInfo:(id)info;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setValue:(id)value forBinding:(id)binding;
- (void)tearDownBinding:(id)binding;
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

- (VSBinder)initWithBoundObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
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

    objc_storeWeak(&v5->_boundObject, objectCopy);
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_establishmentProhibited = 1;
  allKeys = [(NSMutableDictionary *)selfCopy->_establishedBindings allKeys];
  v4 = [allKeys copy];

  objc_sync_exit(selfCopy);
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

        [(VSBinder *)selfCopy tearDownBinding:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = selfCopy;
  v9.super_class = VSBinder;
  [(VSBinder *)&v9 dealloc];
}

- (id)_infoForBinding:(id)binding
{
  bindingCopy = binding;
  if (!bindingCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  establishedBindings = [(VSBinder *)self establishedBindings];
  v6 = [establishedBindings objectForKey:bindingCopy];
  v7 = [VSOptional optionalWithObject:v6];

  return v7;
}

- (void)establishBinding:(id)binding withInfo:(id)info
{
  bindingCopy = binding;
  infoCopy = info;
  if (bindingCopy)
  {
    if (infoCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
    if (infoCopy)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The bindingInfo parameter must not be nil."];
LABEL_3:
  [infoCopy requireExpectedConcurrency];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(VSBinder *)selfCopy isEstablishmentProhibited])
  {
    v8 = [(VSBinder *)selfCopy _infoForBinding:bindingCopy];
    object = [v8 object];

    if (object)
    {
      [(VSBinder *)selfCopy tearDownBinding:bindingCopy];
    }

    establishedBindings = [(VSBinder *)selfCopy establishedBindings];
    [establishedBindings setObject:infoCopy forKey:bindingCopy];
    v11 = objc_autoreleasePoolPush();
    weakObservedObject = [infoCopy weakObservedObject];
    if (weakObservedObject)
    {
      keyPath = [infoCopy keyPath];
      [weakObservedObject addObserver:selfCopy forKeyPath:keyPath options:12 context:bindingCopy];
      v14 = [weakObservedObject vs_unbinderCreatingIfNeeded:1];
      [v14 binder:selfCopy didEstablishBinding:bindingCopy];
    }

    else
    {
      [establishedBindings removeObjectForKey:bindingCopy];
    }

    objc_autoreleasePoolPop(v11);
  }

  objc_sync_exit(selfCopy);
}

- (void)tearDownBinding:(id)binding
{
  bindingCopy = binding;
  if (!bindingCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(VSBinder *)selfCopy _infoForBinding:bindingCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__VSBinder_tearDownBinding___block_invoke;
  v8[3] = &unk_278B74340;
  v8[4] = selfCopy;
  v7 = bindingCopy;
  v9 = v7;
  [v6 conditionallyUnwrapObject:v8 otherwise:&__block_literal_global_27];

  objc_sync_exit(selfCopy);
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

- (id)valueForBinding:(id)binding
{
  bindingCopy = binding;
  if (!bindingCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(VSBinder *)selfCopy _infoForBinding:bindingCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__VSBinder_valueForBinding___block_invoke;
  v9[3] = &unk_278B74368;
  v9[4] = &v10;
  [v6 conditionallyUnwrapObject:v9];

  objc_sync_exit(selfCopy);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __28__VSBinder_valueForBinding___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 value];

  return MEMORY[0x2821F96F8]();
}

- (void)setValue:(id)value forBinding:(id)binding
{
  valueCopy = value;
  bindingCopy = binding;
  if (!bindingCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentlyChangingBindings = [(VSBinder *)selfCopy currentlyChangingBindings];
  [currentlyChangingBindings addObject:bindingCopy];
  v10 = [(VSBinder *)selfCopy _infoForBinding:bindingCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__VSBinder_setValue_forBinding___block_invoke;
  v12[3] = &unk_278B74390;
  v11 = valueCopy;
  v13 = v11;
  [v10 conditionallyUnwrapObject:v12];

  [currentlyChangingBindings removeObject:bindingCopy];
  objc_sync_exit(selfCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v37 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (pathCopy)
  {
    if (context)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPathOrNil parameter must not be nil."];
    if (context)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The context parameter must not be nil."];
LABEL_3:
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = [(VSBinder *)selfCopy _infoForBinding:contextCopy];
  [v13 conditionallyUnwrapObject:&__block_literal_global_24];
  v29 = pathCopy;

  objc_sync_exit(selfCopy);
  v14 = [changeCopy objectForKey:*MEMORY[0x277CCA2F8]];
  bOOLValue = [v14 BOOLValue];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (!pathCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPathOrNil parameter must not be nil."];
  }

  v16 = intermediaryKeyPathsForKeyPath(pathCopy);
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

        v20 = [objectCopy valueForKeyPath:*(*(&v32 + 1) + 8 * i)];
        v21 = objc_autoreleasePoolPush();
        v22 = [v20 vs_unbinderCreatingIfNeeded:bOOLValue ^ 1u];
        v23 = v22;
        if (bOOLValue)
        {
          [v22 binder:selfCopy didTearDownBinding:contextCopy];
        }

        else
        {
          [v22 binder:selfCopy didEstablishBinding:contextCopy];
        }

        objc_autoreleasePoolPop(v21);
      }

      v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }

  v24 = selfCopy;
  objc_sync_enter(v24);
  currentlyChangingBindings = [(VSBinder *)v24 currentlyChangingBindings];
  v26 = [currentlyChangingBindings containsObject:contextCopy];

  if (((v26 | bOOLValue) & 1) == 0)
  {
    v27 = [(VSBinder *)v24 valueForBinding:contextCopy];
    boundObject = [(VSBinder *)v24 boundObject];
    [boundObject setValue:v27 forKey:contextCopy];
  }

  objc_sync_exit(v24);
}

- (id)boundObject
{
  WeakRetained = objc_loadWeakRetained(&self->_boundObject);

  return WeakRetained;
}

@end