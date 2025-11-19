@interface RecentlyViewedDataSource
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (RecentlyViewedDataSource)initWithTableView:(id)a3 updateLocation:(BOOL)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)mapItemAtIndexPath:(id)a3;
- (id)objectAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_buildContent;
- (void)_loadContent;
- (void)didTapOnAccessoryView:(id)a3 withType:(int64_t)a4 object:(id)a5;
- (void)removeItemAtIndexPath:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation RecentlyViewedDataSource

- (void)didTapOnAccessoryView:(id)a3 withType:(int64_t)a4 object:(id)a5
{
  v16 = a3;
  v8 = a5;
  if (a4 == 4 || a4 == 1)
  {
    v9 = [(DataSource *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(DataSource *)self delegate];
      [v11 searchDataSource:self addItem:v8];
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
    [v16 setAccessoryView:v12];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(RecentlyViewedDataSource *)self mapItemAtIndexPath:v6];
  v8 = [(DataSource *)self delegate];
  [v8 dataSource:self itemTapped:v11];

  [v7 deselectRowAtIndexPath:v6 animated:1];
  v9 = [v7 cellForRowAtIndexPath:v6];

  if ([v9 conformsToProtocol:&OBJC_PROTOCOL___AutocompleteCellAccessoryView])
  {
    v10 = v9;
    if ([v10 accessoryViewType] == 1)
    {
      [v10 setAccessoryViewType:3];
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
  v8 = [v7 localizedStringForKey:@"[RecentlyViewed] RecentlyViewed" value:@"localized string not found" table:0];
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
  v8 = [v7 localizedStringForKey:@"[RecentlyViewed] RecentlyViewed" value:@"localized string not found" table:0];
  v9 = [v5 _maps_indexOfFirstNonEmptySection];

  v10 = [(SectionHeaderTableViewHeaderFooterView *)v6 initWithTitle:v8 isFirstNonEmptySection:v9 == a4];
  [(SectionHeaderTableViewHeaderFooterView *)v10 setAccessibilityIdentifiersWithBaseString:@"RecentlyViewed"];
  [(SectionHeaderTableViewHeaderFooterView *)v10 setShowsBottomHairline:0];

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RecentlyViewedDataSource *)self mapItemAtIndexPath:v6];
  v9 = +[TwoLinesTableViewCell identifier];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  v11 = [TwoLinesContentViewModelComposer cellModelForMapItem:v8];
  [v10 setViewModel:v11];

  [v10 setAccessoryViewDelegate:self];
  [v10 setAccessoryViewObject:v8];
  [v10 setAccessoryViewType:self->_showAddAccessory];

  return v10;
}

- (void)removeItemAtIndexPath:(id)a3
{
  v3 = [(RecentlyViewedDataSource *)self objectAtIndexPath:a3];
  v4 = +[Recents sharedRecents];
  v6 = v3;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 deleteRecents:v5 completion:&stru_101655180];
}

- (id)mapItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RecentlyViewedDataSource *)self objectAtIndexPath:v4];
  v6 = [v5 historyEntry];

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
  [v6 ifSearch:0 ifRoute:0 ifPlaceDisplay:v9 ifTransitLineItem:0];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  if (([v4 row] & 0x8000000000000000) != 0 || (v5 = objc_msgSend(v4, "row"), v5 >= -[NSArray count](self->_recents, "count")))
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_recents, "objectAtIndexedSubscript:", [v4 row]);
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
        v6 = [v5 historyEntry];
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
        [v6 ifSearch:0 ifRoute:0 ifPlaceDisplay:v12 ifTransitLineItem:0];
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
  v4 = [v3 orderedRecents];
  v5 = [v4 copy];
  recentsContent = self->_recentsContent;
  self->_recentsContent = v5;

  [(RecentlyViewedDataSource *)self _buildContent];
  if ([(DataSource *)self active])
  {
    v7 = [(DataSource *)self delegate];
    [v7 dataSourceUpdated:self];
  }
}

- (void)setActive:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RecentlyViewedDataSource;
  [(DataSource *)&v4 setActive:a3];
  [(RecentlyViewedDataSource *)self _loadContent];
}

- (RecentlyViewedDataSource)initWithTableView:(id)a3 updateLocation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v13.receiver = self;
  v13.super_class = RecentlyViewedDataSource;
  v7 = [(DataSource *)&v13 initWithTableView:v6 updateLocation:v4];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = +[TwoLinesTableViewCell identifier];
    [v6 registerClass:v8 forCellReuseIdentifier:v9];

    [(RecentlyViewedDataSource *)v7 _loadContent];
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[Recents sharedRecents];
    [v10 addObserver:v7 selector:"_recentsChanged" name:@"RecentsDidChangeNotification" object:v11];
  }

  return v7;
}

@end