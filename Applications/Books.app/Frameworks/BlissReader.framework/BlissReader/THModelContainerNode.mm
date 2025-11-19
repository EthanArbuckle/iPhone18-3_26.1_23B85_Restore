@interface THModelContainerNode
- (BOOL)enumerateSubtreeUsingBlock:(id)a3;
- (NSArray)childNodes;
- (THModelContainerNode)initWithTitle:(id)a3 includeInTOC:(BOOL)a4 context:(id)a5;
- (id)contentNodeAfterContentNode:(id)a3;
- (id)contentNodeForRelativePageIndex:(unint64_t)a3 forPresentationType:(id)a4;
- (id)nodeAfterNode:(id)a3;
- (id)nodeAtIndex:(unint64_t)a3;
- (id)nodeBeforeNode:(id)a3;
- (id)pageAtRelativeIndex:(unint64_t)a3 forPresentationType:(id)a4;
- (unint64_t)count;
- (unint64_t)indexOfNode:(id)a3;
- (unint64_t)pageCountForPresentationType:(id)a3;
- (unint64_t)removeNode:(id)a3;
- (void)addMappingFromGUIDToNodeToDictionary:(id)a3;
- (void)addNode:(id)a3;
- (void)dealloc;
- (void)insertNode:(id)a3 atIndex:(unint64_t)a4;
- (void)removeNodeAtIndex:(unint64_t)a3;
- (void)setChildren:(id)a3;
@end

@implementation THModelContainerNode

- (void)setChildren:(id)a3
{
  [(THModelContainerNode *)self willModify];
  v5 = a3;

  self->mChildren = a3;
}

- (THModelContainerNode)initWithTitle:(id)a3 includeInTOC:(BOOL)a4 context:(id)a5
{
  v7.receiver = self;
  v7.super_class = THModelContainerNode;
  v5 = [(THModelNode *)&v7 initWithTitle:a3 includeInTOC:a4 context:a5];
  if (v5)
  {
    [(THModelContainerNode *)v5 setChildren:+[NSMutableArray array]];
  }

  return v5;
}

- (void)dealloc
{
  self->mChildren = 0;

  self->mPublicationContext = 0;
  self->mApplePubURL = 0;
  v3.receiver = self;
  v3.super_class = THModelContainerNode;
  [(THModelNode *)&v3 dealloc];
}

- (unint64_t)pageCountForPresentationType:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(THModelContainerNode *)self children];
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v13;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = [*(*(&v12 + 1) + 8 * i) pageCountForPresentationType:a3];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v7 += v10;
    }

    v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

  return v7;
}

- (id)pageAtRelativeIndex:(unint64_t)a3 forPresentationType:(id)a4
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    return 0;
  }

  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(THModelContainerNode *)self children];
  result = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v15;
LABEL_6:
    v10 = 0;
    v11 = v6;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v14 + 1) + 8 * v10);
      v13 = [v12 pageCountForPresentationType:a4];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      v6 = v11 - v13;
      if (v11 < v13)
      {
        return [v12 pageAtRelativeIndex:v11 forPresentationType:a4];
      }

      v10 = v10 + 1;
      v11 -= v13;
      if (v8 == v10)
      {
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        result = 0;
        if (v8)
        {
          goto LABEL_6;
        }

        return result;
      }
    }
  }

  return result;
}

- (id)contentNodeForRelativePageIndex:(unint64_t)a3 forPresentationType:(id)a4
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    return 0;
  }

  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(THModelContainerNode *)self children];
  result = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v15;
LABEL_6:
    v10 = 0;
    v11 = v6;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v14 + 1) + 8 * v10);
      v13 = [v12 pageCountForPresentationType:a4];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      v6 = v11 - v13;
      if (v11 < v13)
      {
        return [v12 contentNodeForRelativePageIndex:v11 forPresentationType:a4];
      }

      v10 = v10 + 1;
      v11 -= v13;
      if (v8 == v10)
      {
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        result = 0;
        if (v8)
        {
          goto LABEL_6;
        }

        return result;
      }
    }
  }

  return result;
}

- (void)addMappingFromGUIDToNodeToDictionary:(id)a3
{
  v14.receiver = self;
  v14.super_class = THModelContainerNode;
  [(THModelNode *)&v14 addMappingFromGUIDToNodeToDictionary:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(THModelContainerNode *)self children];
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) addMappingFromGUIDToNodeToDictionary:a3];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (NSArray)childNodes
{
  v2 = [(THModelContainerNode *)self children];

  return [NSArray arrayWithArray:v2];
}

- (void)addNode:(id)a3
{
  [(NSMutableArray *)[(THModelContainerNode *)self children] addObject:a3];

  [a3 setParent:self];
}

- (void)insertNode:(id)a3 atIndex:(unint64_t)a4
{
  [(NSMutableArray *)[(THModelContainerNode *)self children] insertObject:a3 atIndex:a4];

  [a3 setParent:self];
}

- (void)removeNodeAtIndex:(unint64_t)a3
{
  [-[NSMutableArray objectAtIndex:](-[THModelContainerNode children](self "children")];
  v5 = [(THModelContainerNode *)self children];

  [(NSMutableArray *)v5 removeObjectAtIndex:a3];
}

- (unint64_t)removeNode:(id)a3
{
  v5 = [(NSMutableArray *)[(THModelContainerNode *)self children] indexOfObject:a3];
  [a3 setParent:0];
  [(NSMutableArray *)[(THModelContainerNode *)self children] removeObject:a3];
  return v5;
}

- (unint64_t)count
{
  v2 = [(THModelContainerNode *)self children];

  return [(NSMutableArray *)v2 count];
}

- (id)nodeAtIndex:(unint64_t)a3
{
  v4 = [(THModelContainerNode *)self children];

  return [(NSMutableArray *)v4 objectAtIndex:a3];
}

- (id)nodeAfterNode:(id)a3
{
  v4 = [(NSMutableArray *)[(THModelContainerNode *)self children] indexOfObject:a3]+ 1;
  if ([(NSMutableArray *)[(THModelContainerNode *)self children] count]<= v4)
  {
    return 0;
  }

  v5 = [(THModelContainerNode *)self children];

  return [(NSMutableArray *)v5 objectAtIndex:v4];
}

- (id)nodeBeforeNode:(id)a3
{
  result = [(NSMutableArray *)[(THModelContainerNode *)self children] indexOfObject:a3];
  if (result)
  {
    v5 = result;
    v6 = [(THModelContainerNode *)self children];

    return [(NSMutableArray *)v6 objectAtIndex:v5 - 1];
  }

  return result;
}

- (unint64_t)indexOfNode:(id)a3
{
  v4 = [(THModelContainerNode *)self children];

  return [(NSMutableArray *)v4 indexOfObject:a3];
}

- (id)contentNodeAfterContentNode:(id)a3
{
  if ([(THModelContainerNode *)self nodeAfterNode:a3])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }
  }

  objc_opt_class();

  return TSUDynamicCast();
}

- (BOOL)enumerateSubtreeUsingBlock:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11[0] = 0;
  (*(a3 + 2))(a3, self, 0, v11);
  if (v9[3])
  {
    v5 = 1;
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_32F94;
    v7[3] = &unk_45B740;
    v7[4] = a3;
    v7[5] = &v8;
    [(NSMutableArray *)[(THModelContainerNode *)self children] enumerateObjectsUsingBlock:v7];
    v5 = *(v9 + 24);
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

@end