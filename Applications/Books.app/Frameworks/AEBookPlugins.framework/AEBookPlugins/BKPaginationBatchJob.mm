@interface BKPaginationBatchJob
- (BKPaginationBatchJob)init;
- (CGSize)pageSize;
- (void)copyState:(id)a3;
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

- (void)copyState:(id)a3
{
  v10.receiver = self;
  v10.super_class = BKPaginationBatchJob;
  v4 = a3;
  [(BKPaginationJob *)&v10 copyState:v4];
  v5 = [v4 bookDatabaseKey];
  [(BKPaginationBatchJob *)self setBookDatabaseKey:v5];

  v6 = [v4 lookupKey];
  [(BKPaginationBatchJob *)self setLookupKey:v6];

  v7 = [v4 style];
  [(BKPaginationBatchJob *)self setStyle:v7];

  [v4 pageSize];
  [(BKPaginationBatchJob *)self setPageSize:?];
  v8 = [v4 historyEntities];
  [(BKPaginationBatchJob *)self setHistoryEntities:v8];

  v9 = [v4 configuration];

  [(BKPaginationBatchJob *)self setConfiguration:v9];
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