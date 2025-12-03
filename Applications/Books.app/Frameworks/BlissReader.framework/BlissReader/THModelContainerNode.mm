@interface THModelContainerNode
- (BOOL)enumerateSubtreeUsingBlock:(id)block;
- (NSArray)childNodes;
- (THModelContainerNode)initWithTitle:(id)title includeInTOC:(BOOL)c context:(id)context;
- (id)contentNodeAfterContentNode:(id)node;
- (id)contentNodeForRelativePageIndex:(unint64_t)index forPresentationType:(id)type;
- (id)nodeAfterNode:(id)node;
- (id)nodeAtIndex:(unint64_t)index;
- (id)nodeBeforeNode:(id)node;
- (id)pageAtRelativeIndex:(unint64_t)index forPresentationType:(id)type;
- (unint64_t)count;
- (unint64_t)indexOfNode:(id)node;
- (unint64_t)pageCountForPresentationType:(id)type;
- (unint64_t)removeNode:(id)node;
- (void)addMappingFromGUIDToNodeToDictionary:(id)dictionary;
- (void)addNode:(id)node;
- (void)dealloc;
- (void)insertNode:(id)node atIndex:(unint64_t)index;
- (void)removeNodeAtIndex:(unint64_t)index;
- (void)setChildren:(id)children;
@end

@implementation THModelContainerNode

- (void)setChildren:(id)children
{
  [(THModelContainerNode *)self willModify];
  childrenCopy = children;

  self->mChildren = children;
}

- (THModelContainerNode)initWithTitle:(id)title includeInTOC:(BOOL)c context:(id)context
{
  v7.receiver = self;
  v7.super_class = THModelContainerNode;
  v5 = [(THModelNode *)&v7 initWithTitle:title includeInTOC:c context:context];
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

- (unint64_t)pageCountForPresentationType:(id)type
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(THModelContainerNode *)self children];
  v5 = [(NSMutableArray *)children countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(children);
      }

      v10 = [*(*(&v12 + 1) + 8 * i) pageCountForPresentationType:type];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v7 += v10;
    }

    v6 = [(NSMutableArray *)children countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

  return v7;
}

- (id)pageAtRelativeIndex:(unint64_t)index forPresentationType:(id)type
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    return 0;
  }

  indexCopy = index;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(THModelContainerNode *)self children];
  result = [(NSMutableArray *)children countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v15;
LABEL_6:
    v10 = 0;
    v11 = indexCopy;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(children);
      }

      v12 = *(*(&v14 + 1) + 8 * v10);
      v13 = [v12 pageCountForPresentationType:type];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      indexCopy = v11 - v13;
      if (v11 < v13)
      {
        return [v12 pageAtRelativeIndex:v11 forPresentationType:type];
      }

      v10 = v10 + 1;
      v11 -= v13;
      if (v8 == v10)
      {
        v8 = [(NSMutableArray *)children countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)contentNodeForRelativePageIndex:(unint64_t)index forPresentationType:(id)type
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    return 0;
  }

  indexCopy = index;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(THModelContainerNode *)self children];
  result = [(NSMutableArray *)children countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v15;
LABEL_6:
    v10 = 0;
    v11 = indexCopy;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(children);
      }

      v12 = *(*(&v14 + 1) + 8 * v10);
      v13 = [v12 pageCountForPresentationType:type];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      indexCopy = v11 - v13;
      if (v11 < v13)
      {
        return [v12 contentNodeForRelativePageIndex:v11 forPresentationType:type];
      }

      v10 = v10 + 1;
      v11 -= v13;
      if (v8 == v10)
      {
        v8 = [(NSMutableArray *)children countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)addMappingFromGUIDToNodeToDictionary:(id)dictionary
{
  v14.receiver = self;
  v14.super_class = THModelContainerNode;
  [(THModelNode *)&v14 addMappingFromGUIDToNodeToDictionary:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  children = [(THModelContainerNode *)self children];
  v6 = [(NSMutableArray *)children countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(children);
        }

        [*(*(&v10 + 1) + 8 * v9) addMappingFromGUIDToNodeToDictionary:dictionary];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)children countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (NSArray)childNodes
{
  children = [(THModelContainerNode *)self children];

  return [NSArray arrayWithArray:children];
}

- (void)addNode:(id)node
{
  [(NSMutableArray *)[(THModelContainerNode *)self children] addObject:node];

  [node setParent:self];
}

- (void)insertNode:(id)node atIndex:(unint64_t)index
{
  [(NSMutableArray *)[(THModelContainerNode *)self children] insertObject:node atIndex:index];

  [node setParent:self];
}

- (void)removeNodeAtIndex:(unint64_t)index
{
  [-[NSMutableArray objectAtIndex:](-[THModelContainerNode children](self "children")];
  children = [(THModelContainerNode *)self children];

  [(NSMutableArray *)children removeObjectAtIndex:index];
}

- (unint64_t)removeNode:(id)node
{
  v5 = [(NSMutableArray *)[(THModelContainerNode *)self children] indexOfObject:node];
  [node setParent:0];
  [(NSMutableArray *)[(THModelContainerNode *)self children] removeObject:node];
  return v5;
}

- (unint64_t)count
{
  children = [(THModelContainerNode *)self children];

  return [(NSMutableArray *)children count];
}

- (id)nodeAtIndex:(unint64_t)index
{
  children = [(THModelContainerNode *)self children];

  return [(NSMutableArray *)children objectAtIndex:index];
}

- (id)nodeAfterNode:(id)node
{
  v4 = [(NSMutableArray *)[(THModelContainerNode *)self children] indexOfObject:node]+ 1;
  if ([(NSMutableArray *)[(THModelContainerNode *)self children] count]<= v4)
  {
    return 0;
  }

  children = [(THModelContainerNode *)self children];

  return [(NSMutableArray *)children objectAtIndex:v4];
}

- (id)nodeBeforeNode:(id)node
{
  result = [(NSMutableArray *)[(THModelContainerNode *)self children] indexOfObject:node];
  if (result)
  {
    v5 = result;
    children = [(THModelContainerNode *)self children];

    return [(NSMutableArray *)children objectAtIndex:v5 - 1];
  }

  return result;
}

- (unint64_t)indexOfNode:(id)node
{
  children = [(THModelContainerNode *)self children];

  return [(NSMutableArray *)children indexOfObject:node];
}

- (id)contentNodeAfterContentNode:(id)node
{
  if ([(THModelContainerNode *)self nodeAfterNode:node])
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

- (BOOL)enumerateSubtreeUsingBlock:(id)block
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11[0] = 0;
  (*(block + 2))(block, self, 0, v11);
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
    v7[4] = block;
    v7[5] = &v8;
    [(NSMutableArray *)[(THModelContainerNode *)self children] enumerateObjectsUsingBlock:v7];
    v5 = *(v9 + 24);
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

@end