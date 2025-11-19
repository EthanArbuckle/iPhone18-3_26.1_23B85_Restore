@interface SearchResultsDataSourceContent
- (NSArray)objects;
- (SearchResultsDataSourceContent)initWithOrderedDataSource:(id)a3;
- (id)objectAtIndexPath:(id)a3;
- (id)titleForHeaderInSection:(int64_t)a3;
- (id)viewForHeaderInSection:(int64_t)a3 isFirstNonEmptySection:(BOOL)a4;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (unint64_t)count;
@end

@implementation SearchResultsDataSourceContent

- (id)viewForHeaderInSection:(int64_t)a3 isFirstNonEmptySection:(BOOL)a4
{
  v4 = a4;
  v6 = [(SearchResultsDataSourceContent *)self orderedDataSource];
  v7 = [v6 viewForHeaderInSection:a3 isFirstNonEmptySection:v4];

  return v7;
}

- (id)titleForHeaderInSection:(int64_t)a3
{
  v4 = [(SearchResultsDataSourceContent *)self orderedDataSource];
  v5 = [v4 titleForHeaderInSection:a3];

  return v5;
}

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SearchResultsDataSourceContent *)self orderedDataSource];
  v6 = [v5 objectAtIndexPath:v4];

  return v6;
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  v4 = [(SearchResultsDataSourceContent *)self orderedDataSource];
  v5 = [v4 numberOfRowsInSection:a3];

  return v5;
}

- (int64_t)numberOfSections
{
  v2 = [(SearchResultsDataSourceContent *)self orderedDataSource];
  v3 = [v2 numberOfSections];

  return v3;
}

- (unint64_t)count
{
  v2 = [(SearchResultsDataSourceContent *)self orderedDataSource];
  v3 = [v2 orderedObjects];
  v4 = [v3 count];

  return v4;
}

- (NSArray)objects
{
  v2 = [(SearchResultsDataSourceContent *)self orderedDataSource];
  v3 = [v2 orderedObjects];

  return v3;
}

- (SearchResultsDataSourceContent)initWithOrderedDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SearchResultsDataSourceContent;
  v6 = [(SearchResultsDataSourceContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_orderedDataSource, a3);
  }

  return v7;
}

@end