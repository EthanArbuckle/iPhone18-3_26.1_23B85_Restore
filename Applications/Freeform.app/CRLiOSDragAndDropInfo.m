@interface CRLiOSDragAndDropInfo
- (BOOL)canCreateItemsOfClass:(Class)a3;
- (id)createItemsOfClass:(Class)a3 completion:(id)a4;
- (id)description;
- (id)inProcessDraggingSources;
- (id)promisedUTIs;
- (unint64_t)dragOperationMask;
- (unint64_t)numberOfDraggingItems;
@end

@implementation CRLiOSDragAndDropInfo

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLDragAndDropInfo *)self platformDraggingInfo];
  v6 = [(CRLiOSDragAndDropInfo *)self promisedUTIs];
  v7 = [NSString stringWithFormat:@"%@<%p>: platform dragging info %@ promised UTIs %@", v4, self, v5, v6];

  return v7;
}

- (unint64_t)dragOperationMask
{
  v2 = [(CRLDragAndDropInfo *)self platformDraggingInfo];
  v3 = [v2 allowsMoveOperation];

  if (v3)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)numberOfDraggingItems
{
  v2 = [(CRLDragAndDropInfo *)self platformDraggingInfo];
  v3 = [v2 items];
  v4 = [v3 count];

  return v4;
}

- (id)inProcessDraggingSources
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLDragAndDropInfo *)self platformDraggingInfo];
  v5 = [v4 localDragSession];
  v6 = [v5 localContext];

  if (v6)
  {
    v7 = [(CRLDragAndDropInfo *)self platformDraggingInfo];
    v8 = [v7 localDragSession];
    v9 = [v8 localContext];
    [v3 addObject:v9];
  }

  return v3;
}

- (id)promisedUTIs
{
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CRLDragAndDropInfo *)self platformDraggingInfo];
  v5 = [v4 items];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) itemProvider];
        v11 = [v10 registeredTypeIdentifiers];
        [v3 addObjectsFromArray:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (BOOL)canCreateItemsOfClass:(Class)a3
{
  v4 = [(CRLDragAndDropInfo *)self itemSource];
  LOBYTE(a3) = [v4 canLoadItemsOfClass:a3];

  return a3;
}

- (id)createItemsOfClass:(Class)a3 completion:(id)a4
{
  v6 = a4;
  if ([(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___NSItemProviderReading])
  {
    v7 = [(CRLDragAndDropInfo *)self platformDraggingInfo];
    v8 = [v7 loadObjectsOfClass:a3 completion:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end