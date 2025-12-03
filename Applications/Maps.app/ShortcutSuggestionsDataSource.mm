@interface ShortcutSuggestionsDataSource
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (ShortcutSuggestionsDataSource)initWithTableView:(id)view updateLocation:(BOOL)location;
- (ShortcutSuggestionsDataSource)initWithTableView:(id)view updateLocation:(BOOL)location shortcutType:(int64_t)type;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)currentSuggestions;
- (id)objectAtIndexPath:(id)path;
- (id)shortcutManager;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_loadContentAndSuggestionsOfType:(int64_t)type;
- (void)_updateSuggestions:(id)suggestions;
- (void)didTapOnAccessoryView:(id)view withType:(int64_t)type object:(id)object;
- (void)setActive:(BOOL)active;
- (void)shortcutSelected:(id)selected;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ShortcutSuggestionsDataSource

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v10 = [(ShortcutSuggestionsDataSource *)self objectAtIndexPath:pathCopy];
  [(ShortcutSuggestionsDataSource *)self shortcutSelected:?];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];

  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___AutocompleteCellAccessoryView])
  {
    v9 = v8;
    if ([v9 accessoryViewType] == 1)
    {
      [v9 setAccessoryViewType:3];
    }
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [view cellForRowAtIndexPath:path];
  v5 = ![v4 conformsToProtocol:&OBJC_PROTOCOL___AutocompleteCellAccessoryView] || objc_msgSend(v4, "accessoryViewType") != 3;

  return v5;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v6 = [viewCopy _maps_indexOfFirstNonEmptySection] == section;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[Shortcuts] Siri Suggestions" value:@"localized string not found" table:0];
  [viewCopy bounds];
  Width = CGRectGetWidth(v14);
  traitCollection = [viewCopy traitCollection];

  [SectionHeaderTableViewHeaderFooterView heightWhenFirstNonEmptySection:v6 title:v8 actionTitle:0 availableWidth:traitCollection traitCollection:Width];
  v12 = v11;

  return v12;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v6 = [SectionHeaderTableViewHeaderFooterView alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[Shortcuts] Siri Suggestions" value:@"localized string not found" table:0];
  _maps_indexOfFirstNonEmptySection = [viewCopy _maps_indexOfFirstNonEmptySection];

  section = [(SectionHeaderTableViewHeaderFooterView *)v6 initWithTitle:v8 isFirstNonEmptySection:_maps_indexOfFirstNonEmptySection == section];
  [(SectionHeaderTableViewHeaderFooterView *)section setAccessibilityIdentifiersWithBaseString:@"SiriSuggestions"];
  [(SectionHeaderTableViewHeaderFooterView *)section setShowsBottomHairline:0];

  return section;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(ShortcutSuggestionsDataSource *)self objectAtIndexPath:pathCopy];
  v9 = +[TwoLinesTableViewCell identifier];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(ShortcutSuggestionsDataSource *)self currentSuggestions:view];
  v5 = [v4 count];

  return v5;
}

- (void)didTapOnAccessoryView:(id)view withType:(int64_t)type object:(id)object
{
  viewCopy = view;
  objectCopy = object;
  if (type == 4 || type == 1)
  {
    [(ShortcutSuggestionsDataSource *)self shortcutSelected:objectCopy];
    v9 = [UIButton buttonWithType:0];
    [v9 setBounds:{0.0, 0.0, 30.0, 30.0}];
    v10 = [UIImage systemImageNamed:@"checkmark"];
    [v9 setImage:v10 forState:0];

    v11 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
    [v9 setPreferredSymbolConfiguration:v11 forImageInState:0];

    v12 = +[UIColor secondaryLabelColor];
    [v9 setTintColor:v12];

    [v9 setAccessibilityIdentifier:@"AccessoryCheckmarkButton"];
    [viewCopy setAccessoryView:v9];
  }
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v5.receiver = self;
  v5.super_class = ShortcutSuggestionsDataSource;
  [(DataSource *)&v5 setActive:?];
  if (activeCopy)
  {
    [(ShortcutSuggestionsDataSource *)self _loadContentAndSuggestionsOfType:self->shortcutType];
  }
}

- (void)shortcutSelected:(id)selected
{
  selectedCopy = selected;
  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self itemTapped:selectedCopy];
}

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  currentSuggestions = [(ShortcutSuggestionsDataSource *)self currentSuggestions];
  v6 = [currentSuggestions copy];

  if (([pathCopy row] & 0x8000000000000000) != 0 || (v7 = objc_msgSend(pathCopy, "row"), v7 >= objc_msgSend(v6, "count")))
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
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
  oneFavorites = [v2 oneFavorites];

  return oneFavorites;
}

- (void)_updateSuggestions:(id)suggestions
{
  if (suggestions)
  {
    suggestionsCopy = suggestions;
  }

  else
  {
    suggestionsCopy = &__NSArray0__struct;
  }

  v5 = [suggestionsCopy copy];
  suggestions = self->_suggestions;
  self->_suggestions = v5;

  delegate = [(DataSource *)self delegate];
  [delegate dataSourceUpdated:self];
}

- (void)_loadContentAndSuggestionsOfType:(int64_t)type
{
  objc_initWeak(&location, self);
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    shortcutManager = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100B3A5C0;
    v9[3] = &unk_10165F290;
    v6 = &v10;
    objc_copyWeak(&v10, &location);
    [shortcutManager proposePlacesForTypeWithType:type completionHandler:v9];
  }

  else
  {
    shortcutManager = [(ShortcutSuggestionsDataSource *)self shortcutManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100B3A67C;
    v7[3] = &unk_10165F290;
    v6 = &v8;
    objc_copyWeak(&v8, &location);
    [shortcutManager proposeAdditionalShortcutsOfType:type handler:v7];
  }

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (ShortcutSuggestionsDataSource)initWithTableView:(id)view updateLocation:(BOOL)location shortcutType:(int64_t)type
{
  locationCopy = location;
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = ShortcutSuggestionsDataSource;
  v9 = [(DataSource *)&v13 initWithTableView:viewCopy updateLocation:locationCopy];
  if (v9)
  {
    [viewCopy setAccessibilityIdentifier:@"ShortcutSuggestionsTable"];
    v10 = objc_opt_class();
    v11 = +[TwoLinesTableViewCell identifier];
    [viewCopy registerClass:v10 forCellReuseIdentifier:v11];

    v9->shortcutType = type;
    [(ShortcutSuggestionsDataSource *)v9 _loadContentAndSuggestionsOfType:type];
  }

  return v9;
}

- (ShortcutSuggestionsDataSource)initWithTableView:(id)view updateLocation:(BOOL)location
{
  locationCopy = location;
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = ShortcutSuggestionsDataSource;
  v7 = [(DataSource *)&v11 initWithTableView:viewCopy updateLocation:locationCopy];
  if (v7)
  {
    [viewCopy setAccessibilityIdentifier:@"ShortcutSuggestionsTable"];
    v8 = objc_opt_class();
    v9 = +[TwoLinesTableViewCell identifier];
    [viewCopy registerClass:v8 forCellReuseIdentifier:v9];

    [(ShortcutSuggestionsDataSource *)v7 _loadContentAndSuggestionsOfType:0];
  }

  return v7;
}

@end