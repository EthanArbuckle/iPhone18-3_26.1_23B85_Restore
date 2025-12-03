@interface _NBSearchOperation
- (NBSearchDataSource)dataSource;
- (_NBSearchOperation)initWithSearchDataSource:(id)source searchString:(id)string;
- (void)main;
@end

@implementation _NBSearchOperation

- (_NBSearchOperation)initWithSearchDataSource:(id)source searchString:(id)string
{
  sourceCopy = source;
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = _NBSearchOperation;
  v8 = [(_NBSearchOperation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    v10 = [stringCopy copy];
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