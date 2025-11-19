@interface HomeStorage
- (HomeStorage)init;
- (id)_storageNodeForExpandedIdentifierPaths:(id)a3;
- (id)expandedIdentifierPathsInSection:(id)a3 defaultExpandedIdentifierPaths:(id)a4;
- (void)_loadFromUserDefaults;
- (void)_visitAllNodesWithBlock:(id)a3;
- (void)_visitNode:(id)a3 identifierPath:(id)a4 block:(id)a5;
- (void)_writeToUserDefaults;
- (void)storeExpandedIdentifierPaths:(id)a3 forSection:(id)a4;
@end

@implementation HomeStorage

- (id)_storageNodeForExpandedIdentifierPaths:(id)a3
{
  v4 = a3;
  v5 = +[IdentifierPath identifierPath];
  v21 = [v4 containsObject:v5];

  v6 = +[NSMutableDictionary dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 firstIdentifier];
        if (v13)
        {
          v14 = [v6 objectForKeyedSubscript:v13];
          if (!v14)
          {
            v14 = +[NSMutableSet set];
            [v6 setObject:v14 forKeyedSubscript:v13];
          }

          v15 = [v12 identifierPathByRemovingFirstIdentifier];
          [v14 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100C6E9D8;
  v22[3] = &unk_10164F4A8;
  v23 = v22[4] = self;
  v16 = v23;
  [v6 enumerateKeysAndObjectsUsingBlock:v22];
  v17 = [HomeStorageOutlineNode alloc];
  if (v21)
  {
    v18 = &__kCFBooleanTrue;
  }

  else
  {
    v18 = &__kCFBooleanFalse;
  }

  v19 = [(HomeStorageOutlineNode *)v17 initWithExpandedValue:v18 children:v16];

  return v19;
}

- (void)storeExpandedIdentifierPaths:(id)a3 forSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [IdentifierPath identifierPathWithIdentifier:v7];
  v9 = +[NSMutableSet set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        if ([v15 hasPrefix:{v8, v27}])
        {
          v16 = [v15 identifierPathByRemovingFirstIdentifier];
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v12);
  }

  v17 = [(HomeStorage *)self _storageNodeForExpandedIdentifierPaths:v9];
  rootNode = self->_rootNode;
  if (rootNode)
  {
    v19 = [(HomeStorageOutlineNode *)rootNode children];
    v20 = [NSMutableDictionary dictionaryWithDictionary:v19];

    [v20 setObject:v17 forKeyedSubscript:v7];
    v21 = [HomeStorageOutlineNode alloc];
    v22 = [(HomeStorageOutlineNode *)self->_rootNode expandedValue];
    v23 = [(HomeStorageOutlineNode *)v21 initWithExpandedValue:v22 children:v20];
    v24 = self->_rootNode;
    self->_rootNode = v23;
  }

  else
  {
    v25 = [HomeStorageOutlineNode alloc];
    v31 = v7;
    v32 = v17;
    v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v26 = [(HomeStorageOutlineNode *)v25 initWithExpandedValue:0 children:v20];
    v22 = self->_rootNode;
    self->_rootNode = v26;
  }

  [(HomeStorage *)self _writeToUserDefaults];
}

- (id)expandedIdentifierPathsInSection:(id)a3 defaultExpandedIdentifierPaths:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_rootNode)
  {
    v8 = [IdentifierPath identifierPathWithIdentifier:a3];
    [NSMutableSet setWithSet:v7];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100C6EDE0;
    v16 = &unk_10164F480;
    v18 = v17 = v8;
    v9 = v18;
    v10 = v8;
    [(HomeStorage *)self _visitAllNodesWithBlock:&v13];
    v11 = [v9 copy];
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

- (void)_visitNode:(id)a3 identifierPath:(id)a4 block:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9[2];
  v11 = a3;
  v10(v9, v11, v8);
  v12 = [v11 children];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100C6EF9C;
  v15[3] = &unk_10164F458;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  [v12 enumerateKeysAndObjectsUsingBlock:v15];
}

- (void)_visitAllNodesWithBlock:(id)a3
{
  rootNode = self->_rootNode;
  if (rootNode)
  {
    v5 = a3;
    v6 = +[IdentifierPath identifierPath];
    [(HomeStorage *)self _visitNode:rootNode identifierPath:v6 block:v5];
  }
}

- (void)_writeToUserDefaults
{
  rootNode = self->_rootNode;
  if (rootNode)
  {
    v4 = [(HomeStorageOutlineNode *)rootNode dictionaryRepresentation];
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setObject:v4 forKey:@"SidebarOutlineState"];
  }
}

- (void)_loadFromUserDefaults
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v6 = [v3 dictionaryForKey:@"SidebarOutlineState"];

  if (v6)
  {
    v4 = [[HomeStorageOutlineNode alloc] initWithDictionaryRepresentation:v6];
    rootNode = self->_rootNode;
    self->_rootNode = v4;
  }
}

- (HomeStorage)init
{
  v5.receiver = self;
  v5.super_class = HomeStorage;
  v2 = [(HomeStorage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HomeStorage *)v2 _loadFromUserDefaults];
  }

  return v3;
}

@end