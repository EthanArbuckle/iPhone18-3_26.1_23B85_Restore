@interface CKQuadTree
- (CKQuadTree)initWithPoints:(id)a3;
@end

@implementation CKQuadTree

- (CKQuadTree)initWithPoints:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"CKQuadTree.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"points"}];
  }

  v39.receiver = self;
  v39.super_class = CKQuadTree;
  v6 = [(CKQuadTree *)&v39 init];
  if (v6)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      v11 = 1.79769313e308;
      v12 = 2.22507386e-308;
      v13 = 2.22507386e-308;
      v14 = 1.79769313e308;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v35 + 1) + 8 * i) CGPointValue];
          if (v16 > v13)
          {
            v13 = v16;
          }

          if (v16 < v14)
          {
            v14 = v16;
          }

          if (v17 > v12)
          {
            v12 = v17;
          }

          if (v17 < v11)
          {
            v11 = v17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 1.79769313e308;
      v12 = 2.22507386e-308;
      v13 = 2.22507386e-308;
      v14 = 1.79769313e308;
    }

    v18 = v13 - v14;
    if (v13 - v14 < v12 - v11)
    {
      v18 = v12 - v11;
    }

    v19 = ceil(v18 + 1.0);
    v20 = [[CKQuadTreeNode alloc] initWithBounds:floor(v14), floor(v11), v19, v19];
    rootNode = v6->_rootNode;
    v6->_rootNode = v20;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v7;
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = v6->_rootNode;
          [*(*(&v31 + 1) + 8 * j) CGPointValue];
          [(CKQuadTreeNode *)v27 insertPoint:?];
        }

        v24 = [v22 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v24);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v6;
}

@end