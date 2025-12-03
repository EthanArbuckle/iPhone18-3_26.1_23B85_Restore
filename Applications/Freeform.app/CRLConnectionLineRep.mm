@interface CRLConnectionLineRep
+ (BOOL)canConnectToRep:(id)rep;
+ (id)infosToConnectFromSelectionPath:(id)path withInteractiveCanvasController:(id)controller;
- (BOOL)canConnectToRep:(id)rep;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob;
- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision;
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
- (double)shortestDistanceToPoint:(CGPoint)point countAsHit:(BOOL *)hit;
- (id)additionalRepsForDragging;
- (id)connectionLineLayout;
- (id)newTrackerForKnob:(id)knob;
- (id)overlayRenderables;
- (id)p_createClippedPathRenderableForEnd:(unint64_t)end;
- (id)p_createRenderableForMagnet:(CGPoint)magnet connected:(BOOL)connected;
- (unint64_t)enabledKnobMask;
- (void)updateFromLayout;
- (void)updateMagnetRenderables:(id)renderables withEmptyMagnets:(id)magnets withHighlightedMagnets:(id)highlightedMagnets includeClippedPortions:(BOOL)portions;
@end

@implementation CRLConnectionLineRep

- (id)connectionLineLayout
{
  v3 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, layout);

  return v5;
}

- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision
{
  precisionCopy = precision;
  y = point.y;
  x = point.x;
  connectionLineLayout = [(CRLConnectionLineRep *)self connectionLineLayout];
  if (([connectionLineLayout isInvisible] & 1) != 0 || !objc_msgSend(connectionLineLayout, "validLine"))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CRLConnectionLineRep;
    v9 = [(CRLShapeRep *)&v11 containsPoint:precisionCopy withPrecision:x, y];
  }

  return v9;
}

- (double)shortestDistanceToPoint:(CGPoint)point countAsHit:(BOOL *)hit
{
  y = point.y;
  x = point.x;
  connectionLineLayout = [(CRLConnectionLineRep *)self connectionLineLayout];
  v9 = 3.40282347e38;
  if (([connectionLineLayout isInvisible] & 1) == 0 && objc_msgSend(connectionLineLayout, "validLine"))
  {
    v12.receiver = self;
    v12.super_class = CRLConnectionLineRep;
    [(CRLShapeRep *)&v12 shortestDistanceToPoint:hit countAsHit:x, y];
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
    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    pathSource = [shapeLayout pathSource];

    if (([pathSource isEqual:self->mLastPathSource] & 1) == 0)
    {
      [(CRLShapeRep *)self layoutInRootChangedFrom:0 to:0 translatedOnly:0];
      v5 = [pathSource copy];
      mLastPathSource = self->mLastPathSource;
      self->mLastPathSource = v5;
    }
  }
}

- (BOOL)shouldSetPathSourceWhenChangingInfoGeometry
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layout = [(CRLCanvasRep *)self layout];
  if ([layout isInTopLevelContainerForEditing])
  {
    if ([interactiveCanvasController displaysMultiselectionWithSingleBounds])
    {
      v5 = [interactiveCanvasController shouldSuppressSelectionKnobsForRep:self];
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

+ (id)infosToConnectFromSelectionPath:(id)path withInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  pathCopy = path;
  v7 = +[NSMutableArray array];
  selectionModelTranslator = [controllerCopy selectionModelTranslator];
  v9 = [selectionModelTranslator boardItemsForSelectionPath:pathCopy];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100304CC4;
  v18 = &unk_101855288;
  v10 = controllerCopy;
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

+ (BOOL)canConnectToRep:(id)rep
{
  repForSelecting = [rep repForSelecting];
  v4 = objc_opt_class();
  layout = [repForSelecting layout];
  v6 = sub_100014370(v4, layout);
  pathIsLineSegment = [v6 pathIsLineSegment];

  if (pathIsLineSegment)
  {
    allowsConnections = 0;
  }

  else
  {
    layout2 = [repForSelecting layout];
    allowsConnections = [layout2 allowsConnections];
  }

  return allowsConnections & 1;
}

- (BOOL)canConnectToRep:(id)rep
{
  repForSelecting = [rep repForSelecting];
  if (repForSelecting == self || ![CRLConnectionLineRep canConnectToRep:repForSelecting])
  {
    v19 = 0;
  }

  else
  {
    layout = [(CRLCanvasRep *)repForSelecting layout];
    parent = [layout parent];
    layout2 = [(CRLCanvasRep *)self layout];
    parent2 = [layout2 parent];

    if (parent == parent2)
    {
      v19 = 1;
    }

    else
    {
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
      v11 = objc_opt_class();
      info = [(CRLCanvasRep *)repForSelecting info];
      v13 = sub_100014370(v11, info);

      if (v13 && [freehandDrawingToolkit isLassoSelectionForMixedTypeEnabledInDrawingMode])
      {
        v14 = sub_100125F34(v13);
        v15 = [interactiveCanvasController layoutForInfo:v14];
        parent3 = [v15 parent];
        layout3 = [(CRLCanvasRep *)self layout];
        parent4 = [layout3 parent];
        v19 = parent3 == parent4;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  return v19;
}

- (void)updateMagnetRenderables:(id)renderables withEmptyMagnets:(id)magnets withHighlightedMagnets:(id)highlightedMagnets includeClippedPortions:(BOOL)portions
{
  portionsCopy = portions;
  renderablesCopy = renderables;
  magnetsCopy = magnets;
  highlightedMagnetsCopy = highlightedMagnets;
  v11 = objc_alloc_init(NSMutableArray);
  mMagnetRenderables = self->mMagnetRenderables;
  self->mMagnetRenderables = v11;

  v13 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  v15 = sub_100014370(v13, layout);

  if (portionsCopy)
  {
    if ([v15 drawClippedHeadPortion] && (objc_msgSend(v15, "connectedTo"), v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      selfCopy2 = self;
      v18 = 11;
    }

    else
    {
      if (![v15 drawClippedTailPortion])
      {
        goto LABEL_11;
      }

      connectedFrom = [v15 connectedFrom];

      if (!connectedFrom)
      {
        goto LABEL_11;
      }

      selfCopy2 = self;
      v18 = 10;
    }

    v20 = [(CRLConnectionLineRep *)selfCopy2 p_createClippedPathRenderableForEnd:v18];
    if (v20)
    {
      [(NSMutableArray *)self->mMagnetRenderables addObject:v20];
    }
  }

LABEL_11:
  v53 = v15;
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v23 = v22;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v24 = highlightedMagnetsCopy;
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
        defaultSelectionHighlightColor = [(CRLCanvasRep *)self defaultSelectionHighlightColor];
        [v34 setShadowColor:{objc_msgSend(defaultSelectionHighlightColor, "CGColor")}];

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
  v37 = magnetsCopy;
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
  v44 = renderablesCopy;
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

- (id)p_createClippedPathRenderableForEnd:(unint64_t)end
{
  v5 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  v7 = sub_100014370(v5, layout);

  if (end == 11)
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
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v13 = v12;
    canvas2 = [(CRLCanvasRep *)self canvas];
    [canvas2 viewScale];
    CGAffineTransformMakeScale(&v19, v13, v15);
    v18 = v19;
    [v9 setAffineTransform:&v18];

    stroke = [v7 stroke];
    [stroke applyToShapeRenderable:v9 withScale:1.0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)p_createRenderableForMagnet:(CGPoint)magnet connected:(BOOL)connected
{
  if (connected)
  {
    v5 = @"ios-canvas-diagram-connect";
  }

  else
  {
    v5 = @"ios-canvas-diagram-magnet";
  }

  v8 = [CRLImage imageNamed:v5, *&magnet.y, v7, *&magnet.x, v6];
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas contentsScale];
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
  canvas2 = [(CRLCanvasRep *)self canvas];
  [canvas2 viewScale];
  v15 = v14;
  canvas3 = [(CRLCanvasRep *)self canvas];
  [canvas3 viewScale];
  CGAffineTransformMakeScale(&v21, v15, v17);
  [v11 setPosition:{vaddq_f64(*&v21.tx, vmlaq_n_f64(vmulq_n_f64(*&v21.c, v19), *&v21.a, v20))}];

  return v11;
}

- (id)newTrackerForKnob:(id)knob
{
  knobCopy = knob;
  if (!knobCopy)
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

  if ([knobCopy tag] == 28)
  {
    v13.receiver = self;
    v13.super_class = CRLConnectionLineRep;
    v10 = [(CRLShapeRep *)&v13 newTrackerForKnob:knobCopy];
  }

  else
  {
    v10 = [[CRLConnectionLineKnobTracker alloc] initWithRep:self knob:knobCopy];
  }

  v11 = v10;

  return v11;
}

- (BOOL)shouldShowSmartShapeKnobs
{
  connectionLineLayout = [(CRLConnectionLineRep *)self connectionLineLayout];
  connectedPathSource = [connectionLineLayout connectedPathSource];
  type = [connectedPathSource type];

  shouldCreateKnobs = [(CRLConnectionLineRep *)self shouldCreateKnobs];
  if (type == 1 || !shouldCreateKnobs)
  {
    if (!shouldCreateKnobs)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    v8 = v7;
    v10 = v9;
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
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
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      v17 = [interactiveCanvasController documentIsSharedReadOnly] ^ 1;

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
  connectionLineLayout = [(CRLConnectionLineRep *)self connectionLineLayout];
  if ([connectionLineLayout isInvisible])
  {
    validLine = 0;
  }

  else
  {
    validLine = [connectionLineLayout validLine];
  }

  return validLine;
}

- (unint64_t)enabledKnobMask
{
  v6.receiver = self;
  v6.super_class = CRLConnectionLineRep;
  enabledKnobMask = [(CRLShapeRep *)&v6 enabledKnobMask];
  v5.receiver = self;
  v5.super_class = CRLConnectionLineRep;
  if ([(CRLCanvasRep *)&v5 shouldCreateKnobs])
  {
    return enabledKnobMask;
  }

  else
  {
    return enabledKnobMask & 0xFFFFFFFFFFFFF3FFLL;
  }
}

- (BOOL)shouldCreateSelectionKnobs
{
  v19.receiver = self;
  v19.super_class = CRLConnectionLineRep;
  if (![(CRLCanvasRep *)&v19 shouldCreateSelectionKnobs])
  {
    connectionLineLayout = [(CRLConnectionLineRep *)self connectionLineLayout];
    connectedPathSource = [connectionLineLayout connectedPathSource];
    type = [connectedPathSource type];

    if (type != 1)
    {
      LOBYTE(connectedTo) = 0;
      return connectedTo;
    }

    connectionLineLayout2 = [(CRLConnectionLineRep *)self connectionLineLayout];
    connectedFrom = [connectionLineLayout2 connectedFrom];

    if (connectedFrom)
    {
      canvas = [(CRLCanvasRep *)self canvas];
      connectedFrom2 = [connectionLineLayout2 connectedFrom];
      v11 = [canvas repForLayout:connectedFrom2];

      if ([v11 shouldCreateKnobs])
      {
        connectedFrom3 = [connectionLineLayout2 connectedFrom];
        layoutState = [connectedFrom3 layoutState];

        if (layoutState == 2)
        {
          LOBYTE(connectedTo) = 1;
LABEL_15:

          return connectedTo;
        }
      }

      else
      {
      }
    }

    connectedTo = [connectionLineLayout2 connectedTo];

    if (connectedTo)
    {
      canvas2 = [(CRLCanvasRep *)self canvas];
      connectedTo2 = [connectionLineLayout2 connectedTo];
      v16 = [canvas2 repForLayout:connectedTo2];

      if ([v16 shouldCreateKnobs])
      {
        connectedTo3 = [connectionLineLayout2 connectedTo];
        LOBYTE(connectedTo) = [connectedTo3 layoutState] == 2;
      }

      else
      {
        LOBYTE(connectedTo) = 0;
      }
    }

    goto LABEL_15;
  }

  LOBYTE(connectedTo) = 1;
  return connectedTo;
}

- (id)overlayRenderables
{
  v29.receiver = self;
  v29.super_class = CRLConnectionLineRep;
  overlayRenderables = [(CRLShapeRep *)&v29 overlayRenderables];
  v4 = objc_opt_class();
  currentKnobTracker = [(CRLCanvasRep *)self currentKnobTracker];
  v6 = sub_100014370(v4, currentKnobTracker);

  connectedRepForHighlighting = [v6 connectedRepForHighlighting];
  if (connectedRepForHighlighting)
  {
    if (overlayRenderables)
    {
      v8 = overlayRenderables;
    }

    else
    {
      v8 = &__NSArray0__struct;
    }

    v9 = +[CRLCanvasShapeRenderable renderable];
    layout = [connectedRepForHighlighting layout];
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v13 = v12;

    memset(&transform, 0, sizeof(transform));
    if (layout)
    {
      [layout transformInRoot];
    }

    CGAffineTransformMakeScale(&t2, v13, v13);
    t1 = transform;
    CGAffineTransformConcat(&v27, &t1, &t2);
    transform = v27;
    pathForClippingConnectionLines = [layout pathForClippingConnectionLines];
    v15 = pathForClippingConnectionLines;
    if (!pathForClippingConnectionLines || [pathForClippingConnectionLines elementCount] < 2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [layout boundsForStandardKnobs];
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
    defaultSelectionHighlightColor = [(CRLCanvasRep *)self defaultSelectionHighlightColor];
    [v9 setShadowColor:{objc_msgSend(defaultSelectionHighlightColor, "CGColor")}];

    [v9 setShadowOffset:{CGSizeZero.width, CGSizeZero.height}];
    LODWORD(v21) = 1.0;
    [v9 setShadowOpacity:v21];
    [v9 setShadowRadius:1.0];
    overlayRenderables = [v8 arrayByAddingObject:v9];
  }

  v22 = [overlayRenderables arrayByAddingObjectsFromArray:self->mMagnetRenderables];

  return v22;
}

- (id)additionalRepsForDragging
{
  if ([(CRLConnectionLineRep *)self p_isConnected])
  {
    connectionLineLayout = [(CRLConnectionLineRep *)self connectionLineLayout];
    v4 = objc_alloc_init(NSMutableSet);
    connectedFrom = [connectionLineLayout connectedFrom];

    if (connectedFrom)
    {
      canvas = [(CRLCanvasRep *)self canvas];
      connectedFrom2 = [connectionLineLayout connectedFrom];
      v8 = [canvas repForLayout:connectedFrom2];

      v9 = [v8 additionalRepsForDraggingConnectionLine:self];
      [v4 unionSet:v9];
    }

    connectedTo = [connectionLineLayout connectedTo];

    if (connectedTo)
    {
      canvas2 = [(CRLCanvasRep *)self canvas];
      connectedTo2 = [connectionLineLayout connectedTo];
      v13 = [canvas2 repForLayout:connectedTo2];

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

- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob
{
  knobCopy = knob;
  if ([knobCopy tag] == 12)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLConnectionLineRep;
    v5 = [(CRLShapeRep *)&v7 canUseSpecializedHitRegionForKnob:knobCopy];
  }

  return v5;
}

- (CGPoint)i_dragOffset
{
  connectionLineLayout = [(CRLConnectionLineRep *)self connectionLineLayout];
  connectedTo = [connectionLineLayout connectedTo];
  connectedFrom = [connectionLineLayout connectedFrom];
  v6 = (connectedTo == 0) ^ (connectedFrom != 0);

  if (v6)
  {
    v13.receiver = self;
    v13.super_class = CRLConnectionLineRep;
    [(CRLCanvasRep *)&v13 i_dragOffset];
  }

  else
  {
    if ([connectionLineLayout isBeingTransformed])
    {
      [connectionLineLayout pauseDynamicTransformation];
    }

    [connectionLineLayout i_accumulatedDrag];
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
  canvas = [(CRLCanvasRep *)self canvas];
  [v3 position];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
  [canvas convertUnscaledToBoundsPoint:?];
  v8 = v7;
  v10 = v9;

  canvas2 = [(CRLCanvasRep *)self canvas];
  [v4 position];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
  [canvas2 convertUnscaledToBoundsPoint:?];
  v13 = v12;
  v15 = v14;

  canvas3 = [(CRLCanvasRep *)self canvas];
  [v5 position];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
  [canvas3 convertUnscaledToBoundsPoint:?];
  v18 = v17;
  v20 = v19;

  canvas4 = [(CRLCanvasRep *)self canvas];
  [canvas4 i_approximateScaledFrameOfEditingMenuAtPoint:{v8, v10}];
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
  connectionLineLayout = [(CRLConnectionLineRep *)self connectionLineLayout];
  connectedFrom = [connectionLineLayout connectedFrom];
  if (connectedFrom)
  {
    v4 = 1;
  }

  else
  {
    connectedTo = [connectionLineLayout connectedTo];
    v4 = connectedTo != 0;
  }

  return v4;
}

- (BOOL)p_controlKnobVisible
{
  shouldShowSmartShapeKnobs = [(CRLConnectionLineRep *)self shouldShowSmartShapeKnobs];
  if (shouldShowSmartShapeKnobs)
  {
    v4 = [(CRLCanvasRep *)self knobForTag:12];
    canvas = [(CRLCanvasRep *)self canvas];
    [v4 position];
    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
    [canvas convertUnscaledToBoundsPoint:?];
    v7 = v6;
    v9 = v8;

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController visibleBoundsRect];
    v12.x = v7;
    v12.y = v9;
    LOBYTE(canvas) = CGRectContainsPoint(v13, v12);

    LOBYTE(shouldShowSmartShapeKnobs) = canvas;
  }

  return shouldShowSmartShapeKnobs;
}

- (BOOL)crlaxIsStraightLine
{
  connectionLineLayout = [(CRLConnectionLineRep *)self connectionLineLayout];
  isStraightLine = [connectionLineLayout isStraightLine];

  return isStraightLine;
}

@end