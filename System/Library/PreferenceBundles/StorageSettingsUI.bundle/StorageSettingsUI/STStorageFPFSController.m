@interface STStorageFPFSController
- (BOOL)shouldShowItem:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (id)specifierAtIndexPath:(id)a3;
- (id)specifiers;
- (id)storageApp;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
- (void)deleteItems:(id)a3;
- (void)emptyTrash;
- (void)reloadSpecs;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation STStorageFPFSController

- (id)storageApp
{
  v4.receiver = self;
  v4.super_class = STStorageFPFSController;
  v2 = [(STStorageDetailViewController *)&v4 storageApp];

  return v2;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = STStorageFPFSController;
  [(STStorageFPFSController *)&v8 viewDidLoad];
  v3 = [(STStorageFPFSController *)self table];
  [v3 setAllowsMultipleSelectionDuringEditing:0];

  v4 = [(STStorageFPFSController *)self specifier];
  v5 = [v4 propertyForKey:STStorageFPItemKey];

  if (v5)
  {
    v6 = [v5 displayName];
    v7 = [(STStorageFPFSController *)self navigationItem];
    [v7 setTitle:v6];
  }
}

- (id)specifiers
{
  if (!*(&self->_hideEdit + 2))
  {
    v3 = [*&self->super.PSEditableListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:STStorageFPItemKey];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 childItemCount];
      if (![v5 longValue] || (objc_msgSend(v4, "capabilities") & 1) == 0)
      {

LABEL_8:
LABEL_18:
        v16 = &__NSArray0__struct;
        goto LABEL_49;
      }

      v8 = +[FPItemManager defaultManager];
      v9 = [v8 collectionForFolderItem:v4];
      v10 = *(&self->_hideEdit + 2);
      *(&self->_hideEdit + 2) = v9;
    }

    else
    {
      v6 = [(STStorageFPFSController *)self createCollection];
      v7 = *(&self->_hideEdit + 2);
      *(&self->_hideEdit + 2) = v6;

      if (!*(&self->_hideEdit + 2))
      {
        NSLog(@"No item collection was provided by FPFSController");
        goto LABEL_8;
      }
    }

    if (qword_BA580 != -1)
    {
      sub_807C4();
    }

    [*(&self->_hideEdit + 2) reorderItemsWithSortDescriptors:qword_BA588];
    [*(&self->_hideEdit + 2) setDelegate:self];
    [*(&self->_hideEdit + 2) startObserving];
  }

  v11 = OBJC_IVAR___PSListController__specifiers;
  v12 = *&self->super.PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v12)
  {
    v13 = [*&self->super.PSEditableListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:STStorageFPItemKey];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 childItemCount];
      if (![v15 longValue] || (objc_msgSend(v14, "capabilities") & 1) == 0)
      {

        goto LABEL_18;
      }
    }

    v46 = v14;
    v47 = v11;
    v17 = *(&self->_collection + 6);
    v18 = [v17 count];
    v48 = *(&self->_fpItems + 6);
    v45 = [NSMutableArray arrayWithCapacity:v18 + 1];
    v49 = [NSMutableArray arrayWithCapacity:v18];
    v19 = [NSMutableArray arrayWithCapacity:v18];
    v20 = [NSMutableDictionary dictionaryWithCapacity:v18];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v21 = v17;
    v22 = [v21 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v51;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v51 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v50 + 1) + 8 * i);
          if ([(STStorageFPFSController *)self shouldShowItem:v26])
          {
            v27 = [v26 itemID];
            v28 = [v48 objectForKey:v27];

            if (!v28)
            {
              v28 = [STStorageFPItemCell specifierForFPItem:v26 recurseIntoFolders:!self->_pinnedOnly];
            }

            if ([v26 isTrashed])
            {
              v29 = v19;
            }

            else
            {
              v29 = v49;
            }

            [v29 addObject:v28];
            v30 = [v26 itemID];
            [(NSArray *)v20 setObject:v28 forKey:v30];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v23);
    }

    [v45 addObjectsFromArray:v49];
    if ([v19 count])
    {
      v31 = STLocalizedString(@"Trash");
      v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:0 set:0 get:0 detail:0 cell:0 edit:0];

      [v32 setProperty:@"STStorageButtonHeader" forKey:PSHeaderCellClassGroupKey];
      v33 = STLocalizedString(@"Empty Trash");
      [v32 setProperty:v33 forKey:@"stButtonTitle"];

      [v32 setTarget:self];
      [v32 setButtonAction:"emptyTrash"];
      [v45 addObject:v32];
      [v45 addObjectsFromArray:v19];
    }

    self->_hideEdit = [v45 count] == 0;
    [STStorageFPFSController setEditingButtonHidden:"setEditingButtonHidden:animated:" animated:?];
    v34 = [v45 count];
    v35 = [(STStorageFPFSController *)self parentViewController];
    v36 = [v35 navigationItem];
    v37 = v36;
    if (v34)
    {
      v38 = [(STStorageFPFSController *)self editButtonItem];
      [v37 setRightBarButtonItem:v38];
    }

    else
    {
      [v36 setRightBarButtonItem:0];

      if (self->_areCollectionsLoaded)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = @"No items";
        }

        else if ([(STStorageFPFSController *)self pinnedOnly])
        {
          v39 = @"No items are pinned";
        }

        else
        {
          v39 = @"No items are waiting for upload";
        }

        v40 = STLocalizedString(v39);
        v35 = [STStorageMessageItemCell specifierWithTitle:v40];
        [v35 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
      }

      else
      {
        v35 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:0 cell:15 edit:0];
      }

      [v45 addObject:v35];
    }

    v41 = *(&self->_fpItems + 6);
    *(&self->_fpItems + 6) = v20;
    v42 = v20;

    v43 = *&self->super.PSEditableListController_opaque[v47];
    *&self->super.PSEditableListController_opaque[v47] = v45;

    v12 = *&self->super.PSEditableListController_opaque[v47];
  }

  v16 = v12;
LABEL_49:

  return v16;
}

- (id)specifierAtIndexPath:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStorageFPFSController;
  v3 = [(STStorageFPFSController *)&v5 specifierAtIndexPath:a3];

  return v3;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(STStorageFPFSController *)self specifierAtIndexPath:a4];

  return v4 != 0;
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  if ([(STStorageFPFSController *)self pinnedOnly:a3])
  {
    v4 = @"Unpin";
  }

  else
  {
    v4 = @"Delete";
  }

  v5 = STLocalizedString(v4);

  return v5;
}

- (void)deleteItems:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    goto LABEL_12;
  }

  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = STStorageDeviceKey();
  v8 = STLocalizedString(@"CONFIRM_DELETE_TITLE");
  v9 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v8, [v4 count]);

  v10 = STLocalizedString(@"CONFIRM_DELETE_OTHER");
  v11 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v10, [v4 count]);

  if ([v7 isEqualToString:@"PHONE"])
  {
    v12 = @"CONFIRM_DELETE_PHONE";
LABEL_8:
    v13 = STLocalizedString(v12);
    v14 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v13, [v4 count]);

    v11 = v14;
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"PAD"])
  {
    v12 = @"CONFIRM_DELETE_PAD";
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"IPOD"])
  {
    v12 = @"CONFIRM_DELETE_IPOD";
    goto LABEL_8;
  }

LABEL_9:
  v15 = v6 == 0;
  v16 = [UIAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:0];
  v17 = STLocalizedString(@"OK");
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_11A44;
  v31[3] = &unk_AAB28;
  v32 = v4;
  v18 = [UIAlertAction actionWithTitle:v17 style:2 handler:v31];

  v19 = STLocalizedString(@"Cancel");
  v20 = [UIAlertAction actionWithTitle:v19 style:v15 handler:0];

  [v16 addAction:v18];
  [v16 addAction:v20];
  v21 = [(STStorageFPFSController *)self table];
  v22 = [v16 popoverPresentationController];
  if (v22)
  {
    [v21 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [v22 setSourceView:v21];
    [v22 setSourceRect:{v24 + v28 * 0.5, v26 + v30 * 0.5, 0.0, 0.0}];
    [v22 setPermittedArrowDirections:0];
  }

  [(STStorageFPFSController *)self presentViewController:v16 animated:1 completion:0];
LABEL_12:
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v6 = [(STStorageFPFSController *)self specifierAtIndexPath:a5];
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
  v3 = [*(&self->_hideEdit + 2) items];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(&self->_hideEdit + 2) items];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (-[STStorageFPFSController shouldShowItem:](self, "shouldShowItem:", v10) && [v10 isTrashed])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(STStorageFPFSController *)self deleteItems:v4];
}

- (BOOL)shouldShowItem:(id)a3
{
  v3 = a3;
  v4 = [v3 capabilities];
  v5 = [v3 capabilities];
  v6 = [v3 capabilities];
  v7 = [v3 childItemCount];

  if (v7)
  {
    if (![v7 intValue] || (v5 & 0x40) == 0 && (v6 & 0x10) == 0 && (v4 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (v5 & 0x40 | (v6 & 0x10))
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = 0;
LABEL_9:

  return v8;
}

- (void)reloadSpecs
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11E0C;
  block[3] = &unk_AA628;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v4 = [a3 items];
  v5 = [NSArray arrayWithArray:v4];
  [(STStorageFPFSController *)self setFpItems:v5];

  self->_areCollectionsLoaded = 1;

  [(STStorageFPFSController *)self reloadSpecs];
}

@end