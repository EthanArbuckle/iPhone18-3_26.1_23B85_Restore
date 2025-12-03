@interface STStorageFPFSController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (id)specifierAtIndexPath:(id)path;
- (id)specifiers;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
- (void)emptyTrash;
- (void)reloadSpecs;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation STStorageFPFSController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = STStorageFPFSController;
  [(STStorageFPFSController *)&v4 viewDidLoad];
  table = [(STStorageFPFSController *)self table];
  [table setAllowsMultipleSelectionDuringEditing:0];
}

- (id)specifiers
{
  if (!self->_collection)
  {
    v3 = [*&self->PSEditableListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:STStorageFPItemKey];
    v4 = v3;
    if (v3)
    {
      childItemCount = [v3 childItemCount];
      if (![childItemCount longValue] || (objc_msgSend(v4, "capabilities") & 1) == 0)
      {

LABEL_8:
LABEL_18:
        v16 = &__NSArray0__struct;
        goto LABEL_56;
      }

      v8 = +[FPItemManager defaultManager];
      v9 = [v8 collectionForFolderItem:v4];
      collection = self->_collection;
      self->_collection = v9;
    }

    else
    {
      createCollection = [(STStorageFPFSController *)self createCollection];
      v7 = self->_collection;
      self->_collection = createCollection;

      if (!self->_collection)
      {
        NSLog(@"No item collection was provided by FPFSController");
        goto LABEL_8;
      }
    }

    if (qword_39FD0 != -1)
    {
      sub_1CA8C();
    }

    [(FPItemCollection *)self->_collection reorderItemsWithSortDescriptors:qword_39FD8];
    [(FPItemCollection *)self->_collection setDelegate:self];
    [(FPItemCollection *)self->_collection startObserving];
  }

  v11 = OBJC_IVAR___PSListController__specifiers;
  v12 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v12)
  {
    goto LABEL_55;
  }

  v13 = [*&self->PSEditableListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:STStorageFPItemKey];
  v14 = v13;
  if (v13)
  {
    childItemCount2 = [v13 childItemCount];
    if (![childItemCount2 longValue] || (objc_msgSend(v14, "capabilities") & 1) == 0)
    {

      goto LABEL_18;
    }
  }

  v49 = v14;
  v50 = v11;
  v17 = self->_fpItems;
  v18 = [(NSArray *)v17 count];
  selfCopy = self;
  v53 = self->_specsByItemID;
  v48 = [NSMutableArray arrayWithCapacity:v18 + 1];
  v54 = [NSMutableArray arrayWithCapacity:v18];
  v19 = [NSMutableArray arrayWithCapacity:v18];
  v52 = [NSMutableDictionary dictionaryWithCapacity:v18];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v20 = v17;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (!v21)
  {
    goto LABEL_42;
  }

  v22 = v21;
  v23 = *v56;
  do
  {
    for (i = 0; i != v22; i = i + 1)
    {
      if (*v56 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v55 + 1) + 8 * i);
      capabilities = [v25 capabilities];
      capabilities2 = [v25 capabilities];
      capabilities3 = [v25 capabilities];
      childItemCount3 = [v25 childItemCount];
      v30 = childItemCount3;
      if (childItemCount3)
      {
        if (![childItemCount3 intValue])
        {
          goto LABEL_40;
        }

        if ((capabilities2 & 0x40) == 0 && (capabilities3 & 0x10) == 0 && (capabilities & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else if (!(capabilities2 & 0x40 | (capabilities3 & 0x10)))
      {
        goto LABEL_40;
      }

      itemID = [v25 itemID];
      v33 = [(NSMutableDictionary *)v53 objectForKey:itemID];

      if (!v33)
      {
        v33 = [STStorageFPItemCell specifierForFPItem:v25 recurseIntoFolders:!selfCopy->_pinnedOnly];
        [v33 setDetailControllerClass:objc_opt_class()];
      }

      if ([v25 isTrashed])
      {
        v34 = v19;
      }

      else
      {
        v34 = v54;
      }

      [v34 addObject:v33];
      itemID2 = [v25 itemID];
      [(NSMutableDictionary *)v52 setObject:v33 forKey:itemID2];

LABEL_40:
    }

    v22 = [(NSArray *)v20 countByEnumeratingWithState:&v55 objects:v59 count:16];
  }

  while (v22);
LABEL_42:

  [v48 addObjectsFromArray:v54];
  if ([v19 count])
  {
    v36 = STStorageLocStr(@"TRASH");
    v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v37 setProperty:@"STStorageButtonHeader" forKey:PSHeaderCellClassGroupKey];
    v38 = STStorageLocStr(@"EMPTY_TRASH");
    [v37 setProperty:v38 forKey:@"stButtonTitle"];

    [v37 setTarget:selfCopy];
    [v37 setButtonAction:"emptyTrash"];
    [v48 addObject:v37];
    [v48 addObjectsFromArray:v19];
  }

  selfCopy->_hideEdit = [v48 count] == 0;
  [STStorageFPFSController setEditingButtonHidden:selfCopy animated:"setEditingButtonHidden:animated:"];
  if (![v48 count])
  {
    if (selfCopy->_areCollectionsLoaded)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = @"NO_LOCAL_ITEMS";
      }

      else
      {
        pinnedOnly = [(STStorageFPFSController *)selfCopy pinnedOnly];
        v42 = @"NO_UNSYNC_ITEMS";
        if (pinnedOnly)
        {
          v42 = @"NO_PINNED_ITEMS";
        }

        v39 = v42;
      }

      v43 = STStorageLocStr(v39);
      v40 = [STStorageMessageItemCell specifierWithTitle:v43];

      [v40 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }

    else
    {
      v40 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    }

    [v48 addObject:v40];
  }

  specsByItemID = selfCopy->_specsByItemID;
  selfCopy->_specsByItemID = v52;
  v45 = v52;

  v46 = *&selfCopy->PSEditableListController_opaque[v50];
  *&selfCopy->PSEditableListController_opaque[v50] = v48;

  v12 = *&selfCopy->PSEditableListController_opaque[v50];
LABEL_55:
  v16 = v12;
LABEL_56:

  return v16;
}

- (id)specifierAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = STStorageFPFSController;
  v3 = [(STStorageFPFSController *)&v5 specifierAtIndexPath:path];

  return v3;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(STStorageFPFSController *)self specifierAtIndexPath:path];

  return v4 != 0;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  if ([(STStorageFPFSController *)self pinnedOnly:view])
  {
    v4 = @"UNPIN";
  }

  else
  {
    v4 = @"DELETE";
  }

  v5 = STStorageLocStr(v4);

  return v5;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v6 = [(STStorageFPFSController *)self specifierAtIndexPath:path];
    v7 = [v6 propertyForKey:STStorageFPItemKey];
    v8 = v7;
    if (v7)
    {
      v10 = v7;
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      [(STStorageFPFSController *)self deleteItems:v9];
    }
  }
}

- (void)emptyTrash
{
  items = [(FPItemCollection *)self->_collection items];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [items count]);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  items2 = [(FPItemCollection *)self->_collection items];
  v6 = [items2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(items2);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 isTrashed])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [items2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(STStorageFPFSController *)self deleteItems:v4];
}

- (void)reloadSpecs
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3EFC;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  items = [reloaded items];
  v5 = [NSArray arrayWithArray:items];
  [(STStorageFPFSController *)self setFpItems:v5];

  self->_areCollectionsLoaded = 1;

  [(STStorageFPFSController *)self reloadSpecs];
}

@end