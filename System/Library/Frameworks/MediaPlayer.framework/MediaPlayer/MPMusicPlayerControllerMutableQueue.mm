@interface MPMusicPlayerControllerMutableQueue
- (MPMusicPlayerControllerApplicationQueueModifications)modifications;
- (MPMusicPlayerControllerMutableQueue)initWithController:(id)controller;
- (void)_insertQueueDescriptor:(id)descriptor afterItemWithIdentifier:(id)identifier;
- (void)_removeItemWithIdentifier:(id)identifier;
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

- (void)_removeItemWithIdentifier:(id)identifier
{
  if (identifier)
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
    itemIdentifier = [(MPMediaItem *)v5 itemIdentifier];
    if (itemIdentifier)
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
  itemIdentifier = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!itemIdentifier)
  {
    goto LABEL_31;
  }

  selfCopy = self;
  v24 = *v26;
  while (2)
  {
    for (i = 0; i != itemIdentifier; i = i + 1)
    {
      if (*v26 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v25 + 1) + 8 * i);
      item = [v9 item];
      if ([item persistentID])
      {
        v11 = [(MPMediaEntity *)v5 persistentID]!= 0;
      }

      else
      {
        v11 = 0;
      }

      item2 = [v9 item];
      playbackStoreID = [item2 playbackStoreID];
      if (playbackStoreID)
      {
        v14 = playbackStoreID;
        playbackStoreID2 = [(MPMediaItem *)v5 playbackStoreID];
        v16 = playbackStoreID2 != 0;

        if (!v11)
        {
          if (!playbackStoreID2)
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

      item3 = [v9 item];
      persistentID = [item3 persistentID];
      if (persistentID == [(MPMediaEntity *)v5 persistentID])
      {

LABEL_29:
        itemIdentifier = [v9 itemIdentifier];
        goto LABEL_30;
      }

      if (!v16)
      {

        continue;
      }

LABEL_18:
      item4 = [v9 item];
      playbackStoreID3 = [item4 playbackStoreID];
      playbackStoreID4 = [(MPMediaItem *)v5 playbackStoreID];
      v21 = [playbackStoreID3 isEqualToString:playbackStoreID4];

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

    itemIdentifier = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (itemIdentifier)
    {
      continue;
    }

    break;
  }

LABEL_30:
  self = selfCopy;
LABEL_31:

  if (itemIdentifier)
  {
LABEL_32:
    [(MPMusicPlayerControllerMutableQueue *)self _removeItemWithIdentifier:itemIdentifier];
  }

LABEL_33:
}

- (void)_insertQueueDescriptor:(id)descriptor afterItemWithIdentifier:(id)identifier
{
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    null = identifierCopy;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9 = null;
  [(NSMutableDictionary *)self->_insertedDescriptors setObject:descriptorCopy forKeyedSubscript:null];
}

- (void)insertQueueDescriptor:(MPMusicPlayerQueueDescriptor *)queueDescriptor afterItem:(MPMediaItem *)afterItem
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = queueDescriptor;
  v8 = afterItem;
  if (!v8)
  {
    null = [MEMORY[0x1E695DFB0] null];
    goto LABEL_29;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    null = [(MPMediaItem *)v8 itemIdentifier];
LABEL_29:
    itemIdentifier = null;
    if (!null)
    {
      goto LABEL_31;
    }

LABEL_30:
    [(MPMusicPlayerControllerMutableQueue *)self _insertQueueDescriptor:v7 afterItemWithIdentifier:itemIdentifier];
    goto LABEL_31;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(MPMusicPlayerControllerQueue *)self items];
  itemIdentifier = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!itemIdentifier)
  {
    goto LABEL_35;
  }

  selfCopy = self;
  v27 = v7;
  v29 = *v31;
  while (2)
  {
    for (i = 0; i != itemIdentifier; i = i + 1)
    {
      if (*v31 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v30 + 1) + 8 * i);
      item = [v12 item];
      if ([item persistentID])
      {
        v14 = [(MPMediaEntity *)v8 persistentID]!= 0;
      }

      else
      {
        v14 = 0;
      }

      item2 = [v12 item];
      playbackStoreID = [item2 playbackStoreID];
      if (playbackStoreID)
      {
        v17 = playbackStoreID;
        playbackStoreID2 = [(MPMediaItem *)v8 playbackStoreID];
        v19 = playbackStoreID2 != 0;

        if (!v14)
        {
          if (!playbackStoreID2)
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

      item3 = [v12 item];
      persistentID = [item3 persistentID];
      if (persistentID == [(MPMediaEntity *)v8 persistentID])
      {

LABEL_33:
        itemIdentifier = [v12 itemIdentifier];
        goto LABEL_34;
      }

      if (!v19)
      {

        continue;
      }

LABEL_19:
      item4 = [v12 item];
      playbackStoreID3 = [item4 playbackStoreID];
      playbackStoreID4 = [(MPMediaItem *)v8 playbackStoreID];
      v24 = [playbackStoreID3 isEqualToString:playbackStoreID4];

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

    itemIdentifier = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (itemIdentifier)
    {
      continue;
    }

    break;
  }

LABEL_34:
  self = selfCopy;
  v7 = v27;
LABEL_35:

  if (itemIdentifier)
  {
    goto LABEL_30;
  }

LABEL_31:
}

- (MPMusicPlayerControllerMutableQueue)initWithController:(id)controller
{
  v9.receiver = self;
  v9.super_class = MPMusicPlayerControllerMutableQueue;
  v3 = [(MPMusicPlayerControllerQueue *)&v9 initWithController:controller];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    removedItems = v3->_removedItems;
    v3->_removedItems = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    insertedDescriptors = v3->_insertedDescriptors;
    v3->_insertedDescriptors = dictionary;
  }

  return v3;
}

@end