@interface CRLEditableBezierPathSource
+ (CRLEditableBezierPathSource)editableBezierPathSourceWithBezierPath:(id)a3;
+ (CRLEditableBezierPathSource)editableBezierPathSourceWithPathSource:(id)a3;
+ (id)editableBezierPathSource;
- (BOOL)allNodesSelected;
- (BOOL)canCloseSelectedNodes;
- (BOOL)canConnectSelectedNodes;
- (BOOL)canCutAtSelectedNodes;
- (BOOL)canDeleteSelectedNodes;
- (BOOL)closeIfEndpointsAreEqual;
- (BOOL)deletingSelectedNodesWillDeleteShape;
- (BOOL)hasSelectedNode;
- (BOOL)isCircular;
- (BOOL)isClosed;
- (BOOL)isCompound;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualWithStrictComparison:(id)a3;
- (BOOL)isRectangular;
- (CGAffineTransform)pathFlipTransform;
- (CGPath)pathWithoutFlips;
- (CGPath)subpathForSelection;
- (CGRect)nodeBounds;
- (CGSize)naturalSize;
- (CRLBezierNode)firstNode;
- (CRLBezierNode)lastNode;
- (CRLEditableBezierPathSource)init;
- (NSArray)nodeTypes;
- (NSArray)nodes;
- (double)distanceToPoint:(CGPoint)a3 subpathIndex:(unint64_t *)a4 elementIndex:(unint64_t *)a5 tValue:(double *)a6 threshold:(double)a7;
- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)inferredAccessibilityDescription;
- (id)inferredAccessibilityDescriptionNoShapeNames;
- (id)nodeAfterNode:(id)a3;
- (id)nodePriorToNode:(id)a3;
- (id)splitEdge:(int64_t)a3 at:(double)a4 fromSubpath:(int64_t)a5;
- (id)subpathsForConnectingUsingFirstSubpathFirstNode:(BOOL *)a3 andSecondPathFirstNode:(BOOL *)a4;
- (unint64_t)hash;
- (void)addNode:(id)a3;
- (void)addTemporarySmoothNodes;
- (void)alignToOrigin;
- (void)beginNewSubpath;
- (void)closePath;
- (void)closeSelectedNodes;
- (void)connectSelectedNodes;
- (void)convertToHobby;
- (void)curveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5;
- (void)cutAtSelectedNodes;
- (void)deleteSelectedEdges;
- (void)deleteSelectedNodesForced:(BOOL)a3;
- (void)deselectAllNodes;
- (void)lineToPoint:(CGPoint)a3;
- (void)morphWithMorphInfo:(id)a3;
- (void)moveToPoint:(CGPoint)a3;
- (void)offsetSelectedEdgesByDelta:(CGPoint)a3;
- (void)offsetSelectedNodesByDelta:(CGPoint)a3;
- (void)removeLastNode;
- (void)removeNode:(id)a3;
- (void)reverseDirection;
- (void)selectAllNodes;
- (void)selectSubpathForNode:(id)a3 toggle:(BOOL)a4;
- (void)setBezierPath:(id)a3;
- (void)setClosed:(BOOL)a3;
- (void)setLockedFlipTransform:(BOOL)a3;
- (void)setNaturalSize:(CGSize)a3;
- (void)setNodeTypes:(id)a3;
- (void)setNodes:(id)a3;
- (void)sharpenAllNodes;
- (void)smoothAllNodes;
- (void)smoothCurveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5;
- (void)smoothNode:(id)a3;
- (void)splitSelectedEdges;
- (void)splitSelectedNodes;
- (void)toggleNode:(id)a3 toType:(int64_t)a4 prevNode:(id)a5 nextNode:(id)a6;
- (void)toggleSelectedNodesToType:(int64_t)a3;
- (void)transformUsingAffineTransform:(CGAffineTransform *)a3;
- (void)updateSmoothNodes;
@end

@implementation CRLEditableBezierPathSource

- (CRLEditableBezierPathSource)init
{
  v7.receiver = self;
  v7.super_class = CRLEditableBezierPathSource;
  v2 = [(CRLEditableBezierPathSource *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRLBezierSubpath);
    v4 = [[NSArray alloc] initWithObjects:{v3, 0}];
    mSubpaths = v2->mSubpaths;
    v2->mSubpaths = v4;
  }

  return v2;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p subpaths=%p>", v4, self, self->mSubpaths];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setHasHorizontalFlip:{-[CRLPathSource hasHorizontalFlip](self, "hasHorizontalFlip")}];
  [v4 setHasVerticalFlip:{-[CRLPathSource hasVerticalFlip](self, "hasVerticalFlip")}];
  v5 = [NSArray alloc];
  v6 = [(CRLEditableBezierPathSource *)self subpaths];
  v7 = [v5 initWithArray:v6 copyItems:1];

  [v4 setSubpaths:v7];
  return v4;
}

+ (id)editableBezierPathSource
{
  v2 = objc_alloc_init(CRLEditableBezierPathSource);

  return v2;
}

+ (CRLEditableBezierPathSource)editableBezierPathSourceWithPathSource:(id)a3
{
  v4 = [a3 bezierPath];
  v5 = [a1 editableBezierPathSourceWithBezierPath:v4];

  return v5;
}

+ (CRLEditableBezierPathSource)editableBezierPathSourceWithBezierPath:(id)a3
{
  v3 = a3;
  v4 = +[CRLEditableBezierPathSource editableBezierPathSource];
  [v4 setBezierPath:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CRLEditableBezierPathSource;
    if ([(CRLPathSource *)&v10 isEqual:v4])
    {
      v5 = v4;
      v6 = [(CRLPathSource *)self bezierPath];
      v7 = [(CRLPathSource *)v5 bezierPath];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(CRLPathSource *)self bezierPath];
  v4 = [v3 hash] != 0;

  v8 = v4;
  v7.receiver = self;
  v7.super_class = CRLEditableBezierPathSource;
  v5 = [(CRLPathSource *)&v7 hash];
  return sub_100083B3C(&v8, 1, v5);
}

- (BOOL)isEqualWithStrictComparison:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CRLEditableBezierPathSource;
    if ([(CRLPathSource *)&v12 isEqual:v4])
    {
      v5 = v4;
      v6 = [(CRLPathSource *)self bezierPath];
      v7 = [v6 CGPath];

      v8 = [(CRLPathSource *)v5 bezierPath];
      v9 = [v8 CGPath];

      v10 = v7 == v9 || CGPathEqualToPath(v7, v9);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)closeIfEndpointsAreEqual
{
  v3 = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = [v3 objectAtIndex:self->mActiveSubpath];
  v5 = [v4 closeIfEndpointsAreEqual];

  return v5;
}

- (BOOL)isRectangular
{
  v3 = [(CRLEditableBezierPathSource *)self subpaths];
  if ([v3 count] == 1)
  {
    v4 = [(CRLEditableBezierPathSource *)self subpaths];
    v5 = [v4 lastObject];
    v6 = [v5 isRectangular];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isCircular
{
  v3 = [(CRLEditableBezierPathSource *)self subpaths];
  if ([v3 count] == 1)
  {
    v4 = [(CRLEditableBezierPathSource *)self subpaths];
    v5 = [v4 lastObject];
    v6 = [v5 isCircular];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)bezierPathWithoutFlips
{
  v3 = +[CRLBezierPath bezierPath];
  [v3 moveToPoint:{CGPointZero.x, CGPointZero.y}];
  v4 = [(CRLEditableBezierPathSource *)self subpaths];
  [v4 makeObjectsPerformSelector:"appendToBezierPath:" withObject:v3];

  return v3;
}

- (CGPath)pathWithoutFlips
{
  v2 = [(CRLEditableBezierPathSource *)self bezierPathWithoutFlips];
  v3 = [v2 CGPath];

  return v3;
}

- (void)convertToHobby
{
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  [v2 makeObjectsPerformSelector:"convertToHobby"];
}

- (void)setBezierPath:(id)a3
{
  v4 = a3;
  v5 = [v4 elementCount];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_10023AF18;
  v45 = sub_10023AF28;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10023AF18;
  v39 = sub_10023AF28;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10023AF18;
  v33 = sub_10023AF28;
  v34 = objc_alloc_init(NSMutableArray);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10023AF30;
  v28[3] = &unk_10184B6F0;
  v28[4] = &v35;
  v28[5] = &v29;
  v28[6] = &v41;
  v6 = objc_retainBlock(v28);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = [v4 elementAtIndex:v7 associatedPoints:&v47];
      if (v42[5])
      {
        (v6[2])(v6);
      }

      v10 = [v36[5] lastNode];
      v11 = v10;
      if (v9 <= 1)
      {
        break;
      }

      if (v9 == 2)
      {
        [v10 setOutControlPoint:{v47, v48}];
        [v11 setType:2];
        v24 = [CRLBezierNode bezierNodeWithPoint:v51 inControlPoint:v52 outControlPoint:v49, v50, v51, v52];

        [v36[5] addNode:v24];
        v8 = v24;
        goto LABEL_23;
      }

      if (v9 == 3)
      {
        v13 = [v36[5] firstNode];
        v14 = v13;
        if (v11)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v11 nodePoint];
          v17 = v16;
          v19 = v18;
          [v14 nodePoint];
          if (sub_10011ECC8(v17, v19, v20, v21))
          {
            [v11 inControlPoint];
            [v14 setInControlPoint:?];
            [v36[5] removeLastNode];
          }
        }

        [v36[5] setClosed:1];
LABEL_20:
      }

LABEL_23:

      if (v5 == ++v7)
      {
        goto LABEL_26;
      }
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v12 = [CRLBezierNode bezierNodeWithPoint:v47, v48];

        [v36[5] addNode:v12];
        v8 = v12;
      }

      goto LABEL_23;
    }

    v22 = [CRLBezierNode bezierNodeWithPoint:v47, v48];
    v23 = v42[5];
    v42[5] = v22;

    if (!v7)
    {
      (v6[2])(v6);
      goto LABEL_23;
    }

    v14 = v36[5];
    v36[5] = 0;
    goto LABEL_20;
  }

  v8 = 0;
LABEL_26:
  [(CRLEditableBezierPathSource *)self setSubpaths:v30[5]];
  v25 = [(CRLEditableBezierPathSource *)self subpaths];
  [v25 makeObjectsPerformSelector:"updateReflectedState"];

  v26 = +[NSUserDefaults standardUserDefaults];
  v27 = [v26 BOOLForKey:@"CRLCreateBezierNodesByDefault"];

  if ((v27 & 1) == 0)
  {
    [(CRLEditableBezierPathSource *)self convertToHobby];
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
}

- (void)setNodes:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CRLBezierSubpath);
  [(CRLBezierSubpath *)v5 setNodes:v4];

  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(CRLEditableBezierPathSource *)self setSubpaths:v6];
}

- (NSArray)nodes
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(CRLEditableBezierPathSource *)self subpaths];
  [v4 makeObjectsPerformSelector:"addNodesToArray:" withObject:v3];

  v5 = [v3 copy];

  return v5;
}

- (void)reverseDirection
{
  v4 = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [v4 objectAtIndex:self->mActiveSubpath];
  [v3 reverseDirection];
}

- (void)setLockedFlipTransform:(BOOL)a3
{
  p_mLockedFlipTransform = &self->mLockedFlipTransform;
  v7[0].receiver = self;
  v7[0].super_class = CRLEditableBezierPathSource;
  [(objc_super *)v7 pathFlipTransform];
  v6 = v7[2];
  *&p_mLockedFlipTransform->a = v7[1];
  *&p_mLockedFlipTransform->c = v6;
  *&p_mLockedFlipTransform->tx = v7[3];
  self->mHasLockedFlipTransform = a3;
}

- (void)beginNewSubpath
{
  v3 = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = objc_alloc_init(CRLBezierSubpath);
  v5 = [v3 arrayByAddingObject:v4];
  [(CRLEditableBezierPathSource *)self setSubpaths:v5];

  v6 = [(CRLEditableBezierPathSource *)self subpaths];
  self->mActiveSubpath = [v6 count] - 1;
}

- (CGAffineTransform)pathFlipTransform
{
  if (LOBYTE(self[1].d) == 1)
  {
    v5 = *&self[2].a;
    *&retstr->a = *&self[1].tx;
    *&retstr->c = v5;
    *&retstr->tx = *&self[2].c;
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = CRLEditableBezierPathSource;
    return [(CGAffineTransform *)&v6 pathFlipTransform];
  }

  return self;
}

- (CGSize)naturalSize
{
  v2 = [(CRLEditableBezierPathSource *)self bezierPathWithoutFlips];
  v3 = v2;
  if (v2)
  {
    [v2 bounds];
    width = v4;
    height = v6;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CRLEditableBezierPathSource *)self nodes];
  v7 = [v6 count];

  if (v7 >= 2)
  {
    [(CRLEditableBezierPathSource *)self naturalSize];
    if (v8 <= 0.0)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = width / v8;
    }

    memset(&v23.c, 0, 32);
    if (v9 <= 0.0)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = height / v9;
    }

    *&v23.a = 0uLL;
    CGAffineTransformMakeScale(&v23, v10, v11);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(CRLEditableBezierPathSource *)self subpaths];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          v18 = v23;
          [v17 transformUsingAffineTransform:&v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v14);
    }
  }
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CRLEditableBezierPathSource *)self subpaths];
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

- (void)alignToOrigin
{
  v3 = [(CRLPathSource *)self bezierPath];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  MinX = CGRectGetMinX(v33);
  v34.origin.x = v5;
  v34.origin.y = v7;
  v34.size.width = v9;
  v34.size.height = v11;
  MinY = CGRectGetMinY(v34);
  LODWORD(v3) = [(CRLPathSource *)self hasHorizontalFlip];
  v12 = [(CRLPathSource *)self hasVerticalFlip];
  v13 = 1.0;
  if (v3)
  {
    v14 = -1.0;
  }

  else
  {
    v14 = 1.0;
  }

  if (v12)
  {
    v13 = -1.0;
  }

  CGAffineTransformMakeScale(&v31, v14, v13);
  v15 = vaddq_f64(*&v31.tx, vmlaq_n_f64(vmulq_n_f64(*&v31.c, MinY), *&v31.a, MinX));
  v16 = v15.f64[1];
  v25 = v15.f64[0];
  if (!sub_10011ECC8(v15.f64[0], v15.f64[1], CGPointZero.x, CGPointZero.y))
  {
    memset(&v31, 0, sizeof(v31));
    CGAffineTransformMakeTranslation(&v31, -v25, -v16);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [(CRLEditableBezierPathSource *)self subpaths];
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        v21 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * v21);
          v26 = v31;
          [v22 transformUsingAffineTransform:&v26];
          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v19);
    }
  }
}

- (void)addNode:(id)a3
{
  v4 = a3;
  v6 = [(CRLEditableBezierPathSource *)self subpaths];
  v5 = [v6 objectAtIndex:self->mActiveSubpath];
  [v5 addNode:v4];
}

- (void)removeLastNode
{
  v4 = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [v4 objectAtIndex:self->mActiveSubpath];
  [v3 removeLastNode];
}

- (id)nodePriorToNode:(id)a3
{
  v4 = a3;
  v5 = [(CRLEditableBezierPathSource *)self subpaths];
  v6 = [v5 objectAtIndex:self->mActiveSubpath];
  v7 = [v6 nodePriorToNode:v4];

  return v7;
}

- (id)nodeAfterNode:(id)a3
{
  v4 = a3;
  v5 = [(CRLEditableBezierPathSource *)self subpaths];
  v6 = [v5 objectAtIndex:self->mActiveSubpath];
  v7 = [v6 nodeAfterNode:v4];

  return v7;
}

- (CRLBezierNode)firstNode
{
  v3 = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = [v3 objectAtIndex:self->mActiveSubpath];
  v5 = [v4 firstNode];

  return v5;
}

- (CRLBezierNode)lastNode
{
  v3 = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = [v3 objectAtIndex:self->mActiveSubpath];
  v5 = [v4 lastNode];

  return v5;
}

- (void)offsetSelectedNodesByDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CRLEditableBezierPathSource *)self subpaths];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9) offsetSelectedNodesByDelta:{x, y}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)offsetSelectedEdgesByDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CRLEditableBezierPathSource *)self subpaths];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9) offsetSelectedEdgesByDelta:{x, y}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)hasSelectedNode
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasSelectedNode])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)allNodesSelected
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) allNodesSelected])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)removeNode:(id)a3
{
  v4 = a3;
  v6 = [(CRLEditableBezierPathSource *)self subpaths];
  v5 = [v6 objectAtIndex:self->mActiveSubpath];
  [v5 removeNode:v4];
}

- (BOOL)isCompound
{
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [v2 count] > 1;

  return v3;
}

- (BOOL)canDeleteSelectedNodes
{
  v3 = [(CRLEditableBezierPathSource *)self isCompound];
  v4 = [(CRLEditableBezierPathSource *)self subpaths];
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    v8 = [v4 lastObject];
    v10 = [v8 canDeleteSelectedNodes];
LABEL_9:

    v6 = v5;
    goto LABEL_10;
  }

  v6 = [v4 objectEnumerator];

  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    while (![v8 hasSelectedNode] || objc_msgSend(v8, "canDeleteSelectedNodes"))
    {
      v9 = [v6 nextObject];

      v8 = v9;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v12 = [(CRLEditableBezierPathSource *)self subpaths];
    v5 = [v12 objectEnumerator];

    do
    {
      v13 = v8;
      v8 = [v5 nextObject];

      v10 = v8 != 0;
    }

    while (v8 && [v8 hasSelectedNode] && !objc_msgSend(v8, "canDeleteSelectedNodes"));
    goto LABEL_9;
  }

LABEL_7:
  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)deletingSelectedNodesWillDeleteShape
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 nodes];
        if ([v8 count] < 3)
        {
        }

        else
        {
          if (![v7 hasSelectedNode])
          {

LABEL_15:
            v10 = 0;
            goto LABEL_16;
          }

          v9 = [v7 canDeleteSelectedNodes];

          if (v9)
          {
            goto LABEL_15;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_16:

  return v10;
}

- (void)deleteSelectedNodesForced:(BOOL)a3
{
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(CRLEditableBezierPathSource *)self subpaths];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 canDeleteSelectedNodes])
        {
          [v11 deleteSelectedNodes];
        }

        else if (a3 || [v11 allNodesSelected])
        {
          if ([v11 hasSelectedNode])
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(CRLEditableBezierPathSource *)self subpaths];
  v13 = [v12 mutableCopy];

  [v13 removeObjectsInArray:v5];
  [(CRLEditableBezierPathSource *)self setSubpaths:v13];
}

- (void)selectAllNodes
{
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  [v2 makeObjectsPerformSelector:"selectAllNodes"];
}

- (void)deselectAllNodes
{
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  [v2 makeObjectsPerformSelector:"deselectAllNodes"];
}

- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6
{
  y = a3.y;
  x = a3.x;
  v11 = [(CRLEditableBezierPathSource *)self subpaths];
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
    v19[0] = *&a4->a;
    v19[1] = v15;
    v19[2] = *&a4->tx;
    v16 = [v13 bezierNodeUnderPoint:v19 withTransform:a6 andTolerance:x returningType:{y, a5}];
    if (v16)
    {
      v17 = v16;
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_6:

  return v17;
}

- (double)distanceToPoint:(CGPoint)a3 subpathIndex:(unint64_t *)a4 elementIndex:(unint64_t *)a5 tValue:(double *)a6 threshold:(double)a7
{
  y = a3.y;
  x = a3.x;
  v13 = [(CRLEditableBezierPathSource *)self subpaths];
  v14 = [v13 count];

  v15 = 0;
  v16 = 0;
  v17 = 1.79769313e308;
  if (v14)
  {
    v18 = 0;
    if (a7 < 1.79769313e308)
    {
      v18 = 0;
      v15 = 0;
      v17 = 1.79769313e308;
      v19 = 1;
      do
      {
        v20 = [(CRLEditableBezierPathSource *)self subpaths];
        v21 = [v20 objectAtIndexedSubscript:v19 - 1];

        v25 = 0;
        v26 = 0;
        [v21 distanceToPoint:&v26 elementIndex:&v25 tValue:x threshold:{y, a7}];
        if (v22 < v17)
        {
          v18 = v26;
          v16 = v25;
          v15 = v19 - 1;
          v17 = v22;
        }

        if (v19 >= v14)
        {
          break;
        }

        ++v19;
      }

      while (v17 > a7);
    }

    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
    if (a4)
    {
LABEL_9:
      *a4 = v15;
    }
  }

  if (a5)
  {
    *a5 = v18;
  }

  if (a6)
  {
    *a6 = v16;
  }

  return v17;
}

- (CGRect)nodeBounds
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v6 = [(CRLEditableBezierPathSource *)self subpaths];
  v7 = [v6 objectEnumerator];

  v8 = [v7 nextObject];
  if (v8)
  {
    v9 = v8;
    do
    {
      [v9 nodeBounds];
      v22.origin.x = v10;
      v22.origin.y = v11;
      v22.size.width = v12;
      v22.size.height = v13;
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v20 = CGRectUnion(v19, v22);
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
      v14 = [v7 nextObject];

      v9 = v14;
    }

    while (v14);
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)toggleNode:(id)a3 toType:(int64_t)a4 prevNode:(id)a5 nextNode:(id)a6
{
  v59 = a3;
  v9 = a5;
  v10 = a6;
  if ([v59 type] != a4)
  {
    switch(a4)
    {
      case 1:
        [v59 setType:1];
        if ([v10 type] == 1)
        {
          [v59 nodePoint];
          [v59 setOutControlPoint:?];
          [v10 nodePoint];
          [v10 setInControlPoint:?];
        }

        if ([v9 type] == 1)
        {
          [v59 nodePoint];
          [v59 setInControlPoint:?];
          [v9 nodePoint];
          [v9 setOutControlPoint:?];
        }

        break;
      case 3:
        [v59 setType:3];
        break;
      case 2:
        [v59 nodePoint];
        v12 = v11;
        v14 = v13;
        [v59 outControlPoint];
        if (sub_10011ECC8(v12, v14, v15, v16))
        {
          [v10 nodePoint];
          v18 = v17;
          v20 = v19;
          [v10 inControlPoint];
          if (sub_10011ECC8(v18, v20, v21, v22))
          {
            [v59 nodePoint];
            v24 = v23;
            v26 = v25;
            [v10 nodePoint];
            [v59 setOutControlPoint:{sub_100120ABC(v24, v26, v27, v28, 0.333333333)}];
            [v59 nodePoint];
            v30 = v29;
            v32 = v31;
            [v10 nodePoint];
            [v10 setInControlPoint:{sub_100120ABC(v30, v32, v33, v34, 0.666666667)}];
          }
        }

        [v59 nodePoint];
        v36 = v35;
        v38 = v37;
        [v59 inControlPoint];
        if (sub_10011ECC8(v36, v38, v39, v40))
        {
          [v9 nodePoint];
          v42 = v41;
          v44 = v43;
          [v9 outControlPoint];
          if (sub_10011ECC8(v42, v44, v45, v46))
          {
            [v59 nodePoint];
            v48 = v47;
            v50 = v49;
            [v9 nodePoint];
            [v59 setInControlPoint:{sub_100120ABC(v48, v50, v51, v52, 0.333333333)}];
            [v59 nodePoint];
            v54 = v53;
            v56 = v55;
            [v9 nodePoint];
            [v9 setOutControlPoint:{sub_100120ABC(v54, v56, v57, v58, 0.666666667)}];
          }
        }

        [v59 setType:2];
        [v59 updateReflectedState];
        break;
    }
  }
}

- (void)toggleSelectedNodesToType:(int64_t)a3
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(CRLEditableBezierPathSource *)self subpaths];
  v18 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v18)
  {
    v17 = *v22;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v21 + 1) + 8 * i);
        v5 = [v4 nodes];
        if ([v5 count])
        {
          v6 = [v4 isClosed];
          if (v6)
          {
            v7 = [v5 lastObject];
          }

          else
          {
            v7 = 0;
          }

          v8 = [v5 objectAtIndexedSubscript:0];
          v9 = [v5 count];
          if (v9)
          {
            v10 = v9;
            v11 = 1;
            v12 = v9;
            do
            {
              if (((v11 >= v10) & ~v6) != 0)
              {
                v14 = 0;
              }

              else
              {
                if (v12 == 1)
                {
                  v13 = 0;
                }

                else
                {
                  v13 = v11;
                }

                v14 = [v5 objectAtIndexedSubscript:v13];
              }

              if ([v8 isSelected])
              {
                [(CRLEditableBezierPathSource *)self toggleNode:v8 toType:a3 prevNode:v7 nextNode:v14];
              }

              v15 = v8;

              ++v11;
              v7 = v15;
              v8 = v14;
              --v12;
            }

            while (v12);
          }

          else
          {
            v14 = v8;
            v15 = v7;
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v18);
  }
}

- (void)sharpenAllNodes
{
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  [v2 makeObjectsPerformSelector:"sharpenAllNodes"];
}

- (void)smoothNode:(id)a3
{
  v10 = a3;
  v4 = [(CRLEditableBezierPathSource *)self subpaths];
  v5 = [v4 objectEnumerator];

  v6 = 0;
  while (1)
  {
    v7 = v6;
    v6 = [v5 nextObject];

    if (!v6)
    {
      break;
    }

    v8 = [v6 nodes];
    v9 = [v8 containsObject:v10];

    if (v9)
    {
      [v6 smoothNode:v10];
      break;
    }
  }
}

- (void)smoothAllNodes
{
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  [v2 makeObjectsPerformSelector:"smoothAllNodes"];
}

- (BOOL)isClosed
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 nodes];
        if ([v7 count])
        {
          v8 = [v6 isClosed];

          if (v8)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

LABEL_12:

  return v3;
}

- (void)setClosed:(BOOL)a3
{
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(CRLEditableBezierPathSource *)self subpaths];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) setClosed:v3];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)selectSubpathForNode:(id)a3 toggle:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(CRLEditableBezierPathSource *)self subpaths];
  v7 = [v6 objectEnumerator];

  v8 = 0;
  while (1)
  {
    v9 = v8;
    v8 = [v7 nextObject];

    if (!v8)
    {
      break;
    }

    v10 = [v8 nodes];
    v11 = [v10 containsObject:v12];

    if (v11)
    {
      if (v4 && [v8 allNodesSelected])
      {
        [v8 deselectAllNodes];
      }

      else
      {
        [v8 selectAllNodes];
      }

      break;
    }
  }
}

- (id)subpathsForConnectingUsingFirstSubpathFirstNode:(BOOL *)a3 andSecondPathFirstNode:(BOOL *)a4
{
  *a3 = 0;
  *a4 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [(CRLEditableBezierPathSource *)self subpaths];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (!v7)
  {
    v9 = 0;
LABEL_18:
    v21 = 0;
LABEL_22:

    goto LABEL_24;
  }

  v8 = v7;
  v23 = a4;
  v9 = 0;
  v10 = *v25;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v25 != v10)
    {
      objc_enumerationMutation(v6);
    }

    v12 = *(*(&v24 + 1) + 8 * v11);
    if ([v12 isClosed])
    {
      goto LABEL_14;
    }

    v13 = [v12 nodes];
    v14 = [v13 count];

    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = [v12 firstNode];
    v16 = [v15 isSelected];

    if (v16)
    {
      break;
    }

LABEL_11:
    v18 = [v12 lastNode];
    v19 = [v18 isSelected];

    if (v19)
    {
      v20 = v12;
      if (v9)
      {
        goto LABEL_20;
      }

      v9 = v20;
    }

LABEL_14:
    if (v8 == ++v11)
    {
      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }
  }

  v17 = v12;
  if (!v9)
  {
    *a3 = 1;
    v9 = v17;
    goto LABEL_11;
  }

  *v23 = 1;
LABEL_20:

  if (v12)
  {
    v28[0] = v9;
    v28[1] = v12;
    v21 = [NSArray arrayWithObjects:v28 count:2];
    v6 = v12;
    goto LABEL_22;
  }

  v21 = 0;
LABEL_24:

  return v21;
}

- (BOOL)canConnectSelectedNodes
{
  v5 = 0;
  v2 = [(CRLEditableBezierPathSource *)self subpathsForConnectingUsingFirstSubpathFirstNode:&v5 + 1 andSecondPathFirstNode:&v5];
  v3 = v2 != 0;

  return v3;
}

- (void)connectSelectedNodes
{
  v18 = 0;
  v3 = [(CRLEditableBezierPathSource *)self subpathsForConnectingUsingFirstSubpathFirstNode:&v18 + 1 andSecondPathFirstNode:&v18];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    if (v5 == v6)
    {
      if (HIBYTE(v18) != v18)
      {
        [v5 setClosed:1];
      }

      goto LABEL_14;
    }

    v7 = [(CRLEditableBezierPathSource *)self subpaths];
    v8 = [v7 mutableCopy];

    if ((v18 & 0x100) != 0)
    {
      if ((v18 & 1) == 0)
      {
        v16 = [v6 nodes];
        v10 = [v16 mutableCopy];

        v17 = [v5 nodes];
        [v10 addObjectsFromArray:v17];

        [v6 setNodes:v10];
        v15 = v5;
        goto LABEL_13;
      }

      [v6 reverseDirection];
      v9 = [v5 nodes];
      v10 = [v9 mutableCopy];

      v11 = [v6 nodes];
      v12 = [v6 nodes];
      v13 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v12 count]);
      [v10 insertObjects:v11 atIndexes:v13];
    }

    else
    {
      if (!v18)
      {
        [v6 reverseDirection];
      }

      v14 = [v5 nodes];
      v10 = [v14 mutableCopy];

      v11 = [v6 nodes];
      [v10 addObjectsFromArray:v11];
    }

    [v5 setNodes:v10];
    v15 = v6;
LABEL_13:
    [v8 removeObjectIdenticalTo:v15];

    [(CRLEditableBezierPathSource *)self setSubpaths:v8];
LABEL_14:
  }
}

- (BOOL)canCloseSelectedNodes
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        if (([v6 isClosed] & 1) == 0)
        {
          v7 = [v6 nodes];
          v8 = [v7 count];

          if (v8)
          {
            v9 = [v6 firstNode];
            if ([v9 isSelected])
            {

LABEL_14:
              LOBYTE(v3) = 1;
              goto LABEL_15;
            }

            v10 = [v6 lastNode];
            v11 = [v10 isSelected];

            if (v11)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v3;
}

- (void)closeSelectedNodes
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        if (([v7 isClosed] & 1) == 0)
        {
          v8 = [v7 nodes];
          v9 = [v8 count];

          if (v9)
          {
            v10 = [v7 firstNode];
            if ([v10 isSelected])
            {
            }

            else
            {
              v11 = [v7 lastNode];
              v12 = [v11 isSelected];

              if (!v12)
              {
                continue;
              }
            }

            v13 = [v7 firstNode];
            v14 = [v13 type];

            if (v14 == 3)
            {
              v15 = [v7 firstNode];
              [v15 setType:1];
            }

            [v7 setClosed:1];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

- (void)deleteSelectedEdges
{
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  v38 = [v2 copy];

  v3 = [v38 objectEnumerator];
  v41 = objc_alloc_init(NSMutableArray);
  v39 = v3;
  v4 = [v3 nextObject];
  if (!v4)
  {
    goto LABEL_32;
  }

  v5 = v4;
  do
  {
    v6 = [v5 nodes];
    v7 = [v6 mutableCopy];

    v8 = [v7 count];
    v9 = [v7 lastObject];
    v10 = [v9 isSelected];

    if (v10)
    {
      [v5 setClosed:0];
    }

    if (v8 < 1)
    {
      v12 = 0;
      v15 = 0;
LABEL_28:
      [v41 addObject:v5];
      goto LABEL_31;
    }

    v40 = v5;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v15;
      v17 = [v7 objectAtIndex:v14];

      if (v16 && [v16 isSelected])
      {
        if (v14 - v13 < 2)
        {
LABEL_16:
          v11 = 1;
          v13 = v14;
          goto LABEL_17;
        }

        v18 = objc_alloc_init(CRLBezierSubpath);
        v19 = [NSIndexSet indexSetWithIndexesInRange:v13, v14 - v13];
        v20 = [v7 objectsAtIndexes:v19];
        [(CRLBezierSubpath *)v18 setNodes:v20];

        [v41 addObject:v18];
        v21 = [(CRLBezierSubpath *)v18 nodes];
        v22 = [v21 lastObject];

        [v22 nodePoint];
        [v22 setOutControlPoint:?];
        if (v12 || ([v40 isClosed] & 1) == 0)
        {
          v24 = [(CRLBezierSubpath *)v18 nodes];
          v23 = [v24 objectAtIndex:0];

          [v23 nodePoint];
          [v23 setInControlPoint:?];
          if (v12)
          {
LABEL_15:

            goto LABEL_16;
          }
        }

        else
        {
          v23 = v22;
        }

        v12 = v18;
        goto LABEL_15;
      }

LABEL_17:
      v15 = v17;

      ++v14;
    }

    while (v8 != v14);
    v5 = v40;
    if ((v11 & 1) == 0)
    {
      goto LABEL_28;
    }

    v25 = v8 - v13;
    if (v8 - v13 > 1 || (v26 = [v40 isClosed], v25 == 1) && v26)
    {
      v27 = objc_alloc_init(NSMutableArray);
      v28 = [NSIndexSet indexSetWithIndexesInRange:v13, v25];
      v29 = [v7 objectsAtIndexes:v28];
      [v27 addObjectsFromArray:v29];

      if ([v40 isClosed])
      {
        v30 = [(CRLBezierSubpath *)v12 nodes];
        v31 = [v30 count];

        if (v31)
        {
          v32 = [(CRLBezierSubpath *)v12 nodes];
          [v27 addObjectsFromArray:v32];
        }

        if (v12)
        {
          [v41 removeObjectIdenticalTo:v12];
        }
      }

      else
      {
        v33 = [v27 objectAtIndex:0];
        [v33 nodePoint];
        [v33 setInControlPoint:?];
        v34 = [v27 lastObject];

        [v34 nodePoint];
        [v34 setOutControlPoint:?];
      }

      v35 = objc_alloc_init(CRLBezierSubpath);
      [(CRLBezierSubpath *)v35 setNodes:v27];
      [v41 addObject:v35];
    }

LABEL_31:

    v36 = [v39 nextObject];

    v5 = v36;
  }

  while (v36);
LABEL_32:
  [(CRLEditableBezierPathSource *)self setSubpaths:v41];
}

- (id)splitEdge:(int64_t)a3 at:(double)a4 fromSubpath:(int64_t)a5
{
  v8 = [(CRLEditableBezierPathSource *)self subpaths];
  v9 = [v8 objectAtIndexedSubscript:a5];

  v10 = [v9 nodes];
  v11 = v10;
  if (a3 <= 0)
  {
    v12 = [v10 lastObject];
    v13 = [v11 objectAtIndex:0];
    a3 = [v11 count];
  }

  else
  {
    v12 = [v10 objectAtIndex:a3 - 1];
    v13 = [v11 objectAtIndex:a3];
  }

  [v13 nodePoint];
  v15 = v14;
  v17 = v16;
  [v13 inControlPoint];
  if (sub_10011ECC8(v15, v17, v18, v19) && ([v12 nodePoint], v21 = v20, v23 = v22, objc_msgSend(v12, "outControlPoint"), sub_10011ECC8(v21, v23, v24, v25)))
  {
    [v12 nodePoint];
    v27 = v26;
    v29 = v28;
    [v13 nodePoint];
    v32 = [CRLBezierNode bezierNodeWithPoint:(1.0 - a4) * v27 + a4 * v30, (1.0 - a4) * v29 + a4 * v31];
  }

  else
  {
    [v12 nodePoint];
    v44.f64[0] = v33;
    v44.f64[1] = v34;
    [v12 outControlPoint];
    v45 = v35;
    v46 = v36;
    [v13 inControlPoint];
    v47 = v37;
    v48 = v38;
    [v13 nodePoint];
    v49 = v39;
    v50 = v40;
    sub_100404958(&v44, v51, 0.0, a4);
    sub_100404958(&v44, v56, a4, 1.0);
    [v12 setOutControlPoint:{v52, v53}];
    [v13 setInControlPoint:{v56[4], v56[5]}];
    v32 = [CRLBezierNode bezierNodeWithPoint:v56[0] inControlPoint:v56[1] outControlPoint:v54, v55, v56[2], v56[3]];
  }

  v41 = v32;
  [v32 setSelected:1];
  v42 = [v11 mutableCopy];
  [v42 insertObject:v41 atIndex:a3];
  [v9 setNodes:v42];

  return v41;
}

- (void)splitSelectedEdges
{
  v3 = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = [v3 count];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [(CRLEditableBezierPathSource *)self subpaths];
      v7 = [v6 objectAtIndex:i];
      v8 = [v7 nodes];

      v9 = [v8 count];
      if (v9 >= 1)
      {
        v10 = v9;
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          v13 = v11;
          v14 = [v8 objectAtIndex:j];

          if (v13)
          {
            if ([v13 isSelected])
            {
              v15 = [(CRLEditableBezierPathSource *)self splitEdge:j++ at:i fromSubpath:0.5];
              ++v10;
            }
          }

          v11 = v14;
        }
      }
    }
  }
}

- (void)splitSelectedNodes
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(CRLEditableBezierPathSource *)self subpaths];
  v2 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v7 = [v6 nodes];
        v8 = [v7 mutableCopy];

        v9 = [v8 count];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          for (j = 0; j < v10; ++j)
          {
            v13 = v11;
            v11 = [v8 objectAtIndex:j];

            if ([v11 isSelected])
            {
              [v11 nodePoint];
              v15 = v14;
              v17 = v16;
              [v11 nodePoint];
              v19 = v18;
              v21 = v20;
              [v11 outControlPoint];
              v24 = [CRLBezierNode bezierNodeWithPoint:v15 inControlPoint:v17 outControlPoint:v19, v21, v22, v23];
              [v24 setSelected:0];
              [v11 nodePoint];
              [v11 setOutControlPoint:?];
              [v8 insertObject:v24 atIndex:++j];
              ++v10;
            }
          }
        }

        [v6 setNodes:v8];
      }

      v3 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v3);
  }
}

- (BOOL)canCutAtSelectedNodes
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 nodes];
        v9 = [v7 isClosed];
        v10 = [v8 count];
        if (v10)
        {
          v11 = v9 ^ 1;
          v12 = &v10[-([v7 isClosed] ^ 1)];
          if (v12 > v11)
          {
            while (1)
            {
              v13 = [v8 objectAtIndexedSubscript:v11];
              v14 = [v13 isSelected];

              if (v14)
              {
                break;
              }

              if (v12 == ++v11)
              {
                goto LABEL_10;
              }
            }

            v15 = 1;
            goto LABEL_15;
          }
        }

LABEL_10:
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_15:

  return v15;
}

- (void)cutAtSelectedNodes
{
  v33 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = self;
  v3 = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    v30 = v3;
    v31 = *v35;
    do
    {
      v7 = 0;
      v32 = v5;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        v9 = [v8 nodes];
        v10 = [v9 mutableCopy];

        if ([v10 count])
        {
          if ([v8 isClosed])
          {
            v11 = [v10 count];
            if (v11)
            {
              v12 = v11 - 1;
              while (1)
              {
                v13 = [v10 objectAtIndexedSubscript:v12];
                if ([v13 isSelected])
                {
                  break;
                }

                if (--v12 == -1)
                {
                  goto LABEL_16;
                }
              }

              [v13 setSelected:0];
              if (v12)
              {
                v14 = objc_alloc_init(NSMutableArray);
                v15 = [v10 subarrayWithRange:{v12, objc_msgSend(v10, "count") - v12}];
                [v14 addObjectsFromArray:v15];

                v16 = [v10 subarrayWithRange:{0, v12}];
                [v14 addObjectsFromArray:v16];

                [v8 setNodes:v14];
                v10 = v14;
              }

              v17 = [v13 copy];
              [v10 addObject:v17];
              [v8 setClosed:0];
              [v8 setNodes:v10];

LABEL_16:
              v6 = v31;
              v5 = v32;
            }
          }

          if (([v8 isClosed] & 1) == 0)
          {
            v18 = [v10 count];
            v19 = v18 - 1;
            if ((v18 - 1) >= 2)
            {
              v20 = 1 - v18;
              do
              {
                v21 = (v19 - 1);
                v22 = [v10 objectAtIndexedSubscript:v19 - 1];
                if ([v22 isSelected])
                {
                  [v22 setSelected:0];
                  v23 = [v22 copy];
                  v24 = objc_alloc_init(NSMutableArray);
                  [v24 addObject:v23];
                  v25 = [v10 subarrayWithRange:{v19, objc_msgSend(v10, "count") + v20}];
                  [v24 addObjectsFromArray:v25];

                  v26 = objc_alloc_init(CRLBezierSubpath);
                  [(CRLBezierSubpath *)v26 setNodes:v24];
                  [v10 removeObjectsInRange:{v19, objc_msgSend(v10, "count") + v20}];
                  [v8 setNodes:v10];
                  [v33 addObject:v26];
                }

                ++v20;
                --v19;
              }

              while (v21 > 1);
              v3 = v30;
              v6 = v31;
              v5 = v32;
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v5);
  }

  v27 = [(CRLEditableBezierPathSource *)v29 subpaths];
  v28 = [v27 arrayByAddingObjectsFromArray:v33];
  [(CRLEditableBezierPathSource *)v29 setSubpaths:v28];
}

- (CGPath)subpathForSelection
{
  v3 = +[CRLBezierPath bezierPath];
  v4 = [(CRLEditableBezierPathSource *)self subpaths];
  v5 = [v4 objectEnumerator];

  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      [v7 appendToBezierPath:v3 selectedNodesOnly:1 fromIndex:0];
      v8 = [v5 nextObject];

      v7 = v8;
    }

    while (v8);
  }

  v9 = [v3 CGPath];

  return v9;
}

- (NSArray)nodeTypes
{
  v3 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 nodes];
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [*(*(&v17 + 1) + 8 * j) type]);
              [v3 addObject:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)setNodeTypes:(id)a3
{
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CRLEditableBezierPathSource *)self subpaths];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v18 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [v9 nodes];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            v14 = 0;
            do
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * v14);
              v16 = [v4 objectAtIndex:v7];
              [v15 setType:{objc_msgSend(v16, "intValue")}];

              ++v7;
              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }
}

- (void)moveToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLEditableBezierPathSource *)self subpaths];
  v15 = [v6 lastObject];

  v7 = [v15 nodes];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v15 nodes];
    v10 = [v9 count];

    if (v10 == 1)
    {
      v11 = [v15 nodes];
      v12 = [v11 lastObject];

      [(CRLBezierSubpath *)v12 setNodePoint:x, y];
    }

    else
    {
      v12 = objc_alloc_init(CRLBezierSubpath);
      v13 = [(CRLEditableBezierPathSource *)self subpaths];
      v14 = [v13 arrayByAddingObject:v12];
      [(CRLEditableBezierPathSource *)self setSubpaths:v14];
    }
  }

  else
  {
    v12 = [CRLBezierNode bezierNodeWithPoint:x, y];
    [v15 addNode:v12];
  }
}

- (void)lineToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLEditableBezierPathSource *)self subpaths];
  v6 = [v5 lastObject];

  v7 = [v6 nodes];
  v8 = [v7 count];

  if (!v8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133879C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013387B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101338838();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLEditableBezierPathSource lineToPoint:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditableBezierPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:2047 isFatal:0 description:"cannot add line to subpath without move first"];
  }

  v12 = [CRLBezierNode bezierNodeWithPoint:x, y];
  [v6 addNode:v12];
}

- (void)curveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v11 = [(CRLEditableBezierPathSource *)self subpaths];
  v12 = [v11 lastObject];

  v13 = [v12 nodes];
  v14 = [v13 count];

  if (!v14)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101338860();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101338874();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013388FC();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLEditableBezierPathSource curveToPoint:controlPoint1:controlPoint2:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditableBezierPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:2054 isFatal:0 description:"cannot add line to subpath without move first"];
  }

  v18 = [v12 nodes];
  v19 = [v18 lastObject];

  [v19 setOutControlPoint:{v8, v7}];
  v20 = [CRLBezierNode bezierNodeWithPoint:v10 inControlPoint:v9 outControlPoint:x, y, v10, v9];
  [v12 addNode:v20];
}

- (void)smoothCurveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5
{
  [(CRLEditableBezierPathSource *)self curveToPoint:a3.x controlPoint1:a3.y controlPoint2:a4.x, a4.y, a5.x, a5.y];
  v6 = [(CRLEditableBezierPathSource *)self subpaths];
  v9 = [v6 lastObject];

  v7 = [v9 nodes];
  v8 = [v7 lastObject];

  [v8 setType:3];
}

- (void)closePath
{
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [v2 lastObject];

  v4 = [v3 nodes];
  v5 = [v4 count];

  if (v5 <= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101338924();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101338938();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013389C0();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLEditableBezierPathSource closePath]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditableBezierPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:2073 isFatal:0 description:"cannot close subpath without a line or curve segment"];
  }

  [v3 setClosed:1];
  v9 = [v3 nodes];
  v10 = [v9 objectAtIndex:0];

  v11 = [v3 nodes];
  v12 = [v11 lastObject];

  [v10 nodePoint];
  v14 = v13;
  v16 = v15;
  [v12 nodePoint];
  if (sub_10011ECC8(v14, v16, v17, v18))
  {
    [v12 inControlPoint];
    [v10 setInControlPoint:?];
    v19 = [v3 nodes];
    v20 = [v19 mutableCopy];

    [v20 removeLastObject];
  }
}

- (id)inferredAccessibilityDescriptionNoShapeNames
{
  v3 = [(CRLPathSource *)self userDefinedName];
  if (![v3 length])
  {
    v4 = [(CRLPathSource *)self bezierPath];
    v5 = [v4 inferredAccessibilityDescription];

    v3 = v5;
  }

  return v3;
}

- (id)inferredAccessibilityDescription
{
  v2 = [(CRLPathSource *)self bezierPath];
  v3 = [v2 inferredAccessibilityDescription];

  return v3;
}

- (void)morphWithMorphInfo:(id)a3
{
  v4 = a3;
  [(CRLEditableBezierPathSource *)self updateSmoothNodes];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(CRLEditableBezierPathSource *)self subpaths];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9) morphWithMorphInfo:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)updateSmoothNodes
{
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  [v2 makeObjectsPerformSelector:"updateSmoothNodes"];
}

- (void)addTemporarySmoothNodes
{
  v2 = [(CRLEditableBezierPathSource *)self subpaths];
  [v2 makeObjectsPerformSelector:"addTemporarySmoothNodes"];
}

@end