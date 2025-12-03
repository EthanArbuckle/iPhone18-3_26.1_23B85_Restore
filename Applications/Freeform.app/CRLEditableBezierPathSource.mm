@interface CRLEditableBezierPathSource
+ (CRLEditableBezierPathSource)editableBezierPathSourceWithBezierPath:(id)path;
+ (CRLEditableBezierPathSource)editableBezierPathSourceWithPathSource:(id)source;
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
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualWithStrictComparison:(id)comparison;
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
- (double)distanceToPoint:(CGPoint)point subpathIndex:(unint64_t *)index elementIndex:(unint64_t *)elementIndex tValue:(double *)value threshold:(double)threshold;
- (id)bezierNodeUnderPoint:(CGPoint)point withTransform:(CGAffineTransform *)transform andTolerance:(double)tolerance returningType:(int64_t *)type;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)inferredAccessibilityDescription;
- (id)inferredAccessibilityDescriptionNoShapeNames;
- (id)nodeAfterNode:(id)node;
- (id)nodePriorToNode:(id)node;
- (id)splitEdge:(int64_t)edge at:(double)at fromSubpath:(int64_t)subpath;
- (id)subpathsForConnectingUsingFirstSubpathFirstNode:(BOOL *)node andSecondPathFirstNode:(BOOL *)firstNode;
- (unint64_t)hash;
- (void)addNode:(id)node;
- (void)addTemporarySmoothNodes;
- (void)alignToOrigin;
- (void)beginNewSubpath;
- (void)closePath;
- (void)closeSelectedNodes;
- (void)connectSelectedNodes;
- (void)convertToHobby;
- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)cutAtSelectedNodes;
- (void)deleteSelectedEdges;
- (void)deleteSelectedNodesForced:(BOOL)forced;
- (void)deselectAllNodes;
- (void)lineToPoint:(CGPoint)point;
- (void)morphWithMorphInfo:(id)info;
- (void)moveToPoint:(CGPoint)point;
- (void)offsetSelectedEdgesByDelta:(CGPoint)delta;
- (void)offsetSelectedNodesByDelta:(CGPoint)delta;
- (void)removeLastNode;
- (void)removeNode:(id)node;
- (void)reverseDirection;
- (void)selectAllNodes;
- (void)selectSubpathForNode:(id)node toggle:(BOOL)toggle;
- (void)setBezierPath:(id)path;
- (void)setClosed:(BOOL)closed;
- (void)setLockedFlipTransform:(BOOL)transform;
- (void)setNaturalSize:(CGSize)size;
- (void)setNodeTypes:(id)types;
- (void)setNodes:(id)nodes;
- (void)sharpenAllNodes;
- (void)smoothAllNodes;
- (void)smoothCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)smoothNode:(id)node;
- (void)splitSelectedEdges;
- (void)splitSelectedNodes;
- (void)toggleNode:(id)node toType:(int64_t)type prevNode:(id)prevNode nextNode:(id)nextNode;
- (void)toggleSelectedNodesToType:(int64_t)type;
- (void)transformUsingAffineTransform:(CGAffineTransform *)transform;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setHasHorizontalFlip:{-[CRLPathSource hasHorizontalFlip](self, "hasHorizontalFlip")}];
  [v4 setHasVerticalFlip:{-[CRLPathSource hasVerticalFlip](self, "hasVerticalFlip")}];
  v5 = [NSArray alloc];
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v7 = [v5 initWithArray:subpaths copyItems:1];

  [v4 setSubpaths:v7];
  return v4;
}

+ (id)editableBezierPathSource
{
  v2 = objc_alloc_init(CRLEditableBezierPathSource);

  return v2;
}

+ (CRLEditableBezierPathSource)editableBezierPathSourceWithPathSource:(id)source
{
  bezierPath = [source bezierPath];
  v5 = [self editableBezierPathSourceWithBezierPath:bezierPath];

  return v5;
}

+ (CRLEditableBezierPathSource)editableBezierPathSourceWithBezierPath:(id)path
{
  pathCopy = path;
  v4 = +[CRLEditableBezierPathSource editableBezierPathSource];
  [v4 setBezierPath:pathCopy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CRLEditableBezierPathSource;
    if ([(CRLPathSource *)&v10 isEqual:equalCopy])
    {
      v5 = equalCopy;
      bezierPath = [(CRLPathSource *)self bezierPath];
      bezierPath2 = [(CRLPathSource *)v5 bezierPath];

      v8 = [bezierPath isEqual:bezierPath2];
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
  bezierPath = [(CRLPathSource *)self bezierPath];
  v4 = [bezierPath hash] != 0;

  v8 = v4;
  v7.receiver = self;
  v7.super_class = CRLEditableBezierPathSource;
  v5 = [(CRLPathSource *)&v7 hash];
  return sub_100083B3C(&v8, 1, v5);
}

- (BOOL)isEqualWithStrictComparison:(id)comparison
{
  comparisonCopy = comparison;
  if (comparisonCopy == self)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CRLEditableBezierPathSource;
    if ([(CRLPathSource *)&v12 isEqual:comparisonCopy])
    {
      v5 = comparisonCopy;
      bezierPath = [(CRLPathSource *)self bezierPath];
      cGPath = [bezierPath CGPath];

      bezierPath2 = [(CRLPathSource *)v5 bezierPath];
      cGPath2 = [bezierPath2 CGPath];

      v10 = cGPath == cGPath2 || CGPathEqualToPath(cGPath, cGPath2);
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
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = [subpaths objectAtIndex:self->mActiveSubpath];
  closeIfEndpointsAreEqual = [v4 closeIfEndpointsAreEqual];

  return closeIfEndpointsAreEqual;
}

- (BOOL)isRectangular
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  if ([subpaths count] == 1)
  {
    subpaths2 = [(CRLEditableBezierPathSource *)self subpaths];
    lastObject = [subpaths2 lastObject];
    isRectangular = [lastObject isRectangular];
  }

  else
  {
    isRectangular = 0;
  }

  return isRectangular;
}

- (BOOL)isCircular
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  if ([subpaths count] == 1)
  {
    subpaths2 = [(CRLEditableBezierPathSource *)self subpaths];
    lastObject = [subpaths2 lastObject];
    isCircular = [lastObject isCircular];
  }

  else
  {
    isCircular = 0;
  }

  return isCircular;
}

- (id)bezierPathWithoutFlips
{
  v3 = +[CRLBezierPath bezierPath];
  [v3 moveToPoint:{CGPointZero.x, CGPointZero.y}];
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  [subpaths makeObjectsPerformSelector:"appendToBezierPath:" withObject:v3];

  return v3;
}

- (CGPath)pathWithoutFlips
{
  bezierPathWithoutFlips = [(CRLEditableBezierPathSource *)self bezierPathWithoutFlips];
  cGPath = [bezierPathWithoutFlips CGPath];

  return cGPath;
}

- (void)convertToHobby
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  [subpaths makeObjectsPerformSelector:"convertToHobby"];
}

- (void)setBezierPath:(id)path
{
  pathCopy = path;
  elementCount = [pathCopy elementCount];
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
  if (elementCount >= 1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = [pathCopy elementAtIndex:v7 associatedPoints:&v47];
      if (v42[5])
      {
        (v6[2])(v6);
      }

      lastNode = [v36[5] lastNode];
      v11 = lastNode;
      if (v9 <= 1)
      {
        break;
      }

      if (v9 == 2)
      {
        [lastNode setOutControlPoint:{v47, v48}];
        [v11 setType:2];
        v24 = [CRLBezierNode bezierNodeWithPoint:v51 inControlPoint:v52 outControlPoint:v49, v50, v51, v52];

        [v36[5] addNode:v24];
        v8 = v24;
        goto LABEL_23;
      }

      if (v9 == 3)
      {
        firstNode = [v36[5] firstNode];
        v14 = firstNode;
        if (v11)
        {
          v15 = firstNode == 0;
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

      if (elementCount == ++v7)
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
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  [subpaths makeObjectsPerformSelector:"updateReflectedState"];

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

- (void)setNodes:(id)nodes
{
  nodesCopy = nodes;
  v5 = objc_alloc_init(CRLBezierSubpath);
  [(CRLBezierSubpath *)v5 setNodes:nodesCopy];

  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(CRLEditableBezierPathSource *)self setSubpaths:v6];
}

- (NSArray)nodes
{
  v3 = objc_alloc_init(NSMutableArray);
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  [subpaths makeObjectsPerformSelector:"addNodesToArray:" withObject:v3];

  v5 = [v3 copy];

  return v5;
}

- (void)reverseDirection
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [subpaths objectAtIndex:self->mActiveSubpath];
  [v3 reverseDirection];
}

- (void)setLockedFlipTransform:(BOOL)transform
{
  p_mLockedFlipTransform = &self->mLockedFlipTransform;
  v7[0].receiver = self;
  v7[0].super_class = CRLEditableBezierPathSource;
  [(objc_super *)v7 pathFlipTransform];
  v6 = v7[2];
  *&p_mLockedFlipTransform->a = v7[1];
  *&p_mLockedFlipTransform->c = v6;
  *&p_mLockedFlipTransform->tx = v7[3];
  self->mHasLockedFlipTransform = transform;
}

- (void)beginNewSubpath
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = objc_alloc_init(CRLBezierSubpath);
  v5 = [subpaths arrayByAddingObject:v4];
  [(CRLEditableBezierPathSource *)self setSubpaths:v5];

  subpaths2 = [(CRLEditableBezierPathSource *)self subpaths];
  self->mActiveSubpath = [subpaths2 count] - 1;
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
  bezierPathWithoutFlips = [(CRLEditableBezierPathSource *)self bezierPathWithoutFlips];
  v3 = bezierPathWithoutFlips;
  if (bezierPathWithoutFlips)
  {
    [bezierPathWithoutFlips bounds];
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

- (void)setNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  nodes = [(CRLEditableBezierPathSource *)self nodes];
  v7 = [nodes count];

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
    subpaths = [(CRLEditableBezierPathSource *)self subpaths];
    v13 = [subpaths countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(subpaths);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          v18 = v23;
          [v17 transformUsingAffineTransform:&v18];
        }

        v14 = [subpaths countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v14);
    }
  }
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)transform
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v5 = [subpaths countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(subpaths);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = *&transform->c;
        v11[0] = *&transform->a;
        v11[1] = v10;
        v11[2] = *&transform->tx;
        [v9 transformUsingAffineTransform:v11];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [subpaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)alignToOrigin
{
  bezierPath = [(CRLPathSource *)self bezierPath];
  [bezierPath bounds];
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
  LODWORD(bezierPath) = [(CRLPathSource *)self hasHorizontalFlip];
  hasVerticalFlip = [(CRLPathSource *)self hasVerticalFlip];
  v13 = 1.0;
  if (bezierPath)
  {
    v14 = -1.0;
  }

  else
  {
    v14 = 1.0;
  }

  if (hasVerticalFlip)
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
    subpaths = [(CRLEditableBezierPathSource *)self subpaths];
    v18 = [subpaths countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(subpaths);
          }

          v22 = *(*(&v27 + 1) + 8 * v21);
          v26 = v31;
          [v22 transformUsingAffineTransform:&v26];
          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [subpaths countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v19);
    }
  }
}

- (void)addNode:(id)node
{
  nodeCopy = node;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v5 = [subpaths objectAtIndex:self->mActiveSubpath];
  [v5 addNode:nodeCopy];
}

- (void)removeLastNode
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [subpaths objectAtIndex:self->mActiveSubpath];
  [v3 removeLastNode];
}

- (id)nodePriorToNode:(id)node
{
  nodeCopy = node;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v6 = [subpaths objectAtIndex:self->mActiveSubpath];
  v7 = [v6 nodePriorToNode:nodeCopy];

  return v7;
}

- (id)nodeAfterNode:(id)node
{
  nodeCopy = node;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v6 = [subpaths objectAtIndex:self->mActiveSubpath];
  v7 = [v6 nodeAfterNode:nodeCopy];

  return v7;
}

- (CRLBezierNode)firstNode
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = [subpaths objectAtIndex:self->mActiveSubpath];
  firstNode = [v4 firstNode];

  return firstNode;
}

- (CRLBezierNode)lastNode
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = [subpaths objectAtIndex:self->mActiveSubpath];
  lastNode = [v4 lastNode];

  return lastNode;
}

- (void)offsetSelectedNodesByDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v6 = [subpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(subpaths);
        }

        [*(*(&v10 + 1) + 8 * v9) offsetSelectedNodesByDelta:{x, y}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [subpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)offsetSelectedEdgesByDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v6 = [subpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(subpaths);
        }

        [*(*(&v10 + 1) + 8 * v9) offsetSelectedEdgesByDelta:{x, y}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [subpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [subpaths countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(subpaths);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasSelectedNode])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [subpaths countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [subpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(subpaths);
        }

        if (![*(*(&v9 + 1) + 8 * i) allNodesSelected])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [subpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)removeNode:(id)node
{
  nodeCopy = node;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v5 = [subpaths objectAtIndex:self->mActiveSubpath];
  [v5 removeNode:nodeCopy];
}

- (BOOL)isCompound
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [subpaths count] > 1;

  return v3;
}

- (BOOL)canDeleteSelectedNodes
{
  isCompound = [(CRLEditableBezierPathSource *)self isCompound];
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  objectEnumerator2 = subpaths;
  if ((isCompound & 1) == 0)
  {
    lastObject = [subpaths lastObject];
    canDeleteSelectedNodes = [lastObject canDeleteSelectedNodes];
LABEL_9:

    objectEnumerator = objectEnumerator2;
    goto LABEL_10;
  }

  objectEnumerator = [subpaths objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    lastObject = nextObject;
    while (![lastObject hasSelectedNode] || objc_msgSend(lastObject, "canDeleteSelectedNodes"))
    {
      nextObject2 = [objectEnumerator nextObject];

      lastObject = nextObject2;
      if (!nextObject2)
      {
        goto LABEL_7;
      }
    }

    subpaths2 = [(CRLEditableBezierPathSource *)self subpaths];
    objectEnumerator2 = [subpaths2 objectEnumerator];

    do
    {
      v13 = lastObject;
      lastObject = [objectEnumerator2 nextObject];

      canDeleteSelectedNodes = lastObject != 0;
    }

    while (lastObject && [lastObject hasSelectedNode] && !objc_msgSend(lastObject, "canDeleteSelectedNodes"));
    goto LABEL_9;
  }

LABEL_7:
  canDeleteSelectedNodes = 1;
LABEL_10:

  return canDeleteSelectedNodes;
}

- (BOOL)deletingSelectedNodesWillDeleteShape
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [subpaths countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(subpaths);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        nodes = [v7 nodes];
        if ([nodes count] < 3)
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

          canDeleteSelectedNodes = [v7 canDeleteSelectedNodes];

          if (canDeleteSelectedNodes)
          {
            goto LABEL_15;
          }
        }
      }

      v4 = [subpaths countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)deleteSelectedNodesForced:(BOOL)forced
{
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v7 = [subpaths countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(subpaths);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 canDeleteSelectedNodes])
        {
          [v11 deleteSelectedNodes];
        }

        else if (forced || [v11 allNodesSelected])
        {
          if ([v11 hasSelectedNode])
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [subpaths countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  subpaths2 = [(CRLEditableBezierPathSource *)self subpaths];
  v13 = [subpaths2 mutableCopy];

  [v13 removeObjectsInArray:v5];
  [(CRLEditableBezierPathSource *)self setSubpaths:v13];
}

- (void)selectAllNodes
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  [subpaths makeObjectsPerformSelector:"selectAllNodes"];
}

- (void)deselectAllNodes
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  [subpaths makeObjectsPerformSelector:"deselectAllNodes"];
}

- (id)bezierNodeUnderPoint:(CGPoint)point withTransform:(CGAffineTransform *)transform andTolerance:(double)tolerance returningType:(int64_t *)type
{
  y = point.y;
  x = point.x;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  objectEnumerator = [subpaths objectEnumerator];

  nextObject = 0;
  while (1)
  {
    v14 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v15 = *&transform->c;
    v19[0] = *&transform->a;
    v19[1] = v15;
    v19[2] = *&transform->tx;
    v16 = [nextObject bezierNodeUnderPoint:v19 withTransform:type andTolerance:x returningType:{y, tolerance}];
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

- (double)distanceToPoint:(CGPoint)point subpathIndex:(unint64_t *)index elementIndex:(unint64_t *)elementIndex tValue:(double *)value threshold:(double)threshold
{
  y = point.y;
  x = point.x;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v14 = [subpaths count];

  v15 = 0;
  v16 = 0;
  v17 = 1.79769313e308;
  if (v14)
  {
    v18 = 0;
    if (threshold < 1.79769313e308)
    {
      v18 = 0;
      v15 = 0;
      v17 = 1.79769313e308;
      v19 = 1;
      do
      {
        subpaths2 = [(CRLEditableBezierPathSource *)self subpaths];
        v21 = [subpaths2 objectAtIndexedSubscript:v19 - 1];

        v25 = 0;
        v26 = 0;
        [v21 distanceToPoint:&v26 elementIndex:&v25 tValue:x threshold:{y, threshold}];
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

      while (v17 > threshold);
    }

    if (index)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
    if (index)
    {
LABEL_9:
      *index = v15;
    }
  }

  if (elementIndex)
  {
    *elementIndex = v18;
  }

  if (value)
  {
    *value = v16;
  }

  return v17;
}

- (CGRect)nodeBounds
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  objectEnumerator = [subpaths objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v9 = nextObject;
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
      nextObject2 = [objectEnumerator nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
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

- (void)toggleNode:(id)node toType:(int64_t)type prevNode:(id)prevNode nextNode:(id)nextNode
{
  nodeCopy = node;
  prevNodeCopy = prevNode;
  nextNodeCopy = nextNode;
  if ([nodeCopy type] != type)
  {
    switch(type)
    {
      case 1:
        [nodeCopy setType:1];
        if ([nextNodeCopy type] == 1)
        {
          [nodeCopy nodePoint];
          [nodeCopy setOutControlPoint:?];
          [nextNodeCopy nodePoint];
          [nextNodeCopy setInControlPoint:?];
        }

        if ([prevNodeCopy type] == 1)
        {
          [nodeCopy nodePoint];
          [nodeCopy setInControlPoint:?];
          [prevNodeCopy nodePoint];
          [prevNodeCopy setOutControlPoint:?];
        }

        break;
      case 3:
        [nodeCopy setType:3];
        break;
      case 2:
        [nodeCopy nodePoint];
        v12 = v11;
        v14 = v13;
        [nodeCopy outControlPoint];
        if (sub_10011ECC8(v12, v14, v15, v16))
        {
          [nextNodeCopy nodePoint];
          v18 = v17;
          v20 = v19;
          [nextNodeCopy inControlPoint];
          if (sub_10011ECC8(v18, v20, v21, v22))
          {
            [nodeCopy nodePoint];
            v24 = v23;
            v26 = v25;
            [nextNodeCopy nodePoint];
            [nodeCopy setOutControlPoint:{sub_100120ABC(v24, v26, v27, v28, 0.333333333)}];
            [nodeCopy nodePoint];
            v30 = v29;
            v32 = v31;
            [nextNodeCopy nodePoint];
            [nextNodeCopy setInControlPoint:{sub_100120ABC(v30, v32, v33, v34, 0.666666667)}];
          }
        }

        [nodeCopy nodePoint];
        v36 = v35;
        v38 = v37;
        [nodeCopy inControlPoint];
        if (sub_10011ECC8(v36, v38, v39, v40))
        {
          [prevNodeCopy nodePoint];
          v42 = v41;
          v44 = v43;
          [prevNodeCopy outControlPoint];
          if (sub_10011ECC8(v42, v44, v45, v46))
          {
            [nodeCopy nodePoint];
            v48 = v47;
            v50 = v49;
            [prevNodeCopy nodePoint];
            [nodeCopy setInControlPoint:{sub_100120ABC(v48, v50, v51, v52, 0.333333333)}];
            [nodeCopy nodePoint];
            v54 = v53;
            v56 = v55;
            [prevNodeCopy nodePoint];
            [prevNodeCopy setOutControlPoint:{sub_100120ABC(v54, v56, v57, v58, 0.666666667)}];
          }
        }

        [nodeCopy setType:2];
        [nodeCopy updateReflectedState];
        break;
    }
  }
}

- (void)toggleSelectedNodesToType:(int64_t)type
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
        nodes = [v4 nodes];
        if ([nodes count])
        {
          isClosed = [v4 isClosed];
          if (isClosed)
          {
            lastObject = [nodes lastObject];
          }

          else
          {
            lastObject = 0;
          }

          v8 = [nodes objectAtIndexedSubscript:0];
          v9 = [nodes count];
          if (v9)
          {
            v10 = v9;
            v11 = 1;
            v12 = v9;
            do
            {
              if (((v11 >= v10) & ~isClosed) != 0)
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

                v14 = [nodes objectAtIndexedSubscript:v13];
              }

              if ([v8 isSelected])
              {
                [(CRLEditableBezierPathSource *)self toggleNode:v8 toType:type prevNode:lastObject nextNode:v14];
              }

              v15 = v8;

              ++v11;
              lastObject = v15;
              v8 = v14;
              --v12;
            }

            while (v12);
          }

          else
          {
            v14 = v8;
            v15 = lastObject;
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
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  [subpaths makeObjectsPerformSelector:"sharpenAllNodes"];
}

- (void)smoothNode:(id)node
{
  nodeCopy = node;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  objectEnumerator = [subpaths objectEnumerator];

  nextObject = 0;
  while (1)
  {
    v7 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    nodes = [nextObject nodes];
    v9 = [nodes containsObject:nodeCopy];

    if (v9)
    {
      [nextObject smoothNode:nodeCopy];
      break;
    }
  }
}

- (void)smoothAllNodes
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  [subpaths makeObjectsPerformSelector:"smoothAllNodes"];
}

- (BOOL)isClosed
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [subpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(subpaths);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        nodes = [v6 nodes];
        if ([nodes count])
        {
          isClosed = [v6 isClosed];

          if (isClosed)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v3 = [subpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

LABEL_12:

  return v3;
}

- (void)setClosed:(BOOL)closed
{
  closedCopy = closed;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v5 = [subpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(subpaths);
        }

        [*(*(&v9 + 1) + 8 * v8) setClosed:closedCopy];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [subpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)selectSubpathForNode:(id)node toggle:(BOOL)toggle
{
  toggleCopy = toggle;
  nodeCopy = node;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  objectEnumerator = [subpaths objectEnumerator];

  nextObject = 0;
  while (1)
  {
    v9 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    nodes = [nextObject nodes];
    v11 = [nodes containsObject:nodeCopy];

    if (v11)
    {
      if (toggleCopy && [nextObject allNodesSelected])
      {
        [nextObject deselectAllNodes];
      }

      else
      {
        [nextObject selectAllNodes];
      }

      break;
    }
  }
}

- (id)subpathsForConnectingUsingFirstSubpathFirstNode:(BOOL *)node andSecondPathFirstNode:(BOOL *)firstNode
{
  *node = 0;
  *firstNode = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v7 = [subpaths countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (!v7)
  {
    v9 = 0;
LABEL_18:
    v21 = 0;
LABEL_22:

    goto LABEL_24;
  }

  v8 = v7;
  firstNodeCopy = firstNode;
  v9 = 0;
  v10 = *v25;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v25 != v10)
    {
      objc_enumerationMutation(subpaths);
    }

    v12 = *(*(&v24 + 1) + 8 * v11);
    if ([v12 isClosed])
    {
      goto LABEL_14;
    }

    nodes = [v12 nodes];
    v14 = [nodes count];

    if (!v14)
    {
      goto LABEL_14;
    }

    firstNode = [v12 firstNode];
    isSelected = [firstNode isSelected];

    if (isSelected)
    {
      break;
    }

LABEL_11:
    lastNode = [v12 lastNode];
    isSelected2 = [lastNode isSelected];

    if (isSelected2)
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
      v8 = [subpaths countByEnumeratingWithState:&v24 objects:v29 count:16];
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
    *node = 1;
    v9 = v17;
    goto LABEL_11;
  }

  *firstNodeCopy = 1;
LABEL_20:

  if (v12)
  {
    v28[0] = v9;
    v28[1] = v12;
    v21 = [NSArray arrayWithObjects:v28 count:2];
    subpaths = v12;
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

    subpaths = [(CRLEditableBezierPathSource *)self subpaths];
    v8 = [subpaths mutableCopy];

    if ((v18 & 0x100) != 0)
    {
      if ((v18 & 1) == 0)
      {
        nodes = [v6 nodes];
        v10 = [nodes mutableCopy];

        nodes2 = [v5 nodes];
        [v10 addObjectsFromArray:nodes2];

        [v6 setNodes:v10];
        v15 = v5;
        goto LABEL_13;
      }

      [v6 reverseDirection];
      nodes3 = [v5 nodes];
      v10 = [nodes3 mutableCopy];

      nodes4 = [v6 nodes];
      nodes5 = [v6 nodes];
      v13 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [nodes5 count]);
      [v10 insertObjects:nodes4 atIndexes:v13];
    }

    else
    {
      if (!v18)
      {
        [v6 reverseDirection];
      }

      nodes6 = [v5 nodes];
      v10 = [nodes6 mutableCopy];

      nodes4 = [v6 nodes];
      [v10 addObjectsFromArray:nodes4];
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
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [subpaths countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(subpaths);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        if (([v6 isClosed] & 1) == 0)
        {
          nodes = [v6 nodes];
          v8 = [nodes count];

          if (v8)
          {
            firstNode = [v6 firstNode];
            if ([firstNode isSelected])
            {

LABEL_14:
              LOBYTE(v3) = 1;
              goto LABEL_15;
            }

            lastNode = [v6 lastNode];
            isSelected = [lastNode isSelected];

            if (isSelected)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v3 = [subpaths countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [subpaths countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(subpaths);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        if (([v7 isClosed] & 1) == 0)
        {
          nodes = [v7 nodes];
          v9 = [nodes count];

          if (v9)
          {
            firstNode = [v7 firstNode];
            if ([firstNode isSelected])
            {
            }

            else
            {
              lastNode = [v7 lastNode];
              isSelected = [lastNode isSelected];

              if (!isSelected)
              {
                continue;
              }
            }

            firstNode2 = [v7 firstNode];
            type = [firstNode2 type];

            if (type == 3)
            {
              firstNode3 = [v7 firstNode];
              [firstNode3 setType:1];
            }

            [v7 setClosed:1];
          }
        }
      }

      v4 = [subpaths countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

- (void)deleteSelectedEdges
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v38 = [subpaths copy];

  objectEnumerator = [v38 objectEnumerator];
  v41 = objc_alloc_init(NSMutableArray);
  v39 = objectEnumerator;
  nextObject = [objectEnumerator nextObject];
  if (!nextObject)
  {
    goto LABEL_32;
  }

  v5 = nextObject;
  do
  {
    nodes = [v5 nodes];
    v7 = [nodes mutableCopy];

    v8 = [v7 count];
    lastObject = [v7 lastObject];
    isSelected = [lastObject isSelected];

    if (isSelected)
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
        nodes2 = [(CRLBezierSubpath *)v18 nodes];
        lastObject2 = [nodes2 lastObject];

        [lastObject2 nodePoint];
        [lastObject2 setOutControlPoint:?];
        if (v12 || ([v40 isClosed] & 1) == 0)
        {
          nodes3 = [(CRLBezierSubpath *)v18 nodes];
          v23 = [nodes3 objectAtIndex:0];

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
          v23 = lastObject2;
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
        nodes4 = [(CRLBezierSubpath *)v12 nodes];
        v31 = [nodes4 count];

        if (v31)
        {
          nodes5 = [(CRLBezierSubpath *)v12 nodes];
          [v27 addObjectsFromArray:nodes5];
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
        lastObject3 = [v27 lastObject];

        [lastObject3 nodePoint];
        [lastObject3 setOutControlPoint:?];
      }

      v35 = objc_alloc_init(CRLBezierSubpath);
      [(CRLBezierSubpath *)v35 setNodes:v27];
      [v41 addObject:v35];
    }

LABEL_31:

    nextObject2 = [v39 nextObject];

    v5 = nextObject2;
  }

  while (nextObject2);
LABEL_32:
  [(CRLEditableBezierPathSource *)self setSubpaths:v41];
}

- (id)splitEdge:(int64_t)edge at:(double)at fromSubpath:(int64_t)subpath
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v9 = [subpaths objectAtIndexedSubscript:subpath];

  nodes = [v9 nodes];
  v11 = nodes;
  if (edge <= 0)
  {
    lastObject = [nodes lastObject];
    v13 = [v11 objectAtIndex:0];
    edge = [v11 count];
  }

  else
  {
    lastObject = [nodes objectAtIndex:edge - 1];
    v13 = [v11 objectAtIndex:edge];
  }

  [v13 nodePoint];
  v15 = v14;
  v17 = v16;
  [v13 inControlPoint];
  if (sub_10011ECC8(v15, v17, v18, v19) && ([lastObject nodePoint], v21 = v20, v23 = v22, objc_msgSend(lastObject, "outControlPoint"), sub_10011ECC8(v21, v23, v24, v25)))
  {
    [lastObject nodePoint];
    v27 = v26;
    v29 = v28;
    [v13 nodePoint];
    v32 = [CRLBezierNode bezierNodeWithPoint:(1.0 - at) * v27 + at * v30, (1.0 - at) * v29 + at * v31];
  }

  else
  {
    [lastObject nodePoint];
    v44.f64[0] = v33;
    v44.f64[1] = v34;
    [lastObject outControlPoint];
    v45 = v35;
    v46 = v36;
    [v13 inControlPoint];
    v47 = v37;
    v48 = v38;
    [v13 nodePoint];
    v49 = v39;
    v50 = v40;
    sub_100404958(&v44, v51, 0.0, at);
    sub_100404958(&v44, v56, at, 1.0);
    [lastObject setOutControlPoint:{v52, v53}];
    [v13 setInControlPoint:{v56[4], v56[5]}];
    v32 = [CRLBezierNode bezierNodeWithPoint:v56[0] inControlPoint:v56[1] outControlPoint:v54, v55, v56[2], v56[3]];
  }

  v41 = v32;
  [v32 setSelected:1];
  v42 = [v11 mutableCopy];
  [v42 insertObject:v41 atIndex:edge];
  [v9 setNodes:v42];

  return v41;
}

- (void)splitSelectedEdges
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = [subpaths count];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      subpaths2 = [(CRLEditableBezierPathSource *)self subpaths];
      v7 = [subpaths2 objectAtIndex:i];
      nodes = [v7 nodes];

      v9 = [nodes count];
      if (v9 >= 1)
      {
        v10 = v9;
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          v13 = v11;
          v14 = [nodes objectAtIndex:j];

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
        nodes = [v6 nodes];
        v8 = [nodes mutableCopy];

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
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v3 = [subpaths countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(subpaths);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        nodes = [v7 nodes];
        isClosed = [v7 isClosed];
        v10 = [nodes count];
        if (v10)
        {
          v11 = isClosed ^ 1;
          v12 = &v10[-([v7 isClosed] ^ 1)];
          if (v12 > v11)
          {
            while (1)
            {
              v13 = [nodes objectAtIndexedSubscript:v11];
              isSelected = [v13 isSelected];

              if (isSelected)
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

      v4 = [subpaths countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  selfCopy = self;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v4 = [subpaths countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    v30 = subpaths;
    v31 = *v35;
    do
    {
      v7 = 0;
      v32 = v5;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(subpaths);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        nodes = [v8 nodes];
        v10 = [nodes mutableCopy];

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
              subpaths = v30;
              v6 = v31;
              v5 = v32;
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [subpaths countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v5);
  }

  subpaths2 = [(CRLEditableBezierPathSource *)selfCopy subpaths];
  v28 = [subpaths2 arrayByAddingObjectsFromArray:v33];
  [(CRLEditableBezierPathSource *)selfCopy setSubpaths:v28];
}

- (CGPath)subpathForSelection
{
  v3 = +[CRLBezierPath bezierPath];
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  objectEnumerator = [subpaths objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v7 = nextObject;
    do
    {
      [v7 appendToBezierPath:v3 selectedNodesOnly:1 fromIndex:0];
      nextObject2 = [objectEnumerator nextObject];

      v7 = nextObject2;
    }

    while (nextObject2);
  }

  cGPath = [v3 CGPath];

  return cGPath;
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
        nodes = [v8 nodes];
        v10 = [nodes countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(nodes);
              }

              v14 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [*(*(&v17 + 1) + 8 * j) type]);
              [v3 addObject:v14];
            }

            v11 = [nodes countByEnumeratingWithState:&v17 objects:v25 count:16];
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

- (void)setNodeTypes:(id)types
{
  typesCopy = types;
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
        nodes = [v9 nodes];
        v11 = [nodes countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(nodes);
              }

              v15 = *(*(&v19 + 1) + 8 * v14);
              v16 = [typesCopy objectAtIndex:v7];
              [v15 setType:{objc_msgSend(v16, "intValue")}];

              ++v7;
              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [nodes countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (void)moveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  lastObject = [subpaths lastObject];

  nodes = [lastObject nodes];
  v8 = [nodes count];

  if (v8)
  {
    nodes2 = [lastObject nodes];
    v10 = [nodes2 count];

    if (v10 == 1)
    {
      nodes3 = [lastObject nodes];
      lastObject2 = [nodes3 lastObject];

      [(CRLBezierSubpath *)lastObject2 setNodePoint:x, y];
    }

    else
    {
      lastObject2 = objc_alloc_init(CRLBezierSubpath);
      subpaths2 = [(CRLEditableBezierPathSource *)self subpaths];
      v14 = [subpaths2 arrayByAddingObject:lastObject2];
      [(CRLEditableBezierPathSource *)self setSubpaths:v14];
    }
  }

  else
  {
    lastObject2 = [CRLBezierNode bezierNodeWithPoint:x, y];
    [lastObject addNode:lastObject2];
  }
}

- (void)lineToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  lastObject = [subpaths lastObject];

  nodes = [lastObject nodes];
  v8 = [nodes count];

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
  [lastObject addNode:v12];
}

- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  v9 = point.y;
  v10 = point.x;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  lastObject = [subpaths lastObject];

  nodes = [lastObject nodes];
  v14 = [nodes count];

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

  nodes2 = [lastObject nodes];
  lastObject2 = [nodes2 lastObject];

  [lastObject2 setOutControlPoint:{v8, v7}];
  v20 = [CRLBezierNode bezierNodeWithPoint:v10 inControlPoint:v9 outControlPoint:x, y, v10, v9];
  [lastObject addNode:v20];
}

- (void)smoothCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  [(CRLEditableBezierPathSource *)self curveToPoint:point.x controlPoint1:point.y controlPoint2:point1.x, point1.y, point2.x, point2.y];
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  lastObject = [subpaths lastObject];

  nodes = [lastObject nodes];
  lastObject2 = [nodes lastObject];

  [lastObject2 setType:3];
}

- (void)closePath
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  lastObject = [subpaths lastObject];

  nodes = [lastObject nodes];
  v5 = [nodes count];

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

  [lastObject setClosed:1];
  nodes2 = [lastObject nodes];
  v10 = [nodes2 objectAtIndex:0];

  nodes3 = [lastObject nodes];
  lastObject2 = [nodes3 lastObject];

  [v10 nodePoint];
  v14 = v13;
  v16 = v15;
  [lastObject2 nodePoint];
  if (sub_10011ECC8(v14, v16, v17, v18))
  {
    [lastObject2 inControlPoint];
    [v10 setInControlPoint:?];
    nodes4 = [lastObject nodes];
    v20 = [nodes4 mutableCopy];

    [v20 removeLastObject];
  }
}

- (id)inferredAccessibilityDescriptionNoShapeNames
{
  userDefinedName = [(CRLPathSource *)self userDefinedName];
  if (![userDefinedName length])
  {
    bezierPath = [(CRLPathSource *)self bezierPath];
    inferredAccessibilityDescription = [bezierPath inferredAccessibilityDescription];

    userDefinedName = inferredAccessibilityDescription;
  }

  return userDefinedName;
}

- (id)inferredAccessibilityDescription
{
  bezierPath = [(CRLPathSource *)self bezierPath];
  inferredAccessibilityDescription = [bezierPath inferredAccessibilityDescription];

  return inferredAccessibilityDescription;
}

- (void)morphWithMorphInfo:(id)info
{
  infoCopy = info;
  [(CRLEditableBezierPathSource *)self updateSmoothNodes];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  v6 = [subpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(subpaths);
        }

        [*(*(&v10 + 1) + 8 * v9) morphWithMorphInfo:infoCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [subpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)updateSmoothNodes
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  [subpaths makeObjectsPerformSelector:"updateSmoothNodes"];
}

- (void)addTemporarySmoothNodes
{
  subpaths = [(CRLEditableBezierPathSource *)self subpaths];
  [subpaths makeObjectsPerformSelector:"addTemporarySmoothNodes"];
}

@end