@interface BKLibraryBookshelfDragDelegate
+ (void)initialize;
- (BKLibraryBookshelfDragDelegate)initWithBookDataSource:(id)a3;
- (BOOL)collectionViewIsReorderable:(id)a3;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCollectionID:(id)a3;
- (id)dragItemAtIndexPath:(id)a3;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
@end

@implementation BKLibraryBookshelfDragDelegate

+ (void)initialize
{
  if (objc_opt_class() == a1 && qword_100AF77D0 != -1)
  {
    sub_100792BCC();
  }
}

- (BKLibraryBookshelfDragDelegate)initWithBookDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfDragDelegate;
  v6 = [(BKLibraryBookshelfDragDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bookDataSource, a3);
  }

  return v7;
}

- (id)collectionViewCollectionID:(id)a3
{
  v3 = [a3 dataSource];
  v4 = BUProtocolCast();

  v5 = [v4 dataSourceID];

  return v5;
}

- (BOOL)collectionViewIsReorderable:(id)a3
{
  v3 = a3;
  v4 = [v3 dataSource];
  v5 = [NSIndexPath indexPathForItem:0 inSection:0];
  v6 = [v4 collectionView:v3 canMoveItemAtIndexPath:v5];

  return v6;
}

- (id)dragItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfDragDelegate *)self bookDataSource];
  v6 = [v5 representedObjectForIndexPath:v4];

  v7 = objc_alloc_init(NSItemProvider);
  v8 = +[BKLibraryManager defaultManager];
  v9 = [v8 dragInfoFromLibraryAsset:v6];

  if ([v6 isOwned])
  {
    v10 = [v6 isPreorderBook] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  [BCDragRepresentationFactory registerRepresentationsFromAssetDragInfo:v9 withProvider:v7 canDragToNewCanvas:v10];
  v11 = [[UIDragItem alloc] initWithItemProvider:v7];
  [v11 setLocalObject:v6];

  return v11;
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (([v7 hasActiveDrop] & 1) != 0 || (objc_msgSend(v7, "hasActiveDrag") & 1) != 0 || (byte_100AF77C0 = 1, -[BKLibraryBookshelfDragDelegate dragItemAtIndexPath:](self, "dragItemAtIndexPath:", v8), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = 0;
  }

  else
  {
    v10 = v9;
    v13 = v9;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
  }

  return v11;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v9 = a4;
  v10 = a5;
  if ([a3 isEditing])
  {
    v11 = 0;
  }

  else
  {
    v28 = v10;
    v12 = [(BKLibraryBookshelfDragDelegate *)self dragItemAtIndexPath:v10];
    objc_opt_class();
    v27 = v12;
    v13 = [v12 localObject];
    v14 = BUDynamicCast();

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = v9;
    v15 = [v9 items];
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          v21 = [v20 localObject];
          v22 = BUDynamicCast();

          v23 = [v22 assetID];
          v24 = [v14 assetID];
          v25 = [v23 isEqualToString:v24];

          if (v25)
          {

            v11 = 0;
            goto LABEL_14;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v14 = v27;
    if (v27)
    {
      v34 = v27;
      v11 = [NSArray arrayWithObjects:&v34 count:1];
LABEL_14:
      v10 = v28;
      v9 = v29;
    }

    else
    {
      v11 = 0;
      v10 = v28;
      v9 = v29;
    }
  }

  return v11;
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v4 = [a3 cellForItemAtIndexPath:a4];
  v5 = BUProtocolCast();

  [v5 prepareForDragPreview];
  v6 = [v5 dragPreviewParametersForDrop:0];

  return v6;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 delegate];
  v10 = BUProtocolCast();

  [v10 dragAndDropSessionDidStart];
  v9 = [(BKLibraryBookshelfDragDelegate *)self collectionViewCollectionID:v7];

  [v6 setLocalContext:v9];
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BKDragAndDropMonitor sharedInstance];
  [v7 processWithDragSession:v5];

  v8 = [v6 delegate];

  v9 = BUProtocolCast();

  [v9 dragAndDropSessionDidEnd];
}

@end