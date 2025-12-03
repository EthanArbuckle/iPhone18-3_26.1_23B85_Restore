@interface CarSmallWidgetShortcutsView
- (CarSmallWidgetShortcutsView)initWithShortcutsProvider:(id)provider;
- (id)data;
- (id)modelForItemAtIndexPath:(id)path;
- (void)didSelectItemAtIndexPath:(id)path;
@end

@implementation CarSmallWidgetShortcutsView

- (void)didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    shortcuts = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    shortcutsForCarplay = [shortcuts shortcutsForCarplay];
    v7 = [shortcutsForCarplay objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    shortcuts = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
    v7 = [shortcuts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  v8 = sub_100799D40();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_13;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(CarSmallWidgetShortcutsView *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_11;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_11:

LABEL_13:
    *buf = 138543618;
    v19 = selfCopy;
    v20 = 2112;
    v21 = pathCopy;
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

- (id)modelForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    shortcutsForCarplay = [v5 shortcutsForCarplay];
    v7 = [pathCopy row];

    v8 = [shortcutsForCarplay objectAtIndexedSubscript:v7];

    v9 = [[SuggestionShortcutsRowCellModel alloc] initWithMapsFavoriteItem:v8];
  }

  else
  {
    shortcuts = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
    v11 = [pathCopy row];

    v8 = [shortcuts objectAtIndexedSubscript:v11];

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
    shortcutsForCarplay = [v3 shortcutsForCarplay];
  }

  else
  {
    shortcutsForCarplay = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
  }

  return shortcutsForCarplay;
}

- (CarSmallWidgetShortcutsView)initWithShortcutsProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CarSmallWidgetShortcutsView;
  v6 = [(CarSmallWidgetCollectionView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shortcutsProvider, provider);
    [(CarSmallWidgetShortcutsView *)v7 setAccessibilityIdentifier:@"CarSmallWidgetShortcutsView"];
  }

  return v7;
}

@end