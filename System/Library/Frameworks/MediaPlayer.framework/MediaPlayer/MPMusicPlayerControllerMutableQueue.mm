@interface MPMusicPlayerControllerMutableQueue
- (MPMusicPlayerControllerApplicationQueueModifications)modifications;
- (MPMusicPlayerControllerMutableQueue)initWithController:(id)a3;
- (void)_insertQueueDescriptor:(id)a3 afterItemWithIdentifier:(id)a4;
- (void)_removeItemWithIdentifier:(id)a3;
- (void)insertQueueDescriptor:(MPMusicPlayerQueueDescriptor *)queueDescriptor afterItem:(MPMediaItem *)afterItem;
- (void)removeItem:(MPMediaItem *)item;
@end

@implementation MPMusicPlayerControllerMutableQueue

- (MPMusicPlayerControllerApplicationQueueModifications)modifications
{
  v3 = [MPMusicPlayerControllerApplicationQueueModifications alloc];
  v4 = [(NSMutableDictionary *)self->_insertedDescriptors copy];
  v5 = [(NSMutableArray *)self->_removedItems copy];
  v6 = [(MPMusicPlayerControllerApplicationQueueModifications *)v3 initWithInsertedDescriptors:v4 removedItemIdentifiers:v5];

  return v6;
}

- (void)_removeItemWithIdentifier:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_removedItems addObject:?];
  }
}

- (void)removeItem:(MPMediaItem *)item
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = item;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v7 = [(MPMediaItem *)v5 itemIdentifier];
    if (v7)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(MPMusicPlayerControllerQueue *)self items];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v7)
  {
    goto LABEL_31;
  }

  v22 = self;
  v24 = *v26;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v26 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v25 + 1) + 8 * i);
      v10 = [v9 item];
      if ([v10 persistentID])
      {
        v11 = [(MPMediaEntity *)v5 persistentID]!= 0;
      }

      else
      {
        v11 = 0;
      }

      v12 = [v9 item];
      v13 = [v12 playbackStoreID];
      if (v13)
      {
        v14 = v13;
        v15 = [(MPMediaItem *)v5 playbackStoreID];
        v16 = v15 != 0;

        if (!v11)
        {
          if (!v15)
          {
            continue;
          }

          goto LABEL_18;
        }
      }

      else
      {

        if (!v11)
        {
          continue;
        }

        v16 = 0;
      }

      v3 = [v9 item];
      v17 = [v3 persistentID];
      if (v17 == [(MPMediaEntity *)v5 persistentID])
      {

LABEL_29:
        v7 = [v9 itemIdentifier];
        goto LABEL_30;
      }

      if (!v16)
      {

        continue;
      }

LABEL_18:
      v18 = [v9 item];
      v19 = [v18 playbackStoreID];
      v20 = [(MPMediaItem *)v5 playbackStoreID];
      v21 = [v19 isEqualToString:v20];

      if (v11)
      {

        if (v21)
        {
          goto LABEL_29;
        }
      }

      else if (v21)
      {
        goto LABEL_29;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_30:
  self = v22;
LABEL_31:

  if (v7)
  {
LABEL_32:
    [(MPMusicPlayerControllerMutableQueue *)self _removeItemWithIdentifier:v7];
  }

LABEL_33:
}

- (void)_insertQueueDescriptor:(id)a3 afterItemWithIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v9 = v8;
  [(NSMutableDictionary *)self->_insertedDescriptors setObject:v10 forKeyedSubscript:v8];
}

- (void)insertQueueDescriptor:(MPMusicPlayerQueueDescriptor *)queueDescriptor afterItem:(MPMediaItem *)afterItem
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = queueDescriptor;
  v8 = afterItem;
  if (!v8)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_29;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v25 = [(MPMediaItem *)v8 itemIdentifier];
LABEL_29:
    v10 = v25;
    if (!v25)
    {
      goto LABEL_31;
    }

LABEL_30:
    [(MPMusicPlayerControllerMutableQueue *)self _insertQueueDescriptor:v7 afterItemWithIdentifier:v10];
    goto LABEL_31;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(MPMusicPlayerControllerQueue *)self items];
  v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v10)
  {
    goto LABEL_35;
  }

  v26 = self;
  v27 = v7;
  v29 = *v31;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v31 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v30 + 1) + 8 * i);
      v13 = [v12 item];
      if ([v13 persistentID])
      {
        v14 = [(MPMediaEntity *)v8 persistentID]!= 0;
      }

      else
      {
        v14 = 0;
      }

      v15 = [v12 item];
      v16 = [v15 playbackStoreID];
      if (v16)
      {
        v17 = v16;
        v18 = [(MPMediaItem *)v8 playbackStoreID];
        v19 = v18 != 0;

        if (!v14)
        {
          if (!v18)
          {
            continue;
          }

          goto LABEL_19;
        }
      }

      else
      {

        if (!v14)
        {
          continue;
        }

        v19 = 0;
      }

      v4 = [v12 item];
      v20 = [v4 persistentID];
      if (v20 == [(MPMediaEntity *)v8 persistentID])
      {

LABEL_33:
        v10 = [v12 itemIdentifier];
        goto LABEL_34;
      }

      if (!v19)
      {

        continue;
      }

LABEL_19:
      v21 = [v12 item];
      v22 = [v21 playbackStoreID];
      v23 = [(MPMediaItem *)v8 playbackStoreID];
      v24 = [v22 isEqualToString:v23];

      if (v14)
      {

        if (v24)
        {
          goto LABEL_33;
        }
      }

      else if (v24)
      {
        goto LABEL_33;
      }
    }

    v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_34:
  self = v26;
  v7 = v27;
LABEL_35:

  if (v10)
  {
    goto LABEL_30;
  }

LABEL_31:
}

- (MPMusicPlayerControllerMutableQueue)initWithController:(id)a3
{
  v9.receiver = self;
  v9.super_class = MPMusicPlayerControllerMutableQueue;
  v3 = [(MPMusicPlayerControllerQueue *)&v9 initWithController:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    removedItems = v3->_removedItems;
    v3->_removedItems = v4;

    v6 = [MEMORY[0x1E695DF90] dictionary];
    insertedDescriptors = v3->_insertedDescriptors;
    v3->_insertedDescriptors = v6;
  }

  return v3;
}

@end