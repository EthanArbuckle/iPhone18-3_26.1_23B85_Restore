@interface BKLibraryBookshelfDragDelegate
+ (void)initialize;
- (BKLibraryBookshelfDragDelegate)initWithBookDataSource:(id)source;
- (BOOL)collectionViewIsReorderable:(id)reorderable;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionViewCollectionID:(id)d;
- (id)dragItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
@end

@implementation BKLibraryBookshelfDragDelegate

+ (void)initialize
{
  if (objc_opt_class() == self && qword_100AF77D0 != -1)
  {
    sub_100792BCC();
  }
}

- (BKLibraryBookshelfDragDelegate)initWithBookDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfDragDelegate;
  v6 = [(BKLibraryBookshelfDragDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bookDataSource, source);
  }

  return v7;
}

- (id)collectionViewCollectionID:(id)d
{
  dataSource = [d dataSource];
  v4 = BUProtocolCast();

  dataSourceID = [v4 dataSourceID];

  return dataSourceID;
}

- (BOOL)collectionViewIsReorderable:(id)reorderable
{
  reorderableCopy = reorderable;
  dataSource = [reorderableCopy dataSource];
  v5 = [NSIndexPath indexPathForItem:0 inSection:0];
  v6 = [dataSource collectionView:reorderableCopy canMoveItemAtIndexPath:v5];

  return v6;
}

- (id)dragItemAtIndexPath:(id)path
{
  pathCopy = path;
  bookDataSource = [(BKLibraryBookshelfDragDelegate *)self bookDataSource];
  v6 = [bookDataSource representedObjectForIndexPath:pathCopy];

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

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([viewCopy hasActiveDrop] & 1) != 0 || (objc_msgSend(viewCopy, "hasActiveDrag") & 1) != 0 || (byte_100AF77C0 = 1, -[BKLibraryBookshelfDragDelegate dragItemAtIndexPath:](self, "dragItemAtIndexPath:", pathCopy), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
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

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  sessionCopy = session;
  pathCopy = path;
  if ([view isEditing])
  {
    v11 = 0;
  }

  else
  {
    v28 = pathCopy;
    v12 = [(BKLibraryBookshelfDragDelegate *)self dragItemAtIndexPath:pathCopy];
    objc_opt_class();
    v27 = v12;
    localObject = [v12 localObject];
    v14 = BUDynamicCast();

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = sessionCopy;
    items = [sessionCopy items];
    v16 = [items countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            objc_enumerationMutation(items);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          localObject2 = [v20 localObject];
          v22 = BUDynamicCast();

          assetID = [v22 assetID];
          assetID2 = [v14 assetID];
          v25 = [assetID isEqualToString:assetID2];

          if (v25)
          {

            v11 = 0;
            goto LABEL_14;
          }
        }

        v17 = [items countByEnumeratingWithState:&v30 objects:v35 count:16];
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
      pathCopy = v28;
      sessionCopy = v29;
    }

    else
    {
      v11 = 0;
      pathCopy = v28;
      sessionCopy = v29;
    }
  }

  return v11;
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v4 = [view cellForItemAtIndexPath:path];
  v5 = BUProtocolCast();

  [v5 prepareForDragPreview];
  v6 = [v5 dragPreviewParametersForDrop:0];

  return v6;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  beginCopy = begin;
  viewCopy = view;
  delegate = [viewCopy delegate];
  v10 = BUProtocolCast();

  [v10 dragAndDropSessionDidStart];
  v9 = [(BKLibraryBookshelfDragDelegate *)self collectionViewCollectionID:viewCopy];

  [beginCopy setLocalContext:v9];
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  endCopy = end;
  viewCopy = view;
  v7 = +[BKDragAndDropMonitor sharedInstance];
  [v7 processWithDragSession:endCopy];

  delegate = [viewCopy delegate];

  v9 = BUProtocolCast();

  [v9 dragAndDropSessionDidEnd];
}

@end