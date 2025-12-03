@interface CarSmallWidgetSearchCategoriesView
- (id)modelForItemAtIndexPath:(id)path;
- (void)didSelectItemAtIndexPath:(id)path;
- (void)setCategories:(id)categories;
@end

@implementation CarSmallWidgetSearchCategoriesView

- (void)didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  categories = [(CarSmallWidgetSearchCategoriesView *)self categories];
  v6 = [categories objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v7 = sub_100799D40();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarSmallWidgetSearchCategoriesView *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v18 = selfCopy;
    v19 = 2112;
    v20 = pathCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] didSelectItemAtIndexPath: %@", buf, 0x16u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1006CB69C;
  v15[3] = &unk_101661A90;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  [MapsCarPlayServicesShim openMapsCarPlayApplicationWithCompletion:v15];
}

- (id)modelForItemAtIndexPath:(id)path
{
  pathCopy = path;
  categories = [(CarSmallWidgetSearchCategoriesView *)self categories];
  v6 = [pathCopy row];

  v7 = [categories objectAtIndexedSubscript:v6];

  v8 = [[CarSmallWidgetSearchCategoriesCellModel alloc] initWithBrowseCategory:v7];

  return v8;
}

- (void)setCategories:(id)categories
{
  categoriesCopy = categories;
  if (![(NSArray *)self->_categories isEqualToArray:?])
  {
    objc_storeStrong(&self->_categories, categories);
  }

  [(CarSmallWidgetCollectionView *)self refreshData];
}

@end