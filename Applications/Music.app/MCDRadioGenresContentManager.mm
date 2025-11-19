@interface MCDRadioGenresContentManager
- (id)_modelRequest;
- (id)itemAtIndexPath:(id)a3;
@end

@implementation MCDRadioGenresContentManager

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDRadioGenresContentManager *)self genreCategories];

  if (!v5)
  {
    v6 = +[NSMutableArray array];
    v7 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v8 = [v7 results];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000FCCBC;
    v18[3] = &unk_101098568;
    v19 = v6;
    v9 = v6;
    [v8 enumerateSectionsUsingBlock:v18];

    v10 = +[UILocalizedIndexedCollation currentCollation];
    v11 = [v10 sortedArrayFromArray:v9 collationStringSelector:"title"];
    [(MCDRadioGenresContentManager *)self setGenreCategories:v11];
  }

  v12 = [v4 row];
  v13 = [(MCDRadioGenresContentManager *)self genreCategories];
  v14 = [v13 count];

  if (v12 >= v14)
  {
    v16 = 0;
  }

  else
  {
    v15 = [(MCDRadioGenresContentManager *)self genreCategories];
    v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  return v16;
}

- (id)_modelRequest
{
  v3 = objc_alloc_init(MPModelStoreBrowseRequest);
  [v3 setFilteringPolicy:1];
  v4 = [(MCDFuseContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MCDFuseContentManager *)self dataSource];
    v7 = [v6 parentSection];
    [v3 configureWithParentSection:v7];
  }

  v8 = [(MCDFuseContentManager *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MCDFuseContentManager *)self dataSource];
    [v3 setDomain:{objc_msgSend(v10, "domain")}];
  }

  return v3;
}

@end