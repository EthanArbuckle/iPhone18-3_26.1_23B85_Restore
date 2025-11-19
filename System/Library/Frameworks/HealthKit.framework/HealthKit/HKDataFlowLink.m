@interface HKDataFlowLink
- (HKDataFlowLink)initWithProcessor:(id)a3 sourceProtocol:(id)a4 destinationProtocol:(id)a5 loggingCategory:(id)a6;
- (HKDataFlowLinkProcessor)processor;
- (id)allDestinationProcessors;
- (id)allSourceProcessors;
- (id)description;
- (id)destinationProcessorsConformingToProtocol:(id)a3;
- (void)addDestination:(id)a3;
- (void)addSource:(id)a3;
- (void)destination:(id)a3 didAddDownstreamDestination:(id)a4;
- (void)removeDestination:(id)a3;
- (void)removeSource:(id)a3;
- (void)sendToDestinationProcessors:(id)a3;
- (void)source:(id)a3 didAddUpstreamSource:(id)a4;
@end

@implementation HKDataFlowLink

- (HKDataFlowLink)initWithProcessor:(id)a3 sourceProtocol:(id)a4 destinationProtocol:(id)a5 loggingCategory:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = HKDataFlowLink;
  v14 = [(HKDataFlowLink *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_processor, v10);
    objc_storeStrong(&v15->_sourceProtocol, a4);
    v16 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    sources = v15->_sources;
    v15->_sources = v16;

    objc_storeStrong(&v15->_destinationProtocol, a5);
    v18 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    destinations = v15->_destinations;
    v15->_destinations = v18;

    objc_storeStrong(&v15->_category, a6);
    v15->_lock._os_unfair_lock_opaque = 0;
  }

  return v15;
}

- (void)addSource:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 processor];
  v6 = [v5 conformsToProtocol:self->_sourceProtocol];

  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    _HKInitializeLogging();
    category = self->_category;
    if (os_log_type_enabled(category, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v27 = self;
      v28 = 2114;
      v29 = v4;
      _os_log_impl(&dword_19197B000, category, OS_LOG_TYPE_INFO, "%{public}@: Added source %{public}@", buf, 0x16u);
    }

    [(NSHashTable *)self->_sources addObject:v4];
    v8 = [(NSHashTable *)self->_destinations allObjects];
    os_unfair_lock_unlock(&self->_lock);
    [v4 addDestination:self];
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_processor);
      [v11 dataFlowLink:self didAddSource:v4 direct:1];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v21 + 1) + 8 * i) source:self didAddUpstreamSource:{v4, v21}];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  else
  {
    _HKInitializeLogging();
    v17 = self->_category;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    sourceProtocol = self->_sourceProtocol;
    v12 = v17;
    v20 = NSStringFromProtocol(sourceProtocol);
    *buf = 138543874;
    v27 = self;
    v28 = 2114;
    v29 = v4;
    v30 = 2114;
    v31 = v20;
    _os_log_fault_impl(&dword_19197B000, v12, OS_LOG_TYPE_FAULT, "%{public}@: Cannot add source %{public}@ because it does not conform to expected protocol %{public}@", buf, 0x20u);
  }

LABEL_16:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)removeSource:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 removeDestination:self];
  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging();
  category = self->_category;
  if (os_log_type_enabled(category, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_19197B000, category, OS_LOG_TYPE_INFO, "%{public}@: Removed source %{public}@", &v7, 0x16u);
  }

  [(NSHashTable *)self->_sources removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didAddUpstreamSource:(id)a4
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_processor);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_processor);
    [v7 dataFlowLink:self didAddSource:v8 direct:0];
  }
}

- (id)allSourceProcessors
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_sources allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [v3 hk_map:&__block_literal_global_84];

  return v4;
}

- (id)allDestinationProcessors
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_destinations allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [v3 hk_map:&__block_literal_global_8];

  return v4;
}

- (id)destinationProcessorsConformingToProtocol:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_destinations allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__HKDataFlowLink_destinationProcessorsConformingToProtocol___block_invoke;
  v21[3] = &unk_1E7380998;
  v7 = v4;
  v22 = v7;
  v8 = [v5 hk_map:v21];
  [v6 addObjectsFromArray:v8];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) destinationProcessorsConformingToProtocol:{v7, v17}];
        [v6 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

id __60__HKDataFlowLink_destinationProcessorsConformingToProtocol___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 processor];
  if ([v4 conformsToProtocol:*(a1 + 32)])
  {
    v5 = [v3 processor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sendToDestinationProcessors:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_destinations allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) processor];
        if (v11)
        {
          v4[2](v4, v11);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addDestination:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 processor];
  v6 = [v5 conformsToProtocol:self->_destinationProtocol];

  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    _HKInitializeLogging();
    category = self->_category;
    if (os_log_type_enabled(category, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v25 = self;
      v26 = 2114;
      v27 = v4;
      _os_log_impl(&dword_19197B000, category, OS_LOG_TYPE_INFO, "%{public}@: Added destination %{public}@", buf, 0x16u);
    }

    [(NSHashTable *)self->_destinations addObject:v4];
    v8 = [(NSHashTable *)self->_sources allObjects];
    os_unfair_lock_unlock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_processor);
      [v11 dataFlowLink:self didAddDestination:v4 direct:1];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v19 + 1) + 8 * i) destination:self didAddDownstreamDestination:{v4, v19}];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v17 = self->_category;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [HKDataFlowLink addDestination:v17];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)removeDestination:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging();
  category = self->_category;
  if (os_log_type_enabled(category, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_19197B000, category, OS_LOG_TYPE_INFO, "%{public}@: Removed destination %{public}@", &v7, 0x16u);
  }

  [(NSHashTable *)self->_destinations removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)destination:(id)a3 didAddDownstreamDestination:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_processor);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_processor);
    [v7 dataFlowLink:self didAddDestination:v8 direct:0];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained(&self->_processor);
  v5 = [v3 stringWithFormat:@"<HKDataFlowLink:%p [%@]>", self, WeakRetained];

  return v5;
}

- (HKDataFlowLinkProcessor)processor
{
  WeakRetained = objc_loadWeakRetained(&self->_processor);

  return WeakRetained;
}

@end