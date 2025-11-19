@interface GLKShaderBlockNode
+ (id)copyTreeWithRoot:(id)a3 parent:(id)a4;
+ (id)copyTreeWithRootButNotSiblings:(id)a3 parent:(id)a4;
+ (unsigned)nodeCt:(id)a3 nodeCt:(unsigned int *)a4;
+ (void)buildUnrollNodeArray:(id)a3 array:(id)a4;
+ (void)insertNode:(id)a3 afterSibling:(id)a4;
+ (void)printTree:(id)a3;
+ (void)printTreeVerbose:(id)a3;
+ (void)setMasksWithRoot:(id)a3 treeRoot:(id)a4 mask:(GLKBigInt_s *)a5;
- (GLKBigInt_s)mask;
- (GLKShaderBlockNode)init;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation GLKShaderBlockNode

- (GLKShaderBlockNode)init
{
  v3.receiver = self;
  v3.super_class = GLKShaderBlockNode;
  result = [(GLKShaderBlockNode *)&v3 init];
  if (result)
  {
    result->_blockText = 0;
    result->_mask = 0u;
    *&result->_parent = 0u;
    *&result->_children = 0u;
    result->_loopVar = 0;
    *&result->_unrollCt = 1;
    result->_indexedMask = 1;
    result->_propertyClass = 21;
    result->_type = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(GLKShaderBlockNode);
  v6 = [(GLKShaderBlockNode *)self mask];
  [(GLKShaderBlockNode *)v5 setMask:v6, v7];
  [(GLKShaderBlockNode *)v5 setUnrollCt:[(GLKShaderBlockNode *)self unrollCt]];
  [(GLKShaderBlockNode *)v5 setPropertyClass:[(GLKShaderBlockNode *)self propertyClass]];
  [(GLKShaderBlockNode *)v5 setType:[(GLKShaderBlockNode *)self type]];
  [(GLKShaderBlockNode *)v5 setIndex:[(GLKShaderBlockNode *)self index]];
  [(GLKShaderBlockNode *)v5 setIndexedMask:[(GLKShaderBlockNode *)self indexedMask]];
  if ([(GLKShaderBlockNode *)self blockText])
  {
    [(GLKShaderBlockNode *)v5 setBlockText:[(NSMutableString *)[(GLKShaderBlockNode *)self blockText] mutableCopyWithZone:a3]];
  }

  [(GLKShaderBlockNode *)v5 setLoopVar:[(GLKShaderBlockNode *)self loopVar]];
  [(GLKShaderBlockNode *)v5 setLabel:[(GLKShaderBlockNode *)self label]];
  return v5;
}

+ (id)copyTreeWithRoot:(id)a3 parent:(id)a4
{
  v6 = [a3 copyWithZone:0];
  [v6 setParent:a4];
  if ([a3 children])
  {
    [v6 setChildren:{+[GLKShaderBlockNode copyTreeWithRoot:parent:](GLKShaderBlockNode, "copyTreeWithRoot:parent:", objc_msgSend(a3, "children"), v6)}];
  }

  if ([a3 next])
  {
    [v6 setNext:{+[GLKShaderBlockNode copyTreeWithRoot:parent:](GLKShaderBlockNode, "copyTreeWithRoot:parent:", objc_msgSend(a3, "next"), a4)}];
  }

  return v6;
}

+ (id)copyTreeWithRootButNotSiblings:(id)a3 parent:(id)a4
{
  v6 = [a3 copyWithZone:0];
  [v6 setParent:a4];
  if ([a3 children])
  {
    [v6 setChildren:{+[GLKShaderBlockNode copyTreeWithRoot:parent:](GLKShaderBlockNode, "copyTreeWithRoot:parent:", objc_msgSend(a3, "children"), v6)}];
  }

  return v6;
}

+ (void)setMasksWithRoot:(id)a3 treeRoot:(id)a4 mask:(GLKBigInt_s *)a5
{
  v8 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", [a3 label], a4, objc_msgSend(a3, "index"));
  if (v8 | v9)
  {
    [a3 setMask:{v8, v9}];
  }

  else
  {
    [a3 setMask:{a5->n0, a5->n1}];
    *a5 *= 2;
  }

  if ([a3 children])
  {
    +[GLKShaderBlockNode setMasksWithRoot:treeRoot:mask:](GLKShaderBlockNode, "setMasksWithRoot:treeRoot:mask:", [a3 children], a4, a5);
  }

  if ([a3 next])
  {
    v10 = [a3 next];

    [GLKShaderBlockNode setMasksWithRoot:v10 treeRoot:a4 mask:a5];
  }
}

+ (void)buildUnrollNodeArray:(id)a3 array:(id)a4
{
  if ([a3 unrollCt] >= 2)
  {
    [a4 addObject:a3];
  }

  if ([a3 children])
  {
    +[GLKShaderBlockNode buildUnrollNodeArray:array:](GLKShaderBlockNode, "buildUnrollNodeArray:array:", [a3 children], a4);
  }

  if ([a3 next])
  {
    v6 = [a3 next];

    [GLKShaderBlockNode buildUnrollNodeArray:v6 array:a4];
  }
}

+ (void)insertNode:(id)a3 afterSibling:(id)a4
{
  [a3 setNext:{objc_msgSend(a4, "next")}];

  [a4 setNext:a3];
}

+ (unsigned)nodeCt:(id)a3 nodeCt:(unsigned int *)a4
{
  ++*a4;
  if ([a3 children])
  {
    +[GLKShaderBlockNode nodeCt:nodeCt:](GLKShaderBlockNode, "nodeCt:nodeCt:", [a3 children], a4);
  }

  if ([a3 next])
  {
    +[GLKShaderBlockNode nodeCt:nodeCt:](GLKShaderBlockNode, "nodeCt:nodeCt:", [a3 next], a4);
  }

  return *a4;
}

+ (void)printTree:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (a3)
  {
    v5 = a3;
    do
    {
      v5 = [v5 parent];
      [v4 appendString:@"\t"];
    }

    while (v5);
  }

  NSLog(&cfstr_PClassDIndexD.isa, a3, v4, [a3 label], objc_msgSend(a3, "propertyClass"), objc_msgSend(a3, "index"));
  v6 = [a3 children];
  if (v6)
  {
    v7 = v6;
    do
    {
      [GLKShaderBlockNode printTree:v7];
      v7 = [v7 next];
    }

    while (v7);
  }
}

+ (void)printTreeVerbose:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (a3)
  {
    v5 = a3;
    do
    {
      v5 = [v5 parent];
      [v4 appendString:@"\t"];
    }

    while (v5);
  }

  NSLog(&cfstr_PClassDIndexD_0.isa, a3, v4, [a3 label], objc_msgSend(a3, "propertyClass"), objc_msgSend(a3, "index"), objc_msgSend(a3, "blockText"));
  v6 = [a3 children];
  if (v6)
  {
    v7 = v6;
    do
    {
      [GLKShaderBlockNode printTreeVerbose:v7];
      v7 = [v7 next];
    }

    while (v7);
  }
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  if ([a4 isEqualToString:@"codeblock"])
  {
    v11 = objc_alloc_init(GLKShaderBlockNode);
    v12 = [a7 valueForKey:@"indexedMask"];
    if (v12 && [v12 isEqualToString:@"no"])
    {
      [(GLKShaderBlockNode *)v11 setIndexedMask:0];
    }

    -[GLKShaderBlockNode setLabel:](v11, "setLabel:", [a7 valueForKey:@"label"]);
    v13 = [a7 valueForKey:@"type"];
    if ([v13 isEqualToString:@"std"])
    {
      v14 = 0;
    }

    else if ([v13 isEqualToString:@"cond"])
    {
      v14 = 1;
    }

    else
    {
      if (![v13 isEqualToString:@"loop"])
      {
        goto LABEL_15;
      }

      v14 = 2;
    }

    [(GLKShaderBlockNode *)v11 setType:v14];
LABEL_15:
    v15 = [a7 valueForKey:@"unrollCt"];
    if (v15)
    {
      -[GLKShaderBlockNode setUnrollCt:](v11, "setUnrollCt:", [v15 intValue]);
    }

    v16 = [a7 valueForKey:@"class"];
    -[GLKShaderBlockNode setLoopVar:](v11, "setLoopVar:", [a7 valueForKey:@"loopVar"]);
    if ([v16 isEqualToString:@"STATIC_BLOCK"])
    {
      v17 = 21;
    }

    else if ([v16 isEqualToString:@"EFFECT"])
    {
      v17 = 0;
    }

    else if ([v16 isEqualToString:@"LIGHT"])
    {
      v17 = 2;
    }

    else if ([v16 isEqualToString:@"MATERIAL"])
    {
      v17 = 10;
    }

    else if ([v16 isEqualToString:@"TEXTURE"])
    {
      v17 = 11;
    }

    else if ([v16 isEqualToString:@"FOG"])
    {
      v17 = 19;
    }

    else
    {
      if (![v16 isEqualToString:@"CONSTANT_COLOR"])
      {
LABEL_32:
        [(GLKShaderBlockNode *)v11 setParent:self];
        children = self->_children;
        if (children)
        {
          for (i = self->_children; [(GLKShaderBlockNode *)i next]; children = i)
          {
            i = [(GLKShaderBlockNode *)children next];
          }

          [(GLKShaderBlockNode *)children setNext:v11];
        }

        else
        {
          [(GLKShaderBlockNode *)self setChildren:v11];
        }

        [a3 setDelegate:v11];
        return;
      }

      v17 = 20;
    }

    [(GLKShaderBlockNode *)v11 setPropertyClass:v17];
    goto LABEL_32;
  }

  if ([a4 isEqualToString:@"codeblocks"])
  {
    -[GLKShaderBlockNode setLabel:](self, "setLabel:", [a7 valueForKey:@"label"]);
    self->_type = 0;
    self->_propertyClass = 21;
  }
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v6 = [a4 UTF8String];
  v7 = *v6;
  if (!*v6)
  {
    return;
  }

  v8 = v6 + 1;
  v9 = MEMORY[0x277D85DE0];
  while ((v7 & 0x80) == 0)
  {
    if ((*(v9 + 4 * v7 + 60) & 0x4000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = *v8++;
    v7 = v10;
    if (!v10)
    {
      return;
    }
  }

  if (__maskrune(v7, 0x4000uLL))
  {
    goto LABEL_7;
  }

LABEL_9:
  v11 = objc_alloc_init(GLKShaderBlockNode);
  [(GLKShaderBlockNode *)v11 setLabel:[(GLKShaderBlockNode *)self label]];
  [(GLKShaderBlockNode *)v11 setParent:self];
  [(GLKShaderBlockNode *)v11 setBlockText:objc_alloc_init(MEMORY[0x277CCAB68])];
  [(NSMutableString *)[(GLKShaderBlockNode *)v11 blockText] appendString:a4];
  children = self->_children;
  if (children)
  {
    for (i = self->_children; [(GLKShaderBlockNode *)i next]; children = i)
    {
      i = [(GLKShaderBlockNode *)children next];
    }

    [(GLKShaderBlockNode *)children setNext:v11];
  }

  else
  {

    [(GLKShaderBlockNode *)self setChildren:v11];
  }
}

- (NSString)description
{
  if (self->_loopVar)
  {
    loopVar = self->_loopVar;
  }

  else
  {
    loopVar = @"nil";
  }

  return [MEMORY[0x277CCAB68] stringWithFormat:@"label:\t\t%@\ntype:\t\t%d\nclass:\t\t%d\nloopVar:\t\t%@\nchildren:\t%p\nparent:\t\t%p\nnext:\t\t%p\nmask:\t\t%@\nunrollCt:\t%d\nindex:\t\t%d\nblockText:\t%p", self->_label, self->_type, self->_propertyClass, loopVar, self->_children, self->_parent, self->_next, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"0x%016llX%016llx", self->_mask.n1, self->_mask.n0), self->_unrollCt, self->_index, self->_blockText];
}

- (void)dealloc
{
  children = self->_children;
  if (children)
  {
    do
    {
      v4 = [(GLKShaderBlockNode *)children next];

      children = v4;
    }

    while (v4);
  }

  v5.receiver = self;
  v5.super_class = GLKShaderBlockNode;
  [(GLKShaderBlockNode *)&v5 dealloc];
}

- (GLKBigInt_s)mask
{
  n1 = self->_mask.n1;
  n0 = self->_mask.n0;
  result.n1 = n1;
  result.n0 = n0;
  return result;
}

@end