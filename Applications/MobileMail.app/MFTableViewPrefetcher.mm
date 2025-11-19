@interface MFTableViewPrefetcher
- (MFTableViewPrefetcher)initWithPrefetchProvider:(id)a3 maxConcurrentOperationCount:(unint64_t)a4;
- (void)tableView:(id)a3 cancelPrefetchingForRowsAtIndexPaths:(id)a4;
- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4;
@end

@implementation MFTableViewPrefetcher

- (MFTableViewPrefetcher)initWithPrefetchProvider:(id)a3 maxConcurrentOperationCount:(unint64_t)a4
{
  v8 = a3;
  if (!v8)
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
    objc_storeStrong(&v9->_prefetchProvider, a3);
    v11 = objc_alloc_init(NSOperationQueue);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v11;

    [(NSOperationQueue *)v10->_operationQueue setQualityOfService:25];
    [(NSOperationQueue *)v10->_operationQueue setMaxConcurrentOperationCount:a4];
  }

  return v10;
}

- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(MFTableViewPrefetcher *)self prefetchProvider];
        v11 = [v10 tableViewPrefetcher:self prefetchOperationAtIndexPath:v9];

        if (v11)
        {
          v12 = [(MFTableViewPrefetcher *)self operationQueue];
          [v12 addOperation:v11];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)tableView:(id)a3 cancelPrefetchingForRowsAtIndexPaths:(id)a4
{
  v5 = [a4 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(MFTableViewPrefetcher *)self operationQueue];
  v7 = [v6 operations];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v11 indexPath];
        if ([v5 containsObject:v12])
        {
          [v11 cancel];
          [v5 removeObject:v12];
          if (![v5 count])
          {

            goto LABEL_12;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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