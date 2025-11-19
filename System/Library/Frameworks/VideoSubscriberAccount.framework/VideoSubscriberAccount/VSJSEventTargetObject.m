@interface VSJSEventTargetObject
- (VSJSEventTargetObject)initWithContext:(id)a3;
- (unint64_t)_indexForListener:(id)a3 withEventType:(id)a4;
- (void)addEventListener:(id)a3 :(id)a4 :(id)a5;
- (void)dispatchEvent:(id)a3 withInfo:(id)a4;
- (void)removeEventListener:(id)a3 :(id)a4;
@end

@implementation VSJSEventTargetObject

- (VSJSEventTargetObject)initWithContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = VSJSEventTargetObject;
  v3 = [(VSJSObject *)&v7 initWithContext:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    listeners = v3->_listeners;
    v3->_listeners = v4;
  }

  return v3;
}

- (void)addEventListener:(id)a3 :(id)a4 :(id)a5
{
  v14 = a3;
  v7 = a4;
  if ([v14 length] && -[VSJSEventTargetObject _indexForListener:withEventType:](self, "_indexForListener:withEventType:", v7, v14) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277CD4640] currentContext];
    v9 = [v8 virtualMachine];

    v10 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
    [v9 addManagedReference:v10 withOwner:self];
    v11 = [(VSJSEventTargetObject *)self listeners];
    v12 = [v11 objectForKeyedSubscript:v14];

    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = [(VSJSEventTargetObject *)self listeners];
      [v13 setObject:v12 forKeyedSubscript:v14];
    }

    [v12 addObject:v10];
  }
}

- (void)removeEventListener:(id)a3 :(id)a4
{
  v15 = a3;
  v6 = [(VSJSEventTargetObject *)self _indexForListener:a4 withEventType:?];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [(VSJSEventTargetObject *)self listeners];
    v9 = [v8 objectForKeyedSubscript:v15];
    v10 = [v9 objectAtIndex:v7];

    v11 = [(VSJSEventTargetObject *)self listeners];
    v12 = [v11 objectForKeyedSubscript:v15];
    [v12 removeObjectAtIndex:v7];

    v13 = [MEMORY[0x277CD4640] currentContext];
    v14 = [v13 virtualMachine];

    [v14 removeManagedReference:v10 withOwner:self];
  }
}

- (void)dispatchEvent:(id)a3 withInfo:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(VSJSEventTargetObject *)self listeners];
  v9 = [v8 objectForKeyedSubscript:v6];

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

        v15 = [*(*(&v18 + 1) + 8 * v14) value];
        v22 = v7;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
        v17 = [v15 callWithArguments:v16];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v12);
  }
}

- (unint64_t)_indexForListener:(id)a3 withEventType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [(VSJSEventTargetObject *)self listeners];
  v9 = [v8 objectForKeyedSubscript:v7];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__VSJSEventTargetObject__indexForListener_withEventType___block_invoke;
  v13[3] = &unk_278B73330;
  v10 = v6;
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