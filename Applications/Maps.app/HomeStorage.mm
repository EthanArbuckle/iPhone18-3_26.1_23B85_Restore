@interface HomeStorage
- (HomeStorage)init;
- (id)_storageNodeForExpandedIdentifierPaths:(id)paths;
- (id)expandedIdentifierPathsInSection:(id)section defaultExpandedIdentifierPaths:(id)paths;
- (void)_loadFromUserDefaults;
- (void)_visitAllNodesWithBlock:(id)block;
- (void)_visitNode:(id)node identifierPath:(id)path block:(id)block;
- (void)_writeToUserDefaults;
- (void)storeExpandedIdentifierPaths:(id)paths forSection:(id)section;
@end

@implementation HomeStorage

- (id)_storageNodeForExpandedIdentifierPaths:(id)paths
{
  pathsCopy = paths;
  v5 = +[IdentifierPath identifierPath];
  v21 = [pathsCopy containsObject:v5];

  v6 = +[NSMutableDictionary dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = pathsCopy;
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
        firstIdentifier = [v12 firstIdentifier];
        if (firstIdentifier)
        {
          v14 = [v6 objectForKeyedSubscript:firstIdentifier];
          if (!v14)
          {
            v14 = +[NSMutableSet set];
            [v6 setObject:v14 forKeyedSubscript:firstIdentifier];
          }

          identifierPathByRemovingFirstIdentifier = [v12 identifierPathByRemovingFirstIdentifier];
          [v14 addObject:identifierPathByRemovingFirstIdentifier];
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

- (void)storeExpandedIdentifierPaths:(id)paths forSection:(id)section
{
  pathsCopy = paths;
  sectionCopy = section;
  v8 = [IdentifierPath identifierPathWithIdentifier:sectionCopy];
  v9 = +[NSMutableSet set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = pathsCopy;
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
          identifierPathByRemovingFirstIdentifier = [v15 identifierPathByRemovingFirstIdentifier];
          [v9 addObject:identifierPathByRemovingFirstIdentifier];
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
    children = [(HomeStorageOutlineNode *)rootNode children];
    v20 = [NSMutableDictionary dictionaryWithDictionary:children];

    [v20 setObject:v17 forKeyedSubscript:sectionCopy];
    v21 = [HomeStorageOutlineNode alloc];
    expandedValue = [(HomeStorageOutlineNode *)self->_rootNode expandedValue];
    v23 = [(HomeStorageOutlineNode *)v21 initWithExpandedValue:expandedValue children:v20];
    v24 = self->_rootNode;
    self->_rootNode = v23;
  }

  else
  {
    v25 = [HomeStorageOutlineNode alloc];
    v31 = sectionCopy;
    v32 = v17;
    v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v26 = [(HomeStorageOutlineNode *)v25 initWithExpandedValue:0 children:v20];
    expandedValue = self->_rootNode;
    self->_rootNode = v26;
  }

  [(HomeStorage *)self _writeToUserDefaults];
}

- (id)expandedIdentifierPathsInSection:(id)section defaultExpandedIdentifierPaths:(id)paths
{
  pathsCopy = paths;
  v7 = pathsCopy;
  if (self->_rootNode)
  {
    v8 = [IdentifierPath identifierPathWithIdentifier:section];
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
    v11 = pathsCopy;
  }

  return v11;
}

- (void)_visitNode:(id)node identifierPath:(id)path block:(id)block
{
  pathCopy = path;
  blockCopy = block;
  v10 = blockCopy[2];
  nodeCopy = node;
  v10(blockCopy, nodeCopy, pathCopy);
  children = [nodeCopy children];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100C6EF9C;
  v15[3] = &unk_10164F458;
  v15[4] = self;
  v16 = pathCopy;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = pathCopy;
  [children enumerateKeysAndObjectsUsingBlock:v15];
}

- (void)_visitAllNodesWithBlock:(id)block
{
  rootNode = self->_rootNode;
  if (rootNode)
  {
    blockCopy = block;
    v6 = +[IdentifierPath identifierPath];
    [(HomeStorage *)self _visitNode:rootNode identifierPath:v6 block:blockCopy];
  }
}

- (void)_writeToUserDefaults
{
  rootNode = self->_rootNode;
  if (rootNode)
  {
    dictionaryRepresentation = [(HomeStorageOutlineNode *)rootNode dictionaryRepresentation];
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setObject:dictionaryRepresentation forKey:@"SidebarOutlineState"];
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