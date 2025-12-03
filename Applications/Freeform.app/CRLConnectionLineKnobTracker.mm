@interface CRLConnectionLineKnobTracker
- (BOOL)didChangeGeometry;
- (BOOL)p_connectedToCenter;
- (BOOL)p_isValidConnectionDestination:(id)destination;
- (BOOL)p_shouldIncludeCardinalMagnet:(unint64_t)magnet forLayout:(id)layout;
- (BOOL)shouldHideOtherKnobs;
- (CGPoint)p_getMagnetPositionAdjustedToParentForLayout:(id)layout withOriginalMagnetPosition:(CGPoint)position;
- (CGPoint)p_getSnappedMagnetNormalizedPosition;
- (CRLConnectionLineKnobTracker)initWithRep:(id)rep knob:(id)knob;
- (double)p_getMagnetSnappingDistance;
- (id)connectionLineLayout;
- (id)p_findLayoutWithNearestMagnetInRect:(CGRect)rect nearestMagnet:(unint64_t *)magnet;
- (unint64_t)p_getSnappedMagnetType;
- (void)beginMovingKnob;
- (void)endMovingKnob;
- (void)moveKnobToCanvasPosition:(CGPoint)position;
- (void)moveKnobToRepPosition:(CGPoint)position;
- (void)p_createFloatingOrEdgeMagnetAtKnob;
- (void)p_keepSnappedMagnetOnCenter;
- (void)p_retrieveMagnetPositionsForLayout:(id)layout;
- (void)p_retrieveMagnetsForLayoutsNearKnob;
- (void)p_setUserAdjustedShapeControlKnob:(BOOL)knob;
- (void)p_snapToCenterIfLayoutHasConnectionWithoutMagnet;
- (void)p_snapToNearestMagnetFromKnob;
- (void)p_updateConnection;
- (void)p_updateLayout;
- (void)p_updateMagnetPositionsForConnectionLineLayout:(id)layout withinLayout:(id)withinLayout;
- (void)p_updateMagnetRenderables;
- (void)p_updateRoutingProperties;
- (void)p_validateLayout;
- (void)willBeginDynamicOperationForReps:(id)reps;
@end

@implementation CRLConnectionLineKnobTracker

- (CRLConnectionLineKnobTracker)initWithRep:(id)rep knob:(id)knob
{
  repCopy = rep;
  knobCopy = knob;
  v31.receiver = self;
  v31.super_class = CRLConnectionLineKnobTracker;
  v8 = [(CRLCanvasKnobTracker *)&v31 initWithRep:repCopy knob:knobCopy];
  v9 = v8;
  if (v8)
  {
    v8->mSnapEnabled = 1;
    mSnappedMagnet = v8->mSnappedMagnet;
    v8->mSnappedMagnet = 0;

    v9->mKnobTag = 0;
    v9->mKnobMoved = 1;
    v9->mShouldSnapToMagnets = 1;
    v11 = objc_opt_class();
    layout = [repCopy layout];
    v13 = sub_100013F00(v11, layout);

    p_x = &v9->mOriginalKnobCenterNaturalSpace.x;
    if ([knobCopy tag] == 11)
    {
      [v13 unclippedHeadPoint];
      *p_x = v15;
      v9->mOriginalKnobCenterNaturalSpace.y = v16;
      v9->mNewKnobCenterNaturalSpace = *p_x;
      [v13 unclippedTailPoint];
    }

    else
    {
      [v13 unclippedTailPoint];
      *p_x = v19;
      v9->mOriginalKnobCenterNaturalSpace.y = v20;
      v9->mNewKnobCenterNaturalSpace = *p_x;
      [v13 unclippedHeadPoint];
    }

    v9->mOriginalFixedPointNaturalSpace.x = v17;
    v9->mOriginalFixedPointNaturalSpace.y = v18;
    [v13 unclippedTailPoint];
    v22 = v21;
    v24 = v23;
    [v13 unclippedHeadPoint];
    v9->mOriginalMiddlePointNaturalSpace.x = sub_100120ABC(v22, v24, v25, v26, 0.5);
    v9->mOriginalMiddlePointNaturalSpace.y = v27;
    [v13 pathBounds];
    v9->mOriginalPathToBoundsOrigin.x = v28;
    v9->mOriginalPathToBoundsOrigin.y = v29;
  }

  return v9;
}

- (void)willBeginDynamicOperationForReps:(id)reps
{
  v6 = [(CRLCanvasKnobTracker *)self icc];
  if ([v6 shouldSupportedDynamicOperationsEnqueueCommandsInRealTime])
  {
    v4 = [(CRLCanvasKnobTracker *)self rep];
    allowsSupportedDynamicOperationsToBeRealTime = [v4 allowsSupportedDynamicOperationsToBeRealTime];

    if (allowsSupportedDynamicOperationsToBeRealTime)
    {
      self->mIsEnqueueingCommandsInRealTime = 1;
    }
  }

  else
  {
  }
}

- (void)beginMovingKnob
{
  v35.receiver = self;
  v35.super_class = CRLConnectionLineKnobTracker;
  [(CRLCanvasKnobTracker *)&v35 beginMovingKnob];
  v3 = objc_opt_class();
  v4 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v4 layout];
  v6 = sub_100013F00(v3, layout);

  connectedFrom = [v6 connectedFrom];
  mOriginalConnectedFrom = self->mOriginalConnectedFrom;
  self->mOriginalConnectedFrom = connectedFrom;

  connectedTo = [v6 connectedTo];
  mOriginalConnectedTo = self->mOriginalConnectedTo;
  self->mOriginalConnectedTo = connectedTo;

  v11 = [(CRLCanvasKnobTracker *)self rep];
  v12 = objc_opt_class();
  dynamicMoveSmartShapeKnobDidBegin = [v11 dynamicMoveSmartShapeKnobDidBegin];
  v14 = sub_100013F00(v12, dynamicMoveSmartShapeKnobDidBegin);
  mResizingLayout = self->mResizingLayout;
  self->mResizingLayout = v14;

  v16 = [(CRLCanvasKnobTracker *)self rep];
  self->mKnobsVisible = [v16 shouldCreateKnobs];

  knob = [(CRLCanvasKnobTracker *)self knob];
  if ([knob tag] == 11 && self->mOriginalConnectedTo)
  {
    self->mInitialSnap = 1;
  }

  else
  {
    knob2 = [(CRLCanvasKnobTracker *)self knob];
    v19 = [knob2 tag] == 10 && self->mOriginalConnectedFrom != 0;
    self->mInitialSnap = v19;
  }

  [(CRLCanvasKnobTracker *)self currentPosition];
  self->mInitialPosition.x = v20;
  self->mInitialPosition.y = v21;
  if (v6)
  {
    [v6 transformInRoot];
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
  }

  *&self->mOriginalTransformInRoot.a = v32;
  *&self->mOriginalTransformInRoot.c = v33;
  *&self->mOriginalTransformInRoot.tx = v34;
  self->mKnobTag = 0;
  self->mKnobMoved = 0;
  self->mKnobPosition = xmmword_1014629F0;
  self->mKnobPositionAtStart = xmmword_1014629F0;
  [v6 setDrawClippedHeadPortion:{0, v32, v33, v34}];
  [v6 setDrawClippedTailPortion:0];
  [v6 setControlKnobPositionChangedFromRouting:0];
  if (self->mIsEnqueueingCommandsInRealTime)
  {
    v22 = [(CRLCanvasKnobTracker *)self rep];
    interactiveCanvasController = [v22 interactiveCanvasController];
    commandController = [interactiveCanvasController commandController];

    v25 = [(CRLCanvasKnobTracker *)self rep];
    interactiveCanvasController2 = [v25 interactiveCanvasController];
    editorController = [interactiveCanvasController2 editorController];
    selectionPath = [editorController selectionPath];

    v29 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:selectionPath reverseSelectionPath:selectionPath];
    [commandController openGroupWithSelectionBehavior:v29];
    v30 = +[NSBundle mainBundle];
    v31 = [v30 localizedStringForKey:@"Move" value:0 table:@"UndoStrings"];
    [commandController setCurrentGroupActionString:v31];

    [commandController enableRealTimeSyncProgressiveEnqueuingInCurrentGroup];
  }
}

- (void)moveKnobToCanvasPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  knob = [(CRLCanvasKnobTracker *)self knob];
  self->mKnobTag = [knob tag];

  mKnobTag = self->mKnobTag;
  if (mKnobTag - 10 >= 2)
  {
    if (mKnobTag == 12)
    {
      v13 = [(CRLCanvasKnobTracker *)self rep];
      knob2 = [(CRLCanvasKnobTracker *)self knob];
      [knob2 position];
      [v13 convertNaturalPointToUnscaledCanvas:?];
      v16 = v15;
      v18 = v17;

      if (!sub_10011ED38(v16, v18, x, y))
      {
        [(CRLConnectionLineKnobTracker *)self p_setUserAdjustedShapeControlKnob:1];
      }
    }
  }

  else
  {
    p_mKnobPosition = &self->mKnobPosition;
    self->mKnobPosition.x = x;
    self->mKnobPosition.y = y;
    p_mKnobPositionAtStart = &self->mKnobPositionAtStart;
    v8 = self->mKnobPositionAtStart.x;
    v9 = self->mKnobPositionAtStart.y;
    v10 = sub_1001208AC(v8, v9);
    v12 = y;
    v11 = x;
    if (v10)
    {
      *p_mKnobPositionAtStart = *p_mKnobPosition;
      v8 = p_mKnobPositionAtStart->x;
      v9 = self->mKnobPositionAtStart.y;
      v11 = p_mKnobPosition->x;
      v12 = self->mKnobPosition.y;
    }

    if (sub_100120090(v8, v9, v11, v12) > 10.0)
    {
      self->mKnobMoved = 1;
      [(CRLConnectionLineKnobTracker *)self p_setUserAdjustedShapeControlKnob:0];
    }

    [(CRLConnectionLineKnobTracker *)self p_retrieveMagnetsForLayoutsNearKnob];
    [(CRLConnectionLineKnobTracker *)self p_snapToNearestMagnetFromKnob];
    if (!self->mSnappedMagnet)
    {
      [(CRLConnectionLineKnobTracker *)self p_createFloatingOrEdgeMagnetAtKnob];
    }

    [(CRLConnectionLineKnobTracker *)self p_updateConnection];
    [(CRLConnectionLineKnobTracker *)self p_updateLayout];
    [(CRLConnectionLineKnobTracker *)self p_updateMagnetRenderables];
    x = p_mKnobPosition->x;
    y = self->mKnobPosition.y;
  }

  mKnobsVisible = self->mKnobsVisible;
  v20 = [(CRLCanvasKnobTracker *)self rep];
  shouldCreateKnobs = [v20 shouldCreateKnobs];

  if (mKnobsVisible != shouldCreateKnobs)
  {
    v22 = [(CRLCanvasKnobTracker *)self rep];
    self->mKnobsVisible = [v22 shouldCreateKnobs];

    v23 = [(CRLCanvasKnobTracker *)self rep];
    [v23 invalidateKnobs];
  }

  v24 = *&self->mOriginalTransformInRoot.c;
  *&v28.a = *&self->mOriginalTransformInRoot.a;
  *&v28.c = v24;
  *&v28.tx = *&self->mOriginalTransformInRoot.tx;
  CGAffineTransformInvert(&v29, &v28);
  [(CRLConnectionLineKnobTracker *)self moveKnobToRepPosition:vaddq_f64(*&v29.tx, vmlaq_n_f64(vmulq_n_f64(*&v29.c, v26), *&v29.a, x))];
}

- (void)p_retrieveMagnetsForLayoutsNearKnob
{
  v4 = objc_alloc_init(NSMutableSet);
  mMagnets = self->mMagnets;
  self->mMagnets = v4;

  mLayoutUnderKnob = self->mLayoutUnderKnob;
  self->mLayoutUnderKnob = 0;

  v35 = 0;
  p_mKnobPosition = &self->mKnobPosition;
  v8 = [(CRLConnectionLineKnobTracker *)self p_findLayoutWithNearestMagnetInRect:&v35 nearestMagnet:self->mKnobPosition.x + -50.0, self->mKnobPosition.y + -50.0, 100.0, 100.0];
  if (v8)
  {
    [(CRLConnectionLineKnobTracker *)self p_retrieveMagnetPositionsForLayout:v8];
    [v8 boundsForStandardKnobs];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    geometry = [v8 geometry];
    convexHullPath = geometry;
    if (geometry)
    {
      [geometry transform];
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
    }

    v37.origin.x = v10;
    v37.origin.y = v12;
    v37.size.width = v14;
    v37.size.height = v16;
    v38 = CGRectApplyAffineTransform(v37, &v34);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;

    v36.x = p_mKnobPosition->x;
    v36.y = self->mKnobPosition.y;
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    if (CGRectContainsPoint(v39, v36))
    {
      convexHullPath = [v8 convexHullPath];
      if (!convexHullPath)
      {
        goto LABEL_11;
      }

      geometry2 = [v8 geometry];
      v23 = geometry2;
      if (geometry2)
      {
        [geometry2 transform];
      }

      else
      {
        memset(&v33, 0, sizeof(v33));
      }

      CGAffineTransformInvert(&v34, &v33);
      v24 = [convexHullPath containsPoint:{vaddq_f64(*&v34.tx, vmlaq_n_f64(vmulq_n_f64(*&v34.c, self->mKnobPosition.y), *&v34.a, p_mKnobPosition->x))}];

      if (v24)
      {
LABEL_11:
        objc_storeStrong(&self->mLayoutUnderKnob, v8);
      }
    }
  }

  if (!self->mLayoutUnderKnob && !self->mKnobMoved)
  {
    mKnobTag = self->mKnobTag;
    if (mKnobTag == 10)
    {
      convexHullPath = [(CRLConnectionLineKnobTracker *)self connectionLineLayout];
      connectedFrom = [convexHullPath connectedFrom];
      if (connectedFrom)
      {

LABEL_24:
        v29 = self->mKnobTag;
        v30 = [(CRLConnectionLineKnobTracker *)self connectionLineLayout:*&v33.a];
        convexHullPath = v30;
        if (v29 == 10)
        {
          [v30 connectedFrom];
        }

        else
        {
          [v30 connectedTo];
        }
        v31 = ;
        v32 = self->mLayoutUnderKnob;
        self->mLayoutUnderKnob = v31;

        goto LABEL_28;
      }

      if (self->mKnobTag != 11)
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    else if (mKnobTag != 11)
    {
      goto LABEL_29;
    }

    v27 = [(CRLConnectionLineKnobTracker *)self connectionLineLayout:*&v33.a];
    connectedTo = [v27 connectedTo];

    if (mKnobTag == 10)
    {
    }

    if (connectedTo)
    {
      goto LABEL_24;
    }
  }

LABEL_29:
  [(CRLConnectionLineKnobTracker *)self p_updateRoutingProperties:*&v33.a];
}

- (void)p_updateRoutingProperties
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v4 layout];
  v6 = sub_100013F00(v3, layout);

  v35 = 0;
  [v6 headPoint];
  v8 = v7;
  v10 = v9;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (v6)
  {
    [v6 transform];
    v17 = v29;
    v14 = v30;
    v16 = v31;
    v13 = v32;
    v15 = v33;
    v12 = v34;
  }

  v18 = [(CRLConnectionLineKnobTracker *)self p_findLayoutWithNearestMagnetInRect:&v35 nearestMagnet:v15 + v10 * v16 + v17 * v8 + -50.0, v12 + v10 * v13 + v14 * v8 + -50.0, 100.0, 100.0];
  [v6 setHeadNearestLayoutForRouting:v18];

  [v6 setHeadNearestMagnetTypeForRouting:v35];
  [v6 tailPoint];
  v20 = v19;
  v22 = v21;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  if (v6)
  {
    [v6 transform];
    v27 = v29;
    v24 = v30;
    v26 = v31;
    v23 = v32;
    v25 = v33;
    v11 = v34;
  }

  v28 = [(CRLConnectionLineKnobTracker *)self p_findLayoutWithNearestMagnetInRect:&v35 nearestMagnet:v25 + v22 * v26 + v27 * v20 + -50.0, v11 + v22 * v23 + v24 * v20 + -50.0, 100.0, 100.0];
  [v6 setTailNearestLayoutForRouting:v28];

  [v6 setTailNearestMagnetTypeForRouting:v35];
}

- (id)p_findLayoutWithNearestMagnetInRect:(CGRect)rect nearestMagnet:(unint64_t *)magnet
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = [(CRLCanvasKnobTracker *)self icc];
  canvas = [v10 canvas];
  layoutController = [canvas layoutController];
  v13 = [layoutController layoutsInRect:{x, y, width, height}];

  v14 = [(CRLCanvasKnobTracker *)self icc];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100493B80;
  v39[3] = &unk_10183F5F8;
  v39[4] = self;
  v15 = [v14 hitRep:v39 passingTest:{self->mKnobPosition.x, self->mKnobPosition.y}];

  if (v15)
  {
    repForSelecting = [v15 repForSelecting];
    layout = [repForSelecting layout];
    mLayoutUnderKnob = self->mLayoutUnderKnob;
    self->mLayoutUnderKnob = layout;

    v19 = self->mLayoutUnderKnob;
  }

  else if (self->mLayoutUnderKnob)
  {
    v19 = 0;
  }

  else
  {
    v33 = v13;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v13;
    v20 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v19 = 0;
      v22 = *v36;
      v23 = 1.79769313e308;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v35 + 1) + 8 * i);
          if ([(CRLConnectionLineKnobTracker *)self p_isValidConnectionDestination:v25])
          {
            for (j = 2; j != 6; ++j)
            {
              [v25 getCardinalPositionWithParentTransformFromType:j];
              v29 = sub_100120090(self->mKnobPosition.x, self->mKnobPosition.y, v27, v28);
              if (v29 < v23)
              {
                v30 = v29;
                v31 = v25;

                *magnet = j;
                v23 = v30;
                v19 = v31;
              }
            }
          }
        }

        v21 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v21);
    }

    else
    {
      v19 = 0;
    }

    v15 = 0;
    v13 = v33;
  }

  return v19;
}

- (void)p_retrieveMagnetPositionsForLayout:(id)layout
{
  layoutCopy = layout;
  mMagnets = self->mMagnets;
  v6 = [CRLConnectionLineMagnetInfo alloc];
  [layoutCopy getCardinalPositionWithParentTransformFromType:1];
  v7 = [(CRLConnectionLineMagnetInfo *)v6 initWithType:1 position:layoutCopy layout:0 connected:?];
  [(NSMutableSet *)mMagnets addObject:v7];

  for (i = 2; i != 6; ++i)
  {
    [layoutCopy getCardinalPositionWithParentTransformFromType:i];
    v10 = v9;
    v12 = v11;
    if ([(CRLConnectionLineKnobTracker *)self p_shouldIncludeCardinalMagnet:i forLayout:layoutCopy])
    {
      v13 = self->mMagnets;
      v14 = [[CRLConnectionLineMagnetInfo alloc] initWithType:i position:layoutCopy layout:0 connected:v10, v12];
      [(NSMutableSet *)v13 addObject:v14];
    }
  }

  connectedLayouts = [layoutCopy connectedLayouts];

  if (connectedLayouts)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    connectedLayouts2 = [layoutCopy connectedLayouts];
    v17 = [connectedLayouts2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        v20 = 0;
        do
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(connectedLayouts2);
          }

          v21 = *(*(&v24 + 1) + 8 * v20);
          v22 = [(CRLCanvasKnobTracker *)self rep];
          layout = [v22 layout];

          if (v21 != layout)
          {
            [(CRLConnectionLineKnobTracker *)self p_updateMagnetPositionsForConnectionLineLayout:v21 withinLayout:layoutCopy];
          }

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [connectedLayouts2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }
  }
}

- (BOOL)p_shouldIncludeCardinalMagnet:(unint64_t)magnet forLayout:(id)layout
{
  layoutCopy = layout;
  [layoutCopy getCardinalPositionWithParentTransformFromType:magnet];
  v7 = v6;
  v9 = v8;
  v10 = 0;
  for (i = 1; i != 6; ++i)
  {
    if (magnet != i)
    {
      [layoutCopy getCardinalPositionWithParentTransformFromType:i];
      if (sub_100120090(v7, v9, v12, v13) < 10.0)
      {
        break;
      }
    }

    v10 = i > 4;
  }

  return v10;
}

- (void)p_updateMagnetPositionsForConnectionLineLayout:(id)layout withinLayout:(id)withinLayout
{
  layoutCopy = layout;
  withinLayoutCopy = withinLayout;
  if ([layoutCopy headMagnetType])
  {
    connectedTo = [layoutCopy connectedTo];

    if (connectedTo)
    {
      connectedTo2 = [layoutCopy connectedTo];

      if (connectedTo2 == withinLayoutCopy)
      {
        connectedTo3 = [layoutCopy connectedTo];
        [layoutCopy headMagnetCanvasPosition];
        [(CRLConnectionLineKnobTracker *)self p_getMagnetPositionAdjustedToParentForLayout:connectedTo3 withOriginalMagnetPosition:?];
        v11 = v10;
        v13 = v12;

        v14 = [CRLConnectionLineMagnetInfo alloc];
        headMagnetType = [layoutCopy headMagnetType];
        connectedTo4 = [layoutCopy connectedTo];
        v17 = [(CRLConnectionLineMagnetInfo *)v14 initWithType:headMagnetType position:connectedTo4 layout:1 connected:v11, v13];

        [(NSMutableSet *)self->mMagnets addObject:v17];
      }
    }
  }

  if ([layoutCopy tailMagnetType])
  {
    connectedFrom = [layoutCopy connectedFrom];

    if (connectedFrom)
    {
      connectedFrom2 = [layoutCopy connectedFrom];

      if (connectedFrom2 == withinLayoutCopy)
      {
        connectedFrom3 = [layoutCopy connectedFrom];
        [layoutCopy tailMagnetCanvasPosition];
        [(CRLConnectionLineKnobTracker *)self p_getMagnetPositionAdjustedToParentForLayout:connectedFrom3 withOriginalMagnetPosition:?];
        v22 = v21;
        v24 = v23;

        v25 = [CRLConnectionLineMagnetInfo alloc];
        tailMagnetType = [layoutCopy tailMagnetType];
        connectedFrom4 = [layoutCopy connectedFrom];
        v28 = [(CRLConnectionLineMagnetInfo *)v25 initWithType:tailMagnetType position:connectedFrom4 layout:1 connected:v22, v24];

        [(NSMutableSet *)self->mMagnets addObject:v28];
      }
    }
  }
}

- (CGPoint)p_getMagnetPositionAdjustedToParentForLayout:(id)layout withOriginalMagnetPosition:(CGPoint)position
{
  v12 = *&position.y;
  positionCopy = position;
  layoutCopy = layout;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  parent = [layoutCopy parent];
  if (parent)
  {
    parent2 = [layoutCopy parent];
    geometryInRoot = [parent2 geometryInRoot];
    v8 = geometryInRoot;
    if (geometryInRoot)
    {
      [geometryInRoot transform];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v14 = *&CGAffineTransformIdentity.a;
    v15 = *&CGAffineTransformIdentity.c;
    v16 = *&CGAffineTransformIdentity.tx;
  }

  v11 = vaddq_f64(v16, vmlaq_n_f64(vmulq_n_f64(v15, *&v12), v14, positionCopy.x));
  v10 = v11.f64[1];
  v9 = v11.f64[0];
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)p_snapToNearestMagnetFromKnob
{
  [(CRLConnectionLineKnobTracker *)self p_getMagnetSnappingDistance];
  v4 = v3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->mMagnets;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v27;
    v10 = 1.79769313e308;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        layout = [v12 layout];
        v14 = [(CRLCanvasKnobTracker *)self rep];
        layout2 = [v14 layout];

        if (layout != layout2)
        {
          [v12 position];
          v18 = sub_100120090(self->mKnobPosition.x, self->mKnobPosition.y, v16, v17);
          if (v18 < v4 && v18 < v10)
          {
            v20 = v18;
            v21 = v12;

            v10 = v20;
            v8 = v21;
          }
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&self->mSnappedMagnet, v8);
  [(CRLConnectionLineKnobTracker *)self p_snapToCenterIfLayoutHasConnectionWithoutMagnet];
  mSnappedMagnet = self->mSnappedMagnet;
  if (mSnappedMagnet)
  {
    p_mKnobPosition = &self->mKnobPosition;
    [(CRLConnectionLineMagnetInfo *)mSnappedMagnet position];
    p_mKnobPosition->x = v24;
    p_mKnobPosition->y = v25;
  }
}

- (void)p_snapToCenterIfLayoutHasConnectionWithoutMagnet
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v4 layout];
  v13 = sub_100014370(v3, layout);

  mKnobTag = self->mKnobTag;
  if (mKnobTag == 11)
  {
    if (![v13 headMagnetType])
    {
      connectedTo = [v13 connectedTo];
      if (connectedTo)
      {

        goto LABEL_10;
      }
    }

    mKnobTag = self->mKnobTag;
  }

  if (mKnobTag == 10 && ![v13 tailMagnetType])
  {
    connectedFrom = [v13 connectedFrom];

    if (connectedFrom)
    {
LABEL_10:
      if (self->mKnobTag == 11)
      {
        [v13 connectedTo];
      }

      else
      {
        [v13 connectedFrom];
      }
      v9 = ;
      v10 = [CRLConnectionLineMagnetInfo alloc];
      [v9 getCardinalPositionWithParentTransformFromType:1];
      v11 = [(CRLConnectionLineMagnetInfo *)v10 initWithType:1 position:v9 layout:1 connected:?];
      mSnappedMagnet = self->mSnappedMagnet;
      self->mSnappedMagnet = v11;
    }
  }
}

- (double)p_getMagnetSnappingDistance
{
  v2 = 0.0;
  if (self->mShouldSnapToMagnets)
  {
    v3 = [(CRLCanvasKnobTracker *)self rep];
    interactiveCanvasController = [v3 interactiveCanvasController];
    [interactiveCanvasController viewScale];
    v2 = 10.0 / v5 * 2.5;
  }

  return v2;
}

- (void)p_createFloatingOrEdgeMagnetAtKnob
{
  [(CRLConnectionLineKnobTracker *)self p_getMagnetSnappingDistance];
  mLayoutUnderKnob = self->mLayoutUnderKnob;
  if (mLayoutUnderKnob)
  {
    v5 = v3;
    p_mKnobPosition = &self->mKnobPosition;
    [(CRLCanvasLayout *)mLayoutUnderKnob nearestEdgePointOnWrapPathFromPoint:self->mKnobPosition.x, self->mKnobPosition.y];
    v8 = v7;
    v10 = v9;
    v11 = sub_100120090(self->mKnobPosition.x, self->mKnobPosition.y, v7, v9);
    v12 = [CRLConnectionLineMagnetInfo alloc];
    v13 = self->mLayoutUnderKnob;
    if (v11 >= v5)
    {
      v16 = [(CRLConnectionLineMagnetInfo *)v12 initWithType:7 position:v13 layout:1 connected:p_mKnobPosition->x, self->mKnobPosition.y];
      mSnappedMagnet = self->mSnappedMagnet;
      self->mSnappedMagnet = v16;
    }

    else
    {
      v14 = [(CRLConnectionLineMagnetInfo *)v12 initWithType:6 position:v13 layout:1 connected:v8, v10];
      v15 = self->mSnappedMagnet;
      self->mSnappedMagnet = v14;

      p_mKnobPosition->x = v8;
      self->mKnobPosition.y = v10;
    }
  }
}

- (void)p_updateConnection
{
  v3 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v3 layout];

  if (!self->mSnappedMagnet)
  {
    if (!self->mKnobMoved)
    {
      goto LABEL_27;
    }

    knob = [(CRLCanvasKnobTracker *)self knob];
    if ([knob tag] == 11)
    {
      connectedTo = [layout connectedTo];

      if (connectedTo)
      {
        [layout setConnectedTo:0];
        [layout setHeadMagnetType:0];
LABEL_25:
        mConnectedRepForHighlighting = self->mConnectedRepForHighlighting;
        self->mConnectedRepForHighlighting = 0;
        goto LABEL_26;
      }
    }

    else
    {
    }

    knob2 = [(CRLCanvasKnobTracker *)self knob];
    if ([knob2 tag] == 10)
    {
      connectedFrom = [layout connectedFrom];

      if (connectedFrom)
      {
        [layout setConnectedFrom:0];
        [layout setTailMagnetType:0];
      }
    }

    else
    {
    }

    goto LABEL_25;
  }

  knob3 = [(CRLCanvasKnobTracker *)self knob];
  if ([knob3 tag] == 11)
  {
    [layout connectedTo];
  }

  else
  {
    [layout connectedFrom];
  }
  mConnectedRepForHighlighting = ;

  if (mConnectedRepForHighlighting)
  {
    knob3 = [(CRLCanvasKnobTracker *)self icc];
    v9 = [knob3 repForLayout:mConnectedRepForHighlighting];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&self->mConnectedRepForHighlighting, v9);
  if (mConnectedRepForHighlighting)
  {
  }

  knob4 = [(CRLCanvasKnobTracker *)self knob];
  v11 = [knob4 tag];

  layout2 = [(CRLConnectionLineMagnetInfo *)self->mSnappedMagnet layout];
  if (v11 == 11)
  {
    connectedTo2 = [layout connectedTo];

    if (layout2 != connectedTo2)
    {
      layout3 = [(CRLConnectionLineMagnetInfo *)self->mSnappedMagnet layout];
      [layout setConnectedTo:layout3];
LABEL_19:

      mConnectedRepForHighlighting = [(CRLCanvasKnobTracker *)self rep];
      interactiveCanvasController = [mConnectedRepForHighlighting interactiveCanvasController];
      dynamicOperationController = [interactiveCanvasController dynamicOperationController];
      [dynamicOperationController invalidateGuides];
    }
  }

  else
  {
    connectedFrom2 = [layout connectedFrom];

    if (layout2 != connectedFrom2)
    {
      layout3 = [(CRLConnectionLineMagnetInfo *)self->mSnappedMagnet layout];
      [layout setConnectedFrom:layout3];
      goto LABEL_19;
    }
  }

LABEL_26:

LABEL_27:
  knob5 = [(CRLCanvasKnobTracker *)self knob];
  v21 = [knob5 tag];

  if (v21 == 11)
  {
    [layout connectedFrom];
  }

  else
  {
    [layout connectedTo];
  }
  v22 = ;
  v23 = [(CRLCanvasKnobTracker *)self icc];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100494DB0;
  v69[3] = &unk_1018572B8;
  v24 = v22;
  v70 = v24;
  selfCopy = self;
  v25 = [v23 hitRep:v69 passingTest:{self->mKnobPosition.x, self->mKnobPosition.y}];
  repForSelecting = [v25 repForSelecting];

  v27 = [(CRLCanvasKnobTracker *)self rep];
  interactiveCanvasController2 = [v27 interactiveCanvasController];

  freehandDrawingToolkit = [interactiveCanvasController2 freehandDrawingToolkit];
  v30 = objc_opt_class();
  info = [(CRLCanvasRep *)repForSelecting info];
  v32 = sub_100014370(v30, info);

  if (v32 && [freehandDrawingToolkit isLassoSelectionForMixedTypeEnabledInDrawingMode])
  {
    info2 = [(CRLCanvasRep *)repForSelecting info];
    v34 = sub_100125F34(info2);

    v35 = [interactiveCanvasController2 repForInfo:v34];

    repForSelecting = v35;
  }

  if ((!repForSelecting || self->mConnectedRepForHighlighting != repForSelecting) && self->mIsEnqueueingCommandsInRealTime)
  {
    connectionLineInfo = [layout connectionLineInfo];
    commandController = [interactiveCanvasController2 commandController];
    knob6 = [(CRLCanvasKnobTracker *)self knob];
    v37 = [knob6 tag];

    if (v37 == 10)
    {
      pathSource = [layout pathSource];
      v39 = [pathSource copy];

      v40 = [CRLConnectionLineMagnet alloc];
      p_getSnappedMagnetType = [(CRLConnectionLineKnobTracker *)self p_getSnappedMagnetType];
      [(CRLConnectionLineKnobTracker *)self p_getSnappedMagnetNormalizedPosition];
      v42 = [(CRLConnectionLineMagnet *)v40 initWithType:p_getSnappedMagnetType normalizedPosition:?];
      [v39 setTailMagnet:v42];

      v43 = objc_opt_class();
      connectedFrom3 = [layout connectedFrom];
      info3 = [connectedFrom3 info];
      v46 = sub_100014370(v43, info3);

      v47 = [_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc];
      v48 = connectionLineInfo;
      v49 = connectionLineInfo;
      v66 = v46;
      v50 = v46;
      v51 = 0;
    }

    else
    {
      knob7 = [(CRLCanvasKnobTracker *)self knob];
      v53 = [knob7 tag];

      v54 = v53 == 11;
      v55 = commandController;
      v48 = connectionLineInfo;
      if (!v54)
      {
        goto LABEL_42;
      }

      pathSource2 = [layout pathSource];
      v39 = [pathSource2 copy];

      v57 = [CRLConnectionLineMagnet alloc];
      p_getSnappedMagnetType2 = [(CRLConnectionLineKnobTracker *)self p_getSnappedMagnetType];
      [(CRLConnectionLineKnobTracker *)self p_getSnappedMagnetNormalizedPosition];
      v59 = [(CRLConnectionLineMagnet *)v57 initWithType:p_getSnappedMagnetType2 normalizedPosition:?];
      [v39 setHeadMagnet:v59];

      v60 = objc_opt_class();
      connectedTo3 = [layout connectedTo];
      info4 = [connectedTo3 info];
      v63 = sub_100014370(v60, info4);

      v48 = connectionLineInfo;
      v47 = [_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc];
      v49 = connectionLineInfo;
      v66 = v63;
      v50 = v63;
      v51 = 1;
    }

    v64 = v39;
    v65 = [(CRLCommandSetConnectionLineConnection *)v47 initWithConnectionLine:v49 connectedItem:v50 chirality:v51 pathSource:v39];
    v55 = commandController;
    [commandController enqueueCommand:v65];

LABEL_42:
  }
}

- (unint64_t)p_getSnappedMagnetType
{
  result = self->mSnappedMagnet;
  if (result)
  {
    return [result magnetType];
  }

  return result;
}

- (CGPoint)p_getSnappedMagnetNormalizedPosition
{
  mSnappedMagnet = self->mSnappedMagnet;
  if (mSnappedMagnet)
  {
    [(CRLConnectionLineMagnetInfo *)mSnappedMagnet position];
    v18 = v5;
    v19 = v4;
    layout = [(CRLConnectionLineMagnetInfo *)self->mSnappedMagnet layout];
    v7 = layout;
    if (layout)
    {
      [layout pureTransformInRoot];
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    CGAffineTransformInvert(&v22, &v21);
    v20 = vaddq_f64(*&v22.tx, vmlaq_n_f64(vmulq_n_f64(*&v22.c, v18), *&v22.a, v19));

    layout2 = [(CRLConnectionLineMagnetInfo *)self->mSnappedMagnet layout];
    pureGeometry = [layout2 pureGeometry];
    [pureGeometry size];
    v12 = sub_10011ECB4();
    v9 = sub_100121720(v20.f64[0], v20.f64[1], v12, v13, v14);
    v8 = v15;
  }

  else
  {
    v8 = 0.5;
    v9 = 0.5;
  }

  v16 = v9;
  v17 = v8;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)p_updateMagnetRenderables
{
  v3 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  v26 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = self->mMagnets;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        connected = [v9 connected];
        [v9 position];
        if (connected)
        {
          v30 = v11;
          v13 = &v30;
          v14 = v3;
        }

        else
        {
          v29 = v11;
          v13 = &v29;
          v14 = v26;
        }

        v13[1] = v12;
        v15 = [NSValue valueWithBytes:"valueWithBytes:objCType:" objCType:?];
        [v14 addObject:v15];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }

  v16 = objc_alloc_init(NSMutableArray);
  mSnappedMagnet = selfCopy->mSnappedMagnet;
  if (mSnappedMagnet)
  {
    [(CRLConnectionLineMagnetInfo *)mSnappedMagnet position];
    v28[0] = v18;
    v28[1] = v19;
    v20 = [NSValue valueWithBytes:v28 objCType:"{CGPoint=dd}"];
    [v16 addObject:v20];

    [(CRLConnectionLineMagnetInfo *)selfCopy->mSnappedMagnet position];
    v27[0] = v21;
    v27[1] = v22;
    v23 = [NSValue valueWithBytes:v27 objCType:"{CGPoint=dd}"];
    [v3 addObject:v23];
  }

  v24 = [(CRLCanvasKnobTracker *)selfCopy rep];
  [v24 updateMagnetRenderables:v3 withEmptyMagnets:v26 withHighlightedMagnets:v16 includeClippedPortions:1];
}

- (void)p_updateLayout
{
  connectionLineLayout = [(CRLConnectionLineKnobTracker *)self connectionLineLayout];
  v34 = connectionLineLayout;
  if (!self->mSnappedMagnet)
  {
    [connectionLineLayout setDrawClippedHeadPortion:0];
    [v34 setDrawClippedTailPortion:0];
    knob = [(CRLCanvasKnobTracker *)self knob];
    renderable = [knob renderable];
    LODWORD(v7) = 1.0;
    [renderable setOpacity:v7];

    goto LABEL_54;
  }

  p_connectedToCenter = [(CRLConnectionLineKnobTracker *)self p_connectedToCenter];
  if (self->mKnobMoved || !p_connectedToCenter)
  {
    [(CRLConnectionLineMagnetInfo *)self->mSnappedMagnet position];
    v9 = v8;
    v11 = v10;
    connectedTo = [v34 connectedTo];
    if (connectedTo)
    {
      mKnobTag = self->mKnobTag;

      if (mKnobTag == 11)
      {
        [v34 setHeadMagnetPosition:{v9, v11}];
        [v34 setHeadMagnetType:{-[CRLConnectionLineMagnetInfo magnetType](self->mSnappedMagnet, "magnetType")}];
      }
    }

    connectedFrom = [v34 connectedFrom];
    if (connectedFrom)
    {
      v15 = self->mKnobTag;

      if (v15 == 10)
      {
        [v34 setTailMagnetPosition:{v9, v11}];
        [v34 setTailMagnetType:{-[CRLConnectionLineMagnetInfo magnetType](self->mSnappedMagnet, "magnetType")}];
      }
    }
  }

  else
  {
    [(CRLConnectionLineKnobTracker *)self p_keepSnappedMagnetOnCenter];
  }

  if (self->mKnobTag != 11)
  {
    goto LABEL_18;
  }

  if ([(CRLConnectionLineMagnetInfo *)self->mSnappedMagnet magnetType]!= 1)
  {
    if (self->mKnobTag == 11)
    {
      v16 = 0;
      goto LABEL_17;
    }

LABEL_18:
    v18 = [v34 headMagnetType] == 1;
    v17 = v34;
    v16 = v18;
    goto LABEL_21;
  }

  v16 = 1;
LABEL_17:
  v17 = v34;
LABEL_21:
  [v17 setClipHead:v16];
  if (self->mKnobTag != 10)
  {
    goto LABEL_26;
  }

  if ([(CRLConnectionLineMagnetInfo *)self->mSnappedMagnet magnetType]== 1)
  {
    v19 = 1;
    goto LABEL_27;
  }

  if (self->mKnobTag == 10)
  {
    v19 = 0;
  }

  else
  {
LABEL_26:
    v19 = [v34 tailMagnetType] == 1;
  }

LABEL_27:
  [v34 setClipTail:v19];
  if ([v34 clipHead] && self->mKnobTag == 11)
  {
    pureGeometry = [v34 pureGeometry];
    [pureGeometry size];
    if (v21 == 0.0 || fabs(v21) < 0.00999999978)
    {
      pureGeometry2 = [v34 pureGeometry];
      [pureGeometry2 size];
      v24 = fabs(v23) >= 0.00999999978 && v23 != 0.0;
      [v34 setDrawClippedHeadPortion:v24];
    }

    else
    {
      [v34 setDrawClippedHeadPortion:1];
    }
  }

  else
  {
    [v34 setDrawClippedHeadPortion:0];
  }

  if ([v34 clipTail] && self->mKnobTag == 10)
  {
    pureGeometry3 = [v34 pureGeometry];
    [pureGeometry3 size];
    if (v26 == 0.0 || fabs(v26) < 0.00999999978)
    {
      pureGeometry4 = [v34 pureGeometry];
      [pureGeometry4 size];
      v29 = fabs(v28) >= 0.00999999978 && v28 != 0.0;
      [v34 setDrawClippedTailPortion:v29];
    }

    else
    {
      [v34 setDrawClippedTailPortion:1];
    }
  }

  else
  {
    [v34 setDrawClippedTailPortion:0];
  }

  v30 = 0.0;
  if (([v34 drawClippedHeadPortion] & 1) == 0)
  {
    if ([v34 drawClippedTailPortion])
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }
  }

  knob2 = [(CRLCanvasKnobTracker *)self knob];
  renderable2 = [knob2 renderable];
  *&v33 = v30;
  [renderable2 setOpacity:v33];

  [v34 setMagnetsAdjusted:1];
LABEL_54:
}

- (void)p_keepSnappedMagnetOnCenter
{
  connectionLineLayout = [(CRLConnectionLineKnobTracker *)self connectionLineLayout];
  v3 = objc_opt_class();
  info = [connectionLineLayout info];
  v5 = sub_100014370(v3, info);

  connectionLinePathSource = [v5 connectionLinePathSource];
  if (!self->mKnobMoved)
  {
    connectedTo = [connectionLineLayout connectedTo];
    if (connectedTo && self->mKnobTag == 11 && ([connectionLinePathSource headMagnet], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      headMagnet = [connectionLinePathSource headMagnet];
      magnetType = [headMagnet magnetType];

      if (magnetType == 1)
      {
        v12 = [CRLConnectionLineMagnetInfo alloc];
        connectedTo2 = [connectionLineLayout connectedTo];
        [connectedTo2 getCardinalPositionWithParentTransformFromType:1];
        v15 = v14;
        v17 = v16;
        connectedTo3 = [connectionLineLayout connectedTo];
LABEL_14:
        v26 = connectedTo3;
        v27 = [(CRLConnectionLineMagnetInfo *)v12 initWithType:1 position:connectedTo3 layout:1 connected:v15, v17];
        mSnappedMagnet = self->mSnappedMagnet;
        self->mSnappedMagnet = v27;

        [(CRLConnectionLineMagnetInfo *)self->mSnappedMagnet position];
        self->mKnobPosition.x = v29;
        self->mKnobPosition.y = v30;
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  if (self->mKnobMoved)
  {
    goto LABEL_16;
  }

  connectedFrom = [connectionLineLayout connectedFrom];
  if (connectedFrom)
  {
    if (self->mKnobTag == 10)
    {
      tailMagnet = [connectionLinePathSource tailMagnet];
      if (tailMagnet)
      {
        v21 = tailMagnet;
        tailMagnet2 = [connectionLinePathSource tailMagnet];
        magnetType2 = [tailMagnet2 magnetType];

        if (magnetType2 != 1)
        {
          goto LABEL_16;
        }

        v12 = [CRLConnectionLineMagnetInfo alloc];
        connectedTo2 = [connectionLineLayout connectedFrom];
        [connectedTo2 getCardinalPositionWithParentTransformFromType:1];
        v15 = v24;
        v17 = v25;
        connectedTo3 = [connectionLineLayout connectedFrom];
        goto LABEL_14;
      }
    }
  }

LABEL_16:
}

- (BOOL)p_connectedToCenter
{
  v4 = objc_opt_class();
  connectionLineLayout = [(CRLConnectionLineKnobTracker *)self connectionLineLayout];
  info = [connectionLineLayout info];
  v7 = sub_100014370(v4, info);

  connectionLinePathSource = [v7 connectionLinePathSource];
  v9 = connectionLinePathSource;
  mKnobTag = self->mKnobTag;
  if (mKnobTag != 11)
  {
    v11 = 0;
    v12 = 0;
    if (mKnobTag != 10)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  info = [connectionLinePathSource headMagnet];
  v11 = info != 0;
  if (info)
  {
    headMagnet = [v9 headMagnet];
    if ([headMagnet magnetType] == 1)
    {
      v12 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  if (self->mKnobTag == 10)
  {
LABEL_8:
    tailMagnet = [v9 tailMagnet];
    if (tailMagnet)
    {
      v14 = tailMagnet;
      tailMagnet2 = [v9 tailMagnet];
      v12 = [tailMagnet2 magnetType] == 1;

      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = 0;
      if (!v11)
      {
LABEL_11:
        if (mKnobTag != 11)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    goto LABEL_11;
  }

  v12 = 0;
  if (info)
  {
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  return v12;
}

- (void)p_setUserAdjustedShapeControlKnob:(BOOL)knob
{
  knobCopy = knob;
  v5 = objc_opt_class();
  v6 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v6 layout];
  v8 = sub_100014370(v5, layout);

  if ([v8 connectionType] == 2)
  {
    [v8 setUserDidSetControlPoint:knobCopy];
  }
}

- (void)moveKnobToRepPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v6 = [(CRLCanvasKnobTracker *)self rep];
  if ([(CRLConnectionLineKnobTracker *)self snapEnabled])
  {
    v7 = ![(CRLCanvasKnobTracker *)self isInspectorDrivenTracking];
  }

  else
  {
    v7 = 0;
  }

  if ([(CRLConnectionLineKnobTracker *)self snapAngles])
  {
    v8 = ![(CRLCanvasKnobTracker *)self isInspectorDrivenTracking];
  }

  else
  {
    v8 = 0;
  }

  if (![CRLFeatureFlagsHelper isOSFeatureEnabled:4]|| ((v7 | v8) & 1) == 0 || [(NSMutableSet *)self->mMagnets count])
  {
    [v6 dynamicallyMovedSmartShapeKnobTo:self withTracker:{x, y}];
    goto LABEL_11;
  }

  interactiveCanvasController = [v6 interactiveCanvasController];
  guideController = [interactiveCanvasController guideController];

  if (v7 && !self->mBeganAlignmentOperation && [v6 wantsGuidesWhileResizing])
  {
    [guideController beginAlignmentOperationForRep:v6];
    self->mBeganAlignmentOperation = 1;
  }

  p_mNewKnobCenterNaturalSpace = &self->mNewKnobCenterNaturalSpace;
  p_mOriginalPathToBoundsOrigin = &self->mOriginalPathToBoundsOrigin;
  v111 = sub_10011F334(x, y, self->mOriginalPathToBoundsOrigin.x);
  self->mNewKnobCenterNaturalSpace.x = v111;
  self->mNewKnobCenterNaturalSpace.y = v12;
  v114 = v12;
  resizeFromCenter = [(CRLConnectionLineKnobTracker *)self resizeFromCenter];
  v14 = &OBJC_IVAR___CRLConnectionLineKnobTracker_mOriginalFixedPointNaturalSpace;
  if (resizeFromCenter)
  {
    v14 = &OBJC_IVAR___CRLConnectionLineKnobTracker_mOriginalMiddlePointNaturalSpace;
  }

  v15 = (self + *v14);
  v117 = *v15;
  v16 = sub_100120090(p_mNewKnobCenterNaturalSpace->x, self->mNewKnobCenterNaturalSpace.y, *v15, v15[1]);
  v17 = 0;
  v18 = 3.40282347e38;
  v19 = -1;
  do
  {
    layout = [v6 layout];
    originalGeometry = [layout originalGeometry];
    v22 = originalGeometry;
    if (originalGeometry)
    {
      [originalGeometry transform];
    }

    else
    {
      memset(&v123, 0, sizeof(v123));
    }

    v23 = sub_100139980(&v123);
    v24 = sub_100120F98(v17 * 0.785398163 + v23 / -180.0 * 3.14159265);
    v26 = sub_10011F340(v24, v25, v16);
    v28 = v27;

    v29 = sub_10011F334(v26, v28, v117);
    v31 = v30;
    v32 = sub_100120090(v29, v30, p_mNewKnobCenterNaturalSpace->x, self->mNewKnobCenterNaturalSpace.y);
    if (v8)
    {
      if (v32 >= v18)
      {
        goto LABEL_25;
      }

LABEL_24:
      v114 = v31;
      v111 = v29;
      v18 = v32;
      v19 = v17;
      goto LABEL_25;
    }

    v33 = v32 < 7 * 1.5 && v32 < v18;
    if (v33)
    {
      goto LABEL_24;
    }

LABEL_25:
    ++v17;
  }

  while (v17 != 8);
  p_mNewKnobCenterNaturalSpace->x = sub_10011F31C(v111, v114, p_mOriginalPathToBoundsOrigin->x);
  self->mNewKnobCenterNaturalSpace.y = v34;
  v35 = [(CRLCanvasKnobTracker *)self rep];
  interactiveCanvasController2 = [v35 interactiveCanvasController];
  isCanvasBackgroundAlignmentSnappingEnabled = [interactiveCanvasController2 isCanvasBackgroundAlignmentSnappingEnabled];

  if (isCanvasBackgroundAlignmentSnappingEnabled)
  {
    v118 = guideController;
    v38 = [(CRLCanvasKnobTracker *)self rep];
    interactiveCanvasController3 = [v38 interactiveCanvasController];
    canvasBackground = [interactiveCanvasController3 canvasBackground];

    v115 = canvasBackground;
    alignmentProvider = [canvasBackground alignmentProvider];
    v42 = objc_opt_class();
    layout2 = [v6 layout];
    v44 = sub_100013F00(v42, layout2);

    connectedPathSource = [v44 connectedPathSource];
    type = [connectedPathSource type];

    if (!alignmentProvider || (self->mKnobTag & 0xFFFFFFFFFFFFFFFELL) != 0xA && type != 1)
    {
      v47 = 0;
      guideController = v118;
      goto LABEL_53;
    }

    v110 = vaddq_f64(*&self->mOriginalTransformInRoot.tx, vmlaq_n_f64(vmulq_n_f64(*&self->mOriginalTransformInRoot.c, self->mNewKnobCenterNaturalSpace.y), *&self->mOriginalTransformInRoot.a, p_mNewKnobCenterNaturalSpace->x));
    [alignmentProvider alignmentPointForPoint:?];
    v49 = v48;
    v51 = v50;
    v52 = *&self->mOriginalTransformInRoot.c;
    *&v122.a = *&self->mOriginalTransformInRoot.a;
    *&v122.c = v52;
    *&v122.tx = *&self->mOriginalTransformInRoot.tx;
    CGAffineTransformInvert(&v123, &v122);
    b = v123.b;
    a = v123.a;
    c = v123.c;
    tx = v123.tx;
    ty = v123.ty;
    d = v123.d;
    v112 = vaddq_f64(*&self->mOriginalTransformInRoot.tx, vmlaq_n_f64(vmulq_n_f64(*&self->mOriginalTransformInRoot.c, self->mOriginalFixedPointNaturalSpace.y), *&self->mOriginalTransformInRoot.a, self->mOriginalFixedPointNaturalSpace.x));
    v54 = sub_10011F31C(v110.f64[0], v110.f64[1], v112.f64[0]);
    v56 = v55;
    v57 = [(CRLCanvasKnobTracker *)self rep];
    interactiveCanvasController4 = [v57 interactiveCanvasController];
    [interactiveCanvasController4 viewScale];
    [alignmentProvider snapDistanceForViewScale:?];
    v60 = v59;

    v61 = sub_100120090(v112.f64[0], v112.f64[1], v49, v51);
    v62 = sub_10011F2FC(v54, v56);
    v64 = fabs(v54);
    v65 = fabs(v56);
    if (v64 < v65 && v64 <= v60)
    {
      v33 = v63 < 0.0;
      v69 = -1.0;
      if (!v33)
      {
        v69 = 1.0;
      }

      v70 = 0.0;
      goto LABEL_51;
    }

    if (v65 <= v60)
    {
      v33 = v62 < 0.0;
      v70 = 1.0;
      if (v33)
      {
        v70 = -1.0;
      }

      v69 = 0.0;
LABEL_51:
      guideController = v118;
      v71 = sub_10011F340(v70, v69, v61);
      v119 = sub_10011F334(v71, v72, v112.f64[0]);
      v113 = v73;
      v74 = *&self->mOriginalTransformInRoot.c;
      *&v122.a = *&self->mOriginalTransformInRoot.a;
      *&v122.c = v74;
      *&v122.tx = *&self->mOriginalTransformInRoot.tx;
      CGAffineTransformInvert(&v123, &v122);
      v75 = vaddq_f64(*&v123.tx, vmlaq_n_f64(vmulq_n_f64(*&v123.c, v113), *&v123.a, v119));
      v67 = sub_10011F31C(v75.f64[0], v75.f64[1], p_mOriginalPathToBoundsOrigin->x);
    }

    else
    {
      v67 = tx + v51 * c + a * v49;
      v68 = ty + v51 * d + b * v49;
      guideController = v118;
    }

    p_mNewKnobCenterNaturalSpace->x = v67;
    self->mNewKnobCenterNaturalSpace.y = v68;
    v47 = 1;
LABEL_53:
  }

  else
  {
    v47 = 0;
  }

  [v6 dynamicallyMovedSmartShapeKnobTo:self withTracker:{p_mNewKnobCenterNaturalSpace->x, self->mNewKnobCenterNaturalSpace.y, *&tx, *&ty, *&d, *&b, *&a}];
  [(CRLConnectionLineKnobTracker *)self p_validateLayout];
  if (v7 && !(v47 & 1 | !self->mBeganAlignmentOperation))
  {
    [(CRLShapeLayout *)self->mResizingLayout alignmentFrame];
    v76 = v124.origin.x;
    v77 = v124.origin.y;
    width = v124.size.width;
    height = v124.size.height;
    v120 = vaddq_f64(*&self->mOriginalTransformInRoot.tx, vmlaq_n_f64(vmulq_n_f64(*&self->mOriginalTransformInRoot.c, self->mNewKnobCenterNaturalSpace.y), *&self->mOriginalTransformInRoot.a, p_mNewKnobCenterNaturalSpace->x));
    v80 = vabdd_f64(v120.f64[0], CGRectGetMinX(v124));
    v125.origin.x = v76;
    v125.origin.y = v77;
    v125.size.width = width;
    v125.size.height = height;
    v81 = vabdd_f64(v120.f64[0], CGRectGetMaxX(v125));
    v126.origin.x = v76;
    v126.origin.y = v77;
    v126.size.width = width;
    v126.size.height = height;
    v82 = vabdd_f64(v120.f64[1], CGRectGetMinY(v126));
    v127.origin.x = v76;
    v127.origin.y = v77;
    v127.size.width = width;
    v127.size.height = height;
    v83 = vabdd_f64(v120.f64[1], CGRectGetMaxY(v127));
    v84 = 7;
    if (v82 < v83)
    {
      v84 = 1;
    }

    v85 = 9;
    if (v82 < v83)
    {
      v85 = 3;
    }

    if (v80 >= v81)
    {
      v86 = v85;
    }

    else
    {
      v86 = v84;
    }

    v87 = [(CRLCanvasKnobTracker *)self rep];
    wantsGuidesWhileResizing = [v87 wantsGuidesWhileResizing];

    if (wantsGuidesWhileResizing)
    {
      resizeFromCenter2 = [(CRLConnectionLineKnobTracker *)self resizeFromCenter];
      v91 = CGPointZero.x;
      v90 = CGPointZero.y;
      [guideController snapRectToGuides:v86 forKnobTag:resizeFromCenter2 ^ 1 snapSize:0 snapWithBackgroundAlignmentProvider:0 isLine:v76 startPoint:v77 endPoint:{width, height, CGPointZero.x, v90, CGPointZero.x, v90}];
      v93 = v92;
      v95 = v94;
    }

    else
    {
      v91 = CGPointZero.x;
      v90 = CGPointZero.y;
      v93 = CGPointZero.x;
      v95 = v90;
    }

    if (v19 <= 3)
    {
      if (v19 <= 1)
      {
        if (v19)
        {
          if (v19 != 1)
          {
            goto LABEL_85;
          }

          goto LABEL_73;
        }

LABEL_82:
        v95 = 0.0;
        goto LABEL_85;
      }

      if (v19 != 2)
      {
LABEL_80:
        if (fabs(v93) <= fabs(v95))
        {
          v93 = -v95;
        }

        else
        {
          v95 = -v93;
        }

        goto LABEL_85;
      }

      goto LABEL_83;
    }

    if (v19 > 5)
    {
      if (v19 != 6)
      {
        if (v19 != 7)
        {
          goto LABEL_85;
        }

        goto LABEL_80;
      }

LABEL_83:
      v93 = 0.0;
      goto LABEL_85;
    }

    if (v19 == 4)
    {
      goto LABEL_82;
    }

LABEL_73:
    if (fabs(v93) <= fabs(v95))
    {
      v93 = v95;
    }

    v95 = v93;
LABEL_85:
    if (v93 != v91 || v95 != v90)
    {
      v96 = sub_10011F334(v120.f64[0], v120.f64[1], v93);
      v116 = v97;
      v121 = v96;
      v98 = *&self->mOriginalTransformInRoot.c;
      *&v122.a = *&self->mOriginalTransformInRoot.a;
      *&v122.c = v98;
      *&v122.tx = *&self->mOriginalTransformInRoot.tx;
      CGAffineTransformInvert(&v123, &v122);
      *p_mNewKnobCenterNaturalSpace = vaddq_f64(*&v123.tx, vmlaq_n_f64(vmulq_n_f64(*&v123.c, v116), *&v123.a, v121));
      if (((1 << v86) & 0x28A) == 0)
      {
        v99 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10137E990();
        }

        v100 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10137E9B8(v99, v100);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10137EA64();
        }

        v101 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EE10(v101, v99);
        }

        v102 = [NSString stringWithUTF8String:"[CRLConnectionLineKnobTracker moveKnobToRepPosition:]"];
        v103 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineKnobTracker.m"];
        [CRLAssertionHandler handleFailureInFunction:v102 file:v103 lineNumber:801 isFatal:0 description:"wrong knob type for line segment resize"];
      }

      [v6 dynamicallyMovedSmartShapeKnobTo:self withTracker:?];
      [(CRLConnectionLineKnobTracker *)self p_validateLayout];
    }
  }

  [v6 invalidateKnobPositions];

LABEL_11:
}

- (BOOL)didChangeGeometry
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v4 layout];
  v6 = sub_100013F00(v3, layout);

  v7 = objc_opt_class();
  connectedFrom = [v6 connectedFrom];
  info = [connectedFrom info];
  v10 = sub_100014370(v7, info);

  v11 = objc_opt_class();
  connectedTo = [v6 connectedTo];
  info2 = [connectedTo info];
  v14 = sub_100014370(v11, info2);

  if (v10)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;

  return v16;
}

- (void)endMovingKnob
{
  v57.receiver = self;
  v57.super_class = CRLConnectionLineKnobTracker;
  [(CRLCanvasKnobTracker *)&v57 endMovingKnob];
  v3 = objc_opt_class();
  v4 = [(CRLCanvasKnobTracker *)self rep];
  v5 = sub_100013F00(v3, v4);

  v6 = objc_opt_class();
  layout = [v5 layout];
  v8 = sub_100013F00(v6, layout);

  v9 = [(CRLCanvasKnobTracker *)self rep];
  interactiveCanvasController = [v9 interactiveCanvasController];

  commandController = [interactiveCanvasController commandController];
  mConnectedRepForHighlighting = self->mConnectedRepForHighlighting;
  self->mConnectedRepForHighlighting = 0;

  if (!self->mIsEnqueueingCommandsInRealTime)
  {
    v13 = [CRLCanvasCommandSelectionBehavior alloc];
    canvasEditor = [interactiveCanvasController canvasEditor];
    v15 = [(CRLCanvasCommandSelectionBehavior *)v13 initWithCanvasEditor:canvasEditor];

    [commandController openGroupWithSelectionBehavior:v15];
  }

  [v5 updateMagnetRenderables:&__NSArray0__struct withEmptyMagnets:&__NSArray0__struct withHighlightedMagnets:&__NSArray0__struct includeClippedPortions:0];
  [v5 dynamicMoveSmartShapeKnobDidEndWithTracker:self];
  [v8 setControlKnobPositionChangedFromRouting:0];
  knob = [(CRLCanvasKnobTracker *)self knob];
  renderable = [knob renderable];
  LODWORD(v18) = 1.0;
  [renderable setOpacity:v18];

  mOriginalConnectedFrom = self->mOriginalConnectedFrom;
  connectedFrom = [v8 connectedFrom];
  v21 = connectedFrom;
  if (mOriginalConnectedFrom == connectedFrom)
  {
    mOriginalConnectedTo = self->mOriginalConnectedTo;
    connectedTo = [v8 connectedTo];

    if (mOriginalConnectedTo == connectedTo)
    {
      v24 = 0;
      if (!self->mKnobMoved)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
  }

  v24 = 1;
LABEL_7:
  v54 = interactiveCanvasController;
  v56 = v5;
  connectionLineInfo = [v8 connectionLineInfo];
  v25 = objc_opt_class();
  connectedFrom2 = [v8 connectedFrom];
  info = [connectedFrom2 info];
  v55 = sub_100014370(v25, info);

  v28 = objc_opt_class();
  connectedTo2 = [v8 connectedTo];
  info2 = [connectedTo2 info];
  v31 = sub_100014370(v28, info2);

  v32 = objc_opt_class();
  info3 = [(CRLCanvasLayout *)self->mOriginalConnectedFrom info];
  v34 = sub_100014370(v32, info3);

  v35 = objc_opt_class();
  info4 = [(CRLCanvasLayout *)self->mOriginalConnectedTo info];
  v37 = sub_100014370(v35, info4);

  v52 = v34;
  if (v24)
  {
    [_TtC8Freeform21CRLConnectionLineItem commandActionStringForConnectingFrom:v55 oldConnectedFrom:v34 newConnectedTo:v31 oldConnectedTo:v37, v37];
  }

  else
  {
    [v56 actionStringForDrag];
  }
  v38 = ;
  [commandController setCurrentGroupActionString:v38];
  pathSource = [v8 pathSource];
  v40 = [pathSource copy];

  v41 = [CRLConnectionLineMagnet alloc];
  headMagnetType = [v8 headMagnetType];
  [v8 headMagnetNormalizedPosition];
  v43 = [(CRLConnectionLineMagnet *)v41 initWithType:headMagnetType normalizedPosition:?];
  [v40 setHeadMagnet:v43];

  v44 = [CRLConnectionLineMagnet alloc];
  tailMagnetType = [v8 tailMagnetType];
  [v8 tailMagnetNormalizedPosition];
  v46 = [(CRLConnectionLineMagnet *)v44 initWithType:tailMagnetType normalizedPosition:?];
  [v40 setTailMagnet:v46];

  v47 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:connectionLineInfo connectedItem:v55 chirality:0 pathSource:v40];
  v48 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:connectionLineInfo connectedItem:v31 chirality:1 pathSource:v40];
  [commandController enqueueCommand:v47];
  [commandController enqueueCommand:v48];
  [v8 setMagnetsAdjusted:0];

  v5 = v56;
  interactiveCanvasController = v54;
LABEL_11:
  [commandController closeGroup];
  if (self->mBeganAlignmentOperation)
  {
    interactiveCanvasController2 = [v5 interactiveCanvasController];
    guideController = [interactiveCanvasController2 guideController];
    [guideController endAlignmentOperation];
  }

  if (v24)
  {
    [v8 setConnectedFrom:self->mOriginalConnectedFrom];
    [v8 setConnectedTo:self->mOriginalConnectedTo];
    [v8 invalidateConnections];
  }
}

- (BOOL)shouldHideOtherKnobs
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasKnobTracker *)self rep];
  v5 = sub_100013F00(v3, v4);

  v6 = objc_opt_class();
  layout = [v5 layout];
  v8 = sub_100013F00(v6, layout);

  connectedPathSource = [v8 connectedPathSource];
  v10 = [connectedPathSource type] != 1;

  return v10;
}

- (void)p_validateLayout
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v2 layout];

  layoutController = [layout layoutController];
  [layoutController validateLayoutWithDependencies:layout];
}

- (id)connectionLineLayout
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v2 layout];

  return layout;
}

- (BOOL)p_isValidConnectionDestination:(id)destination
{
  destinationCopy = destination;
  connectionLineLayout = [(CRLConnectionLineKnobTracker *)self connectionLineLayout];
  LOBYTE(self) = [connectionLineLayout isValidConnectionDestination:destinationCopy forLineEnd:self->mKnobTag];

  return self;
}

@end