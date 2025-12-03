@interface AFTreeNode
+ (id)absoluteIndexPathsForTreeNodes:(id)nodes;
- (AFTreeNode)init;
- (AFTreeNode)parentNode;
- (BOOL)containsNodeAtIndexPath:(id)path;
- (id)absoluteIndexPath;
- (id)childNodeAtIndex:(int64_t)index;
- (id)description;
- (id)indexPathFromAncestorNode:(id)node;
- (id)indexPathOfNodeWithItem:(id)item;
- (id)lastChildNode;
- (id)nodeAtIndexPath:(id)path;
- (int64_t)indexOfChildNode:(id)node;
- (int64_t)numberOfChildNodes;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)_appendDescriptionToString:(id)string withIndentation:(id)indentation;
- (void)addChildNode:(id)node;
- (void)enumerateChildNodesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateDescendentNodesUsingBlock:(id)block;
- (void)insertChildNode:(id)node atIndex:(int64_t)index;
- (void)removeChildNode:(id)node;
- (void)removeChildNodeAtIndex:(int64_t)index;
- (void)removeFromParentNode;
- (void)replaceChildNodeAtIndex:(int64_t)index withNode:(id)node;
@end

@implementation AFTreeNode

- (AFTreeNode)parentNode
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNode);

  return WeakRetained;
}

- (AFTreeNode)init
{
  v6.receiver = self;
  v6.super_class = AFTreeNode;
  v2 = [(AFTreeNode *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    childNodes = v2->_childNodes;
    v2->_childNodes = array;
  }

  return v2;
}

- (void)removeFromParentNode
{
  parentNode = [(AFTreeNode *)self parentNode];
  [parentNode removeChildNode:self];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [(AFTreeNode *)self _appendDescriptionToString:string withIndentation:&stru_1F0512680];

  return string;
}

- (int64_t)numberOfChildNodes
{
  _childNodes = [(AFTreeNode *)self _childNodes];
  v3 = [_childNodes count];

  return v3;
}

- (id)absoluteIndexPath
{
  parentNode = [(AFTreeNode *)self parentNode];

  if (parentNode)
  {
    parentNode2 = [(AFTreeNode *)self parentNode];
    absoluteIndexPath = [parentNode2 absoluteIndexPath];
    parentNode3 = [(AFTreeNode *)self parentNode];
    v7 = [absoluteIndexPath indexPathByAddingIndex:{objc_msgSend(parentNode3, "indexOfChildNode:", self)}];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AC88]);
  }

  return v7;
}

- (void)enumerateDescendentNodesUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v10 = 0;
    v5 = objc_alloc_init(AFQueue);
    _childNodes = [(AFTreeNode *)self _childNodes];
    [(AFQueue *)v5 enqueueObjects:_childNodes];

    do
    {
      frontObject = [(AFQueue *)v5 frontObject];

      if (!frontObject)
      {
        break;
      }

      dequeueObject = [(AFQueue *)v5 dequeueObject];
      if (dequeueObject != self)
      {
        blockCopy[2](blockCopy, dequeueObject, &v10);
        _childNodes2 = [(AFTreeNode *)dequeueObject _childNodes];
        [(AFQueue *)v5 enqueueObjects:_childNodes2];
      }
    }

    while (!v10);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  _childNodes = [(AFTreeNode *)self _childNodes];
  v9 = [_childNodes countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (void)enumerateChildNodesWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    _childNodes = [(AFTreeNode *)self _childNodes];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__AFTreeNode_enumerateChildNodesWithOptions_usingBlock___block_invoke;
    v8[3] = &unk_1E7343790;
    v9 = blockCopy;
    [_childNodes enumerateObjectsWithOptions:options usingBlock:v8];
  }
}

- (void)replaceChildNodeAtIndex:(int64_t)index withNode:(id)node
{
  nodeCopy = node;
  [(AFTreeNode *)self removeChildNodeAtIndex:index];
  [(AFTreeNode *)self insertChildNode:nodeCopy atIndex:index];
}

- (void)removeChildNode:(id)node
{
  nodeCopy = node;
  _childNodes = [(AFTreeNode *)self _childNodes];
  v7 = [_childNodes indexOfObject:nodeCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFTreeNode.m" lineNumber:203 description:@"Cannot remove a child that we don't contain"];
  }

  [(AFTreeNode *)self removeChildNodeAtIndex:v7];
}

- (void)removeChildNodeAtIndex:(int64_t)index
{
  _childNodes = [(AFTreeNode *)self _childNodes];
  v10 = [_childNodes objectAtIndex:index];

  parentNode = [v10 parentNode];

  if (parentNode != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFTreeNode.m" lineNumber:194 description:@"Cannot remove a child if we're not its parent"];
  }

  _childNodes2 = [(AFTreeNode *)self _childNodes];
  [_childNodes2 removeObjectAtIndex:index];

  [v10 _setParentNode:0];
}

- (void)addChildNode:(id)node
{
  nodeCopy = node;
  _childNodes = [(AFTreeNode *)self _childNodes];
  -[AFTreeNode insertChildNode:atIndex:](self, "insertChildNode:atIndex:", nodeCopy, [_childNodes count]);
}

- (void)insertChildNode:(id)node atIndex:(int64_t)index
{
  nodeCopy = node;
  if (nodeCopy == self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFTreeNode.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"child != self"}];
  }

  v8 = [MEMORY[0x1E695DFA8] setWithObject:self];
  parentNode = [(AFTreeNode *)self parentNode];
  if (parentNode)
  {
    v10 = parentNode;
    do
    {
      [v8 addObject:v10];
      parentNode2 = [v10 parentNode];

      v10 = parentNode2;
    }

    while (parentNode2);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__AFTreeNode_insertChildNode_atIndex___block_invoke;
  v15[3] = &unk_1E7343768;
  selfCopy = self;
  v18 = a2;
  v16 = v8;
  v12 = v8;
  [(AFTreeNode *)nodeCopy enumerateDescendentNodesUsingBlock:v15];
  [(AFTreeNode *)nodeCopy removeFromParentNode];
  _childNodes = [(AFTreeNode *)self _childNodes];
  [_childNodes insertObject:nodeCopy atIndex:index];

  [(AFTreeNode *)nodeCopy _setParentNode:self];
}

void __38__AFTreeNode_insertChildNode_atIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) containsObject:a2])
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"AFTreeNode.m" lineNumber:178 description:@"Attempt to create cycle"];
  }
}

- (id)lastChildNode
{
  _childNodes = [(AFTreeNode *)self _childNodes];
  lastObject = [_childNodes lastObject];

  return lastObject;
}

- (id)childNodeAtIndex:(int64_t)index
{
  _childNodes = [(AFTreeNode *)self _childNodes];
  v5 = [_childNodes objectAtIndex:index];

  return v5;
}

- (int64_t)indexOfChildNode:(id)node
{
  nodeCopy = node;
  _childNodes = [(AFTreeNode *)self _childNodes];
  v6 = [_childNodes indexOfObject:nodeCopy];

  return v6;
}

- (id)indexPathOfNodeWithItem:(id)item
{
  itemCopy = item;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10684;
  v20 = __Block_byref_object_dispose__10685;
  v21 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__AFTreeNode_indexPathOfNodeWithItem___block_invoke;
  v14[3] = &unk_1E7343718;
  v5 = itemCopy;
  v15 = v5;
  v6 = MEMORY[0x193AFB7B0](v14);
  if ((v6)[2](v6, self))
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AC88]);
    v8 = v17[5];
    v17[5] = v7;
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__AFTreeNode_indexPathOfNodeWithItem___block_invoke_2;
    v11[3] = &unk_1E7343740;
    v12 = v6;
    v13 = &v16;
    v11[4] = self;
    [(AFTreeNode *)self enumerateDescendentNodesUsingBlock:v11];
    v8 = v12;
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

uint64_t __38__AFTreeNode_indexPathOfNodeWithItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 item];
  if (v4 == *(a1 + 32))
  {
    v6 = 1;
  }

  else
  {
    v5 = [v3 item];
    v6 = [v5 isEqual:*(a1 + 32)];
  }

  return v6;
}

void __38__AFTreeNode_indexPathOfNodeWithItem___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if ((*(a1[5] + 16))())
  {
    v5 = [v8 indexPathFromAncestorNode:a1[4]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *a3 = 1;
  }
}

- (id)nodeAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFTreeNode.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"relativeIndexPath"}];
  }

  selfCopy = self;
  if ([pathCopy length])
  {
    v7 = 0;
    do
    {
      v8 = -[AFTreeNode childNodeAtIndex:](selfCopy, "childNodeAtIndex:", [pathCopy indexAtPosition:v7]);

      ++v7;
      selfCopy = v8;
    }

    while (v7 < [pathCopy length]);
  }

  else
  {
    v8 = selfCopy;
  }

  return v8;
}

- (BOOL)containsNodeAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFTreeNode.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"relativeIndexPath"}];
  }

  selfCopy = self;
  if ([pathCopy length])
  {
    v7 = 0;
    while (1)
    {
      v8 = [pathCopy indexAtPosition:v7];
      numberOfChildNodes = [(AFTreeNode *)selfCopy numberOfChildNodes];
      v10 = v8 < numberOfChildNodes;
      if (v8 >= numberOfChildNodes)
      {
        break;
      }

      v11 = [(AFTreeNode *)selfCopy childNodeAtIndex:v8];

      ++v7;
      selfCopy = v11;
      if (v7 >= [pathCopy length])
      {
        v10 = 1;
        selfCopy = v11;
        break;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)indexPathFromAncestorNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AC88]);
  }

  else
  {
    parentNode = [(AFTreeNode *)self parentNode];

    if (!parentNode)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      nodeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot generate an index path relative to node %@, which isn't an ancestor", nodeCopy];
      v14 = [v11 exceptionWithName:v12 reason:nodeCopy userInfo:0];
      v15 = v14;

      objc_exception_throw(v14);
    }

    parentNode2 = [(AFTreeNode *)self parentNode];
    v7 = [parentNode2 indexPathFromAncestorNode:nodeCopy];
    parentNode3 = [(AFTreeNode *)self parentNode];
    v9 = [v7 indexPathByAddingIndex:{objc_msgSend(parentNode3, "indexOfChildNode:", self)}];
  }

  return v9;
}

- (void)_appendDescriptionToString:(id)string withIndentation:(id)indentation
{
  v26 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  indentationCopy = indentation;
  [stringCopy appendString:indentationCopy];
  v8 = objc_opt_class();
  item = [(AFTreeNode *)self item];
  _childNodes = [(AFTreeNode *)self _childNodes];
  objc_msgSend(stringCopy, "appendFormat:", @"<%@ %p: item=%@; %lu children=("), v8, self, item, objc_msgSend(_childNodes, "count");

  _childNodes2 = [(AFTreeNode *)self _childNodes];
  v12 = [_childNodes2 count];

  if (v12)
  {
    v13 = [indentationCopy stringByAppendingString:@"  "];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    selfCopy = self;
    v15 = [(AFTreeNode *)selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(selfCopy);
          }

          v19 = *(*(&v21 + 1) + 8 * v18);
          [stringCopy appendString:@"\n"];
          [v19 _appendDescriptionToString:stringCopy withIndentation:v13];
          ++v18;
        }

        while (v16 != v18);
        v16 = [(AFTreeNode *)selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [stringCopy appendString:indentationCopy];
    [stringCopy appendString:@"\n>"]);
  }

  else
  {
    [stringCopy appendString:@"none>"]);
  }

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)absoluteIndexPathsForTreeNodes:(id)nodes
{
  v18 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(nodesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = nodesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        absoluteIndexPath = [*(*(&v13 + 1) + 8 * i) absoluteIndexPath];
        [v4 addObject:absoluteIndexPath];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end