@interface CRLBezierSubpath
- (BOOL)allNodesSelected;
- (BOOL)canDeleteSelectedNodes;
- (BOOL)closeIfEndpointsAreEqual;
- (BOOL)hasSelectedNode;
- (BOOL)isCircular;
- (BOOL)isRectangular;
- (CGPoint)calculateNewControlFromOriginalDelta:(CGPoint)a3 currentDelta:(CGPoint)a4 originalSmoothDelta:(CGPoint)a5 node:(CGPoint)a6;
- (CGRect)nodeBounds;
- (CRLBezierNode)firstNode;
- (CRLBezierNode)lastNode;
- (CRLBezierPath)bezierPath;
- (CRLBezierSubpath)init;
- (double)distanceToPoint:(CGPoint)a3 elementIndex:(unint64_t *)a4 tValue:(double *)a5 threshold:(double)a6;
- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)nodeAfterNode:(id)a3;
- (id)nodePriorToNode:(id)a3;
- (id)splitEdgeAtIndex:(unint64_t)a3 atPercentage:(double)a4;
- (int64_t)updateSmoothNodes:(id)a3 from:(int64_t)a4 to:(int64_t)a5 closed:(BOOL)a6 addTemporaryNodes:(BOOL)a7;
- (void)addNodesToArray:(id)a3;
- (void)addTemporarySmoothNodes;
- (void)appendToBezierPath:(id)a3 selectedNodesOnly:(BOOL)a4 fromIndex:(unint64_t)a5;
- (void)convertToHobby;
- (void)deleteSelectedNodes;
- (void)deselectAllNodes;
- (void)morphWithMorphInfo:(id)a3;
- (void)offsetSelectedEdgesByDelta:(CGPoint)a3;
- (void)offsetSelectedNodesByDelta:(CGPoint)a3;
- (void)removeTemporaryNodes;
- (void)reverseDirection;
- (void)selectAllNodes;
- (void)setNodes:(id)a3;
- (void)sharpenAllNodes;
- (void)smoothAllNodes;
- (void)smoothNode:(id)a3;
- (void)transformUsingAffineTransform:(CGAffineTransform *)a3;
- (void)updateReflectedState;
- (void)updateSmoothNodes;
- (void)updateSmoothNodes:(id)a3 addTemporaryNodes:(BOOL)a4;
@end

@implementation CRLBezierSubpath

- (CRLBezierSubpath)init
{
  v6.receiver = self;
  v6.super_class = CRLBezierSubpath;
  v2 = [(CRLBezierSubpath *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    mNodes = v2->mNodes;
    v2->mNodes = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [NSArray alloc];
  v6 = [(CRLBezierSubpath *)self nodes];
  v7 = [v5 initWithArray:v6 copyItems:1];

  [v4 setNodes:v7];
  [v4 setClosed:self->mClosed];

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  if (self->mClosed)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"<%@ %p nodes=%p closed=%@>", v4, self, self->mNodes, v6];

  return v7;
}

- (void)setNodes:(id)a3
{
  v4 = [a3 mutableCopy];
  mNodes = self->mNodes;
  self->mNodes = v4;
}

- (BOOL)isRectangular
{
  v3 = [(CRLBezierSubpath *)self isClosed];
  if (!v3)
  {
    return v3;
  }

  v4 = [(CRLBezierSubpath *)self nodes];
  v5 = [v4 count];

  if (v5 != 4)
  {
    goto LABEL_23;
  }

  memset(v46, 0, sizeof(v46));
  v6 = [(CRLBezierSubpath *)self nodes];
  [v6 getObjects:v46 range:{0, 4}];

  v7 = 0;
  do
  {
    v3 = [*(v46 + v7) isCollapsed];
    if (v3)
    {
      v8 = v7 >= 3;
    }

    else
    {
      v8 = 1;
    }

    ++v7;
  }

  while (!v8);
  if (v3)
  {
    v9 = 0;
    v10 = v46;
    do
    {
      v11 = &v45[v9 - 1];
      v12 = *v10++;
      [v12 nodePoint];
      *v11 = v13;
      *(v11 + 1) = v14;
      v9 += 2;
    }

    while (v9 != 8);
    v15 = 0;
    v16 = v45;
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v19 = &v45[2 * ((v15 + 1) & 3) - 1];
      v20 = *v19;
      v21 = v19[1];
      v22 = &v45[2 * (v15 ^ 2) - 1];
      v23 = *v22;
      v24 = v22[1];
      v25 = sub_100120090(v17, *v16, v20, v21);
      v26 = sub_100120090(v20, v21, v23, v24);
      v27 = vabdd_f64(sub_100120090(v17, v18, v23, v24), sqrt(v26 * v26 + v25 * v25));
      v16 += 2;
    }

    while (v27 <= 0.00100000005 && v15++ < 3);
    if (v27 <= 0.00100000005)
    {
      v29 = v45;
      v30 = sub_10011EC88(v44, v45[0], v45[1]);
      v34 = sub_100120604(v30, v31, v32, v33, v45[3]);
      v38 = sub_100120604(v34, v35, v36, v37, v45[5]);
      v40 = v39;
      v41 = 3;
      do
      {
        v42 = v41;
        LOBYTE(v3) = sub_10011ECC8(*(v29 - 1), *v29, v38, v40);
        if (v3)
        {
          break;
        }

        v41 = v42 - 1;
        v29 += 2;
      }

      while (v42);
      return v3;
    }

LABEL_23:
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isCircular
{
  v3 = [(CRLBezierSubpath *)self isClosed];
  if (v3)
  {
    v4 = [(CRLBezierSubpath *)self bezierPath];
    v5 = [v4 isCircular];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (CRLBezierPath)bezierPath
{
  v3 = +[CRLBezierPath bezierPath];
  [(CRLBezierSubpath *)self appendToBezierPath:v3 selectedNodesOnly:0 fromIndex:0];

  return v3;
}

- (void)appendToBezierPath:(id)a3 selectedNodesOnly:(BOOL)a4 fromIndex:(unint64_t)a5
{
  v6 = a4;
  v36 = a3;
  v8 = [(CRLBezierSubpath *)self nodes];
  v9 = [v8 count];

  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = a5 == 0 && self->mClosed;
  v11 = [(CRLBezierSubpath *)self nodes];
  v12 = [v11 objectAtIndexedSubscript:a5];

  [v12 nodePoint];
  v14 = v13;
  v16 = v15;
  [v36 moveToPoint:?];
  v17 = 0;
  v18 = (v9 + self->mClosed);
  v19 = a5 + 1;
  while (1)
  {
    v20 = v12;
    if (v19 >= v18)
    {
      break;
    }

    v21 = v16;
    v22 = v14;
    v23 = [(CRLBezierSubpath *)self nodes];
    v12 = [v23 objectAtIndexedSubscript:v19 % v9];

    [v12 nodePoint];
    v14 = v24;
    v16 = v25;
    if (!v6 || [v20 isSelected] && objc_msgSend(v12, "isSelected"))
    {
      [v20 outControlPoint];
      v27 = v26;
      v29 = v28;
      [v12 inControlPoint];
      v31 = v30;
      v33 = v32;
      if (v17)
      {
        [v36 moveToPoint:{v22, v21}];
      }

      if (sub_10011ECC8(v22, v21, v27, v29))
      {
        v34 = sub_10011ECC8(v31, v33, v14, v16);
        v35 = v36;
        if (v34)
        {
          [v36 lineToPoint:{v14, v16}];
LABEL_15:
          v17 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        v35 = v36;
      }

      [v35 curveToPoint:v14 controlPoint1:v16 controlPoint2:{v27, v29, v31, v33}];
      goto LABEL_15;
    }

    v10 = 0;
    v17 = 1;
LABEL_16:

    ++v19;
    if (!v12)
    {
      v20 = 0;
      break;
    }
  }

  if (v10)
  {
    [v36 closePath];
  }

LABEL_21:
}

- (void)updateReflectedState
{
  v2 = [(CRLBezierSubpath *)self nodes];
  [v2 makeObjectsPerformSelector:"updateReflectedState"];
}

- (void)reverseDirection
{
  v3 = [(CRLBezierSubpath *)self nodes];
  v8 = [v3 reverseObjectEnumerator];

  v4 = objc_alloc_init(NSMutableArray);
  v5 = [v8 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v6 swapControlPoints];
      [v4 addObject:v6];
      v7 = [v8 nextObject];

      v6 = v7;
    }

    while (v7);
  }

  [(CRLBezierSubpath *)self setNodes:v4];
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CRLBezierSubpath *)self nodes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = *&a3->c;
        v11[0] = *&a3->a;
        v11[1] = v10;
        v11[2] = *&a3->tx;
        [v9 transformUsingAffineTransform:v11];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)nodePriorToNode:(id)a3
{
  v4 = a3;
  v5 = [(CRLBezierSubpath *)self nodes];
  v6 = [v5 indexOfObject:v4];

  if (v6 >= 1)
  {
    v7 = [(CRLBezierSubpath *)self nodes];
    v8 = [v7 objectAtIndex:v6 - 1];
LABEL_5:
    v9 = v8;

    goto LABEL_6;
  }

  if (self->mClosed)
  {
    v7 = [(CRLBezierSubpath *)self nodes];
    v8 = [v7 lastObject];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)nodeAfterNode:(id)a3
{
  v4 = a3;
  v5 = [(CRLBezierSubpath *)self nodes];
  v6 = [v5 indexOfObject:v4];

  v7 = v6 + 1;
  v8 = [(CRLBezierSubpath *)self nodes];
  v9 = [v8 count];

  if (v7 < v9)
  {
    v10 = [(CRLBezierSubpath *)self nodes];
    v11 = v10;
    v12 = v7;
LABEL_5:
    v13 = [v10 objectAtIndex:v12];

    goto LABEL_7;
  }

  if (self->mClosed)
  {
    v10 = [(CRLBezierSubpath *)self nodes];
    v11 = v10;
    v12 = 0;
    goto LABEL_5;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (CRLBezierNode)firstNode
{
  v2 = [(CRLBezierSubpath *)self nodes];
  v3 = [v2 firstObject];

  return v3;
}

- (CRLBezierNode)lastNode
{
  mClosed = self->mClosed;
  v3 = [(CRLBezierSubpath *)self nodes];
  v4 = v3;
  if (mClosed)
  {
    [v3 objectAtIndex:0];
  }

  else
  {
    [v3 lastObject];
  }
  v5 = ;

  return v5;
}

- (void)offsetSelectedNodesByDelta:(CGPoint)a3
{
  x = a3.x;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CRLBezierSubpath *)self nodes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isSelected])
        {
          [v9 nodePoint];
          [v9 moveToPoint:{sub_10011F334(v10, v11, x)}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)offsetSelectedEdgesByDelta:(CGPoint)a3
{
  x = a3.x;
  v5 = [(CRLBezierSubpath *)self nodes];
  v14 = [v5 objectEnumerator];

  v6 = [(CRLBezierSubpath *)self nodes];
  v7 = [v6 lastObject];

  v8 = [v7 isSelected];
  v9 = [v14 nextObject];
  if (v9)
  {
    v10 = v9;
    do
    {
      if ((v8 & 1) != 0 || [v10 isSelected])
      {
        [v10 nodePoint];
        [v10 moveToPoint:{sub_10011F334(v11, v12, x)}];
        v8 = [v10 isSelected];
      }

      else
      {
        v8 = 0;
      }

      v13 = [v14 nextObject];

      v10 = v13;
    }

    while (v13);
  }
}

- (BOOL)allNodesSelected
{
  v2 = [(CRLBezierSubpath *)self nodes];
  v3 = [v2 reverseObjectEnumerator];

  v4 = 0;
  do
  {
    v5 = v4;
    v4 = [v3 nextObject];
  }

  while (v4 && ([v4 isSelected] & 1) != 0);

  return v4 == 0;
}

- (BOOL)hasSelectedNode
{
  v2 = [(CRLBezierSubpath *)self nodes];
  v3 = [v2 reverseObjectEnumerator];

  v4 = 0;
  do
  {
    v5 = v4;
    v4 = [v3 nextObject];
  }

  while (v4 && ![v4 isSelected]);

  return v4 != 0;
}

- (BOOL)canDeleteSelectedNodes
{
  v2 = [(CRLBezierSubpath *)self nodes];
  v3 = [v2 objectEnumerator];

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = v6;
    v6 = [v3 nextObject];

    if (!v6)
    {
      break;
    }

    v8 = [v6 isSelected];
    v4 |= v8;
    v5 += v8 ^ 1;
  }

  while ((v4 & 1) == 0 || v5 < 2);

  return v6 != 0;
}

- (void)deleteSelectedNodes
{
  v3 = [(CRLBezierSubpath *)self nodes];
  v10 = [v3 objectEnumerator];

  v4 = objc_alloc_init(NSMutableArray);
  v5 = [v10 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      if (([v6 isSelected] & 1) == 0)
      {
        [v4 addObject:v6];
      }

      v7 = [v10 nextObject];

      v6 = v7;
    }

    while (v7);
  }

  [(CRLBezierSubpath *)self setNodes:v4];
  v8 = [(CRLBezierSubpath *)self nodes];
  v9 = [v8 count];

  if (v9 <= 1)
  {
    [(CRLBezierSubpath *)self setClosed:0];
  }
}

- (void)selectAllNodes
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CRLBezierSubpath *)self nodes];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) setSelected:1];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)deselectAllNodes
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CRLBezierSubpath *)self nodes];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) setSelected:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (double)distanceToPoint:(CGPoint)a3 elementIndex:(unint64_t *)a4 tValue:(double *)a5 threshold:(double)a6
{
  v10 = [(CRLBezierSubpath *)self nodes];
  v11 = [v10 count];

  if (!v11)
  {
    return 1.79769313e308;
  }

  v12 = [(CRLBezierSubpath *)self nodes];
  v13 = [v12 objectAtIndexedSubscript:0];

  [v13 nodePoint];
  v16 = 0;
  v17 = v11 + self->mClosed;
  v18 = 0.0;
  v19 = 1.79769313e308;
  v49 = a5;
  if (v17 < 2 || (v20 = v14, v21 = v15, v22 = a6 * a6, v23 = 1.79769313e308, v50 = a6 * a6, a6 * a6 >= 1.79769313e308))
  {
    v24 = v13;
    v46 = 0;
LABEL_19:
    if (!a4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = 0;
    v16 = 0;
    v19 = 1.79769313e308;
    v25 = 2;
    while (1)
    {
      v52 = v19;
      v53 = v18;
      v26 = [(CRLBezierSubpath *)self nodes:v23];
      v27 = [v26 objectAtIndexedSubscript:(v25 - 1) % v11];

      [v27 nodePoint];
      v29 = v28;
      v31 = v30;
      [v13 outControlPoint];
      v33 = v32;
      v35 = v34;
      [v27 inControlPoint];
      v37 = v36;
      v39 = v38;
      if (sub_10011ECC8(v20, v21, v33, v35) && sub_10011ECC8(v37, v39, v29, v31))
      {
        v54.f64[0] = v20;
        v54.f64[1] = v21;
        v55 = v29;
        v56 = v31;
        x = a3.x;
        y = a3.y;
        v18 = sub_100404B24(v54.f64, a3.x, a3.y);
        v42 = sub_100120ABC(v54.f64[0], v54.f64[1], v55, v56, v18);
      }

      else
      {
        v54.f64[0] = v20;
        v54.f64[1] = v21;
        v55 = v33;
        v56 = v35;
        v57 = v37;
        v58 = v39;
        v59 = v29;
        v60 = v31;
        x = a3.x;
        y = a3.y;
        sub_100404BEC(&v54, a3.x, a3.y, 1.0);
        v18 = v44;
        v42 = sub_10011F20C(&v54, v44);
      }

      v45 = sub_10011F068(v42, v43, x, y);
      v19 = v52;
      if (v45 < v52)
      {
        v16 = v25 - 2;
      }

      else
      {
        v18 = v53;
      }

      if (v45 < v52)
      {
        v19 = v45;
      }

      v24 = v27;

      if (v25 >= v17)
      {
        break;
      }

      ++v25;
      v23 = v50;
      v46 = v24;
      v13 = v24;
      v20 = v29;
      v21 = v31;
      if (v19 <= v50)
      {
        goto LABEL_19;
      }
    }

    v46 = v24;
    if (!a4)
    {
      goto LABEL_21;
    }
  }

  *a4 = v16;
LABEL_21:
  if (v49)
  {
    *v49 = v18;
  }

  v47 = sqrt(v19);

  return v47;
}

- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6
{
  y = a3.y;
  x = a3.x;
  v11 = [(CRLBezierSubpath *)self nodes];
  v12 = [v11 objectEnumerator];

  v13 = 0;
  while (1)
  {
    v14 = v13;
    v13 = [v12 nextObject];

    if (!v13)
    {
      break;
    }

    v15 = *&a4->c;
    v18[0] = *&a4->a;
    v18[1] = v15;
    v18[2] = *&a4->tx;
    if ([v13 underPoint:v18 withTransform:a6 andTolerance:x returningType:{y, a5}])
    {
      v16 = v13;
      break;
    }
  }

  return v13;
}

- (CGRect)nodeBounds
{
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v5 = [(CRLBezierSubpath *)self nodes];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(CRLBezierSubpath *)self nodes];
    v8 = [v7 objectEnumerator];

    v9 = [v8 nextObject];
    [v9 nodePoint];
    x = v10;
    y = v12;
    v14 = [v8 nextObject];

    if (v14)
    {
      do
      {
        [v14 nodePoint];
        x = sub_100120604(x, y, width, height, v15);
        y = v16;
        width = v17;
        height = v18;
        if ([v14 isSelected])
        {
          [v14 inControlPoint];
          v20 = sub_100120604(x, y, width, height, v19);
          v22 = v21;
          v24 = v23;
          v26 = v25;
          [v14 outControlPoint];
          x = sub_100120604(v20, v22, v24, v26, v27);
          y = v28;
          width = v29;
          height = v30;
        }

        v31 = [v8 nextObject];

        v14 = v31;
      }

      while (v31);
    }
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
  }

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)sharpenAllNodes
{
  v2 = [(CRLBezierSubpath *)self nodes];
  [v2 makeObjectsPerformSelector:"collapse"];
}

- (void)smoothNode:(id)a3
{
  v113 = a3;
  v4 = [(CRLBezierSubpath *)self nodePriorToNode:v113];
  v5 = [(CRLBezierSubpath *)self nodeAfterNode:v113];
  v6 = v5;
  y = CGPointZero.y;
  if (v4)
  {
    [v4 nodePoint];
    v9 = v8;
    v11 = v10;
    [v113 nodePoint];
    x = sub_10011F31C(v9, v11, v12);
    v15 = v14;
    if (!v6)
    {
      [v113 nodePoint];
      v17 = v16;
      v19 = v18;
      v20 = sub_10011F340(x, v15, 0.330000013);
      [v113 setInControlPoint:{sub_10011F334(v17, v19, v20)}];
      goto LABEL_22;
    }
  }

  else
  {
    x = CGPointZero.x;
    v15 = CGPointZero.y;
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  [v6 nodePoint];
  v22 = v21;
  v24 = v23;
  [v113 nodePoint];
  v26 = sub_10011F31C(v22, v24, v25);
  v28 = v27;
  if (v4)
  {
    if (!sub_10011ECC8(x, v15, CGPointZero.x, y) && !sub_10011ECC8(v26, v28, CGPointZero.x, y))
    {
      [v113 inControlPoint];
      v30 = v29;
      v32 = v31;
      [v113 nodePoint];
      if (sub_10011ECC8(v30, v32, v33, v34))
      {
        [v113 nodePoint];
        v36 = v35;
        v38 = v37;
        v39 = sub_10011F340(x, v15, 0.100000001);
        [v113 setInControlPoint:{sub_10011F334(v36, v38, v39)}];
      }

      [v113 outControlPoint];
      v41 = v40;
      v43 = v42;
      [v113 nodePoint];
      if (sub_10011ECC8(v41, v43, v44, v45))
      {
        [v113 nodePoint];
        v47 = v46;
        v49 = v48;
        v50 = sub_10011F340(v26, v28, 0.100000001);
        [v113 setOutControlPoint:{sub_10011F334(v47, v49, v50)}];
      }

      [v113 inControlPoint];
      v52 = v51;
      v54 = v53;
      [v113 nodePoint];
      v56 = sub_10011F31C(v52, v54, v55);
      v58 = v57;
      v59 = sub_100120074(v56, v57);
      v111 = sub_10011F340(v56, v58, 1.0 / v59);
      v112 = v60;
      [v113 nodePoint];
      v62 = v61;
      v64 = v63;
      [v113 outControlPoint];
      v66 = sub_10011F31C(v62, v64, v65);
      v68 = v67;
      v69 = sub_100120074(v66, v67);
      v70 = sub_10011F340(v66, v68, 1.0 / v69);
      v72 = v71;
      v73 = sub_100120074(x, v15);
      v74 = v73 * 0.5 + (v59 - v73 * 0.5) * 0.699999988;
      v75 = sub_100120074(v26, v28) * 0.5;
      v76 = v75 + (v69 - v75) * 0.699999988;
      v77 = sub_10011F334(v111, v112, v70);
      v79 = sub_10011F340(v77, v78, 0.5);
      v81 = v80;
      v82 = sub_100120074(v79, v80);
      if (v82 >= 0.5)
      {
        v83 = sub_10011F340(v79, v81, 1.0 / v82);
      }

      else
      {
        v83 = sub_10012104C(0, v70, v72);
      }

      v90 = v83;
      v91 = v84;
      v92 = v74 * sub_10011F328(v111, v112, v83, v84);
      v93 = -(v76 * sub_10011F328(v70, v72, v90, v91));
      *v95.i64 = fabs(v92);
      *v96.i64 = v74 * 0.5;
      if (*v95.i64 < v74 * 0.5)
      {
        *v96.i32 = *v96.i64;
        *v95.i32 = v92;
        v97.i64[0] = 0x8000000080000000;
        v97.i64[1] = 0x8000000080000000;
        v96 = vbslq_s8(v97, v96, v95);
        v92 = *v96.i32;
      }

      *v96.i64 = fabs(v93);
      *v94.i64 = v76 * 0.5;
      v98 = *v96.i64 < v76 * 0.5;
      *v94.i32 = v76 * 0.5;
      *v96.i32 = v93;
      v99.i64[0] = 0x8000000080000000;
      v99.i64[1] = 0x8000000080000000;
      *v94.i64 = *vbslq_s8(v99, v94, v96).i32;
      if (v98)
      {
        v100 = *v94.i64;
      }

      else
      {
        v100 = v93;
      }

      [v113 nodePoint];
      v102 = v101;
      v104 = v103;
      v105 = sub_10011F340(v90, v91, v92);
      [v113 setInControlPoint:{sub_10011F334(v102, v104, v105)}];
      [v113 nodePoint];
      v107 = v106;
      v109 = v108;
      v110 = sub_10011F340(v90, v91, v100);
      [v113 setOutControlPoint:{sub_10011F334(v107, v109, v110)}];
      [v113 setReflectedState:1];
    }
  }

  else
  {
    [v113 nodePoint];
    v86 = v85;
    v88 = v87;
    v89 = sub_10011F340(v26, v28, 0.330000013);
    [v113 setOutControlPoint:{sub_10011F334(v86, v88, v89)}];
  }

LABEL_22:
}

- (BOOL)closeIfEndpointsAreEqual
{
  if ([(CRLBezierSubpath *)self isClosed])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(CRLBezierSubpath *)self firstNode];
    v5 = [(CRLBezierSubpath *)self lastNode];
    [v5 nodePoint];
    v7 = v6;
    v9 = v8;
    [v4 nodePoint];
    v3 = sub_10011ECC8(v7, v9, v10, v11);
    if (v3)
    {
      [v5 inControlPoint];
      [v4 setInControlPoint:?];
      [(CRLBezierSubpath *)self removeLastNode];
      [(CRLBezierSubpath *)self setClosed:1];
    }

    [v4 updateReflectedState];
  }

  return v3;
}

- (void)addNodesToArray:(id)a3
{
  v4 = a3;
  v5 = [(CRLBezierSubpath *)self nodes];
  [v4 addObjectsFromArray:v5];
}

- (id)splitEdgeAtIndex:(unint64_t)a3 atPercentage:(double)a4
{
  v6 = [(CRLBezierSubpath *)self nodes];
  v7 = [v6 objectAtIndexedSubscript:a3];

  v8 = [(CRLBezierSubpath *)self nodes];
  v9 = a3 + 1;
  v10 = [(CRLBezierSubpath *)self nodes];
  v11 = [v8 objectAtIndexedSubscript:{(a3 + 1) % objc_msgSend(v10, "count")}];

  [v7 nodePoint];
  v13 = v12;
  v15 = v14;
  v45.f64[0] = v12;
  v45.f64[1] = v14;
  [v7 outControlPoint];
  v17 = v16;
  v19 = v18;
  v46 = v16;
  v47 = v18;
  [v11 inControlPoint];
  v21 = v20;
  v23 = v22;
  v48 = v20;
  v49 = v22;
  [v11 nodePoint];
  v25 = v24;
  v27 = v26;
  v50 = v24;
  v51 = v26;
  if (sub_10011ECC8(v13, v15, v17, v19) && sub_10011ECC8(v21, v23, v25, v27))
  {
    v46 = sub_100120ABC(v13, v15, v25, v27, 0.333333333);
    v47 = v28;
    v48 = sub_100120ABC(v13, v15, v25, v27, 0.666666667);
    v49 = v29;
  }

  v30 = [CRLBezierNode bezierNodeWithPoint:sub_10011F20C(&v45, a4)];
  [v30 setReflectedState:2];
  [v30 setType:3];
  v31 = [(CRLBezierSubpath *)self nodes];
  v32 = [v31 mutableCopy];

  [v32 insertObject:v30 atIndex:v9];
  [(CRLBezierSubpath *)self setNodes:v32];
  sub_100404958(&v45, v40, 0.0, a4);
  sub_100404958(&v45, v35, a4, 1.0);
  [v7 setOutControlPoint:{v41, v42}];
  [v30 setInControlPoint:{v43, v44}];
  [v30 setOutControlPoint:{v36, v37}];
  [v11 setInControlPoint:{v38, v39}];

  return v30;
}

- (void)convertToHobby
{
  v3 = [(CRLBezierSubpath *)self nodes];
  v4 = [v3 count];

  if (v4)
  {
    v5 = ([(CRLBezierSubpath *)self isClosed]^ 1);
    v6 = (v4 - v5);
    if (v4 != v5)
    {
      v7 = 0;
      do
      {
        v8 = [(CRLBezierSubpath *)self nodes];
        v9 = [v8 objectAtIndexedSubscript:v7];

        v10 = [(CRLBezierSubpath *)self nodes];
        v11 = v7 + 1;
        v12 = [v10 objectAtIndexedSubscript:(v7 + 1) % v4];

        if ([v9 reflectedState])
        {
          [v9 setType:3];
        }

        else if (![v9 reflectedState])
        {
          [v9 setType:1];
          if (![v12 reflectedState])
          {
            [v9 nodePoint];
            v14 = v13;
            v16 = v15;
            [v9 outControlPoint];
            if (!sub_10011ECC8(v14, v16, v17, v18) || ([v12 nodePoint], v20 = v19, v22 = v21, objc_msgSend(v12, "inControlPoint"), !sub_10011ECC8(v20, v22, v23, v24)))
            {
              v25 = [(CRLBezierSubpath *)self splitEdgeAtIndex:v7 atPercentage:0.5];
              ++v6;
              ++v4;
            }
          }
        }

        ++v7;
      }

      while (v11 < v6);
    }
  }
}

- (void)smoothAllNodes
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CRLBezierSubpath *)self nodes];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setType:3];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(CRLBezierSubpath *)self updateSmoothNodes];
}

- (CGPoint)calculateNewControlFromOriginalDelta:(CGPoint)a3 currentDelta:(CGPoint)a4 originalSmoothDelta:(CGPoint)a5 node:(CGPoint)a6
{
  x = a6.x;
  y = a5.y;
  v7 = a5.x;
  v8 = a4.y;
  v9 = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v12 = 1.0;
  v13 = 0.0;
  if (!sub_10011ECC8(a3.x, a3.y, a5.x, a5.y) && !sub_10011ECC8(CGPointZero.x, CGPointZero.y, v7, y))
  {
    v26 = v8;
    v14 = sub_100120074(v11, v10);
    v12 = v14 / sub_100120074(v7, y);
    v15 = sub_1001208D0(v11, v10);
    v13 = v15 - sub_1001208D0(v7, y);
    v8 = v26;
  }

  v16 = sub_100120074(v9, v8);
  v17 = v8;
  v18 = v12 * v16;
  v19 = sub_1001208D0(v9, v17);
  v20 = sub_100120F98(v13 + v19);
  v22 = sub_10011F340(v20, v21, v18);

  v24 = sub_10011F334(v22, v23, x);
  result.y = v25;
  result.x = v24;
  return result;
}

- (void)morphWithMorphInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLBezierSubpath *)self nodes];
  v6 = [v5 count];

  if (v6)
  {
    v161 = malloc_type_malloc(32 * v6, 0x1000040451B5BE8uLL);
    v167 = malloc_type_malloc(16 * v6, 0x100004000313F17uLL);
    v7 = ([(CRLBezierSubpath *)self isClosed]^ 1);
    v8 = (v6 - v7);
    if (v6 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v9++;
        v11 = [(CRLBezierSubpath *)self nodes];
        v12 = [v11 objectAtIndexedSubscript:v10];

        v13 = [(CRLBezierSubpath *)self nodes];
        v14 = [v13 objectAtIndexedSubscript:v9 % v6];

        if ([v12 type] == 1 && objc_msgSend(v14, "type") == 1)
        {
          v15 = [v4 originalNodeForNode:v12];
          v16 = [v4 originalNodeForNode:v14];
          v17 = v16;
          if (v15 && v16 && [v15 type] == 1 && objc_msgSend(v17, "type") == 1)
          {
            v171 = v17;
            v174 = [v4 originalSubpathIndexForNode:v12];
            v18 = [v4 original];
            v19 = [v18 subpaths];
            v175 = [v19 objectAtIndexedSubscript:v174];

            v20 = [v4 originalNodeIndexForNode:v12];
            v169 = [v4 originalNodeIndexForNode:v14];
            v21 = (v20 + 1);
            if ([v175 isClosed])
            {
              v22 = [v175 nodes];
              v21 %= [v22 count];
            }

            v17 = v171;
            if (v21 == v169)
            {
              [v12 nodePoint];
              v24 = v23;
              v26 = v25;
              [v14 nodePoint];
              _ZF = v24 == v28 && v26 == v27;
              if (_ZF || (([v15 nodePoint], v31 = v30, v33 = v32, objc_msgSend(v171, "nodePoint"), v31 == v35) ? (v36 = v33 == v34) : (v36 = 0), v36))
              {
                [v12 nodePoint];
                [v12 setOutControlPoint:?];
                [v14 nodePoint];
                v57 = v14;
              }

              else
              {
                v192 = 0u;
                v193 = 0u;
                v191 = 0u;
                [v15 nodePoint];
                v38 = v37;
                v40 = v39;
                [v171 nodePoint];
                v42 = v41;
                v44 = v43;
                [v12 nodePoint];
                v46 = v45;
                v48 = v47;
                [v14 nodePoint];
                sub_100139F80(1, &v191, v38, v40, v42, v44, v46, v48, v49, v50);
                [v15 outControlPoint];
                [v12 setOutControlPoint:{vaddq_f64(v193, vmlaq_n_f64(vmulq_n_f64(v192, v51), v191, v52))}];
                [v171 inControlPoint];
                v55 = vaddq_f64(v193, vmlaq_n_f64(vmulq_n_f64(v192, v53), v191, v54));
                v56 = v55.f64[1];
                v57 = v14;
              }

              [v57 setInControlPoint:{v55.f64[0], v56}];
            }
          }
        }
      }

      while (v8 != v9);
    }

    v166 = v6;
    v58 = 0;
    v59 = v161 + 16;
    v60 = 1;
    __asm { FMOV            V0.2D, #1.0 }

    v160 = _Q0;
    do
    {
      v65 = [(CRLBezierSubpath *)self nodes];
      v66 = [v65 objectAtIndex:v58];

      v67 = [v4 originalNodeForNode:v66];
      v68 = [v4 originalSmoothNodeForNode:v66];
      if (v67)
      {
        [v66 inControlPoint];
        v70 = v69;
        v72 = v71;
        [v66 nodePoint];
        v74 = sub_10011F31C(v70, v72, v73);
        v164 = v75;
        v165 = v74;
        [v66 outControlPoint];
        v77 = v76;
        v79 = v78;
        [v66 nodePoint];
        v81 = sub_10011F31C(v77, v79, v80);
        v162 = v82;
        v163 = v81;
        [v67 inControlPoint];
        v84 = v83;
        v86 = v85;
        [v67 nodePoint];
        v88 = sub_10011F31C(v84, v86, v87);
        v90 = v89;
        [v68 inControlPoint];
        v92 = v91;
        v94 = v93;
        [v68 nodePoint];
        v96 = sub_10011F31C(v92, v94, v95);
        v98 = v97;
        [v67 outControlPoint];
        v100 = v99;
        v102 = v101;
        [v67 nodePoint];
        v104 = sub_10011F31C(v100, v102, v103);
        v172 = v105;
        v176 = v104;
        [v68 outControlPoint];
        v107 = v106;
        v109 = v108;
        [v68 nodePoint];
        v111 = sub_10011F31C(v107, v109, v110);
        v168 = v112;
        v170 = v111;
        v178[0] = _NSConcreteStackBlock;
        v178[1] = 3221225472;
        v178[2] = sub_100507194;
        v178[3] = &unk_10186AE50;
        v178[4] = v167;
        v113 = objc_retainBlock(v178);
        (v113[2])(v113, v60 - 1, v88, v90, v165, v164, v96, v98);
        (v113[2])(v113, v60, v176, v172, v163, v162, v170, v168);
        [v66 nodePoint];
        [(CRLBezierSubpath *)self calculateNewControlFromOriginalDelta:v88 currentDelta:v90 originalSmoothDelta:v165 node:v164, v96, v98, v114, v115];
        *(v59 - 2) = v116;
        *(v59 - 1) = v117;
        [v66 nodePoint];
        [(CRLBezierSubpath *)self calculateNewControlFromOriginalDelta:v176 currentDelta:v172 originalSmoothDelta:v163 node:v162, v170, v168, v118, v119];
        *v59 = v120;
        v59[1] = v121;
      }

      else
      {
        *&v167[2 * v58] = v160;
        [v66 inControlPoint];
        *(v59 - 2) = v122;
        *(v59 - 1) = v123;
        [v66 outControlPoint];
        *v59 = v124;
        v59[1] = v125;
      }

      ++v58;
      v59 += 4;
      v60 += 2;
    }

    while (v166 != v58);
    v126 = 0;
    v127 = v167 + 1;
    do
    {
      v128 = [(CRLBezierSubpath *)self nodes];
      v129 = [v128 objectAtIndex:v126];

      if ([v129 type] == 3 && (v126 || -[CRLBezierSubpath isClosed](self, "isClosed")))
      {
        v130 = (*(v127 - 1) + *v127) * 0.5;
        *(v127 - 1) = v130;
        *v127 = v130;
      }

      ++v126;
      v127 += 2;
    }

    while (v166 != v126);
    v173 = v4;
    v177 = v166 - ([(CRLBezierSubpath *)self isClosed]^ 1);
    if (v177)
    {
      v131 = 0;
      do
      {
        v132 = v131++;
        v133 = [(CRLBezierSubpath *)self nodes];
        v134 = [v133 objectAtIndex:v132];

        v135 = [(CRLBezierSubpath *)self nodes];
        v136 = [v135 objectAtIndex:v131 % v166];

        [v134 nodePoint];
        v183.f64[0] = v137;
        v183.f64[1] = v138;
        [v134 outControlPoint];
        v184 = v139;
        v185 = v140;
        [v136 inControlPoint];
        v186 = v141;
        v187 = v142;
        [v136 nodePoint];
        v188 = v143;
        v189 = v144;
        [v134 nodePoint];
        v180[0].f64[0] = v145;
        v180[0].f64[1] = v146;
        v147 = (2 * v132) | 1;
        v180[1] = *&v161[16 * v147];
        v180[2] = *&v161[32 * (v131 % v166)];
        [v136 nodePoint];
        v181 = v148;
        v182 = v149;
        sub_100404888(&v183, &v191);
        sub_100404888(v180, v190);
        v150 = 0;
        *&v151 = fmax(fmin((v167[v147] + v167[2 * (v131 % v166)]) * 0.5, 1.0), 0.0);
        v152 = 1.0 - *&v151;
        v153 = vdupq_lane_s64(v151, 0);
        do
        {
          v154 = &v179[v150 / 0x10];
          v155 = vmlaq_f64(vmulq_n_f64(*&v190[v150 + 16], v152), v153, *(&v191 + v150 + 16));
          *v154 = vmlaq_f64(vmulq_n_f64(*&v190[v150], v152), v153, *(&v191 + v150));
          v154[1] = v155;
          v150 += 32;
        }

        while (v150 != 64);
        sub_1004048D4(v179, &v183);
        [v134 setOutControlPoint:{v184, v185}];
        [v136 setInControlPoint:{v186, v187}];
      }

      while (v131 != v177);
    }

    v156 = [(CRLBezierSubpath *)self isClosed]^ 1;
    v157 = v166 - ([(CRLBezierSubpath *)self isClosed]^ 1);
    if (v157 > v156)
    {
      do
      {
        v158 = [(CRLBezierSubpath *)self nodes];
        v159 = [v158 objectAtIndex:v156];

        if ([v159 type] == 3)
        {
          [v159 balanceControlPoints];
        }

        ++v156;
      }

      while (v157 != v156);
    }

    free(v167);
    free(v161);
    v4 = v173;
  }
}

- (int64_t)updateSmoothNodes:(id)a3 from:(int64_t)a4 to:(int64_t)a5 closed:(BOOL)a6 addTemporaryNodes:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a3;
  v12 = v11;
  v13 = a5 - a4;
  if (a5 - a4 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = v13 + 1;
    v17 = a5 - a4 != 1 || v8;
    v244 = v17;
    v245 = v8;
    size = 16 * v16;
    v18 = !v8;
    if (v8)
    {
      v19 = v13 + 2;
    }

    else
    {
      v19 = a5 - a4;
    }

    v249 = 8 * v16;
    v20 = 1.0;
    if (!v18)
    {
      v20 = 2.0;
    }

    v240 = 2 * v16;
    v246 = a5 - a4;
    if (v18)
    {
      v21 = a5 - a4;
    }

    else
    {
      v21 = v13 + 1;
    }

    v243 = v7;
    v239 = !v7;
    v237 = 8 * a5 - 8 * a4 + 8;
    v238 = (v20 * (8 * v16));
    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = 1.0;
    v24 = -2.0;
    v235 = a4;
    v236 = a5;
    v268 = a5;
    v261 = v13 + 1;
    v262 = v22;
    v254 = v11;
    v241 = v19;
    while (1)
    {
      v25 = [v12 count];
      if ((v244 & 1) == 0)
      {
        break;
      }

      v26 = v25;
      v247 = v15;
      v248 = v14;
      v27 = malloc_type_malloc(size, 0x1000040451B5BE8uLL);
      v28 = malloc_type_malloc(v249, 0x100004000313F17uLL);
      v252 = malloc_type_malloc(v249, 0x100004000313F17uLL);
      v253 = v27;
      v29 = 0;
      v30 = v27 + 1;
      v31 = v27 + 1;
      do
      {
        v32 = [v254 objectAtIndex:(a4 + v29) % v26];
        [v32 nodePoint];
        v34 = v33;
        v36 = v35;

        v37 = [v254 objectAtIndex:(a4 + v29 + 1) % v26];
        [v37 nodePoint];
        v39 = v38;

        v40 = sub_10011F31C(v34, v36, v39);
        *(v31 - 1) = v40;
        *v31 = v41;
        v28[v29++] = sqrt(v41 * v41 + v40 * v40);
        v31 += 2;
      }

      while (v16 != v29);
      v251 = v28;
      v42 = v252;
      if (v241 >= 2)
      {
        v43 = v30;
        for (i = 1; i != v241; ++i)
        {
          v45 = *(v43 - 1);
          v46 = v23 / (*v43 * *v43 + v45 * v45);
          v252[i % v16] = sub_100120F68((v253[2 * (i % v16) + 1] * *v43 + v253[2 * (i % v16)] * v45) * v46, (v253[2 * (i % v16) + 1] * v45 - v253[2 * (i % v16)] * *v43) * v46);
          v43 += 2;
        }
      }

      v47 = malloc_type_malloc(v249, 0x100004000313F17uLL);
      v256 = malloc_type_malloc(v249, 0x100004000313F17uLL);
      v255 = malloc_type_malloc(v249, 0x100004000313F17uLL);
      v48 = malloc_type_malloc(v238, 0x100004000313F17uLL);
      v49 = v245;
      v50 = v246;
      v250 = v47;
      v260 = v48;
      if (!v245)
      {
        *v252 = 0.0;
        v252[v246] = 0.0;
        [v254 objectAtIndex:a4 % v26];
        v52 = v51 = v47;
        v53 = [v254 objectAtIndex:(a4 + 1) % v26];
        v54 = [v52 type];
        *v51 = 0.0;
        if (v54 == 2)
        {
          *v256 = 1.0;
          *v255 = 0;
          [v52 outControlPoint];
          v56 = v55;
          v58 = v57;
          [v52 nodePoint];
          v60 = sub_10011F31C(v56, v58, v59);
          v62 = sub_100120F68(v60, v61);
          [v53 nodePoint];
          v64 = v63;
          v66 = v65;
          [v52 nodePoint];
          v68 = sub_10011F31C(v64, v66, v67);
          v70 = sub_100120F68(v68, v69);
          v71 = sub_100121128(v62 - v70);
        }

        else
        {
          *v256 = 3.0;
          *v255 = 0x4008000000000000;
          v71 = v252[1] * -3.0;
        }

        *v260 = v71;
        v72 = [v254 objectAtIndex:v268 % v26];

        if (v268 <= 0)
        {
          v73 = v26;
        }

        else
        {
          v73 = v268;
        }

        v74 = [v254 objectAtIndex:(v73 - 1) % v26];

        v50 = v246;
        if ([v72 type] == 2)
        {
          v250[v246] = 0.0;
          v256[v246] = 1.0;
          v255[v246] = 0;
          [v72 inControlPoint];
          v76 = v75;
          v78 = v77;
          [v72 nodePoint];
          v80 = sub_10011F31C(v76, v78, v79);
          v82 = sub_100120F68(v80, v81);
          [v74 nodePoint];
          v84 = v83;
          v86 = v85;
          [v72 nodePoint];
          v88 = sub_10011F31C(v84, v86, v87);
          v90 = sub_100120F68(v88, v89);
          v91 = sub_100121128(v82 - v90);
        }

        else
        {
          v250[v246] = 3.0;
          v256[v246] = 3.0;
          v91 = 0.0;
          v255[v246] = 0;
        }

        v260[v246] = v91;

        v48 = v260;
        v49 = v245;
        v42 = v252;
        v47 = v250;
      }

      v93 = v255;
      v92 = v256;
      if (v241 >= 2)
      {
        v94 = v28;
        for (j = 1; j != v241; v48[v96] = v23 / v97 * v24 * v99 - v98 * v42[j % v16])
        {
          v96 = j % v16;
          v97 = *v94++;
          v98 = v23 / v28[j % v16];
          v47[j % v16] = v23 / v97;
          v256[j % v16] = v23 / v97 + v98 + v23 / v97 + v98;
          *&v255[j % v16] = v98;
          v99 = v42[j % v16];
          ++j;
        }
      }

      if (v49)
      {
        v100 = *&v255[v50];
        v101 = *v256;
        v102 = *v47;
        *v256 = *v256 + *v256;
        v256[v50] = v256[v50] + v100 * v102 / v101;
        if (v16 < v240)
        {
          bzero(v48 + v237, v249);
          v93 = v255;
          v92 = v256;
        }

        v48[v16] = -v101;
        v103 = &v48[v240];
        *(v103 - 1) = v100;
        v104 = sub_10050849C(v16, 2, (v47 + 1), v92, v93, v48, v16);
        if (v104)
        {
          obj = v104;
          v105 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101388848();
          }

          v106 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            *&buf[4] = v105;
            *v294 = 2082;
            *&v294[2] = "[CRLBezierSubpath(Smoothing) updateSmoothNodes:from:to:closed:addTemporaryNodes:]";
            *&v294[10] = 2082;
            *&v294[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditableBezierPathSmoothing.m";
            *&v294[20] = 1024;
            *&v294[22] = 500;
            *&v294[26] = 2048;
            *&v294[28] = obj;
            _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d dgtsv failure with error %ld", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101388870();
          }

          v107 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            loga = v107;
            v230 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *&buf[4] = v105;
            *v294 = 2114;
            *&v294[2] = v230;
            _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v108 = [NSString stringWithUTF8String:"[CRLBezierSubpath(Smoothing) updateSmoothNodes:from:to:closed:addTemporaryNodes:]"];
          v109 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditableBezierPathSmoothing.m"];
          [CRLAssertionHandler handleFailureInFunction:v108 file:v109 lineNumber:500 isFatal:0 description:"dgtsv failure with error %ld", obj];

          v50 = v246;
          v48 = v260;
        }

        v110 = -(*v48 - v102 * v48[v50] / v101) / (v48[v16] + v23 - v102 * *(v103 - 1) / v101);
        v111 = v16;
        v112 = v243;
        do
        {
          *v48 = *v48 + v110 * *(v48 + v237);
          ++v48;
          --v111;
        }

        while (v111);
      }

      else
      {
        v113 = sub_10050849C(v16, 1, (v47 + 1), v256, v255, v48, v16);
        v112 = v243;
        if (v113)
        {
          obja = v113;
          v114 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013887F8();
          }

          v115 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            *&buf[4] = v114;
            *v294 = 2082;
            *&v294[2] = "[CRLBezierSubpath(Smoothing) updateSmoothNodes:from:to:closed:addTemporaryNodes:]";
            *&v294[10] = 2082;
            *&v294[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditableBezierPathSmoothing.m";
            *&v294[20] = 1024;
            *&v294[22] = 511;
            *&v294[26] = 2048;
            *&v294[28] = obja;
            _os_log_error_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d dgtsv failure with error %ld", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101388820();
          }

          v116 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            logb = v116;
            v231 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *&buf[4] = v114;
            *v294 = 2114;
            *&v294[2] = v231;
            _os_log_error_impl(&_mh_execute_header, logb, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v117 = [NSString stringWithUTF8String:"[CRLBezierSubpath(Smoothing) updateSmoothNodes:from:to:closed:addTemporaryNodes:]"];
          v118 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditableBezierPathSmoothing.m"];
          [CRLAssertionHandler handleFailureInFunction:v117 file:v118 lineNumber:511 isFatal:0 description:"dgtsv failure with error %ld", obja];
        }
      }

      if (v112)
      {
        objb = +[NSMutableArray array];
        v119 = 0;
        log = 1;
        do
        {
          v120 = v119 + 1;
          v121 = (v119 + 1) % v16;
          v122 = v260[v119];
          v123 = sub_100120F98(v122);
          v125 = sub_1001205EC(v123, v124, *(v30 - 1), *v30);
          v127 = v126;
          v128 = sub_10050861C(v122, -v42[v121] - v260[v121]);
          v129 = sub_10011F340(v125, v127, -v128);
          v131 = v130;
          v132 = v42;
          v133 = -v42[v121] - v260[v121];
          v134 = sub_100120F98(-v133);
          v136 = sub_1001205EC(v134, v135, *(v30 - 1), *v30);
          v138 = v137;
          v139 = sub_10050861C(v133, v260[v119]);
          v140 = sub_10011F340(v136, v138, v139);
          v142 = v141;
          v143 = [(CRLBezierSubpath *)self nodes];
          v144 = a4 + v119;
          v145 = [v143 objectAtIndex:(a4 + v119) % v26];

          v146 = [(CRLBezierSubpath *)self nodes];
          v147 = (v144 + 1) % v26;
          v148 = [v146 objectAtIndex:v147];

          [v145 nodePoint];
          v150 = v149;
          v152 = v151;
          [v148 nodePoint];
          v154 = v153;
          v156 = v155;
          v157 = sub_10011F334(v129, v131, v150);
          v159 = v158;
          v160 = sub_10011F334(v140, v142, v154);
          v162 = v161;
          *buf = v150;
          *v294 = v152;
          [v145 outControlPoint];
          *&v294[8] = v163;
          *&v294[16] = v164;
          [v148 inControlPoint];
          *&v294[24] = v165;
          *&v294[32] = v166;
          v295 = v154;
          v296 = v156;
          v286.f64[0] = v150;
          v286.f64[1] = v152;
          v287 = v157;
          v288 = v159;
          v289 = v160;
          v290 = v162;
          v291 = v154;
          v292 = v156;
          v167 = sub_10011F20C(buf, 0.5);
          v169 = v168;
          v170 = sub_10011F20C(&v286, 0.5);
          v171 = sub_10011F31C(v167, v169, v170);
          if (sub_100120084(v171, v172) > 4.0)
          {
            sub_100404958(buf, v279, 0.0, 0.5);
            sub_100404958(buf, v274, 0.5, 1.0);
            [v145 setOutControlPoint:{v280, v281}];
            [v148 setInControlPoint:{v277, v278}];
            v173 = [CRLBezierNode bezierNodeWithPoint:v284 inControlPoint:v285 outControlPoint:v282, v283, v275, v276];
            [v173 setType:4];
            v174 = [NSNumber numberWithInteger:v147];
            v175 = [NSDictionary dictionaryWithObjectsAndKeys:v173, @"node", v174, @"index", 0];
            [objb addObject:v175];

            v16 = v261;
            log = 0;
          }

          v30 += 2;
          v119 = v120;
          v42 = v132;
        }

        while (v262 != v120);
        [objb sortUsingFunction:sub_1005086E4 context:0];
        v271 = 0u;
        v272 = 0u;
        v269 = 0u;
        v270 = 0u;
        objc = objb;
        v176 = [objc countByEnumeratingWithState:&v269 objects:v273 count:16];
        if (v176)
        {
          v177 = v176;
          v178 = *v270;
          v23 = 1.0;
          v24 = -2.0;
          do
          {
            for (k = 0; k != v177; k = k + 1)
            {
              if (*v270 != v178)
              {
                objc_enumerationMutation(objc);
              }

              v180 = *(*(&v269 + 1) + 8 * k);
              v181 = [v180 objectForKey:@"index"];
              v182 = [v181 intValue];

              v183 = [(CRLBezierSubpath *)self nodes];
              v184 = [v183 mutableCopy];

              v185 = [v180 objectForKey:@"node"];
              [v184 insertObject:v185 atIndex:v182];

              [(CRLBezierSubpath *)self setNodes:v184];
              v186 = a4 <= v182;
              if (a4 > v182)
              {
                ++a4;
              }

              v187 = v268;
              if (!v186)
              {
                v187 = v268 + 1;
              }

              v268 = v187 + 1;
            }

            v177 = [objc countByEnumeratingWithState:&v269 objects:v273 count:16];
          }

          while (v177);
        }

        else
        {
          v23 = 1.0;
          v24 = -2.0;
        }

        v14 = &v248[[objc count]];
        v228 = v253;
        v12 = v254;
        v16 = v261;
        v229 = v252;
        v227 = log;
      }

      else
      {
        v188 = 0;
        v189 = v42;
        v12 = v254;
        do
        {
          v190 = v188 + 1;
          v191 = (v188 + 1) % v261;
          v192 = v260[v188];
          v193 = sub_100120F98(v192);
          v195 = sub_1001205EC(v193, v194, *(v30 - 1), *v30);
          v197 = v196;
          v198 = sub_10050861C(v192, -v42[v191] - v260[v191]);
          v199 = sub_10011F340(v195, v197, -v198);
          v201 = v200;
          v202 = -v42[v191] - v260[v191];
          v203 = sub_100120F98(-v202);
          v205 = sub_1001205EC(v203, v204, *(v30 - 1), *v30);
          v207 = v206;
          v208 = sub_10050861C(v202, v260[v188]);
          v209 = sub_10011F340(v205, v207, v208);
          v211 = v210;
          v212 = a4 + v188;
          v213 = (a4 + v188) % v26;
          v214 = [v254 objectAtIndex:v213];
          [v214 nodePoint];
          v216 = sub_10011F334(v199, v201, v215);
          v218 = v217;

          v219 = (v212 + 1) % v26;
          v220 = [v254 objectAtIndex:v219];
          [v220 nodePoint];
          v222 = sub_10011F334(v209, v211, v221);
          v224 = v223;

          v225 = [v254 objectAtIndex:v213];
          [v225 setOutControlPoint:{v216, v218}];

          v226 = [v254 objectAtIndex:v219];
          [v226 setInControlPoint:{v222, v224}];

          v30 += 2;
          v188 = v190;
        }

        while (v262 != v190);
        v227 = 1;
        v14 = v248;
        v228 = v253;
        v229 = v189;
        v16 = v261;
      }

      free(v250);
      free(v256);
      free(v255);
      free(v260);
      free(v228);
      free(v251);
      free(v229);
      if (((v227 | v239) & 1) == 0)
      {
        v15 = v247 + 1;
        if (v247 != 3)
        {
          continue;
        }
      }

      goto LABEL_94;
    }

    v12 = v254;
    v232 = [v254 objectAtIndex:v235];
    v233 = [v254 objectAtIndex:v236];
    if ([v232 type] != 2)
    {
      [v232 nodePoint];
      [v232 setOutControlPoint:?];
    }

    if ([v233 type] != 2)
    {
      [v233 nodePoint];
      [v233 setInControlPoint:?];
    }
  }

  v14 = 0;
LABEL_94:

  return v14;
}

- (void)updateSmoothNodes:(id)a3 addTemporaryNodes:(BOOL)a4
{
  v4 = a4;
  v48 = a3;
  v6 = [v48 count];
  if (v6 < 2)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_68;
  }

  v9 = v6;
  if (v4)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v11 = 1;
    v12 = v6;
    do
    {
      v13 = v8;
      v8 = [v48 objectAtIndex:v11 - 1];

      if (v11 < v9 || [(CRLBezierSubpath *)self isClosed])
      {
        if (v12 == 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = v11;
        }

        v7 = [v48 objectAtIndex:v14];
      }

      else
      {
        v7 = 0;
      }

      if ([v8 type] == 1 && v7 && objc_msgSend(v7, "type") == 1)
      {
        [v8 nodePoint];
        [v8 setOutControlPoint:?];
        [v7 nodePoint];
        [v7 setInControlPoint:?];
      }

      if (![v8 type])
      {
        if ([v8 isCollapsed])
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        [v8 setType:v15];
      }

      ++v11;
      v10 = v7;
      --v12;
    }

    while (v12);
  }

  if ([(CRLBezierSubpath *)self isClosed])
  {
    v16 = 0;
    while (1)
    {
      if (v9 == v16)
      {
        v27 = [v48 count] - 1;
        v28 = self;
        v29 = v48;
        v30 = 0;
        v31 = 1;
        goto LABEL_67;
      }

      v17 = v16;
      v18 = [v48 objectAtIndex:v16];

      if ([v18 type] != 3 && objc_msgSend(v18, "type") != 4)
      {
        break;
      }

      ++v16;
      v19 = [v48 objectAtIndex:(v17 + 1) % v9];

      [v19 nodePoint];
      v21 = v20;
      v23 = v22;
      [v18 nodePoint];
      v7 = v19;
      v8 = v18;
      if (sub_10011ECC8(v21, v23, v24, v25))
      {
        LOBYTE(v26) = 1;
        v7 = v19;
        goto LABEL_33;
      }
    }

    LOBYTE(v26) = 0;
    ++v16;
LABEL_33:
    v8 = v18;
  }

  else
  {
    LOBYTE(v26) = 0;
    v16 = 0;
    v17 = 0;
  }

  if (v17 >= v9 + v16)
  {
    goto LABEL_68;
  }

  v47 = 0;
  v32 = 0;
  do
  {
    v33 = v26;
    v34 = v7;
    v35 = v8;
    v8 = [v48 objectAtIndex:{v17 % v9, v47}];

    v7 = [v48 objectAtIndex:(v17 + 1) % v9];

    [v7 nodePoint];
    v37 = v36;
    v39 = v38;
    [v8 nodePoint];
    v26 = sub_10011ECC8(v37, v39, v40, v41);
    v42 = [v8 type];
    if (v32)
    {
      if (v42 == 3)
      {
        if (!v26)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v43 = [v8 type] != 4;
        if (!v43 && !v26)
        {
          goto LABEL_56;
        }
      }

      v44 = [(CRLBezierSubpath *)self updateSmoothNodes:v48 from:v47 to:v17 closed:0 addTemporaryNodes:v4];
      v32 = 0;
      v17 += v44;
      v9 += v44;
      if (!v4)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    if (v42 != 3 && [v8 type] != 4)
    {
      goto LABEL_50;
    }

    if (!v26)
    {
      if (v33)
      {
LABEL_50:
        v32 = 0;
        if (v4)
        {
          goto LABEL_61;
        }

LABEL_57:
        if (v26)
        {
LABEL_58:
          [v8 nodePoint];
          [v8 setOutControlPoint:?];
        }

        if (v33)
        {
          [v8 nodePoint];
          [v8 setInControlPoint:?];
        }

LABEL_61:
        v27 = v17;
        goto LABEL_62;
      }

      if (v17 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v17;
      }

      v47 = v45 - 1;
LABEL_56:
      v32 = 1;
      if (!v4)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v32 = 0;
    v27 = v17;
    if (!v4)
    {
      goto LABEL_58;
    }

LABEL_62:
    v17 = (v27 + 1);
  }

  while ((v27 + 1) < v9 + v16);
  v46 = v32 ^ 1;
  if (v16)
  {
    v46 = 1;
  }

  if ((v46 & 1) == 0)
  {
    v28 = self;
    v30 = v47;
    v29 = v48;
    v31 = 0;
LABEL_67:
    [(CRLBezierSubpath *)v28 updateSmoothNodes:v29 from:v30 to:v27 closed:v31 addTemporaryNodes:v4, v47];
  }

LABEL_68:
}

- (void)updateSmoothNodes
{
  v3 = [(CRLBezierSubpath *)self nodes];
  [(CRLBezierSubpath *)self updateSmoothNodes:v3 addTemporaryNodes:0];
}

- (void)removeTemporaryNodes
{
  v3 = [(CRLBezierSubpath *)self nodes];
  v4 = [v3 count];

  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = [(CRLBezierSubpath *)self nodes];
      v7 = [v6 objectAtIndex:i];

      if ([v7 type] == 4)
      {
        v8 = [(CRLBezierSubpath *)self nodes];
        v9 = [v8 mutableCopy];

        [v9 removeObjectAtIndex:i];
        [(CRLBezierSubpath *)self updateSmoothNodes:v9 addTemporaryNodes:0];
        v10 = [v9 objectAtIndex:i];
        [v10 nodePoint];
        v34.f64[0] = v11;
        v34.f64[1] = v12;
        v13 = [v9 objectAtIndex:i];
        [v13 outControlPoint];
        v35 = v14;
        v36 = v15;
        v16 = v4 - 1;
        v17 = [v9 objectAtIndex:(i + 1) % (v4 - 1)];
        [v17 inControlPoint];
        v37 = v18;
        v38 = v19;
        v20 = [v9 objectAtIndex:(i + 1) % (v4 - 1)];
        [v20 nodePoint];
        v39 = v21;
        v40 = v22;

        [v7 nodePoint];
        v24 = v23;
        v26 = v25;
        v27 = sub_10011F20C(&v34, 0.5);
        v28 = sub_10011F31C(v24, v26, v27);
        if (sub_100120084(v28, v29) < 16.0)
        {
          v30 = [(CRLBezierSubpath *)self nodes];
          v31 = [v30 mutableCopy];

          [v31 removeObjectAtIndex:i];
          [(CRLBezierSubpath *)self setNodes:v31];
          v32 = [(CRLBezierSubpath *)self nodes];
          [(CRLBezierSubpath *)self updateSmoothNodes:v32 addTemporaryNodes:0];

          --i;
          v4 = v16;
        }
      }
    }
  }

  v33 = [(CRLBezierSubpath *)self nodes];
  [(CRLBezierSubpath *)self updateSmoothNodes:v33 addTemporaryNodes:0];
}

- (void)addTemporarySmoothNodes
{
  v3 = [(CRLBezierSubpath *)self nodes];
  [(CRLBezierSubpath *)self updateSmoothNodes:v3 addTemporaryNodes:1];
}

@end