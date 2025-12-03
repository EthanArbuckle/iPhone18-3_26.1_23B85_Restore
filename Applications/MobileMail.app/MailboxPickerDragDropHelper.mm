@interface MailboxPickerDragDropHelper
- (BOOL)_canMoveDragItems:(id)items toFavoriteItem:(id)item;
- (BOOL)_dragItemsAreAllMessages:(id)messages;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (MailboxPickerDragDropHelper)initWithDelegate:(id)delegate;
- (MailboxPickerDragDropHelperDelegate)delegate;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path;
- (void)collectionView:(id)view dropSessionDidEnter:(id)enter;
- (void)collectionView:(id)view dropSessionDidExit:(id)exit;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
@end

@implementation MailboxPickerDragDropHelper

- (MailboxPickerDragDropHelper)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MailboxPickerDragDropHelper;
  v5 = [(MailboxPickerDragDropHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  items = [session items];
  LOBYTE(self) = [(MailboxPickerDragDropHelper *)self _dragItemsAreAllMessages:items];

  return self;
}

- (void)collectionView:(id)view dropSessionDidEnter:(id)enter
{
  items = [enter items];
  v5 = items;
  if ([(MailboxPickerDragDropHelper *)self _dragItemsAreAllMessages:items])
  {
    v6 = [UIImage imageNamed:@"MFMailMessageDragPreview"];
    [v6 size];
    v8 = v7;
    [v6 size];
    v16 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v8, v9, 4.0];
    v10 = objc_alloc_init(UIDragPreviewParameters);
    [v10 setVisiblePath:v16];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = items;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1000FC788;
          v18[3] = &unk_100650470;
          v19 = v6;
          v20 = v10;
          [v15 setPreviewProvider:{v18, v16}];
        }

        v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    v5 = items;
  }
}

- (void)collectionView:(id)view dropSessionDidExit:(id)exit
{
  exitCopy = exit;
  items = [exitCopy items];
  LODWORD(self) = [(MailboxPickerDragDropHelper *)self _dragItemsAreAllMessages:items];

  if (self)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    items2 = [exitCopy items];
    v8 = [items2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(items2);
          }

          [*(*(&v11 + 1) + 8 * v10) setPreviewProvider:0];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [items2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  selfCopy = self;
  delegate = [(MailboxPickerDragDropHelper *)self delegate];
  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  if (destinationIndexPath)
  {
    v36 = destinationIndexPath;
    v7 = [viewCopy cellForItemAtIndexPath:?];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v42.origin.x = v9;
    v42.origin.y = v11;
    v42.size.width = v13;
    v42.size.height = v15;
    MidX = CGRectGetMidX(v42);
    v43.origin.x = v9;
    v43.origin.y = v11;
    v43.size.width = v13;
    v43.size.height = v15;
    MidY = CGRectGetMidY(v43);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    items = [coordinatorCopy items];
    v19 = [items countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v19)
    {
      v20 = *v38;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(items);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          sourceIndexPath = [v22 sourceIndexPath];
          v24 = sourceIndexPath == 0;

          if (v24)
          {
            dragItem = [v22 dragItem];
            localObject = [dragItem localObject];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = localObject;
              v28 = [delegate mailboxPickerDragDropHelper:selfCopy favoriteItemAtIndexPath:v36];
              if ([v28 type] == 4)
              {
                [v28 mailboxType];
                [v27 setTargetMailboxType:ECMailboxTypeFromMailboxUidType()];
              }

              else
              {
                representingMailbox = [v28 representingMailbox];
                v30 = [delegate mailboxPickerDragDropHelper:selfCopy mailboxForMailboxUid:representingMailbox];
                [v27 setTargetMailbox:v30];
              }

              [v27 performInteraction];
              v31 = [coordinatorCopy dropItem:dragItem intoItemAtIndexPath:v36 rect:{MidX, MidY, 0.0, 0.0}];
            }
          }
        }

        v19 = [items countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v19);
    }

    destinationIndexPath = v36;
  }
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  viewCopy = view;
  updateCopy = update;
  pathCopy = path;
  if (pathCopy)
  {
    localDragSession = [updateCopy localDragSession];

    if (localDragSession)
    {
      if ([viewCopy hasActiveDrag])
      {
        v12 = 3;
        v13 = 1;
        goto LABEL_14;
      }

      items = [updateCopy items];
      v15 = [(MailboxPickerDragDropHelper *)self _dragItemsAreAllMessages:items];

      if (v15)
      {
        delegate = [(MailboxPickerDragDropHelper *)self delegate];
        v17 = [delegate mailboxPickerDragDropHelper:self favoriteItemAtIndexPath:pathCopy];

        items2 = [updateCopy items];
        v19 = [(MailboxPickerDragDropHelper *)self _canMoveDragItems:items2 toFavoriteItem:v17];

        v20 = v19 == 0;
        if (v19)
        {
          v13 = 2;
        }

        else
        {
          v13 = 0;
        }

        if (v20)
        {
          v12 = 1;
        }

        else
        {
          v12 = 3;
        }

        goto LABEL_14;
      }
    }
  }

  v13 = 0;
  v12 = 1;
LABEL_14:
  v21 = [[UICollectionViewDropProposal alloc] initWithDropOperation:v12 intent:v13];

  return v21;
}

- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path
{
  viewCopy = view;
  sessionCopy = session;
  pathCopy = path;
  if (!pathCopy)
  {
    goto LABEL_13;
  }

  localDragSession = [sessionCopy localDragSession];
  if (!localDragSession || ([viewCopy hasActiveDrag] & 1) != 0)
  {
    goto LABEL_4;
  }

  items = [sessionCopy items];
  v14 = [(MailboxPickerDragDropHelper *)self _dragItemsAreAllMessages:items];

  if (!v14)
  {
LABEL_13:
    v12 = 3;
    goto LABEL_14;
  }

  delegate = [(MailboxPickerDragDropHelper *)self delegate];
  localDragSession = [delegate mailboxPickerDragDropHelper:self favoriteItemAtIndexPath:pathCopy];

  if ([localDragSession acceptsMessageTransfers])
  {
    account = [localDragSession account];

    if (account)
    {
      account2 = [localDragSession account];
      if ([account2 sourceIsManaged])
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      goto LABEL_5;
    }
  }

LABEL_4:
  v12 = 3;
LABEL_5:

LABEL_14:
  return v12;
}

- (BOOL)_dragItemsAreAllMessages:(id)messages
{
  messagesCopy = messages;
  if ([MessageListItemDragContext dragItemsAreAllMessageListItems:messagesCopy])
  {
    v4 = 1;
  }

  else
  {
    v4 = [MFMailMessage dragItemsAreAllMessages:messagesCopy];
  }

  return v4;
}

- (BOOL)_canMoveDragItems:(id)items toFavoriteItem:(id)item
{
  itemsCopy = items;
  itemCopy = item;
  if ([itemCopy acceptsMessageTransfers])
  {
    account = [itemCopy account];
    if (account)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = itemsCopy;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = *v18;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v7);
            }

            localObject = [*(*(&v17 + 1) + 8 * i) localObject];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = localObject;
              v13 = [v12 isPermittedWithTargetAccount:account];

              if ((v13 & 1) == 0)
              {

                v14 = 0;
                goto LABEL_16;
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v14 = 1;
LABEL_16:
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (MailboxPickerDragDropHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end