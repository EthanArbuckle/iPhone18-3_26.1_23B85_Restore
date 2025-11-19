@interface BKLibraryBookshelfDropDelegate
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)collectionViewIsEditable:(id)a3;
- (BOOL)collectionViewIsReorderable:(id)a3;
- (id)collectionView:(id)a3 dropPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionViewCollectionID:(id)a3;
- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
@end

@implementation BKLibraryBookshelfDropDelegate

- (id)collectionViewCollectionID:(id)a3
{
  v3 = [a3 dataSource];
  v4 = BUProtocolCast();

  v5 = [v4 dataSourceID];

  return v5;
}

- (BOOL)collectionViewIsEditable:(id)a3
{
  v3 = [a3 dataSource];
  v4 = BUProtocolCast();

  LOBYTE(v3) = [v4 isEditable];
  return v3;
}

- (BOOL)collectionViewIsReorderable:(id)a3
{
  v3 = a3;
  v4 = [v3 dataSource];
  v5 = [NSIndexPath indexPathForItem:0 inSection:0];
  v6 = [v4 collectionView:v3 canMoveItemAtIndexPath:v5];

  return v6;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v56 = a3;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_100027430;
  v70 = sub_100027650;
  v54 = a4;
  v71 = [v54 destinationIndexPath];
  if (!v67[5])
  {
    v6 = [NSIndexPath indexPathForItem:0 inSection:0];
    v7 = v67[5];
    v67[5] = v6;
  }

  v8 = [v54 proposal];
  v9 = [v8 operation] == 3;

  if (v9)
  {
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100151ADC;
    v62[3] = &unk_100A03760;
    v63 = v56;
    v10 = v54;
    v64 = v10;
    v65 = &v66;
    [v63 performBatchUpdates:v62 completion:&stru_100A086F8];
    v11 = [v10 items];
    v12 = [v11 firstObject];

    v13 = [v12 dragItem];
    v14 = [v10 dropItem:v13 toItemAtIndexPath:v67[5]];

    v15 = v63;
LABEL_27:

    goto LABEL_28;
  }

  v16 = [v54 proposal];
  v17 = [v16 operation] == 2;

  if (v17)
  {
    v18 = [v54 session];
    v19 = [v18 localDragSession];

    if (v19)
    {
      v20 = [v56 dataSource];
      v55 = BUProtocolCast();

      v21 = +[NSMutableArray array];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v22 = [v54 items];
      obj = [v22 reverseObjectEnumerator];

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
            v27 = [v26 dragItem];
            v28 = [v27 localObject];
            v29 = BUDynamicCast();

            objc_opt_class();
            v30 = [v26 dragItem];
            v31 = [v30 localObject];
            v32 = BUDynamicCast();

            objc_opt_class();
            v33 = [v26 dragItem];
            v34 = [v33 localObject];
            v35 = BUDynamicCast();

            v36 = [v35 assetID];
            v37 = [v36 length];

            if (v37)
            {
              v38 = +[BKLibraryManager defaultManager];
              v39 = [v35 assetID];
              v40 = [v38 libraryAssetOnMainQueueWithAssetID:v39];

              v29 = v40;
            }

            if (v29)
            {
              [v21 addObject:v29];
            }

            else if (v32)
            {
              v41 = [v32 storeID];
              [v55 collectionView:v56 addBookStoreItem:v41];
            }

            v25 = v25 + 1;
          }

          while (v23 != v25);
          v23 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
        }

        while (v23);
      }

      [v55 collectionView:v56 addAssets:v21];
      v15 = v55;
      goto LABEL_27;
    }

    v42 = [v54 session];
    v43 = sub_1001199C0();
    if (sub_10011AD6C(v42, v43))
    {

LABEL_24:
      v15 = [v56 window];
      v46 = +[BKAppDelegate sceneManager];
      v47 = [v46 sceneControllerForWindow:v15];

      v48 = [v47 newShowURLTransaction];
      v49 = [v54 session];
      v50 = [(BKLibraryBookshelfDropDelegate *)self collectionViewCollectionID:v56];
      sub_100119D68(v49, v50, v48);

      v51 = [v54 session];
      v52 = sub_10011ABBC(v51);

      if (v52)
      {
        v53 = [v54 session];
        sub_100119C44(v53);
      }

      goto LABEL_27;
    }

    v44 = [v54 session];
    v45 = sub_10011AE00(v44);

    if (v45)
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  _Block_object_dispose(&v66, 8);
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 localDragSession];

  if (v8)
  {
    objc_opt_class();
    [v7 localDragSession];
    v9 = v43 = v6;
    v10 = [v9 localContext];
    v11 = BUDynamicCast();

    v6 = v43;
    v44 = [(BKLibraryBookshelfDropDelegate *)self collectionViewCollectionID:v43];
    if (![v11 isEqualToString:?] || (objc_msgSend(v44, "isEqualToString:", kBKCollectionDefaultIDFinished) & 1) == 0)
    {
      if ([(BKLibraryBookshelfDropDelegate *)self collectionViewIsEditable:v43])
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v12 = [v7 items];
        v13 = [v12 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v13)
        {
          v14 = v13;
          v41 = v11;
          v42 = v7;
          v15 = *v50;
          while (2)
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v50 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v49 + 1) + 8 * i);
              objc_opt_class();
              v18 = [v17 localObject];
              v19 = BUDynamicCast();

              objc_opt_class();
              v20 = [v17 localObject];
              v21 = BUDynamicCast();

              objc_opt_class();
              v22 = [v17 localObject];
              v23 = BUDynamicCast();

              v24 = [v23 assetID];
              v25 = [v24 length];

              if (v25)
              {
                v26 = +[BKLibraryManager defaultManager];
                v27 = [v23 assetID];
                v28 = [v26 libraryAssetOnMainQueueWithAssetID:v27];

                v19 = v28;
              }

              if (v19 | v21)
              {
                v29 = 1;
                goto LABEL_29;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v49 objects:v54 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

LABEL_15:
          v29 = 0;
LABEL_29:
          v7 = v42;
          v6 = v43;
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
        v12 = [v7 items];
        v30 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v30)
        {
          v31 = v30;
          v41 = v11;
          v42 = v7;
          v32 = *v46;
LABEL_20:
          v33 = 0;
          while (1)
          {
            if (*v46 != v32)
            {
              objc_enumerationMutation(v12);
            }

            v34 = *(*(&v45 + 1) + 8 * v33);
            objc_opt_class();
            v35 = [v34 localObject];
            v36 = BUDynamicCast();

            v37 = [v36 collectionMembers];
            v38 = [v37 valueForKey:@"collectionID"];
            v39 = [v38 containsObject:v44];

            if (!v39)
            {
              goto LABEL_15;
            }

            if (v31 == ++v33)
            {
              v31 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
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
  v29 = [v7 hasItemsConformingToTypeIdentifiers:v11];
LABEL_34:

  return v29;
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 localDragSession];

  if (!v9)
  {
    v34 = sub_1001199C0();
    if (sub_10011AD6C(v8, v34))
    {
    }

    else
    {
      v35 = sub_10011AE00(v8);

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

  v62 = self;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v10 = [v8 items];
  v11 = [v10 countByEnumeratingWithState:&v71 objects:v77 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v71 + 1) + 8 * i);
        objc_opt_class();
        v16 = [v15 localObject];
        v17 = BUDynamicCast();

        if (v17)
        {

          goto LABEL_24;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = v62;
  if (![(BKLibraryBookshelfDropDelegate *)v62 collectionViewIsReorderable:v7])
  {
LABEL_26:
    if ([(BKLibraryBookshelfDropDelegate *)v18 collectionViewIsEditable:v7])
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = [v8 items];
      v36 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (v36)
      {
        v37 = v36;
        v57 = v8;
        v61 = v7;
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
            v41 = [v40 localObject];
            v42 = BUDynamicCast();

            objc_opt_class();
            v43 = [v40 localObject];
            v44 = BUDynamicCast();

            v45 = [v44 assetID];
            v46 = [v45 length];

            if (v46)
            {
              v47 = +[BKLibraryManager defaultManager];
              v48 = [v44 assetID];
              v49 = [v47 libraryAssetOnMainQueueWithAssetID:v48];

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

              v51 = [v42 collectionMembers];
              v52 = [v51 valueForKey:@"collectionID"];
              v53 = [v52 containsObject:v50];

              if (!v53)
              {
                goto LABEL_47;
              }

              v18 = v62;
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
        v7 = v61;
        v8 = v57;
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

  v19 = [(BKLibraryBookshelfDropDelegate *)v62 collectionViewCollectionID:v7];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v20 = [v8 items];
  v21 = [v20 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v21)
  {
    v22 = v21;
    v56 = v8;
    v60 = v7;
    v23 = *v68;
    while (2)
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v68 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v67 + 1) + 8 * k);
        objc_opt_class();
        v26 = [v25 localObject];
        v27 = BUDynamicCast();

        v28 = [v27 collectionMembers];
        v29 = [v28 valueForKey:@"collectionID"];
        v30 = [v29 containsObject:v19];

        if (!v30)
        {

          v7 = v60;
          v18 = v62;
          v8 = v56;
          goto LABEL_26;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

    v31 = 1;
    v32 = 3;
    v33 = 1;
    v7 = v60;
    v8 = v56;
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

- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (![(BKLibraryBookshelfDropDelegate *)self inDropSession])
  {
    [(BKLibraryBookshelfDropDelegate *)self setInDropSession:1];
    v7 = [v18 delegate];
    v8 = BUProtocolCast();

    [v8 dragAndDropSessionDidStart];
  }

  v9 = [v6 items];
  if ([v9 count] == 1)
  {
    v10 = [v18 dataSource];
    v11 = BUProtocolCast();

    objc_opt_class();
    v12 = [v9 firstObject];
    v13 = [v12 localObject];
    v14 = BUDynamicCast();

    v15 = [v11 indexPathForRepresentedObject:v14];
    v16 = [v18 indexPathsForSelectedItems];
    v17 = [v16 firstObject];

    if (v15 == v17)
    {
      [v18 setAllowsSelection:0];
      [(BKLibraryBookshelfDropDelegate *)self setShouldRestoreSelectionForSingleItemReordering:1];
    }
  }
}

- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v16 delegate];
  v8 = BUProtocolCast();

  [v8 dragAndDropSessionDidEnd];
  [(BKLibraryBookshelfDropDelegate *)self setInDropSession:0];
  if ([(BKLibraryBookshelfDropDelegate *)self shouldRestoreSelectionForSingleItemReordering])
  {
    [v16 setAllowsSelection:1];
    [v16 setAllowsMultipleSelection:1];
    v9 = [v16 dataSource];
    v10 = BUProtocolCast();

    objc_opt_class();
    v11 = [v6 items];
    v12 = [v11 firstObject];
    v13 = [v12 localObject];
    v14 = BUDynamicCast();

    v15 = [v10 indexPathForRepresentedObject:v14];
    [v16 selectItemAtIndexPath:v15 animated:0 scrollPosition:0];
    [(BKLibraryBookshelfDropDelegate *)self setShouldRestoreSelectionForSingleItemReordering:0];
  }
}

- (id)collectionView:(id)a3 dropPreviewParametersForItemAtIndexPath:(id)a4
{
  v4 = [a3 cellForItemAtIndexPath:a4];
  v5 = BUProtocolCast();

  v6 = [v5 dragPreviewParametersForDrop:1];

  return v6;
}

@end