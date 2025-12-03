@interface BKPaginationBatchJob
- (BKPaginationBatchJob)init;
- (CGSize)pageSize;
- (void)copyState:(id)state;
@end

@implementation BKPaginationBatchJob

- (BKPaginationBatchJob)init
{
  v5.receiver = self;
  v5.super_class = BKPaginationBatchJob;
  v2 = [(BKJob *)&v5 init];
  if (v2)
  {
    v3 = +[BKPaginationBatchJob jobName];
    [(BKJob *)v2 setName:v3];
  }

  return v2;
}

- (void)copyState:(id)state
{
  v10.receiver = self;
  v10.super_class = BKPaginationBatchJob;
  stateCopy = state;
  [(BKPaginationJob *)&v10 copyState:stateCopy];
  bookDatabaseKey = [stateCopy bookDatabaseKey];
  [(BKPaginationBatchJob *)self setBookDatabaseKey:bookDatabaseKey];

  lookupKey = [stateCopy lookupKey];
  [(BKPaginationBatchJob *)self setLookupKey:lookupKey];

  style = [stateCopy style];
  [(BKPaginationBatchJob *)self setStyle:style];

  [stateCopy pageSize];
  [(BKPaginationBatchJob *)self setPageSize:?];
  historyEntities = [stateCopy historyEntities];
  [(BKPaginationBatchJob *)self setHistoryEntities:historyEntities];

  configuration = [stateCopy configuration];

  [(BKPaginationBatchJob *)self setConfiguration:configuration];
}

- (CGSize)pageSize
{
  width = self->_pageSize.width;
  height = self->_pageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end