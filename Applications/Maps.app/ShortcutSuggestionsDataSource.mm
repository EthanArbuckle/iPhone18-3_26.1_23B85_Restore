@interface ShortcutSuggestionsDataSource
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (ShortcutSuggestionsDataSource)initWithTableView:(id)a3 updateLocation:(BOOL)a4;
- (ShortcutSuggestionsDataSource)initWithTableView:(id)a3 updateLocation:(BOOL)a4 shortcutType:(int64_t)a5;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)currentSuggestions;
- (id)objectAtIndexPath:(id)a3;
- (id)shortcutManager;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_loadContentAndSuggestionsOfType:(int64_t)a3;
- (void)_updateSuggestions:(id)a3;
- (void)didTapOnAccessoryView:(id)a3 withType:(int64_t)a4 object:(id)a5;
- (void)setActive:(BOOL)a3;
- (void)shortcutSelected:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ShortcutSuggestionsDataSource

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(ShortcutSuggestionsDataSource *)self objectAtIndexPath:v6];
  [(ShortcutSuggestionsDataSource *)self shortcutSelected:?];
  [v7 deselectRowAtIndexPath:v6 animated:1];
  v8 = [v7 cellForRowAtIndexPath:v6];

  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___AutocompleteCellAccessoryView])
  {
    v9 = v8;
    if ([v9 accessoryViewType] == 1)
    {
      [v9 setAccessoryViewType:3];
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = [a3 cellForRowAtIndexPath:a4];
  v5 = ![v4 conformsToProtocol:&OBJC_PROTOCOL___AutocompleteCellAccessoryView] || objc_msgSend(v4, "accessoryViewType") != 3;

  return v5;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 _maps_indexOfFirstNonEmptySection] == a4;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[Shortcuts] Siri Suggestions" value:@"localized string not found" table:0];
  [v5 bounds];
  Width = CGRectGetWidth(v14);
  v10 = [v5 traitCollection];

  [SectionHeaderTableViewHeaderFooterView heightWhenFirstNonEmptySection:v6 title:v8 actionTitle:0 availableWidth:v10 traitCollection:Width];
  v12 = v11;

  return v12;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  v6 = [SectionHeaderTableViewHeaderFooterView alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[Shortcuts] Siri Suggestions" value:@"localized string not found" table:0];
  v9 = [v5 _maps_indexOfFirstNonEmptySection];

  v10 = [(SectionHeaderTableViewHeaderFooterView *)v6 initWithTitle:v8 isFirstNonEmptySection:v9 == a4];
  [(SectionHeaderTableViewHeaderFooterView *)v10 setAccessibilityIdentifiersWithBaseString:@"SiriSuggestions"];
  [(SectionHeaderTableViewHeaderFooterView *)v10 setShowsBottomHairline:0];

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ShortcutSuggestionsDataSource *)self objectAtIndexPath:v6];
  v9 = +[TwoLinesTableViewCell identifier];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  v11 = [TwoLinesContentViewModelComposer cellModelForMapsSuggestionsShortcut:v8];
  [v10 setViewModel:v11];

  [v10 setAccessoryViewDelegate:self];
  [v10 setAccessoryViewObject:v8];
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v12 = 4;
  }

  else
  {
    v12 = 1;
  }

  [v10 setAccessoryViewType:v12];

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(ShortcutSuggestionsDataSource *)self currentSuggestions:a3];
  v5 = [v4 count];

  return v5;
}

- (void)didTapOnAccessoryView:(id)a3 withType:(int64_t)a4 object:(id)a5
{
  v13 = a3;
  v8 = a5;
  if (a4 == 4 || a4 == 1)
  {
    [(ShortcutSuggestionsDataSource *)self shortcutSelected:v8];
    v9 = [UIButton buttonWithType:0];
    [v9 setBounds:{0.0, 0.0, 30.0, 30.0}];
    v10 = [UIImage systemImageNamed:@"checkmark"];
    [v9 setImage:v10 forState:0];

    v11 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
    [v9 setPreferredSymbolConfiguration:v11 forImageInState:0];

    v12 = +[UIColor secondaryLabelColor];
    [v9 setTintColor:v12];

    [v9 setAccessibilityIdentifier:@"AccessoryCheckmarkButton"];
    [v13 setAccessoryView:v9];
  }
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = ShortcutSuggestionsDataSource;
  [(DataSource *)&v5 setActive:?];
  if (v3)
  {
    [(ShortcutSuggestionsDataSource *)self _loadContentAndSuggestionsOfType:self->shortcutType];
  }
}

- (void)shortcutSelected:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self delegate];
  [v5 dataSource:self itemTapped:v4];
}

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ShortcutSuggestionsDataSource *)self currentSuggestions];
  v6 = [v5 copy];

  if (([v4 row] & 0x8000000000000000) != 0 || (v7 = objc_msgSend(v4, "row"), v7 >= objc_msgSend(v6, "count")))
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  return v8;
}

- (id)currentSuggestions
{
  v2 = [(NSArray *)self->_suggestions copy];

  return v2;
}

- (id)shortcutManager
{
  v2 = MapsSuggestionsResourceDepotForMapsProcess();
  v3 = [v2 oneFavorites];

  return v3;
}

- (void)_updateSuggestions:(id)a3
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = [v4 copy];
  suggestions = self->_suggestions;
  self->_suggestions = v5;

  v7 = [(DataSource *)self delegate];
  [v7 dataSourceUpdated:self];
}

- (void)_loadContentAndSuggestionsOfType:(int64_t)a3
{
  objc_initWeak(&location, self);
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100B3A5C0;
    v9[3] = &unk_10165F290;
    v6 = &v10;
    objc_copyWeak(&v10, &location);
    [v5 proposePlacesForTypeWithType:a3 completionHandler:v9];
  }

  else
  {
    v5 = [(ShortcutSuggestionsDataSource *)self shortcutManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100B3A67C;
    v7[3] = &unk_10165F290;
    v6 = &v8;
    objc_copyWeak(&v8, &location);
    [v5 proposeAdditionalShortcutsOfType:a3 handler:v7];
  }

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (ShortcutSuggestionsDataSource)initWithTableView:(id)a3 updateLocation:(BOOL)a4 shortcutType:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v13.receiver = self;
  v13.super_class = ShortcutSuggestionsDataSource;
  v9 = [(DataSource *)&v13 initWithTableView:v8 updateLocation:v6];
  if (v9)
  {
    [v8 setAccessibilityIdentifier:@"ShortcutSuggestionsTable"];
    v10 = objc_opt_class();
    v11 = +[TwoLinesTableViewCell identifier];
    [v8 registerClass:v10 forCellReuseIdentifier:v11];

    v9->shortcutType = a5;
    [(ShortcutSuggestionsDataSource *)v9 _loadContentAndSuggestionsOfType:a5];
  }

  return v9;
}

- (ShortcutSuggestionsDataSource)initWithTableView:(id)a3 updateLocation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ShortcutSuggestionsDataSource;
  v7 = [(DataSource *)&v11 initWithTableView:v6 updateLocation:v4];
  if (v7)
  {
    [v6 setAccessibilityIdentifier:@"ShortcutSuggestionsTable"];
    v8 = objc_opt_class();
    v9 = +[TwoLinesTableViewCell identifier];
    [v6 registerClass:v8 forCellReuseIdentifier:v9];

    [(ShortcutSuggestionsDataSource *)v7 _loadContentAndSuggestionsOfType:0];
  }

  return v7;
}

@end