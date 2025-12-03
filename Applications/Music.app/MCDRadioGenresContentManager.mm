@interface MCDRadioGenresContentManager
- (id)_modelRequest;
- (id)itemAtIndexPath:(id)path;
@end

@implementation MCDRadioGenresContentManager

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  genreCategories = [(MCDRadioGenresContentManager *)self genreCategories];

  if (!genreCategories)
  {
    v6 = +[NSMutableArray array];
    lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
    results = [lastReceivedResponse results];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000FCCBC;
    v18[3] = &unk_101098568;
    v19 = v6;
    v9 = v6;
    [results enumerateSectionsUsingBlock:v18];

    v10 = +[UILocalizedIndexedCollation currentCollation];
    v11 = [v10 sortedArrayFromArray:v9 collationStringSelector:"title"];
    [(MCDRadioGenresContentManager *)self setGenreCategories:v11];
  }

  v12 = [pathCopy row];
  genreCategories2 = [(MCDRadioGenresContentManager *)self genreCategories];
  v14 = [genreCategories2 count];

  if (v12 >= v14)
  {
    v16 = 0;
  }

  else
  {
    genreCategories3 = [(MCDRadioGenresContentManager *)self genreCategories];
    v16 = [genreCategories3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  return v16;
}

- (id)_modelRequest
{
  v3 = objc_alloc_init(MPModelStoreBrowseRequest);
  [v3 setFilteringPolicy:1];
  dataSource = [(MCDFuseContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    dataSource2 = [(MCDFuseContentManager *)self dataSource];
    parentSection = [dataSource2 parentSection];
    [v3 configureWithParentSection:parentSection];
  }

  dataSource3 = [(MCDFuseContentManager *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    dataSource4 = [(MCDFuseContentManager *)self dataSource];
    [v3 setDomain:{objc_msgSend(dataSource4, "domain")}];
  }

  return v3;
}

@end