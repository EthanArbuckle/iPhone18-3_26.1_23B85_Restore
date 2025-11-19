@interface CRLCanvasLayout
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)descendentWrappablesContainsWrappable:(id)a3;
- (BOOL)i_anyAncestorCurrentlyBeingFreeTransformedWantsNormalLayoutDuringDynamicFreeTransform;
- (BOOL)i_anyAncestorCurrentlyBeingRotatedWantsNormalLayoutDuringDynamicRotation;
- (BOOL)isBeingTransformed;
- (BOOL)isInGroup;
- (BOOL)isInTopLevelContainerForEditing;
- (BOOL)isSelectable;
- (BOOL)layoutHasValidFrameForCulling;
- (BOOL)resizeMayChangeAspectRatio;
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)a3;
- (CGAffineTransform)originalPureTransformInRoot;
- (CGAffineTransform)originalTransformInRoot;
- (CGAffineTransform)pureTransformInRoot;
- (CGPoint)alignmentFrameOriginForFixingInterimPosition;
- (CGPoint)cardinalEastPosition;
- (CGPoint)cardinalNorthPosition;
- (CGPoint)cardinalSouthPosition;
- (CGPoint)cardinalWestPosition;
- (CGPoint)centerForConnecting;
- (CGPoint)centerForRotation;
- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)a3;
- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)a3;
- (CGPoint)findNewEdgeMagnetCanvasPositionForConnectionLine:(id)a3 forLineEnd:(unint64_t)a4 withCanvasPosition:(CGPoint)a5;
- (CGPoint)getCardinalPositionFromType:(unint64_t)a3;
- (CGPoint)getCardinalPositionWithParentTransformFromType:(unint64_t)a3;
- (CGPoint)nearestEdgePointOnWrapPathFromPoint:(CGPoint)a3;
- (CGPoint)p_convertNormalizedPositionFromLayoutToPureGeomtry:(CGPoint)a3 forLayout:(id)a4;
- (CGPoint)p_findFirstEdgePointIntersectionOnWrapPathWithLine:(id)a3 forLineEnd:(unint64_t)a4 withDistanceToPoint:(double *)a5 withOverridenHeadPosition:(CGPoint)a6 withOverridenTailPosition:(CGPoint)a7;
- (CGPoint)p_findNearestEdgePointOnWrapPathFromPoint:(CGPoint)a3 withSearchThreshold:(double)a4 withDistanceToPoint:(double *)a5;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3;
- (CGRect)boundsForStandardKnobs;
- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)a3;
- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)a3;
- (CGRect)frameForCaptionPositioning;
- (CGRect)frameForCulling;
- (CGRect)frameForCullingWithBaseFrame:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4;
- (CGRect)frameForMiniFormatterPositioning;
- (CGRect)i_takeDirtyRect;
- (CGRect)initialBoundsForStandardKnobs;
- (CGRect)p_frameForCullingWithAdditionalTransform:(CGAffineTransform *)a3;
- (CGRect)rectInRootForSelectionPath:(id)a3;
- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)a3;
- (CGRect)shadowedNaturalBoundsWithoutOffset;
- (CGSize)maximumFrameSizeForChild:(id)a3;
- (CGSize)maximumInlineFrameSize;
- (CGSize)minimumSize;
- (CGSize)p_newMaxInlineFrameSize;
- (CRLBezierPath)i_wrapPath;
- (CRLCanvasLayout)initWithInfo:(id)a3;
- (CRLCanvasLayoutGeometry)dynamicGeometry;
- (CRLCanvasLayoutGeometry)inspectorGeometry;
- (CRLCanvasLayoutGeometry)originalPureGeometry;
- (CRLCanvasLayoutGeometry)pureGeometry;
- (CRLCanvasLayoutGeometry)pureGeometryInParent;
- (CRLCanvasLayoutGeometry)pureGeometryInRoot;
- (CRLSearchReference)searchTargetSearchReference;
- (NSArray)childSearchTargets;
- (NSArray)dependentLayouts;
- (double)inspectorGeometryAngleInDegrees;
- (double)percentOfUnscaledRectContainedInParentRep:(CGRect)a3;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withTransform:(CGAffineTransform *)a4;
- (id)commandForSettingAspectRatioLocked:(BOOL)a3;
- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3;
- (id)commandToFlipWithOrientation:(int)a3;
- (id)commandsForAdjustingMagnetsFromClineLayouts;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)a3;
- (id)computeLayoutGeometry;
- (id)convexHullPath;
- (id)layoutController;
- (id)layoutGeometryFromInfo;
- (id)newCommandToMoveByOffset:(CGPoint)a3 whenDistributingLayoutsByOffsets:(id)a4;
- (id)rootLayout;
- (id)unscaledPositionsForCollaboratorHUDForSelectionPath:(id)a3;
- (unint64_t)p_directionForCollaboratorCursorKnobTag:(unint64_t)a3;
- (void)addConnectedLayout:(id)a3;
- (void)adjustCustomMagnetPositions;
- (void)beginDrag;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3;
- (void)beginFreeTransformWithTracker:(id)a3;
- (void)calculateAndSetPointsToSearchReference:(id)a3;
- (void)dragBy:(CGPoint)a3;
- (void)dragByUnscaled:(CGPoint)a3;
- (void)endDynamicOperation;
- (void)enqueueCommandsForAdjustingPathSourcesAfterRoutingChanges;
- (void)i_recursivelyClearInvalidationCache;
- (void)invalidate;
- (void)invalidateCacheForMagnets;
- (void)invalidateChildren;
- (void)invalidateFrame;
- (void)invalidateFrameForCulling;
- (void)invalidatePosition;
- (void)invalidateSize;
- (void)layoutSearchForHyperlinkWithHitBlock:(id)a3;
- (void)layoutSearchForNearbyElementsWithHitBlock:(id)a3;
- (void)p_adjustCardinalMagnetTValuesIfNeededWithPadding:(double)a3 forLowestT:(double *)a4 forHighestT:(double *)a5;
- (void)p_adjustEdgeMagnetPosition:(id)a3 forLineEnd:(unint64_t)a4;
- (void)p_adjustFloatingMagnetPosition:(id)a3 forLineEnd:(unint64_t)a4;
- (void)p_calculateClampModelValuesWithAdditionalTransform:(CGAffineTransform *)a3 andPerformBlock:(id)a4;
- (void)p_calculateMagnetPositionsIfNeeded;
- (void)p_getIntersectionsForTestPath:(id)a3 withLowestT:(double *)a4 withHighestT:(double *)a5;
- (void)p_invalidateConnectedLayouts;
- (void)p_invalidateDescendentWrapPaths;
- (void)p_invalidateDescendentWrapPathsInRoot;
- (void)p_recursiveInvalidate;
- (void)p_registerWithLayoutController:(id)a3;
- (void)p_unregisterWithLayoutController:(id)a3;
- (void)p_updateDescendentWrapPathsWithTransform:(CGAffineTransform *)a3;
- (void)processChangedProperty:(unint64_t)a3;
- (void)processChanges:(id)a3;
- (void)recursivelyAddLayoutAndDependentLayoutsToValidateSet:(id)a3;
- (void)setDynamicGeometry:(id)a3;
- (void)setInitialBoundsForStandardKnobs:(CGRect)a3;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setParent:(id)a3;
- (void)takeFreeTransformFromTracker:(id)a3;
- (void)takeRotationFromTracker:(id)a3;
- (void)takeSizeFromTracker:(id)a3;
- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5;
- (void)unregisterFromLayoutController;
- (void)updateChildrenFromInfo;
- (void)validate;
@end

@implementation CRLCanvasLayout

- (CRLCanvasLayout)initWithInfo:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CRLCanvasLayout;
  v6 = [(CRLCanvasAbstractLayout *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 74), a3);
    v7[154] |= 7u;
    *(v7 + 210) = vdupq_n_s64(0x7FF8000000000000uLL);
    size = CGRectNull.size;
    *(v7 + 226) = CGRectNull.origin;
    *(v7 + 242) = size;
  }

  return v7;
}

- (CRLCanvasLayoutGeometry)dynamicGeometry
{
  if (*(&self->mInvalidFlags + 2))
  {
    v3 = [(CRLCanvasAbstractLayout *)self geometry];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDynamicGeometry:(id)a3
{
  v4 = a3;
  if (!*(&self->mInvalidFlags + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135CDE8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135CDFC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135CE90();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvasLayout setDynamicGeometry:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:141 isFatal:0 description:"invalid nil value for '%{public}s'", "mBaseGeometry"];
  }

  [(CRLCanvasAbstractLayout *)self setGeometry:v4];
  [(CRLCanvasLayout *)self invalidate];
}

- (CGRect)frameForCulling
{
  v3 = (&self->mMaximumInlineFrameSize.height + 2);
  v10.origin.x = *(&self->mMaximumInlineFrameSize.height + 2);
  v10.origin.y = *(&self->mCachedFrameForCulling.origin.x + 2);
  v10.size.width = *(&self->mCachedFrameForCulling.origin.y + 2);
  v10.size.height = *(&self->mCachedFrameForCulling.size.width + 2);
  if (CGRectIsNull(v10))
  {
    v4 = *&CGAffineTransformIdentity.c;
    v9[0] = *&CGAffineTransformIdentity.a;
    v9[1] = v4;
    v9[2] = *&CGAffineTransformIdentity.tx;
    [(CRLCanvasLayout *)self p_frameForCullingWithAdditionalTransform:v9];
    *v3 = v5;
    v3[1] = v6;
    v3[2] = v7;
    v3[3] = v8;
  }

  else
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = v3[2];
    v8 = v3[3];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3
{
  [(CRLCanvasAbstractLayout *)self frame];
  v4 = *&a3->c;
  *&v5.a = *&a3->a;
  *&v5.c = v4;
  *&v5.tx = *&a3->tx;
  return CGRectApplyAffineTransform(v6, &v5);
}

- (CGRect)p_frameForCullingWithAdditionalTransform:(CGAffineTransform *)a3
{
  v5 = *&a3->c;
  v11 = *&a3->a;
  v12 = v5;
  v13 = *&a3->tx;
  [(CRLCanvasLayout *)self baseFrameForFrameForCullingWithAdditionalTransform:&v11];
  v6 = *&a3->c;
  v11 = *&a3->a;
  v12 = v6;
  v13 = *&a3->tx;
  [(CRLCanvasLayout *)self frameForCullingWithBaseFrame:&v11 additionalTransform:?];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)frameForCullingWithBaseFrame:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  memset(&v30, 0, sizeof(v30));
  v10 = [(CRLCanvasAbstractLayout *)self geometry];
  v11 = v10;
  if (v10)
  {
    [v10 transform];
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
  }

  t1 = v30;
  memset(&v29, 0, sizeof(v29));
  v12 = *&a4->c;
  *&t2.a = *&a4->a;
  *&t2.c = v12;
  *&t2.tx = *&a4->tx;
  CGAffineTransformConcat(&v29, &t1, &t2);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [(CRLCanvasAbstractLayout *)self children];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        if ([v18 shouldBeIncludedInParentFrameForCulling])
        {
          t1 = v29;
          [v18 p_frameForCullingWithAdditionalTransform:&t1];
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v33 = CGRectUnion(v32, v35);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)invalidate
{
  if ((BYTE6(self->mDirtyRect.size.height) & 1) == 0)
  {
    v3 = [(CRLCanvasLayout *)self layoutController];
    [v3 invalidateLayout:self];

    if ([(CRLCanvasLayout *)self layoutState])
    {
      v4 = (BYTE6(self->mDirtyRect.size.height) & 0xFE) + 1;
    }

    else
    {
      v4 = BYTE6(self->mDirtyRect.size.height) & 0xFE;
    }

    BYTE6(self->mDirtyRect.size.height) = v4;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(CRLCanvasLayout *)self dependentLayouts];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) invalidate];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(CRLCanvasLayout *)self p_invalidateConnectedLayouts];
    [(CRLCanvasLayout *)self invalidateFrameForCulling];
  }
}

- (void)i_recursivelyClearInvalidationCache
{
  [(CRLCanvasLayout *)self i_clearInvalidationCache];
  v4 = [(CRLCanvasAbstractLayout *)self children];
  [v4 makeObjectsPerformSelector:a2];
}

- (void)invalidatePosition
{
  *(&self->mInvalidatingSize + 2) |= 1u;
  [(CRLCanvasLayout *)self invalidateCacheForMagnets];

  [(CRLCanvasLayout *)self invalidate];
}

- (void)invalidateSize
{
  if ((BYTE6(self->mDirtyRect.size.height) & 2) == 0 && (BYTE2(self->mDirtyRect.size.height) & 1) == 0)
  {
    BYTE2(self->mDirtyRect.size.height) = 1;
    *(&self->mInvalidatingSize + 2) |= 2u;
    BYTE6(self->mDirtyRect.size.height) = BYTE6(self->mDirtyRect.size.height) & 0xFD | (2 * ([(CRLCanvasLayout *)self layoutState]!= 0));
    v3 = [(CRLCanvasLayout *)self dependentLayouts];
    v4 = [(CRLCanvasLayout *)self bidirectionalSizeDependentLayouts];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          if ([v10 shouldInvalidateSizeWhenInvalidateSizeOfReliedOnLayout:self])
          {
            [v10 invalidateSize];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * j) invalidateSize];
        }

        v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    [(CRLCanvasLayout *)self invalidateCacheForMagnets];
    [(CRLCanvasLayout *)self invalidate];
    BYTE2(self->mDirtyRect.size.height) = 0;
  }
}

- (void)invalidateFrame
{
  [(CRLCanvasLayout *)self invalidateSize];

  [(CRLCanvasLayout *)self invalidatePosition];
}

- (void)invalidateCacheForMagnets
{
  *(&self->mInvalidatingSize + 2) |= 4u;
  v2 = *(&self->mCardinalWestPosition.y + 2);
  *(&self->mCardinalWestPosition.y + 2) = 0.0;
}

- (void)invalidateFrameForCulling
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasAbstractLayout *)self parent];
  v8 = sub_100014370(v3, v4);

  v5 = v8;
  if (v8)
  {
    v6 = [v8 layoutHasValidFrameForCulling];
    v5 = v8;
    if (v6)
    {
      [v8 invalidateFrameForCulling];
      v5 = v8;
    }
  }

  size = CGRectNull.size;
  *(&self->mMaximumInlineFrameSize.height + 2) = CGRectNull.origin;
  *(&self->mCachedFrameForCulling.origin.y + 2) = size;
}

- (BOOL)layoutHasValidFrameForCulling
{
  v3.origin.x = *(&self->mMaximumInlineFrameSize.height + 2);
  v3.origin.y = *(&self->mCachedFrameForCulling.origin.x + 2);
  v3.size.width = *(&self->mCachedFrameForCulling.origin.y + 2);
  v3.size.height = *(&self->mCachedFrameForCulling.size.width + 2);
  return !CGRectIsNull(v3);
}

- (void)invalidateChildren
{
  v3 = [(CRLCanvasLayout *)self layoutController];
  [v3 invalidateChildrenOfLayout:self];
}

- (void)updateChildrenFromInfo
{
  v3 = [(CRLCanvasLayout *)self childInfosForChildLayouts];
  v4 = [(CRLCanvasAbstractLayout *)self children];
  v5 = [v3 count];
  v26 = v4;
  if (v5 == [v4 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v32;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v13 = [v26 objectAtIndexedSubscript:v9];
          v14 = [v13 info];

          if (v14 != v12)
          {

            goto LABEL_12;
          }

          ++v9;
        }

        v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
LABEL_12:
    v6 = +[NSMutableArray array];
    v15 = [(CRLCanvasLayout *)self layoutController];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v3;
    v16 = v3;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * j);
          v22 = [v15 layoutForInfo:v21 childOfLayout:{self, v25}];
          if (!v22)
          {
            v22 = [objc_alloc(+[CRLCanvasLayoutController effectiveLayoutClassForInfo:](CRLCanvasLayoutController effectiveLayoutClassForInfo:{v21)), "initWithInfo:", v21}];
            if (!v22)
            {
              continue;
            }
          }

          v23 = v22;
          [v6 addObject:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    [(CRLCanvasAbstractLayout *)self setChildren:v6];
    [(CRLCanvasLayout *)self invalidate];
    [(CRLCanvasLayout *)self i_clearInvalidationCache];

    v3 = v25;
  }

  v24 = [(CRLCanvasAbstractLayout *)self children];
  [v24 makeObjectsPerformSelector:"updateChildrenFromInfo"];
}

- (void)unregisterFromLayoutController
{
  v3 = [(CRLCanvasLayout *)self layoutController];

  if (v3)
  {
    v4 = [(CRLCanvasLayout *)self layoutController];
    [(CRLCanvasLayout *)self p_unregisterWithLayoutController:v4];
  }
}

- (void)setParent:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasAbstractLayout *)self parent];

  if (v5 != v4)
  {
    [(CRLCanvasLayout *)self parentWillChangeTo:v4];
    v6 = [(CRLCanvasAbstractLayout *)self root];
    v7 = [v4 root];
    if (v6 != v7)
    {
      v8 = [(CRLCanvasLayout *)self layoutController];
      if (v8)
      {
        [(CRLCanvasLayout *)self p_unregisterWithLayoutController:v8];
      }
    }

    v12.receiver = self;
    v12.super_class = CRLCanvasLayout;
    [(CRLCanvasAbstractLayout *)&v12 setParent:v4];
    v9 = objc_opt_class();
    v10 = sub_100014370(v9, v4);
    [v10 i_clearInvalidationCache];

    if (v6 != v7)
    {
      v11 = [(CRLCanvasLayout *)self layoutController];
      if (v11)
      {
        [(CRLCanvasLayout *)self p_registerWithLayoutController:v11];
        [(CRLCanvasLayout *)self p_recursiveInvalidate];
        [(CRLCanvasLayout *)self i_recursivelyClearInvalidationCache];
      }
    }

    [(CRLCanvasLayout *)self parentDidChange];
    if (v7)
    {
      [(CRLCanvasLayout *)self p_invalidateConnectedLayouts];
    }
  }
}

- (id)rootLayout
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasAbstractLayout *)self root];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (id)layoutController
{
  v2 = [(CRLCanvasLayout *)self rootLayout];
  v3 = [v2 layoutController];

  return v3;
}

- (void)validate
{
  if ([(CRLCanvasLayout *)self invalidGeometry])
  {
    v3 = [(CRLCanvasLayout *)self computeLayoutGeometry];
    [(CRLCanvasAbstractLayout *)self setGeometry:v3];

    v4 = [(CRLCanvasAbstractLayout *)self parent];
    if (v4 && [(CRLCanvasAbstractLayout *)self shouldApplyOffsetWhenComputingLayoutGeometry])
    {
      [v4 offsetToApplyWhenComputingLayoutGeometryOfChild:self];
      if (v6 != CGPointZero.x || v5 != CGPointZero.y)
      {
        [(CRLCanvasAbstractLayout *)self offsetGeometryBy:?];
      }
    }

    *(&self->mInvalidatingSize + 2) &= 0xFCu;
  }

  [(CRLCanvasLayout *)self invalidateFrameForCulling];

  [(CRLCanvasLayout *)self i_clearInvalidationCache];
}

- (id)layoutGeometryFromInfo
{
  if (!*(&self->super._lastInterimPositionYSet + 1))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135CEB8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135CECC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135CF54();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasLayout layoutGeometryFromInfo]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:475 isFatal:0 description:"Layouts must either override computeLayoutGeometry, or have a non-nil info to query for geometry"];
  }

  v6 = [CRLCanvasLayoutGeometry alloc];
  v7 = [(CRLCanvasLayout *)self info];
  v8 = [v7 geometry];
  v9 = [(CRLCanvasLayoutGeometry *)v6 initWithInfoGeometry:v8];

  return v9;
}

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)a3
{
  if (a3)
  {
    [a3 fullTransform];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  v3 = [CRLCanvasInfoGeometry geometryFromFullTransform:v5];

  return v3;
}

- (BOOL)isInGroup
{
  v2 = [(CRLCanvasAbstractLayout *)self parent];
  if (v2)
  {
    v3 = v2;
    do
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      v5 = [v3 parent];

      v3 = v5;
    }

    while (v5);
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)isInTopLevelContainerForEditing
{
  v3 = [(CRLCanvasAbstractLayout *)self parent];
  v4 = [(CRLCanvasLayout *)self layoutController];
  v5 = [v4 canvas];
  v6 = [v5 canvasController];

  v7 = [v6 editorController];
  v8 = [v7 selectionPath];
  v9 = [v8 mostSpecificSelectionOfClass:objc_opt_class()];

  if (v9)
  {
    v10 = objc_opt_class();
    v11 = [v9 boardItems];
    v12 = [v11 anyObject];
    v13 = [v6 layoutForInfo:v12];
    v14 = sub_100014370(v10, v13);

    if (v3)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v14 = 0;
  if (!v3)
  {
LABEL_6:
    v20 = 1;
    goto LABEL_12;
  }

  while (1)
  {
LABEL_3:
    v15 = objc_opt_class();
    v16 = sub_100014370(v15, v3);
    v17 = v16;
    if (v16)
    {
      v21 = [v16 info];
      v22 = [v14 info];
      v20 = v21 == v22;

      goto LABEL_11;
    }

    v18 = [v3 root];

    if (v18 == v3)
    {
      break;
    }

    v19 = [v3 parent];

    v3 = v19;
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  v20 = v14 == 0;
LABEL_11:

LABEL_12:
  return v20;
}

- (CGPoint)alignmentFrameOriginForFixingInterimPosition
{
  if (*(&self->mInfo + 2) == 2)
  {
    v4 = *(&self->mFreeTransformState + 2);
    v5 = *(&self->mBaseAlignmentFrameOriginForFixingInterimPosition.x + 2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = CRLCanvasLayout;
    [(CRLCanvasAbstractLayout *)&v6 alignmentFrameOriginForFixingInterimPosition];
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3
{
  if (*(&self->mInfo + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135CF7C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135CF90();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135D018();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLCanvasLayout beginDynamicOperationWithRealTimeCommands:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:579 isFatal:0 description:"Should not begin a dynamic operation while already in one."];
  }

  [(CRLCanvasLayout *)self boundsForStandardKnobs];
  *(&self->mBaseGeometry + 2) = v7;
  *(&self->mInitialBoundsForStandardKnobs.origin.x + 2) = v8;
  *(&self->mInitialBoundsForStandardKnobs.origin.y + 2) = v9;
  *(&self->mInitialBoundsForStandardKnobs.size.width + 2) = v10;
  if (*(&self->mInvalidFlags + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135D040();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135D068();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135D0FC();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLCanvasLayout beginDynamicOperationWithRealTimeCommands:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:583 isFatal:0 description:"expected nil value for '%{public}s'", "mBaseGeometry"];
  }

  v14 = [(CRLCanvasAbstractLayout *)self geometry];
  v15 = [v14 copy];
  v16 = *(&self->mInvalidFlags + 2);
  *(&self->mInvalidFlags + 2) = v15;

  if (*(&self->mIsInRealTimeDynamicOperation + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135D124();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135D14C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135D1E0();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLCanvasLayout beginDynamicOperationWithRealTimeCommands:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:586 isFatal:0 description:"expected nil value for '%{public}s'", "mInfoGeometryBeforeDynamicOperation"];
  }

  v20 = [(CRLCanvasLayout *)self info];
  v21 = [v20 geometry];
  v22 = [v21 copy];
  v23 = *(&self->mIsInRealTimeDynamicOperation + 2);
  *(&self->mIsInRealTimeDynamicOperation + 2) = v22;

  *(&self->mInfo + 2) = 1;
  BYTE2(self->mConvexHullPath) = a3;
}

- (void)endDynamicOperation
{
  v3 = *(&self->mInvalidFlags + 2);
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135D208();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135D21C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135D2B0();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLCanvasLayout endDynamicOperation]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:594 isFatal:0 description:"invalid nil value for '%{public}s'", "mBaseGeometry"];

    v3 = *(&self->mInvalidFlags + 2);
  }

  *(&self->mInvalidFlags + 2) = 0;

  v7 = *(&self->mIsInRealTimeDynamicOperation + 2);
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135D2D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135D300();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135D394();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLCanvasLayout endDynamicOperation]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:597 isFatal:0 description:"invalid nil value for '%{public}s'", "mInfoGeometryBeforeDynamicOperation"];

    v7 = *(&self->mIsInRealTimeDynamicOperation + 2);
  }

  *(&self->mIsInRealTimeDynamicOperation + 2) = 0;

  *(&self->mInfo + 2) = 0;
  BYTE2(self->mConvexHullPath) = 0;
  [(CRLCanvasLayout *)self i_clearInvalidationCache];
}

- (BOOL)isBeingTransformed
{
  v3 = [(CRLCanvasLayout *)self layoutController];
  v4 = [v3 canvas];
  v5 = [v4 canvasController];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 dynamicOperationController];
  v7 = [v6 currentlyTransformingReps];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) layout];

        if (v12 == self)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)beginDrag
{
  v3 = (&self->mFreeTransformState + 2);
  [(CRLCanvasLayout *)self alignmentFrameOriginForFixingInterimPosition];
  *v3 = v4;
  v3[1] = v5;
  *(&self->mInfo + 2) = 2;
}

- (void)dragByUnscaled:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLCanvasAbstractLayout *)self parent];

  if (v6)
  {
    v7 = [(CRLCanvasAbstractLayout *)self parent];
    v8 = v7;
    if (v7)
    {
      [v7 transformInRoot];
    }

    else
    {
      memset(&v10, 0, sizeof(v10));
    }

    CGAffineTransformInvert(&v11, &v10);
    x = sub_10012119C(&v11, x, y);
    y = v9;
  }

  [(CRLCanvasLayout *)self dragBy:x, y, *&v10.a, *&v10.c, *&v10.tx];
}

- (void)dragBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != CGPointZero.x || a3.y != CGPointZero.y)
  {
    if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
    {
      v7 = [(CRLCanvasLayout *)self layoutController];
      v8 = [v7 canvas];

      v9 = [v8 canvasController];
      v10 = [v9 commandController];

      v11 = [v8 repForLayout:self];
      v12 = [(CRLCanvasLayout *)self info];
      v13 = [v12 geometry];
      CGAffineTransformMakeTranslation(&v32, x, y);
      v14 = [v13 geometryByAppendingTransform:&v32];
      v15 = [v11 newCommandToApplyGeometry:v14 toInfo:v12];
      [v10 enqueueCommand:v15];
    }

    if (!*(&self->mInvalidFlags + 2))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135D3BC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135D3E4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135D478();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v16);
      }

      v17 = [NSString stringWithUTF8String:"[CRLCanvasLayout dragBy:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:655 isFatal:0 description:"invalid nil value for '%{public}s'", "mBaseGeometry"];
    }

    v19 = [(CRLCanvasAbstractLayout *)self geometry];
    v20 = [v19 geometryByTranslatingBy:{x, y}];

    [(CRLCanvasLayout *)self setDynamicGeometry:v20];
    [(CRLCanvasLayout *)self p_invalidateConnectedLayouts];
    v21 = [(CRLCanvasLayout *)self layoutController];
    v22 = [v21 canvas];
    [v22 canvasInvalidatedForLayout:self];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = [(CRLCanvasLayout *)self dependentLayoutsForDrag];
    v24 = [v23 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v29;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v28 + 1) + 8 * i) invalidateFrame];
        }

        v25 = [v23 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v25);
    }
  }
}

- (CGAffineTransform)originalTransformInRoot
{
  v4 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v4;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = self;
  if (result)
  {
    v6 = result;
    do
    {
      v7 = objc_opt_class();
      v8 = sub_100014370(v7, v6);
      v9 = [v8 originalGeometry];

      if (v9)
      {
        [v8 originalGeometry];
      }

      else
      {
        [(CGAffineTransform *)v6 geometry];
      }
      v10 = ;
      v11 = v10;
      if (v10)
      {
        v12 = *&retstr->c;
        v15[0] = *&retstr->a;
        v15[1] = v12;
        v15[2] = *&retstr->tx;
        [v10 transformByConcatenatingTransformTo:v15];
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
      }

      v13 = v17;
      *&retstr->a = v16;
      *&retstr->c = v13;
      *&retstr->tx = v18;

      v14 = [(CGAffineTransform *)v6 parent];

      v6 = v14;
    }

    while (v14);
  }

  return result;
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)a3
{
  v7 = *(&self->mIsInRealTimeDynamicOperation + 2);
  if (![v7 heightValid] || !objc_msgSend(v7, "widthValid") || (objc_msgSend(v7, "size"), v8 == 0.0) || fabs(v8) < 0.00000001 || (objc_msgSend(v7, "size"), v9 == 0.0) || fabs(v9) < 0.00000001)
  {
    v12 = *&a4->c;
    *&retstr->a = *&a4->a;
    *&retstr->c = v12;
    *&retstr->tx = *&a4->tx;
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
    v10 = [(CRLCanvasLayout *)self originalPureGeometry];
    v11 = v10;
    if (v10)
    {
      [v10 fullTransform];
    }

    else
    {
      memset(&v18, 0, sizeof(v18));
    }

    CGAffineTransformInvert(&v19, &v18);

    memset(&v18, 0, sizeof(v18));
    if (v7)
    {
      [v7 fullTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    t1 = v19;
    CGAffineTransformConcat(&v18, &t1, &t2);
    t2 = v18;
    CGAffineTransformInvert(&t1, &t2);
    v14 = *&a4->c;
    *&v15.a = *&a4->a;
    *&v15.c = v14;
    *&v15.tx = *&a4->tx;
    CGAffineTransformConcat(&t2, &t1, &v15);
    t1 = v18;
    CGAffineTransformConcat(retstr, &t2, &t1);
  }

  return result;
}

- (void)takeRotationFromTracker:(id)a3
{
  v4 = a3;
  if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
  {
    v5 = [(CRLCanvasLayout *)self layoutController];
    v6 = [v5 canvas];

    v7 = [v6 canvasController];
    v8 = [v7 commandController];

    v9 = [v6 repForLayout:self];
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    if (v4)
    {
      [v4 rotateTransform];
    }

    v10 = *(&self->mIsInRealTimeDynamicOperation + 2);
    v14[0] = v15;
    v14[1] = v16;
    v14[2] = v17;
    v11 = [v10 geometryByAppendingTransform:v14];
    v12 = [(CRLCanvasLayout *)self info];
    v13 = [v9 newCommandToApplyGeometry:v11 toInfo:v12];

    [v8 enqueueCommand:v13];
  }
}

- (BOOL)i_anyAncestorCurrentlyBeingRotatedWantsNormalLayoutDuringDynamicRotation
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100014370(v3, v4);

  if (v5)
  {
    while (1)
    {
      if ([v5 layoutState] != 3)
      {
        LOBYTE(v8) = 0;
        goto LABEL_9;
      }

      if ([v5 wantsNormalLayoutDuringDynamicRotation])
      {
        break;
      }

      v6 = objc_opt_class();
      v7 = [v5 parent];
      v8 = sub_100014370(v6, v7);

      v5 = v8;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    LOBYTE(v8) = 1;
LABEL_9:
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)resizeMayChangeAspectRatio
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, v4);

  if (v5)
  {
    v6 = [v5 aspectRatioLocked] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, v4);

  LOBYTE(v4) = [v5 canAspectRatioLockBeChangedByUser];
  return v4;
}

- (id)commandForSettingAspectRatioLocked:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(CRLCanvasLayout *)self info];
  v7 = sub_100014370(v5, v6);

  v8 = [[_TtC8Freeform30CRLCommandSetAspectRatioLocked alloc] initWithBoardItem:v7 aspectRatioLocked:v3];

  return v8;
}

- (CGSize)minimumSize
{
  v2 = 1.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)takeSizeFromTracker:(id)a3
{
  v4 = a3;
  if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
  {
    v5 = [(CRLCanvasLayout *)self layoutController];
    v6 = [v5 canvas];

    v7 = [v6 canvasController];
    v8 = [v7 commandController];

    v9 = [v6 repForLayout:self];
    v10 = [v4 currentGeometryForLayout:self];
    v11 = [v10 copy];

    v12 = [(CRLCanvasLayout *)self info];
    v13 = [v9 newCommandToApplyGeometry:v11 toInfo:v12];

    [v8 enqueueCommand:v13];
  }

  if (v4)
  {
    [v4 transformForLayout:self];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  [(CRLCanvasLayout *)self layoutTransformInInfoSpace:v14];
  [(CRLCanvasLayout *)self resizeWithTransform:v15];
}

- (void)beginFreeTransformWithTracker:(id)a3
{
  *(&self->mInfo + 2) = 5;
  v4 = a3;
  v5 = [v4 isDragging];
  v6 = [v4 isRotating];
  v7 = 2;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = v7 | v5;
  if ([v4 isResizing])
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 inRotateResizeMode];

  v11 = 8;
  if (!v10)
  {
    v11 = 0;
  }

  *(&self->mLayoutState + 2) = v8 | v9 | v11;
}

- (void)takeFreeTransformFromTracker:(id)a3
{
  v4 = a3;
  v5 = [v4 isDragging];
  v6 = [v4 isRotating];
  v7 = 2;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = v7 | v5;
  if ([v4 isResizing])
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 inRotateResizeMode];
  v11 = 8;
  if (!v10)
  {
    v11 = 0;
  }

  *(&self->mLayoutState + 2) = v8 | v9 | v11;
  if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
  {
    v12 = [(CRLCanvasLayout *)self layoutController];
    v13 = [v12 canvas];

    v14 = [v13 canvasController];
    v15 = [v14 commandController];

    v16 = [v13 repForLayout:self];
    v17 = [v4 currentGeometryForLayout:self];
    v18 = [v17 copy];

    v19 = [(CRLCanvasLayout *)self info];
    v20 = [v16 newCommandToApplyGeometry:v18 toInfo:v19];

    [v15 enqueueCommand:v20];
  }

  if (v4)
  {
    [v4 freeTransformForLayout:self];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  [(CRLCanvasLayout *)self layoutTransformInInfoSpace:v21];
  [(CRLCanvasLayout *)self resizeWithTransform:v22];
}

- (BOOL)i_anyAncestorCurrentlyBeingFreeTransformedWantsNormalLayoutDuringDynamicFreeTransform
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100014370(v3, v4);

  if (v5)
  {
    while (1)
    {
      if ([v5 layoutState] != 5)
      {
        LOBYTE(v8) = 0;
        goto LABEL_9;
      }

      if ([v5 wantsNormalLayoutDuringDynamicFreeTransform])
      {
        break;
      }

      v6 = objc_opt_class();
      v7 = [v5 parent];
      v8 = sub_100014370(v6, v7);

      v5 = v8;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    LOBYTE(v8) = 1;
LABEL_9:
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (CRLCanvasLayoutGeometry)originalPureGeometry
{
  [(CRLCanvasLayout *)self initialBoundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memset(&v19, 0, sizeof(v19));
  v11 = [(CRLCanvasLayout *)self originalGeometry];
  v12 = v11;
  if (v11)
  {
    [v11 transform];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  CGAffineTransformMakeTranslation(&t1, v4, v6);
  v16 = v19;
  CGAffineTransformConcat(&v18, &t1, &v16);
  v19 = v18;
  v13 = [CRLCanvasLayoutGeometry alloc];
  v18 = v19;
  v14 = [(CRLCanvasLayoutGeometry *)v13 initWithSize:&v18 transform:v8, v10];

  return v14;
}

- (CRLCanvasLayoutGeometry)pureGeometry
{
  [(CRLCanvasLayout *)self boundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memset(&v19, 0, sizeof(v19));
  v11 = [(CRLCanvasAbstractLayout *)self geometry];
  v12 = v11;
  if (v11)
  {
    [v11 transform];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  CGAffineTransformMakeTranslation(&t1, v4, v6);
  v16 = v19;
  CGAffineTransformConcat(&v18, &t1, &v16);
  v19 = v18;
  v13 = [CRLCanvasLayoutGeometry alloc];
  v18 = v19;
  v14 = [(CRLCanvasLayoutGeometry *)v13 initWithSize:&v18 transform:v8, v10];

  return v14;
}

- (CRLCanvasLayoutGeometry)pureGeometryInRoot
{
  v3 = [(CRLCanvasLayout *)self pureGeometry];
  v4 = [(CRLCanvasAbstractLayout *)self geometryInRoot:v3];

  return v4;
}

- (CRLCanvasLayoutGeometry)pureGeometryInParent
{
  v3 = [(CRLCanvasLayout *)self pureGeometry];
  v4 = [v3 mutableCopy];

  v5 = [(CRLCanvasAbstractLayout *)self parent];
  v6 = [v5 geometry];
  v7 = v6;
  if (v6)
  {
    [v6 transform];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  [v4 transformBy:v9];

  return v4;
}

- (CRLCanvasLayoutGeometry)inspectorGeometry
{
  v3 = [(CRLCanvasLayout *)self pureGeometry];
  v4 = *&CGAffineTransformIdentity.c;
  v25 = *&CGAffineTransformIdentity.a;
  v26 = v4;
  v27 = *&CGAffineTransformIdentity.tx;
  v5 = [(CRLCanvasAbstractLayout *)self parent];
  if (v5)
  {
    v6 = v5;
    do
    {
      if ([v6 isRootLayoutForInspectorGeometry])
      {
        break;
      }

      v7 = [v6 geometry];
      v8 = v7;
      if (v7)
      {
        v21[0] = v25;
        v21[1] = v26;
        v21[2] = v27;
        [v7 transformByConcatenatingTransformTo:v21];
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
      }

      v25 = v22;
      v26 = v23;
      v27 = v24;

      v9 = [v6 parent];

      v6 = v9;
    }

    while (v9);
  }

  v22 = v25;
  v23 = v26;
  v24 = v27;
  v10 = [v3 geometryByTransformingBy:&v22];

  v11 = [(CRLCanvasLayout *)self layoutController];
  v12 = [v11 canvas];
  v13 = [v12 isAnchoredAtRight];

  if (v13)
  {
    [v10 frame];
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    MinX = CGRectGetMinX(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v19 = [v10 geometryByTranslatingBy:{-(MinX + CGRectGetMaxX(v30)), 0.0}];

    v10 = v19;
  }

  return v10;
}

- (double)inspectorGeometryAngleInDegrees
{
  v2 = [(CRLCanvasLayout *)self inspectorGeometry];
  v3 = v2;
  if (v2)
  {
    [v2 transform];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v4 = sub_100139980(v9);
  sub_1001208E0(-v4);
  v6 = v5;

  v7 = fabs(v6 + -360.0) < 0.00999999978 || v6 == 360.0;
  result = 0.0;
  if (!v7)
  {
    return v6;
  }

  return result;
}

- (CGAffineTransform)pureTransformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v5 = [(CRLCanvasLayout *)self pureGeometry];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  result = [(CRLCanvasAbstractLayout *)self parent];
  if (result)
  {
    v8 = result;
    do
    {
      v9 = [(CGAffineTransform *)v8 geometry];
      v10 = v9;
      if (v9)
      {
        v11 = *&retstr->c;
        v14[0] = *&retstr->a;
        v14[1] = v11;
        v14[2] = *&retstr->tx;
        [v9 transformByConcatenatingTransformTo:v14];
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
      }

      v12 = v16;
      *&retstr->a = v15;
      *&retstr->c = v12;
      *&retstr->tx = v17;

      v13 = [(CGAffineTransform *)v8 parent];

      v8 = v13;
    }

    while (v13);
  }

  return result;
}

- (CGAffineTransform)originalPureTransformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v5 = [(CRLCanvasLayout *)self originalPureGeometry];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  result = [(CRLCanvasAbstractLayout *)self parent];
  if (result)
  {
    v8 = result;
    do
    {
      v9 = [(CGAffineTransform *)v8 geometry];
      v10 = v9;
      if (v9)
      {
        v11 = *&retstr->c;
        v14[0] = *&retstr->a;
        v14[1] = v11;
        v14[2] = *&retstr->tx;
        [v9 transformByConcatenatingTransformTo:v14];
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
      }

      v12 = v16;
      *&retstr->a = v15;
      *&retstr->c = v12;
      *&retstr->tx = v17;

      v13 = [(CGAffineTransform *)v8 parent];

      v8 = v13;
    }

    while (v13);
  }

  return result;
}

- (id)commandToFlipWithOrientation:(int)a3
{
  v5 = objc_opt_class();
  v6 = [(CRLCanvasLayout *)self info];
  v7 = sub_100013F00(v5, v6);

  v8 = [v7 geometry];
  v9 = [v8 mutableCopy];

  if (a3)
  {
    [v9 setVerticalFlip:{objc_msgSend(v9, "verticalFlip") ^ 1}];
  }

  else
  {
    [v9 setHorizontalFlip:{objc_msgSend(v9, "horizontalFlip") ^ 1}];
  }

  v10 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v7 geometry:v9];

  return v10;
}

- (unint64_t)p_directionForCollaboratorCursorKnobTag:(unint64_t)a3
{
  v5 = [(CRLCanvasAbstractLayout *)self geometryInRoot];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
  }

  v7 = sub_100139980(&v15);

  v8 = sub_1004C31F4(v7 * 1000.0);
  v9 = sub_100345E1C(a3, v8 / 1000.0);
  v10 = [(CRLCanvasAbstractLayout *)self geometry];
  v11 = v10;
  if (v10)
  {
    [v10 transform];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
  }

  v12 = sub_1001399E4(&v15);

  if (v12)
  {
    LOBYTE(v9) = sub_100346034(v9);
  }

  v13 = sub_100345928(v9);
  if ((v13 & 0xFFFFFFFFFFFFFFF1) == 0)
  {
    return 2;
  }

  if ((v13 & 0xFFFFFFFFFFFFFC7FLL) == 0)
  {
    return 1;
  }

  if ((v13 & 0xFFFFFFFFFFFFFF6DLL) != 0)
  {
    return 3;
  }

  return 4;
}

- (id)unscaledPositionsForCollaboratorHUDForSelectionPath:(id)a3
{
  [(CRLCanvasLayout *)self boundsForCollaboratorHUDForSelectionPath:a3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = +[NSMutableArray array];
  v13 = sub_100345F44(2, v5, v7, v9, v11);
  v28 = v14;
  v32 = v13;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v15 = [[CRLCollaboratorCursorHUDPosition alloc] initWithPosition:[(CRLCanvasLayout *)self p_directionForCollaboratorCursorKnobTag:2] direction:vaddq_f64(v38, vmlaq_n_f64(vmulq_n_f64(v37, v28), v36, v32))];
  [v12 addObject:v15];

  v16 = sub_100345F44(4, v5, v7, v9, v11);
  v29 = v17;
  v33 = v16;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v18 = [[CRLCollaboratorCursorHUDPosition alloc] initWithPosition:[(CRLCanvasLayout *)self p_directionForCollaboratorCursorKnobTag:4] direction:vaddq_f64(v38, vmlaq_n_f64(vmulq_n_f64(v37, v29), v36, v33))];
  [v12 addObject:v18];

  v19 = sub_100345F44(6, v5, v7, v9, v11);
  v30 = v20;
  v34 = v19;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v21 = [[CRLCollaboratorCursorHUDPosition alloc] initWithPosition:[(CRLCanvasLayout *)self p_directionForCollaboratorCursorKnobTag:6] direction:vaddq_f64(v38, vmlaq_n_f64(vmulq_n_f64(v37, v30), v36, v34))];
  [v12 addObject:v21];

  v22 = sub_100345F44(8, v5, v7, v9, v11);
  v31 = v23;
  v35 = v22;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v24 = [[CRLCollaboratorCursorHUDPosition alloc] initWithPosition:[(CRLCanvasLayout *)self p_directionForCollaboratorCursorKnobTag:8] direction:vaddq_f64(v38, vmlaq_n_f64(vmulq_n_f64(v37, v31), v36, v35))];
  [v12 addObject:v24];

  [(CRLCanvasAbstractLayout *)self transformInRoot];
  if (sub_100139B5C(v36.f64))
  {
    v25 = &stru_101859C38;
  }

  else
  {
    v25 = &stru_101859C58;
  }

  [v12 sortUsingComparator:v25];
  v26 = [v12 copy];

  return v26;
}

- (id)newCommandToMoveByOffset:(CGPoint)a3 whenDistributingLayoutsByOffsets:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = objc_opt_class();
  v8 = [(CRLCanvasLayout *)self info];
  v9 = sub_100014370(v7, v8);

  v10 = [(CRLCanvasLayout *)self info];
  v11 = [v10 geometry];
  CGAffineTransformMakeTranslation(&v15, x, y);
  v12 = [v11 geometryByAppendingTransform:&v15];

  v13 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v9 geometry:v12];
  return v13;
}

- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v5)
  {
    v9 = [(CRLCanvasLayout *)self layoutController];
    v10 = [v9 canvas];
    v11 = [v10 canvasController];
    v12 = [v11 editingCoordinator];

    v13 = objc_opt_class();
    v14 = sub_100014370(v13, v8);
    v15 = v14;
    if (v12)
    {
      if (v14)
      {
        v16 = [v12 mainBoard];
        v17 = [v15 id];
        v18 = [v16 containsObject:v17];

        if (v18)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10135D4A0();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10135D4B4();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10135D53C();
          }

          v19 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v19);
          }

          v20 = [NSString stringWithUTF8String:"[CRLCanvasLayout transferLayoutGeometryToInfo:withAdditionalTransform:assertIfInDocument:]"];
          v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayout.m"];
          [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:1128 isFatal:0 description:"Should not transfer layout geometry to info that's in the document!"];
        }
      }
    }
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100374478;
  v25[3] = &unk_101859CC0;
  v26 = v8;
  v22 = *&a4->c;
  v24[0] = *&a4->a;
  v24[1] = v22;
  v24[2] = *&a4->tx;
  v23 = v8;
  [(CRLCanvasLayout *)self p_calculateClampModelValuesWithAdditionalTransform:v24 andPerformBlock:v25];
}

- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100374600;
  v12 = sub_100374610;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100374618;
  v7[3] = &unk_101859D28;
  v7[4] = self;
  v7[5] = &v8;
  v3 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v3;
  v6[2] = *&a3->tx;
  [(CRLCanvasLayout *)self p_calculateClampModelValuesWithAdditionalTransform:v6 andPerformBlock:v7];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (void)p_calculateClampModelValuesWithAdditionalTransform:(CGAffineTransform *)a3 andPerformBlock:(id)a4
{
  v6 = a4;
  v7 = [(CRLCanvasLayout *)self pureGeometry];
  v8 = *&a3->c;
  v21[0] = *&a3->a;
  v21[1] = v8;
  v21[2] = *&a3->tx;
  v9 = [v7 geometryByTransformingBy:v21];

  v10 = [(CRLCanvasLayout *)self computeInfoGeometryFromPureLayoutGeometry:v9];
  v11 = [v10 normalizedGeometry];

  v12 = [(CRLCanvasLayout *)self info];
  v13 = [v12 geometry];

  if ([v13 widthValid] && (objc_msgSend(v13, "heightValid") & 1) != 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = [v11 mutableCopy];
    [v14 setWidthValid:{objc_msgSend(v13, "widthValid")}];
    [v14 setHeightValid:{objc_msgSend(v13, "heightValid")}];
    [v14 size];
    v16 = v15;
    v18 = v17;
    if (([v13 widthValid] & 1) == 0)
    {
      [v13 size];
      if (v19 == 0.0)
      {
        v16 = 0.0;
      }
    }

    if (([v13 heightValid] & 1) == 0)
    {
      [v13 size];
      if (v20 == 0.0)
      {
        v18 = 0.0;
      }
    }

    [v14 setSize:{v16, v18}];
  }

  v6[2](v6, v14);
}

- (BOOL)isSelectable
{
  v2 = [(CRLCanvasLayout *)self info];
  if ([v2 isSelectable])
  {
    v3 = [v2 parentInfo];
    objc_opt_class();
    v4 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    do
    {
      v5 = v4;
      v4 = v3;

      v3 = [v4 parentInfo];

      objc_opt_class();
    }

    while ((objc_opt_isKindOfClass() & 1) != 0);
    if (v4 && (([v4 locked] & 1) != 0 || objc_msgSend(v4, "isEffectivelyEmpty")))
    {
      v6 = 0;
    }

    else
    {
LABEL_9:
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)boundsForStandardKnobs
{
  v2 = [(CRLCanvasAbstractLayout *)self geometry];
  [v2 size];
  v3 = sub_10011ECB4();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)frameForCaptionPositioning
{
  v2 = [(CRLCanvasAbstractLayout *)self geometry];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)frameForMiniFormatterPositioning
{
  [(CRLCanvasLayout *)self boundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CRLCanvasAbstractLayout *)self transform];
  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v8;
  v12.size.height = v10;
  return CGRectApplyAffineTransform(v12, &v11);
}

- (CGPoint)centerForRotation
{
  [(CRLCanvasLayout *)self boundsForStandardKnobs];

  v6 = sub_100120414(v2, v3, v4, v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)centerForConnecting
{
  [(CRLCanvasLayout *)self centerForRotation];
  v12 = v4;
  v13 = v3;
  v5 = [(CRLCanvasAbstractLayout *)self geometry];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
    v7 = v15;
    v8 = v16;
    v9 = v17;
  }

  else
  {
    v9 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  v14 = vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v8, v12), v7, v13));

  v11 = v14.f64[1];
  v10 = v14.f64[0];
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)cardinalNorthPosition
{
  [(CRLCanvasLayout *)self p_calculateMagnetPositionsIfNeeded];
  v3 = [(CRLCanvasAbstractLayout *)self geometry];
  v4 = v3;
  if (v3)
  {
    [v3 transform];
    v5 = v11;
    v6 = v12;
    v7 = v13;
  }

  else
  {
    v7 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v10 = vaddq_f64(v7, vmlaq_n_f64(vmulq_n_f64(v6, *(&self->mCardinalNorthPosition.x + 2)), v5, *(&self->mCachedFrameForCulling.size.height + 2)));

  v9 = v10.f64[1];
  v8 = v10.f64[0];
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)cardinalEastPosition
{
  [(CRLCanvasLayout *)self p_calculateMagnetPositionsIfNeeded];
  v3 = [(CRLCanvasAbstractLayout *)self geometry];
  v4 = v3;
  if (v3)
  {
    [v3 transform];
    v5 = v11;
    v6 = v12;
    v7 = v13;
  }

  else
  {
    v7 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v10 = vaddq_f64(v7, vmlaq_n_f64(vmulq_n_f64(v6, *(&self->mCardinalEastPosition.x + 2)), v5, *(&self->mCardinalNorthPosition.y + 2)));

  v9 = v10.f64[1];
  v8 = v10.f64[0];
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)cardinalSouthPosition
{
  [(CRLCanvasLayout *)self p_calculateMagnetPositionsIfNeeded];
  v3 = [(CRLCanvasAbstractLayout *)self geometry];
  v4 = v3;
  if (v3)
  {
    [v3 transform];
    v5 = v11;
    v6 = v12;
    v7 = v13;
  }

  else
  {
    v7 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v10 = vaddq_f64(v7, vmlaq_n_f64(vmulq_n_f64(v6, *(&self->mCardinalSouthPosition.x + 2)), v5, *(&self->mCardinalEastPosition.y + 2)));

  v9 = v10.f64[1];
  v8 = v10.f64[0];
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)cardinalWestPosition
{
  [(CRLCanvasLayout *)self p_calculateMagnetPositionsIfNeeded];
  v3 = [(CRLCanvasAbstractLayout *)self geometry];
  v4 = v3;
  if (v3)
  {
    [v3 transform];
    v5 = v11;
    v6 = v12;
    v7 = v13;
  }

  else
  {
    v7 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v10 = vaddq_f64(v7, vmlaq_n_f64(vmulq_n_f64(v6, *(&self->mCardinalWestPosition.x + 2)), v5, *(&self->mCardinalSouthPosition.y + 2)));

  v9 = v10.f64[1];
  v8 = v10.f64[0];
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)getCardinalPositionFromType:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      [(CRLCanvasLayout *)self cardinalSouthPosition];
      goto __CRLCanvasLayout_getCardinalPositionFromType__;
    }

    if (a3 == 5)
    {
      [(CRLCanvasLayout *)self cardinalWestPosition];
      goto __CRLCanvasLayout_getCardinalPositionFromType__;
    }

LABEL_8:
    [(CRLCanvasLayout *)self centerForConnecting];
    goto __CRLCanvasLayout_getCardinalPositionFromType__;
  }

  if (a3 == 2)
  {
    [(CRLCanvasLayout *)self cardinalNorthPosition];
    goto __CRLCanvasLayout_getCardinalPositionFromType__;
  }

  if (a3 != 3)
  {
    goto LABEL_8;
  }

  [(CRLCanvasLayout *)self cardinalEastPosition];
__CRLCanvasLayout_getCardinalPositionFromType__:
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)getCardinalPositionWithParentTransformFromType:(unint64_t)a3
{
  [(CRLCanvasLayout *)self getCardinalPositionFromType:a3];
  v12 = v5;
  v13 = v4;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v6 = [(CRLCanvasAbstractLayout *)self parent];
  if (v6)
  {
    v7 = [(CRLCanvasAbstractLayout *)self parent];
    v8 = [v7 geometryInRoot];
    v9 = v8;
    if (v8)
    {
      [v8 transform];
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

  v10 = vaddq_f64(v16, vmlaq_n_f64(vmulq_n_f64(v15, v12), v14, v13));
  v11 = v10.f64[1];
  result.x = v10.f64[0];
  result.y = v11;
  return result;
}

- (id)computeLayoutGeometry
{
  v3 = [(CRLCanvasLayout *)self layoutGeometryFromInfo];
  v4 = objc_opt_class();
  v5 = [(CRLCanvasAbstractLayout *)self parent];
  v6 = sub_100014370(v4, v5);

  if (v6 && [(CRLCanvasLayout *)self layoutState]!= 4 && [(CRLCanvasLayout *)self layoutState]!= 5)
  {
    if ([(CRLCanvasLayout *)self layoutState]== 3 && ![(CRLCanvasLayout *)self wantsNormalLayoutDuringDynamicRotation])
    {
      v20 = [CRLCanvasLayoutGeometry alloc];
      v21 = [(CRLCanvasLayout *)self originalPureGeometry];
      [v21 size];
      v23 = v22;
      v25 = v24;
      if (v3)
      {
        [v3 transform];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
      }

      v19 = [(CRLCanvasLayoutGeometry *)v20 initWithSize:&v27 transform:v23, v25];

      v3 = v21;
    }

    else
    {
      [v3 size];
      v8 = v7;
      v10 = v9;
      if (v3)
      {
        [v3 transform];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
      }

      [(CRLCanvasLayout *)self scaleForInlineClampingUnrotatedSize:&v27 withTransform:v8, v10];
      v12 = v11;
      [v3 size];
      v15 = sub_10011F340(v13, v14, v12);
      v17 = v16;
      v18 = [CRLCanvasLayoutGeometry alloc];
      if (v3)
      {
        [v3 transform];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
      }

      v19 = [(CRLCanvasLayoutGeometry *)v18 initWithSize:&v27 transform:v15, v17];
    }

    v3 = v19;
  }

  return v3;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withTransform:(CGAffineTransform *)a4
{
  v6 = objc_opt_class();
  v7 = [(CRLCanvasAbstractLayout *)self parent];
  v8 = sub_100014370(v6, v7);

  v9 = 1.0;
  if (v8)
  {
    [v8 maximumFrameSizeForChild:self];
    v12 = v11;
    if (v11 < 1.79769313e308 || v10 < 1.79769313e308)
    {
      v14 = v10;
      v15 = v10 < 1.79769313e308;
      v16 = sub_10011ECB4();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = *&a4->c;
      *&v33.a = *&a4->a;
      *&v33.c = v23;
      *&v33.tx = *&a4->tx;
      v24 = sub_1001399C0(&v33.a);
      CGAffineTransformMakeRotation(&v33, v24);
      v34.origin.x = v16;
      v34.origin.y = v18;
      v34.size.width = v20;
      v34.size.height = v22;
      v35 = CGRectApplyAffineTransform(v34, &v33);
      v25 = v35.size.height > v14 && v15;
      v26 = v35.size.width > v12 && v12 < 1.79769313e308;
      if (v26 || v25)
      {
        v28 = v12 / v35.size.width;
        v29 = 1.0;
        if (v35.size.width <= v12)
        {
          v28 = 1.0;
        }

        if (v35.size.height > v14)
        {
          v29 = v14 / v35.size.height;
        }

        v30 = fmin(v28, v29);
        if (v14 < 1.79769313e308)
        {
          v28 = v30;
        }

        if (v12 >= 1.79769313e308)
        {
          v9 = v29;
        }

        else
        {
          v9 = v28;
        }

        if (v35.size.width * v9 > v12 || v35.size.height * v9 > v14)
        {
          v9 = nextafter(v9, 0.0);
        }
      }
    }
  }

  return v9;
}

- (void)processChanges:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * v10) details];
        v12 = v11;
        if (v11)
        {
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100375670;
          v22[3] = &unk_101855978;
          v22[4] = v5;
          [v11 enumeratePropertiesUsingBlock:v22];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        -[CRLCanvasLayout processChangedProperty:](self, "processChangedProperty:", [*(*(&v18 + 1) + 8 * v17) unsignedIntegerValue]);
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v15);
  }
}

- (void)processChangedProperty:(unint64_t)a3
{
  switch(a3)
  {
    case 4uLL:
      [(CRLCanvasLayout *)self invalidateChildren];
      break;
    case 6uLL:
      [(CRLCanvasLayout *)self invalidatePosition];
      break;
    case 7uLL:
      [(CRLCanvasLayout *)self invalidateFrame];
      break;
  }

  [(CRLCanvasLayout *)self invalidateFrameForCulling];
}

- (void)calculateAndSetPointsToSearchReference:(id)a3
{
  v4 = a3;
  [(CRLCanvasLayout *)self calculatePointFromSearchReference:v4];
  [v4 setSearchReferencePoint:?];
}

- (NSArray)dependentLayouts
{
  v3 = [(CRLCanvasAbstractLayout *)self parent];
  v4 = [v3 additionalDependenciesForChildLayout:self];
  v5 = [&__NSArray0__struct arrayByAddingObjectsFromArray:v4];

  v6 = [(CRLCanvasLayout *)self layoutController];
  v7 = [v6 canvas];
  v8 = [v7 canvasController];

  v9 = objc_opt_class();
  v10 = [(CRLCanvasLayout *)self info];
  v11 = sub_100014370(v9, v10);

  if (v8 && v11)
  {
    v12 = [v8 additionalDependentLayoutsForBoardItem:v11];
    v13 = v12;
    if (v12 && [v12 count])
    {
      v14 = [v13 allObjects];
      v15 = [v5 arrayByAddingObjectsFromArray:v14];

      v5 = v15;
    }
  }

  return v5;
}

- (CGSize)maximumFrameSizeForChild:(id)a3
{
  v3 = 1.79769313e308;
  v4 = 1.79769313e308;
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)descendentWrappablesContainsWrappable:(id)a3
{
  v4 = [a3 parent];
  LOBYTE(self) = v4 == self;

  return self;
}

- (void)p_updateDescendentWrapPathsWithTransform:(CGAffineTransform *)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(CRLCanvasLayout *)self descendentWrappables];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = sub_100014370(v10, v9);
        v12 = v11;
        if (v11)
        {
          v13 = *&a3->c;
          v14[0] = *&a3->a;
          v14[1] = v13;
          v14[2] = *&a3->tx;
          [v11 inRootGeometryChangedBy:v14];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)p_invalidateDescendentWrapPathsInRoot
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CRLCanvasLayout *)self descendentWrappables];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_opt_class();
        v9 = sub_100014370(v8, v7);
        v10 = v9;
        if (v9)
        {
          [v9 invalidateInRootGeometry];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)setNeedsDisplay
{
  size = CGRectInfinite.size;
  *(&self->mBaseAlignmentFrameOriginForFixingInterimPosition.y + 2) = CGRectInfinite.origin;
  *(&self->mDirtyRect.origin.y + 2) = size;
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  v3 = (&self->mBaseAlignmentFrameOriginForFixingInterimPosition.y + 2);
  v4.origin.x = *(&self->mBaseAlignmentFrameOriginForFixingInterimPosition.y + 2);
  v4.origin.y = *(&self->mDirtyRect.origin.x + 2);
  v4.size.width = *(&self->mDirtyRect.origin.y + 2);
  v4.size.height = *(&self->mDirtyRect.size.width + 2);
  v5 = CGRectUnion(v4, a3);
  *v3 = v5.origin.x;
  v3[1] = v5.origin.y;
  v3[2] = v5.size.width;
  v3[3] = v5.size.height;
}

- (void)recursivelyAddLayoutAndDependentLayoutsToValidateSet:(id)a3
{
  v5 = a3;
  [v5 addObject:self];
  v6 = [(CRLCanvasAbstractLayout *)self children];
  [v6 makeObjectsPerformSelector:a2 withObject:v5];
}

- (CGRect)i_takeDirtyRect
{
  v2 = *(&self->mBaseAlignmentFrameOriginForFixingInterimPosition.y + 2);
  v3 = *(&self->mDirtyRect.origin.x + 2);
  v4 = *(&self->mDirtyRect.origin.y + 2);
  v5 = *(&self->mDirtyRect.size.width + 2);
  size = CGRectNull.size;
  *(&self->mBaseAlignmentFrameOriginForFixingInterimPosition.y + 2) = CGRectNull.origin;
  *(&self->mDirtyRect.origin.y + 2) = size;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CRLBezierPath)i_wrapPath
{
  v2 = [(CRLCanvasAbstractLayout *)self geometry];
  [v2 size];
  v3 = [CRLBezierPath bezierPathWithRect:sub_10011ECB4()];

  return v3;
}

- (void)p_registerWithLayoutController:(id)a3
{
  v5 = a3;
  [v5 i_registerLayout:self];
  [(CRLCanvasLayout *)self i_clearInvalidationCache];
  v6 = [(CRLCanvasAbstractLayout *)self children];
  [v6 makeObjectsPerformSelector:a2 withObject:v5];
}

- (void)p_unregisterWithLayoutController:(id)a3
{
  v5 = a3;
  [v5 i_unregisterLayout:self];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(&self->mInitialBoundsForStandardKnobs.size.height + 2);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10) connectedLayoutDisconnected:{self, v12}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(CRLCanvasLayout *)self i_clearInvalidationCache];
  v11 = [(CRLCanvasAbstractLayout *)self children];
  [v11 makeObjectsPerformSelector:a2 withObject:v5];
}

- (void)p_recursiveInvalidate
{
  [(CRLCanvasLayout *)self invalidate];
  v4 = [(CRLCanvasAbstractLayout *)self children];
  [v4 makeObjectsPerformSelector:a2];
}

- (CGSize)p_newMaxInlineFrameSize
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100014370(v3, v4);

  if (v5)
  {
    [v5 maximumFrameSizeForChild:self];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = 0x7FEFFFFFFFFFFFFFLL;
    v9 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v10 = *&v7;
  v11 = *&v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CRLSearchReference)searchTargetSearchReference
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, v4);

  v6 = [(CRLCanvasLayout *)self layoutController];
  v7 = [v6 canvas];
  v8 = [v7 delegate];
  v15 = sub_1003035DC(v8, 1, v9, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLSearchCanvasDelegate);

  v16 = [CRLCanvasSearchReference searchReferenceWithBoardItem:v5 searchCanvasDelegate:v15];
  [(CRLCanvasLayout *)self calculatePointFromSearchReference:v16];
  [v16 setSearchReferencePoint:?];
  [(CRLCanvasAbstractLayout *)self alignmentFrameInRoot];
  [v16 setSearchReferenceLayoutFrame:?];

  return v16;
}

- (NSArray)childSearchTargets
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLCanvasAbstractLayout *)self children];
  [v3 addObjectsFromArray:v4];

  v5 = [v3 copy];

  return v5;
}

- (void)layoutSearchForNearbyElementsWithHitBlock:(id)a3
{
  v7 = a3;
  v4 = [(CRLCanvasLayout *)self info];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CRLCanvasLayout *)self searchTargetSearchReference];
    v7[2](v7, v6);
  }
}

- (void)layoutSearchForHyperlinkWithHitBlock:(id)a3
{
  v11 = a3;
  v4 = objc_opt_class();
  v5 = [(CRLCanvasLayout *)self info];
  v6 = sub_100014370(v4, v5);

  v7 = [v6 hyperlinkURL];
  v8 = [v7 absoluteString];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [(CRLCanvasLayout *)self searchTargetSearchReference];
    v11[2](v11, v10);
  }
}

- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)a3
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)rectInRootForSelectionPath:(id)a3
{
  v3 = [(CRLCanvasAbstractLayout *)self geometryInRoot];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)percentOfUnscaledRectContainedInParentRep:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CRLCanvasLayout *)self pureGeometryInRoot];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  v19 = CGRectInset(v18, -10.0, -10.0);

  sub_100120474(x, y, width, height, v19.origin.x, v19.origin.y, v19.size.width, v19.size.height);
  return result;
}

- (CGRect)shadowedNaturalBoundsWithoutOffset
{
  v3 = [(CRLCanvasAbstractLayout *)self geometry];
  [v3 size];
  x = sub_10011ECB4();
  y = v5;
  width = v7;
  height = v9;

  v11 = objc_opt_class();
  v12 = [(CRLCanvasLayout *)self info];
  v13 = sub_100013F00(v11, v12);

  v14 = [v13 shadow];
  v15 = v14;
  if (v14 && [v14 isEnabled])
  {
    [v15 radius];
    v17 = -v16;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectInset(v22, v17, v17);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)addConnectedLayout:(id)a3
{
  v4 = a3;
  v5 = *(&self->mInitialBoundsForStandardKnobs.size.height + 2);
  v8 = v4;
  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = *(&self->mInitialBoundsForStandardKnobs.size.height + 2);
    *(&self->mInitialBoundsForStandardKnobs.size.height + 2) = v6;

    v4 = v8;
    v5 = *(&self->mInitialBoundsForStandardKnobs.size.height + 2);
  }

  [v5 addObject:v4];
}

- (void)p_invalidateConnectedLayouts
{
  v3 = *(&self->mInitialBoundsForStandardKnobs.size.height + 2);
  if (v3 && [v3 count])
  {
    v4 = [*(&self->mInitialBoundsForStandardKnobs.size.height + 2) copy];
    [v4 makeObjectsPerformSelector:"connectedLayoutInvalidated:" withObject:self];
  }
}

- (void)p_invalidateDescendentWrapPaths
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CRLCanvasLayout *)self descendentWrappables];
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

        [*(*(&v7 + 1) + 8 * v6) invalidateExteriorWrap];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  CGAffineTransformInvert(&v8, &v7);
  v3 = vaddq_f64(*&v8.tx, vmlaq_n_f64(vmulq_n_f64(*&v8.c, y), *&v8.a, x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v3 = vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v8, y), v7, x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  CGAffineTransformInvert(&v8, &v7);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return CGRectApplyAffineTransform(v9, &v8);
}

- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (void)p_calculateMagnetPositionsIfNeeded
{
  if ((*(&self->mInvalidatingSize + 2) & 4) != 0)
  {
    v3 = [(CRLCanvasLayout *)self pathForClippingConnectionLines];
    if (-[CRLCanvasLayout shouldBringCardinalMagnetsInward](self, "shouldBringCardinalMagnetsInward") && v3 && ([v3 isEmpty] & 1) == 0)
    {
      [v3 bounds];
      v15 = v14;
      v17 = v16;
      [(CRLCanvasLayout *)self centerForRotation];
      v19 = v18;
      v21 = v20;
      v26 = 1.0;
      v27 = 0.0;
      v22 = [CRLBezierPath bezierPathWithStart:v18 end:0.0, v18, v17];
      [(CRLCanvasLayout *)self p_getIntersectionsForTestPath:v22 withLowestT:&v27 withHighestT:&v26];
      [(CRLCanvasLayout *)self p_adjustCardinalMagnetTValuesIfNeededWithPadding:&v27 forLowestT:&v26 forHighestT:10.0 / v17];
      v23 = v17 * v27;
      *(&self->mCachedFrameForCulling.size.height + 2) = v19;
      *(&self->mCardinalNorthPosition.x + 2) = v23;
      v24 = v17 * v26;
      *(&self->mCardinalEastPosition.y + 2) = v19;
      *(&self->mCardinalSouthPosition.x + 2) = v24;
      v25 = [CRLBezierPath bezierPathWithStart:0.0 end:v21, v15, v21];
      [(CRLCanvasLayout *)self p_getIntersectionsForTestPath:v25 withLowestT:&v27 withHighestT:&v26];
      [(CRLCanvasLayout *)self p_adjustCardinalMagnetTValuesIfNeededWithPadding:&v27 forLowestT:&v26 forHighestT:10.0 / v15];
      *(&self->mCardinalNorthPosition.y + 2) = v15 * v26;
      *(&self->mCardinalEastPosition.x + 2) = v21;
      *(&self->mCardinalSouthPosition.y + 2) = v15 * v27;
      *(&self->mCardinalWestPosition.x + 2) = v21;
    }

    else
    {
      [(CRLCanvasLayout *)self boundsForStandardKnobs];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [(CRLCanvasLayout *)self centerForRotation];
      *(&self->mCachedFrameForCulling.size.height + 2) = v12;
      *(&self->mCardinalNorthPosition.x + 2) = v7;
      *(&self->mCardinalEastPosition.y + 2) = v12;
      *(&self->mCardinalSouthPosition.x + 2) = v7 + v11;
      *(&self->mCardinalNorthPosition.y + 2) = v5 + v9;
      *(&self->mCardinalEastPosition.x + 2) = v13;
      *(&self->mCardinalSouthPosition.y + 2) = v5;
      *(&self->mCardinalWestPosition.x + 2) = v13;
    }

    *(&self->mInvalidatingSize + 2) &= ~4u;
  }
}

- (void)p_adjustCardinalMagnetTValuesIfNeededWithPadding:(double)a3 forLowestT:(double *)a4 forHighestT:(double *)a5
{
  if (*a4 > 0.5 - a3)
  {
    *a4 = 0.0;
  }

  if (*a5 < a3 + 0.5)
  {
    *a5 = 1.0;
  }
}

- (void)p_getIntersectionsForTestPath:(id)a3 withLowestT:(double *)a4 withHighestT:(double *)a5
{
  v8 = a3;
  v9 = [(CRLCanvasLayout *)self pathForClippingConnectionLines];
  v10 = [v9 copy];

  v11 = +[NSMutableArray array];
  [v8 addIntersectionsWithPath:v10 to:v11 allIntersections:1 reversed:0];
  if ([v11 count] < 2)
  {
    v17 = 1.0;
    v16 = 0.0;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      v16 = 1.79769313e308;
      v17 = 2.22507386e-308;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          [v19 t];
          if (v20 < v16)
          {
            [v19 t];
            v16 = v21;
          }

          [v19 t];
          if (v22 > v17)
          {
            [v19 t];
            v17 = v23;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 1.79769313e308;
      v17 = 2.22507386e-308;
    }
  }

  *a4 = v16;
  *a5 = v17;
}

- (id)convexHullPath
{
  v3 = *(&self->mCardinalWestPosition.y + 2);
  if (!v3)
  {
    v4 = [(CRLCanvasLayout *)self pathForClippingConnectionLines];
    if ([v4 isEmpty])
    {
      [(CRLCanvasLayout *)self boundsForStandardKnobs];
      [CRLBezierPath bezierPathWithRect:?];
    }

    else
    {
      [CRLBezierPath bezierPathWithConvexHullFromWrapPath:v4];
    }
    v5 = ;
    v6 = *(&self->mCardinalWestPosition.y + 2);
    *(&self->mCardinalWestPosition.y + 2) = v5;

    v3 = *(&self->mCardinalWestPosition.y + 2);
  }

  return v3;
}

- (void)adjustCustomMagnetPositions
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(&self->mInitialBoundsForStandardKnobs.size.height + 2);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 connectedTo];

        if (v9 == self)
        {
          if ([v8 headMagnetType] == 6)
          {
            v11 = self;
            v12 = v8;
            v13 = 11;
            goto LABEL_12;
          }

          if ([v8 headMagnetType] == 7)
          {
            v14 = self;
            v15 = v8;
            v16 = 11;
LABEL_17:
            [(CRLCanvasLayout *)v14 p_adjustFloatingMagnetPosition:v15 forLineEnd:v16];
            continue;
          }
        }

        else
        {
          v10 = [v8 connectedFrom];

          if (v10 != self)
          {
            continue;
          }

          if ([v8 tailMagnetType] == 6)
          {
            v11 = self;
            v12 = v8;
            v13 = 10;
LABEL_12:
            [(CRLCanvasLayout *)v11 p_adjustEdgeMagnetPosition:v12 forLineEnd:v13];
            continue;
          }

          if ([v8 tailMagnetType] == 7)
          {
            v14 = self;
            v15 = v8;
            v16 = 10;
            goto LABEL_17;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

- (void)p_adjustEdgeMagnetPosition:(id)a3 forLineEnd:(unint64_t)a4
{
  v6 = a3;
  [(CRLCanvasLayout *)self boundsForStandardKnobs];
  v8 = v7;
  [(CRLCanvasLayout *)self boundsForStandardKnobs];
  v10 = fmax(v8, v9);
  v11 = 0.0;
  if ([v6 connectionType])
  {
    if (a4 == 11)
    {
      [v6 headMagnetCanvasPosition];
    }

    else
    {
      [v6 tailMagnetCanvasPosition];
    }

    [CRLCanvasLayout p_findNearestEdgePointOnWrapPathFromPoint:"p_findNearestEdgePointOnWrapPathFromPoint:withSearchThreshold:withDistanceToPoint:" withSearchThreshold:&v11 withDistanceToPoint:?];
  }

  else
  {
    [(CRLCanvasLayout *)self p_findFirstEdgePointIntersectionOnWrapPathWithLine:v6 forLineEnd:a4 withDistanceToPoint:&v11 withOverridenHeadPosition:INFINITY withOverridenTailPosition:INFINITY, INFINITY, INFINITY];
  }

  if (v11 < v10)
  {
    if (a4 == 11)
    {
      [v6 setHeadMagnetPosition:?];
    }

    else
    {
      [v6 setTailMagnetPosition:?];
    }

    [v6 updateConnectedPath];
    [v6 setMagnetsAdjusted:1];
  }
}

- (void)p_adjustFloatingMagnetPosition:(id)a3 forLineEnd:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v6 info];
  v9 = sub_100014370(v7, v8);

  v10 = [v9 connectionLinePathSource];
  v11 = v10;
  if (a4 == 11)
  {
    v12 = [v10 headMagnet];
    [v12 magnetNormalizedPosition];
    v26 = v14;
    v28 = v13;
    v15 = [(CRLCanvasLayout *)self pureGeometry];
    v16 = v15;
    if (v15)
    {
      [v15 fullTransform];
      v17 = v30;
      v18 = v31;
      v19 = v32;
    }

    else
    {
      v19 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
    }

    [v6 setHeadMagnetPosition:{vaddq_f64(v19, vmlaq_n_f64(vmulq_n_f64(v18, v26), v17, v28))}];
  }

  else
  {
    v12 = [v10 tailMagnet];
    [v12 magnetNormalizedPosition];
    v27 = v21;
    v29 = v20;
    v22 = [(CRLCanvasLayout *)self pureGeometry];
    v16 = v22;
    if (v22)
    {
      [v22 fullTransform];
      v23 = v30;
      v24 = v31;
      v25 = v32;
    }

    else
    {
      v25 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
    }

    [v6 setTailMagnetPosition:{vaddq_f64(v25, vmlaq_n_f64(vmulq_n_f64(v24, v27), v23, v29))}];
  }

  [v6 updateConnectedPath];
  [v6 setMagnetsAdjusted:1];
}

- (CGPoint)p_findFirstEdgePointIntersectionOnWrapPathWithLine:(id)a3 forLineEnd:(unint64_t)a4 withDistanceToPoint:(double *)a5 withOverridenHeadPosition:(CGPoint)a6 withOverridenTailPosition:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v9 = a6.y;
  v10 = a6.x;
  v14 = a3;
  v15 = objc_opt_class();
  v16 = [v14 info];
  v17 = sub_100014370(v15, v16);

  v125 = v17;
  v18 = [v17 connectionLinePathSource];
  v19 = [v14 connectedTo];
  v128 = y;
  if (v19)
  {
    v20 = [v18 headMagnet];
    [v20 magnetNormalizedPosition];
    v22 = v21;
    v24 = v23;
    v25 = [v14 connectedTo];
    v26 = [v25 pureGeometry];
    v27 = v26;
    if (v26)
    {
      [v26 fullTransform];
      a = v136.a;
      b = v136.b;
      c = v136.c;
      d = v136.d;
      tx = v136.tx;
      ty = v136.ty;
    }

    else
    {
      ty = 0.0;
      d = 0.0;
      b = 0.0;
      tx = 0.0;
      c = 0.0;
      a = 0.0;
    }

    v44 = tx + v24 * c + a * v22;
    v45 = ty + v24 * d + b * v22;
  }

  else
  {
    [v14 headPoint];
    v35 = v34;
    v37 = v36;
    if (v14)
    {
      [v14 transform];
      v39 = v136.a;
      v38 = v136.b;
      v41 = v136.c;
      v40 = v136.d;
      v43 = v136.tx;
      v42 = v136.ty;
    }

    else
    {
      v42 = 0.0;
      v40 = 0.0;
      v38 = 0.0;
      v43 = 0.0;
      v41 = 0.0;
      v39 = 0.0;
    }

    v44 = v43 + v37 * v41 + v39 * v35;
    v45 = v42 + v37 * v40 + v38 * v35;
  }

  v46 = [v14 connectedFrom];
  if (v46)
  {
    v47 = [v18 tailMagnet];
    [v47 magnetNormalizedPosition];
    v49 = v48;
    v51 = v50;
    v52 = [v14 connectedFrom];
    v53 = [v52 pureGeometry];
    v54 = v53;
    v55 = x;
    if (v53)
    {
      [v53 fullTransform];
      v57 = v136.a;
      v56 = v136.b;
      v59 = v136.c;
      v58 = v136.d;
      v61 = v136.tx;
      v60 = v136.ty;
    }

    else
    {
      v60 = 0.0;
      v58 = 0.0;
      v56 = 0.0;
      v61 = 0.0;
      v59 = 0.0;
      v57 = 0.0;
    }

    v72 = v61 + v51 * v59 + v57 * v49;
    v73 = v60 + v51 * v58 + v56 * v49;
  }

  else
  {
    [v14 tailPoint];
    v63 = v62;
    v65 = v64;
    v55 = x;
    if (v14)
    {
      [v14 transform];
      v67 = v136.a;
      v66 = v136.b;
      v69 = v136.c;
      v68 = v136.d;
      v71 = v136.tx;
      v70 = v136.ty;
    }

    else
    {
      v70 = 0.0;
      v68 = 0.0;
      v66 = 0.0;
      v71 = 0.0;
      v69 = 0.0;
      v67 = 0.0;
    }

    v72 = v71 + v65 * v69 + v67 * v63;
    v73 = v70 + v65 * v68 + v66 * v63;
  }

  if (sub_1001208AC(v10, v9))
  {
    v9 = v45;
    v10 = v44;
  }

  v74 = sub_1001208AC(v55, v128);
  if (v74)
  {
    v75 = v73;
  }

  else
  {
    v75 = v128;
  }

  if (v74)
  {
    v76 = v72;
  }

  else
  {
    v76 = v55;
  }

  if (a4 == 10)
  {
    v77 = v9;
  }

  else
  {
    v77 = v75;
  }

  v126 = v77;
  if (a4 == 10)
  {
    v78 = v10;
  }

  else
  {
    v78 = v76;
  }

  v129 = v78;
  if (a4 == 10)
  {
    v79 = v75;
  }

  else
  {
    v79 = v9;
  }

  if (a4 == 10)
  {
    v80 = v76;
  }

  else
  {
    v80 = v10;
  }

  v81 = [(CRLCanvasAbstractLayout *)self geometry];
  [v81 frame];
  v83 = v82;
  if (v80 > v129)
  {
    v84 = [(CRLCanvasAbstractLayout *)self geometry];
    [v84 size];
    v83 = v83 + v85;
  }

  sub_10011F31C(v80, v79, v129);
  v86 = sub_10011F334(v80, v79, v83 - v80);
  v121 = v87;
  v122 = v86;
  v88 = [(CRLCanvasAbstractLayout *)self geometry];
  v89 = v88;
  if (v88)
  {
    [v88 transform];
  }

  else
  {
    memset(&v135, 0, sizeof(v135));
  }

  CGAffineTransformInvert(&v136, &v135);
  v123 = vaddq_f64(*&v136.tx, vmlaq_n_f64(vmulq_n_f64(*&v136.c, v121), *&v136.a, v122));
  v90 = [(CRLCanvasAbstractLayout *)self geometry];
  v91 = v90;
  if (v90)
  {
    [v90 transform];
  }

  else
  {
    memset(&v135, 0, sizeof(v135));
  }

  CGAffineTransformInvert(&v136, &v135);
  v92 = [CRLBezierPath bezierPathWithStart:*&v123 end:vaddq_f64(*&v136.tx, vmlaq_n_f64(vmulq_n_f64(*&v136.c, v126), *&v136.a, v129))];

  v93 = [(CRLCanvasLayout *)self pathForClippingConnectionLines];
  v94 = [v93 copy];

  v95 = +[NSMutableArray array];
  [v92 addIntersectionsWithPath:v94 to:v95 allIntersections:1 reversed:0];
  if ([v95 count])
  {
    v124 = v18;
    v127 = a5;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v96 = v95;
    v97 = [v96 countByEnumeratingWithState:&v131 objects:v137 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v132;
      v100 = 0.0;
      v101 = 2.22507386e-308;
      v102 = 1.79769313e308;
      v103 = 0.0;
      do
      {
        for (i = 0; i != v98; i = i + 1)
        {
          if (*v132 != v99)
          {
            objc_enumerationMutation(v96);
          }

          v105 = *(*(&v131 + 1) + 8 * i);
          [v105 point];
          if (v106 < v102)
          {
            [v105 point];
            v102 = v107;
            v100 = v108;
          }

          [v105 point];
          if (v109 > v101)
          {
            [v105 point];
            v101 = v110;
            v103 = v111;
          }
        }

        v98 = [v96 countByEnumeratingWithState:&v131 objects:v137 count:16];
      }

      while (v98);
    }

    else
    {
      v100 = 0.0;
      v101 = 2.22507386e-308;
      v102 = 1.79769313e308;
      v103 = 0.0;
    }

    a5 = v127;
    v18 = v124;
  }

  else
  {
    v100 = 0.0;
    v101 = 2.22507386e-308;
    v102 = 1.79769313e308;
    v103 = 0.0;
  }

  v112 = [(CRLCanvasAbstractLayout *)self geometry];
  v113 = v112;
  if (v112)
  {
    [v112 transform];
    v114 = *&v136.a;
    v115 = *&v136.c;
    v116 = *&v136.tx;
  }

  else
  {
    v116 = 0uLL;
    v114 = 0uLL;
    v115 = 0uLL;
  }

  if (v80 > v129)
  {
    v117 = v102;
  }

  else
  {
    v117 = v101;
  }

  if (v80 > v129)
  {
    v118 = v100;
  }

  else
  {
    v118 = v103;
  }

  v130 = vaddq_f64(v116, vmlaq_n_f64(vmulq_n_f64(v115, v118), v114, v117));

  *a5 = sub_100120090(v130.f64[0], v130.f64[1], v80, v79);
  v120 = v130.f64[1];
  v119 = v130.f64[0];
  result.y = v120;
  result.x = v119;
  return result;
}

- (id)commandsForAdjustingMagnetsFromClineLayouts
{
  v56 = objc_alloc_init(NSMutableArray);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v59 = self;
  obj = *(&self->mInitialBoundsForStandardKnobs.size.height + 2);
  v3 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v68;
    v55 = *v68;
    do
    {
      v6 = 0;
      v57 = v4;
      do
      {
        if (*v68 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v67 + 1) + 8 * v6);
        if ([v7 magnetsAdjusted])
        {
          v8 = [v7 connectionLineInfo];
          v9 = [v8 connectionLinePathSource];
          v10 = [v9 copy];

          v11 = [v10 headMagnet];

          if (v11)
          {
            [v7 headMagnetNormalizedPosition];
            v60 = v13;
            v62 = v12;
            if ([v7 overridenHeadMagnetNormalizedPosition])
            {
              [v7 headMagnetNormalizedPosition];
              v15 = v14;
              v17 = v16;
              v18 = [v7 connectedTo];
              [(CRLCanvasLayout *)v59 p_convertNormalizedPositionFromLayoutToPureGeomtry:v18 forLayout:v15, v17];
              v60 = v20;
              v62 = v19;

              v21 = [v7 connectedTo];
              v22 = [v21 pureGeometry];
              v23 = v22;
              if (v22)
              {
                [v22 fullTransform];
                v24 = v64;
                v25 = v65;
                v26 = v66;
              }

              else
              {
                v26 = 0uLL;
                v24 = 0uLL;
                v25 = 0uLL;
              }

              [v7 setHeadMagnetPosition:{vaddq_f64(v26, vmlaq_n_f64(vmulq_n_f64(v25, v60), v24, v62))}];
            }

            v27 = -[CRLConnectionLineMagnet initWithType:normalizedPosition:]([CRLConnectionLineMagnet alloc], "initWithType:normalizedPosition:", [v7 headMagnetType], v62, v60);
            [v10 setHeadMagnet:v27];
          }

          v28 = [v10 tailMagnet];

          if (v28)
          {
            [v7 tailMagnetNormalizedPosition];
            v61 = v30;
            v63 = v29;
            if ([v7 overridenTailMagnetNormalizedPosition])
            {
              [v7 tailMagnetNormalizedPosition];
              v32 = v31;
              v34 = v33;
              v35 = [v7 connectedFrom];
              [(CRLCanvasLayout *)v59 p_convertNormalizedPositionFromLayoutToPureGeomtry:v35 forLayout:v32, v34];
              v61 = v37;
              v63 = v36;

              v38 = [v7 connectedFrom];
              v39 = [v38 pureGeometry];
              v40 = v39;
              if (v39)
              {
                [v39 fullTransform];
                v41 = v64;
                v42 = v65;
                v43 = v66;
              }

              else
              {
                v43 = 0uLL;
                v41 = 0uLL;
                v42 = 0uLL;
              }

              [v7 setTailMagnetPosition:{vaddq_f64(v43, vmlaq_n_f64(vmulq_n_f64(v42, v61), v41, v63))}];
            }

            v44 = -[CRLConnectionLineMagnet initWithType:normalizedPosition:]([CRLConnectionLineMagnet alloc], "initWithType:normalizedPosition:", [v7 tailMagnetType], v63, v61);
            [v10 setTailMagnet:v44];
          }

          v45 = [(CRLCanvasLayout *)v59 layoutController];
          v46 = [v45 boardItemOwner];
          v47 = [v8 getConnectedToWithBoardItemOwner:v46];

          v48 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v8 connectedItem:v47 chirality:1 pathSource:v10];
          [v56 addObject:v48];
          v49 = [(CRLCanvasLayout *)v59 layoutController];
          [v49 boardItemOwner];
          v51 = v50 = v8;
          v52 = [v50 getConnectedFromWithBoardItemOwner:v51];

          v53 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v50 connectedItem:v52 chirality:0 pathSource:v10];
          [v56 addObject:v53];
          [v7 setMagnetsAdjusted:0];

          v5 = v55;
          v4 = v57;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v4);
  }

  return v56;
}

- (CGPoint)p_convertNormalizedPositionFromLayoutToPureGeomtry:(CGPoint)a3 forLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  v7 = [v6 geometry];
  v8 = v7;
  if (v7)
  {
    [v7 fullTransform];
    a = v26.a;
    b = v26.b;
    c = v26.c;
    d = v26.d;
    tx = v26.tx;
    ty = v26.ty;
  }

  else
  {
    ty = 0.0;
    d = 0.0;
    b = 0.0;
    tx = 0.0;
    c = 0.0;
    a = 0.0;
  }

  if (v6)
  {
    [v6 pureTransformInRoot];
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  CGAffineTransformInvert(&v26, &v25);
  v24 = vaddq_f64(*&v26.tx, vmlaq_n_f64(vmulq_n_f64(*&v26.c, ty + y * d + b * x), *&v26.a, tx + y * c + a * x));
  v15 = [v6 pureGeometry];
  [v15 size];
  v16 = sub_10011ECB4();
  v19 = sub_100121720(v24.f64[0], v24.f64[1], v16, v17, v18);
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.y = v23;
  result.x = v22;
  return result;
}

- (void)enqueueCommandsForAdjustingPathSourcesAfterRoutingChanges
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(CRLCanvasLayout *)self connectedLayouts];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v8 controlKnobPositionChangedFromRouting])
        {
          v9 = [(CRLCanvasLayout *)self layoutController];
          v10 = [v9 canvas];
          v11 = [v10 canvasController];
          v12 = [v11 repForLayout:v8];

          v13 = objc_opt_class();
          v14 = sub_100014370(v13, v12);
          v15 = v14;
          if (v14)
          {
            [v14 enqueuePathSourceChanges];
            [v8 setControlKnobPositionChangedFromRouting:0];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

- (CGPoint)nearestEdgePointOnWrapPathFromPoint:(CGPoint)a3
{
  v5 = 0;
  [(CRLCanvasLayout *)self p_findNearestEdgePointOnWrapPathFromPoint:&v5 withSearchThreshold:a3.x withDistanceToPoint:a3.y, 10.0];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)p_findNearestEdgePointOnWrapPathFromPoint:(CGPoint)a3 withSearchThreshold:(double)a4 withDistanceToPoint:(double *)a5
{
  y = a3.y;
  x = a3.x;
  v8 = [(CRLCanvasLayout *)self pathForClippingConnectionLines];
  v22 = 0.0;
  v23 = 0;
  [(CRLCanvasAbstractLayout *)self transform];
  CGAffineTransformInvert(&v21, &v20);
  [v8 distanceToPoint:&v23 elementIndex:&v22 tValue:1 threshold:vaddq_f64(*&v21.tx findClosestMatch:{vmlaq_n_f64(vmulq_n_f64(*&v21.c, y), *&v21.a, x)), a4}];
  *a5 = v9;
  if (v9 >= a4)
  {
    v12 = xmmword_1014629F0;
  }

  else
  {
    [v8 pointAt:v23 fromElement:v22];
    v16 = v11;
    v18 = v10;
    [(CRLCanvasAbstractLayout *)self transform];
    v12 = vaddq_f64(*&v21.tx, vmlaq_n_f64(vmulq_n_f64(*&v21.c, v16), *&v21.a, v18));
  }

  v19 = v12;

  v14 = v19.f64[1];
  v13 = v19.f64[0];
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)findNewEdgeMagnetCanvasPositionForConnectionLine:(id)a3 forLineEnd:(unint64_t)a4 withCanvasPosition:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  [(CRLCanvasLayout *)self boundsForStandardKnobs];
  v11 = v10;
  [(CRLCanvasLayout *)self boundsForStandardKnobs];
  v13 = fmax(v11, v12);
  v22 = 0.0;
  if ([v9 connectionType])
  {
    [(CRLCanvasLayout *)self p_findNearestEdgePointOnWrapPathFromPoint:&v22 withSearchThreshold:x withDistanceToPoint:y, v13];
  }

  else
  {
    v16 = INFINITY;
    v17 = INFINITY;
    if (a4 == 11)
    {
      v18 = x;
    }

    else
    {
      v18 = INFINITY;
    }

    if (a4 == 11)
    {
      v19 = y;
    }

    else
    {
      v19 = INFINITY;
    }

    if (a4 == 10)
    {
      v16 = x;
      v17 = y;
    }

    [(CRLCanvasLayout *)self p_findFirstEdgePointIntersectionOnWrapPathWithLine:v9 forLineEnd:a4 withDistanceToPoint:&v22 withOverridenHeadPosition:v18 withOverridenTailPosition:v19, v16, v17];
  }

  if (v22 < v13)
  {
    y = v15;
    x = v14;
  }

  v20 = x;
  v21 = y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGSize)maximumInlineFrameSize
{
  v2 = *(&self->mConnectedLayouts + 2);
  v3 = *(&self->mMaximumInlineFrameSize.width + 2);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)initialBoundsForStandardKnobs
{
  v2 = *(&self->mBaseGeometry + 2);
  v3 = *(&self->mInitialBoundsForStandardKnobs.origin.x + 2);
  v4 = *(&self->mInitialBoundsForStandardKnobs.origin.y + 2);
  v5 = *(&self->mInitialBoundsForStandardKnobs.size.width + 2);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setInitialBoundsForStandardKnobs:(CGRect)a3
{
  *(&self->mBaseGeometry + 2) = *&a3.origin.x;
  *(&self->mInitialBoundsForStandardKnobs.origin.x + 2) = a3.origin.y;
  *(&self->mInitialBoundsForStandardKnobs.origin.y + 2) = a3.size.width;
  *(&self->mInitialBoundsForStandardKnobs.size.width + 2) = a3.size.height;
}

@end