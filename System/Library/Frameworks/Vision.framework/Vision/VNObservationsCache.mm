@interface VNObservationsCache
- (VNObservationsCache)init;
- (id)observationsAcceptedByRequest:(id)a3 testedKeyHandler:(id)a4;
- (id)observationsForKey:(id)a3;
- (void)setObservations:(id)a3 forKey:(id)a4;
@end

@implementation VNObservationsCache

- (id)observationsAcceptedByRequest:(id)a3 testedKeyHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 frameworkClass];
  os_unfair_lock_lock(&self->_observationsCacheLock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(NSMapTable *)self->_observationsCache keyEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v17 = self;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 requestClass] == v8)
        {
          v14 = [v6 willAcceptCachedResultsFromRequestWithConfiguration:v13];
          if (v7)
          {
            v7[2](v7, v13, v14);
          }

          if (v14)
          {
            v15 = [(NSMapTable *)v17->_observationsCache objectForKey:v13];
            goto LABEL_14;
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_14:
    self = v17;
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_unlock(&self->_observationsCacheLock);

  return v15;
}

- (void)setObservations:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_observationsCacheLock);
  observationsCache = self->_observationsCache;
  if (v9)
  {
    v8 = [v9 copy];
    [(NSMapTable *)observationsCache setObject:v8 forKey:v6];
  }

  else
  {
    [(NSMapTable *)observationsCache removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_observationsCacheLock);
}

- (id)observationsForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observationsCacheLock);
  v5 = [(NSMapTable *)self->_observationsCache objectForKey:v4];
  os_unfair_lock_unlock(&self->_observationsCacheLock);

  return v5;
}

- (VNObservationsCache)init
{
  v8.receiver = self;
  v8.super_class = VNObservationsCache;
  v2 = [(VNObservationsCache *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_observationsCacheLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    observationsCache = v3->_observationsCache;
    v3->_observationsCache = v4;

    v6 = v3;
  }

  return v3;
}

@end