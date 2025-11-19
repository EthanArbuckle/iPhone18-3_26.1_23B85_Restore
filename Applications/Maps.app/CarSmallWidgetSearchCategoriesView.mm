@interface CarSmallWidgetSearchCategoriesView
- (id)modelForItemAtIndexPath:(id)a3;
- (void)didSelectItemAtIndexPath:(id)a3;
- (void)setCategories:(id)a3;
@end

@implementation CarSmallWidgetSearchCategoriesView

- (void)didSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CarSmallWidgetSearchCategoriesView *)self categories];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

  v7 = sub_100799D40();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarSmallWidgetSearchCategoriesView *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_8;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = v4;
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

- (id)modelForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CarSmallWidgetSearchCategoriesView *)self categories];
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  v8 = [[CarSmallWidgetSearchCategoriesCellModel alloc] initWithBrowseCategory:v7];

  return v8;
}

- (void)setCategories:(id)a3
{
  v5 = a3;
  if (![(NSArray *)self->_categories isEqualToArray:?])
  {
    objc_storeStrong(&self->_categories, a3);
  }

  [(CarSmallWidgetCollectionView *)self refreshData];
}

@end