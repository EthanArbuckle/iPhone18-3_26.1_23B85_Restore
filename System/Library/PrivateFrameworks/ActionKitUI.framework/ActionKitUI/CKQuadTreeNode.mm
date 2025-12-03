@interface CKQuadTreeNode
- (CGRect)bounds;
- (CKQuadTreeNode)initWithBounds:(CGRect)bounds;
- (NSArray)nodes;
- (id)debugDescriptionWithLevel:(int64_t)level;
- (id)description;
- (id)nodeForPoint:(CGPoint)point;
- (void)insertPoint:(CGPoint)point;
- (void)visit:(id)visit;
@end

@implementation CKQuadTreeNode

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)visit:(id)visit
{
  v17 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  v5 = visitCopy;
  if (visitCopy && ((*(visitCopy + 2))(visitCopy, self) & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    nodes = [(CKQuadTreeNode *)self nodes];
    v7 = [nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(nodes);
          }

          [*(*(&v12 + 1) + 8 * v10++) visit:v5];
        }

        while (v8 != v10);
        v8 = [nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)insertPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (!CGRectContainsPoint(self->_bounds, point))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CKQuadTree.m" lineNumber:99 description:@"You can only insert points within the calculated bounds"];
  }

  point = self->_point;
  if (!point)
  {
    if ([(CKQuadTreeNode *)self isLeaf])
    {
      v8 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
      v9 = self->_point;
      self->_point = v8;
      goto LABEL_11;
    }

    point = self->_point;
  }

  [(NSValue *)point CGPointValue];
  v11 = v10;
  v13 = v12;
  if ([(CKQuadTreeNode *)self isLeaf]&& vabdd_f64(x, v11) + vabdd_f64(y, v13) > 0.00999999978)
  {
    v14 = [(CKQuadTreeNode *)self nodeForPoint:v11, v13];
    [v14 insertPoint:{v11, v13}];

    v15 = self->_point;
    self->_point = 0;
  }

  [(CKQuadTreeNode *)self nodeForPoint:x, y];
  [objc_claimAutoreleasedReturnValue() insertPoint:{x, y}];
LABEL_11:

  MEMORY[0x2821F96F8]();
}

- (id)nodeForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  memset(&remainder, 0, sizeof(remainder));
  memset(&slice, 0, sizeof(slice));
  memset(&v24, 0, sizeof(v24));
  memset(&v23, 0, sizeof(v23));
  v6 = CGRectGetWidth(self->_bounds) * 0.5;
  CGRectDivide(self->_bounds, &slice, &remainder, v6, CGRectMinXEdge);
  v7 = CGRectGetHeight(self->_bounds) * 0.5;
  CGRectDivide(slice, &slice, &v24, v7, CGRectMinYEdge);
  v8 = CGRectGetHeight(self->_bounds) * 0.5;
  CGRectDivide(remainder, &remainder, &v23, v8, CGRectMinYEdge);
  v28.x = x;
  v28.y = y;
  if (CGRectContainsPoint(remainder, v28))
  {
    topRight = self->_topRight;
    p_topRight = &self->_topRight;
    v10 = topRight;
    v12 = topRight;
    if (topRight)
    {
      goto LABEL_14;
    }

    v13 = [CKQuadTreeNode alloc];
    v14 = remainder.origin.x;
    v15 = remainder.origin.y;
    width = remainder.size.width;
    height = remainder.size.height;
    goto LABEL_13;
  }

  v29.x = x;
  v29.y = y;
  if (CGRectContainsPoint(slice, v29))
  {
    topLeft = self->_topLeft;
    p_topRight = &self->_topLeft;
    v10 = topLeft;
    v12 = topLeft;
    if (topLeft)
    {
      goto LABEL_14;
    }

    v13 = [CKQuadTreeNode alloc];
    v14 = slice.origin.x;
    v15 = slice.origin.y;
    width = slice.size.width;
    height = slice.size.height;
    goto LABEL_13;
  }

  v30.x = x;
  v30.y = y;
  if (CGRectContainsPoint(v24, v30))
  {
    bottomLeft = self->_bottomLeft;
    p_topRight = &self->_bottomLeft;
    v10 = bottomLeft;
    v12 = bottomLeft;
    if (bottomLeft)
    {
      goto LABEL_14;
    }

    v13 = [CKQuadTreeNode alloc];
    v14 = v24.origin.x;
    v15 = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    goto LABEL_13;
  }

  v31.x = x;
  v31.y = y;
  if (!CGRectContainsPoint(v23, v31))
  {
    v21 = 0;
    goto LABEL_16;
  }

  bottomRight = self->_bottomRight;
  p_topRight = &self->_bottomRight;
  v10 = bottomRight;
  v12 = bottomRight;
  if (!bottomRight)
  {
    v13 = [CKQuadTreeNode alloc];
    v15 = v23.origin.y;
    v14 = v23.origin.x;
    height = v23.size.height;
    width = v23.size.width;
LABEL_13:
    v12 = [(CKQuadTreeNode *)v13 initWithBounds:v14, v15, width, height, *&v23.origin, *&v23.size];
  }

LABEL_14:
  objc_storeStrong(p_topRight, v12);
  v21 = v12;
  if (!v10)
  {
  }

LABEL_16:

  return v21;
}

- (NSArray)nodes
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObjects:{self->_topRight, 0}];
  v4 = v3;
  if (self->_topLeft)
  {
    [v3 addObject:?];
  }

  if (self->_bottomLeft)
  {
    [v4 addObject:?];
  }

  if (self->_bottomRight)
  {
    [v4 addObject:?];
  }

  v5 = [v4 copy];

  return v5;
}

- (id)debugDescriptionWithLevel:(int64_t)level
{
  v35[4] = *MEMORY[0x277D85DE8];
  null = [(CKQuadTreeNode *)self->_topRight debugDescriptionWithLevel:level + 1];
  v6 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v28 = null;
  v35[0] = null;
  v7 = [(CKQuadTreeNode *)self->_topLeft debugDescriptionWithLevel:level + 1];
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v35[1] = null2;
  v9 = [(CKQuadTreeNode *)self->_bottomLeft debugDescriptionWithLevel:level + 1];
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v35[2] = null3;
  selfCopy = self;
  v11 = [(CKQuadTreeNode *)self->_bottomRight debugDescriptionWithLevel:level + 1];
  null4 = v11;
  if (!v11)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v35[3] = null4;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  v14 = [v13 mutableCopy];

  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v6)
  {
  }

  null5 = [MEMORY[0x277CBEB68] null];
  [v14 removeObject:null5];

  string = [MEMORY[0x277CCAB68] string];
  v17 = [MEMORY[0x277CCAB68] stringWithString:@"\n"];
  if ((level & 0x8000000000000000) == 0)
  {
    v18 = level + 1;
    do
    {
      [v17 appendString:@"  | "];
      --v18;
    }

    while (v18);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v14;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [string appendFormat:@"%@%@", v17, *(*(&v30 + 1) + 8 * i)];
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v21);
  }

  v24 = [(CKQuadTreeNode *)selfCopy description];
  v25 = [v24 stringByAppendingString:string];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)description
{
  v3 = self->_point;
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    [(NSValue *)v3 CGPointValue];
    v5 = NSStringFromCGPoint(v14);
    v6 = [v4 stringWithFormat:@", point: %@", v5];
  }

  else
  {
    v6 = &stru_2850A01A8;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromCGRect(self->_bounds);
  v11 = [v7 stringWithFormat:@"<%@: %p, bounds: %@%@>", v9, self, v10, v6];

  return v11;
}

- (CKQuadTreeNode)initWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (CGRectIsNull(bounds))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CKQuadTree.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsNull(bounds)"}];
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v9 = CGRectGetHeight(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  if (v9 != CGRectGetWidth(v19))
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CKQuadTree.m" lineNumber:29 description:@"The bounds must be square"];
  }

  v17.receiver = self;
  v17.super_class = CKQuadTreeNode;
  v10 = [(CKQuadTreeNode *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_bounds.origin.x = x;
    v10->_bounds.origin.y = y;
    v10->_bounds.size.width = width;
    v10->_bounds.size.height = height;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    userInfo = v11->_userInfo;
    v11->_userInfo = dictionary;
  }

  return v11;
}

@end