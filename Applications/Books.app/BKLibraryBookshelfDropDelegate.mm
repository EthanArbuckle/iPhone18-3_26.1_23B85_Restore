@interface BKLibraryBookshelfDropDelegate
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)collectionViewIsEditable:(id)editable;
- (BOOL)collectionViewIsReorderable:(id)reorderable;
- (id)collectionView:(id)view dropPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionViewCollectionID:(id)d;
- (void)collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)collectionView:(id)view dropSessionDidEnter:(id)enter;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
@end

@implementation BKLibraryBookshelfDropDelegate

- (id)collectionViewCollectionID:(id)d
{
  dataSource = [d dataSource];
  v4 = BUProtocolCast();

  dataSourceID = [v4 dataSourceID];

  return dataSourceID;
}

- (BOOL)collectionViewIsEditable:(id)editable
{
  dataSource = [editable dataSource];
  v4 = BUProtocolCast();

  LOBYTE(dataSource) = [v4 isEditable];
  return dataSource;
}

- (BOOL)collectionViewIsReorderable:(id)reorderable
{
  reorderableCopy = reorderable;
  dataSource = [reorderableCopy dataSource];
  v5 = [NSIndexPath indexPathForItem:0 inSection:0];
  v6 = [dataSource collectionView:reorderableCopy canMoveItemAtIndexPath:v5];

  return v6;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_100027430;
  v70 = sub_100027650;
  coordinatorCopy = coordinator;
  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  if (!v67[5])
  {
    v6 = [NSIndexPath indexPathForItem:0 inSection:0];
    v7 = v67[5];
    v67[5] = v6;
  }

  proposal = [coordinatorCopy proposal];
  v9 = [proposal operation] == 3;

  if (v9)
  {
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100151ADC;
    v62[3] = &unk_100A03760;
    v63 = viewCopy;
    v10 = coordinatorCopy;
    v64 = v10;
    v65 = &v66;
    [v63 performBatchUpdates:v62 completion:&stru_100A086F8];
    items = [v10 items];
    firstObject = [items firstObject];

    dragItem = [firstObject dragItem];
    v14 = [v10 dropItem:dragItem toItemAtIndexPath:v67[5]];

    window = v63;
LABEL_27:

    goto LABEL_28;
  }

  proposal2 = [coordinatorCopy proposal];
  v17 = [proposal2 operation] == 2;

  if (v17)
  {
    session = [coordinatorCopy session];
    localDragSession = [session localDragSession];

    if (localDragSession)
    {
      dataSource = [viewCopy dataSource];
      v55 = BUProtocolCast();

      v21 = +[NSMutableArray array];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      items2 = [coordinatorCopy items];
      obj = [items2 reverseObjectEnumerator];

      v23 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
      if (v23)
      {
        v24 = *v59;
        do
        {
          v25 = 0;
          do
          {
            if (*v59 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v58 + 1) + 8 * v25);
            objc_opt_class();
            dragItem2 = [v26 dragItem];
            localObject = [dragItem2 localObject];
            v29 = BUDynamicCast();

            objc_opt_class();
            dragItem3 = [v26 dragItem];
            localObject2 = [dragItem3 localObject];
            v32 = BUDynamicCast();

            objc_opt_class();
            dragItem4 = [v26 dragItem];
            localObject3 = [dragItem4 localObject];
            v35 = BUDynamicCast();

            assetID = [v35 assetID];
            v37 = [assetID length];

            if (v37)
            {
              v38 = +[BKLibraryManager defaultManager];
              assetID2 = [v35 assetID];
              v40 = [v38 libraryAssetOnMainQueueWithAssetID:assetID2];

              v29 = v40;
            }

            if (v29)
            {
              [v21 addObject:v29];
            }

            else if (v32)
            {
              storeID = [v32 storeID];
              [v55 collectionView:viewCopy addBookStoreItem:storeID];
            }

            v25 = v25 + 1;
          }

          while (v23 != v25);
          v23 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
        }

        while (v23);
      }

      [v55 collectionView:viewCopy addAssets:v21];
      window = v55;
      goto LABEL_27;
    }

    session2 = [coordinatorCopy session];
    v43 = sub_1001199C0();
    if (sub_10011AD6C(session2, v43))
    {

LABEL_24:
      window = [viewCopy window];
      v46 = +[BKAppDelegate sceneManager];
      v47 = [v46 sceneControllerForWindow:window];

      newShowURLTransaction = [v47 newShowURLTransaction];
      session3 = [coordinatorCopy session];
      v50 = [(BKLibraryBookshelfDropDelegate *)self collectionViewCollectionID:viewCopy];
      sub_100119D68(session3, v50, newShowURLTransaction);

      session4 = [coordinatorCopy session];
      v52 = sub_10011ABBC(session4);

      if (v52)
      {
        session5 = [coordinatorCopy session];
        sub_100119C44(session5);
      }

      goto LABEL_27;
    }

    session6 = [coordinatorCopy session];
    v45 = sub_10011AE00(session6);

    if (v45)
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  _Block_object_dispose(&v66, 8);
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  viewCopy = view;
  sessionCopy = session;
  localDragSession = [sessionCopy localDragSession];

  if (localDragSession)
  {
    objc_opt_class();
    [sessionCopy localDragSession];
    v9 = v43 = viewCopy;
    localContext = [v9 localContext];
    v11 = BUDynamicCast();

    viewCopy = v43;
    v44 = [(BKLibraryBookshelfDropDelegate *)self collectionViewCollectionID:v43];
    if (![v11 isEqualToString:?] || (objc_msgSend(v44, "isEqualToString:", kBKCollectionDefaultIDFinished) & 1) == 0)
    {
      if ([(BKLibraryBookshelfDropDelegate *)self collectionViewIsEditable:v43])
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        items = [sessionCopy items];
        v13 = [items countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v13)
        {
          v14 = v13;
          v41 = v11;
          v42 = sessionCopy;
          v15 = *v50;
          while (2)
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v50 != v15)
              {
                objc_enumerationMutation(items);
              }

              v17 = *(*(&v49 + 1) + 8 * i);
              objc_opt_class();
              localObject = [v17 localObject];
              v19 = BUDynamicCast();

              objc_opt_class();
              localObject2 = [v17 localObject];
              v21 = BUDynamicCast();

              objc_opt_class();
              localObject3 = [v17 localObject];
              v23 = BUDynamicCast();

              assetID = [v23 assetID];
              v25 = [assetID length];

              if (v25)
              {
                v26 = +[BKLibraryManager defaultManager];
                assetID2 = [v23 assetID];
                v28 = [v26 libraryAssetOnMainQueueWithAssetID:assetID2];

                v19 = v28;
              }

              if (v19 | v21)
              {
                v29 = 1;
                goto LABEL_29;
              }
            }

            v14 = [items countByEnumeratingWithState:&v49 objects:v54 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

LABEL_15:
          v29 = 0;
LABEL_29:
          sessionCopy = v42;
          viewCopy = v43;
          v11 = v41;
          goto LABEL_32;
        }

        v29 = 0;
        goto LABEL_32;
      }

      if ([(BKLibraryBookshelfDropDelegate *)self collectionViewIsReorderable:v43])
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        items = [sessionCopy items];
        v30 = [items countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v30)
        {
          v31 = v30;
          v41 = v11;
          v42 = sessionCopy;
          v32 = *v46;
LABEL_20:
          v33 = 0;
          while (1)
          {
            if (*v46 != v32)
            {
              objc_enumerationMutation(items);
            }

            v34 = *(*(&v45 + 1) + 8 * v33);
            objc_opt_class();
            localObject4 = [v34 localObject];
            v36 = BUDynamicCast();

            collectionMembers = [v36 collectionMembers];
            v38 = [collectionMembers valueForKey:@"collectionID"];
            v39 = [v38 containsObject:v44];

            if (!v39)
            {
              goto LABEL_15;
            }

            if (v31 == ++v33)
            {
              v31 = [items countByEnumeratingWithState:&v45 objects:v53 count:16];
              v29 = 1;
              if (v31)
              {
                goto LABEL_20;
              }

              goto LABEL_29;
            }
          }
        }

        v29 = 1;
LABEL_32:

        goto LABEL_33;
      }
    }

    v29 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v11 = sub_100119840();
  v29 = [sessionCopy hasItemsConformingToTypeIdentifiers:v11];
LABEL_34:

  return v29;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  viewCopy = view;
  updateCopy = update;
  localDragSession = [updateCopy localDragSession];

  if (!localDragSession)
  {
    v34 = sub_1001199C0();
    if (sub_10011AD6C(updateCopy, v34))
    {
    }

    else
    {
      v35 = sub_10011AE00(updateCopy);

      if ((v35 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_24:
    v33 = 0;
    v31 = 0;
    v32 = 2;
    goto LABEL_50;
  }

  selfCopy = self;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  items = [updateCopy items];
  v11 = [items countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v72;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v72 != v13)
        {
          objc_enumerationMutation(items);
        }

        v15 = *(*(&v71 + 1) + 8 * i);
        objc_opt_class();
        localObject = [v15 localObject];
        v17 = BUDynamicCast();

        if (v17)
        {

          goto LABEL_24;
        }
      }

      v12 = [items countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = selfCopy;
  if (![(BKLibraryBookshelfDropDelegate *)selfCopy collectionViewIsReorderable:viewCopy])
  {
LABEL_26:
    if ([(BKLibraryBookshelfDropDelegate *)v18 collectionViewIsEditable:viewCopy])
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = [updateCopy items];
      v36 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (v36)
      {
        v37 = v36;
        v57 = updateCopy;
        v61 = viewCopy;
        v38 = *v64;
        v59 = kBKCollectionDefaultIDFinished;
        v32 = 2;
        while (2)
        {
          for (j = 0; j != v37; j = j + 1)
          {
            if (*v64 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v40 = *(*(&v63 + 1) + 8 * j);
            objc_opt_class();
            localObject2 = [v40 localObject];
            v42 = BUDynamicCast();

            objc_opt_class();
            localObject3 = [v40 localObject];
            v44 = BUDynamicCast();

            assetID = [v44 assetID];
            v46 = [assetID length];

            if (v46)
            {
              v47 = +[BKLibraryManager defaultManager];
              assetID2 = [v44 assetID];
              v49 = [v47 libraryAssetOnMainQueueWithAssetID:assetID2];

              v42 = v49;
            }

            if (v42)
            {
              v50 = [(BKLibraryBookshelfDropDelegate *)v18 collectionViewCollectionID:v61];
              if ([v50 isEqualToString:v59])
              {
                if ([v42 isFinished])
                {
                  v32 = 1;
                }

                else
                {
                  v32 = 2;
                }

LABEL_47:

                goto LABEL_48;
              }

              collectionMembers = [v42 collectionMembers];
              v52 = [collectionMembers valueForKey:@"collectionID"];
              v53 = [v52 containsObject:v50];

              if (!v53)
              {
                goto LABEL_47;
              }

              v18 = selfCopy;
            }
          }

          v37 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
          if (v37)
          {
            continue;
          }

          break;
        }

        v32 = 1;
LABEL_48:
        viewCopy = v61;
        updateCopy = v57;
      }

      else
      {
        v32 = 1;
      }

      v33 = 0;
      v31 = 0;
      goto LABEL_50;
    }

LABEL_41:
    v33 = 0;
    v31 = 0;
    v32 = 1;
    goto LABEL_50;
  }

  v19 = [(BKLibraryBookshelfDropDelegate *)selfCopy collectionViewCollectionID:viewCopy];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  items2 = [updateCopy items];
  v21 = [items2 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v21)
  {
    v22 = v21;
    v56 = updateCopy;
    v60 = viewCopy;
    v23 = *v68;
    while (2)
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v68 != v23)
        {
          objc_enumerationMutation(items2);
        }

        v25 = *(*(&v67 + 1) + 8 * k);
        objc_opt_class();
        localObject4 = [v25 localObject];
        v27 = BUDynamicCast();

        collectionMembers2 = [v27 collectionMembers];
        v29 = [collectionMembers2 valueForKey:@"collectionID"];
        v30 = [v29 containsObject:v19];

        if (!v30)
        {

          viewCopy = v60;
          v18 = selfCopy;
          updateCopy = v56;
          goto LABEL_26;
        }
      }

      v22 = [items2 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

    v31 = 1;
    v32 = 3;
    v33 = 1;
    viewCopy = v60;
    updateCopy = v56;
  }

  else
  {

    v33 = 1;
    v32 = 3;
    v31 = 1;
  }

LABEL_50:
  v54 = [[UICollectionViewDropProposal alloc] initWithDropOperation:v32 intent:v31];
  [v54 setPrefersFullSizePreview:v33];

  return v54;
}

- (void)collectionView:(id)view dropSessionDidEnter:(id)enter
{
  viewCopy = view;
  enterCopy = enter;
  if (![(BKLibraryBookshelfDropDelegate *)self inDropSession])
  {
    [(BKLibraryBookshelfDropDelegate *)self setInDropSession:1];
    delegate = [viewCopy delegate];
    v8 = BUProtocolCast();

    [v8 dragAndDropSessionDidStart];
  }

  items = [enterCopy items];
  if ([items count] == 1)
  {
    dataSource = [viewCopy dataSource];
    v11 = BUProtocolCast();

    objc_opt_class();
    firstObject = [items firstObject];
    localObject = [firstObject localObject];
    v14 = BUDynamicCast();

    v15 = [v11 indexPathForRepresentedObject:v14];
    indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
    firstObject2 = [indexPathsForSelectedItems firstObject];

    if (v15 == firstObject2)
    {
      [viewCopy setAllowsSelection:0];
      [(BKLibraryBookshelfDropDelegate *)self setShouldRestoreSelectionForSingleItemReordering:1];
    }
  }
}

- (void)collectionView:(id)view dropSessionDidEnd:(id)end
{
  viewCopy = view;
  endCopy = end;
  delegate = [viewCopy delegate];
  v8 = BUProtocolCast();

  [v8 dragAndDropSessionDidEnd];
  [(BKLibraryBookshelfDropDelegate *)self setInDropSession:0];
  if ([(BKLibraryBookshelfDropDelegate *)self shouldRestoreSelectionForSingleItemReordering])
  {
    [viewCopy setAllowsSelection:1];
    [viewCopy setAllowsMultipleSelection:1];
    dataSource = [viewCopy dataSource];
    v10 = BUProtocolCast();

    objc_opt_class();
    items = [endCopy items];
    firstObject = [items firstObject];
    localObject = [firstObject localObject];
    v14 = BUDynamicCast();

    v15 = [v10 indexPathForRepresentedObject:v14];
    [viewCopy selectItemAtIndexPath:v15 animated:0 scrollPosition:0];
    [(BKLibraryBookshelfDropDelegate *)self setShouldRestoreSelectionForSingleItemReordering:0];
  }
}

- (id)collectionView:(id)view dropPreviewParametersForItemAtIndexPath:(id)path
{
  v4 = [view cellForItemAtIndexPath:path];
  v5 = BUProtocolCast();

  v6 = [v5 dragPreviewParametersForDrop:1];

  return v6;
}

@end