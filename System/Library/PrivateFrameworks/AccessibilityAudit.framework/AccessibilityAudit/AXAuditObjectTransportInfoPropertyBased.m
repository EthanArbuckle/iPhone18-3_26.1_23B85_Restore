@interface AXAuditObjectTransportInfoPropertyBased
- (AXAuditObjectTransportInfoPropertyBased)init;
- (AXAuditObjectTransportInfoPropertyBased)initWithClass:(Class)a3 transportKey:(id)a4;
- (NSArray)propertyEntries;
- (void)_initializeBlocks;
- (void)addPropertyEntry:(id)a3;
@end

@implementation AXAuditObjectTransportInfoPropertyBased

- (AXAuditObjectTransportInfoPropertyBased)initWithClass:(Class)a3 transportKey:(id)a4
{
  v8.receiver = self;
  v8.super_class = AXAuditObjectTransportInfoPropertyBased;
  v5 = [(AXAuditObjectTransportInfo *)&v8 initWithTransportKey:a4];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_entryClass, a3);
    [(AXAuditObjectTransportInfoPropertyBased *)v6 _initializeBlocks];
  }

  return v6;
}

- (NSArray)propertyEntries
{
  v2 = [(AXAuditObjectTransportInfoPropertyBased *)self _propertyEntries];
  v3 = [v2 copy];

  return v3;
}

- (AXAuditObjectTransportInfoPropertyBased)init
{
  v6.receiver = self;
  v6.super_class = AXAuditObjectTransportInfoPropertyBased;
  v2 = [(AXAuditObjectTransportInfoPropertyBased *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    propertyEntries = v2->__propertyEntries;
    v2->__propertyEntries = v3;
  }

  return v2;
}

- (void)_initializeBlocks
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__AXAuditObjectTransportInfoPropertyBased__initializeBlocks__block_invoke;
  v7[3] = &unk_278BE2830;
  v7[4] = self;
  [(AXAuditObjectTransportInfo *)self setCanEncodeObjectBlock:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__AXAuditObjectTransportInfoPropertyBased__initializeBlocks__block_invoke_2;
  v5[3] = &unk_278BE2858;
  objc_copyWeak(&v6, &location);
  [(AXAuditObjectTransportInfo *)self setCreateLocalObjectBlock:v5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__AXAuditObjectTransportInfoPropertyBased__initializeBlocks__block_invoke_3;
  v3[3] = &unk_278BE2880;
  objc_copyWeak(&v4, &location);
  [(AXAuditObjectTransportInfo *)self setCreateTransportObjectBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __60__AXAuditObjectTransportInfoPropertyBased__initializeBlocks__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    [v2 entryClass];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

objc_class *__60__AXAuditObjectTransportInfoPropertyBased__initializeBlocks__block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained entryClass];

  if (v5)
  {
    v5 = objc_alloc_init(v5);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 propertyEntries];

    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 transportKey];
          v14 = [v3 objectForKeyedSubscript:v13];
          v15 = [v12 populateLocalObjectWithTransportValue];
          (v15)[2](v15, v5, v14);
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

id __60__AXAuditObjectTransportInfoPropertyBased__initializeBlocks__block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained propertyEntries];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 localValueToTransportValue];
        v13 = (v12)[2](v12, v3);

        if (v13)
        {
          v14 = [v11 transportKey];
          [v4 setObject:v13 forKeyedSubscript:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addPropertyEntry:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(AXAuditObjectTransportInfoPropertyBased *)self _propertyEntries];
    [v5 addObject:v4];
  }
}

@end