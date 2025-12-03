@interface SearchResultsDataSourceContent
- (NSArray)objects;
- (SearchResultsDataSourceContent)initWithOrderedDataSource:(id)source;
- (id)objectAtIndexPath:(id)path;
- (id)titleForHeaderInSection:(int64_t)section;
- (id)viewForHeaderInSection:(int64_t)section isFirstNonEmptySection:(BOOL)emptySection;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (unint64_t)count;
@end

@implementation SearchResultsDataSourceContent

- (id)viewForHeaderInSection:(int64_t)section isFirstNonEmptySection:(BOOL)emptySection
{
  emptySectionCopy = emptySection;
  orderedDataSource = [(SearchResultsDataSourceContent *)self orderedDataSource];
  v7 = [orderedDataSource viewForHeaderInSection:section isFirstNonEmptySection:emptySectionCopy];

  return v7;
}

- (id)titleForHeaderInSection:(int64_t)section
{
  orderedDataSource = [(SearchResultsDataSourceContent *)self orderedDataSource];
  v5 = [orderedDataSource titleForHeaderInSection:section];

  return v5;
}

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  orderedDataSource = [(SearchResultsDataSourceContent *)self orderedDataSource];
  v6 = [orderedDataSource objectAtIndexPath:pathCopy];

  return v6;
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  orderedDataSource = [(SearchResultsDataSourceContent *)self orderedDataSource];
  v5 = [orderedDataSource numberOfRowsInSection:section];

  return v5;
}

- (int64_t)numberOfSections
{
  orderedDataSource = [(SearchResultsDataSourceContent *)self orderedDataSource];
  numberOfSections = [orderedDataSource numberOfSections];

  return numberOfSections;
}

- (unint64_t)count
{
  orderedDataSource = [(SearchResultsDataSourceContent *)self orderedDataSource];
  orderedObjects = [orderedDataSource orderedObjects];
  v4 = [orderedObjects count];

  return v4;
}

- (NSArray)objects
{
  orderedDataSource = [(SearchResultsDataSourceContent *)self orderedDataSource];
  orderedObjects = [orderedDataSource orderedObjects];

  return orderedObjects;
}

- (SearchResultsDataSourceContent)initWithOrderedDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = SearchResultsDataSourceContent;
  v6 = [(SearchResultsDataSourceContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_orderedDataSource, source);
  }

  return v7;
}

@end