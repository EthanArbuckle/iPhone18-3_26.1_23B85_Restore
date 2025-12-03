@interface RecentlyViewedDataSource
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (RecentlyViewedDataSource)initWithTableView:(id)view updateLocation:(BOOL)location;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)mapItemAtIndexPath:(id)path;
- (id)objectAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_buildContent;
- (void)_loadContent;
- (void)didTapOnAccessoryView:(id)view withType:(int64_t)type object:(id)object;
- (void)removeItemAtIndexPath:(id)path;
- (void)setActive:(BOOL)active;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation RecentlyViewedDataSource

- (void)didTapOnAccessoryView:(id)view withType:(int64_t)type object:(id)object
{
  viewCopy = view;
  objectCopy = object;
  if (type == 4 || type == 1)
  {
    delegate = [(DataSource *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(DataSource *)self delegate];
      [delegate2 searchDataSource:self addItem:objectCopy];
    }

    v12 = [UIButton buttonWithType:0];
    [v12 setBounds:{0.0, 0.0, 30.0, 30.0}];
    v13 = [UIImage systemImageNamed:@"checkmark"];
    [v12 setImage:v13 forState:0];

    v14 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
    [v12 setPreferredSymbolConfiguration:v14 forImageInState:0];

    v15 = +[UIColor secondaryLabelColor];
    [v12 setTintColor:v15];

    [v12 setAccessibilityIdentifier:@"AccessoryCheckmarkButton"];
    [viewCopy setAccessoryView:v12];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v11 = [(RecentlyViewedDataSource *)self mapItemAtIndexPath:pathCopy];
  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self itemTapped:v11];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];

  if ([v9 conformsToProtocol:&OBJC_PROTOCOL___AutocompleteCellAccessoryView])
  {
    v10 = v9;
    if ([v10 accessoryViewType] == 1)
    {
      [v10 setAccessoryViewType:3];
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
  v8 = [v7 localizedStringForKey:@"[RecentlyViewed] RecentlyViewed" value:@"localized string not found" table:0];
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
  v8 = [v7 localizedStringForKey:@"[RecentlyViewed] RecentlyViewed" value:@"localized string not found" table:0];
  _maps_indexOfFirstNonEmptySection = [viewCopy _maps_indexOfFirstNonEmptySection];

  section = [(SectionHeaderTableViewHeaderFooterView *)v6 initWithTitle:v8 isFirstNonEmptySection:_maps_indexOfFirstNonEmptySection == section];
  [(SectionHeaderTableViewHeaderFooterView *)section setAccessibilityIdentifiersWithBaseString:@"RecentlyViewed"];
  [(SectionHeaderTableViewHeaderFooterView *)section setShowsBottomHairline:0];

  return section;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(RecentlyViewedDataSource *)self mapItemAtIndexPath:pathCopy];
  v9 = +[TwoLinesTableViewCell identifier];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  v11 = [TwoLinesContentViewModelComposer cellModelForMapItem:v8];
  [v10 setViewModel:v11];

  [v10 setAccessoryViewDelegate:self];
  [v10 setAccessoryViewObject:v8];
  [v10 setAccessoryViewType:self->_showAddAccessory];

  return v10;
}

- (void)removeItemAtIndexPath:(id)path
{
  v3 = [(RecentlyViewedDataSource *)self objectAtIndexPath:path];
  v4 = +[Recents sharedRecents];
  v6 = v3;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 deleteRecents:v5 completion:&stru_101655180];
}

- (id)mapItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(RecentlyViewedDataSource *)self objectAtIndexPath:pathCopy];
  historyEntry = [v5 historyEntry];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100DE6588;
  v14 = sub_100DE6598;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DE65A0;
  v9[3] = &unk_101661C68;
  v9[4] = &v10;
  [historyEntry ifSearch:0 ifRoute:0 ifPlaceDisplay:v9 ifTransitLineItem:0];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  if (([pathCopy row] & 0x8000000000000000) != 0 || (v5 = objc_msgSend(pathCopy, "row"), v5 >= -[NSArray count](self->_recents, "count")))
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_recents, "objectAtIndexedSubscript:", [pathCopy row]);
  }

  return v6;
}

- (void)_buildContent
{
  v11 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(NSArray *)self->_recentsContent copy];
  v2 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v2)
  {
    v3 = *v20;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v20 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v19 + 1) + 8 * i);
        historyEntry = [v5 historyEntry];
        v13 = 0;
        v14 = &v13;
        v15 = 0x3032000000;
        v16 = sub_100DE6588;
        v17 = sub_100DE6598;
        v18 = 0;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100DE6908;
        v12[3] = &unk_101661C68;
        v12[4] = &v13;
        [historyEntry ifSearch:0 ifRoute:0 ifPlaceDisplay:v12 ifTransitLineItem:0];
        if (v14[5])
        {
          [v11 addObject:v5];
        }

        _Block_object_dispose(&v13, 8);
      }

      v2 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v2);
  }

  v7 = [v11 copy];
  recents = self->_recents;
  self->_recents = v7;
}

- (void)_loadContent
{
  v3 = +[Recents sharedRecents];
  orderedRecents = [v3 orderedRecents];
  v5 = [orderedRecents copy];
  recentsContent = self->_recentsContent;
  self->_recentsContent = v5;

  [(RecentlyViewedDataSource *)self _buildContent];
  if ([(DataSource *)self active])
  {
    delegate = [(DataSource *)self delegate];
    [delegate dataSourceUpdated:self];
  }
}

- (void)setActive:(BOOL)active
{
  v4.receiver = self;
  v4.super_class = RecentlyViewedDataSource;
  [(DataSource *)&v4 setActive:active];
  [(RecentlyViewedDataSource *)self _loadContent];
}

- (RecentlyViewedDataSource)initWithTableView:(id)view updateLocation:(BOOL)location
{
  locationCopy = location;
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = RecentlyViewedDataSource;
  v7 = [(DataSource *)&v13 initWithTableView:viewCopy updateLocation:locationCopy];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = +[TwoLinesTableViewCell identifier];
    [viewCopy registerClass:v8 forCellReuseIdentifier:v9];

    [(RecentlyViewedDataSource *)v7 _loadContent];
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[Recents sharedRecents];
    [v10 addObserver:v7 selector:"_recentsChanged" name:@"RecentsDidChangeNotification" object:v11];
  }

  return v7;
}

@end