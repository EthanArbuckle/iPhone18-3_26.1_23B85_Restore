@interface MailboxPickerDragDropHelper
- (BOOL)_canMoveDragItems:(id)a3 toFavoriteItem:(id)a4;
- (BOOL)_dragItemsAreAllMessages:(id)a3;
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (MailboxPickerDragDropHelper)initWithDelegate:(id)a3;
- (MailboxPickerDragDropHelperDelegate)delegate;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (int64_t)_collectionView:(id)a3 dataOwnerForDropSession:(id)a4 withDestinationIndexPath:(id)a5;
- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
@end

@implementation MailboxPickerDragDropHelper

- (MailboxPickerDragDropHelper)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MailboxPickerDragDropHelper;
  v5 = [(MailboxPickerDragDropHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v5 = [a4 items];
  LOBYTE(self) = [(MailboxPickerDragDropHelper *)self _dragItemsAreAllMessages:v5];

  return self;
}

- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4
{
  v17 = [a4 items];
  v5 = v17;
  if ([(MailboxPickerDragDropHelper *)self _dragItemsAreAllMessages:v17])
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
    v11 = v17;
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

    v5 = v17;
  }
}

- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4
{
  v5 = a4;
  v6 = [v5 items];
  LODWORD(self) = [(MailboxPickerDragDropHelper *)self _dragItemsAreAllMessages:v6];

  if (self)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [v5 items];
    v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v11 + 1) + 8 * v10) setPreviewProvider:0];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v32 = a3;
  v33 = a4;
  v34 = self;
  v35 = [(MailboxPickerDragDropHelper *)self delegate];
  v6 = [v33 destinationIndexPath];
  if (v6)
  {
    v36 = v6;
    v7 = [v32 cellForItemAtIndexPath:?];
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
    v18 = [v33 items];
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v19)
    {
      v20 = *v38;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          v23 = [v22 sourceIndexPath];
          v24 = v23 == 0;

          if (v24)
          {
            v25 = [v22 dragItem];
            v26 = [v25 localObject];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = v26;
              v28 = [v35 mailboxPickerDragDropHelper:v34 favoriteItemAtIndexPath:v36];
              if ([v28 type] == 4)
              {
                [v28 mailboxType];
                [v27 setTargetMailboxType:ECMailboxTypeFromMailboxUidType()];
              }

              else
              {
                v29 = [v28 representingMailbox];
                v30 = [v35 mailboxPickerDragDropHelper:v34 mailboxForMailboxUid:v29];
                [v27 setTargetMailbox:v30];
              }

              [v27 performInteraction];
              v31 = [v33 dropItem:v25 intoItemAtIndexPath:v36 rect:{MidX, MidY, 0.0, 0.0}];
            }
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v19);
    }

    v6 = v36;
  }
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [v9 localDragSession];

    if (v11)
    {
      if ([v8 hasActiveDrag])
      {
        v12 = 3;
        v13 = 1;
        goto LABEL_14;
      }

      v14 = [v9 items];
      v15 = [(MailboxPickerDragDropHelper *)self _dragItemsAreAllMessages:v14];

      if (v15)
      {
        v16 = [(MailboxPickerDragDropHelper *)self delegate];
        v17 = [v16 mailboxPickerDragDropHelper:self favoriteItemAtIndexPath:v10];

        v18 = [v9 items];
        v19 = [(MailboxPickerDragDropHelper *)self _canMoveDragItems:v18 toFavoriteItem:v17];

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

- (int64_t)_collectionView:(id)a3 dataOwnerForDropSession:(id)a4 withDestinationIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = [v9 localDragSession];
  if (!v11 || ([v8 hasActiveDrag] & 1) != 0)
  {
    goto LABEL_4;
  }

  v13 = [v9 items];
  v14 = [(MailboxPickerDragDropHelper *)self _dragItemsAreAllMessages:v13];

  if (!v14)
  {
LABEL_13:
    v12 = 3;
    goto LABEL_14;
  }

  v15 = [(MailboxPickerDragDropHelper *)self delegate];
  v11 = [v15 mailboxPickerDragDropHelper:self favoriteItemAtIndexPath:v10];

  if ([v11 acceptsMessageTransfers])
  {
    v16 = [v11 account];

    if (v16)
    {
      v17 = [v11 account];
      if ([v17 sourceIsManaged])
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

- (BOOL)_dragItemsAreAllMessages:(id)a3
{
  v3 = a3;
  if ([MessageListItemDragContext dragItemsAreAllMessageListItems:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [MFMailMessage dragItemsAreAllMessages:v3];
  }

  return v4;
}

- (BOOL)_canMoveDragItems:(id)a3 toFavoriteItem:(id)a4
{
  v16 = a3;
  v5 = a4;
  if ([v5 acceptsMessageTransfers])
  {
    v6 = [v5 account];
    if (v6)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v16;
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

            v11 = [*(*(&v17 + 1) + 8 * i) localObject];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = v11;
              v13 = [v12 isPermittedWithTargetAccount:v6];

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