@interface CollectionListDataSource
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CollectionListDataSource)initWithTableView:(id)view editSession:(id)session showsAddCollection:(BOOL)collection;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_cellForCollection:(id)collection inTableView:(id)view atIndexPath:(id)path;
- (id)currentContent;
- (id)deleteContextualActionAtIndexPath:(id)path;
- (id)deleteMenuActionAtIndexPath:(id)path;
- (id)objectAtIndexPath:(id)path;
- (id)objectsForAnalytics;
- (id)shareContextualActionAtIndexPath:(id)path;
- (id)shareMenuActionAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)indexForObject:(id)object;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)entriesCount;
- (void)_captureCuratedCuratedCollectionAction:(int)action indexPath:(id)path;
- (void)_deleteAtIndexPath:(id)path completion:(id)completion;
- (void)_loadData;
- (void)_shareAtIndexPath:(id)path;
- (void)_updateKeyCommandsAtIndexPath:(id)path;
- (void)collectionManager:(id)manager contentDidChange:(id)change;
- (void)deleteRow:(id)row;
- (void)setEditing:(BOOL)editing;
- (void)shareRow:(id)row;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation CollectionListDataSource

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v4 = [(CollectionListDataSource *)self objectAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v5 = 0.0, (objc_opt_isKindOfClass()))
  {
    +[CollectionTableViewCell estimatedCellHeight];
    v5 = v6;
  }

  return v5;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(CollectionListDataSource *)self objectAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v5 = 0.0, (objc_opt_isKindOfClass()))
  {
    +[CollectionTableViewCell cellHeight];
    v5 = v6;
  }

  return v5;
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  viewCopy = view;
  v10 = [(CollectionListDataSource *)self objectAtIndexPath:path];
  LODWORD(path) = [viewCopy isEditing];

  v7 = v10;
  if (path && v10)
  {
    [(NSMutableArray *)self->_selected removeObject:v10];
    delegate = [(DataSource *)self delegate];
    v9 = [(NSMutableArray *)self->_selected copy];
    [delegate dataSource:self didChangeSelectedCollections:v9];

    v7 = v10;
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(CollectionListDataSource *)self objectAtIndexPath:pathCopy];
  collection = [(CollectionEditSession *)self->_editSession collection];

  if (v7 != collection)
  {
    if ([viewCopy isEditing])
    {
      [(NSMutableArray *)self->_selected addObject:v7];
      delegate = [(DataSource *)self delegate];
      v10 = [(NSMutableArray *)self->_selected copy];
      [delegate dataSource:self didChangeSelectedCollections:v10];
    }

    else
    {
      [(DataSource *)self sendAnalyticsForDataAtIndexPath:pathCopy object:v7 action:2007];
      delegate2 = [(DataSource *)self delegate];
      [delegate2 dataSource:self itemTapped:v7];

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }
  }
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  nextFocusedItem = [context nextFocusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([viewCopy indexPathForCell:nextFocusedItem], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    delegate2 = v8;
    [(CollectionListDataSource *)self _updateKeyCommandsAtIndexPath:v8];
    delegate = [(DataSource *)self delegate];
    v11 = [(CollectionListDataSource *)self objectAtIndexPath:delegate2];
    [delegate dataSource:self itemFocused:v11];
  }

  else
  {
    [(CollectionListDataSource *)self _updateKeyCommandsAtIndexPath:0];
    delegate2 = [(DataSource *)self delegate];
    [delegate2 dataSource:self itemFocused:0];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CollectionListDataSource *)self objectAtIndexPath:pathCopy];
  collection = [(CollectionEditSession *)self->_editSession collection];

  if (v8 == collection || [viewCopy isEditing] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !objc_msgSend(v8, "canDelete"))
  {
    v12 = 0;
  }

  else
  {
    v10 = [viewCopy cellForRowAtIndexPath:pathCopy];
    if ([viewCopy isEditing])
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }

    [v10 setSelectionStyle:v11];
    v12 = pathCopy;
  }

  return v12;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  selfCopy = self;
  v5 = [(CollectionListDataSource *)self objectAtIndexPath:path];
  collection = [(CollectionEditSession *)selfCopy->_editSession collection];
  LOBYTE(selfCopy) = v5 != collection;

  return selfCopy;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  pathCopy = path;
  tableView = [(DataSource *)self tableView];
  v8 = sub_10000FA08(tableView);

  if (v8 == 5)
  {
    v9 = +[NSMutableArray array];
    if (!self->_editSession)
    {
      v10 = [(CollectionListDataSource *)self objectAtIndexPath:pathCopy];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        if ([v11 canDelete])
        {
          v12 = [(CollectionListDataSource *)self deleteMenuActionAtIndexPath:pathCopy];
          [v9 addObject:v12];
        }

        if ([v11 canShare])
        {
          v13 = [(CollectionListDataSource *)self shareMenuActionAtIndexPath:pathCopy];
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

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (sub_10000FA08(view) == 5)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSMutableArray array];
    if (!self->_editSession)
    {
      v9 = [(CollectionListDataSource *)self objectAtIndexPath:pathCopy];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        if ([v10 canDelete])
        {
          v11 = [(CollectionListDataSource *)self deleteContextualActionAtIndexPath:pathCopy];
          [v8 addObject:v11];
        }

        if ([v10 canShare])
        {
          v12 = [(CollectionListDataSource *)self shareContextualActionAtIndexPath:pathCopy];
          [v8 addObject:v12];
        }
      }
    }

    v7 = [UISwipeActionsConfiguration configurationWithActions:v8];
  }

  return v7;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([viewCopy isEditing])
  {
    v8 = [(CollectionListDataSource *)self objectAtIndexPath:pathCopy];
    if ([v8 canDelete])
    {
      if (sub_10000FA08(viewCopy) == 5)
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

- (id)_cellForCollection:(id)collection inTableView:(id)view atIndexPath:(id)path
{
  collectionCopy = collection;
  pathCopy = path;
  viewCopy = view;
  v11 = +[CollectionTableViewCell identifier];
  v12 = [viewCopy dequeueReusableCellWithIdentifier:v11 forIndexPath:pathCopy];

  [v12 setCollectionViewSize:self->_cellsSize];
  [v12 setCollectionInfo:collectionCopy];
  collection = [(CollectionEditSession *)self->_editSession collection];
  [v12 setDisabled:collection == collectionCopy];

  mapItem = [(CollectionSaveSession *)self->_editSession mapItem];
  if (mapItem)
  {
    [v12 setShowCheckmark:{objc_msgSend(collectionCopy, "containsItem:", mapItem)}];
  }

  return v12;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CollectionListDataSource *)self objectAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(CollectionListDataSource *)self _cellForCollection:v8 inTableView:viewCopy atIndexPath:pathCopy];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(CollectionListDataSource *)self currentContent:view];
  v5 = [v4 count];

  return v5;
}

- (id)shareMenuActionAtIndexPath:(id)path
{
  pathCopy = path;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Collection List] Share action" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FCC5B0;
  v10[3] = &unk_101660418;
  objc_copyWeak(&v12, &location);
  v7 = pathCopy;
  v11 = v7;
  v8 = [UIAction actionWithTitle:v6 image:0 identifier:0 handler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

- (id)shareContextualActionAtIndexPath:(id)path
{
  pathCopy = path;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100FCC700;
  v8[3] = &unk_1016603D0;
  objc_copyWeak(&v10, &location);
  v5 = pathCopy;
  v9 = v5;
  v6 = sub_100DCCCC0(v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (id)deleteMenuActionAtIndexPath:(id)path
{
  pathCopy = path;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Collection List] Delete action" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FCC8D8;
  v10[3] = &unk_101660418;
  objc_copyWeak(&v12, &location);
  v7 = pathCopy;
  v11 = v7;
  v8 = [UIAction actionWithTitle:v6 image:0 identifier:0 handler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

- (id)deleteContextualActionAtIndexPath:(id)path
{
  pathCopy = path;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100FCCA34;
  v8[3] = &unk_1016603D0;
  objc_copyWeak(&v10, &location);
  v5 = pathCopy;
  v9 = v5;
  v6 = sub_100DCC9E8(v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (void)_shareAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = [(CollectionListDataSource *)self objectAtIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(DataSource *)self delegate];
    tableView = [(DataSource *)self tableView];
    v7 = [tableView cellForRowAtIndexPath:pathCopy];
    [delegate dataSource:self shareCollection:v4 sourceView:v7];

    [GEOAPPortal captureUserAction:2008 target:0 value:0];
    handlerType = [v4 handlerType];
    if (handlerType == 4)
    {
      [(CollectionListDataSource *)self _captureCuratedCuratedCollectionAction:2096 indexPath:pathCopy];
    }

    else if (!handlerType)
    {
      [GEOAPPortal captureUserAction:2082 target:251 value:0];
    }
  }
}

- (void)_captureCuratedCuratedCollectionAction:(int)action indexPath:(id)path
{
  v4 = *&action;
  pathCopy = path;
  v7 = [(CollectionListDataSource *)self objectAtIndexPath:pathCopy];
  v8 = v7;
  if (v7)
  {
    curatedCollectionIdentifier = [v7 curatedCollectionIdentifier];
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [curatedCollectionIdentifier muid]);
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pathCopy row]);
    [GEOAPPortal captureCuratedCollectionUserAction:v4 target:251 value:0 publisherId:0 following:0 collectionId:v10 collectionCategory:0 collectionCurrentlySaved:&__kCFBooleanTrue verticalIndex:v11 horizontalIndex:0 placeCardType:0 possibleActions:0 impossibleActions:0 modules:0];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: handler != ((void *)0)", buf, 2u);
  }
}

- (void)_deleteAtIndexPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  [(CollectionListDataSource *)self objectAtIndexPath:pathCopy];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100FCCFA0;
  v30 = v29[3] = &unk_101660380;
  v8 = completionCopy;
  v32 = pathCopy;
  v33 = v8;
  selfCopy = self;
  v9 = pathCopy;
  v10 = v30;
  v11 = objc_retainBlock(v29);
  tableView = [(DataSource *)self tableView];
  v13 = [tableView cellForRowAtIndexPath:v9];

  delegate = [(DataSource *)self delegate];
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
  [delegate dataSource:self confirmDeleteCollections:v15 sourceItem:v13 sourceRect:v26 completion:{v17, v19, v21, v23}];
}

- (void)_updateKeyCommandsAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = objc_alloc_init(NSMutableArray);
  tableView = [(DataSource *)self tableView];
  if (sub_10000FA08(tableView) == 5 || self->_editSession)
  {
LABEL_3:

    goto LABEL_4;
  }

  if (pathCopy)
  {
    tableView = [(CollectionListDataSource *)self objectAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tableView = tableView;
      if ([tableView canDelete])
      {
        v8 = sub_100C8A86C("deleteRow:", pathCopy);
        [v4 addObject:v8];
      }

      if ([tableView canShare])
      {
        v9 = sub_100C8A9FC("shareRow:", pathCopy);
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

- (void)shareRow:(id)row
{
  cell_IndexPath = [row cell_IndexPath];
  if (cell_IndexPath)
  {
    v5 = cell_IndexPath;
    [(CollectionListDataSource *)self _shareAtIndexPath:cell_IndexPath];
    cell_IndexPath = v5;
  }
}

- (void)deleteRow:(id)row
{
  cell_IndexPath = [row cell_IndexPath];
  if (cell_IndexPath)
  {
    v5 = cell_IndexPath;
    [(CollectionListDataSource *)self _deleteAtIndexPath:cell_IndexPath completion:0];
    cell_IndexPath = v5;
  }
}

- (id)objectsForAnalytics
{
  currentContent = [(CollectionListDataSource *)self currentContent];
  v3 = [currentContent copy];

  return v3;
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    tableView = [(DataSource *)self tableView];
    [tableView setEditing:self->_editing animated:1];

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
  currentContent = [(CollectionListDataSource *)self currentContent];
  v3 = [currentContent count];

  return v3;
}

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  currentContent = [(CollectionListDataSource *)self currentContent];
  v6 = [currentContent copy];

  v7 = [pathCopy row];
  if (v7 >= [v6 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  return v8;
}

- (int64_t)indexForObject:(id)object
{
  objectCopy = object;
  currentContent = [(CollectionListDataSource *)self currentContent];
  if ([currentContent containsObject:objectCopy])
  {
    v6 = [currentContent indexOfObject:objectCopy];
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

- (void)collectionManager:(id)manager contentDidChange:(id)change
{
  [(CollectionListDataSource *)self _loadData:manager];
  delegate = [(DataSource *)self delegate];
  [delegate dataSourceUpdated:self];
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
      currentCollectionsForLibrary = [v5 currentCollectionsForLibrary];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (showsAddCollection)
  {
LABEL_5:
    currentCollectionsForLibrary = [v5 currentCollectionsForPicker];
    goto LABEL_7;
  }

  currentCollectionsForLibrary = [v5 currentCollections];
LABEL_7:
  v7 = currentCollectionsForLibrary;
  objc_storeStrong(&self->_content, currentCollectionsForLibrary);
}

- (CollectionListDataSource)initWithTableView:(id)view editSession:(id)session showsAddCollection:(BOOL)collection
{
  viewCopy = view;
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = CollectionListDataSource;
  v10 = [(DataSource *)&v15 initWithTableView:viewCopy updateLocation:0];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = +[CollectionTableViewCell identifier];
    [viewCopy registerClass:v11 forCellReuseIdentifier:v12];

    v13 = +[CollectionManager sharedManager];
    [v13 addObserver:v10];

    v10->_showsAddCollection = collection;
    objc_storeStrong(&v10->_editSession, session);
    [(CollectionListDataSource *)v10 _loadData];
  }

  return v10;
}

@end