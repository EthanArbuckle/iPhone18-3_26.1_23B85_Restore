@interface CRLiOSDragAndDropInfo
- (BOOL)canCreateItemsOfClass:(Class)class;
- (id)createItemsOfClass:(Class)class completion:(id)completion;
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
  platformDraggingInfo = [(CRLDragAndDropInfo *)self platformDraggingInfo];
  promisedUTIs = [(CRLiOSDragAndDropInfo *)self promisedUTIs];
  v7 = [NSString stringWithFormat:@"%@<%p>: platform dragging info %@ promised UTIs %@", v4, self, platformDraggingInfo, promisedUTIs];

  return v7;
}

- (unint64_t)dragOperationMask
{
  platformDraggingInfo = [(CRLDragAndDropInfo *)self platformDraggingInfo];
  allowsMoveOperation = [platformDraggingInfo allowsMoveOperation];

  if (allowsMoveOperation)
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
  platformDraggingInfo = [(CRLDragAndDropInfo *)self platformDraggingInfo];
  items = [platformDraggingInfo items];
  v4 = [items count];

  return v4;
}

- (id)inProcessDraggingSources
{
  v3 = +[NSMutableArray array];
  platformDraggingInfo = [(CRLDragAndDropInfo *)self platformDraggingInfo];
  localDragSession = [platformDraggingInfo localDragSession];
  localContext = [localDragSession localContext];

  if (localContext)
  {
    platformDraggingInfo2 = [(CRLDragAndDropInfo *)self platformDraggingInfo];
    localDragSession2 = [platformDraggingInfo2 localDragSession];
    localContext2 = [localDragSession2 localContext];
    [v3 addObject:localContext2];
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
  platformDraggingInfo = [(CRLDragAndDropInfo *)self platformDraggingInfo];
  items = [platformDraggingInfo items];

  v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(items);
        }

        itemProvider = [*(*(&v13 + 1) + 8 * i) itemProvider];
        registeredTypeIdentifiers = [itemProvider registeredTypeIdentifiers];
        [v3 addObjectsFromArray:registeredTypeIdentifiers];
      }

      v7 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (BOOL)canCreateItemsOfClass:(Class)class
{
  itemSource = [(CRLDragAndDropInfo *)self itemSource];
  LOBYTE(class) = [itemSource canLoadItemsOfClass:class];

  return class;
}

- (id)createItemsOfClass:(Class)class completion:(id)completion
{
  completionCopy = completion;
  if ([(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___NSItemProviderReading])
  {
    platformDraggingInfo = [(CRLDragAndDropInfo *)self platformDraggingInfo];
    v8 = [platformDraggingInfo loadObjectsOfClass:class completion:completionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end