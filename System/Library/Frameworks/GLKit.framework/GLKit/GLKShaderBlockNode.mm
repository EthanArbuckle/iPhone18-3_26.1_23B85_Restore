@interface GLKShaderBlockNode
+ (id)copyTreeWithRoot:(id)root parent:(id)parent;
+ (id)copyTreeWithRootButNotSiblings:(id)siblings parent:(id)parent;
+ (unsigned)nodeCt:(id)ct nodeCt:(unsigned int *)nodeCt;
+ (void)buildUnrollNodeArray:(id)array array:(id)a4;
+ (void)insertNode:(id)node afterSibling:(id)sibling;
+ (void)printTree:(id)tree;
+ (void)printTreeVerbose:(id)verbose;
+ (void)setMasksWithRoot:(id)root treeRoot:(id)treeRoot mask:(GLKBigInt_s *)mask;
- (GLKBigInt_s)mask;
- (GLKShaderBlockNode)init;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(GLKShaderBlockNode);
  mask = [(GLKShaderBlockNode *)self mask];
  [(GLKShaderBlockNode *)v5 setMask:mask, v7];
  [(GLKShaderBlockNode *)v5 setUnrollCt:[(GLKShaderBlockNode *)self unrollCt]];
  [(GLKShaderBlockNode *)v5 setPropertyClass:[(GLKShaderBlockNode *)self propertyClass]];
  [(GLKShaderBlockNode *)v5 setType:[(GLKShaderBlockNode *)self type]];
  [(GLKShaderBlockNode *)v5 setIndex:[(GLKShaderBlockNode *)self index]];
  [(GLKShaderBlockNode *)v5 setIndexedMask:[(GLKShaderBlockNode *)self indexedMask]];
  if ([(GLKShaderBlockNode *)self blockText])
  {
    [(GLKShaderBlockNode *)v5 setBlockText:[(NSMutableString *)[(GLKShaderBlockNode *)self blockText] mutableCopyWithZone:zone]];
  }

  [(GLKShaderBlockNode *)v5 setLoopVar:[(GLKShaderBlockNode *)self loopVar]];
  [(GLKShaderBlockNode *)v5 setLabel:[(GLKShaderBlockNode *)self label]];
  return v5;
}

+ (id)copyTreeWithRoot:(id)root parent:(id)parent
{
  v6 = [root copyWithZone:0];
  [v6 setParent:parent];
  if ([root children])
  {
    [v6 setChildren:{+[GLKShaderBlockNode copyTreeWithRoot:parent:](GLKShaderBlockNode, "copyTreeWithRoot:parent:", objc_msgSend(root, "children"), v6)}];
  }

  if ([root next])
  {
    [v6 setNext:{+[GLKShaderBlockNode copyTreeWithRoot:parent:](GLKShaderBlockNode, "copyTreeWithRoot:parent:", objc_msgSend(root, "next"), parent)}];
  }

  return v6;
}

+ (id)copyTreeWithRootButNotSiblings:(id)siblings parent:(id)parent
{
  v6 = [siblings copyWithZone:0];
  [v6 setParent:parent];
  if ([siblings children])
  {
    [v6 setChildren:{+[GLKShaderBlockNode copyTreeWithRoot:parent:](GLKShaderBlockNode, "copyTreeWithRoot:parent:", objc_msgSend(siblings, "children"), v6)}];
  }

  return v6;
}

+ (void)setMasksWithRoot:(id)root treeRoot:(id)treeRoot mask:(GLKBigInt_s *)mask
{
  v8 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", [root label], treeRoot, objc_msgSend(root, "index"));
  if (v8 | v9)
  {
    [root setMask:{v8, v9}];
  }

  else
  {
    [root setMask:{mask->n0, mask->n1}];
    *mask *= 2;
  }

  if ([root children])
  {
    +[GLKShaderBlockNode setMasksWithRoot:treeRoot:mask:](GLKShaderBlockNode, "setMasksWithRoot:treeRoot:mask:", [root children], treeRoot, mask);
  }

  if ([root next])
  {
    next = [root next];

    [GLKShaderBlockNode setMasksWithRoot:next treeRoot:treeRoot mask:mask];
  }
}

+ (void)buildUnrollNodeArray:(id)array array:(id)a4
{
  if ([array unrollCt] >= 2)
  {
    [a4 addObject:array];
  }

  if ([array children])
  {
    +[GLKShaderBlockNode buildUnrollNodeArray:array:](GLKShaderBlockNode, "buildUnrollNodeArray:array:", [array children], a4);
  }

  if ([array next])
  {
    next = [array next];

    [GLKShaderBlockNode buildUnrollNodeArray:next array:a4];
  }
}

+ (void)insertNode:(id)node afterSibling:(id)sibling
{
  [node setNext:{objc_msgSend(sibling, "next")}];

  [sibling setNext:node];
}

+ (unsigned)nodeCt:(id)ct nodeCt:(unsigned int *)nodeCt
{
  ++*nodeCt;
  if ([ct children])
  {
    +[GLKShaderBlockNode nodeCt:nodeCt:](GLKShaderBlockNode, "nodeCt:nodeCt:", [ct children], nodeCt);
  }

  if ([ct next])
  {
    +[GLKShaderBlockNode nodeCt:nodeCt:](GLKShaderBlockNode, "nodeCt:nodeCt:", [ct next], nodeCt);
  }

  return *nodeCt;
}

+ (void)printTree:(id)tree
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (tree)
  {
    treeCopy = tree;
    do
    {
      treeCopy = [treeCopy parent];
      [v4 appendString:@"\t"];
    }

    while (treeCopy);
  }

  NSLog(&cfstr_PClassDIndexD.isa, tree, v4, [tree label], objc_msgSend(tree, "propertyClass"), objc_msgSend(tree, "index"));
  children = [tree children];
  if (children)
  {
    next = children;
    do
    {
      [GLKShaderBlockNode printTree:next];
      next = [next next];
    }

    while (next);
  }
}

+ (void)printTreeVerbose:(id)verbose
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (verbose)
  {
    verboseCopy = verbose;
    do
    {
      verboseCopy = [verboseCopy parent];
      [v4 appendString:@"\t"];
    }

    while (verboseCopy);
  }

  NSLog(&cfstr_PClassDIndexD_0.isa, verbose, v4, [verbose label], objc_msgSend(verbose, "propertyClass"), objc_msgSend(verbose, "index"), objc_msgSend(verbose, "blockText"));
  children = [verbose children];
  if (children)
  {
    next = children;
    do
    {
      [GLKShaderBlockNode printTreeVerbose:next];
      next = [next next];
    }

    while (next);
  }
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  if ([element isEqualToString:@"codeblock"])
  {
    v11 = objc_alloc_init(GLKShaderBlockNode);
    v12 = [attributes valueForKey:@"indexedMask"];
    if (v12 && [v12 isEqualToString:@"no"])
    {
      [(GLKShaderBlockNode *)v11 setIndexedMask:0];
    }

    -[GLKShaderBlockNode setLabel:](v11, "setLabel:", [attributes valueForKey:@"label"]);
    v13 = [attributes valueForKey:@"type"];
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
    v15 = [attributes valueForKey:@"unrollCt"];
    if (v15)
    {
      -[GLKShaderBlockNode setUnrollCt:](v11, "setUnrollCt:", [v15 intValue]);
    }

    v16 = [attributes valueForKey:@"class"];
    -[GLKShaderBlockNode setLoopVar:](v11, "setLoopVar:", [attributes valueForKey:@"loopVar"]);
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

        [parser setDelegate:v11];
        return;
      }

      v17 = 20;
    }

    [(GLKShaderBlockNode *)v11 setPropertyClass:v17];
    goto LABEL_32;
  }

  if ([element isEqualToString:@"codeblocks"])
  {
    -[GLKShaderBlockNode setLabel:](self, "setLabel:", [attributes valueForKey:@"label"]);
    self->_type = 0;
    self->_propertyClass = 21;
  }
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  uTF8String = [characters UTF8String];
  v7 = *uTF8String;
  if (!*uTF8String)
  {
    return;
  }

  v8 = uTF8String + 1;
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
  [(NSMutableString *)[(GLKShaderBlockNode *)v11 blockText] appendString:characters];
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
      next = [(GLKShaderBlockNode *)children next];

      children = next;
    }

    while (next);
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