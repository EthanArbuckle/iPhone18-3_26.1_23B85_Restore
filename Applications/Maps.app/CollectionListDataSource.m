@interface CollectionListDataSource
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CollectionListDataSource)initWithTableView:(id)a3 editSession:(id)a4 showsAddCollection:(BOOL)a5;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_cellForCollection:(id)a3 inTableView:(id)a4 atIndexPath:(id)a5;
- (id)currentContent;
- (id)deleteContextualActionAtIndexPath:(id)a3;
- (id)deleteMenuActionAtIndexPath:(id)a3;
- (id)objectAtIndexPath:(id)a3;
- (id)objectsForAnalytics;
- (id)shareContextualActionAtIndexPath:(id)a3;
- (id)shareMenuActionAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)indexForObject:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)entriesCount;
- (void)_captureCuratedCuratedCollectionAction:(int)a3 indexPath:(id)a4;
- (void)_deleteAtIndexPath:(id)a3 completion:(id)a4;
- (void)_loadData;
- (void)_shareAtIndexPath:(id)a3;
- (void)_updateKeyCommandsAtIndexPath:(id)a3;
- (void)collectionManager:(id)a3 contentDidChange:(id)a4;
- (void)deleteRow:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)shareRow:(id)a3;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
@end

@implementation CollectionListDataSource

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v4 = [(CollectionListDataSource *)self objectAtIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v5 = 0.0, (objc_opt_isKindOfClass()))
  {
    +[CollectionTableViewCell estimatedCellHeight];
    v5 = v6;
  }

  return v5;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [(CollectionListDataSource *)self objectAtIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v5 = 0.0, (objc_opt_isKindOfClass()))
  {
    +[CollectionTableViewCell cellHeight];
    v5 = v6;
  }

  return v5;
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v10 = [(CollectionListDataSource *)self objectAtIndexPath:a4];
  LODWORD(a4) = [v6 isEditing];

  v7 = v10;
  if (a4 && v10)
  {
    [(NSMutableArray *)self->_selected removeObject:v10];
    v8 = [(DataSource *)self delegate];
    v9 = [(NSMutableArray *)self->_selected copy];
    [v8 dataSource:self didChangeSelectedCollections:v9];

    v7 = v10;
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CollectionListDataSource *)self objectAtIndexPath:v6];
  v8 = [(CollectionEditSession *)self->_editSession collection];

  if (v7 != v8)
  {
    if ([v12 isEditing])
    {
      [(NSMutableArray *)self->_selected addObject:v7];
      v9 = [(DataSource *)self delegate];
      v10 = [(NSMutableArray *)self->_selected copy];
      [v9 dataSource:self didChangeSelectedCollections:v10];
    }

    else
    {
      [(DataSource *)self sendAnalyticsForDataAtIndexPath:v6 object:v7 action:2007];
      v11 = [(DataSource *)self delegate];
      [v11 dataSource:self itemTapped:v7];

      [v12 deselectRowAtIndexPath:v6 animated:1];
    }
  }
}

- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v12 = a3;
  v7 = [a4 nextFocusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v12 indexPathForCell:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    [(CollectionListDataSource *)self _updateKeyCommandsAtIndexPath:v8];
    v10 = [(DataSource *)self delegate];
    v11 = [(CollectionListDataSource *)self objectAtIndexPath:v9];
    [v10 dataSource:self itemFocused:v11];
  }

  else
  {
    [(CollectionListDataSource *)self _updateKeyCommandsAtIndexPath:0];
    v9 = [(DataSource *)self delegate];
    [v9 dataSource:self itemFocused:0];
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CollectionListDataSource *)self objectAtIndexPath:v7];
  v9 = [(CollectionEditSession *)self->_editSession collection];

  if (v8 == v9 || [v6 isEditing] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !objc_msgSend(v8, "canDelete"))
  {
    v12 = 0;
  }

  else
  {
    v10 = [v6 cellForRowAtIndexPath:v7];
    if ([v6 isEditing])
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }

    [v10 setSelectionStyle:v11];
    v12 = v7;
  }

  return v12;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = self;
  v5 = [(CollectionListDataSource *)self objectAtIndexPath:a4];
  v6 = [(CollectionEditSession *)v4->_editSession collection];
  LOBYTE(v4) = v5 != v6;

  return v4;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  v7 = [(DataSource *)self tableView];
  v8 = sub_10000FA08(v7);

  if (v8 == 5)
  {
    v9 = +[NSMutableArray array];
    if (!self->_editSession)
    {
      v10 = [(CollectionListDataSource *)self objectAtIndexPath:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        if ([v11 canDelete])
        {
          v12 = [(CollectionListDataSource *)self deleteMenuActionAtIndexPath:v6];
          [v9 addObject:v12];
        }

        if ([v11 canShare])
        {
          v13 = [(CollectionListDataSource *)self shareMenuActionAtIndexPath:v6];
          [v9 addObject:v13];
        }
      }
    }

    [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v9];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100FCC000;
    v18 = v17[3] = &unk_101660440;
    v14 = v18;
    v15 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a4;
  if (sub_10000FA08(a3) == 5)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSMutableArray array];
    if (!self->_editSession)
    {
      v9 = [(CollectionListDataSource *)self objectAtIndexPath:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        if ([v10 canDelete])
        {
          v11 = [(CollectionListDataSource *)self deleteContextualActionAtIndexPath:v6];
          [v8 addObject:v11];
        }

        if ([v10 canShare])
        {
          v12 = [(CollectionListDataSource *)self shareContextualActionAtIndexPath:v6];
          [v8 addObject:v12];
        }
      }
    }

    v7 = [UISwipeActionsConfiguration configurationWithActions:v8];
  }

  return v7;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEditing])
  {
    v8 = [(CollectionListDataSource *)self objectAtIndexPath:v7];
    if ([v8 canDelete])
    {
      if (sub_10000FA08(v6) == 5)
      {
        v9 = 1;
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_cellForCollection:(id)a3 inTableView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = +[CollectionTableViewCell identifier];
  v12 = [v10 dequeueReusableCellWithIdentifier:v11 forIndexPath:v9];

  [v12 setCollectionViewSize:self->_cellsSize];
  [v12 setCollectionInfo:v8];
  v13 = [(CollectionEditSession *)self->_editSession collection];
  [v12 setDisabled:v13 == v8];

  v14 = [(CollectionSaveSession *)self->_editSession mapItem];
  if (v14)
  {
    [v12 setShowCheckmark:{objc_msgSend(v8, "containsItem:", v14)}];
  }

  return v12;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CollectionListDataSource *)self objectAtIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(CollectionListDataSource *)self _cellForCollection:v8 inTableView:v6 atIndexPath:v7];
  }

  else
  {
    v10 = [UITableViewCell alloc];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v9 = [v10 initWithStyle:0 reuseIdentifier:v12];
  }

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(CollectionListDataSource *)self currentContent:a3];
  v5 = [v4 count];

  return v5;
}

- (id)shareMenuActionAtIndexPath:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Collection List] Share action" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FCC5B0;
  v10[3] = &unk_101660418;
  objc_copyWeak(&v12, &location);
  v7 = v4;
  v11 = v7;
  v8 = [UIAction actionWithTitle:v6 image:0 identifier:0 handler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

- (id)shareContextualActionAtIndexPath:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100FCC700;
  v8[3] = &unk_1016603D0;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = sub_100DCCCC0(v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (id)deleteMenuActionAtIndexPath:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Collection List] Delete action" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FCC8D8;
  v10[3] = &unk_101660418;
  objc_copyWeak(&v12, &location);
  v7 = v4;
  v11 = v7;
  v8 = [UIAction actionWithTitle:v6 image:0 identifier:0 handler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

- (id)deleteContextualActionAtIndexPath:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100FCCA34;
  v8[3] = &unk_1016603D0;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = sub_100DCC9E8(v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (void)_shareAtIndexPath:(id)a3
{
  v9 = a3;
  v4 = [(CollectionListDataSource *)self objectAtIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DataSource *)self delegate];
    v6 = [(DataSource *)self tableView];
    v7 = [v6 cellForRowAtIndexPath:v9];
    [v5 dataSource:self shareCollection:v4 sourceView:v7];

    [GEOAPPortal captureUserAction:2008 target:0 value:0];
    v8 = [v4 handlerType];
    if (v8 == 4)
    {
      [(CollectionListDataSource *)self _captureCuratedCuratedCollectionAction:2096 indexPath:v9];
    }

    else if (!v8)
    {
      [GEOAPPortal captureUserAction:2082 target:251 value:0];
    }
  }
}

- (void)_captureCuratedCuratedCollectionAction:(int)a3 indexPath:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(CollectionListDataSource *)self objectAtIndexPath:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 curatedCollectionIdentifier];
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 muid]);
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 row]);
    [GEOAPPortal captureCuratedCollectionUserAction:v4 target:251 value:0 publisherId:0 following:0 collectionId:v10 collectionCategory:0 collectionCurrentlySaved:&__kCFBooleanTrue verticalIndex:v11 horizontalIndex:0 placeCardType:0 possibleActions:0 impossibleActions:0 modules:0];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: handler != ((void *)0)", buf, 2u);
  }
}

- (void)_deleteAtIndexPath:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CollectionListDataSource *)self objectAtIndexPath:v6];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100FCCFA0;
  v30 = v29[3] = &unk_101660380;
  v8 = v7;
  v32 = v6;
  v33 = v8;
  v31 = self;
  v9 = v6;
  v10 = v30;
  v11 = objc_retainBlock(v29);
  v12 = [(DataSource *)self tableView];
  v13 = [v12 cellForRowAtIndexPath:v9];

  v14 = [(DataSource *)self delegate];
  v34 = v10;
  v15 = [NSArray arrayWithObjects:&v34 count:1];
  [v13 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100FCD080;
  v26[3] = &unk_1016603A8;
  v27 = v11;
  v28 = v8;
  v24 = v8;
  v25 = v11;
  [v14 dataSource:self confirmDeleteCollections:v15 sourceItem:v13 sourceRect:v26 completion:{v17, v19, v21, v23}];
}

- (void)_updateKeyCommandsAtIndexPath:(id)a3
{
  v10 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [(DataSource *)self tableView];
  if (sub_10000FA08(v5) == 5 || self->_editSession)
  {
LABEL_3:

    goto LABEL_4;
  }

  if (v10)
  {
    v5 = [(CollectionListDataSource *)self objectAtIndexPath:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v5;
      if ([v5 canDelete])
      {
        v8 = sub_100C8A86C("deleteRow:", v10);
        [v4 addObject:v8];
      }

      if ([v5 canShare])
      {
        v9 = sub_100C8A9FC("shareRow:", v10);
        [v4 addObject:v9];
      }
    }

    goto LABEL_3;
  }

LABEL_4:
  v6 = [v4 copy];
  keyCommands = self->_keyCommands;
  self->_keyCommands = v6;
}

- (void)shareRow:(id)a3
{
  v4 = [a3 cell_IndexPath];
  if (v4)
  {
    v5 = v4;
    [(CollectionListDataSource *)self _shareAtIndexPath:v4];
    v4 = v5;
  }
}

- (void)deleteRow:(id)a3
{
  v4 = [a3 cell_IndexPath];
  if (v4)
  {
    v5 = v4;
    [(CollectionListDataSource *)self _deleteAtIndexPath:v4 completion:0];
    v4 = v5;
  }
}

- (id)objectsForAnalytics
{
  v2 = [(CollectionListDataSource *)self currentContent];
  v3 = [v2 copy];

  return v3;
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    v4 = [(DataSource *)self tableView];
    [v4 setEditing:self->_editing animated:1];

    if (self->_editing)
    {
      v5 = +[NSMutableArray array];
    }

    else
    {
      v5 = 0;
    }

    selected = self->_selected;
    self->_selected = v5;
  }
}

- (unint64_t)entriesCount
{
  v2 = [(CollectionListDataSource *)self currentContent];
  v3 = [v2 count];

  return v3;
}

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CollectionListDataSource *)self currentContent];
  v6 = [v5 copy];

  v7 = [v4 row];
  if (v7 >= [v6 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  return v8;
}

- (int64_t)indexForObject:(id)a3
{
  v4 = a3;
  v5 = [(CollectionListDataSource *)self currentContent];
  if ([v5 containsObject:v4])
  {
    v6 = [v5 indexOfObject:v4];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (id)currentContent
{
  v2 = [(NSArray *)self->_content copy];

  return v2;
}

- (void)collectionManager:(id)a3 contentDidChange:(id)a4
{
  [(CollectionListDataSource *)self _loadData:a3];
  v5 = [(DataSource *)self delegate];
  [v5 dataSourceUpdated:self];
}

- (void)_loadData
{
  v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  showsAddCollection = self->_showsAddCollection;
  v5 = +[CollectionManager sharedManager];
  v8 = v5;
  if (v3)
  {
    if (!showsAddCollection)
    {
      v6 = [v5 currentCollectionsForLibrary];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (showsAddCollection)
  {
LABEL_5:
    v6 = [v5 currentCollectionsForPicker];
    goto LABEL_7;
  }

  v6 = [v5 currentCollections];
LABEL_7:
  v7 = v6;
  objc_storeStrong(&self->_content, v6);
}

- (CollectionListDataSource)initWithTableView:(id)a3 editSession:(id)a4 showsAddCollection:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = CollectionListDataSource;
  v10 = [(DataSource *)&v15 initWithTableView:v8 updateLocation:0];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = +[CollectionTableViewCell identifier];
    [v8 registerClass:v11 forCellReuseIdentifier:v12];

    v13 = +[CollectionManager sharedManager];
    [v13 addObserver:v10];

    v10->_showsAddCollection = a5;
    objc_storeStrong(&v10->_editSession, a4);
    [(CollectionListDataSource *)v10 _loadData];
  }

  return v10;
}

@end