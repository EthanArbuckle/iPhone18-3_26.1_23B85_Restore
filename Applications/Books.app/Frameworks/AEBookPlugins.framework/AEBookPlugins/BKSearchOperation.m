@interface BKSearchOperation
- (AEBookInfo)searchBook;
- (BKSearchOperation)init;
- (BKSearchOperationDelegate)delegate;
- (void)_postSearch:(id)a3;
- (void)_search;
- (void)cancel;
- (void)dealloc;
- (void)main;
- (void)setSearchBook:(id)a3;
@end

@implementation BKSearchOperation

- (BKSearchOperation)init
{
  v6.receiver = self;
  v6.super_class = BKSearchOperation;
  v2 = [(BKSearchOperation *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:100];
    results = v2->_results;
    v2->_results = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(BKSearchOperation *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = BKSearchOperation;
  [(BKSearchOperation *)&v3 dealloc];
}

- (void)setSearchBook:(id)a3
{
  obj = a3;
  v4 = [obj url];
  [(BKSearchOperation *)self setBookURL:v4];

  objc_storeWeak(&self->_book, obj);
}

- (void)_postSearch:(id)a3
{
  if ([a3 BOOLValue])
  {
    v5 = [(BKSearchOperation *)self delegate];
    [v5 searchDidTimeOut:self];
LABEL_5:

    return;
  }

  if ([(BKSearchOperation *)self isCancelled])
  {
    v5 = [(BKSearchOperation *)self delegate];
    [v5 searchWasCancelled:self];
    goto LABEL_5;
  }

  if (self->_isDone && [(BKSearchOperation *)self isPastLimit])
  {
    v5 = [(BKSearchOperation *)self delegate];
    [v5 searchLimitHit:self];
    goto LABEL_5;
  }

  if (![(BKSearchOperation *)self havePartialResults])
  {
    if (!self->_isDone)
    {
      return;
    }

    v5 = [(BKSearchOperation *)self delegate];
    [v5 searchDidFinish:self];
    goto LABEL_5;
  }

  v4 = [(BKSearchOperation *)self delegate];
  [v4 searchHasPartialResults:self];

  [(NSMutableArray *)self->_results removeAllObjects];

  [(BKSearchOperation *)self setHavePartialResults:0];
}

- (void)_search
{
  v3 = objc_autoreleasePoolPush();
  v4 = [NSNumber numberWithBool:[(BKSearchOperation *)self _doSearch]];
  if ([(BKSearchOperation *)self requiresMainThread])
  {
    [(BKSearchOperation *)self _postSearch:v4];
  }

  else
  {
    [(BKSearchOperation *)self performSelectorOnMainThread:"_postSearch:" withObject:v4 waitUntilDone:1];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)main
{
  v3 = _AESearchLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67109376;
    v11 = self;
    v12 = 1024;
    v13 = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "START main %x for ordinal: %d", &v10, 0xEu);
  }

  [(BKSearchOperation *)self desiredSleepTime];
  v5 = v4;
  v6 = [(BKSearchOperation *)self requiresMainThread];
  if (!self->_isDone)
  {
    v7 = v6;
    do
    {
      if (([(BKSearchOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      if (v7)
      {
        [(BKSearchOperation *)self performSelectorOnMainThread:"_search" withObject:0 waitUntilDone:1];
      }

      else
      {
        [(BKSearchOperation *)self _search];
      }

      if (v5 > 0.0)
      {
        [NSThread sleepForTimeInterval:v5];
      }
    }

    while (!self->_isDone);
  }

  v8 = _AESearchLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(BKSearchOperation *)self ordinal];
    v10 = 67109376;
    v11 = self;
    v12 = 1024;
    v13 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "FINISH main %x for ordinal: %d", &v10, 0xEu);
  }
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = BKSearchOperation;
  [(BKSearchOperation *)&v4 cancel];
  if (!self->_isDone)
  {
    v3 = [(BKSearchOperation *)self delegate];
    [v3 searchWasCancelled:self];
  }

  [(BKSearchOperation *)self setDelegate:0];
}

- (AEBookInfo)searchBook
{
  WeakRetained = objc_loadWeakRetained(&self->_book);

  return WeakRetained;
}

- (BKSearchOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end