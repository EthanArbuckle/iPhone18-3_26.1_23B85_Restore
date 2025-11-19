@interface CRLConnectionLineRep
+ (BOOL)canConnectToRep:(id)a3;
+ (id)infosToConnectFromSelectionPath:(id)a3 withInteractiveCanvasController:(id)a4;
- (BOOL)canConnectToRep:(id)a3;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3;
- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4;
- (BOOL)crlaxIsStraightLine;
- (BOOL)i_editMenuOverlapsEndKnobs;
- (BOOL)p_controlKnobVisible;
- (BOOL)p_isConnected;
- (BOOL)shouldCreateKnobs;
- (BOOL)shouldCreateSelectionKnobs;
- (BOOL)shouldSetPathSourceWhenChangingInfoGeometry;
- (BOOL)shouldShowSmartShapeKnobs;
- (CGPoint)i_dragOffset;
- (CGRect)targetRectForEditMenu;
- (double)shortestDistanceToPoint:(CGPoint)a3 countAsHit:(BOOL *)a4;
- (id)additionalRepsForDragging;
- (id)connectionLineLayout;
- (id)newTrackerForKnob:(id)a3;
- (id)overlayRenderables;
- (id)p_createClippedPathRenderableForEnd:(unint64_t)a3;
- (id)p_createRenderableForMagnet:(CGPoint)a3 connected:(BOOL)a4;
- (unint64_t)enabledKnobMask;
- (void)updateFromLayout;
- (void)updateMagnetRenderables:(id)a3 withEmptyMagnets:(id)a4 withHighlightedMagnets:(id)a5 includeClippedPortions:(BOOL)a6;
@end

@implementation CRLConnectionLineRep

- (id)connectionLineLayout
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(CRLConnectionLineRep *)self connectionLineLayout];
  if (([v8 isInvisible] & 1) != 0 || !objc_msgSend(v8, "validLine"))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CRLConnectionLineRep;
    v9 = [(CRLShapeRep *)&v11 containsPoint:v4 withPrecision:x, y];
  }

  return v9;
}

- (double)shortestDistanceToPoint:(CGPoint)a3 countAsHit:(BOOL *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(CRLConnectionLineRep *)self connectionLineLayout];
  v9 = 3.40282347e38;
  if (([v8 isInvisible] & 1) == 0 && objc_msgSend(v8, "validLine"))
  {
    v12.receiver = self;
    v12.super_class = CRLConnectionLineRep;
    [(CRLShapeRep *)&v12 shortestDistanceToPoint:a4 countAsHit:x, y];
    v9 = v10;
  }

  return v9;
}

- (void)updateFromLayout
{
  v7.receiver = self;
  v7.super_class = CRLConnectionLineRep;
  [(CRLCanvasRep *)&v7 updateFromLayout];
  if (![(CRLCanvasRep *)self isBeingDragged]&& ![(CRLCanvasRep *)self isBeingRotated]&& ![(CRLCanvasRep *)self isBeingFreeTransformed])
  {
    v3 = [(CRLShapeRep *)self shapeLayout];
    v4 = [v3 pathSource];

    if (([v4 isEqual:self->mLastPathSource] & 1) == 0)
    {
      [(CRLShapeRep *)self layoutInRootChangedFrom:0 to:0 translatedOnly:0];
      v5 = [v4 copy];
      mLastPathSource = self->mLastPathSource;
      self->mLastPathSource = v5;
    }
  }
}

- (BOOL)shouldSetPathSourceWhenChangingInfoGeometry
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [(CRLCanvasRep *)self layout];
  if ([v4 isInTopLevelContainerForEditing])
  {
    if ([v3 displaysMultiselectionWithSingleBounds])
    {
      v5 = [v3 shouldSuppressSelectionKnobsForRep:self];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)infosToConnectFromSelectionPath:(id)a3 withInteractiveCanvasController:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v8 = [v5 selectionModelTranslator];
  v9 = [v8 boardItemsForSelectionPath:v6];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100304CC4;
  v18 = &unk_101855288;
  v10 = v5;
  v19 = v10;
  v11 = v7;
  v20 = v11;
  [v9 enumerateObjectsUsingBlock:&v15];
  v12 = [NSArray array:v15];
  if ([v11 count] == 2 && (objc_msgSend(v10, "hasSelectedInfosInMultipleContainers") & 1) == 0)
  {
    v13 = v11;

    v12 = v13;
  }

  return v12;
}

+ (BOOL)canConnectToRep:(id)a3
{
  v3 = [a3 repForSelecting];
  v4 = objc_opt_class();
  v5 = [v3 layout];
  v6 = sub_100014370(v4, v5);
  v7 = [v6 pathIsLineSegment];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v3 layout];
    v8 = [v9 allowsConnections];
  }

  return v8 & 1;
}

- (BOOL)canConnectToRep:(id)a3
{
  v4 = [a3 repForSelecting];
  if (v4 == self || ![CRLConnectionLineRep canConnectToRep:v4])
  {
    v19 = 0;
  }

  else
  {
    v5 = [(CRLCanvasRep *)v4 layout];
    v6 = [v5 parent];
    v7 = [(CRLCanvasRep *)self layout];
    v8 = [v7 parent];

    if (v6 == v8)
    {
      v19 = 1;
    }

    else
    {
      v9 = [(CRLCanvasRep *)self interactiveCanvasController];
      v10 = [v9 freehandDrawingToolkit];
      v11 = objc_opt_class();
      v12 = [(CRLCanvasRep *)v4 info];
      v13 = sub_100014370(v11, v12);

      if (v13 && [v10 isLassoSelectionForMixedTypeEnabledInDrawingMode])
      {
        v14 = sub_100125F34(v13);
        v15 = [v9 layoutForInfo:v14];
        v16 = [v15 parent];
        v17 = [(CRLCanvasRep *)self layout];
        v18 = [v17 parent];
        v19 = v16 == v18;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  return v19;
}

- (void)updateMagnetRenderables:(id)a3 withEmptyMagnets:(id)a4 withHighlightedMagnets:(id)a5 includeClippedPortions:(BOOL)a6
{
  v6 = a6;
  v52 = a3;
  v51 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableArray);
  mMagnetRenderables = self->mMagnetRenderables;
  self->mMagnetRenderables = v11;

  v13 = objc_opt_class();
  v14 = [(CRLCanvasRep *)self layout];
  v15 = sub_100014370(v13, v14);

  if (v6)
  {
    if ([v15 drawClippedHeadPortion] && (objc_msgSend(v15, "connectedTo"), v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      v17 = self;
      v18 = 11;
    }

    else
    {
      if (![v15 drawClippedTailPortion])
      {
        goto LABEL_11;
      }

      v19 = [v15 connectedFrom];

      if (!v19)
      {
        goto LABEL_11;
      }

      v17 = self;
      v18 = 10;
    }

    v20 = [(CRLConnectionLineRep *)v17 p_createClippedPathRenderableForEnd:v18];
    if (v20)
    {
      [(NSMutableArray *)self->mMagnetRenderables addObject:v20];
    }
  }

LABEL_11:
  v53 = v15;
  v21 = [(CRLCanvasRep *)self canvas];
  [v21 viewScale];
  v23 = v22;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v24 = v10;
  v25 = [v24 countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v65;
    height = CGSizeZero.height;
    do
    {
      v29 = 0;
      do
      {
        if (*v65 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v64 + 1) + 8 * v29);
        Mutable = CGPathCreateMutable();
        [v30 CGPointValue];
        v71.origin.x = sub_10011EC70(v32, v33, 13.125 / v23);
        CGPathAddEllipseInRect(Mutable, 0, v71);
        v34 = +[CRLCanvasShapeRenderable renderable];
        [v34 setShadowPath:Mutable];
        CGAffineTransformMakeScale(&v63, v23, v23);
        v62 = v63;
        [v34 setAffineTransform:&v62];
        v35 = [(CRLCanvasRep *)self defaultSelectionHighlightColor];
        [v34 setShadowColor:{objc_msgSend(v35, "CGColor")}];

        [v34 setShadowOffset:{CGSizeZero.width, height}];
        LODWORD(v36) = 1.0;
        [v34 setShadowOpacity:v36];
        [v34 setShadowRadius:1.0];
        CGPathRelease(Mutable);
        [(NSMutableArray *)self->mMagnetRenderables addObject:v34];

        v29 = v29 + 1;
      }

      while (v26 != v29);
      v26 = [v24 countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v26);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v37 = v51;
  v38 = [v37 countByEnumeratingWithState:&v58 objects:v69 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v59;
    do
    {
      v41 = 0;
      do
      {
        if (*v59 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = self->mMagnetRenderables;
        [*(*(&v58 + 1) + 8 * v41) CGPointValue];
        v43 = [(CRLConnectionLineRep *)self p_createRenderableForMagnet:0 connected:?];
        [(NSMutableArray *)v42 addObject:v43];

        v41 = v41 + 1;
      }

      while (v39 != v41);
      v39 = [v37 countByEnumeratingWithState:&v58 objects:v69 count:16];
    }

    while (v39);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v44 = v52;
  v45 = [v44 countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v55;
    do
    {
      v48 = 0;
      do
      {
        if (*v55 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = self->mMagnetRenderables;
        [*(*(&v54 + 1) + 8 * v48) CGPointValue];
        v50 = [(CRLConnectionLineRep *)self p_createRenderableForMagnet:1 connected:?];
        [(NSMutableArray *)v49 addObject:v50];

        v48 = v48 + 1;
      }

      while (v46 != v48);
      v46 = [v44 countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v46);
  }
}

- (id)p_createClippedPathRenderableForEnd:(unint64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(CRLCanvasRep *)self layout];
  v7 = sub_100014370(v5, v6);

  if (a3 == 11)
  {
    [v7 getClippedHeadPortion];
  }

  else
  {
    [v7 getClippedTailPortion];
  }
  v8 = ;
  if (v8)
  {
    v9 = +[CRLCanvasShapeRenderable renderable];
    [v9 setFillColor:0];
    LODWORD(v10) = 0.25;
    [v9 setOpacity:v10];
    [v9 setPath:{objc_msgSend(v8, "CGPath")}];
    v11 = [(CRLCanvasRep *)self canvas];
    [v11 viewScale];
    v13 = v12;
    v14 = [(CRLCanvasRep *)self canvas];
    [v14 viewScale];
    CGAffineTransformMakeScale(&v19, v13, v15);
    v18 = v19;
    [v9 setAffineTransform:&v18];

    v16 = [v7 stroke];
    [v16 applyToShapeRenderable:v9 withScale:1.0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)p_createRenderableForMagnet:(CGPoint)a3 connected:(BOOL)a4
{
  if (a4)
  {
    v5 = @"ios-canvas-diagram-connect";
  }

  else
  {
    v5 = @"ios-canvas-diagram-magnet";
  }

  v8 = [CRLImage imageNamed:v5, *&a3.y, v7, *&a3.x, v6];
  v9 = [(CRLCanvasRep *)self canvas];
  [v9 contentsScale];
  v10 = [v8 CGImageForContentsScale:?];

  v11 = +[CRLCanvasShapeRenderable renderable];
  [v11 setContents:v10];
  v12 = *&CGAffineTransformIdentity.c;
  *&v21.a = *&CGAffineTransformIdentity.a;
  *&v21.c = v12;
  *&v21.tx = *&CGAffineTransformIdentity.tx;
  [v11 setAffineTransform:&v21];
  [v8 size];
  [v11 setBounds:sub_10011ECB4()];
  v13 = [(CRLCanvasRep *)self canvas];
  [v13 viewScale];
  v15 = v14;
  v16 = [(CRLCanvasRep *)self canvas];
  [v16 viewScale];
  CGAffineTransformMakeScale(&v21, v15, v17);
  [v11 setPosition:{vaddq_f64(*&v21.tx, vmlaq_n_f64(vmulq_n_f64(*&v21.c, v19), *&v21.a, v20))}];

  return v11;
}

- (id)newTrackerForKnob:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101351AD8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101351AEC(v5, v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101351BA8();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v7, v5);
    }

    v8 = [NSString stringWithUTF8String:"[CRLConnectionLineRep newTrackerForKnob:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:261 isFatal:0 description:"invalid nil value for '%{public}s'", "knob"];
  }

  if ([v4 tag] == 28)
  {
    v13.receiver = self;
    v13.super_class = CRLConnectionLineRep;
    v10 = [(CRLShapeRep *)&v13 newTrackerForKnob:v4];
  }

  else
  {
    v10 = [[CRLConnectionLineKnobTracker alloc] initWithRep:self knob:v4];
  }

  v11 = v10;

  return v11;
}

- (BOOL)shouldShowSmartShapeKnobs
{
  v3 = [(CRLConnectionLineRep *)self connectionLineLayout];
  v4 = [v3 connectedPathSource];
  v5 = [v4 type];

  v6 = [(CRLConnectionLineRep *)self shouldCreateKnobs];
  if (v5 == 1 || !v6)
  {
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    v8 = v7;
    v10 = v9;
    v11 = [(CRLCanvasRep *)self canvas];
    [v11 viewScale];
    v13 = sub_10011F340(v8, v10, v12);
    v15 = v14;

    v16 = v15 * v15 + v13 * v13;
    if (sqrtf(v16) < 60.0)
    {
      goto LABEL_9;
    }
  }

  if (![(CRLCanvasRep *)self isPlaceholder])
  {
    v20.receiver = self;
    v20.super_class = CRLConnectionLineRep;
    if (([(CRLShapeRep *)&v20 enabledKnobMask]& 0x800) != 0 && ![(CRLCanvasRep *)self isLocked])
    {
      v19 = [(CRLCanvasRep *)self interactiveCanvasController];
      v17 = [v19 documentIsSharedReadOnly] ^ 1;

      goto LABEL_10;
    }
  }

LABEL_9:
  LOBYTE(v17) = 0;
LABEL_10:

  return v17;
}

- (BOOL)shouldCreateKnobs
{
  v2 = [(CRLConnectionLineRep *)self connectionLineLayout];
  if ([v2 isInvisible])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 validLine];
  }

  return v3;
}

- (unint64_t)enabledKnobMask
{
  v6.receiver = self;
  v6.super_class = CRLConnectionLineRep;
  v3 = [(CRLShapeRep *)&v6 enabledKnobMask];
  v5.receiver = self;
  v5.super_class = CRLConnectionLineRep;
  if ([(CRLCanvasRep *)&v5 shouldCreateKnobs])
  {
    return v3;
  }

  else
  {
    return v3 & 0xFFFFFFFFFFFFF3FFLL;
  }
}

- (BOOL)shouldCreateSelectionKnobs
{
  v19.receiver = self;
  v19.super_class = CRLConnectionLineRep;
  if (![(CRLCanvasRep *)&v19 shouldCreateSelectionKnobs])
  {
    v4 = [(CRLConnectionLineRep *)self connectionLineLayout];
    v5 = [v4 connectedPathSource];
    v6 = [v5 type];

    if (v6 != 1)
    {
      LOBYTE(v3) = 0;
      return v3;
    }

    v7 = [(CRLConnectionLineRep *)self connectionLineLayout];
    v8 = [v7 connectedFrom];

    if (v8)
    {
      v9 = [(CRLCanvasRep *)self canvas];
      v10 = [v7 connectedFrom];
      v11 = [v9 repForLayout:v10];

      if ([v11 shouldCreateKnobs])
      {
        v12 = [v7 connectedFrom];
        v13 = [v12 layoutState];

        if (v13 == 2)
        {
          LOBYTE(v3) = 1;
LABEL_15:

          return v3;
        }
      }

      else
      {
      }
    }

    v3 = [v7 connectedTo];

    if (v3)
    {
      v14 = [(CRLCanvasRep *)self canvas];
      v15 = [v7 connectedTo];
      v16 = [v14 repForLayout:v15];

      if ([v16 shouldCreateKnobs])
      {
        v17 = [v7 connectedTo];
        LOBYTE(v3) = [v17 layoutState] == 2;
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }

    goto LABEL_15;
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (id)overlayRenderables
{
  v29.receiver = self;
  v29.super_class = CRLConnectionLineRep;
  v3 = [(CRLShapeRep *)&v29 overlayRenderables];
  v4 = objc_opt_class();
  v5 = [(CRLCanvasRep *)self currentKnobTracker];
  v6 = sub_100014370(v4, v5);

  v7 = [v6 connectedRepForHighlighting];
  if (v7)
  {
    if (v3)
    {
      v8 = v3;
    }

    else
    {
      v8 = &__NSArray0__struct;
    }

    v9 = +[CRLCanvasShapeRenderable renderable];
    v10 = [v7 layout];
    v11 = [(CRLCanvasRep *)self canvas];
    [v11 viewScale];
    v13 = v12;

    memset(&transform, 0, sizeof(transform));
    if (v10)
    {
      [v10 transformInRoot];
    }

    CGAffineTransformMakeScale(&t2, v13, v13);
    t1 = transform;
    CGAffineTransformConcat(&v27, &t1, &t2);
    transform = v27;
    v14 = [v10 pathForClippingConnectionLines];
    v15 = v14;
    if (!v14 || [v14 elementCount] < 2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v10 boundsForStandardKnobs];
      v16 = [CRLBezierPath bezierPathWithRect:?];

      v15 = v16;
    }

    tx = transform.tx;
    ty = transform.ty;
    transform.tx = 0.0;
    transform.ty = 0.0;
    v19 = CGPathCreateCopyByStrokingPath([v15 CGPath], &transform, 3.0 / v13, kCGLineCapButt, kCGLineJoinBevel, 1.0);
    [v9 setShadowPath:v19];
    CGAffineTransformMakeTranslation(&v24, tx, ty);
    v27 = v24;
    [v9 setAffineTransform:&v27];
    CFRelease(v19);
    v20 = [(CRLCanvasRep *)self defaultSelectionHighlightColor];
    [v9 setShadowColor:{objc_msgSend(v20, "CGColor")}];

    [v9 setShadowOffset:{CGSizeZero.width, CGSizeZero.height}];
    LODWORD(v21) = 1.0;
    [v9 setShadowOpacity:v21];
    [v9 setShadowRadius:1.0];
    v3 = [v8 arrayByAddingObject:v9];
  }

  v22 = [v3 arrayByAddingObjectsFromArray:self->mMagnetRenderables];

  return v22;
}

- (id)additionalRepsForDragging
{
  if ([(CRLConnectionLineRep *)self p_isConnected])
  {
    v3 = [(CRLConnectionLineRep *)self connectionLineLayout];
    v4 = objc_alloc_init(NSMutableSet);
    v5 = [v3 connectedFrom];

    if (v5)
    {
      v6 = [(CRLCanvasRep *)self canvas];
      v7 = [v3 connectedFrom];
      v8 = [v6 repForLayout:v7];

      v9 = [v8 additionalRepsForDraggingConnectionLine:self];
      [v4 unionSet:v9];
    }

    v10 = [v3 connectedTo];

    if (v10)
    {
      v11 = [(CRLCanvasRep *)self canvas];
      v12 = [v3 connectedTo];
      v13 = [v11 repForLayout:v12];

      v14 = [v13 additionalRepsForDraggingConnectionLine:self];
      [v4 unionSet:v14];
    }
  }

  else
  {
    v4 = +[NSSet set];
  }

  return v4;
}

- (CGRect)targetRectForEditMenu
{
  v3 = [(CRLCanvasRep *)self knobForTag:12];
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if ([(CRLConnectionLineRep *)self p_controlKnobVisible]&& ![(CRLConnectionLineRep *)self i_editMenuOverlapsEndKnobs])
  {
    [v3 position];
    x = sub_10011EC70(v8, v9, 2.0);
    y = v10;
    width = v11;
    height = v12;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3
{
  v4 = a3;
  if ([v4 tag] == 12)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLConnectionLineRep;
    v5 = [(CRLShapeRep *)&v7 canUseSpecializedHitRegionForKnob:v4];
  }

  return v5;
}

- (CGPoint)i_dragOffset
{
  v3 = [(CRLConnectionLineRep *)self connectionLineLayout];
  v4 = [v3 connectedTo];
  v5 = [v3 connectedFrom];
  v6 = (v4 == 0) ^ (v5 != 0);

  if (v6)
  {
    v13.receiver = self;
    v13.super_class = CRLConnectionLineRep;
    [(CRLCanvasRep *)&v13 i_dragOffset];
  }

  else
  {
    if ([v3 isBeingTransformed])
    {
      [v3 pauseDynamicTransformation];
    }

    [v3 i_accumulatedDrag];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (BOOL)i_editMenuOverlapsEndKnobs
{
  v3 = [(CRLCanvasRep *)self knobForTag:12];
  v4 = [(CRLCanvasRep *)self knobForTag:11];
  v5 = [(CRLCanvasRep *)self knobForTag:10];
  v6 = [(CRLCanvasRep *)self canvas];
  [v3 position];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
  [v6 convertUnscaledToBoundsPoint:?];
  v8 = v7;
  v10 = v9;

  v11 = [(CRLCanvasRep *)self canvas];
  [v4 position];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
  [v11 convertUnscaledToBoundsPoint:?];
  v13 = v12;
  v15 = v14;

  v16 = [(CRLCanvasRep *)self canvas];
  [v5 position];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
  [v16 convertUnscaledToBoundsPoint:?];
  v18 = v17;
  v20 = v19;

  v21 = [(CRLCanvasRep *)self canvas];
  [v21 i_approximateScaledFrameOfEditingMenuAtPoint:{v8, v10}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v34.origin.x = v23;
  v34.origin.y = v25;
  v34.size.width = v27;
  v34.size.height = v29;
  v32.x = v13;
  v32.y = v15;
  if (CGRectContainsPoint(v34, v32))
  {
    v30 = 1;
  }

  else
  {
    v35.origin.x = v23;
    v35.origin.y = v25;
    v35.size.width = v27;
    v35.size.height = v29;
    v33.x = v18;
    v33.y = v20;
    v30 = CGRectContainsPoint(v35, v33);
  }

  return v30;
}

- (BOOL)p_isConnected
{
  v2 = [(CRLConnectionLineRep *)self connectionLineLayout];
  v3 = [v2 connectedFrom];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 connectedTo];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)p_controlKnobVisible
{
  v3 = [(CRLConnectionLineRep *)self shouldShowSmartShapeKnobs];
  if (v3)
  {
    v4 = [(CRLCanvasRep *)self knobForTag:12];
    v5 = [(CRLCanvasRep *)self canvas];
    [v4 position];
    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
    [v5 convertUnscaledToBoundsPoint:?];
    v7 = v6;
    v9 = v8;

    v10 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v10 visibleBoundsRect];
    v12.x = v7;
    v12.y = v9;
    LOBYTE(v5) = CGRectContainsPoint(v13, v12);

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)crlaxIsStraightLine
{
  v2 = [(CRLConnectionLineRep *)self connectionLineLayout];
  v3 = [v2 isStraightLine];

  return v3;
}

@end