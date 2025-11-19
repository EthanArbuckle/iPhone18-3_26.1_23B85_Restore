@interface CRLConnectionLineAbstractLayout
+ (id)localizedDescriptionForConnectionType:(int64_t)a3;
- (BOOL)hasControlKnobsInStraightLine;
- (BOOL)isDraggable;
- (BOOL)isInvisible;
- (BOOL)isStraightLine;
- (BOOL)isValidConnectionDestination:(id)a3 forLineEnd:(unint64_t)a4;
- (BOOL)p_doesMainBoardContainInfo:(id)a3;
- (BOOL)p_isConnectedToLockedObjects;
- (BOOL)shouldDisplayGuides;
- (BOOL)supportsFlipping;
- (CGAffineTransform)connectedInfoGeometryTransform;
- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6;
- (CGPoint)g_getNormalizedPosition:(CGPoint)a3 inLayout:(id)a4;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (CGPoint)headMagnetCanvasPosition;
- (CGPoint)headMagnetNormalizedPosition;
- (CGPoint)i_accumulatedDrag;
- (CGPoint)p_getPositionForMagnet:(unint64_t)a3 forLayout:(id)a4 forEnd:(unint64_t)a5;
- (CGPoint)tailMagnetCanvasPosition;
- (CGPoint)tailMagnetNormalizedPosition;
- (CGPoint)unclippedHeadPoint;
- (CGPoint)unclippedTailPoint;
- (CGRect)boundsForStandardKnobs;
- (CGRect)frameForMiniFormatterPositioning;
- (CGSize)minimumSize;
- (CRLCanvasElementInfo)connectedFromInfo;
- (CRLCanvasElementInfo)connectedToInfo;
- (CRLCanvasElementInfo)temporaryConnectedFromInfo;
- (CRLCanvasElementInfo)temporaryConnectedToInfo;
- (CRLCanvasLayout)connectedFrom;
- (CRLCanvasLayout)connectedTo;
- (CRLCanvasLayout)headNearestLayoutForRouting;
- (CRLCanvasLayout)tailNearestLayoutForRouting;
- (CRLConnectionLineAbstractLayout)initWithInfo:(id)a3;
- (CRLConnectionLinePathSource)connectedPathSource;
- (double)distanceBetweenConnectionPoints;
- (double)outsetFrom;
- (double)outsetTo;
- (id)additionalLayoutsForRepCreation;
- (id)clipPath:(id)a3 onLayout:(id)a4 outset:(double)a5 reversed:(BOOL)a6 isValid:(BOOL *)a7;
- (id)commandForSettingConnectionType:(int64_t)a3;
- (id)commandToToggleConnectionType;
- (id)getClippedHeadPortion;
- (id)getClippedTailPortion;
- (id)layoutInfoGeometry;
- (id)p_infoForConnectingToInfo:(id)a3;
- (id)path;
- (id)pathSource;
- (id)reliedOnLayouts;
- (int64_t)connectionType;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3;
- (void)beginDynamicOutsetChange;
- (void)checkConnections;
- (void)connectedLayoutDisconnected:(id)a3;
- (void)connectedLayoutInvalidated:(id)a3;
- (void)dealloc;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4;
- (void)endDynamicOperation;
- (void)endDynamicOutsetChange;
- (void)i_willValidateLayout;
- (void)invalidateAndCleanupConnectedLayouts;
- (void)invalidateConnections;
- (void)invalidatePath;
- (void)invalidatePosition;
- (void)invalidateSize;
- (void)overrideHeadMagnetNormalizedPosition:(CGPoint)a3;
- (void)overrideTailMagnetNormalizedPosition:(CGPoint)a3;
- (void)p_resizeWithTransform:(CGAffineTransform *)a3 preservingAspectRatio:(BOOL)a4;
- (void)p_updateMagnetsFromInfo;
- (void)parentDidChange;
- (void)pauseDynamicTransformation;
- (void)processChangedProperty:(unint64_t)a3;
- (void)removeConnections;
- (void)setConnectedFrom:(id)a3;
- (void)setConnectedTo:(id)a3;
- (void)setHeadMagnetPosition:(CGPoint)a3;
- (void)setTailMagnetPosition:(CGPoint)a3;
- (void)setTemporaryConnectedFromInfo:(id)a3;
- (void)setTemporaryConnectedToInfo:(id)a3;
- (void)takeFreeTransformFromTracker:(id)a3;
- (void)takeSizeFromTracker:(id)a3;
- (void)updateConnectedPath;
@end

@implementation CRLConnectionLineAbstractLayout

- (CRLConnectionLineAbstractLayout)initWithInfo:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRLConnectionLineAbstractLayout;
  v5 = [(CRLShapeLayout *)&v10 initWithInfo:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = sub_100014370(v6, v4);
    v8 = [v7 connectionLinePathSource];
    BYTE6(v5->mDynamicOutsetType) = [v8 userDidSetControlPoint];

    HIBYTE(v5->mDynamicOutsetType) = 0;
  }

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained((&self->mConnectedPathSource + 3));

  if (WeakRetained)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013953AC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013953C0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101395464();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLConnectionLineAbstractLayout dealloc]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineAbstractLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:123 isFatal:0 description:"expected nil value for '%{public}s'", "mConnectedFrom"];
  }

  v7 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));

  if (v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139548C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013954B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101395558();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLConnectionLineAbstractLayout dealloc]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineAbstractLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:124 isFatal:0 description:"expected nil value for '%{public}s'", "mConnectedTo"];
  }

  v11.receiver = self;
  v11.super_class = CRLConnectionLineAbstractLayout;
  [(CRLShapeLayout *)&v11 dealloc];
}

- (double)outsetFrom
{
  if (BYTE3(self->mResizeControlPoints[2].x) == 1)
  {
    return *(&self->mResizeControlPoints[2].y + 3);
  }

  v3 = [(CRLShapeLayout *)self shapeInfo];
  v4 = [v3 pathSource];

  [v4 outsetFrom];
  v6 = v5;

  return v6;
}

- (double)outsetTo
{
  if (BYTE3(self->mResizeControlPoints[2].x) == 1)
  {
    return *(&self->mUseDynamicOutsets + 3);
  }

  v3 = [(CRLShapeLayout *)self shapeInfo];
  v4 = [v3 pathSource];

  [v4 outsetTo];
  v6 = v5;

  return v6;
}

- (void)setConnectedFrom:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101395580();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101395594();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101395624();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLConnectionLineAbstractLayout setConnectedFrom:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineAbstractLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:144 isFatal:0 description:"trying to connect a c-line to itself"];
  }

  objc_storeWeak((&self->mConnectedPathSource + 3), v4);
}

- (void)setConnectedTo:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139564C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101395660();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013956F0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLConnectionLineAbstractLayout setConnectedTo:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineAbstractLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:149 isFatal:0 description:"trying to connect a c-line to itself"];
  }

  objc_storeWeak((&self->mConnectedInfoGeometry + 3), v4);
}

- (void)setTemporaryConnectedFromInfo:(id)a3
{
  objc_storeWeak((&self->mConnectedFromInfo + 3), a3);

  [(CRLConnectionLineAbstractLayout *)self invalidateConnections];
}

- (void)setTemporaryConnectedToInfo:(id)a3
{
  objc_storeWeak((&self->mConnectedToInfo + 3), a3);

  [(CRLConnectionLineAbstractLayout *)self invalidateConnections];
}

- (CGPoint)g_getNormalizedPosition:(CGPoint)a3 inLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v4 = a4;
  v5 = v4;
  if (v4)
  {
    [v4 pureTransformInRoot];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  CGAffineTransformInvert(&v19, &v18);
  v17 = vaddq_f64(*&v19.tx, vmlaq_n_f64(vmulq_n_f64(*&v19.c, y), *&v19.a, x));
  v6 = [v5 pureGeometry];
  [v6 size];
  v7 = sub_10011ECB4();
  v10 = sub_100121720(v17.f64[0], v17.f64[1], v7, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)setHeadMagnetPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLConnectionLineAbstractLayout *)self connectedTo];

  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101395718();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139572C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013957BC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLConnectionLineAbstractLayout setHeadMagnetPosition:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineAbstractLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:169 isFatal:0 description:"Must have connected-to when setting head magnet position"];
  }

  v10 = [(CRLConnectionLineAbstractLayout *)self connectedTo];

  if (v10)
  {
    v11 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
    [(CRLConnectionLineAbstractLayout *)self g_getNormalizedPosition:v11 inLayout:x, y];
    *(&self->mHeadNearestMagnetTypeForRouting + 3) = v12;
    *(&self->mTailNearestMagnetTypeForRouting + 3) = v13;

    *(&self->mTailMagnetNormalizedPosition.x + 3) = x;
    *(&self->mTailMagnetNormalizedPosition.y + 3) = y;
    BYTE4(self->mDynamicOutsetType) = 0;
  }
}

- (void)setTailMagnetPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];

  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013957E4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013957F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101395888();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLConnectionLineAbstractLayout setTailMagnetPosition:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineAbstractLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:178 isFatal:0 description:"Must have connected-from when setting tail magnet position"];
  }

  v10 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];

  if (v10)
  {
    v11 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    [(CRLConnectionLineAbstractLayout *)self g_getNormalizedPosition:v11 inLayout:x, y];
    *(&self->mHeadMagnetNormalizedPosition.x + 3) = v12;
    *(&self->mHeadMagnetNormalizedPosition.y + 3) = v13;

    *(&self->mHeadMagnetCanvasPosition.x + 3) = x;
    *(&self->mHeadMagnetCanvasPosition.y + 3) = y;
    BYTE5(self->mDynamicOutsetType) = 0;
  }
}

- (void)overrideHeadMagnetNormalizedPosition:(CGPoint)a3
{
  *(&self->mHeadNearestMagnetTypeForRouting + 3) = *&a3.x;
  *(&self->mTailNearestMagnetTypeForRouting + 3) = *&a3.y;
  BYTE4(self->mDynamicOutsetType) = 1;
}

- (void)overrideTailMagnetNormalizedPosition:(CGPoint)a3
{
  *(&self->mHeadMagnetNormalizedPosition.x + 3) = a3.x;
  *(&self->mHeadMagnetNormalizedPosition.y + 3) = a3.y;
  BYTE5(self->mDynamicOutsetType) = 1;
}

- (id)getClippedHeadPortion
{
  v3 = [(CRLCanvasLayout *)self pureGeometry];
  [v3 size];
  if (v4 == 0.0 || fabs(v4) < 0.00999999978)
  {
    v5 = [(CRLCanvasLayout *)self pureGeometry];
    [v5 size];
    v7 = v6;

    v8 = 0;
    if (v7 == 0.0 || fabs(v7) < 0.00999999978)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v9 = *(&self->super.mDynamicPatternOffsetsBySubpath + 3);
  [(CRLConnectionLineAbstractLayout *)self headClipT];
  v8 = [v9 copyFromSegment:1 t:1 toSegment:? t:?];
  memset(&v20, 0, sizeof(v20));
  v10 = [(CRLCanvasLayout *)self pureGeometry];
  v11 = v10;
  if (v10)
  {
    [v10 transform];
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  v12 = [(CRLCanvasAbstractLayout *)self parent];

  if (v12)
  {
    v13 = [(CRLCanvasAbstractLayout *)self parent];
    v14 = [v13 geometryInParent];
    v15 = v14;
    if (v14)
    {
      [v14 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v17 = v20;
    CGAffineTransformConcat(&v19, &t1, &v17);
    v20 = v19;
  }

  v19 = v20;
  [v8 transformUsingAffineTransform:&v19];
LABEL_15:

  return v8;
}

- (id)getClippedTailPortion
{
  v3 = [(CRLCanvasLayout *)self pureGeometry];
  [v3 size];
  if (v4 == 0.0 || fabs(v4) < 0.00999999978)
  {
    v5 = [(CRLCanvasLayout *)self pureGeometry];
    [v5 size];
    v7 = v6;

    v8 = 0;
    if (v7 == 0.0 || fabs(v7) < 0.00999999978)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v9 = *(&self->super.mDynamicPatternOffsetsBySubpath + 3);
  [(CRLConnectionLineAbstractLayout *)self tailClipT];
  v8 = [v9 copyFromSegment:1 t:1 toSegment:0.0 t:v10];
  memset(&v21, 0, sizeof(v21));
  v11 = [(CRLCanvasLayout *)self pureGeometry];
  v12 = v11;
  if (v11)
  {
    [v11 transform];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  v13 = [(CRLCanvasAbstractLayout *)self parent];

  if (v13)
  {
    v14 = [(CRLCanvasAbstractLayout *)self parent];
    v15 = [v14 geometryInParent];
    v16 = v15;
    if (v15)
    {
      [v15 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v18 = v21;
    CGAffineTransformConcat(&v20, &t1, &v18);
    v21 = v20;
  }

  v20 = v21;
  [v8 transformUsingAffineTransform:&v20];
LABEL_15:

  return v8;
}

- (BOOL)isValidConnectionDestination:(id)a3 forLineEnd:(unint64_t)a4
{
  v8 = a3;
  v9 = objc_opt_class();
  v10 = [(CRLCanvasLayout *)self layoutController];
  v11 = [v10 canvas];
  v12 = [v11 canvasController];
  v13 = [v12 repForLayout:self];
  v14 = sub_100014370(v9, v13);

  v15 = [(CRLCanvasLayout *)self layoutController];
  v16 = [(CRLConnectionLineAbstractLayout *)v15 canvas];
  v17 = [v16 canvasController];
  v18 = [v17 repForLayout:v8];

  if (v8 == self)
  {
    goto LABEL_32;
  }

  if (a4 == 11)
  {
    v15 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    if (v15 != v8)
    {
      v5 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
      v19 = [v5 parent];
      v17 = v19;
      if (v19 != v8)
      {
        v20 = 0;
        goto LABEL_11;
      }
    }

LABEL_32:
    v28 = 0;
    goto LABEL_33;
  }

  if (a4 != 10)
  {
    v20 = 0;
    goto LABEL_11;
  }

  v21 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  if (v21 == v8)
  {

    goto LABEL_32;
  }

  v39 = v21;
  v4 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  v22 = [v4 parent];
  if (v22 == v8)
  {

    goto LABEL_32;
  }

  v38 = v22;
  v20 = 1;
LABEL_11:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && [v14 canConnectToRep:v18])
  {
    v37 = v4;
    v23 = [(CRLCanvasLayout *)v8 pureGeometry];
    [v23 size];
    if (v24 == 0.0 || fabs(v24) < 0.00999999978)
    {

      v27 = 1;
    }

    else
    {
      [(CRLCanvasLayout *)v8 pureGeometry];
      v25 = v36 = v5;
      [v25 size];
      v27 = fabs(v26) < 0.00999999978 || v26 == 0.0;

      v5 = v36;
    }

    v4 = v37;
    if ((v20 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_20:

    if (a4 != 11)
    {

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v27 = 1;
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_28:
  if (a4 != 11)
  {
    goto LABEL_31;
  }

LABEL_30:
LABEL_31:
  if (v27)
  {
    goto LABEL_32;
  }

  v30 = [v14 interactiveCanvasController];
  v31 = [v30 freehandDrawingToolkit];
  if ([v31 isInDrawingMode] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (-[CRLCanvasAbstractLayout parent](v8, "parent"), (v32 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v33 = v32;
    v34 = [(CRLCanvasAbstractLayout *)v8 parent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v28 = isKindOfClass ^ 1;
  }

  else
  {

    v28 = 1;
  }

LABEL_33:

  return v28 & 1;
}

- (void)i_willValidateLayout
{
  v3.receiver = self;
  v3.super_class = CRLConnectionLineAbstractLayout;
  [(CRLCanvasLayout *)&v3 i_willValidateLayout];
  [(CRLConnectionLineAbstractLayout *)self checkConnections];
}

- (id)reliedOnLayouts
{
  [(CRLConnectionLineAbstractLayout *)self checkConnections];
  v3 = +[NSMutableSet set];
  WeakRetained = objc_loadWeakRetained((&self->mConnectedPathSource + 3));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
    [v3 addObject:v5];
  }

  v6 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));

  if (v6)
  {
    v7 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
    [v3 addObject:v7];
  }

  return v3;
}

- (id)additionalLayoutsForRepCreation
{
  v2 = [(CRLConnectionLineAbstractLayout *)self reliedOnLayouts];
  v3 = [v2 allObjects];

  return v3;
}

- (BOOL)isDraggable
{
  v5.receiver = self;
  v5.super_class = CRLConnectionLineAbstractLayout;
  v3 = [(CRLStyledLayout *)&v5 isDraggable];
  if (v3)
  {
    LOBYTE(v3) = ![(CRLConnectionLineAbstractLayout *)self p_isConnectedToLockedObjects];
  }

  return v3;
}

- (BOOL)p_isConnectedToLockedObjects
{
  v3 = objc_opt_class();
  v4 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  v5 = [v4 info];
  v6 = sub_100014370(v3, v5);

  v7 = objc_opt_class();
  v8 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  v9 = [v8 info];
  v10 = sub_100014370(v7, v9);

  if ([v6 locked])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v10 locked];
  }

  return v11;
}

- (BOOL)supportsFlipping
{
  [(CRLConnectionLineAbstractLayout *)self checkConnections];
  v3 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
    v4 = v5 == 0;
  }

  return v4;
}

- (CGAffineTransform)connectedInfoGeometryTransform
{
  result = *(&self->mOriginalPathSource + 3);
  if (result)
  {
    return [(CGAffineTransform *)result transform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (double)distanceBetweenConnectionPoints
{
  WeakRetained = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
  if (!WeakRetained)
  {
    return -1.0;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));

  if (!v5)
  {
    return -1.0;
  }

  v6 = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
  v7 = [v6 geometry];
  [v7 center];
  v9 = v8;
  v11 = v10;

  v12 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
  v13 = [v12 geometry];
  [v13 center];
  v15 = v14;
  v17 = v16;

  return sub_100120090(v9, v11, v15, v17);
}

- (void)parentDidChange
{
  v3 = [(CRLCanvasAbstractLayout *)self parent];

  if (!v3)
  {
    [(CRLConnectionLineAbstractLayout *)self removeConnections];
  }

  [(CRLConnectionLineAbstractLayout *)self invalidatePath];
  v4.receiver = self;
  v4.super_class = CRLConnectionLineAbstractLayout;
  [(CRLBoardItemLayout *)&v4 parentDidChange];
}

- (void)processChangedProperty:(unint64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x24)
  {
    [(CRLConnectionLineAbstractLayout *)self invalidateAndCleanupConnectedLayouts];
  }

  else if (a3 == 21)
  {
    v5 = objc_opt_class();
    v6 = [(CRLCanvasLayout *)self info];
    v7 = [v6 layoutClass];

    if (v5 != v7)
    {
      v8 = [(CRLCanvasLayout *)self layoutController];
      [v8 invalidateLayoutForRecreation:self];
    }

    v9 = objc_opt_class();
    v10 = [(CRLConnectionLineAbstractLayout *)self pathSource];
    v11 = sub_100014370(v9, v10);

    BYTE6(self->mDynamicOutsetType) = [v11 userDidSetControlPoint];
  }

  else if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x26)
  {
    [(CRLConnectionLineAbstractLayout *)self invalidatePath];
    [(CRLShapeLayout *)self invalidateFrame];
    [(CRLConnectionLineAbstractLayout *)self p_updateMagnetsFromInfo];
  }

  v12.receiver = self;
  v12.super_class = CRLConnectionLineAbstractLayout;
  [(CRLShapeLayout *)&v12 processChangedProperty:a3];
}

- (void)p_updateMagnetsFromInfo
{
  v3 = [(CRLConnectionLineAbstractLayout *)self connectionLineInfo];

  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013958B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013958C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101395968();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLConnectionLineAbstractLayout p_updateMagnetsFromInfo]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineAbstractLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:334 isFatal:0 description:"invalid nil value for '%{public}s'", "self.connectionLineInfo"];
  }

  v7 = [(CRLConnectionLineAbstractLayout *)self connectionLineInfo];
  v8 = [v7 connectionLinePathSource];

  v9 = [v8 headMagnet];
  if (v9 && (v10 = v9, [(CRLConnectionLineAbstractLayout *)self connectedTo], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [v8 headMagnet];
    *&self->mDrawClippedTailPortion = [v12 magnetType];

    v13 = [v8 headMagnet];
    [v13 magnetNormalizedPosition];
    *(&self->mHeadNearestMagnetTypeForRouting + 3) = v14;
    *(&self->mTailNearestMagnetTypeForRouting + 3) = v15;
  }

  else
  {
    *&self->mDrawClippedTailPortion = 0;
  }

  v16 = [v8 tailMagnet];
  if (v16 && (v17 = v16, [(CRLConnectionLineAbstractLayout *)self connectedFrom], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
  {
    v19 = [v8 tailMagnet];
    *&self->mUserDidSetControlPoint = [v19 magnetType];

    v20 = [v8 tailMagnet];
    [v20 magnetNormalizedPosition];
    *(&self->mHeadMagnetNormalizedPosition.x + 3) = v21;
    *(&self->mHeadMagnetNormalizedPosition.y + 3) = v22;
  }

  else
  {
    *&self->mUserDidSetControlPoint = 0;
  }

  v23 = *&self->mDrawClippedTailPortion;
  if (v23)
  {
    if (v23 != 1)
    {
      LOBYTE(v23) = 0;
    }

    BYTE3(self->mDynamicOutsetTo) = v23;
  }

  else
  {
    v24 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
    BYTE3(self->mDynamicOutsetTo) = v24 != 0;
  }

  v25 = *&self->mUserDidSetControlPoint;
  if (v25)
  {
    if (v25 != 1)
    {
      LOBYTE(v25) = 0;
    }

    BYTE4(self->mDynamicOutsetTo) = v25;
  }

  else
  {
    v26 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    BYTE4(self->mDynamicOutsetTo) = v26 != 0;
  }
}

- (void)connectedLayoutInvalidated:(id)a3
{
  v4 = a3;
  if ([(CRLCanvasLayout *)self layoutState]!= 2 || ![(CRLCanvasLayout *)self isBeingTransformed])
  {
    if (v4)
    {
      v5 = [v4 layoutController];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [(CRLCanvasLayout *)self info];
      v7 = [v5 layoutsForInfo:v6];

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v13 + 1) + 8 * v11);
            if (v12 != self && [(CRLConnectionLineAbstractLayout *)v12 isMemberOfClass:objc_opt_class()])
            {
              [(CRLConnectionLineAbstractLayout *)v12 invalidateConnections];
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    [(CRLConnectionLineAbstractLayout *)self invalidatePath];
    [(CRLShapeLayout *)self invalidateFrame];
    *(&self->super.mCachedAlignmentFrame.originalCachedRect.size.width + 3) = 0;
    [(CRLBoardItemLayout *)self invalidate];
    [(CRLBoardItemLayout *)self invalidateWrap];
  }
}

- (void)connectedLayoutDisconnected:(id)a3
{
  v8 = a3;
  v4 = (&self->mConnectedPathSource + 3);
  WeakRetained = objc_loadWeakRetained((&self->mConnectedPathSource + 3));

  if (WeakRetained == v8 || (v4 = (&self->mConnectedInfoGeometry + 3), v6 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3)), v6, v7 = v8, v6 == v8))
  {
    objc_storeWeak(v4, 0);
    [(CRLConnectionLineAbstractLayout *)self invalidateConnections];
    v7 = v8;
  }
}

- (void)invalidateAndCleanupConnectedLayouts
{
  [(CRLConnectionLineAbstractLayout *)self invalidateConnections];
  v13 = [(CRLConnectionLineAbstractLayout *)self connectionLineInfo];
  v3 = [(CRLCanvasLayout *)self layoutController];
  v4 = [v3 boardItemOwner];

  if (v4)
  {
    v5 = [v13 getConnectedFromWithBoardItemOwner:v4];
    v6 = [v13 getConnectedToWithBoardItemOwner:v4];
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = [(CRLConnectionLineAbstractLayout *)self p_infoForConnectingToInfo:v5];
  v8 = [(CRLConnectionLineAbstractLayout *)self p_infoForConnectingToInfo:v6];
  WeakRetained = objc_loadWeakRetained((&self->mConnectedPathSource + 3));

  if (WeakRetained && !v7)
  {
    v10 = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
    [v10 removeConnectedLayout:self];

    objc_storeWeak((&self->mConnectedPathSource + 3), 0);
  }

  v11 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));

  if (v11 && !v8)
  {
    v12 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
    [v12 removeConnectedLayout:self];

    objc_storeWeak((&self->mConnectedInfoGeometry + 3), 0);
  }
}

- (void)removeConnections
{
  BYTE3(self->mOldConnectedFrom) = 0;
  WeakRetained = objc_loadWeakRetained((&self->mConnectedPathSource + 3));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
    [v4 removeConnectedLayout:self];
  }

  v5 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));

  if (v5)
  {
    v6 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
    [v6 removeConnectedLayout:self];
  }

  objc_storeWeak((&self->mConnectedPathSource + 3), 0);

  objc_storeWeak((&self->mConnectedInfoGeometry + 3), 0);
}

- (void)invalidateConnections
{
  BYTE3(self->mOldConnectedFrom) = 0;
  [(CRLConnectionLineAbstractLayout *)self invalidatePath];
  [(CRLShapeLayout *)self invalidateFrame];

  [(CRLBoardItemLayout *)self invalidate];
}

- (void)invalidatePosition
{
  v4.receiver = self;
  v4.super_class = CRLConnectionLineAbstractLayout;
  [(CRLCanvasLayout *)&v4 invalidatePosition];
  [(CRLConnectionLineAbstractLayout *)self invalidatePath];
  v3 = *(&self->mOriginalPathSource + 3);
  *(&self->mOriginalPathSource + 3) = 0;
}

- (void)invalidateSize
{
  v3.receiver = self;
  v3.super_class = CRLConnectionLineAbstractLayout;
  [(CRLCanvasLayout *)&v3 invalidateSize];
  [(CRLConnectionLineAbstractLayout *)self invalidatePath];
}

- (BOOL)p_doesMainBoardContainInfo:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100013F00(v5, v4);

  if (v6)
  {
    v7 = [(CRLCanvasLayout *)self layoutController];
    v8 = [v7 canvas];
    v9 = [v8 canvasController];
    v10 = [v9 editingCoordinator];
    v11 = [v10 mainBoard];

    v12 = [v6 id];
    v13 = [v11 containsObject:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)checkConnections
{
  v43 = [(CRLCanvasLayout *)self layoutController];
  v3 = [(CRLConnectionLineAbstractLayout *)self connectionLineInfo];
  v4 = [(CRLCanvasLayout *)self layoutController];
  v5 = [v4 boardItemOwner];

  WeakRetained = objc_loadWeakRetained((&self->mConnectedFromInfo + 3));
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained((&self->mConnectedFromInfo + 3));
    v8 = 0;
LABEL_3:
    v9 = 0;
    goto LABEL_9;
  }

  if (v5)
  {
    v8 = [v3 getConnectedFromWithBoardItemOwner:v5];
  }

  else
  {
    v8 = 0;
  }

  v7 = [(CRLConnectionLineAbstractLayout *)self p_infoForConnectingToInfo:v8];
  v10 = objc_loadWeakRetained((&self->mConnectedFrom + 3));

  if (v10 == v7)
  {
    goto LABEL_3;
  }

  objc_storeWeak((&self->mConnectedFrom + 3), v7);
  v9 = 1;
LABEL_9:
  v11 = objc_loadWeakRetained((&self->mConnectedToInfo + 3));

  if (v11)
  {
    v12 = objc_loadWeakRetained((&self->mConnectedToInfo + 3));
    v13 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    [(CRLConnectionLineAbstractLayout *)self invalidateConnections];
    v14 = &self->mOldConnectedFrom + 3;
LABEL_20:
    v41 = v13;
    v42 = v8;
    v39 = v5;
    v40 = v3;
    v18 = [(CRLCanvasAbstractLayout *)self parent];
    v19 = [v43 layoutForInfo:v7 childOfLayout:v18];
    v20 = [v43 layoutForInfo:v12 childOfLayout:v18];
    v21 = objc_loadWeakRetained((&self->mConnectedPathSource + 3));

    if (v19 != v21)
    {
      v22 = objc_loadWeakRetained((&self->mConnectedPathSource + 3));

      if (v22)
      {
        v23 = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
        [v23 removeConnectedLayout:self];
      }

      v24 = objc_storeWeak((&self->mConnectedPathSource + 3), v19);

      if (v19)
      {
        v25 = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
        [v25 addConnectedLayout:self];
      }
    }

    v26 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));

    if (v20 != v26)
    {
      v27 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));

      if (v27)
      {
        v28 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
        [v28 removeConnectedLayout:self];
      }

      v29 = objc_storeWeak((&self->mConnectedInfoGeometry + 3), v20);

      if (v20)
      {
        v30 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
        [v30 addConnectedLayout:self];
      }
    }

    v31 = (v12 != 0) ^ (v20 == 0);
    v32 = (v7 != 0) ^ (v19 == 0);
    v13 = v41;
    if (v12 == v41 && v7 == v42)
    {
      v33 = [(CRLConnectionLineAbstractLayout *)self p_doesMainBoardContainInfo:v12];
      v34 = [(CRLConnectionLineAbstractLayout *)self p_doesMainBoardContainInfo:v7];
      if ((v12 != 0) != (v20 == 0))
      {
        v31 = 1;
      }

      else
      {
        if (v20)
        {
          v35 = 1;
        }

        else
        {
          v35 = v12 == 0;
        }

        v36 = !v35;
        v31 = v36 & (v33 ^ 1);
      }

      v13 = v41;
      if ((v7 != 0) == (v19 == 0))
      {
        if (v19)
        {
          v37 = 1;
        }

        else
        {
          v37 = v7 == 0;
        }

        v38 = !v37;
        if ((v38 & (v34 ^ 1)) != 0)
        {
LABEL_44:
          if (v31)
          {
            *v14 = 1;
            [(CRLShapeLayout *)self invalidateExteriorWrap];
          }
        }

LABEL_46:
        [(CRLConnectionLineAbstractLayout *)self p_updateMagnetsFromInfo];

        v5 = v39;
        v3 = v40;
        v8 = v42;
        goto LABEL_47;
      }

      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  if (v5)
  {
    v15 = [v3 getConnectedToWithBoardItemOwner:v5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v12 = [(CRLConnectionLineAbstractLayout *)self p_infoForConnectingToInfo:?];
  v17 = objc_loadWeakRetained((&self->mConnectedTo + 3));

  if (v17 != v12)
  {
    objc_storeWeak((&self->mConnectedTo + 3), v12);
    v13 = v16;
    goto LABEL_19;
  }

  v13 = v16;
  if (v9)
  {
    goto LABEL_19;
  }

LABEL_11:
  v14 = &self->mOldConnectedFrom + 3;
  if ((BYTE3(self->mOldConnectedFrom) & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_47:
}

- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)clipPath:(id)a3 onLayout:(id)a4 outset:(double)a5 reversed:(BOOL)a6 isValid:(BOOL *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  [v12 length];
  v15 = v14;
  v16 = [v13 pathForClippingConnectionLines];
  v17 = v16;
  if (!v16 || ([v16 isEmpty] & 1) != 0)
  {
    v18 = 0;
    goto LABEL_54;
  }

  v58 = a7;
  if (a5 > 0.0)
  {
    WeakRetained = objc_loadWeakRetained((&self->mTemporaryConnectedFromInfo + 3));
    if (WeakRetained == v17)
    {
      v27 = *(&self->mCachedFromWrapPath + 3);

      if (v27 == a5)
      {
        v28 = 1363;
LABEL_16:
        v26 = *(&self->super.super.super.super.super.super.isa + v28);
        goto LABEL_17;
      }
    }

    else
    {
    }

    v20 = objc_loadWeakRetained((&self->mTemporaryConnectedToInfo + 3));
    if (v20 != v17)
    {

LABEL_9:
      [v17 setLineWidth:a5 + a5];
      [v17 setLineJoinStyle:1];
      [v17 setLineCapStyle:1];
      v21 = [v17 strokedCopy];
      v62[0] = v17;
      v62[1] = v21;
      v22 = [NSArray arrayWithObjects:v62 count:2];
      v23 = [CRLBezierPath uniteBezierPaths:v22];

      v24 = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
      if (v24 == v13)
      {
        objc_storeStrong((&self->mCachedFromOutset + 3), v23);
        objc_storeWeak((&self->mTemporaryConnectedFromInfo + 3), v17);
        v25 = 1347;
      }

      else
      {
        objc_storeStrong((&self->mCachedToOutset + 3), v23);
        objc_storeWeak((&self->mTemporaryConnectedToInfo + 3), v17);
        v25 = 1355;
      }

      *(&self->super.super.super.super.super.super.isa + v25) = a5;
      goto LABEL_20;
    }

    v29 = *(&self->mCachedToWrapPath + 3);

    if (v29 != a5)
    {
      goto LABEL_9;
    }

    v28 = 1371;
    goto LABEL_16;
  }

  v26 = v17;
LABEL_17:
  v23 = v26;
LABEL_20:
  v30 = [v23 copy];

  v31 = [v13 geometry];
  v32 = v31;
  v59 = v17;
  v60 = v13;
  if (v31)
  {
    [v31 transform];
  }

  else
  {
    memset(v61, 0, sizeof(v61));
  }

  [v30 transformUsingAffineTransform:v61];

  v33 = +[NSMutableArray array];
  [v12 addIntersectionsWithPath:v30 to:v33 allIntersections:1 reversed:0];
  if (![v33 count])
  {
    goto LABEL_45;
  }

  [v33 sortUsingSelector:"compareSegmentAndT:"];
  v34 = [v33 count];
  if ((v34 & 0x8000000000000000) != 0)
  {
    sub_101395990();
    v34 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v35 = v8 ? v34 - 1 : 0;
  v36 = v8 ? -1 : 1;
  if (v35 < v34)
  {
    v37 = 1.0 / v15;
    v38 = 1.0 - 1.0 / v15;
    while (1)
    {
      v18 = [v33 objectAtIndex:v35];
      v35 += v36;
      if (v35 >= v34)
      {
        if (v8)
        {
          v40 = 0;
          v42 = 0.0;
        }

        else
        {
          v40 = [v12 elementCount] - 1;
          v42 = 1.0;
        }
      }

      else
      {
        v39 = [v33 objectAtIndex:v35];
        v40 = [v39 segment];
        [v39 t];
        v42 = v41;
      }

      v43 = vcvtd_n_f64_s64(&v40[[(CRLPathIntersection *)v18 segment]], 1uLL);
      v44 = ceil(v43);
      v45 = floor(v43);
      if (v8)
      {
        v45 = v44;
      }

      v46 = v45;
      [(CRLPathIntersection *)v18 t];
      [v12 pointAt:v46 fromElement:(v42 + v47) * 0.5];
      if (([v30 containsPoint:?] & 1) == 0)
      {
        [(CRLPathIntersection *)v18 t];
        if (v48 > v37)
        {
          [(CRLPathIntersection *)v18 t];
          if (v49 < v38)
          {
            break;
          }
        }
      }

      if (v35 >= v34)
      {
        goto LABEL_45;
      }
    }

    v50 = v58;
    v17 = v59;
    *v58 = 1;
    v13 = v60;
    if (v18)
    {
      goto LABEL_53;
    }
  }

  else
  {
LABEL_45:
    v50 = v58;
    v17 = v59;
    *v58 = 1;
    v13 = v60;
  }

  if (!v8)
  {
    [v12 pointAt:1 fromElement:0.01];
    if ([v30 containsPoint:?])
    {
      v56 = [CRLPathIntersection alloc];
      v55 = [v12 elementCount] - 1;
      x = CGPointZero.x;
      y = CGPointZero.y;
      v54 = 1.0;
      v51 = v56;
      goto LABEL_51;
    }

LABEL_52:
    v18 = 0;
    goto LABEL_53;
  }

  [v12 pointAt:objc_msgSend(v12 fromElement:{"elementCount") - 1, 0.99}];
  if (![v30 containsPoint:?])
  {
    goto LABEL_52;
  }

  v51 = [CRLPathIntersection alloc];
  x = CGPointZero.x;
  y = CGPointZero.y;
  v54 = 0.0;
  v55 = 0;
LABEL_51:
  v18 = [(CRLPathIntersection *)v51 initWithSegment:v55 atT:v54 atPoint:x, y];
  *v50 = 0;
LABEL_53:

LABEL_54:

  return v18;
}

- (void)updateConnectedPath
{
  [(CRLConnectionLineAbstractLayout *)self checkConnections];
  WeakRetained = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
    v5 = [v4 parent];
    v6 = [(CRLCanvasAbstractLayout *)self parent];
    if (v5 == v6)
    {
      v7 = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
  if (v8)
  {
    v9 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
    v10 = [v9 parent];
    v11 = [(CRLCanvasAbstractLayout *)self parent];
    if (v10 == v11)
    {
      v12 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  p_vtable = CRLErrorImageProvider.vtable;
  v14 = objc_opt_class();
  v15 = v14;
  v16 = *(&self->mClippedBezierPath + 3);
  if (v16)
  {
    v17 = sub_100014370(v14, v16);
  }

  else
  {
    v18 = [(CRLShapeLayout *)self shapeInfo];
    v19 = [v18 pathSource];
    v17 = sub_100014370(v15, v19);
  }

  v20 = *(&self->super.mCachedPathSource + 3);
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v22 = [(CRLCanvasLayout *)self info];
    v21 = [v22 geometry];
  }

  v87 = xmmword_1014629F0;
  v88 = xmmword_1014629F0;
  v23 = [v17 bezierPath];
  [v23 getStartPoint:&v88 andEndPoint:&v87];

  if ([(CRLConnectionLineAbstractLayout *)self canEndpointsCoincide]|| !sub_10011ECC8(*&v87, *(&v87 + 1), *&v88, *(&v88 + 1)))
  {
    v27 = v21;
    v24 = v17;
  }

  else
  {
    v24 = [CRLConnectionLinePathSource pathSourceOfLength:100.0];

    v25 = [v24 bezierPath];
    [v25 getStartPoint:&v88 andEndPoint:&v87];

    v26 = [CRLCanvasInfoGeometry alloc];
    [(CRLCanvasInfoGeometry *)v21 position];
    v27 = [CRLCanvasInfoGeometry initWithPosition:v26 size:"initWithPosition:size:"];

    if (sub_10011ECC8(*&v87, *(&v87 + 1), *&v88, *(&v88 + 1)))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101395BA4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101395BCC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101395C5C();
      }

      v28 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v28);
      }

      v29 = [NSString stringWithUTF8String:"[CRLConnectionLineAbstractLayout updateConnectedPath]"];
      v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineAbstractLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:758 isFatal:0 description:"Head and tail should no longer be equal."];

      p_vtable = (CRLErrorImageProvider + 24);
    }
  }

  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  if (v27)
  {
    [(CRLCanvasInfoGeometry *)v27 transform];
    v31 = *(&v84 + 1);
    v32 = *&v84;
    v33 = *(&v85 + 1);
    v34 = *&v85;
    v36 = *(&v86 + 1);
    v35 = *&v86;
  }

  else
  {
    v36 = 0.0;
    v35 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
  }

  v37 = *(&v88 + 1) * v34 + v32 * *&v88;
  v38 = v35 + v37;
  v39 = v36 + *(&v88 + 1) * v33 + v31 * *&v88;
  v40 = v34 * *(&v87 + 1) + v32 * *&v87;
  v41 = v33 * *(&v87 + 1) + v31 * *&v87;
  if (BYTE3(self->mAcumulatedDrag.x) == 1)
  {
    v42 = *(&self->mAcumulatedDrag.y + 3);
    v43 = *&self->mUseResizePoints[3];
  }

  else
  {
    v42 = v35 + v37;
    v43 = v36 + *(&v88 + 1) * v33 + v31 * *&v88;
    if (v7)
    {
      [(CRLConnectionLineAbstractLayout *)self p_getPositionForMagnet:[(CRLConnectionLineAbstractLayout *)self tailMagnetType] forLayout:v7 forEnd:10];
      v42 = v44;
      v43 = v45;
      *(&self->mHeadMagnetCanvasPosition.x + 3) = v44;
      *(&self->mHeadMagnetCanvasPosition.y + 3) = v45;
    }
  }

  v46 = v35 + v40;
  v47 = v36 + v41;
  if (BYTE5(self->mAcumulatedDrag.x) == 1)
  {
    v48 = *(&self->mResizeControlPoints[1].x + 3);
    v49 = *(&self->mResizeControlPoints[1].y + 3);
  }

  else
  {
    v48 = v46;
    v49 = v47;
    if (v12)
    {
      [(CRLConnectionLineAbstractLayout *)self p_getPositionForMagnet:[(CRLConnectionLineAbstractLayout *)self headMagnetType] forLayout:v12 forEnd:11];
      v48 = v50;
      v49 = v51;
      *(&self->mTailMagnetNormalizedPosition.x + 3) = v50;
      *(&self->mTailMagnetNormalizedPosition.y + 3) = v51;
    }
  }

  if (![(CRLConnectionLineAbstractLayout *)self canEndpointsCoincide]&& sub_10011ECC8(v42, v43, v48, v49) || (sub_1001228B4() & 1) != 0 || sub_1001228B4())
  {
    BYTE5(self->mOldConnectedFrom) = 0;
    BYTE4(self->mOldConnectedFrom) = 0;
    objc_storeStrong((&self->mOriginalPathSource + 3), v27);
    v52 = [v24 copy];
    v53 = *(&self->mUnclippedBezierPath + 3);
    *(&self->mUnclippedBezierPath + 3) = v52;

    v54 = +[CRLBezierPath bezierPath];
    v55 = *(&self->super.mOkayToSetGeometryCount + 3);
    *(&self->super.mOkayToSetGeometryCount + 3) = v54;

    y = CGPointZero.y;
    [*(&self->super.mOkayToSetGeometryCount + 3) moveToPoint:{CGPointZero.x, y}];
    [*(&self->super.mOkayToSetGeometryCount + 3) lineToPoint:{CGPointZero.x, y}];
  }

  else
  {
    BYTE5(self->mOldConnectedFrom) = 1;
    v89 = v42;
    v90 = v43;
    if (BYTE4(self->mAcumulatedDrag.x) == 1)
    {
      v91 = *(self->mResizeControlPoints + 3);
    }

    else
    {
      [(CRLConnectionLineAbstractLayout *)self controlPointForPointA:v42 pointB:v43 andOriginalA:v48 originalB:v49, v38, v39, v46, v47];
      *&v91 = v57;
      *(&v91 + 1) = v58;
    }

    v92 = v48;
    v93 = v49;
    v59 = [(CRLConnectionLineAbstractLayout *)self createConnectedPathFrom:v7 to:v12 withControlPoints:&v89 clipPath:1];
    v81 = v7;
    v80 = [(CRLConnectionLineAbstractLayout *)self createConnectedPathFrom:v7 to:v12 withControlPoints:&v89 clipPath:0];
    [v59 bounds];
    v64 = [[CRLCanvasInfoGeometry alloc] initWithPosition:v60 size:v61, v62, v63];
    v65 = *(&self->mOriginalPathSource + 3);
    *(&self->mOriginalPathSource + 3) = v64;

    v66 = +[CRLBezierPath bezierPath];
    [v66 moveToPoint:{v89, v90}];
    [v66 lineToPoint:v91];
    [v66 lineToPoint:{v92, v93}];
    v67 = *(&self->mOriginalPathSource + 3);
    if (v67)
    {
      [v67 transform];
    }

    else
    {
      memset(&v82, 0, sizeof(v82));
    }

    CGAffineTransformInvert(&v83, &v82);
    [v66 transformUsingAffineTransform:&v83];
    v68 = [objc_alloc((p_vtable + 282)) initWithBezierPath:v66];
    v69 = *(&self->mUnclippedBezierPath + 3);
    *(&self->mUnclippedBezierPath + 3) = v68;

    [*(&self->mUnclippedBezierPath + 3) setType:{objc_msgSend(v24, "type")}];
    [v24 outsetFrom];
    [*(&self->mUnclippedBezierPath + 3) setOutsetFrom:?];
    [v24 outsetTo];
    [*(&self->mUnclippedBezierPath + 3) setOutsetTo:?];
    v70 = [[CRLConnectionLineMagnet alloc] initWithType:*&self->mDrawClippedTailPortion normalizedPosition:*(&self->mHeadNearestMagnetTypeForRouting + 3), *(&self->mTailNearestMagnetTypeForRouting + 3)];
    [*(&self->mUnclippedBezierPath + 3) setHeadMagnet:v70];

    v71 = [[CRLConnectionLineMagnet alloc] initWithType:*&self->mUserDidSetControlPoint normalizedPosition:*(&self->mHeadMagnetNormalizedPosition.x + 3), *(&self->mHeadMagnetNormalizedPosition.y + 3)];
    [*(&self->mUnclippedBezierPath + 3) setTailMagnet:v71];

    [*(&self->mUnclippedBezierPath + 3) setUserDidSetControlPoint:BYTE6(self->mDynamicOutsetType)];
    v72 = *&self->mDrawClippedTailPortion;
    if (v72)
    {
      v73 = v59;
      if (v72 != 1)
      {
        LOBYTE(v72) = 0;
      }

      BYTE3(self->mDynamicOutsetTo) = v72;
    }

    else
    {
      v74 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
      BYTE3(self->mDynamicOutsetTo) = v74 != 0;

      v73 = v59;
    }

    v75 = *&self->mUserDidSetControlPoint;
    if (v75)
    {
      if (v75 != 1)
      {
        LOBYTE(v75) = 0;
      }

      BYTE4(self->mDynamicOutsetTo) = v75;
    }

    else
    {
      v76 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
      BYTE4(self->mDynamicOutsetTo) = v76 != 0;
    }

    v77 = *(&self->mOriginalPathSource + 3);
    if (v77)
    {
      [v77 transform];
    }

    else
    {
      memset(&v82, 0, sizeof(v82));
    }

    CGAffineTransformInvert(&v83, &v82);
    [v73 transformUsingAffineTransform:&v83];
    objc_storeStrong((&self->super.mOkayToSetGeometryCount + 3), v73);
    v78 = *(&self->mOriginalPathSource + 3);
    if (v78)
    {
      [v78 transform];
    }

    else
    {
      memset(&v82, 0, sizeof(v82));
    }

    CGAffineTransformInvert(&v83, &v82);
    [(NSArray *)v80 transformUsingAffineTransform:&v83];
    v79 = *(&self->super.mDynamicPatternOffsetsBySubpath + 3);
    *(&self->super.mDynamicPatternOffsetsBySubpath + 3) = v80;

    v7 = v81;
  }
}

- (BOOL)isInvisible
{
  if (BYTE3(self->mOldConnectedFrom) == 1)
  {
    v2 = BYTE4(self->mOldConnectedFrom) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

- (CRLConnectionLinePathSource)connectedPathSource
{
  v3 = *(&self->mUnclippedBezierPath + 3);
  if (!v3 || (BYTE3(self->mOldConnectedFrom) & 1) == 0)
  {
    [(CRLConnectionLineAbstractLayout *)self updateConnectedPath];
    v3 = *(&self->mUnclippedBezierPath + 3);
  }

  return v3;
}

- (id)pathSource
{
  [(CRLConnectionLineAbstractLayout *)self checkConnections];

  return [(CRLConnectionLineAbstractLayout *)self connectedPathSource];
}

- (id)layoutInfoGeometry
{
  v3 = *(&self->mOriginalPathSource + 3);
  if (!v3 || (BYTE3(self->mOldConnectedFrom) & 1) == 0)
  {
    [(CRLConnectionLineAbstractLayout *)self updateConnectedPath];
    v3 = *(&self->mOriginalPathSource + 3);
  }

  return v3;
}

- (CGRect)boundsForStandardKnobs
{
  v3 = [(CRLConnectionLineAbstractLayout *)self path];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CRLShapeLayout *)self pathBounds];
  v13 = -v12;
  v15 = -v14;
  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;

  return CGRectOffset(*&v16, v13, v15);
}

- (void)invalidatePath
{
  v5.receiver = self;
  v5.super_class = CRLConnectionLineAbstractLayout;
  [(CRLShapeLayout *)&v5 invalidatePath];
  [(CRLBoardItemLayout *)self invalidate];
  if (![(CRLCanvasLayout *)self isPositionInvalid])
  {
    [(CRLConnectionLineAbstractLayout *)self invalidatePosition];
  }

  v3 = *(&self->mUnclippedBezierPath + 3);
  *(&self->mUnclippedBezierPath + 3) = 0;

  v4 = *(&self->super.mOkayToSetGeometryCount + 3);
  *(&self->super.mOkayToSetGeometryCount + 3) = 0;
}

- (CGRect)frameForMiniFormatterPositioning
{
  if (*(&self->mUnclippedBezierPath + 3))
  {
    v3 = *(&self->super.mCachedPathBoundsStruct.originalCachedRect.size.width + 3) == 0;
  }

  else
  {
    v3 = 1;
  }

  v17.receiver = self;
  v17.super_class = CRLConnectionLineAbstractLayout;
  [(CRLCanvasLayout *)&v17 frameForMiniFormatterPositioning];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v3)
  {
    v12 = *(&self->mUnclippedBezierPath + 3);
    *(&self->mUnclippedBezierPath + 3) = 0;

    *(&self->super.mCachedPathBoundsStruct.originalCachedRect.size.width + 3) = 0;
  }

  v13 = v5;
  v14 = v7;
  v15 = v9;
  v16 = v11;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)path
{
  v3 = *(&self->super.mOkayToSetGeometryCount + 3);
  if (!v3 || (BYTE3(self->mOldConnectedFrom) & 1) == 0)
  {
    [(CRLConnectionLineAbstractLayout *)self updateConnectedPath];
    v3 = *(&self->super.mOkayToSetGeometryCount + 3);
  }

  return v3;
}

- (CGPoint)unclippedHeadPoint
{
  [(CRLConnectionLineAbstractLayout *)self checkConnections];
  WeakRetained = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));

  if (WeakRetained)
  {
    v10 = 0.0;
    v11 = 0.0;
    v4 = [(CRLConnectionLineAbstractLayout *)self connectedPathSource:0];
    v5 = [v4 bezierPath];
    [v5 getStartPoint:&v8 andEndPoint:&v10];

    v6 = v10;
    v7 = v11;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CRLConnectionLineAbstractLayout;
    [(CRLShapeLayout *)&v9 unclippedHeadPoint];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)unclippedTailPoint
{
  [(CRLConnectionLineAbstractLayout *)self checkConnections];
  WeakRetained = objc_loadWeakRetained((&self->mConnectedPathSource + 3));

  if (WeakRetained)
  {
    v10 = 0.0;
    v11 = 0.0;
    v4 = [(CRLConnectionLineAbstractLayout *)self connectedPathSource:0];
    v5 = [v4 bezierPath];
    [v5 getStartPoint:&v10 andEndPoint:&v8];

    v6 = v10;
    v7 = v11;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CRLConnectionLineAbstractLayout;
    [(CRLShapeLayout *)&v9 unclippedTailPoint];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (BOOL)shouldDisplayGuides
{
  [(CRLConnectionLineAbstractLayout *)self checkConnections];
  WeakRetained = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
  if (WeakRetained)
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
    v4 = v5 == 0;
  }

  return v4;
}

- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3
{
  v28.receiver = self;
  v28.super_class = CRLConnectionLineAbstractLayout;
  [(CRLShapeLayout *)&v28 beginDynamicOperationWithRealTimeCommands:a3];
  v4 = [(CRLConnectionLineAbstractLayout *)self pathSource];
  v5 = [v4 copy];
  v6 = *(&self->mClippedBezierPath + 3);
  *(&self->mClippedBezierPath + 3) = v5;

  v7 = [(CRLConnectionLineAbstractLayout *)self pathSource];
  v8 = [v7 copy];
  v9 = *(&self->super.mCachedEditableBezierPathSource + 3);
  *(&self->super.mCachedEditableBezierPathSource + 3) = v8;

  v10 = [(CRLConnectionLineAbstractLayout *)self layoutInfoGeometry];
  v11 = *(&self->super.mDynamicPencilKitStrokePathCompactData + 3);
  *(&self->super.mDynamicPencilKitStrokePathCompactData + 3) = v10;

  WeakRetained = objc_loadWeakRetained((&self->mConnectedPathSource + 3));
  v13 = *(&self->mCachedFromOutsetWrapPath + 3);
  *(&self->mCachedFromOutsetWrapPath + 3) = WeakRetained;

  v14 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
  v15 = *(&self->mCachedToOutsetWrapPath + 3);
  *(&self->mCachedToOutsetWrapPath + 3) = v14;

  *(&self->mLooseEndPosition + 3) = CGPointZero;
  v16 = (&self->mOldConnectedTo + 3);
  v17 = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
  if (v17)
  {
    [(CRLConnectionLineAbstractLayout *)self unclippedTailPoint];
  }

  else
  {
    [(CRLConnectionLineAbstractLayout *)self unclippedHeadPoint];
  }

  *v16 = v18;
  *(&self->mValidLine + 1) = v19;

  v20 = [(CRLCanvasLayout *)self pureGeometry];
  v21 = v20;
  if (v20)
  {
    [v20 transform];
    v22 = v25;
    v23 = v26;
    v24 = v27;
  }

  else
  {
    v24 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  *v16 = vaddq_f64(v24, vmlaq_n_f64(vmulq_n_f64(v23, *(&self->mValidLine + 1)), v22, *v16));

  *(&self->mAcumulatedDrag.x + 3) = 0;
  BYTE5(self->mAcumulatedDrag.x) = 0;
}

- (void)endDynamicOperation
{
  v6.receiver = self;
  v6.super_class = CRLConnectionLineAbstractLayout;
  [(CRLShapeLayout *)&v6 endDynamicOperation];
  v3 = *(&self->mClippedBezierPath + 3);
  *(&self->mClippedBezierPath + 3) = 0;

  v4 = *(&self->mCachedFromOutsetWrapPath + 3);
  *(&self->mCachedFromOutsetWrapPath + 3) = 0;

  v5 = *(&self->mCachedToOutsetWrapPath + 3);
  *(&self->mCachedToOutsetWrapPath + 3) = 0;

  *(&self->mAcumulatedDrag.x + 3) = 0;
  BYTE5(self->mAcumulatedDrag.x) = 0;
}

- (CGPoint)i_accumulatedDrag
{
  v2 = *(&self->mLooseEndPosition.x + 3);
  v3 = *(&self->mLooseEndPosition.y + 3);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)pauseDynamicTransformation
{
  v21.receiver = self;
  v21.super_class = CRLConnectionLineAbstractLayout;
  [(CRLCanvasLayout *)&v21 pauseDynamicTransformation];
  if ([(CRLCanvasLayout *)self layoutState]== 2)
  {
    WeakRetained = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));
    if (WeakRetained)
    {
      [(CRLConnectionLineAbstractLayout *)self unclippedTailPoint];
    }

    else
    {
      [(CRLConnectionLineAbstractLayout *)self unclippedHeadPoint];
    }

    v16 = v5;
    v17 = v4;

    v6 = [(CRLCanvasLayout *)self pureGeometry];
    v7 = v6;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    if (v6)
    {
      [v6 transform];
      v9 = *&v20.a;
      v10 = *&v20.c;
      v8 = *&v20.tx;
    }

    v18 = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v10, *&v16), v9, *&v17));

    v11 = sub_10011F31C(v18.f64[0], v18.f64[1], *(&self->mOldConnectedTo + 3));
    *(&self->mLooseEndPosition.x + 3) = v11;
    *(&self->mLooseEndPosition.y + 3) = v12;
    memset(&v20, 0, sizeof(v20));
    CGAffineTransformMakeTranslation(&v20, v11, v12);
    v13 = *(&self->super.mDynamicPencilKitStrokePathCompactData + 3);
    v19 = v20;
    v14 = [v13 geometryByAppendingTransform:&v19];
    v15 = *(&self->super.mCachedPathSource + 3);
    *(&self->super.mCachedPathSource + 3) = v14;
  }
}

- (CGSize)minimumSize
{
  v3 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  if (v3 && (v4 = v3, [(CRLConnectionLineAbstractLayout *)self connectedFrom], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CRLConnectionLineAbstractLayout;
    [(CRLShapeLayout *)&v17 minimumSize];
    width = v8;
    height = v9;
  }

  v10 = [(CRLCanvasLayout *)self pureGeometry];
  [v10 size];
  v12 = v11;
  v14 = v13;

  v15 = fmin(width, v12);
  v16 = fmin(height, v14);
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)hasControlKnobsInStraightLine
{
  v3 = objc_opt_class();
  v4 = [(CRLConnectionLineAbstractLayout *)self pathSource];
  v5 = sub_100014370(v3, v4);

  [v5 getControlKnobPosition:10];
  v7 = v6;
  v9 = v8;
  [v5 getControlKnobPosition:12];
  v11 = v10;
  v13 = v12;
  [v5 getControlKnobPosition:11];
  v15 = v14;
  v17 = v16;
  if (sub_10011F010(v7, v9, v11, v13, v14, v16))
  {
    v18 = sub_10011F340(v7, v9, 0.25);
    v19 = sub_10011F31C(v11, v13, v18);
    v21 = v20;
    v22 = sub_10011F340(v15, v17, 0.25);
    v23 = sub_10011F31C(v19, v21, v22);
    v25 = sub_10011F340(v23, v24, 2.0);
    v27 = v26;
    v28 = sub_10011F31C(v7, v9, v25);
    v30 = v29;
    v31 = sub_10011F31C(v25, v27, v15);
    v33 = sub_10011F328(v28, v30, v31, v32) > 0.0;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (BOOL)isStraightLine
{
  if (![(CRLConnectionLineAbstractLayout *)self hasControlKnobsInStraightLine])
  {
    return 0;
  }

  v3 = objc_opt_class();
  v4 = [(CRLConnectionLineAbstractLayout *)self pathSource];
  v5 = sub_100014370(v3, v4);

  if ([v5 type] == 1)
  {
    [v5 getControlKnobPosition:10];
    v7 = v6;
    v9 = v8;
    [v5 getControlKnobPosition:11];
    v12 = 1;
    if (v7 != v10 && vabdd_f64(v7, v10) >= 0.00999999978)
    {
      v12 = vabdd_f64(v9, v11) < 0.00999999978 || v9 == v11;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (int64_t)connectionType
{
  v3 = objc_opt_class();
  v4 = [(CRLConnectionLineAbstractLayout *)self pathSource];
  v5 = sub_100014370(v3, v4);

  v6 = [v5 type];
  if (v6 == 1)
  {
    v7 = 2;
  }

  else if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(CRLConnectionLineAbstractLayout *)self hasControlKnobsInStraightLine]^ 1;
  }

  return v7;
}

+ (id)localizedDescriptionForConnectionType:(int64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"Straight";
  if (a3 == 2)
  {
    v6 = @"Corner";
  }

  if (a3 == 1)
  {
    v7 = @"Curve";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v4 localizedStringForKey:v7 value:0 table:0];

  return v8;
}

- (id)commandForSettingConnectionType:(int64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(CRLConnectionLineAbstractLayout *)self pathSource];
  v7 = sub_100014370(v5, v6);

  if (!v7)
  {
    v17 = 0;
    goto LABEL_12;
  }

  v8 = [v7 copy];
  v9 = v8;
  switch(a3)
  {
    case 2:
      [v8 setType:1];
      [(CRLConnectionLineAbstractLayout *)self getControlKnobPosition:12];
      goto LABEL_10;
    case 1:
      [v8 setType:0];
      if ([(CRLConnectionLineAbstractLayout *)self hasControlKnobsInStraightLine])
      {
        [v9 bend];
      }

      break;
    case 0:
      [v8 setType:0];
      [v7 getControlKnobPosition:10];
      v11 = v10;
      v13 = v12;
      [v7 getControlKnobPosition:11];
      v16 = sub_100120ABC(v11, v13, v14, v15, 0.5);
LABEL_10:
      [v9 setControlKnobPosition:12 toPoint:v16];
      break;
  }

  v17 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Set Connection Line Type" value:0 table:@"UndoStrings"];
  [(CRLCommandGroup *)v17 setActionString:v19];

  v20 = [_TtC8Freeform23CRLCommandSetPathSource alloc];
  v21 = [(CRLShapeLayout *)self shapeInfo];
  v22 = [(CRLCommandSetPathSource *)v20 initWithShapeItem:v21 pathSource:v9];

  v23 = [_TtC8Freeform25CRLCommandSetInfoGeometry alloc];
  v24 = [(CRLBoardItemLayout *)self boardItem];
  v25 = [(CRLConnectionLineAbstractLayout *)self layoutInfoGeometry];
  v26 = [(CRLCommandSetInfoGeometry *)v23 initWithBoardItem:v24 geometry:v25];

  v29[0] = v22;
  v29[1] = v26;
  v27 = [NSArray arrayWithObjects:v29 count:2];
  [(CRLCommandGroup *)v17 addCommands:v27];

LABEL_12:

  return v17;
}

- (id)commandToToggleConnectionType
{
  v3 = [(CRLConnectionLineAbstractLayout *)self connectionLineInfo];
  v4 = [v3 pathSource];
  v5 = [v4 type];
  if (v5 == 1)
  {
    v6 = [(CRLConnectionLineAbstractLayout *)self hasControlKnobsInStraightLine]^ 1;
  }

  else if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  v7 = [(CRLConnectionLineAbstractLayout *)self commandForSettingConnectionType:v6];

  return v7;
}

- (void)beginDynamicOutsetChange
{
  [(CRLConnectionLineAbstractLayout *)self beginDynamicOperationWithRealTimeCommands:0];
  v3 = objc_opt_class();
  v4 = [(CRLShapeLayout *)self shapeInfo];
  v5 = [v4 pathSource];
  v6 = sub_100014370(v3, v5);

  [(CRLConnectionLineAbstractLayout *)self setUseDynamicOutsets:1];
  [v6 outsetFrom];
  [(CRLConnectionLineAbstractLayout *)self setDynamicOutsetFrom:?];
  [v6 outsetTo];
  [(CRLConnectionLineAbstractLayout *)self setDynamicOutsetTo:?];
}

- (void)endDynamicOutsetChange
{
  [(CRLConnectionLineAbstractLayout *)self endDynamicOperation];
  [(CRLConnectionLineAbstractLayout *)self setUseDynamicOutsets:0];
  v3 = [(CRLCanvasLayout *)self layoutController];
  v4 = [v3 canvas];
  v17 = [v4 canvasController];

  v5 = objc_opt_class();
  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [v6 pathSource];
  v8 = sub_100014370(v5, v7);

  v9 = [v8 copy];
  [(CRLConnectionLineAbstractLayout *)self dynamicOutsetFrom];
  [v9 setOutsetFrom:?];
  [(CRLConnectionLineAbstractLayout *)self dynamicOutsetTo];
  [v9 setOutsetTo:?];
  v10 = [v17 commandController];
  v11 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Offset Setting" value:0 table:@"UndoStrings"];
  [(CRLCommandGroup *)v11 setActionString:v13];

  v14 = [_TtC8Freeform23CRLCommandSetPathSource alloc];
  v15 = [(CRLShapeLayout *)self shapeInfo];
  v16 = [(CRLCommandSetPathSource *)v14 initWithShapeItem:v15 pathSource:v9];

  [(CRLCommandGroup *)v11 addCommand:v16];
  [v10 enqueueCommand:v11];
}

- (void)takeSizeFromTracker:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLConnectionLineAbstractLayout;
  [(CRLShapeLayout *)&v8 takeSizeFromTracker:v4];
  if (v4)
  {
    [v4 transformForLayout:self];
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
  }

  -[CRLConnectionLineAbstractLayout p_resizeWithTransform:preservingAspectRatio:](self, "p_resizeWithTransform:preservingAspectRatio:", &v5, [v4 currentlyPreservingAspectRatio]);
}

- (void)p_resizeWithTransform:(CGAffineTransform *)a3 preservingAspectRatio:(BOOL)a4
{
  v52 = 0.0;
  v53 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  v7 = [*(&self->mClippedBezierPath + 3) bezierPath];
  [v7 getStartPoint:&v50 andEndPoint:&v52];

  [*(&self->mClippedBezierPath + 3) getControlKnobPosition:12];
  b = a3->b;
  c = a3->c;
  d = a3->d;
  tx = a3->tx;
  ty = a3->ty;
  v45 = ty + v53 * d + b * v52;
  v46 = tx + v53 * c + a3->a * v52;
  v43 = ty + d * v51 + b * v50;
  v44 = tx + c * v51 + a3->a * v50;
  v47 = ty + v13 * d + b * v14;
  v48 = tx + v13 * c + a3->a * v14;
  v15 = +[CRLBezierPath bezierPath];
  [v15 moveToPoint:{v44, v43}];
  [v15 lineToPoint:{v48, v47}];
  [v15 lineToPoint:{v46, v45}];
  if (!a4)
  {
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    if (!sub_10011ECC8(v16, v18, CGPointZero.x, CGPointZero.y))
    {
      v20 = -v17;
      v21 = -v19;
      CGAffineTransformMakeTranslation(&v49, v20, v21);
      [v15 transformUsingAffineTransform:&v49];
      v22 = *(&self->super.mCachedPathSource + 3);
      CGAffineTransformMakeTranslation(&v49, v20, v21);
      v23 = [v22 geometryByAppendingTransform:&v49];
      v24 = *(&self->super.mCachedPathSource + 3);
      *(&self->super.mCachedPathSource + 3) = v23;
    }
  }

  v25 = [[CRLConnectionLinePathSource alloc] initWithBezierPath:v15];
  -[CRLConnectionLinePathSource setType:](v25, "setType:", [*(&self->mClippedBezierPath + 3) type]);
  objc_storeStrong((&self->super.mCachedEditableBezierPathSource + 3), v25);
  v26 = [(CRLConnectionLineAbstractLayout *)self connectedFromInfo];

  if (!v26)
  {
    BYTE3(self->mAcumulatedDrag.x) = 1;
    v27 = *(&self->super.mCachedPathSource + 3);
    if (v27)
    {
      [v27 transform];
      v28 = *&v49.a;
      v29 = *&v49.c;
      v30 = *&v49.tx;
    }

    else
    {
      v30 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
    }

    *(&self->mAcumulatedDrag.y + 3) = vaddq_f64(v30, vmlaq_n_f64(vmulq_n_f64(v29, v43), v28, v44));
  }

  v31 = [(CRLConnectionLineAbstractLayout *)self connectedFromInfo];
  if (!v31 || (v32 = v31, [(CRLConnectionLineAbstractLayout *)self connectedToInfo], v33 = objc_claimAutoreleasedReturnValue(), v33, v32, !v33))
  {
    BYTE4(self->mAcumulatedDrag.x) = 1;
    v34 = *(&self->super.mCachedPathSource + 3);
    if (v34)
    {
      [v34 transform];
      v35 = *&v49.a;
      v36 = *&v49.c;
      v37 = *&v49.tx;
    }

    else
    {
      v37 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
    }

    *(self->mResizeControlPoints + 3) = vaddq_f64(v37, vmlaq_n_f64(vmulq_n_f64(v36, v47), v35, v48));
  }

  v38 = [(CRLConnectionLineAbstractLayout *)self connectedToInfo];

  if (!v38)
  {
    BYTE5(self->mAcumulatedDrag.x) = 1;
    v39 = *(&self->super.mCachedPathSource + 3);
    if (v39)
    {
      [v39 transform];
      v40 = *&v49.a;
      v41 = *&v49.c;
      v42 = *&v49.tx;
    }

    else
    {
      v42 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
    }

    *(&self->mResizeControlPoints[1] + 3) = vaddq_f64(v42, vmlaq_n_f64(vmulq_n_f64(v41, v45), v40, v46));
  }

  [(CRLConnectionLineAbstractLayout *)self invalidatePath];
  [(CRLShapeLayout *)self invalidateFrame];
}

- (void)takeFreeTransformFromTracker:(id)a3
{
  v3.receiver = self;
  v3.super_class = CRLConnectionLineAbstractLayout;
  [(CRLShapeLayout *)&v3 takeFreeTransformFromTracker:a3];
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v4 = [(CRLConnectionLineAbstractLayout *)self connectedPathSource];
  [v4 getControlKnobPosition:a3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4
{
  y = a3.y;
  x = a3.x;
  v26.receiver = self;
  v26.super_class = CRLConnectionLineAbstractLayout;
  v7 = a4;
  [(CRLShapeLayout *)&v26 dynamicallyMovedSmartShapeKnobTo:v7 withTracker:x, y];
  v8 = [(CRLCanvasLayout *)self originalGeometry];
  v9 = v8;
  if (v8)
  {
    [v8 transform];
    v10 = v20;
    v11 = v21;
    v12 = v22;
    v13 = v23;
    v14 = v24;
    v15 = v25;
  }

  else
  {
    v15 = 0.0;
    v13 = 0.0;
    v11 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
  }

  v16 = v14 + y * v12 + v10 * x;

  v17 = [v7 knob];

  v18 = [v17 tag];
  if (v18 == 10)
  {
    BYTE3(self->mAcumulatedDrag.x) = 1;
    *(&self->mAcumulatedDrag.y + 3) = v16;
    v19 = &self->mUseResizePoints[3];
    goto LABEL_10;
  }

  if (v18 == 12)
  {
    BYTE4(self->mAcumulatedDrag.x) = 1;
    *(&self->mResizeControlPoints[0].x + 3) = v16;
    v19 = (&self->mResizeControlPoints[0].y + 3);
    goto LABEL_10;
  }

  if (v18 == 11)
  {
    BYTE5(self->mAcumulatedDrag.x) = 1;
    *(&self->mResizeControlPoints[1].x + 3) = v16;
    v19 = (&self->mResizeControlPoints[1].y + 3);
LABEL_10:
    *v19 = v15 + y * v13 + v11 * x;
  }

  [(CRLConnectionLineAbstractLayout *)self updateConnectedPath];
  [(CRLConnectionLineAbstractLayout *)self invalidatePosition];
}

- (id)p_infoForConnectingToInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasLayout *)self layoutController];
  v6 = [v5 canvas];

  v7 = [v6 delegate];
  v14 = sub_1003035DC(v7, 1, v8, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLConnectedInfoReplacing);

  v15 = v4;
  if (v14)
  {
    v15 = [v14 infoToConnectToForConnectionLineConnectedToInfo:v4];
  }

  return v15;
}

- (CGPoint)p_getPositionForMagnet:(unint64_t)a3 forLayout:(id)a4 forEnd:(unint64_t)a5
{
  v8 = a4;
  v9 = v8;
  v10 = 0.0;
  if (a3 <= 3)
  {
    if (a3 < 2)
    {
      [v8 centerForConnecting];
      goto LABEL_24;
    }

    if (a3 == 2)
    {
      [v8 cardinalNorthPosition];
      goto LABEL_24;
    }

    v11 = 0.0;
    if (a3 == 3)
    {
      [v8 cardinalEastPosition];
LABEL_24:
      v11 = v12;
      v10 = v13;
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (a3 - 6 < 2)
  {
    v14 = &OBJC_IVAR___CRLConnectionLineAbstractLayout_mHeadMagnetNormalizedPosition;
    if (a5 == 10)
    {
      v14 = &OBJC_IVAR___CRLConnectionLineAbstractLayout_mTailMagnetNormalizedPosition;
    }

    v15 = (self + *v14);
    v16 = *v15;
    v17 = v15[1];
    if (a5 == 10)
    {
      if ((self->mDynamicOutsetType & 0x10000000000) == 0)
      {
LABEL_19:
        v18 = [v8 pureGeometry];
        goto LABEL_20;
      }
    }

    else if (a5 != 11 || BYTE4(self->mDynamicOutsetType) != 1)
    {
      goto LABEL_19;
    }

    v18 = [v8 geometry];
LABEL_20:
    v19 = v18;
    if (v18)
    {
      [v18 fullTransform];
      v21 = v28;
      v20 = v29;
      v23 = v30;
      v22 = v31;
      v25 = v32;
      v24 = v33;
    }

    else
    {
      v24 = 0.0;
      v22 = 0.0;
      v20 = 0.0;
      v25 = 0.0;
      v23 = 0.0;
      v21 = 0.0;
    }

    v11 = v25 + v17 * v23 + v21 * v16;
    v10 = v24 + v17 * v22 + v20 * v16;

    goto LABEL_27;
  }

  if (a3 == 4)
  {
    [v8 cardinalSouthPosition];
    goto LABEL_24;
  }

  v11 = 0.0;
  if (a3 == 5)
  {
    [v8 cardinalWestPosition];
    goto LABEL_24;
  }

LABEL_27:

  v26 = v11;
  v27 = v10;
  result.y = v27;
  result.x = v26;
  return result;
}

- (CRLCanvasLayout)connectedFrom
{
  WeakRetained = objc_loadWeakRetained((&self->mConnectedPathSource + 3));

  return WeakRetained;
}

- (CRLCanvasLayout)connectedTo
{
  WeakRetained = objc_loadWeakRetained((&self->mConnectedInfoGeometry + 3));

  return WeakRetained;
}

- (CRLCanvasElementInfo)connectedFromInfo
{
  WeakRetained = objc_loadWeakRetained((&self->mConnectedFrom + 3));

  return WeakRetained;
}

- (CRLCanvasElementInfo)connectedToInfo
{
  WeakRetained = objc_loadWeakRetained((&self->mConnectedTo + 3));

  return WeakRetained;
}

- (CRLCanvasElementInfo)temporaryConnectedFromInfo
{
  WeakRetained = objc_loadWeakRetained((&self->mConnectedFromInfo + 3));

  return WeakRetained;
}

- (CRLCanvasElementInfo)temporaryConnectedToInfo
{
  WeakRetained = objc_loadWeakRetained((&self->mConnectedToInfo + 3));

  return WeakRetained;
}

- (CGPoint)headMagnetNormalizedPosition
{
  v2 = *(&self->mHeadNearestMagnetTypeForRouting + 3);
  v3 = *(&self->mTailNearestMagnetTypeForRouting + 3);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)tailMagnetNormalizedPosition
{
  v2 = *(&self->mHeadMagnetNormalizedPosition.x + 3);
  v3 = *(&self->mHeadMagnetNormalizedPosition.y + 3);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)headMagnetCanvasPosition
{
  v2 = *(&self->mTailMagnetNormalizedPosition.x + 3);
  v3 = *(&self->mTailMagnetNormalizedPosition.y + 3);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)tailMagnetCanvasPosition
{
  v2 = *(&self->mHeadMagnetCanvasPosition.x + 3);
  v3 = *(&self->mHeadMagnetCanvasPosition.y + 3);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CRLCanvasLayout)headNearestLayoutForRouting
{
  WeakRetained = objc_loadWeakRetained((&self->mHeadClipT + 3));

  return WeakRetained;
}

- (CRLCanvasLayout)tailNearestLayoutForRouting
{
  WeakRetained = objc_loadWeakRetained((&self->mTailClipT + 3));

  return WeakRetained;
}

@end