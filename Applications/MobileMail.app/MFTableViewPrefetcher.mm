@interface MFTableViewPrefetcher
- (MFTableViewPrefetcher)initWithPrefetchProvider:(id)provider maxConcurrentOperationCount:(unint64_t)count;
- (void)tableView:(id)view cancelPrefetchingForRowsAtIndexPaths:(id)paths;
- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths;
@end

@implementation MFTableViewPrefetcher

- (MFTableViewPrefetcher)initWithPrefetchProvider:(id)provider maxConcurrentOperationCount:(unint64_t)count
{
  providerCopy = provider;
  if (!providerCopy)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MFTableViewPrefetcher.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"prefetchProvider"}];
  }

  v15.receiver = self;
  v15.super_class = MFTableViewPrefetcher;
  v9 = [(MFTableViewPrefetcher *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_prefetchProvider, provider);
    v11 = objc_alloc_init(NSOperationQueue);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v11;

    [(NSOperationQueue *)v10->_operationQueue setQualityOfService:25];
    [(NSOperationQueue *)v10->_operationQueue setMaxConcurrentOperationCount:count];
  }

  return v10;
}

- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  pathsCopy = paths;
  v6 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        prefetchProvider = [(MFTableViewPrefetcher *)self prefetchProvider];
        v11 = [prefetchProvider tableViewPrefetcher:self prefetchOperationAtIndexPath:v9];

        if (v11)
        {
          operationQueue = [(MFTableViewPrefetcher *)self operationQueue];
          [operationQueue addOperation:v11];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)tableView:(id)view cancelPrefetchingForRowsAtIndexPaths:(id)paths
{
  v5 = [paths mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  operationQueue = [(MFTableViewPrefetcher *)self operationQueue];
  operations = [operationQueue operations];

  v8 = [operations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(operations);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        indexPath = [v11 indexPath];
        if ([v5 containsObject:indexPath])
        {
          [v11 cancel];
          [v5 removeObject:indexPath];
          if (![v5 count])
          {

            goto LABEL_12;
          }
        }
      }

      v8 = [operations countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

@end