@interface CarSmallWidgetShortcutsView
- (CarSmallWidgetShortcutsView)initWithShortcutsProvider:(id)a3;
- (id)data;
- (id)modelForItemAtIndexPath:(id)a3;
- (void)didSelectItemAtIndexPath:(id)a3;
@end

@implementation CarSmallWidgetShortcutsView

- (void)didSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v6 = [v5 shortcutsForCarplay];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  else
  {
    v5 = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
    v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  v8 = sub_100799D40();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = self;
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_13;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(CarSmallWidgetShortcutsView *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_11;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_11:

LABEL_13:
    *buf = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] didSelectItemAtIndexPath: %@", buf, 0x16u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100FC1280;
  v16[3] = &unk_101661A90;
  v16[4] = self;
  v17 = v7;
  v15 = v7;
  [MapsCarPlayServicesShim openMapsCarPlayApplicationWithCompletion:v16];
}

- (id)modelForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v6 = [v5 shortcutsForCarplay];
    v7 = [v4 row];

    v8 = [v6 objectAtIndexedSubscript:v7];

    v9 = [[SuggestionShortcutsRowCellModel alloc] initWithMapsFavoriteItem:v8];
  }

  else
  {
    v10 = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
    v11 = [v4 row];

    v8 = [v10 objectAtIndexedSubscript:v11];

    v9 = [[SuggestionShortcutsRowCellModel alloc] initWithMapsSuggestionsEntry:v8];
  }

  v12 = v9;

  return v12;
}

- (id)data
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v4 = [v3 shortcutsForCarplay];
  }

  else
  {
    v4 = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
  }

  return v4;
}

- (CarSmallWidgetShortcutsView)initWithShortcutsProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CarSmallWidgetShortcutsView;
  v6 = [(CarSmallWidgetCollectionView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shortcutsProvider, a3);
    [(CarSmallWidgetShortcutsView *)v7 setAccessibilityIdentifier:@"CarSmallWidgetShortcutsView"];
  }

  return v7;
}

@end