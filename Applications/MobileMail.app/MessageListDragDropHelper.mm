@interface MessageListDragDropHelper
+ (OS_os_log)log;
- (BOOL)_canMoveDragItems:(id)items toMailboxes:(id)mailboxes;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (MessageListDragDropHelper)initWithDataSource:(id)source delegate:(id)delegate;
- (MessageListDragDropHelperDataSource)dataSource;
- (MessageListDragDropHelperDelegate)delegate;
- (id)_dragItemsForDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (int64_t)_collectionView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path;
- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path;
- (int64_t)_dataOwnerForMailboxes:(id)mailboxes;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
@end

@implementation MessageListDragDropHelper

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001536B8;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD300 != -1)
  {
    dispatch_once(&qword_1006DD300, block);
  }

  v2 = qword_1006DD2F8;

  return v2;
}

- (MessageListDragDropHelper)initWithDataSource:(id)source delegate:(id)delegate
{
  sourceCopy = source;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = MessageListDragDropHelper;
  v8 = [(MessageListDragDropHelper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v9;
}

- (id)_dragItemsForDragSession:(id)session atIndexPath:(id)path
{
  sessionCopy = session;
  pathCopy = path;
  v6 = +[MessageListDragDropHelper log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = pathCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Drag source items requested for indexpath: %{public}@", buf, 0xCu);
  }

  dataSource = [(MessageListDragDropHelper *)self dataSource];
  v8 = [dataSource messageDragDropHelper:self itemContextForIndexPath:pathCopy];
  if (v8)
  {
    items = [sessionCopy items];
    v10 = [NSMutableArray arrayWithArray:items];

    messageListItem = [v8 messageListItem];
    v12 = [NSMutableSet setWithObject:messageListItem];

    v13 = [dataSource undoManagerForMessageListDragDropHelper:self];
    if ([v10 count])
    {
      firstObject = [v10 firstObject];
      localObject = [firstObject localObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        localObject2 = [firstObject localObject];
        messageListItemSelection = [localObject2 messageListItemSelection];
        messageListItems = [messageListItemSelection messageListItems];
        [v12 addObjectsFromArray:messageListItems];
      }

      [firstObject setLocalObject:0];
    }

    v20 = +[MessageListDragDropHelper log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v12 count];
      *buf = 134217984;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Will begin dragging %lu message list items", buf, 0xCu);
    }

    dragItem = [v8 dragItem];
    allObjects = [v12 allObjects];
    v24 = [(MFTriageInteraction *)MFMoveMessageTriageInteraction interactionWithMessageListItems:allObjects undoManager:v13 origin:2 actor:2];
    [dragItem setLocalObject:v24];

    v29 = dragItem;
    v25 = [NSArray arrayWithObjects:&v29 count:1];
  }

  else
  {
    v10 = +[MessageListDragDropHelper log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = pathCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Context is nil. Cancel drag for item at indexPath: %{public}@", buf, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v5 = [(MessageListDragDropHelper *)self _dragItemsForDragSession:session atIndexPath:path];

  return v5;
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v5 = [view cellForItemAtIndexPath:path];
  delegate = [(MessageListDragDropHelper *)self delegate];
  [delegate dragItemCornerRadius:self];

  v7 = objc_alloc_init(UIDragPreviewParameters);
  [v5 bounds];
  v8 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  [v7 setVisiblePath:v8];

  return v7;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v6 = [(MessageListDragDropHelper *)self _dragItemsForDragSession:session atIndexPath:path, point.x, point.y];

  return v6;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  v5 = [(MessageListDragDropHelper *)self delegate:view];
  [v5 willBeginDragForMessageListDragDropHelper:self];
}

- (BOOL)_canMoveDragItems:(id)items toMailboxes:(id)mailboxes
{
  itemsCopy = items;
  mailboxesCopy = mailboxes;
  v22 = itemsCopy;
  if ([mailboxesCopy count])
  {
    v7 = [mailboxesCopy ef_compactMap:&stru_1006517D0];
    v20 = [NSSet setWithArray:v7];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = itemsCopy;
    v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v19 = *v28;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(obj);
          }

          localObject = [*(*(&v27 + 1) + 8 * i) localObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v11 = v20;
            v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v12)
            {
              v13 = *v24;
              while (2)
              {
                for (j = 0; j != v12; j = j + 1)
                {
                  if (*v24 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v15 = *(*(&v23 + 1) + 8 * j);
                  v16 = localObject;
                  LODWORD(v15) = [v16 isPermittedWithTargetAccount:v15];

                  if (!v15)
                  {

                    v17 = 0;
                    goto LABEL_23;
                  }
                }

                v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
        v17 = 1;
      }

      while (v8);
    }

    else
    {
      v17 = 1;
    }

LABEL_23:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  updateCopy = update;
  dataSource = [(MessageListDragDropHelper *)self dataSource];
  v8 = [dataSource dropMailboxesForMessageListDragDropHelper:self];

  items = [updateCopy items];
  LODWORD(self) = [(MessageListDragDropHelper *)self _canMoveDragItems:items toMailboxes:v8];

  v10 = [UICollectionViewDropProposal alloc];
  if (self)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  v12 = [v10 initWithDropOperation:v11 dropLocation:2];

  return v12;
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  sessionCopy = session;
  dataSource = [(MessageListDragDropHelper *)self dataSource];
  v6 = [dataSource dropMailboxesForMessageListDragDropHelper:self];

  if (v6 && (v27 = v6, [sessionCopy items], v7 = objc_claimAutoreleasedReturnValue(), v8 = +[MessageListItemDragContext dragItemsAreAllMessageListItems:](MessageListItemDragContext, "dragItemsAreAllMessageListItems:", v7), v7, (v8 & 1) != 0) && (objc_msgSend(v6, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v38[0] = _NSConcreteStackBlock, v38[1] = 3221225472, v38[2] = sub_1001546CC, v38[3] = &unk_1006517F0, v38[4] = v10, (objc_msgSend(v6, "ef_all:", v38) & 1) != 0))
  {
    v26 = [NSSet setWithArray:v6];
    v11 = objc_alloc_init(NSMutableSet);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    items = [sessionCopy items];
    obj = items;
    v13 = [items countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v13)
    {
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(obj);
          }

          localObject = [*(*(&v34 + 1) + 8 * i) localObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            messageListItemSelection = [localObject messageListItemSelection];
            messageListItems = [messageListItemSelection messageListItems];

            v19 = [messageListItems countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (v19)
            {
              v20 = *v31;
              do
              {
                for (j = 0; j != v19; j = j + 1)
                {
                  if (*v31 != v20)
                  {
                    objc_enumerationMutation(messageListItems);
                  }

                  mailboxes = [*(*(&v30 + 1) + 8 * j) mailboxes];
                  [v11 addObjectsFromArray:mailboxes];
                }

                v19 = [messageListItems countByEnumeratingWithState:&v30 objects:v39 count:16];
              }

              while (v19);
            }
          }
        }

        items = obj;
        v13 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v13);
    }

    v23 = [v26 intersectsSet:v11];
    v24 = v23 ^ 1;
    v6 = v27;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  session = [coordinatorCopy session];
  items = [session items];

  v7 = [UIDragPreviewTarget alloc];
  [viewCopy bounds];
  MidX = CGRectGetMidX(v31);
  [viewCopy bounds];
  MidY = CGRectGetMidY(v32);
  CGAffineTransformMakeScale(&v29, 0.0, 0.0);
  v24 = [v7 initWithContainer:viewCopy center:&v29 transform:{MidX, MidY}];
  dataSource = [(MessageListDragDropHelper *)self dataSource];
  v11 = [dataSource dropMailboxesForMessageListDragDropHelper:self];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = items;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v13)
  {
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        localObject = [v16 localObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = localObject;
          firstObject = [v11 firstObject];
          [v18 setTargetMailbox:firstObject];

          [v18 performInteraction];
          v20 = [coordinatorCopy dropItem:v16 toTarget:v24];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }
}

- (int64_t)_dataOwnerForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v4 = mailboxesCopy;
  if (mailboxesCopy)
  {
    if ([mailboxesCopy ef_any:&stru_100651810])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_collectionView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MessageListDragDropHelper *)self dataSource];
  v8 = [dataSource messageDragDropHelper:self itemContextForIndexPath:pathCopy];

  messageListItem = [v8 messageListItem];
  mailboxes = [messageListItem mailboxes];
  v11 = [(MessageListDragDropHelper *)self _dataOwnerForMailboxes:mailboxes];

  return v11;
}

- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path
{
  v6 = [(MessageListDragDropHelper *)self dataSource:view];
  v7 = [v6 dropMailboxesForMessageListDragDropHelper:self];

  v8 = [(MessageListDragDropHelper *)self _dataOwnerForMailboxes:v7];
  return v8;
}

- (MessageListDragDropHelperDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (MessageListDragDropHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end