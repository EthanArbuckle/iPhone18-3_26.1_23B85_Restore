@interface MessageListDragDropHelper
+ (OS_os_log)log;
- (BOOL)_canMoveDragItems:(id)a3 toMailboxes:(id)a4;
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (MessageListDragDropHelper)initWithDataSource:(id)a3 delegate:(id)a4;
- (MessageListDragDropHelperDataSource)dataSource;
- (MessageListDragDropHelperDelegate)delegate;
- (id)_dragItemsForDragSession:(id)a3 atIndexPath:(id)a4;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (int64_t)_collectionView:(id)a3 dataOwnerForDragSession:(id)a4 atIndexPath:(id)a5;
- (int64_t)_collectionView:(id)a3 dataOwnerForDropSession:(id)a4 withDestinationIndexPath:(id)a5;
- (int64_t)_dataOwnerForMailboxes:(id)a3;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
@end

@implementation MessageListDragDropHelper

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001536B8;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD300 != -1)
  {
    dispatch_once(&qword_1006DD300, block);
  }

  v2 = qword_1006DD2F8;

  return v2;
}

- (MessageListDragDropHelper)initWithDataSource:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MessageListDragDropHelper;
  v8 = [(MessageListDragDropHelper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    objc_storeWeak(&v9->_delegate, v7);
  }

  return v9;
}

- (id)_dragItemsForDragSession:(id)a3 atIndexPath:(id)a4
{
  v27 = a3;
  v28 = a4;
  v6 = +[MessageListDragDropHelper log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v28;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Drag source items requested for indexpath: %{public}@", buf, 0xCu);
  }

  v7 = [(MessageListDragDropHelper *)self dataSource];
  v8 = [v7 messageDragDropHelper:self itemContextForIndexPath:v28];
  if (v8)
  {
    v9 = [v27 items];
    v10 = [NSMutableArray arrayWithArray:v9];

    v11 = [v8 messageListItem];
    v12 = [NSMutableSet setWithObject:v11];

    v13 = [v7 undoManagerForMessageListDragDropHelper:self];
    if ([v10 count])
    {
      v14 = [v10 firstObject];
      v15 = [v14 localObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v17 = [v14 localObject];
        v18 = [v17 messageListItemSelection];
        v19 = [v18 messageListItems];
        [v12 addObjectsFromArray:v19];
      }

      [v14 setLocalObject:0];
    }

    v20 = +[MessageListDragDropHelper log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v12 count];
      *buf = 134217984;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Will begin dragging %lu message list items", buf, 0xCu);
    }

    v22 = [v8 dragItem];
    v23 = [v12 allObjects];
    v24 = [(MFTriageInteraction *)MFMoveMessageTriageInteraction interactionWithMessageListItems:v23 undoManager:v13 origin:2 actor:2];
    [v22 setLocalObject:v24];

    v29 = v22;
    v25 = [NSArray arrayWithObjects:&v29 count:1];
  }

  else
  {
    v10 = +[MessageListDragDropHelper log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = v28;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Context is nil. Cancel drag for item at indexPath: %{public}@", buf, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v5 = [(MessageListDragDropHelper *)self _dragItemsForDragSession:a4 atIndexPath:a5];

  return v5;
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v5 = [a3 cellForItemAtIndexPath:a4];
  v6 = [(MessageListDragDropHelper *)self delegate];
  [v6 dragItemCornerRadius:self];

  v7 = objc_alloc_init(UIDragPreviewParameters);
  [v5 bounds];
  v8 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  [v7 setVisiblePath:v8];

  return v7;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v6 = [(MessageListDragDropHelper *)self _dragItemsForDragSession:a4 atIndexPath:a5, a6.x, a6.y];

  return v6;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v5 = [(MessageListDragDropHelper *)self delegate:a3];
  [v5 willBeginDragForMessageListDragDropHelper:self];
}

- (BOOL)_canMoveDragItems:(id)a3 toMailboxes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v22 = v5;
  if ([v6 count])
  {
    v7 = [v6 ef_compactMap:&stru_1006517D0];
    v20 = [NSSet setWithArray:v7];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v5;
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

          v10 = [*(*(&v27 + 1) + 8 * i) localObject];
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
                  v16 = v10;
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

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v6 = a4;
  v7 = [(MessageListDragDropHelper *)self dataSource];
  v8 = [v7 dropMailboxesForMessageListDragDropHelper:self];

  v9 = [v6 items];
  LODWORD(self) = [(MessageListDragDropHelper *)self _canMoveDragItems:v9 toMailboxes:v8];

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

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v28 = a4;
  v5 = [(MessageListDragDropHelper *)self dataSource];
  v6 = [v5 dropMailboxesForMessageListDragDropHelper:self];

  if (v6 && (v27 = v6, [v28 items], v7 = objc_claimAutoreleasedReturnValue(), v8 = +[MessageListItemDragContext dragItemsAreAllMessageListItems:](MessageListItemDragContext, "dragItemsAreAllMessageListItems:", v7), v7, (v8 & 1) != 0) && (objc_msgSend(v6, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v38[0] = _NSConcreteStackBlock, v38[1] = 3221225472, v38[2] = sub_1001546CC, v38[3] = &unk_1006517F0, v38[4] = v10, (objc_msgSend(v6, "ef_all:", v38) & 1) != 0))
  {
    v26 = [NSSet setWithArray:v6];
    v11 = objc_alloc_init(NSMutableSet);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = [v28 items];
    obj = v12;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
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

          v16 = [*(*(&v34 + 1) + 8 * i) localObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v17 = [v16 messageListItemSelection];
            v18 = [v17 messageListItems];

            v19 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (v19)
            {
              v20 = *v31;
              do
              {
                for (j = 0; j != v19; j = j + 1)
                {
                  if (*v31 != v20)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v22 = [*(*(&v30 + 1) + 8 * j) mailboxes];
                  [v11 addObjectsFromArray:v22];
                }

                v19 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
              }

              while (v19);
            }
          }
        }

        v12 = obj;
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

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v22 = a3;
  v23 = a4;
  v6 = [v23 session];
  v21 = [v6 items];

  v7 = [UIDragPreviewTarget alloc];
  [v22 bounds];
  MidX = CGRectGetMidX(v31);
  [v22 bounds];
  MidY = CGRectGetMidY(v32);
  CGAffineTransformMakeScale(&v29, 0.0, 0.0);
  v24 = [v7 initWithContainer:v22 center:&v29 transform:{MidX, MidY}];
  v10 = [(MessageListDragDropHelper *)self dataSource];
  v11 = [v10 dropMailboxesForMessageListDragDropHelper:self];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v21;
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
        v17 = [v16 localObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
          v19 = [v11 firstObject];
          [v18 setTargetMailbox:v19];

          [v18 performInteraction];
          v20 = [v23 dropItem:v16 toTarget:v24];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }
}

- (int64_t)_dataOwnerForMailboxes:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 ef_any:&stru_100651810])
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

- (int64_t)_collectionView:(id)a3 dataOwnerForDragSession:(id)a4 atIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(MessageListDragDropHelper *)self dataSource];
  v8 = [v7 messageDragDropHelper:self itemContextForIndexPath:v6];

  v9 = [v8 messageListItem];
  v10 = [v9 mailboxes];
  v11 = [(MessageListDragDropHelper *)self _dataOwnerForMailboxes:v10];

  return v11;
}

- (int64_t)_collectionView:(id)a3 dataOwnerForDropSession:(id)a4 withDestinationIndexPath:(id)a5
{
  v6 = [(MessageListDragDropHelper *)self dataSource:a3];
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