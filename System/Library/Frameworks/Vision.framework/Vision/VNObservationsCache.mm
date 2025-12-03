@interface VNObservationsCache
- (VNObservationsCache)init;
- (id)observationsAcceptedByRequest:(id)request testedKeyHandler:(id)handler;
- (id)observationsForKey:(id)key;
- (void)setObservations:(id)observations forKey:(id)key;
@end

@implementation VNObservationsCache

- (id)observationsAcceptedByRequest:(id)request testedKeyHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  frameworkClass = [requestCopy frameworkClass];
  os_unfair_lock_lock(&self->_observationsCacheLock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyEnumerator = [(NSMapTable *)self->_observationsCache keyEnumerator];
  v10 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    selfCopy = self;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 requestClass] == frameworkClass)
        {
          v14 = [requestCopy willAcceptCachedResultsFromRequestWithConfiguration:v13];
          if (handlerCopy)
          {
            handlerCopy[2](handlerCopy, v13, v14);
          }

          if (v14)
          {
            v15 = [(NSMapTable *)selfCopy->_observationsCache objectForKey:v13];
            goto LABEL_14;
          }
        }
      }

      v10 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_14:
    self = selfCopy;
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_unlock(&self->_observationsCacheLock);

  return v15;
}

- (void)setObservations:(id)observations forKey:(id)key
{
  observationsCopy = observations;
  keyCopy = key;
  os_unfair_lock_lock(&self->_observationsCacheLock);
  observationsCache = self->_observationsCache;
  if (observationsCopy)
  {
    v8 = [observationsCopy copy];
    [(NSMapTable *)observationsCache setObject:v8 forKey:keyCopy];
  }

  else
  {
    [(NSMapTable *)observationsCache removeObjectForKey:keyCopy];
  }

  os_unfair_lock_unlock(&self->_observationsCacheLock);
}

- (id)observationsForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_observationsCacheLock);
  v5 = [(NSMapTable *)self->_observationsCache objectForKey:keyCopy];
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
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    observationsCache = v3->_observationsCache;
    v3->_observationsCache = strongToStrongObjectsMapTable;

    v6 = v3;
  }

  return v3;
}

@end