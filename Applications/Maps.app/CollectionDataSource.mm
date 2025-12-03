@interface CollectionDataSource
- (BOOL)tableView:(id)view wantsHeaderForSection:(int64_t)section;
- (CollectionDataSource)initWithTableView:(id)view collection:(id)collection;
- (CollectionDataSource)initWithTableView:(id)view collectionEditSession:(id)session;
- (DeleteDelegate)deleteDelegate;
- (ShareDelegate)shareDelegate;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_cellForMapItem:(id)item inTableView:(id)view atIndexPath:(id)path;
- (id)_cellForTransitLine:(id)line inTableView:(id)view atIndexPath:(id)path;
- (id)currentContent;
- (id)deleteContextualActionAtIndexPath:(id)path;
- (id)deleteMenuActionAtIndexPath:(id)path;
- (id)editNameContextualActionAtIndexPath:(id)path;
- (id)editNameKeyCommandAtIndexPath:(id)path;
- (id)editNameMenuActionAtIndexPath:(id)path;
- (id)objectAtIndexPath:(id)path;
- (id)objectsForAnalytics;
- (id)shareContextualActionAtIndexPath:(id)path;
- (id)shareMenuActionAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_commonInitWithTableView:(id)view;
- (void)_contentSizeCategoryDidChange;
- (void)_updateKeyCommandsAtIndexPath:(id)path;
- (void)collectionHandlerContentUpdated:(id)updated;
- (void)dealloc;
- (void)deleteRow:(id)row;
- (void)deleteRowAtIndexPath:(id)path completion:(id)completion;
- (void)editNameRow:(id)row;
- (void)editNameRowAtIndexPath:(id)path completion:(id)completion;
- (void)selectAll;
- (void)setActive:(BOOL)active;
- (void)setEditing:(BOOL)editing;
- (void)shareRow:(id)row;
- (void)shareRowAtIndexPath:(id)path completion:(id)completion;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation CollectionDataSource

- (DeleteDelegate)deleteDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deleteDelegate);

  return WeakRetained;
}

- (ShareDelegate)shareDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shareDelegate);

  return WeakRetained;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v4 = [(CollectionDataSource *)self objectAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = off_1015F6608;
  }

  else
  {
    v7 = 0.0;
    if (![v4 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
    {
      goto LABEL_5;
    }

    v5 = off_1015F6680;
  }

  [(__objc2_class *)*v5 estimatedCellHeight];
  v7 = v6;
LABEL_5:

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(CollectionDataSource *)self objectAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = off_1015F6608;
  }

  else
  {
    v7 = 0.0;
    if (![v4 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
    {
      goto LABEL_5;
    }

    v5 = off_1015F6680;
  }

  [(__objc2_class *)*v5 cellHeight];
  v7 = v6;
LABEL_5:

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (self->_collectionHandler)
  {
    v7 = [(CollectionDataSource *)self objectAtIndexPath:pathCopy];
    if (v7)
    {
      if ([viewCopy isEditing])
      {
        [(CollectionEditSession *)self->_editSession addSelectedObject:v7];
LABEL_10:

        goto LABEL_11;
      }

      delegate = [(DataSource *)self delegate];
      [delegate dataSource:self itemTapped:v7];

      collectionInfo = [(CollectionDataSource *)self collectionInfo];
      if ([collectionInfo handlerType] == 3)
      {
        v10 = 256;
      }

      else
      {
        v10 = 252;
      }

      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pathCopy row]);
      stringValue = [v11 stringValue];
      [GEOAPPortal captureUserAction:2068 target:v10 value:stringValue];
    }

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  nextFocusedItem = [context nextFocusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([viewCopy indexPathForCell:nextFocusedItem], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    delegate2 = v8;
    [(CollectionDataSource *)self _updateKeyCommandsAtIndexPath:v8];
    delegate = [(DataSource *)self delegate];
    v11 = [(CollectionDataSource *)self objectAtIndexPath:delegate2];
    [delegate dataSource:self itemFocused:v11];
  }

  else
  {
    [(CollectionDataSource *)self _updateKeyCommandsAtIndexPath:0];
    delegate2 = [(DataSource *)self delegate];
    [delegate2 dataSource:self itemFocused:0];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  if (self->_collectionHandler)
  {
    viewCopy = view;
    v8 = [(CollectionDataSource *)self objectAtIndexPath:path];
    LODWORD(path) = [viewCopy isEditing];

    v7 = v8;
    if (path && v8)
    {
      [(CollectionEditSession *)self->_editSession removeSelectedObject:v8];
      v7 = v8;
    }
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_collectionHandler)
  {
    viewCopy = view;
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    isEditing = [viewCopy isEditing];

    if (isEditing)
    {
      v10 = 1;
    }

    else
    {
      v10 = 3;
    }

    [v8 setSelectionStyle:v10];
    v11 = pathCopy;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  pathCopy = path;
  tableView = [(DataSource *)self tableView];
  v8 = sub_10000FA08(tableView);

  if (v8 != 5)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if (self->_collectionHandler)
  {
    v9 = [(CollectionDataSource *)self objectAtIndexPath:pathCopy];
    if ([(CollectionHandler *)self->_collectionHandler handlerType]== 3)
    {
      v10 = [(CollectionDataSource *)self shareMenuActionAtIndexPath:pathCopy];
      v26 = v10;
      v11 = &v26;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [MKMapItem _itemWithGeoMapItem:v9];

        v9 = v14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _maps_canRenameCollectionItem = [v9 _maps_canRenameCollectionItem];
        v16 = [(CollectionDataSource *)self deleteMenuActionAtIndexPath:pathCopy];
        v10 = v16;
        if (_maps_canRenameCollectionItem)
        {
          v25[0] = v16;
          v17 = [(CollectionDataSource *)self shareMenuActionAtIndexPath:pathCopy];
          v25[1] = v17;
          v18 = [(CollectionDataSource *)self editNameMenuActionAtIndexPath:pathCopy];
          v25[2] = v18;
          v12 = [NSArray arrayWithObjects:v25 count:3];
        }

        else
        {
          v24[0] = v16;
          v17 = [(CollectionDataSource *)self shareMenuActionAtIndexPath:pathCopy];
          v24[1] = v17;
          v12 = [NSArray arrayWithObjects:v24 count:2];
        }

        goto LABEL_17;
      }

      if (![v9 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
      {
        v12 = &__NSArray0__struct;
        goto LABEL_18;
      }

      v10 = [(CollectionDataSource *)self deleteMenuActionAtIndexPath:pathCopy];
      v23 = v10;
      v11 = &v23;
    }

    v12 = [NSArray arrayWithObjects:v11 count:1];
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v12 = &__NSArray0__struct;
LABEL_19:
  [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v12];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100BEE43C;
  v22 = v21[3] = &unk_101660440;
  v19 = v22;
  v13 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v21];

LABEL_20:

  return v13;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (!self->_collectionHandler)
  {
    v9 = &__NSArray0__struct;
    goto LABEL_17;
  }

  v6 = [(CollectionDataSource *)self objectAtIndexPath:pathCopy];
  if ([(CollectionHandler *)self->_collectionHandler handlerType]== 3)
  {
    v7 = [(CollectionDataSource *)self shareContextualActionAtIndexPath:pathCopy];
    v20 = v7;
    v8 = &v20;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [MKMapItem _itemWithGeoMapItem:v6];

      v6 = v10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _maps_canRenameCollectionItem = [v6 _maps_canRenameCollectionItem];
      v12 = [(CollectionDataSource *)self deleteContextualActionAtIndexPath:pathCopy];
      v7 = v12;
      if (_maps_canRenameCollectionItem)
      {
        v19[0] = v12;
        v13 = [(CollectionDataSource *)self shareContextualActionAtIndexPath:pathCopy];
        v19[1] = v13;
        v14 = [(CollectionDataSource *)self editNameContextualActionAtIndexPath:pathCopy];
        v19[2] = v14;
        v9 = [NSArray arrayWithObjects:v19 count:3];
      }

      else
      {
        v18[0] = v12;
        v13 = [(CollectionDataSource *)self shareContextualActionAtIndexPath:pathCopy];
        v18[1] = v13;
        v9 = [NSArray arrayWithObjects:v18 count:2];
      }

      goto LABEL_15;
    }

    if (![v6 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
    {
      v9 = &__NSArray0__struct;
      goto LABEL_16;
    }

    v7 = [(CollectionDataSource *)self deleteContextualActionAtIndexPath:pathCopy];
    v17 = v7;
    v8 = &v17;
  }

  v9 = [NSArray arrayWithObjects:v8 count:1, v17];
LABEL_15:

LABEL_16:
LABEL_17:
  v15 = [UISwipeActionsConfiguration configurationWithActions:v9];

  return v15;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  if (self->_collectionHandler)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (self->_showsHeader)
  {
    currentContent = [(CollectionDataSource *)self currentContent];
    v7 = [currentContent count];

    if (v7)
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"In this Guide" value:@"localized string not found" table:0];

      v7 = [[SectionHeaderTableViewHeaderFooterView alloc] initWithTitle:v9 isFirstNonEmptySection:1];
      [viewCopy bounds];
      Width = CGRectGetWidth(v17);
      traitCollection = [viewCopy traitCollection];
      [SectionHeaderTableViewHeaderFooterView heightWhenFirstNonEmptySection:1 title:v9 actionTitle:0 availableWidth:traitCollection traitCollection:Width];
      v13 = v12;

      tableView = [(DataSource *)self tableView];
      [tableView frame];
      [(SectionHeaderTableViewHeaderFooterView *)v7 setBounds:0.0, 0.0, CGRectGetWidth(v18), v13];

      [(SectionHeaderTableViewHeaderFooterView *)v7 setAccessibilityIdentifiersWithBaseString:@"NewGuide"];
      [(SectionHeaderTableViewHeaderFooterView *)v7 layoutIfNeeded];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)tableView:(id)view wantsHeaderForSection:(int64_t)section
{
  if (!self->_showsHeader)
  {
    return 0;
  }

  v4 = [(CollectionDataSource *)self currentContent:view];
  v5 = [v4 count] != 0;

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  viewCopy = view;
  v9 = [(CollectionDataSource *)self objectAtIndexPath:path];
  isEditing = [viewCopy isEditing];

  if (isEditing)
  {
    [cellCopy setSelectionStyle:1];
    selectedObjectSet = [(CollectionEditSession *)self->_editSession selectedObjectSet];
    [cellCopy setSelected:{objc_msgSend(selectedObjectSet, "containsObject:", v9)}];
  }

  else
  {
    [cellCopy setSelected:0];
  }
}

- (id)_cellForTransitLine:(id)line inTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  lineCopy = line;
  v10 = +[TwoLinesTableViewCell identifier];
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];

  v12 = [TwoLinesContentViewModelComposer cellModelForTransitLine:lineCopy];

  [v11 setViewModel:v12];

  return v11;
}

- (id)_cellForMapItem:(id)item inTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  if (+[UIFont accessibilityTextEnabled])
  {
    +[(_SearchResultTableViewCell *)SearchResultTableViewCell];
  }

  else
  {
    +[(_SearchResultTableViewCell *)SearchResultTableViewCell];
  }
  v11 = ;
  v12 = [viewCopy dequeueReusableCellWithIdentifier:v11 forIndexPath:pathCopy];

  currentLocation = [(DataSource *)self currentLocation];
  [v12 setCurrentLocation:currentLocation];

  [v12 setMapItem:itemCopy];
  [v12 setAccessibilityIdentifier:@"CollectionPlaceTableCell"];

  return v12;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CollectionDataSource *)self objectAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(CollectionDataSource *)self _cellForMapItem:v8 inTableView:viewCopy atIndexPath:pathCopy];
  }

  else
  {
    if (![v8 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [MKMapItem _itemWithGeoMapItem:v8];
        v12 = [(CollectionDataSource *)self _cellForMapItem:v11 inTableView:viewCopy atIndexPath:pathCopy];
      }

      else
      {
        v13 = [UITableViewCell alloc];
        v14 = objc_opt_class();
        v11 = NSStringFromClass(v14);
        v12 = [v13 initWithStyle:0 reuseIdentifier:v11];
      }

      v10 = v12;

      goto LABEL_10;
    }

    v9 = [(CollectionDataSource *)self _cellForTransitLine:v8 inTableView:viewCopy atIndexPath:pathCopy];
  }

  v10 = v9;
LABEL_10:

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(CollectionDataSource *)self currentContent:view];
  v5 = [v4 count];

  return v5;
}

- (id)editNameMenuActionAtIndexPath:(id)path
{
  pathCopy = path;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Collection] edit name action" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100BEEE54;
  v10[3] = &unk_101660418;
  objc_copyWeak(&v12, &location);
  v7 = pathCopy;
  v11 = v7;
  v8 = [UIAction actionWithTitle:v6 image:0 identifier:0 handler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

- (id)editNameContextualActionAtIndexPath:(id)path
{
  pathCopy = path;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"RowSwipe_Edit" value:@"localized string not found" table:0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100BEF030;
  v11[3] = &unk_101652738;
  objc_copyWeak(&v13, &location);
  v7 = pathCopy;
  v12 = v7;
  v8 = [UIContextualAction contextualActionWithStyle:0 title:v6 handler:v11];

  v9 = +[UIColor systemOrangeColor];
  [v8 setBackgroundColor:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

- (id)shareMenuActionAtIndexPath:(id)path
{
  pathCopy = path;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Collection] Share action" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100BEF25C;
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
  v8[2] = sub_100BEF3B0;
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
  v6 = [v5 localizedStringForKey:@"[Collection] Delete action" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100BEF580;
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
  v8[2] = sub_100BEF6D4;
  v8[3] = &unk_1016603D0;
  objc_copyWeak(&v10, &location);
  v5 = pathCopy;
  v9 = v5;
  v6 = sub_100DCC9E8(v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (void)_updateKeyCommandsAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(DataSource *)self tableView];
  if (sub_10000FA08(tableView) == 5 || !self->_collectionHandler)
  {
  }

  else
  {

    if (pathCopy)
    {
      v6 = [(CollectionDataSource *)self objectAtIndexPath:pathCopy];
      if ([(CollectionHandler *)self->_collectionHandler handlerType]== 3)
      {
        v7 = sub_100C8A9FC("shareRow:", pathCopy);
        v20 = v7;
        v8 = &v20;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [MKMapItem _itemWithGeoMapItem:v6];

          v6 = v12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _maps_canRenameCollectionItem = [v6 _maps_canRenameCollectionItem];
          v14 = sub_100C8A86C("deleteRow:", pathCopy);
          v7 = v14;
          if (_maps_canRenameCollectionItem)
          {
            v19[0] = v14;
            v15 = sub_100C8A9FC("shareRow:", pathCopy);
            v19[1] = v15;
            v16 = [(CollectionDataSource *)self editNameKeyCommandAtIndexPath:pathCopy];
            v19[2] = v16;
            v9 = [NSArray arrayWithObjects:v19 count:3];
          }

          else
          {
            v18[0] = v14;
            v15 = sub_100C8A9FC("shareRow:", pathCopy);
            v18[1] = v15;
            v9 = [NSArray arrayWithObjects:v18 count:2];
          }

          goto LABEL_19;
        }

        if (![v6 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
        {
          v9 = &__NSArray0__struct;
          goto LABEL_20;
        }

        v7 = sub_100C8A86C("deleteRow:", pathCopy);
        v17 = v7;
        v8 = &v17;
      }

      v9 = [NSArray arrayWithObjects:v8 count:1, v17];
LABEL_19:

LABEL_20:
      goto LABEL_9;
    }
  }

  v9 = &__NSArray0__struct;
LABEL_9:
  v10 = [v9 copy];
  keyCommands = self->_keyCommands;
  self->_keyCommands = v10;
}

- (id)editNameKeyCommandAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"KeyCommand_EditName" value:@"localized string not found" table:0];
  v12[0] = @"row";
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pathCopy row]);
  v12[1] = @"section";
  v13[0] = v6;
  section = [pathCopy section];

  v8 = [NSNumber numberWithInteger:section];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [UIKeyCommand commandWithTitle:v5 image:0 action:"editNameRow:" input:@"e" modifierFlags:0x100000 propertyList:v9];

  return v10;
}

- (void)editNameRow:(id)row
{
  cell_IndexPath = [row cell_IndexPath];
  if (cell_IndexPath)
  {
    v5 = cell_IndexPath;
    [(CollectionDataSource *)self editNameRowAtIndexPath:cell_IndexPath completion:0];
    cell_IndexPath = v5;
  }
}

- (void)shareRow:(id)row
{
  cell_IndexPath = [row cell_IndexPath];
  if (cell_IndexPath)
  {
    v5 = cell_IndexPath;
    [(CollectionDataSource *)self shareRowAtIndexPath:cell_IndexPath completion:0];
    cell_IndexPath = v5;
  }
}

- (void)deleteRow:(id)row
{
  cell_IndexPath = [row cell_IndexPath];
  if (cell_IndexPath)
  {
    v5 = cell_IndexPath;
    [(CollectionDataSource *)self deleteRowAtIndexPath:cell_IndexPath completion:0];
    cell_IndexPath = v5;
  }
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
      v5 = [[CollectionEditSession alloc] initWithCollection:self->_collectionHandler];
    }

    else
    {
      v5 = 0;
    }

    editSession = self->_editSession;
    self->_editSession = v5;
  }
}

- (id)objectsForAnalytics
{
  currentContent = [(CollectionDataSource *)self currentContent];
  v3 = [currentContent copy];

  return v3;
}

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  currentContent = [(CollectionDataSource *)self currentContent];
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

- (id)currentContent
{
  contentAfterDeletion = self->_contentAfterDeletion;
  if (contentAfterDeletion)
  {
    content = contentAfterDeletion;
LABEL_5:
    allObjects = content;
    goto LABEL_6;
  }

  if (self->_collectionHandler)
  {
    content = [(CollectionHandler *)self->_collectionHandler content];
    goto LABEL_5;
  }

  inputCollectionSession = self->_inputCollectionSession;
  if (inputCollectionSession)
  {
    selectedObjectSet = [(CollectionEditSession *)inputCollectionSession selectedObjectSet];
    allObjects = [selectedObjectSet allObjects];
  }

  else
  {
    allObjects = 0;
  }

LABEL_6:

  return allObjects;
}

- (void)selectAll
{
  editSession = self->_editSession;
  currentContent = [(CollectionDataSource *)self currentContent];
  [(CollectionEditSession *)editSession addSelectedObjects:currentContent];

  [(CollectionDataSource *)self collectionHandlerContentUpdated:self->_collectionHandler];
  currentContent2 = [(CollectionDataSource *)self currentContent];
  v6 = [currentContent2 count];

  if (v6)
  {
    v7 = 1;
    do
    {
      tableView = [(DataSource *)self tableView];
      v9 = [NSIndexPath indexPathForRow:v7 - 1 inSection:0];
      [tableView selectRowAtIndexPath:v9 animated:0 scrollPosition:0];

      currentContent3 = [(CollectionDataSource *)self currentContent];
      v11 = [currentContent3 count];

      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    while (v7++ < v11);
  }
}

- (void)collectionHandlerContentUpdated:(id)updated
{
  if (([updated beingModified] & 1) == 0)
  {
    if (!self->_contentAfterDeletion)
    {
LABEL_8:
      if ([(DataSource *)self active])
      {
        delegate = [(DataSource *)self delegate];
        [delegate dataSourceUpdated:self];
      }

      return;
    }

    content = [(CollectionHandler *)self->_collectionHandler content];
    contentAfterDeletion = self->_contentAfterDeletion;
    v10 = content;
    if (content == contentAfterDeletion)
    {
      self->_contentAfterDeletion = 0;
    }

    else
    {
      v6 = [(NSArray *)content isEqual:?];
      v7 = self->_contentAfterDeletion;
      self->_contentAfterDeletion = 0;

      if ((v6 & 1) == 0)
      {
        v8 = sub_10000BDA4();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unexpected collection content after deleting an item", buf, 2u);
        }

        goto LABEL_8;
      }
    }
  }
}

- (void)editNameRowAtIndexPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  v7 = [(CollectionDataSource *)self objectAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MKMapItem _itemWithGeoMapItem:v7];

    v7 = v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = [[SearchResult alloc] initWithMapItem:v9];
    delegate = [(DataSource *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [(DataSource *)self delegate];
      [delegate2 dataSource:self searchResultNeedsEditing:v10 completion:completionCopy];

      [(DataSource *)self sendAnalyticsForDataAtIndexPath:pathCopy object:v9 action:2010];
      goto LABEL_9;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_9:
}

- (void)shareRowAtIndexPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  v7 = [(CollectionDataSource *)self objectAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MKMapItem _itemWithGeoMapItem:v7];

    v7 = v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = [[SearchResult alloc] initWithMapItem:v9];

    tableView = [(DataSource *)self tableView];
    v12 = [tableView cellForRowAtIndexPath:pathCopy];
    v13 = [MUPresentationOptions optionsWithSender:v12];

    shareDelegate = [(CollectionDataSource *)self shareDelegate];
    unknownContact = [(SearchResult *)v10 unknownContact];
    v16 = [ShareItem shareItemWithSearchResult:v10 contact:unknownContact includePrintActivity:1];
    [shareDelegate shareItem:v16 presentationOptions:v13 completion:0];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  if ([(CollectionHandler *)self->_collectionHandler handlerType]== 3)
  {
    v17 = 256;
  }

  else
  {
    v17 = 252;
  }

  [GEOAPPortal captureUserAction:2008 target:0 value:0];
  [GEOAPPortal captureUserAction:2069 target:v17 value:0];
}

- (void)deleteRowAtIndexPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  v8 = [(CollectionDataSource *)self objectAtIndexPath:pathCopy];
  if (v8)
  {
    objc_initWeak(&location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100BF0794;
    v23[3] = &unk_101660C70;
    objc_copyWeak(&v27, &location);
    v9 = pathCopy;
    v24 = v9;
    v10 = v8;
    v25 = v10;
    v11 = completionCopy;
    v26 = v11;
    v12 = objc_retainBlock(v23);
    tableView = [(DataSource *)self tableView];
    v14 = [tableView cellForRowAtIndexPath:v9];

    WeakRetained = objc_loadWeakRetained(&self->_deleteDelegate);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100BF0A24;
    v20[3] = &unk_1016603A8;
    v16 = v12;
    v21 = v16;
    v22 = v11;
    [WeakRetained deleteItem:v10 sourceView:v14 completion:v20];

    if ([(CollectionHandler *)self->_collectionHandler handlerType]== 3)
    {
      v17 = 256;
    }

    else
    {
      v17 = 252;
    }

    v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 row]);
    stringValue = [v18 stringValue];
    [GEOAPPortal captureUserAction:2070 target:v17 value:stringValue];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)_contentSizeCategoryDidChange
{
  tableView = [(DataSource *)self tableView];
  [tableView reloadData];
}

- (void)setActive:(BOOL)active
{
  v5.receiver = self;
  v5.super_class = CollectionDataSource;
  [(DataSource *)&v5 setActive:active];
  if ([(DataSource *)self active])
  {
    delegate = [(DataSource *)self delegate];
    [delegate dataSourceUpdated:self];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CollectionDataSource;
  [(CollectionDataSource *)&v4 dealloc];
}

- (void)_commonInitWithTableView:(id)view
{
  viewCopy = view;
  [viewCopy setAllowsSelectionDuringEditing:1];
  v5 = objc_opt_class();
  v6 = +[(_SearchResultTableViewCell *)SearchResultTableViewCell];
  [viewCopy registerClass:v5 forCellReuseIdentifier:v6];

  v7 = objc_opt_class();
  v8 = +[(_SearchResultTableViewCell *)SearchResultTableViewCell];
  [viewCopy registerClass:v7 forCellReuseIdentifier:v8];

  v9 = objc_opt_class();
  v10 = +[TwoLinesTableViewCell identifier];
  [viewCopy registerClass:v9 forCellReuseIdentifier:v10];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (CollectionDataSource)initWithTableView:(id)view collection:(id)collection
{
  viewCopy = view;
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = CollectionDataSource;
  v8 = [(DataSource *)&v11 initWithTableView:viewCopy updateLocation:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_collectionHandler, collection);
    [(CollectionHandler *)v9->_collectionHandler addObserver:v9];
    [(CollectionDataSource *)v9 _commonInitWithTableView:viewCopy];
  }

  return v9;
}

- (CollectionDataSource)initWithTableView:(id)view collectionEditSession:(id)session
{
  viewCopy = view;
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = CollectionDataSource;
  v8 = [(DataSource *)&v11 initWithTableView:viewCopy updateLocation:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_inputCollectionSession, session);
    [(CollectionDataSource *)v9 _commonInitWithTableView:viewCopy];
  }

  return v9;
}

@end