@interface VSTreeNode
+ (id)keyPathsForValuesAffectingIndexPath;
+ (id)keyPathsForValuesAffectingLeaf;
+ (id)treeNodeWithRepresentedObject:(id)object;
- (BOOL)isLeaf;
- (NSIndexPath)indexPath;
- (VSTreeNode)initWithRepresentedObject:(id)object;
- (VSTreeNode)parentNode;
- (id)_descendantNodesAtDepth:(unint64_t)depth;
- (id)descendantNodeAtIndexPath:(id)path;
- (void)enumerateDescendantsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)insertChildNodes:(id)nodes atIndexes:(id)indexes;
- (void)removeChildNodesAtIndexes:(id)indexes;
@end

@implementation VSTreeNode

+ (id)treeNodeWithRepresentedObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithRepresentedObject:objectCopy];

  return v5;
}

- (VSTreeNode)initWithRepresentedObject:(id)object
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = VSTreeNode;
  v6 = [(VSTreeNode *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_representedObject, object);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    children = v7->_children;
    v7->_children = v8;
  }

  return v7;
}

+ (id)keyPathsForValuesAffectingIndexPath
{
  if (keyPathsForValuesAffectingIndexPath___vs_lazy_init_predicate != -1)
  {
    +[VSTreeNode keyPathsForValuesAffectingIndexPath];
  }

  v3 = keyPathsForValuesAffectingIndexPath___vs_lazy_init_variable;

  return v3;
}

uint64_t __49__VSTreeNode_keyPathsForValuesAffectingIndexPath__block_invoke()
{
  keyPathsForValuesAffectingIndexPath___vs_lazy_init_variable = __49__VSTreeNode_keyPathsForValuesAffectingIndexPath__block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __49__VSTreeNode_keyPathsForValuesAffectingIndexPath__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v0 addObject:@"parentNode.indexPath"];
  v1 = [v0 copy];

  return v1;
}

- (NSIndexPath)indexPath
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA70]);
  parentNode = [(VSTreeNode *)self parentNode];
  v5 = parentNode;
  if (parentNode)
  {
    childNodes = [parentNode childNodes];
    indexPath = [v5 indexPath];
    v8 = [indexPath indexPathByAddingIndex:{objc_msgSend(childNodes, "indexOfObject:", self)}];

    v3 = v8;
  }

  return v3;
}

+ (id)keyPathsForValuesAffectingLeaf
{
  if (keyPathsForValuesAffectingLeaf___vs_lazy_init_predicate != -1)
  {
    +[VSTreeNode keyPathsForValuesAffectingLeaf];
  }

  v3 = keyPathsForValuesAffectingLeaf___vs_lazy_init_variable;

  return v3;
}

uint64_t __44__VSTreeNode_keyPathsForValuesAffectingLeaf__block_invoke()
{
  keyPathsForValuesAffectingLeaf___vs_lazy_init_variable = __44__VSTreeNode_keyPathsForValuesAffectingLeaf__block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __44__VSTreeNode_keyPathsForValuesAffectingLeaf__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v0 addObject:@"childNodes"];
  v1 = [v0 copy];

  return v1;
}

- (BOOL)isLeaf
{
  childNodes = [(VSTreeNode *)self childNodes];
  v3 = [childNodes count];

  return v3 == 0;
}

- (void)insertChildNodes:(id)nodes atIndexes:(id)indexes
{
  nodesCopy = nodes;
  indexesCopy = indexes;
  if (nodesCopy)
  {
    if (indexesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The insertedChildren parameter must not be nil."];
    if (indexesCopy)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The indexes parameter must not be nil."];
LABEL_3:
  [nodesCopy makeObjectsPerformSelector:sel_setParentNode_ withObject:self];
  children = [(VSTreeNode *)self children];
  [children insertObjects:nodesCopy atIndexes:indexesCopy];
}

- (void)removeChildNodesAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  if (!indexesCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The indexes parameter must not be nil."];
  }

  children = [(VSTreeNode *)self children];
  v5 = [children objectsAtIndexes:indexesCopy];
  [v5 makeObjectsPerformSelector:sel_setParentNode_ withObject:0];
  [children removeObjectsAtIndexes:indexesCopy];
}

- (id)descendantNodeAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The indexPath parameter must not be nil."];
  }

  selfCopy = self;
  v6 = [pathCopy length];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      childNodes = [(VSTreeNode *)selfCopy childNodes];
      v10 = [pathCopy indexAtPosition:v8];
      if (v10 >= [childNodes count])
      {
        break;
      }

      v11 = [childNodes objectAtIndex:v10];

      ++v8;
      selfCopy = v11;
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    v11 = 0;
  }

  else
  {
    v11 = selfCopy;
  }

LABEL_10:

  return v11;
}

- (VSTreeNode)parentNode
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNode);

  return WeakRetained;
}

- (id)_descendantNodesAtDepth:(unint64_t)depth
{
  v20 = *MEMORY[0x277D85DE8];
  if (depth)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    childNodes = [(VSTreeNode *)self childNodes];
    v7 = [childNodes countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = depth - 1;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(childNodes);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) _descendantNodesAtDepth:v9];
          [v5 addObjectsFromArray:v12];
        }

        v8 = [childNodes countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    childNodes2 = [v5 copy];
    if (!childNodes2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    childNodes2 = [(VSTreeNode *)self childNodes];
    if (!childNodes2)
    {
LABEL_10:
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The collectedDescendants parameter must not be nil."];
    }
  }

  return childNodes2;
}

- (void)enumerateDescendantsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    if ((options & 1) == 0)
    {
LABEL_3:
      v28 = 0;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      childNodes = [(VSTreeNode *)self childNodes];
      v8 = [childNodes countByEnumeratingWithState:&v20 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
LABEL_5:
        v11 = 0;
        while (1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(childNodes);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          blockCopy[2](blockCopy, v12, &v28);
          if (v28)
          {
            break;
          }

          [v12 enumerateDescendantsWithOptions:options usingBlock:blockCopy];
          if (v28)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [childNodes countByEnumeratingWithState:&v20 objects:v29 count:16];
            if (v9)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The block parameter must not be nil."];
    if ((options & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v14 = 0;
  v28 = 0;
  do
  {
    v15 = [(VSTreeNode *)self _descendantNodesAtDepth:v13];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v15;
    v16 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
LABEL_17:
      v19 = 0;
      while (1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v14);
        }

        blockCopy[2](blockCopy, *(*(&v24 + 1) + 8 * v19), &v28);
        if (v28)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
          if (v17)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }

    if (v28)
    {
      break;
    }

    ++v13;
  }

  while ([v14 count]);

LABEL_26:
}

@end