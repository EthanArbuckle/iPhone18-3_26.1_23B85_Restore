@interface STStorageLocalStorageController
- (id)createCollection;
- (void)deleteItems:(id)items;
@end

@implementation STStorageLocalStorageController

- (id)createCollection
{
  v3 = [*&self->super.PSEditableListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:STStorageAppKey];
  fpDomain = [v3 fpDomain];
  if (fpDomain)
  {
    v5 = STStorageDeviceKey();
    v6 = [NSString stringWithFormat:@"LOCAL_FILES_TITLE_%@", v5];
    v7 = STStorageLocStr(v6);
    navigationItem = [(STStorageLocalStorageController *)self navigationItem];
    [navigationItem setTitle:v7];

    [(STStorageFPFSController *)self setConfirmDelete:1];
    v9 = +[FPItemManager defaultManager];
    v10 = [v9 rootCollectionForProviderDomain:fpDomain];

    v11 = +[FPItemManager defaultManager];
    v12 = [v11 trashCollectionForProviderDomain:fpDomain];

    v13 = [FPUnionCollection alloc];
    v18[0] = v10;
    v18[1] = v12;
    v14 = [NSArray arrayWithObjects:v18 count:2];
    v15 = [v13 initWithCollections:v14];
  }

  else
  {
    name = [v3 name];
    NSLog(@"No file provider specified for %@", name);

    v15 = 0;
  }

  return v15;
}

- (void)deleteItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v5 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v5 userInterfaceIdiom];

    v7 = STStorageLocStr(@"CONFIRM_DELETE_TITLE");
    v8 = STStorageDeviceKey();
    v9 = [NSString stringWithFormat:@"CONFIRM_DELETE_LOCAL_%@", v8];
    v10 = STStorageLocStr(v9);

    if ([itemsCopy count] >= 2)
    {
      v11 = STStorageLocStr(@"CONFIRM_DELETE_MULTIPLE_TITLE");
      v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v11, [itemsCopy count]);

      v13 = STStorageDeviceKey();
      v14 = [NSString stringWithFormat:@"CONFIRM_DELETE_MULTIPLE_LOCAL_%@", v13];
      v15 = STStorageLocStr(v14);

      v10 = v15;
      v7 = v12;
    }

    v16 = userInterfaceIdiom == 0;
    v17 = [UIAlertController alertControllerWithTitle:v7 message:v10 preferredStyle:0];
    v18 = STStorageLocStr(@"OK");
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_467C;
    v32[3] = &unk_2CAC8;
    v33 = itemsCopy;
    v19 = [UIAlertAction actionWithTitle:v18 style:2 handler:v32];

    v20 = STStorageLocStr(@"CANCEL");
    v21 = [UIAlertAction actionWithTitle:v20 style:v16 handler:0];

    [v17 addAction:v19];
    [v17 addAction:v21];
    table = [(STStorageLocalStorageController *)self table];
    popoverPresentationController = [v17 popoverPresentationController];
    if (popoverPresentationController)
    {
      [table frame];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      [popoverPresentationController setSourceView:table];
      [popoverPresentationController setSourceRect:{v25 + v29 * 0.5, v27 + v31 * 0.5, 0.0, 0.0}];
      [popoverPresentationController setPermittedArrowDirections:0];
    }

    [(STStorageLocalStorageController *)self presentViewController:v17 animated:1 completion:0];
  }
}

@end