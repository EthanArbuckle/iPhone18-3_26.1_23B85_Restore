@interface CPObject
- (BOOL)isEqual:(id)a3;
- (CPObject)init;
- (id)ancestorOfClass:(Class)a3;
- (id)childrenNotOfClass:(Class)a3;
- (id)childrenOfClass:(Class)a3;
- (id)copyAndSplitChildrenAtIndex:(unsigned int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyWithoutChildren;
- (id)descendantsOfClass:(Class)a3 deep:(BOOL)a4;
- (id)descendantsOfClass:(Class)a3 omitTraversing:(Class)a4;
- (id)firstChild;
- (id)firstDescendantOfClass:(Class)a3;
- (id)firstDescendantsOfClass:(Class)a3;
- (id)firstSibling;
- (id)initSuper;
- (id)lastChild;
- (id)lastDescendantOfClass:(Class)a3;
- (id)lastSibling;
- (id)newTakeChildren;
- (id)newTakeChildrenAmong:(id)a3;
- (id)nextSibling;
- (id)page;
- (id)previousSibling;
- (int)depth;
- (unsigned)countOfClass:(Class)a3;
- (unsigned)countOfFirstDescendantsOfClass:(Class)a3;
- (void)_printWithIndent:(int)a3;
- (void)add:(id)a3;
- (void)add:(id)a3 atIndex:(unsigned int)a4;
- (void)addChildren:(id)a3;
- (void)addChildrenOf:(id)a3;
- (void)childrenOfClass:(Class)a3 into:(id)a4;
- (void)clearCachedInfo;
- (void)commonMapFuncCall:(SEL)a3 target:(id)a4 childrenOfClass:(Class)a5 ofCount:(int)a6;
- (void)dealloc;
- (void)descendantsOfClass:(Class)a3 to:(id)a4;
- (void)disposeDescendants;
- (void)map:(SEL)a3 target:(id)a4;
- (void)map:(SEL)a3 target:(id)a4 childrenOfClass:(Class)a5;
- (void)map:(SEL)a3 target:(id)a4 childrenOfClass:(Class)a5 last:(BOOL)a6;
- (void)map:(SEL)a3 target:(id)a4 last:(BOOL)a5;
- (void)mapSafely:(SEL)a3 target:(id)a4 childrenOfClass:(Class)a5;
- (void)promoteChildren;
- (void)recomputeZOrder;
- (void)remove;
- (void)remove:(id)a3;
- (void)removeFirstChild;
- (void)removeLastChild;
- (void)removeObjectAtIndex:(unsigned int)a3;
- (void)setDocument:(id)a3;
- (void)updateZOrder:(int64_t)a3;
@end

@implementation CPObject

- (int)depth
{
  v3 = [(NSMutableArray *)self->children count];
  if (v3)
  {
    v4 = [(NSMutableArray *)self->children count];
    if (v4 < 1)
    {
      LODWORD(v3) = 1;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = v4 & 0x7FFFFFFF;
      do
      {
        v8 = [-[NSMutableArray objectAtIndex:](self->children objectAtIndex:{v5), "depth"}];
        if (v8 > v6)
        {
          v6 = v8;
        }

        ++v5;
      }

      while (v7 != v5);
      LODWORD(v3) = v6 + 1;
    }
  }

  return v3;
}

- (id)page
{
  result = self->page;
  if (!result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->page = self;
      return self;
    }

    else
    {
      parent = self->parent;
      if (parent)
      {
        result = [(CPObject *)parent page];
        self->page = result;
      }

      else
      {
        return self->page;
      }
    }
  }

  return result;
}

- (id)firstDescendantsOfClass:(Class)a3
{
  v5 = [(NSMutableArray *)self->children count];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = v5 & 0x7FFFFFFF;
    do
    {
      v9 = [(NSMutableArray *)self->children objectAtIndex:v7];
      if (objc_opt_isKindOfClass())
      {
        [v6 addObject:v9];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObjectsFromArray:{objc_msgSend(v9, "firstDescendantsOfClass:", a3)}];
        }
      }

      ++v7;
    }

    while (v8 != v7);
  }

  return v6;
}

- (void)clearCachedInfo
{
  parent = self->parent;
  if (parent)
  {
    [(CPObject *)parent clearCachedInfo];
  }
}

- (void)updateZOrder:(int64_t)a3
{
  if (self->zOrder < a3)
  {
    self->zOrder = a3;
    parent = self->parent;
    if (parent)
    {
      [(CPObject *)parent updateZOrder:?];
    }
  }
}

- (void)recomputeZOrder
{
  v3 = [(NSMutableArray *)self->children count];
  if (v3)
  {
    v4 = [-[NSMutableArray objectAtIndex:](self->children objectAtIndex:{0), "zOrder"}];
    if (v3 >= 2)
    {
      v5 = v3 & 0x7FFFFFFF;
      v6 = 1;
      do
      {
        v7 = [-[NSMutableArray objectAtIndex:](self->children objectAtIndex:{v6), "zOrder"}];
        if (v4 <= v7)
        {
          v4 = v7;
        }

        ++v6;
      }

      while (v5 != v6);
    }

    [(CPObject *)self setZOrder:v4];
  }
}

- (void)setDocument:(id)a3
{
  if (self->document != a3)
  {
    self->document = a3;
    v5 = [(NSMutableArray *)self->children count];
    if (v5 >= 1)
    {
      v6 = 0;
      do
      {
        [-[CPObject childAtIndex:](self childAtIndex:{v6), "setDocument:", a3}];
        v6 = (v6 + 1);
      }

      while (v5 != v6);
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPObject;
  return [(CPObject *)&v4 isEqual:a3];
}

- (unsigned)countOfFirstDescendantsOfClass:(Class)a3
{
  v5 = [(NSMutableArray *)self->children count];
  v6 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = [(NSMutableArray *)self->children objectAtIndex:v7];
    if (objc_opt_isKindOfClass())
    {
      ++v8;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 += [v9 countOfFirstDescendantsOfClass:a3];
      }
    }

    ++v7;
  }

  while (v6 != v7);
  return v8;
}

- (id)lastDescendantOfClass:(Class)a3
{
  v5 = [(CPObject *)self count];
  v6 = v5 - 1;
  if ((v5 - 1) < 0)
  {
    return 0;
  }

  do
  {
    v7 = [(CPObject *)self childAtIndex:v6];
    result = [v7 lastDescendantOfClass:a3];
    if (result)
    {
      break;
    }

    result = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
    v9 = v6 != 0;
    v6 = (v6 - 1);
    if (!v9)
    {
      break;
    }
  }

  while (!result);
  return result;
}

- (id)firstDescendantOfClass:(Class)a3
{
  v5 = [(NSMutableArray *)self->children count];
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v5 & 0x7FFFFFFF;
  while (1)
  {
    v8 = [(NSMutableArray *)self->children objectAtIndex:v6];
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v9 = [v8 firstDescendantOfClass:a3];
    if (v9)
    {
      return v9;
    }

    if (v7 == ++v6)
    {
      return 0;
    }
  }

  return v8;
}

- (id)descendantsOfClass:(Class)a3 omitTraversing:(Class)a4
{
  v7 = [(NSMutableArray *)self->children count];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = v7 & 0x7FFFFFFF;
    do
    {
      v11 = [(NSMutableArray *)self->children objectAtIndex:v9];
      if (objc_opt_isKindOfClass())
      {
        [v8 addObject:v11];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) == 0)
      {
        [v8 addObjectsFromArray:{objc_msgSend(v11, "descendantsOfClass:omitTraversing:", a3, a4)}];
      }

      ++v9;
    }

    while (v10 != v9);
  }

  return v8;
}

- (void)descendantsOfClass:(Class)a3 to:(id)a4
{
  if (a4)
  {
    if (objc_opt_isKindOfClass())
    {
      [a4 addObject:self];
    }

    v7 = [(CPObject *)self count];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        [-[CPObject childAtIndex:](self childAtIndex:{v9), "descendantsOfClass:to:", a3, a4}];
        v9 = (v9 + 1);
      }

      while (v8 != v9);
    }
  }
}

- (id)descendantsOfClass:(Class)a3 deep:(BOOL)a4
{
  v4 = a4;
  v7 = [(NSMutableArray *)self->children count];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = v7 & 0x7FFFFFFF;
    while (1)
    {
      v11 = [(NSMutableArray *)self->children objectAtIndex:v9];
      isKindOfClass = objc_opt_isKindOfClass();
      v13 = v4;
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_6;
      }

      [v8 addObject:{v11, v4}];
      if (v4)
      {
        break;
      }

LABEL_7:
      if (v10 == ++v9)
      {
        return v8;
      }
    }

    v13 = 1;
LABEL_6:
    [v8 addObjectsFromArray:{objc_msgSend(v11, "descendantsOfClass:deep:", a3, v13)}];
    goto LABEL_7;
  }

  return v8;
}

- (void)map:(SEL)a3 target:(id)a4 last:(BOOL)a5
{
  v8 = [(NSMutableArray *)self->children count]- !a5;
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      [a4 a3];
    }
  }
}

- (void)map:(SEL)a3 target:(id)a4
{
  v7 = [(NSMutableArray *)self->children count];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v7 & 0x7FFFFFFF;
    do
    {
      [a4 a3];
    }

    while (v9 != v8);
  }
}

- (void)mapSafely:(SEL)a3 target:(id)a4 childrenOfClass:(Class)a5
{
  v8 = [(NSMutableArray *)self->children count];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v8 & 0x7FFFFFFF;
    do
    {
      v11 = [(NSMutableArray *)self->children objectAtIndex:v9];
      if (objc_opt_isKindOfClass())
      {
        [v15 addObject:v11];
      }

      ++v9;
    }

    while (v10 != v9);
  }

  v12 = [v15 count];
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = v12 & 0x7FFFFFFF;
    do
    {
      [a4 a3];
    }

    while (v14 != v13);
  }
}

- (void)map:(SEL)a3 target:(id)a4 childrenOfClass:(Class)a5
{
  v9 = [(NSMutableArray *)self->children count];

  [(CPObject *)self commonMapFuncCall:a3 target:a4 childrenOfClass:a5 ofCount:v9];
}

- (void)map:(SEL)a3 target:(id)a4 childrenOfClass:(Class)a5 last:(BOOL)a6
{
  v10 = [(NSMutableArray *)self->children count]- !a6;

  [(CPObject *)self commonMapFuncCall:a3 target:a4 childrenOfClass:a5 ofCount:v10];
}

- (void)commonMapFuncCall:(SEL)a3 target:(id)a4 childrenOfClass:(Class)a5 ofCount:(int)a6
{
  if (a6 >= 1)
  {
    v22 = v13;
    v23 = v12;
    v24 = v11;
    v25 = v10;
    v26 = v9;
    v27 = v8;
    v28 = v7;
    v29 = v6;
    v30 = v14;
    v31 = v15;
    v19 = 0;
    v20 = a6;
    do
    {
      v21 = [(NSMutableArray *)self->children objectAtIndex:v19, a4, a5, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31];
      if (objc_opt_isKindOfClass())
      {
        [a4 a3];
      }

      ++v19;
    }

    while (v20 != v19);
  }
}

- (id)childrenNotOfClass:(Class)a3
{
  v4 = [(NSMutableArray *)self->children count];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [(NSMutableArray *)self->children objectAtIndex:i];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v5 addObject:v7];
      }
    }
  }

  return v5;
}

- (id)childrenOfClass:(Class)a3
{
  v4 = [(NSMutableArray *)self->children count];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [(NSMutableArray *)self->children objectAtIndex:i];
      if (objc_opt_isKindOfClass())
      {
        [v5 addObject:v7];
      }
    }
  }

  return v5;
}

- (void)childrenOfClass:(Class)a3 into:(id)a4
{
  v6 = [(NSMutableArray *)self->children count];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = [(NSMutableArray *)self->children objectAtIndex:v8];
      if (objc_opt_isKindOfClass())
      {
        [a4 addObject:v9];
      }

      ++v8;
    }

    while (v7 != v8);
  }
}

- (id)ancestorOfClass:(Class)a3
{
  result = self->parent;
  if (result)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    result = self->parent;
    if ((isKindOfClass & 1) == 0)
    {

      return [result ancestorOfClass:a3];
    }
  }

  return result;
}

- (void)promoteChildren
{
  v3 = [(NSMutableArray *)self->children count];
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = v3 & 0x7FFFFFFF;
    do
    {
      [-[NSMutableArray objectAtIndex:](self->children objectAtIndex:{v4++), "setParent:", self->parent}];
    }

    while (v5 != v4);
  }

  parent = self->parent;
  if (parent)
  {
    [(NSMutableArray *)parent->children addObjectsFromArray:self->children];
  }

  [(CPObject *)self removeAll];
}

- (void)removeObjectAtIndex:(unsigned int)a3
{
  v4 = a3;
  [-[NSMutableArray objectAtIndex:](self->children objectAtIndex:{a3), "setParent:", 0}];
  children = self->children;

  [(NSMutableArray *)children removeObjectAtIndex:v4];
}

- (void)remove
{
  parent = self->parent;
  if (parent)
  {
    [(CPObject *)parent remove:self];
  }
}

- (void)removeLastChild
{
  if ([(NSMutableArray *)self->children count])
  {
    v3 = [(NSMutableArray *)self->children lastObject];

    [(CPObject *)self remove:v3];
  }
}

- (void)removeFirstChild
{
  if ([(NSMutableArray *)self->children count])
  {
    v3 = [(NSMutableArray *)self->children objectAtIndex:0];

    [(CPObject *)self remove:v3];
  }
}

- (void)remove:(id)a3
{
  [a3 setParent:0];
  children = self->children;

  [(NSMutableArray *)children removeObject:a3];
}

- (void)addChildrenOf:(id)a3
{
  v5 = [a3 count];
  v6 = [a3 children];
  if (v5)
  {
      ;
    }
  }

  [(NSMutableArray *)self->children addObjectsFromArray:v6];
  [a3 removeAll];

  [(CPObject *)self recomputeZOrder];
}

- (void)addChildren:(id)a3
{
  v5 = [a3 count];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      -[CPObject add:](self, "add:", [a3 objectAtIndex:v7++]);
    }

    while (v6 != v7);
  }
}

- (void)add:(id)a3 atIndex:(unsigned int)a4
{
  v6 = a3;
  if ([a3 parent])
  {
    [a3 remove];
  }

  [(NSMutableArray *)self->children insertObject:a3 atIndex:a4];
  [a3 setParent:self];
  [a3 setDocument:self->document];
}

- (void)add:(id)a3
{
  v4 = a3;
  [a3 remove];
  [(NSMutableArray *)self->children addObject:a3];
  [a3 setParent:self];
  [a3 setDocument:self->document];
}

- (id)firstSibling
{
  if (!self->parent)
  {
    return 0;
  }

  v2 = [-[CPObject parent](self "parent")];

  return [v2 objectAtIndex:0];
}

- (id)lastSibling
{
  if (!self->parent)
  {
    return 0;
  }

  v2 = [-[CPObject parent](self "parent")];

  return [v2 lastObject];
}

- (id)previousSibling
{
  if (!self->parent)
  {
    return 0;
  }

  v3 = [-[CPObject parent](self "parent")];
  if (!v3)
  {
    return 0;
  }

  v4 = [(CPObject *)self parent];

  return [v4 childAtIndex:(v3 - 1)];
}

- (id)nextSibling
{
  if (!self->parent)
  {
    return 0;
  }

  v3 = [-[CPObject parent](self "parent")] + 1;
  if (v3 >= [(CPObject *)self->parent count])
  {
    return 0;
  }

  v4 = [(CPObject *)self parent];

  return [v4 childAtIndex:v3];
}

- (id)lastChild
{
  v3 = [(CPObject *)self count];
  if (v3 < 1)
  {
    return 0;
  }

  return [(CPObject *)self childAtIndex:(v3 - 1)];
}

- (id)firstChild
{
  result = [(NSMutableArray *)self->children count];
  if (result)
  {
    children = self->children;

    return [(NSMutableArray *)children objectAtIndex:0];
  }

  return result;
}

- (unsigned)countOfClass:(Class)a3
{
  v4 = [(NSMutableArray *)self->children count];
  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    [(NSMutableArray *)self->children objectAtIndex:v6];
    v7 += objc_opt_isKindOfClass() & 1;
    ++v6;
  }

  while (v5 != v6);
  return v7;
}

- (id)newTakeChildrenAmong:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [a3 count];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = [a3 objectAtIndex:v8];
      if ([v9 parent] == self)
      {
        [v9 setParent:0];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v10 = [(NSMutableArray *)self->children count];
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = [(NSMutableArray *)self->children objectAtIndex:v11];
      if ([v12 parent])
      {
        ++v11;
      }

      else
      {
        [v5 addObject:v12];
        [(NSMutableArray *)self->children removeObjectAtIndex:v11];
        --v10;
      }
    }

    while (v11 < v10);
  }

  return v5;
}

- (id)newTakeChildren
{
  children = self->children;
  v4 = [(NSMutableArray *)children count];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v4 & 0x7FFFFFFF;
    do
    {
      [-[NSMutableArray objectAtIndex:](self->children objectAtIndex:{v5++), "setParent:", 0}];
    }

    while (v6 != v5);
  }

  self->children = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->zOrder = 0;
  return children;
}

- (id)copyAndSplitChildrenAtIndex:(unsigned int)a3
{
  v5 = [(CPObject *)self copyWithoutChildren];
  v6 = [(NSMutableArray *)self->children count];
  v7 = v6 - a3;
  if (v6 > a3)
  {
    v8 = v6 - a3;
    v9 = a3;
    do
    {
      v10 = [(NSMutableArray *)self->children objectAtIndex:v9];
      *(v10 + 8) = v5;
      [v5[2] addObject:v10];
      ++v9;
      --v8;
    }

    while (v8);
    v11 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{a3, v7}];
    [(NSMutableArray *)self->children removeObjectsAtIndexes:v11];
  }

  return v5;
}

- (id)copyWithoutChildren
{
  children = self->children;
  self->children = 0;
  result = [(CPObject *)self copy];
  self->children = children;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = CPCopyObject(self, a3);
  if (v5)
  {
    v5[4] = [(CPObject *)self page];
    v5[1] = 0;
    if (self->children)
    {
      v5[2] = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->children, "count")}];
      v6 = [(NSMutableArray *)self->children count];
      v7 = v6;
      if (v6)
      {
        v8 = 0;
        do
        {
          v9 = [-[NSMutableArray objectAtIndex:](self->children objectAtIndex:{v8), "copyWithZone:", a3}];
          [v5 add:v9];

          ++v8;
        }

        while (v7 != v8);
      }
    }

    else
    {
      v5[2] = objc_alloc_init(MEMORY[0x1E695DF70]);
    }
  }

  return v5;
}

- (void)disposeDescendants
{
  v3 = [(NSMutableArray *)self->children count];
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->children objectAtIndex:v5];
      [v6 disposeDescendants];
      if ([v6 conformsToProtocol:&unk_1EF255E88])
      {
        [v6 dispose];
      }

      ++v5;
    }

    while (v4 != v5);
  }
}

- (void)dealloc
{
  v3 = [(NSMutableArray *)self->children count];
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    do
    {
      [-[NSMutableArray objectAtIndex:](self->children objectAtIndex:{v5++), "setParent:", 0}];
    }

    while (v4 != v5);
  }

  v6.receiver = self;
  v6.super_class = CPObject;
  [(CPObject *)&v6 dealloc];
}

- (id)initSuper
{
  v3.receiver = self;
  v3.super_class = CPObject;
  return [(CPObject *)&v3 init];
}

- (CPObject)init
{
  v5.receiver = self;
  v5.super_class = CPObject;
  v2 = [(CPObject *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->document = 0;
    v2->page = 0;
    v2->children = v3;
  }

  return v2;
}

- (void)_printWithIndent:(int)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v5 = a3;
    do
    {
      printf("    ");
      --v5;
    }

    while (v5);
  }

  v6 = objc_opt_class();
  v7 = [NSStringFromClass(v6) UTF8String];
  printf("(%s) %p", v7, self);
  if (objc_opt_respondsToSelector())
  {
    [(CPObject *)self zoneBounds];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_9;
    }

    [(CPObject *)self renderedBounds];
  }

  printf("bounds: (%.2f, %.2f), [%.2f, %.2f]", v8, v9, v10, v11);
LABEL_9:
  fputc(10, *MEMORY[0x1E69E9858]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  children = self->children;
  v13 = [(NSMutableArray *)children countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v17 + 1) + 8 * i) _printWithIndent:(a3 + 1)];
      }

      v14 = [(NSMutableArray *)children countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

@end