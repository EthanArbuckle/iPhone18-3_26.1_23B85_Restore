@interface VSJSEventTargetObject
- (VSJSEventTargetObject)initWithContext:(id)context;
- (unint64_t)_indexForListener:(id)listener withEventType:(id)type;
- (void)addEventListener:(id)listener :(id)a4 :(id)a5;
- (void)dispatchEvent:(id)event withInfo:(id)info;
- (void)removeEventListener:(id)listener :(id)a4;
@end

@implementation VSJSEventTargetObject

- (VSJSEventTargetObject)initWithContext:(id)context
{
  v7.receiver = self;
  v7.super_class = VSJSEventTargetObject;
  v3 = [(VSJSObject *)&v7 initWithContext:context];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    listeners = v3->_listeners;
    v3->_listeners = v4;
  }

  return v3;
}

- (void)addEventListener:(id)listener :(id)a4 :(id)a5
{
  listenerCopy = listener;
  v7 = a4;
  if ([listenerCopy length] && -[VSJSEventTargetObject _indexForListener:withEventType:](self, "_indexForListener:withEventType:", v7, listenerCopy) == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentContext = [MEMORY[0x277CD4640] currentContext];
    virtualMachine = [currentContext virtualMachine];

    v10 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
    [virtualMachine addManagedReference:v10 withOwner:self];
    listeners = [(VSJSEventTargetObject *)self listeners];
    v12 = [listeners objectForKeyedSubscript:listenerCopy];

    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      listeners2 = [(VSJSEventTargetObject *)self listeners];
      [listeners2 setObject:v12 forKeyedSubscript:listenerCopy];
    }

    [v12 addObject:v10];
  }
}

- (void)removeEventListener:(id)listener :(id)a4
{
  listenerCopy = listener;
  v6 = [(VSJSEventTargetObject *)self _indexForListener:a4 withEventType:?];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    listeners = [(VSJSEventTargetObject *)self listeners];
    v9 = [listeners objectForKeyedSubscript:listenerCopy];
    v10 = [v9 objectAtIndex:v7];

    listeners2 = [(VSJSEventTargetObject *)self listeners];
    v12 = [listeners2 objectForKeyedSubscript:listenerCopy];
    [v12 removeObjectAtIndex:v7];

    currentContext = [MEMORY[0x277CD4640] currentContext];
    virtualMachine = [currentContext virtualMachine];

    [virtualMachine removeManagedReference:v10 withOwner:self];
  }
}

- (void)dispatchEvent:(id)event withInfo:(id)info
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  infoCopy = info;
  listeners = [(VSJSEventTargetObject *)self listeners];
  v9 = [listeners objectForKeyedSubscript:eventCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        value = [*(*(&v18 + 1) + 8 * v14) value];
        v22 = infoCopy;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
        v17 = [value callWithArguments:v16];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v12);
  }
}

- (unint64_t)_indexForListener:(id)listener withEventType:(id)type
{
  listenerCopy = listener;
  typeCopy = type;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  listeners = [(VSJSEventTargetObject *)self listeners];
  v9 = [listeners objectForKeyedSubscript:typeCopy];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__VSJSEventTargetObject__indexForListener_withEventType___block_invoke;
  v13[3] = &unk_278B73330;
  v10 = listenerCopy;
  v14 = v10;
  v15 = &v16;
  [v9 enumerateObjectsUsingBlock:v13];
  v11 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v11;
}

void __57__VSJSEventTargetObject__indexForListener_withEventType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 value];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

@end