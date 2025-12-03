@interface PHCollectionListAncestryContext
- (PHCollectionListAncestryContext)initWithCollectionLists:(id)lists;
- (id)folderForID:(id)d;
@end

@implementation PHCollectionListAncestryContext

- (id)folderForID:(id)d
{
  if (d)
  {
    v4 = [(NSMutableDictionary *)self->_collectionListsByOID objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PHCollectionListAncestryContext)initWithCollectionLists:(id)lists
{
  v24 = *MEMORY[0x1E69E9840];
  listsCopy = lists;
  v22.receiver = self;
  v22.super_class = PHCollectionListAncestryContext;
  v6 = [(PHCollectionListAncestryContext *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_allCollectionLists, lists);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    collectionListsByOID = v7->_collectionListsByOID;
    v7->_collectionListsByOID = v8;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v7->_allCollectionLists;
    v11 = [(NSFastEnumeration *)v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          objectID = [v15 objectID];
          if (objectID)
          {
            [(NSMutableDictionary *)v7->_collectionListsByOID setObject:v15 forKeyedSubscript:objectID];
          }
        }

        v12 = [(NSFastEnumeration *)v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

@end