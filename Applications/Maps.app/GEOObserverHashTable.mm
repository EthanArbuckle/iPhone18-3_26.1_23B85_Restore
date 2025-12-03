@interface GEOObserverHashTable
- (void)removeSnapshottedObservers;
- (void)restoreOriginalObservers;
- (void)snapshotCurrentObservers;
@end

@implementation GEOObserverHashTable

- (void)snapshotCurrentObservers
{
  allObservers = [(GEOObserverHashTable *)self allObservers];
  [(GEOObserverHashTable *)self setObserversSnapshot:allObservers];
}

- (void)restoreOriginalObservers
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  observersSnapshot = [(GEOObserverHashTable *)self observersSnapshot];
  v4 = [observersSnapshot countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(observersSnapshot);
        }

        [(GEOObserverHashTable *)self registerObserver:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [observersSnapshot countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(GEOObserverHashTable *)self setObserversSnapshot:0];
}

- (void)removeSnapshottedObservers
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  observersSnapshot = [(GEOObserverHashTable *)self observersSnapshot];
  v4 = [observersSnapshot countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(observersSnapshot);
        }

        [(GEOObserverHashTable *)self unregisterObserver:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [observersSnapshot countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end