@interface CollectionDataSource
- (BOOL)tableView:(id)a3 wantsHeaderForSection:(int64_t)a4;
- (CollectionDataSource)initWithTableView:(id)a3 collection:(id)a4;
- (CollectionDataSource)initWithTableView:(id)a3 collectionEditSession:(id)a4;
- (DeleteDelegate)deleteDelegate;
- (ShareDelegate)shareDelegate;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_cellForMapItem:(id)a3 inTableView:(id)a4 atIndexPath:(id)a5;
- (id)_cellForTransitLine:(id)a3 inTableView:(id)a4 atIndexPath:(id)a5;
- (id)currentContent;
- (id)deleteContextualActionAtIndexPath:(id)a3;
- (id)deleteMenuActionAtIndexPath:(id)a3;
- (id)editNameContextualActionAtIndexPath:(id)a3;
- (id)editNameKeyCommandAtIndexPath:(id)a3;
- (id)editNameMenuActionAtIndexPath:(id)a3;
- (id)objectAtIndexPath:(id)a3;
- (id)objectsForAnalytics;
- (id)shareContextualActionAtIndexPath:(id)a3;
- (id)shareMenuActionAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_commonInitWithTableView:(id)a3;
- (void)_contentSizeCategoryDidChange;
- (void)_updateKeyCommandsAtIndexPath:(id)a3;
- (void)collectionHandlerContentUpdated:(id)a3;
- (void)dealloc;
- (void)deleteRow:(id)a3;
- (void)deleteRowAtIndexPath:(id)a3 completion:(id)a4;
- (void)editNameRow:(id)a3;
- (void)editNameRowAtIndexPath:(id)a3 completion:(id)a4;
- (void)selectAll;
- (void)setActive:(BOOL)a3;
- (void)setEditing:(BOOL)a3;
- (void)shareRow:(id)a3;
- (void)shareRowAtIndexPath:(id)a3 completion:(id)a4;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
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

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v4 = [(CollectionDataSource *)self objectAtIndexPath:a4];
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [(CollectionDataSource *)self objectAtIndexPath:a4];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (self->_collectionHandler)
  {
    v7 = [(CollectionDataSource *)self objectAtIndexPath:v6];
    if (v7)
    {
      if ([v13 isEditing])
      {
        [(CollectionEditSession *)self->_editSession addSelectedObject:v7];
LABEL_10:

        goto LABEL_11;
      }

      v8 = [(DataSource *)self delegate];
      [v8 dataSource:self itemTapped:v7];

      v9 = [(CollectionDataSource *)self collectionInfo];
      if ([v9 handlerType] == 3)
      {
        v10 = 256;
      }

      else
      {
        v10 = 252;
      }

      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 row]);
      v12 = [v11 stringValue];
      [GEOAPPortal captureUserAction:2068 target:v10 value:v12];
    }

    [v13 deselectRowAtIndexPath:v6 animated:1];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v12 = a3;
  v7 = [a4 nextFocusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v12 indexPathForCell:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    [(CollectionDataSource *)self _updateKeyCommandsAtIndexPath:v8];
    v10 = [(DataSource *)self delegate];
    v11 = [(CollectionDataSource *)self objectAtIndexPath:v9];
    [v10 dataSource:self itemFocused:v11];
  }

  else
  {
    [(CollectionDataSource *)self _updateKeyCommandsAtIndexPath:0];
    v9 = [(DataSource *)self delegate];
    [v9 dataSource:self itemFocused:0];
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  if (self->_collectionHandler)
  {
    v6 = a3;
    v8 = [(CollectionDataSource *)self objectAtIndexPath:a4];
    LODWORD(a4) = [v6 isEditing];

    v7 = v8;
    if (a4 && v8)
    {
      [(CollectionEditSession *)self->_editSession removeSelectedObject:v8];
      v7 = v8;
    }
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  if (self->_collectionHandler)
  {
    v7 = a3;
    v8 = [v7 cellForRowAtIndexPath:v6];
    v9 = [v7 isEditing];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 3;
    }

    [v8 setSelectionStyle:v10];
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  v7 = [(DataSource *)self tableView];
  v8 = sub_10000FA08(v7);

  if (v8 != 5)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if (self->_collectionHandler)
  {
    v9 = [(CollectionDataSource *)self objectAtIndexPath:v6];
    if ([(CollectionHandler *)self->_collectionHandler handlerType]== 3)
    {
      v10 = [(CollectionDataSource *)self shareMenuActionAtIndexPath:v6];
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
        v15 = [v9 _maps_canRenameCollectionItem];
        v16 = [(CollectionDataSource *)self deleteMenuActionAtIndexPath:v6];
        v10 = v16;
        if (v15)
        {
          v25[0] = v16;
          v17 = [(CollectionDataSource *)self shareMenuActionAtIndexPath:v6];
          v25[1] = v17;
          v18 = [(CollectionDataSource *)self editNameMenuActionAtIndexPath:v6];
          v25[2] = v18;
          v12 = [NSArray arrayWithObjects:v25 count:3];
        }

        else
        {
          v24[0] = v16;
          v17 = [(CollectionDataSource *)self shareMenuActionAtIndexPath:v6];
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

      v10 = [(CollectionDataSource *)self deleteMenuActionAtIndexPath:v6];
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

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (!self->_collectionHandler)
  {
    v9 = &__NSArray0__struct;
    goto LABEL_17;
  }

  v6 = [(CollectionDataSource *)self objectAtIndexPath:v5];
  if ([(CollectionHandler *)self->_collectionHandler handlerType]== 3)
  {
    v7 = [(CollectionDataSource *)self shareContextualActionAtIndexPath:v5];
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
      v11 = [v6 _maps_canRenameCollectionItem];
      v12 = [(CollectionDataSource *)self deleteContextualActionAtIndexPath:v5];
      v7 = v12;
      if (v11)
      {
        v19[0] = v12;
        v13 = [(CollectionDataSource *)self shareContextualActionAtIndexPath:v5];
        v19[1] = v13;
        v14 = [(CollectionDataSource *)self editNameContextualActionAtIndexPath:v5];
        v19[2] = v14;
        v9 = [NSArray arrayWithObjects:v19 count:3];
      }

      else
      {
        v18[0] = v12;
        v13 = [(CollectionDataSource *)self shareContextualActionAtIndexPath:v5];
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

    v7 = [(CollectionDataSource *)self deleteContextualActionAtIndexPath:v5];
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

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  if (self->_showsHeader)
  {
    v6 = [(CollectionDataSource *)self currentContent];
    v7 = [v6 count];

    if (v7)
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"In this Guide" value:@"localized string not found" table:0];

      v7 = [[SectionHeaderTableViewHeaderFooterView alloc] initWithTitle:v9 isFirstNonEmptySection:1];
      [v5 bounds];
      Width = CGRectGetWidth(v17);
      v11 = [v5 traitCollection];
      [SectionHeaderTableViewHeaderFooterView heightWhenFirstNonEmptySection:1 title:v9 actionTitle:0 availableWidth:v11 traitCollection:Width];
      v13 = v12;

      v14 = [(DataSource *)self tableView];
      [v14 frame];
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

- (BOOL)tableView:(id)a3 wantsHeaderForSection:(int64_t)a4
{
  if (!self->_showsHeader)
  {
    return 0;
  }

  v4 = [(CollectionDataSource *)self currentContent:a3];
  v5 = [v4 count] != 0;

  return v5;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v12 = a4;
  v8 = a3;
  v9 = [(CollectionDataSource *)self objectAtIndexPath:a5];
  v10 = [v8 isEditing];

  if (v10)
  {
    [v12 setSelectionStyle:1];
    v11 = [(CollectionEditSession *)self->_editSession selectedObjectSet];
    [v12 setSelected:{objc_msgSend(v11, "containsObject:", v9)}];
  }

  else
  {
    [v12 setSelected:0];
  }
}

- (id)_cellForTransitLine:(id)a3 inTableView:(id)a4 atIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[TwoLinesTableViewCell identifier];
  v11 = [v8 dequeueReusableCellWithIdentifier:v10 forIndexPath:v7];

  v12 = [TwoLinesContentViewModelComposer cellModelForTransitLine:v9];

  [v11 setViewModel:v12];

  return v11;
}

- (id)_cellForMapItem:(id)a3 inTableView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (+[UIFont accessibilityTextEnabled])
  {
    +[(_SearchResultTableViewCell *)SearchResultTableViewCell];
  }

  else
  {
    +[(_SearchResultTableViewCell *)SearchResultTableViewCell];
  }
  v11 = ;
  v12 = [v9 dequeueReusableCellWithIdentifier:v11 forIndexPath:v8];

  v13 = [(DataSource *)self currentLocation];
  [v12 setCurrentLocation:v13];

  [v12 setMapItem:v10];
  [v12 setAccessibilityIdentifier:@"CollectionPlaceTableCell"];

  return v12;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CollectionDataSource *)self objectAtIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(CollectionDataSource *)self _cellForMapItem:v8 inTableView:v6 atIndexPath:v7];
  }

  else
  {
    if (![v8 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [MKMapItem _itemWithGeoMapItem:v8];
        v12 = [(CollectionDataSource *)self _cellForMapItem:v11 inTableView:v6 atIndexPath:v7];
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

    v9 = [(CollectionDataSource *)self _cellForTransitLine:v8 inTableView:v6 atIndexPath:v7];
  }

  v10 = v9;
LABEL_10:

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(CollectionDataSource *)self currentContent:a3];
  v5 = [v4 count];

  return v5;
}

- (id)editNameMenuActionAtIndexPath:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Collection] edit name action" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100BEEE54;
  v10[3] = &unk_101660418;
  objc_copyWeak(&v12, &location);
  v7 = v4;
  v11 = v7;
  v8 = [UIAction actionWithTitle:v6 image:0 identifier:0 handler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

- (id)editNameContextualActionAtIndexPath:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"RowSwipe_Edit" value:@"localized string not found" table:0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100BEF030;
  v11[3] = &unk_101652738;
  objc_copyWeak(&v13, &location);
  v7 = v4;
  v12 = v7;
  v8 = [UIContextualAction contextualActionWithStyle:0 title:v6 handler:v11];

  v9 = +[UIColor systemOrangeColor];
  [v8 setBackgroundColor:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

- (id)shareMenuActionAtIndexPath:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Collection] Share action" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100BEF25C;
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
  v8[2] = sub_100BEF3B0;
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
  v6 = [v5 localizedStringForKey:@"[Collection] Delete action" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100BEF580;
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
  v8[2] = sub_100BEF6D4;
  v8[3] = &unk_1016603D0;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = sub_100DCC9E8(v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (void)_updateKeyCommandsAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self tableView];
  if (sub_10000FA08(v5) == 5 || !self->_collectionHandler)
  {
  }

  else
  {

    if (v4)
    {
      v6 = [(CollectionDataSource *)self objectAtIndexPath:v4];
      if ([(CollectionHandler *)self->_collectionHandler handlerType]== 3)
      {
        v7 = sub_100C8A9FC("shareRow:", v4);
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
          v13 = [v6 _maps_canRenameCollectionItem];
          v14 = sub_100C8A86C("deleteRow:", v4);
          v7 = v14;
          if (v13)
          {
            v19[0] = v14;
            v15 = sub_100C8A9FC("shareRow:", v4);
            v19[1] = v15;
            v16 = [(CollectionDataSource *)self editNameKeyCommandAtIndexPath:v4];
            v19[2] = v16;
            v9 = [NSArray arrayWithObjects:v19 count:3];
          }

          else
          {
            v18[0] = v14;
            v15 = sub_100C8A9FC("shareRow:", v4);
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

        v7 = sub_100C8A86C("deleteRow:", v4);
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

- (id)editNameKeyCommandAtIndexPath:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"KeyCommand_EditName" value:@"localized string not found" table:0];
  v12[0] = @"row";
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 row]);
  v12[1] = @"section";
  v13[0] = v6;
  v7 = [v3 section];

  v8 = [NSNumber numberWithInteger:v7];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [UIKeyCommand commandWithTitle:v5 image:0 action:"editNameRow:" input:@"e" modifierFlags:0x100000 propertyList:v9];

  return v10;
}

- (void)editNameRow:(id)a3
{
  v4 = [a3 cell_IndexPath];
  if (v4)
  {
    v5 = v4;
    [(CollectionDataSource *)self editNameRowAtIndexPath:v4 completion:0];
    v4 = v5;
  }
}

- (void)shareRow:(id)a3
{
  v4 = [a3 cell_IndexPath];
  if (v4)
  {
    v5 = v4;
    [(CollectionDataSource *)self shareRowAtIndexPath:v4 completion:0];
    v4 = v5;
  }
}

- (void)deleteRow:(id)a3
{
  v4 = [a3 cell_IndexPath];
  if (v4)
  {
    v5 = v4;
    [(CollectionDataSource *)self deleteRowAtIndexPath:v4 completion:0];
    v4 = v5;
  }
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
  v2 = [(CollectionDataSource *)self currentContent];
  v3 = [v2 copy];

  return v3;
}

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CollectionDataSource *)self currentContent];
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

- (id)currentContent
{
  contentAfterDeletion = self->_contentAfterDeletion;
  if (contentAfterDeletion)
  {
    v3 = contentAfterDeletion;
LABEL_5:
    v4 = v3;
    goto LABEL_6;
  }

  if (self->_collectionHandler)
  {
    v3 = [(CollectionHandler *)self->_collectionHandler content];
    goto LABEL_5;
  }

  inputCollectionSession = self->_inputCollectionSession;
  if (inputCollectionSession)
  {
    v7 = [(CollectionEditSession *)inputCollectionSession selectedObjectSet];
    v4 = [v7 allObjects];
  }

  else
  {
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (void)selectAll
{
  editSession = self->_editSession;
  v4 = [(CollectionDataSource *)self currentContent];
  [(CollectionEditSession *)editSession addSelectedObjects:v4];

  [(CollectionDataSource *)self collectionHandlerContentUpdated:self->_collectionHandler];
  v5 = [(CollectionDataSource *)self currentContent];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 1;
    do
    {
      v8 = [(DataSource *)self tableView];
      v9 = [NSIndexPath indexPathForRow:v7 - 1 inSection:0];
      [v8 selectRowAtIndexPath:v9 animated:0 scrollPosition:0];

      v10 = [(CollectionDataSource *)self currentContent];
      v11 = [v10 count];

      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    while (v7++ < v11);
  }
}

- (void)collectionHandlerContentUpdated:(id)a3
{
  if (([a3 beingModified] & 1) == 0)
  {
    if (!self->_contentAfterDeletion)
    {
LABEL_8:
      if ([(DataSource *)self active])
      {
        v9 = [(DataSource *)self delegate];
        [v9 dataSourceUpdated:self];
      }

      return;
    }

    v4 = [(CollectionHandler *)self->_collectionHandler content];
    contentAfterDeletion = self->_contentAfterDeletion;
    v10 = v4;
    if (v4 == contentAfterDeletion)
    {
      self->_contentAfterDeletion = 0;
    }

    else
    {
      v6 = [(NSArray *)v4 isEqual:?];
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

- (void)editNameRowAtIndexPath:(id)a3 completion:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(CollectionDataSource *)self objectAtIndexPath:v14];
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
    v11 = [(DataSource *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(DataSource *)self delegate];
      [v13 dataSource:self searchResultNeedsEditing:v10 completion:v6];

      [(DataSource *)self sendAnalyticsForDataAtIndexPath:v14 object:v9 action:2010];
      goto LABEL_9;
    }
  }

  if (v6)
  {
    v6[2](v6);
  }

LABEL_9:
}

- (void)shareRowAtIndexPath:(id)a3 completion:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(CollectionDataSource *)self objectAtIndexPath:v18];
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

    v11 = [(DataSource *)self tableView];
    v12 = [v11 cellForRowAtIndexPath:v18];
    v13 = [MUPresentationOptions optionsWithSender:v12];

    v14 = [(CollectionDataSource *)self shareDelegate];
    v15 = [(SearchResult *)v10 unknownContact];
    v16 = [ShareItem shareItemWithSearchResult:v10 contact:v15 includePrintActivity:1];
    [v14 shareItem:v16 presentationOptions:v13 completion:0];
  }

  if (v6)
  {
    v6[2](v6);
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

- (void)deleteRowAtIndexPath:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CollectionDataSource *)self objectAtIndexPath:v6];
  if (v8)
  {
    objc_initWeak(&location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100BF0794;
    v23[3] = &unk_101660C70;
    objc_copyWeak(&v27, &location);
    v9 = v6;
    v24 = v9;
    v10 = v8;
    v25 = v10;
    v11 = v7;
    v26 = v11;
    v12 = objc_retainBlock(v23);
    v13 = [(DataSource *)self tableView];
    v14 = [v13 cellForRowAtIndexPath:v9];

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
    v19 = [v18 stringValue];
    [GEOAPPortal captureUserAction:2070 target:v17 value:v19];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)_contentSizeCategoryDidChange
{
  v2 = [(DataSource *)self tableView];
  [v2 reloadData];
}

- (void)setActive:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CollectionDataSource;
  [(DataSource *)&v5 setActive:a3];
  if ([(DataSource *)self active])
  {
    v4 = [(DataSource *)self delegate];
    [v4 dataSourceUpdated:self];
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

- (void)_commonInitWithTableView:(id)a3
{
  v4 = a3;
  [v4 setAllowsSelectionDuringEditing:1];
  v5 = objc_opt_class();
  v6 = +[(_SearchResultTableViewCell *)SearchResultTableViewCell];
  [v4 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = objc_opt_class();
  v8 = +[(_SearchResultTableViewCell *)SearchResultTableViewCell];
  [v4 registerClass:v7 forCellReuseIdentifier:v8];

  v9 = objc_opt_class();
  v10 = +[TwoLinesTableViewCell identifier];
  [v4 registerClass:v9 forCellReuseIdentifier:v10];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (CollectionDataSource)initWithTableView:(id)a3 collection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CollectionDataSource;
  v8 = [(DataSource *)&v11 initWithTableView:v6 updateLocation:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_collectionHandler, a4);
    [(CollectionHandler *)v9->_collectionHandler addObserver:v9];
    [(CollectionDataSource *)v9 _commonInitWithTableView:v6];
  }

  return v9;
}

- (CollectionDataSource)initWithTableView:(id)a3 collectionEditSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CollectionDataSource;
  v8 = [(DataSource *)&v11 initWithTableView:v6 updateLocation:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_inputCollectionSession, a4);
    [(CollectionDataSource *)v9 _commonInitWithTableView:v6];
  }

  return v9;
}

@end