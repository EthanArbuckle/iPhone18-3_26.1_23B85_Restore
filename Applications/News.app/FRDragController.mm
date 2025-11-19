@interface FRDragController
- (BOOL)isHeadlineDraggable:(id)a3;
- (FRDragController)initWithDataSource:(id)a3 context:(id)a4;
- (FRDragControllerDataSource)dataSource;
- (id)_collectionView:(id)a3 liftingPreviewParametersForItemAtIndexPath:(id)a4;
- (id)dragItemsForFeed:(id)a3;
- (id)dragItemsForHeadline:(id)a3;
- (id)dragItemsForIndexPath:(id)a3;
- (id)visiblePathForIndexPath:(id)a3;
@end

@implementation FRDragController

- (FRDragController)initWithDataSource:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FRDragController;
  v8 = [(FRDragController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    objc_storeStrong(&v9->_context, a4);
  }

  return v9;
}

- (id)_collectionView:(id)a3 liftingPreviewParametersForItemAtIndexPath:(id)a4
{
  v4 = [(FRDragController *)self visiblePathForIndexPath:a4];
  v5 = objc_alloc_init(UIDragPreviewParameters);
  [v5 setVisiblePath:v4];

  return v5;
}

- (id)dragItemsForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(FRDragController *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(FRDragController *)self dataSource];
    v8 = [v7 dragController:self headlineForCellAtIndexPath:v4];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(FRDragController *)self dataSource];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(FRDragController *)self dataSource];
    v12 = [v11 dragController:self feedForCellAtIndexPath:v4];
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

- (id)dragItemsForHeadline:(id)a3
{
  v4 = a3;
  v5 = [v4 articleID];
  if (v5)
  {
    v6 = [(FRDragController *)self isHeadlineDraggable:v4];

    if (v6)
    {
      v7 = [v4 articleID];
      v8 = [v4 title];
      v9 = [v4 sourceName];
      v10 = [NSString stringWithFormat:@"%@ (%@)", v8, v9];
      v11 = [NSURL nss_NewsURLForArticleID:v7 title:v10];

      v12 = [[NSItemProvider alloc] initWithObject:v11];
      v13 = [v4 title];
      [v12 setSuggestedName:v13];

      v14 = [[UIDragItem alloc] initWithItemProvider:v12];
      v5 = [NSArray arrayWithObject:v14];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)dragItemsForFeed:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = [v3 identifier];
    v6 = [v3 name];
    v7 = [NSURL fr_NewsURLForTagID:v5 title:v6];

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

- (BOOL)isHeadlineDraggable:(id)a3
{
  v4 = a3;
  if ([v4 isPaid] && (-[FRDragController context](self, "context"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(FRDragController *)self context];
    v7 = [v6 cloudContext];
    v8 = [v7 purchaseController];
    v9 = [v4 sourceChannelID];
    v10 = [v8 purchasedTagIDs];
    v11 = [v10 containsObject:v9];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)visiblePathForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(FRDragController *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) != 0 && (-[FRDragController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), [v7 dragController:self contentRectOfCellAtIndexPath:v4], v9 = v8, v11 = v10, v13 = v12, v15 = v14, v7, v19.origin.x = v9, v19.origin.y = v11, v19.size.width = v13, v19.size.height = v15, !CGRectIsEmpty(v19)))
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