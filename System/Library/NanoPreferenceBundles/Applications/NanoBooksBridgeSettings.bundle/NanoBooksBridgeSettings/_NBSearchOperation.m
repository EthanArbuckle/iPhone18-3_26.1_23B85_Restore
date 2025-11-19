@interface _NBSearchOperation
- (NBSearchDataSource)dataSource;
- (_NBSearchOperation)initWithSearchDataSource:(id)a3 searchString:(id)a4;
- (void)main;
@end

@implementation _NBSearchOperation

- (_NBSearchOperation)initWithSearchDataSource:(id)a3 searchString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _NBSearchOperation;
  v8 = [(_NBSearchOperation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    v10 = [v7 copy];
    searchString = v9->_searchString;
    v9->_searchString = v10;
  }

  return v9;
}

- (void)main
{
  if (([(_NBSearchOperation *)self isCancelled]& 1) == 0)
  {

    [(_NBSearchOperation *)self executeSearch];
  }
}

- (NBSearchDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end