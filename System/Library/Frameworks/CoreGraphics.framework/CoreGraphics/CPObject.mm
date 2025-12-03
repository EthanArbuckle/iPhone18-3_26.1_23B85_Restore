@interface CPObject
- (BOOL)isEqual:(id)equal;
- (CPObject)init;
- (id)ancestorOfClass:(Class)class;
- (id)childrenNotOfClass:(Class)class;
- (id)childrenOfClass:(Class)class;
- (id)copyAndSplitChildrenAtIndex:(unsigned int)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithoutChildren;
- (id)descendantsOfClass:(Class)class deep:(BOOL)deep;
- (id)descendantsOfClass:(Class)class omitTraversing:(Class)traversing;
- (id)firstChild;
- (id)firstDescendantOfClass:(Class)class;
- (id)firstDescendantsOfClass:(Class)class;
- (id)firstSibling;
- (id)initSuper;
- (id)lastChild;
- (id)lastDescendantOfClass:(Class)class;
- (id)lastSibling;
- (id)newTakeChildren;
- (id)newTakeChildrenAmong:(id)among;
- (id)nextSibling;
- (id)page;
- (id)previousSibling;
- (int)depth;
- (unsigned)countOfClass:(Class)class;
- (unsigned)countOfFirstDescendantsOfClass:(Class)class;
- (void)_printWithIndent:(int)indent;
- (void)add:(id)add;
- (void)add:(id)add atIndex:(unsigned int)index;
- (void)addChildren:(id)children;
- (void)addChildrenOf:(id)of;
- (void)childrenOfClass:(Class)class into:(id)into;
- (void)clearCachedInfo;
- (void)commonMapFuncCall:(SEL)call target:(id)target childrenOfClass:(Class)class ofCount:(int)count;
- (void)dealloc;
- (void)descendantsOfClass:(Class)class to:(id)to;
- (void)disposeDescendants;
- (void)map:(SEL)map target:(id)target;
- (void)map:(SEL)map target:(id)target childrenOfClass:(Class)class;
- (void)map:(SEL)map target:(id)target childrenOfClass:(Class)class last:(BOOL)last;
- (void)map:(SEL)map target:(id)target last:(BOOL)last;
- (void)mapSafely:(SEL)safely target:(id)target childrenOfClass:(Class)class;
- (void)promoteChildren;
- (void)recomputeZOrder;
- (void)remove;
- (void)remove:(id)remove;
- (void)removeFirstChild;
- (void)removeLastChild;
- (void)removeObjectAtIndex:(unsigned int)index;
- (void)setDocument:(id)document;
- (void)updateZOrder:(int64_t)order;
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

- (id)firstDescendantsOfClass:(Class)class
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
          [v6 addObjectsFromArray:{objc_msgSend(v9, "firstDescendantsOfClass:", class)}];
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

- (void)updateZOrder:(int64_t)order
{
  if (self->zOrder < order)
  {
    self->zOrder = order;
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

- (void)setDocument:(id)document
{
  if (self->document != document)
  {
    self->document = document;
    v5 = [(NSMutableArray *)self->children count];
    if (v5 >= 1)
    {
      v6 = 0;
      do
      {
        [-[CPObject childAtIndex:](self childAtIndex:{v6), "setDocument:", document}];
        v6 = (v6 + 1);
      }

      while (v5 != v6);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = CPObject;
  return [(CPObject *)&v4 isEqual:equal];
}

- (unsigned)countOfFirstDescendantsOfClass:(Class)class
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
        v8 += [v9 countOfFirstDescendantsOfClass:class];
      }
    }

    ++v7;
  }

  while (v6 != v7);
  return v8;
}

- (id)lastDescendantOfClass:(Class)class
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
    result = [v7 lastDescendantOfClass:class];
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

- (id)firstDescendantOfClass:(Class)class
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

    v9 = [v8 firstDescendantOfClass:class];
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

- (id)descendantsOfClass:(Class)class omitTraversing:(Class)traversing
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
        [v8 addObjectsFromArray:{objc_msgSend(v11, "descendantsOfClass:omitTraversing:", class, traversing)}];
      }

      ++v9;
    }

    while (v10 != v9);
  }

  return v8;
}

- (void)descendantsOfClass:(Class)class to:(id)to
{
  if (to)
  {
    if (objc_opt_isKindOfClass())
    {
      [to addObject:self];
    }

    v7 = [(CPObject *)self count];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        [-[CPObject childAtIndex:](self childAtIndex:{v9), "descendantsOfClass:to:", class, to}];
        v9 = (v9 + 1);
      }

      while (v8 != v9);
    }
  }
}

- (id)descendantsOfClass:(Class)class deep:(BOOL)deep
{
  deepCopy = deep;
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
      v13 = deepCopy;
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_6;
      }

      [v8 addObject:{v11, deepCopy}];
      if (deepCopy)
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
    [v8 addObjectsFromArray:{objc_msgSend(v11, "descendantsOfClass:deep:", class, v13)}];
    goto LABEL_7;
  }

  return v8;
}

- (void)map:(SEL)map target:(id)target last:(BOOL)last
{
  v8 = [(NSMutableArray *)self->children count]- !last;
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      [target map];
    }
  }
}

- (void)map:(SEL)map target:(id)target
{
  v7 = [(NSMutableArray *)self->children count];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v7 & 0x7FFFFFFF;
    do
    {
      [target map];
    }

    while (v9 != v8);
  }
}

- (void)mapSafely:(SEL)safely target:(id)target childrenOfClass:(Class)class
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
      [target safely];
    }

    while (v14 != v13);
  }
}

- (void)map:(SEL)map target:(id)target childrenOfClass:(Class)class
{
  v9 = [(NSMutableArray *)self->children count];

  [(CPObject *)self commonMapFuncCall:map target:target childrenOfClass:class ofCount:v9];
}

- (void)map:(SEL)map target:(id)target childrenOfClass:(Class)class last:(BOOL)last
{
  v10 = [(NSMutableArray *)self->children count]- !last;

  [(CPObject *)self commonMapFuncCall:map target:target childrenOfClass:class ofCount:v10];
}

- (void)commonMapFuncCall:(SEL)call target:(id)target childrenOfClass:(Class)class ofCount:(int)count
{
  if (count >= 1)
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
    countCopy = count;
    do
    {
      v21 = [(NSMutableArray *)self->children objectAtIndex:v19, target, class, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31];
      if (objc_opt_isKindOfClass())
      {
        [target call];
      }

      ++v19;
    }

    while (countCopy != v19);
  }
}

- (id)childrenNotOfClass:(Class)class
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

- (id)childrenOfClass:(Class)class
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

- (void)childrenOfClass:(Class)class into:(id)into
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
        [into addObject:v9];
      }

      ++v8;
    }

    while (v7 != v8);
  }
}

- (id)ancestorOfClass:(Class)class
{
  result = self->parent;
  if (result)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    result = self->parent;
    if ((isKindOfClass & 1) == 0)
    {

      return [result ancestorOfClass:class];
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

- (void)removeObjectAtIndex:(unsigned int)index
{
  indexCopy = index;
  [-[NSMutableArray objectAtIndex:](self->children objectAtIndex:{index), "setParent:", 0}];
  children = self->children;

  [(NSMutableArray *)children removeObjectAtIndex:indexCopy];
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
    lastObject = [(NSMutableArray *)self->children lastObject];

    [(CPObject *)self remove:lastObject];
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

- (void)remove:(id)remove
{
  [remove setParent:0];
  children = self->children;

  [(NSMutableArray *)children removeObject:remove];
}

- (void)addChildrenOf:(id)of
{
  v5 = [of count];
  children = [of children];
  if (v5)
  {
      ;
    }
  }

  [(NSMutableArray *)self->children addObjectsFromArray:children];
  [of removeAll];

  [(CPObject *)self recomputeZOrder];
}

- (void)addChildren:(id)children
{
  v5 = [children count];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      -[CPObject add:](self, "add:", [children objectAtIndex:v7++]);
    }

    while (v6 != v7);
  }
}

- (void)add:(id)add atIndex:(unsigned int)index
{
  addCopy = add;
  if ([add parent])
  {
    [add remove];
  }

  [(NSMutableArray *)self->children insertObject:add atIndex:index];
  [add setParent:self];
  [add setDocument:self->document];
}

- (void)add:(id)add
{
  addCopy = add;
  [add remove];
  [(NSMutableArray *)self->children addObject:add];
  [add setParent:self];
  [add setDocument:self->document];
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

  parent = [(CPObject *)self parent];

  return [parent childAtIndex:(v3 - 1)];
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

  parent = [(CPObject *)self parent];

  return [parent childAtIndex:v3];
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

- (unsigned)countOfClass:(Class)class
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

- (id)newTakeChildrenAmong:(id)among
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [among count];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = [among objectAtIndex:v8];
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

- (id)copyAndSplitChildrenAtIndex:(unsigned int)index
{
  copyWithoutChildren = [(CPObject *)self copyWithoutChildren];
  v6 = [(NSMutableArray *)self->children count];
  v7 = v6 - index;
  if (v6 > index)
  {
    v8 = v6 - index;
    indexCopy = index;
    do
    {
      v10 = [(NSMutableArray *)self->children objectAtIndex:indexCopy];
      *(v10 + 8) = copyWithoutChildren;
      [copyWithoutChildren[2] addObject:v10];
      ++indexCopy;
      --v8;
    }

    while (v8);
    v11 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{index, v7}];
    [(NSMutableArray *)self->children removeObjectsAtIndexes:v11];
  }

  return copyWithoutChildren;
}

- (id)copyWithoutChildren
{
  children = self->children;
  self->children = 0;
  result = [(CPObject *)self copy];
  self->children = children;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = CPCopyObject(self, zone);
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
          v9 = [-[NSMutableArray objectAtIndex:](self->children objectAtIndex:{v8), "copyWithZone:", zone}];
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

- (void)_printWithIndent:(int)indent
{
  v22 = *MEMORY[0x1E69E9840];
  if (indent >= 1)
  {
    indentCopy = indent;
    do
    {
      printf("    ");
      --indentCopy;
    }

    while (indentCopy);
  }

  v6 = objc_opt_class();
  uTF8String = [NSStringFromClass(v6) UTF8String];
  printf("(%s) %p", uTF8String, self);
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

        [*(*(&v17 + 1) + 8 * i) _printWithIndent:(indent + 1)];
      }

      v14 = [(NSMutableArray *)children countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

@end