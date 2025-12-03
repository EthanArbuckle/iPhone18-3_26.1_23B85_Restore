@interface FRDragController
- (BOOL)isHeadlineDraggable:(id)draggable;
- (FRDragController)initWithDataSource:(id)source context:(id)context;
- (FRDragControllerDataSource)dataSource;
- (id)_collectionView:(id)view liftingPreviewParametersForItemAtIndexPath:(id)path;
- (id)dragItemsForFeed:(id)feed;
- (id)dragItemsForHeadline:(id)headline;
- (id)dragItemsForIndexPath:(id)path;
- (id)visiblePathForIndexPath:(id)path;
@end

@implementation FRDragController

- (FRDragController)initWithDataSource:(id)source context:(id)context
{
  sourceCopy = source;
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = FRDragController;
  v8 = [(FRDragController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeStrong(&v9->_context, context);
  }

  return v9;
}

- (id)_collectionView:(id)view liftingPreviewParametersForItemAtIndexPath:(id)path
{
  v4 = [(FRDragController *)self visiblePathForIndexPath:path];
  v5 = objc_alloc_init(UIDragPreviewParameters);
  [v5 setVisiblePath:v4];

  return v5;
}

- (id)dragItemsForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(FRDragController *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    dataSource2 = [(FRDragController *)self dataSource];
    v8 = [dataSource2 dragController:self headlineForCellAtIndexPath:pathCopy];
  }

  else
  {
    v8 = 0;
  }

  dataSource3 = [(FRDragController *)self dataSource];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    dataSource4 = [(FRDragController *)self dataSource];
    v12 = [dataSource4 dragController:self feedForCellAtIndexPath:pathCopy];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(FRDragController *)self dragItemsForHeadline:v8];
  v14 = [(FRDragController *)self dragItemsForFeed:v12];
  v15 = objc_opt_new();
  [v15 addObjectsFromArray:v13];
  [v15 addObjectsFromArray:v14];
  if ([v15 count])
  {
    v16 = [NSArray arrayWithArray:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)dragItemsForHeadline:(id)headline
{
  headlineCopy = headline;
  articleID = [headlineCopy articleID];
  if (articleID)
  {
    v6 = [(FRDragController *)self isHeadlineDraggable:headlineCopy];

    if (v6)
    {
      articleID2 = [headlineCopy articleID];
      title = [headlineCopy title];
      sourceName = [headlineCopy sourceName];
      v10 = [NSString stringWithFormat:@"%@ (%@)", title, sourceName];
      v11 = [NSURL nss_NewsURLForArticleID:articleID2 title:v10];

      v12 = [[NSItemProvider alloc] initWithObject:v11];
      title2 = [headlineCopy title];
      [v12 setSuggestedName:title2];

      v14 = [[UIDragItem alloc] initWithItemProvider:v12];
      articleID = [NSArray arrayWithObject:v14];
    }

    else
    {
      articleID = 0;
    }
  }

  return articleID;
}

- (id)dragItemsForFeed:(id)feed
{
  feedCopy = feed;
  identifier = [feedCopy identifier];

  if (identifier)
  {
    identifier2 = [feedCopy identifier];
    name = [feedCopy name];
    v7 = [NSURL fr_NewsURLForTagID:identifier2 title:name];

    v8 = [[NSItemProvider alloc] initWithObject:v7];
    v9 = [[UIDragItem alloc] initWithItemProvider:v8];
    v10 = [NSArray arrayWithObject:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isHeadlineDraggable:(id)draggable
{
  draggableCopy = draggable;
  if ([draggableCopy isPaid] && (-[FRDragController context](self, "context"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    context = [(FRDragController *)self context];
    cloudContext = [context cloudContext];
    purchaseController = [cloudContext purchaseController];
    sourceChannelID = [draggableCopy sourceChannelID];
    purchasedTagIDs = [purchaseController purchasedTagIDs];
    v11 = [purchasedTagIDs containsObject:sourceChannelID];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)visiblePathForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(FRDragController *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) != 0 && (-[FRDragController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), [v7 dragController:self contentRectOfCellAtIndexPath:pathCopy], v9 = v8, v11 = v10, v13 = v12, v15 = v14, v7, v19.origin.x = v9, v19.origin.y = v11, v19.size.width = v13, v19.size.height = v15, !CGRectIsEmpty(v19)))
  {
    v16 = [UIBezierPath bezierPathWithRect:v9, v11, v13, v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (FRDragControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end