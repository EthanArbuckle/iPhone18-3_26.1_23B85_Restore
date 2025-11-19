@interface AFTreeNode
+ (id)absoluteIndexPathsForTreeNodes:(id)a3;
- (AFTreeNode)init;
- (AFTreeNode)parentNode;
- (BOOL)containsNodeAtIndexPath:(id)a3;
- (id)absoluteIndexPath;
- (id)childNodeAtIndex:(int64_t)a3;
- (id)description;
- (id)indexPathFromAncestorNode:(id)a3;
- (id)indexPathOfNodeWithItem:(id)a3;
- (id)lastChildNode;
- (id)nodeAtIndexPath:(id)a3;
- (int64_t)indexOfChildNode:(id)a3;
- (int64_t)numberOfChildNodes;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)_appendDescriptionToString:(id)a3 withIndentation:(id)a4;
- (void)addChildNode:(id)a3;
- (void)enumerateChildNodesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateDescendentNodesUsingBlock:(id)a3;
- (void)insertChildNode:(id)a3 atIndex:(int64_t)a4;
- (void)removeChildNode:(id)a3;
- (void)removeChildNodeAtIndex:(int64_t)a3;
- (void)removeFromParentNode;
- (void)replaceChildNodeAtIndex:(int64_t)a3 withNode:(id)a4;
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
    v3 = [MEMORY[0x1E695DF70] array];
    childNodes = v2->_childNodes;
    v2->_childNodes = v3;
  }

  return v2;
}

- (void)removeFromParentNode
{
  v3 = [(AFTreeNode *)self parentNode];
  [v3 removeChildNode:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(AFTreeNode *)self _appendDescriptionToString:v3 withIndentation:&stru_1F0512680];

  return v3;
}

- (int64_t)numberOfChildNodes
{
  v2 = [(AFTreeNode *)self _childNodes];
  v3 = [v2 count];

  return v3;
}

- (id)absoluteIndexPath
{
  v3 = [(AFTreeNode *)self parentNode];

  if (v3)
  {
    v4 = [(AFTreeNode *)self parentNode];
    v5 = [v4 absoluteIndexPath];
    v6 = [(AFTreeNode *)self parentNode];
    v7 = [v5 indexPathByAddingIndex:{objc_msgSend(v6, "indexOfChildNode:", self)}];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AC88]);
  }

  return v7;
}

- (void)enumerateDescendentNodesUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = 0;
    v5 = objc_alloc_init(AFQueue);
    v6 = [(AFTreeNode *)self _childNodes];
    [(AFQueue *)v5 enqueueObjects:v6];

    do
    {
      v7 = [(AFQueue *)v5 frontObject];

      if (!v7)
      {
        break;
      }

      v8 = [(AFQueue *)v5 dequeueObject];
      if (v8 != self)
      {
        v4[2](v4, v8, &v10);
        v9 = [(AFTreeNode *)v8 _childNodes];
        [(AFQueue *)v5 enqueueObjects:v9];
      }
    }

    while (!v10);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(AFTreeNode *)self _childNodes];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (void)enumerateChildNodesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(AFTreeNode *)self _childNodes];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__AFTreeNode_enumerateChildNodesWithOptions_usingBlock___block_invoke;
    v8[3] = &unk_1E7343790;
    v9 = v6;
    [v7 enumerateObjectsWithOptions:a3 usingBlock:v8];
  }
}

- (void)replaceChildNodeAtIndex:(int64_t)a3 withNode:(id)a4
{
  v6 = a4;
  [(AFTreeNode *)self removeChildNodeAtIndex:a3];
  [(AFTreeNode *)self insertChildNode:v6 atIndex:a3];
}

- (void)removeChildNode:(id)a3
{
  v5 = a3;
  v6 = [(AFTreeNode *)self _childNodes];
  v7 = [v6 indexOfObject:v5];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"AFTreeNode.m" lineNumber:203 description:@"Cannot remove a child that we don't contain"];
  }

  [(AFTreeNode *)self removeChildNodeAtIndex:v7];
}

- (void)removeChildNodeAtIndex:(int64_t)a3
{
  v6 = [(AFTreeNode *)self _childNodes];
  v10 = [v6 objectAtIndex:a3];

  v7 = [v10 parentNode];

  if (v7 != self)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"AFTreeNode.m" lineNumber:194 description:@"Cannot remove a child if we're not its parent"];
  }

  v8 = [(AFTreeNode *)self _childNodes];
  [v8 removeObjectAtIndex:a3];

  [v10 _setParentNode:0];
}

- (void)addChildNode:(id)a3
{
  v4 = a3;
  v5 = [(AFTreeNode *)self _childNodes];
  -[AFTreeNode insertChildNode:atIndex:](self, "insertChildNode:atIndex:", v4, [v5 count]);
}

- (void)insertChildNode:(id)a3 atIndex:(int64_t)a4
{
  v7 = a3;
  if (v7 == self)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"AFTreeNode.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"child != self"}];
  }

  v8 = [MEMORY[0x1E695DFA8] setWithObject:self];
  v9 = [(AFTreeNode *)self parentNode];
  if (v9)
  {
    v10 = v9;
    do
    {
      [v8 addObject:v10];
      v11 = [v10 parentNode];

      v10 = v11;
    }

    while (v11);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__AFTreeNode_insertChildNode_atIndex___block_invoke;
  v15[3] = &unk_1E7343768;
  v17 = self;
  v18 = a2;
  v16 = v8;
  v12 = v8;
  [(AFTreeNode *)v7 enumerateDescendentNodesUsingBlock:v15];
  [(AFTreeNode *)v7 removeFromParentNode];
  v13 = [(AFTreeNode *)self _childNodes];
  [v13 insertObject:v7 atIndex:a4];

  [(AFTreeNode *)v7 _setParentNode:self];
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
  v2 = [(AFTreeNode *)self _childNodes];
  v3 = [v2 lastObject];

  return v3;
}

- (id)childNodeAtIndex:(int64_t)a3
{
  v4 = [(AFTreeNode *)self _childNodes];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (int64_t)indexOfChildNode:(id)a3
{
  v4 = a3;
  v5 = [(AFTreeNode *)self _childNodes];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)indexPathOfNodeWithItem:(id)a3
{
  v4 = a3;
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
  v5 = v4;
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

- (id)nodeAtIndexPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"AFTreeNode.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"relativeIndexPath"}];
  }

  v6 = self;
  if ([v5 length])
  {
    v7 = 0;
    do
    {
      v8 = -[AFTreeNode childNodeAtIndex:](v6, "childNodeAtIndex:", [v5 indexAtPosition:v7]);

      ++v7;
      v6 = v8;
    }

    while (v7 < [v5 length]);
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (BOOL)containsNodeAtIndexPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"AFTreeNode.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"relativeIndexPath"}];
  }

  v6 = self;
  if ([v5 length])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v5 indexAtPosition:v7];
      v9 = [(AFTreeNode *)v6 numberOfChildNodes];
      v10 = v8 < v9;
      if (v8 >= v9)
      {
        break;
      }

      v11 = [(AFTreeNode *)v6 childNodeAtIndex:v8];

      ++v7;
      v6 = v11;
      if (v7 >= [v5 length])
      {
        v10 = 1;
        v6 = v11;
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

- (id)indexPathFromAncestorNode:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AC88]);
  }

  else
  {
    v5 = [(AFTreeNode *)self parentNode];

    if (!v5)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot generate an index path relative to node %@, which isn't an ancestor", v4];
      v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
      v15 = v14;

      objc_exception_throw(v14);
    }

    v6 = [(AFTreeNode *)self parentNode];
    v7 = [v6 indexPathFromAncestorNode:v4];
    v8 = [(AFTreeNode *)self parentNode];
    v9 = [v7 indexPathByAddingIndex:{objc_msgSend(v8, "indexOfChildNode:", self)}];
  }

  return v9;
}

- (void)_appendDescriptionToString:(id)a3 withIndentation:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 appendString:v7];
  v8 = objc_opt_class();
  v9 = [(AFTreeNode *)self item];
  v10 = [(AFTreeNode *)self _childNodes];
  objc_msgSend(v6, "appendFormat:", @"<%@ %p: item=%@; %lu children=("), v8, self, v9, objc_msgSend(v10, "count");

  v11 = [(AFTreeNode *)self _childNodes];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v7 stringByAppendingString:@"  "];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self;
    v15 = [(AFTreeNode *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * v18);
          [v6 appendString:@"\n"];
          [v19 _appendDescriptionToString:v6 withIndentation:v13];
          ++v18;
        }

        while (v16 != v18);
        v16 = [(AFTreeNode *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [v6 appendString:v7];
    [v6 appendString:@"\n>"]);
  }

  else
  {
    [v6 appendString:@"none>"]);
  }

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)absoluteIndexPathsForTreeNodes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) absoluteIndexPath];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end