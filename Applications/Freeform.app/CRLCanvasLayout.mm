@interface CRLCanvasLayout
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)descendentWrappablesContainsWrappable:(id)wrappable;
- (BOOL)i_anyAncestorCurrentlyBeingFreeTransformedWantsNormalLayoutDuringDynamicFreeTransform;
- (BOOL)i_anyAncestorCurrentlyBeingRotatedWantsNormalLayoutDuringDynamicRotation;
- (BOOL)isBeingTransformed;
- (BOOL)isInGroup;
- (BOOL)isInTopLevelContainerForEditing;
- (BOOL)isSelectable;
- (BOOL)layoutHasValidFrameForCulling;
- (BOOL)resizeMayChangeAspectRatio;
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space;
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
- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)canvas;
- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)canvas;
- (CGPoint)findNewEdgeMagnetCanvasPositionForConnectionLine:(id)line forLineEnd:(unint64_t)end withCanvasPosition:(CGPoint)position;
- (CGPoint)getCardinalPositionFromType:(unint64_t)type;
- (CGPoint)getCardinalPositionWithParentTransformFromType:(unint64_t)type;
- (CGPoint)nearestEdgePointOnWrapPathFromPoint:(CGPoint)point;
- (CGPoint)p_convertNormalizedPositionFromLayoutToPureGeomtry:(CGPoint)geomtry forLayout:(id)layout;
- (CGPoint)p_findFirstEdgePointIntersectionOnWrapPathWithLine:(id)line forLineEnd:(unint64_t)end withDistanceToPoint:(double *)point withOverridenHeadPosition:(CGPoint)position withOverridenTailPosition:(CGPoint)tailPosition;
- (CGPoint)p_findNearestEdgePointOnWrapPathFromPoint:(CGPoint)point withSearchThreshold:(double)threshold withDistanceToPoint:(double *)toPoint;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform;
- (CGRect)boundsForStandardKnobs;
- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)canvas;
- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)canvas;
- (CGRect)frameForCaptionPositioning;
- (CGRect)frameForCulling;
- (CGRect)frameForCullingWithBaseFrame:(CGRect)frame additionalTransform:(CGAffineTransform *)transform;
- (CGRect)frameForMiniFormatterPositioning;
- (CGRect)i_takeDirtyRect;
- (CGRect)initialBoundsForStandardKnobs;
- (CGRect)p_frameForCullingWithAdditionalTransform:(CGAffineTransform *)transform;
- (CGRect)rectInRootForSelectionPath:(id)path;
- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path;
- (CGRect)shadowedNaturalBoundsWithoutOffset;
- (CGSize)maximumFrameSizeForChild:(id)child;
- (CGSize)maximumInlineFrameSize;
- (CGSize)minimumSize;
- (CGSize)p_newMaxInlineFrameSize;
- (CRLBezierPath)i_wrapPath;
- (CRLCanvasLayout)initWithInfo:(id)info;
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
- (double)percentOfUnscaledRectContainedInParentRep:(CGRect)rep;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withTransform:(CGAffineTransform *)transform;
- (id)commandForSettingAspectRatioLocked:(BOOL)locked;
- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)transform;
- (id)commandToFlipWithOrientation:(int)orientation;
- (id)commandsForAdjustingMagnetsFromClineLayouts;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry;
- (id)computeLayoutGeometry;
- (id)convexHullPath;
- (id)layoutController;
- (id)layoutGeometryFromInfo;
- (id)newCommandToMoveByOffset:(CGPoint)offset whenDistributingLayoutsByOffsets:(id)offsets;
- (id)rootLayout;
- (id)unscaledPositionsForCollaboratorHUDForSelectionPath:(id)path;
- (unint64_t)p_directionForCollaboratorCursorKnobTag:(unint64_t)tag;
- (void)addConnectedLayout:(id)layout;
- (void)adjustCustomMagnetPositions;
- (void)beginDrag;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)commands;
- (void)beginFreeTransformWithTracker:(id)tracker;
- (void)calculateAndSetPointsToSearchReference:(id)reference;
- (void)dragBy:(CGPoint)by;
- (void)dragByUnscaled:(CGPoint)unscaled;
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
- (void)layoutSearchForHyperlinkWithHitBlock:(id)block;
- (void)layoutSearchForNearbyElementsWithHitBlock:(id)block;
- (void)p_adjustCardinalMagnetTValuesIfNeededWithPadding:(double)padding forLowestT:(double *)t forHighestT:(double *)highestT;
- (void)p_adjustEdgeMagnetPosition:(id)position forLineEnd:(unint64_t)end;
- (void)p_adjustFloatingMagnetPosition:(id)position forLineEnd:(unint64_t)end;
- (void)p_calculateClampModelValuesWithAdditionalTransform:(CGAffineTransform *)transform andPerformBlock:(id)block;
- (void)p_calculateMagnetPositionsIfNeeded;
- (void)p_getIntersectionsForTestPath:(id)path withLowestT:(double *)t withHighestT:(double *)highestT;
- (void)p_invalidateConnectedLayouts;
- (void)p_invalidateDescendentWrapPaths;
- (void)p_invalidateDescendentWrapPathsInRoot;
- (void)p_recursiveInvalidate;
- (void)p_registerWithLayoutController:(id)controller;
- (void)p_unregisterWithLayoutController:(id)controller;
- (void)p_updateDescendentWrapPathsWithTransform:(CGAffineTransform *)transform;
- (void)processChangedProperty:(unint64_t)property;
- (void)processChanges:(id)changes;
- (void)recursivelyAddLayoutAndDependentLayoutsToValidateSet:(id)set;
- (void)setDynamicGeometry:(id)geometry;
- (void)setInitialBoundsForStandardKnobs:(CGRect)knobs;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setParent:(id)parent;
- (void)takeFreeTransformFromTracker:(id)tracker;
- (void)takeRotationFromTracker:(id)tracker;
- (void)takeSizeFromTracker:(id)tracker;
- (void)transferLayoutGeometryToInfo:(id)info withAdditionalTransform:(CGAffineTransform *)transform assertIfInDocument:(BOOL)document;
- (void)unregisterFromLayoutController;
- (void)updateChildrenFromInfo;
- (void)validate;
@end

@implementation CRLCanvasLayout

- (CRLCanvasLayout)initWithInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = CRLCanvasLayout;
  v6 = [(CRLCanvasAbstractLayout *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 74), info);
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
    geometry = [(CRLCanvasAbstractLayout *)self geometry];
  }

  else
  {
    geometry = 0;
  }

  return geometry;
}

- (void)setDynamicGeometry:(id)geometry
{
  geometryCopy = geometry;
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

  [(CRLCanvasAbstractLayout *)self setGeometry:geometryCopy];
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

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform
{
  [(CRLCanvasAbstractLayout *)self frame];
  v4 = *&transform->c;
  *&v5.a = *&transform->a;
  *&v5.c = v4;
  *&v5.tx = *&transform->tx;
  return CGRectApplyAffineTransform(v6, &v5);
}

- (CGRect)p_frameForCullingWithAdditionalTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->c;
  v11 = *&transform->a;
  v12 = v5;
  v13 = *&transform->tx;
  [(CRLCanvasLayout *)self baseFrameForFrameForCullingWithAdditionalTransform:&v11];
  v6 = *&transform->c;
  v11 = *&transform->a;
  v12 = v6;
  v13 = *&transform->tx;
  [(CRLCanvasLayout *)self frameForCullingWithBaseFrame:&v11 additionalTransform:?];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)frameForCullingWithBaseFrame:(CGRect)frame additionalTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  memset(&v30, 0, sizeof(v30));
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v11 = geometry;
  if (geometry)
  {
    [geometry transform];
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
  }

  t1 = v30;
  memset(&v29, 0, sizeof(v29));
  v12 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v12;
  *&t2.tx = *&transform->tx;
  CGAffineTransformConcat(&v29, &t1, &t2);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  children = [(CRLCanvasAbstractLayout *)self children];
  v14 = [children countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(children);
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

      v15 = [children countByEnumeratingWithState:&v23 objects:v31 count:16];
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
    layoutController = [(CRLCanvasLayout *)self layoutController];
    [layoutController invalidateLayout:self];

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
    dependentLayouts = [(CRLCanvasLayout *)self dependentLayouts];
    v6 = [dependentLayouts countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(dependentLayouts);
          }

          [*(*(&v10 + 1) + 8 * i) invalidate];
        }

        v7 = [dependentLayouts countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  children = [(CRLCanvasAbstractLayout *)self children];
  [children makeObjectsPerformSelector:a2];
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
    dependentLayouts = [(CRLCanvasLayout *)self dependentLayouts];
    bidirectionalSizeDependentLayouts = [(CRLCanvasLayout *)self bidirectionalSizeDependentLayouts];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = dependentLayouts;
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
    v11 = bidirectionalSizeDependentLayouts;
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
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v8 = sub_100014370(v3, parent);

  v5 = v8;
  if (v8)
  {
    layoutHasValidFrameForCulling = [v8 layoutHasValidFrameForCulling];
    v5 = v8;
    if (layoutHasValidFrameForCulling)
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
  layoutController = [(CRLCanvasLayout *)self layoutController];
  [layoutController invalidateChildrenOfLayout:self];
}

- (void)updateChildrenFromInfo
{
  childInfosForChildLayouts = [(CRLCanvasLayout *)self childInfosForChildLayouts];
  children = [(CRLCanvasAbstractLayout *)self children];
  v5 = [childInfosForChildLayouts count];
  v26 = children;
  if (v5 == [children count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = childInfosForChildLayouts;
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
          info = [v13 info];

          if (info != v12)
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
    layoutController = [(CRLCanvasLayout *)self layoutController];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = childInfosForChildLayouts;
    v16 = childInfosForChildLayouts;
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
          v22 = [layoutController layoutForInfo:v21 childOfLayout:{self, v25}];
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

    childInfosForChildLayouts = v25;
  }

  children2 = [(CRLCanvasAbstractLayout *)self children];
  [children2 makeObjectsPerformSelector:"updateChildrenFromInfo"];
}

- (void)unregisterFromLayoutController
{
  layoutController = [(CRLCanvasLayout *)self layoutController];

  if (layoutController)
  {
    layoutController2 = [(CRLCanvasLayout *)self layoutController];
    [(CRLCanvasLayout *)self p_unregisterWithLayoutController:layoutController2];
  }
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  parent = [(CRLCanvasAbstractLayout *)self parent];

  if (parent != parentCopy)
  {
    [(CRLCanvasLayout *)self parentWillChangeTo:parentCopy];
    root = [(CRLCanvasAbstractLayout *)self root];
    root2 = [parentCopy root];
    if (root != root2)
    {
      layoutController = [(CRLCanvasLayout *)self layoutController];
      if (layoutController)
      {
        [(CRLCanvasLayout *)self p_unregisterWithLayoutController:layoutController];
      }
    }

    v12.receiver = self;
    v12.super_class = CRLCanvasLayout;
    [(CRLCanvasAbstractLayout *)&v12 setParent:parentCopy];
    v9 = objc_opt_class();
    v10 = sub_100014370(v9, parentCopy);
    [v10 i_clearInvalidationCache];

    if (root != root2)
    {
      layoutController2 = [(CRLCanvasLayout *)self layoutController];
      if (layoutController2)
      {
        [(CRLCanvasLayout *)self p_registerWithLayoutController:layoutController2];
        [(CRLCanvasLayout *)self p_recursiveInvalidate];
        [(CRLCanvasLayout *)self i_recursivelyClearInvalidationCache];
      }
    }

    [(CRLCanvasLayout *)self parentDidChange];
    if (root2)
    {
      [(CRLCanvasLayout *)self p_invalidateConnectedLayouts];
    }
  }
}

- (id)rootLayout
{
  v3 = objc_opt_class();
  root = [(CRLCanvasAbstractLayout *)self root];
  v5 = sub_100014370(v3, root);

  return v5;
}

- (id)layoutController
{
  rootLayout = [(CRLCanvasLayout *)self rootLayout];
  layoutController = [rootLayout layoutController];

  return layoutController;
}

- (void)validate
{
  if ([(CRLCanvasLayout *)self invalidGeometry])
  {
    computeLayoutGeometry = [(CRLCanvasLayout *)self computeLayoutGeometry];
    [(CRLCanvasAbstractLayout *)self setGeometry:computeLayoutGeometry];

    parent = [(CRLCanvasAbstractLayout *)self parent];
    if (parent && [(CRLCanvasAbstractLayout *)self shouldApplyOffsetWhenComputingLayoutGeometry])
    {
      [parent offsetToApplyWhenComputingLayoutGeometryOfChild:self];
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
  info = [(CRLCanvasLayout *)self info];
  geometry = [info geometry];
  v9 = [(CRLCanvasLayoutGeometry *)v6 initWithInfoGeometry:geometry];

  return v9;
}

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry
{
  if (geometry)
  {
    [geometry fullTransform];
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
  parent = [(CRLCanvasAbstractLayout *)self parent];
  if (parent)
  {
    v3 = parent;
    do
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      parent2 = [v3 parent];

      v3 = parent2;
    }

    while (parent2);
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)isInTopLevelContainerForEditing
{
  parent = [(CRLCanvasAbstractLayout *)self parent];
  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  canvasController = [canvas canvasController];

  editorController = [canvasController editorController];
  selectionPath = [editorController selectionPath];
  v9 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];

  if (v9)
  {
    v10 = objc_opt_class();
    boardItems = [v9 boardItems];
    anyObject = [boardItems anyObject];
    v13 = [canvasController layoutForInfo:anyObject];
    v14 = sub_100014370(v10, v13);

    if (parent)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v14 = 0;
  if (!parent)
  {
LABEL_6:
    v20 = 1;
    goto LABEL_12;
  }

  while (1)
  {
LABEL_3:
    v15 = objc_opt_class();
    v16 = sub_100014370(v15, parent);
    v17 = v16;
    if (v16)
    {
      info = [v16 info];
      info2 = [v14 info];
      v20 = info == info2;

      goto LABEL_11;
    }

    root = [parent root];

    if (root == parent)
    {
      break;
    }

    v3Parent = [parent parent];

    parent = v3Parent;
    if (!v3Parent)
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

- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)commands
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

  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v15 = [geometry copy];
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

  info = [(CRLCanvasLayout *)self info];
  geometry2 = [info geometry];
  v22 = [geometry2 copy];
  v23 = *(&self->mIsInRealTimeDynamicOperation + 2);
  *(&self->mIsInRealTimeDynamicOperation + 2) = v22;

  *(&self->mInfo + 2) = 1;
  BYTE2(self->mConvexHullPath) = commands;
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
  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  canvasController = [canvas canvasController];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  dynamicOperationController = [canvasController dynamicOperationController];
  currentlyTransformingReps = [dynamicOperationController currentlyTransformingReps];

  v8 = [currentlyTransformingReps countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(currentlyTransformingReps);
        }

        layout = [*(*(&v15 + 1) + 8 * i) layout];

        if (layout == self)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v9 = [currentlyTransformingReps countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)dragByUnscaled:(CGPoint)unscaled
{
  y = unscaled.y;
  x = unscaled.x;
  parent = [(CRLCanvasAbstractLayout *)self parent];

  if (parent)
  {
    parent2 = [(CRLCanvasAbstractLayout *)self parent];
    v8 = parent2;
    if (parent2)
    {
      [parent2 transformInRoot];
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

- (void)dragBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != CGPointZero.x || by.y != CGPointZero.y)
  {
    if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
    {
      layoutController = [(CRLCanvasLayout *)self layoutController];
      canvas = [layoutController canvas];

      canvasController = [canvas canvasController];
      commandController = [canvasController commandController];

      v11 = [canvas repForLayout:self];
      info = [(CRLCanvasLayout *)self info];
      geometry = [info geometry];
      CGAffineTransformMakeTranslation(&v32, x, y);
      v14 = [geometry geometryByAppendingTransform:&v32];
      v15 = [v11 newCommandToApplyGeometry:v14 toInfo:info];
      [commandController enqueueCommand:v15];
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

    geometry2 = [(CRLCanvasAbstractLayout *)self geometry];
    v20 = [geometry2 geometryByTranslatingBy:{x, y}];

    [(CRLCanvasLayout *)self setDynamicGeometry:v20];
    [(CRLCanvasLayout *)self p_invalidateConnectedLayouts];
    layoutController2 = [(CRLCanvasLayout *)self layoutController];
    canvas2 = [layoutController2 canvas];
    [canvas2 canvasInvalidatedForLayout:self];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    dependentLayoutsForDrag = [(CRLCanvasLayout *)self dependentLayoutsForDrag];
    v24 = [dependentLayoutsForDrag countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(dependentLayoutsForDrag);
          }

          [*(*(&v28 + 1) + 8 * i) invalidateFrame];
        }

        v25 = [dependentLayoutsForDrag countByEnumeratingWithState:&v28 objects:v33 count:16];
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
      originalGeometry = [v8 originalGeometry];

      if (originalGeometry)
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

      parent = [(CGAffineTransform *)v6 parent];

      v6 = parent;
    }

    while (parent);
  }

  return result;
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space
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
    originalPureGeometry = [(CRLCanvasLayout *)self originalPureGeometry];
    v11 = originalPureGeometry;
    if (originalPureGeometry)
    {
      [originalPureGeometry fullTransform];
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

- (void)takeRotationFromTracker:(id)tracker
{
  trackerCopy = tracker;
  if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
  {
    layoutController = [(CRLCanvasLayout *)self layoutController];
    canvas = [layoutController canvas];

    canvasController = [canvas canvasController];
    commandController = [canvasController commandController];

    v9 = [canvas repForLayout:self];
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    if (trackerCopy)
    {
      [trackerCopy rotateTransform];
    }

    v10 = *(&self->mIsInRealTimeDynamicOperation + 2);
    v14[0] = v15;
    v14[1] = v16;
    v14[2] = v17;
    v11 = [v10 geometryByAppendingTransform:v14];
    info = [(CRLCanvasLayout *)self info];
    v13 = [v9 newCommandToApplyGeometry:v11 toInfo:info];

    [commandController enqueueCommand:v13];
  }
}

- (BOOL)i_anyAncestorCurrentlyBeingRotatedWantsNormalLayoutDuringDynamicRotation
{
  v3 = objc_opt_class();
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100014370(v3, parent);

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
      parent2 = [v5 parent];
      v8 = sub_100014370(v6, parent2);

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
  info = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, info);

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
  info = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, info);

  LOBYTE(info) = [v5 canAspectRatioLockBeChangedByUser];
  return info;
}

- (id)commandForSettingAspectRatioLocked:(BOOL)locked
{
  lockedCopy = locked;
  v5 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v7 = sub_100014370(v5, info);

  v8 = [[_TtC8Freeform30CRLCommandSetAspectRatioLocked alloc] initWithBoardItem:v7 aspectRatioLocked:lockedCopy];

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

- (void)takeSizeFromTracker:(id)tracker
{
  trackerCopy = tracker;
  if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
  {
    layoutController = [(CRLCanvasLayout *)self layoutController];
    canvas = [layoutController canvas];

    canvasController = [canvas canvasController];
    commandController = [canvasController commandController];

    v9 = [canvas repForLayout:self];
    v10 = [trackerCopy currentGeometryForLayout:self];
    v11 = [v10 copy];

    info = [(CRLCanvasLayout *)self info];
    v13 = [v9 newCommandToApplyGeometry:v11 toInfo:info];

    [commandController enqueueCommand:v13];
  }

  if (trackerCopy)
  {
    [trackerCopy transformForLayout:self];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  [(CRLCanvasLayout *)self layoutTransformInInfoSpace:v14];
  [(CRLCanvasLayout *)self resizeWithTransform:v15];
}

- (void)beginFreeTransformWithTracker:(id)tracker
{
  *(&self->mInfo + 2) = 5;
  trackerCopy = tracker;
  isDragging = [trackerCopy isDragging];
  isRotating = [trackerCopy isRotating];
  v7 = 2;
  if (!isRotating)
  {
    v7 = 0;
  }

  v8 = v7 | isDragging;
  if ([trackerCopy isResizing])
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  inRotateResizeMode = [trackerCopy inRotateResizeMode];

  v11 = 8;
  if (!inRotateResizeMode)
  {
    v11 = 0;
  }

  *(&self->mLayoutState + 2) = v8 | v9 | v11;
}

- (void)takeFreeTransformFromTracker:(id)tracker
{
  trackerCopy = tracker;
  isDragging = [trackerCopy isDragging];
  isRotating = [trackerCopy isRotating];
  v7 = 2;
  if (!isRotating)
  {
    v7 = 0;
  }

  v8 = v7 | isDragging;
  if ([trackerCopy isResizing])
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  inRotateResizeMode = [trackerCopy inRotateResizeMode];
  v11 = 8;
  if (!inRotateResizeMode)
  {
    v11 = 0;
  }

  *(&self->mLayoutState + 2) = v8 | v9 | v11;
  if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
  {
    layoutController = [(CRLCanvasLayout *)self layoutController];
    canvas = [layoutController canvas];

    canvasController = [canvas canvasController];
    commandController = [canvasController commandController];

    v16 = [canvas repForLayout:self];
    v17 = [trackerCopy currentGeometryForLayout:self];
    v18 = [v17 copy];

    info = [(CRLCanvasLayout *)self info];
    v20 = [v16 newCommandToApplyGeometry:v18 toInfo:info];

    [commandController enqueueCommand:v20];
  }

  if (trackerCopy)
  {
    [trackerCopy freeTransformForLayout:self];
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
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100014370(v3, parent);

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
      parent2 = [v5 parent];
      v8 = sub_100014370(v6, parent2);

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
  originalGeometry = [(CRLCanvasLayout *)self originalGeometry];
  v12 = originalGeometry;
  if (originalGeometry)
  {
    [originalGeometry transform];
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
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v12 = geometry;
  if (geometry)
  {
    [geometry transform];
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
  pureGeometry = [(CRLCanvasLayout *)self pureGeometry];
  v4 = [(CRLCanvasAbstractLayout *)self geometryInRoot:pureGeometry];

  return v4;
}

- (CRLCanvasLayoutGeometry)pureGeometryInParent
{
  pureGeometry = [(CRLCanvasLayout *)self pureGeometry];
  v4 = [pureGeometry mutableCopy];

  parent = [(CRLCanvasAbstractLayout *)self parent];
  geometry = [parent geometry];
  v7 = geometry;
  if (geometry)
  {
    [geometry transform];
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
  pureGeometry = [(CRLCanvasLayout *)self pureGeometry];
  v4 = *&CGAffineTransformIdentity.c;
  v25 = *&CGAffineTransformIdentity.a;
  v26 = v4;
  v27 = *&CGAffineTransformIdentity.tx;
  parent = [(CRLCanvasAbstractLayout *)self parent];
  if (parent)
  {
    v6 = parent;
    do
    {
      if ([v6 isRootLayoutForInspectorGeometry])
      {
        break;
      }

      geometry = [v6 geometry];
      v8 = geometry;
      if (geometry)
      {
        v21[0] = v25;
        v21[1] = v26;
        v21[2] = v27;
        [geometry transformByConcatenatingTransformTo:v21];
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

      parent2 = [v6 parent];

      v6 = parent2;
    }

    while (parent2);
  }

  v22 = v25;
  v23 = v26;
  v24 = v27;
  v10 = [pureGeometry geometryByTransformingBy:&v22];

  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  isAnchoredAtRight = [canvas isAnchoredAtRight];

  if (isAnchoredAtRight)
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
  inspectorGeometry = [(CRLCanvasLayout *)self inspectorGeometry];
  v3 = inspectorGeometry;
  if (inspectorGeometry)
  {
    [inspectorGeometry transform];
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
  pureGeometry = [(CRLCanvasLayout *)self pureGeometry];
  v6 = pureGeometry;
  if (pureGeometry)
  {
    [pureGeometry transform];
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
      geometry = [(CGAffineTransform *)v8 geometry];
      v10 = geometry;
      if (geometry)
      {
        v11 = *&retstr->c;
        v14[0] = *&retstr->a;
        v14[1] = v11;
        v14[2] = *&retstr->tx;
        [geometry transformByConcatenatingTransformTo:v14];
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

      parent = [(CGAffineTransform *)v8 parent];

      v8 = parent;
    }

    while (parent);
  }

  return result;
}

- (CGAffineTransform)originalPureTransformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  originalPureGeometry = [(CRLCanvasLayout *)self originalPureGeometry];
  v6 = originalPureGeometry;
  if (originalPureGeometry)
  {
    [originalPureGeometry transform];
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
      geometry = [(CGAffineTransform *)v8 geometry];
      v10 = geometry;
      if (geometry)
      {
        v11 = *&retstr->c;
        v14[0] = *&retstr->a;
        v14[1] = v11;
        v14[2] = *&retstr->tx;
        [geometry transformByConcatenatingTransformTo:v14];
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

      parent = [(CGAffineTransform *)v8 parent];

      v8 = parent;
    }

    while (parent);
  }

  return result;
}

- (id)commandToFlipWithOrientation:(int)orientation
{
  v5 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v7 = sub_100013F00(v5, info);

  geometry = [v7 geometry];
  v9 = [geometry mutableCopy];

  if (orientation)
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

- (unint64_t)p_directionForCollaboratorCursorKnobTag:(unint64_t)tag
{
  geometryInRoot = [(CRLCanvasAbstractLayout *)self geometryInRoot];
  v6 = geometryInRoot;
  if (geometryInRoot)
  {
    [geometryInRoot transform];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
  }

  v7 = sub_100139980(&v15);

  v8 = sub_1004C31F4(v7 * 1000.0);
  v9 = sub_100345E1C(tag, v8 / 1000.0);
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v11 = geometry;
  if (geometry)
  {
    [geometry transform];
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

- (id)unscaledPositionsForCollaboratorHUDForSelectionPath:(id)path
{
  [(CRLCanvasLayout *)self boundsForCollaboratorHUDForSelectionPath:path];
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

- (id)newCommandToMoveByOffset:(CGPoint)offset whenDistributingLayoutsByOffsets:(id)offsets
{
  y = offset.y;
  x = offset.x;
  v7 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v9 = sub_100014370(v7, info);

  info2 = [(CRLCanvasLayout *)self info];
  geometry = [info2 geometry];
  CGAffineTransformMakeTranslation(&v15, x, y);
  v12 = [geometry geometryByAppendingTransform:&v15];

  v13 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v9 geometry:v12];
  return v13;
}

- (void)transferLayoutGeometryToInfo:(id)info withAdditionalTransform:(CGAffineTransform *)transform assertIfInDocument:(BOOL)document
{
  documentCopy = document;
  infoCopy = info;
  if (documentCopy)
  {
    layoutController = [(CRLCanvasLayout *)self layoutController];
    canvas = [layoutController canvas];
    canvasController = [canvas canvasController];
    editingCoordinator = [canvasController editingCoordinator];

    v13 = objc_opt_class();
    v14 = sub_100014370(v13, infoCopy);
    v15 = v14;
    if (editingCoordinator)
    {
      if (v14)
      {
        mainBoard = [editingCoordinator mainBoard];
        v17 = [v15 id];
        v18 = [mainBoard containsObject:v17];

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
  v26 = infoCopy;
  v22 = *&transform->c;
  v24[0] = *&transform->a;
  v24[1] = v22;
  v24[2] = *&transform->tx;
  v23 = infoCopy;
  [(CRLCanvasLayout *)self p_calculateClampModelValuesWithAdditionalTransform:v24 andPerformBlock:v25];
}

- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)transform
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
  v3 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v3;
  v6[2] = *&transform->tx;
  [(CRLCanvasLayout *)self p_calculateClampModelValuesWithAdditionalTransform:v6 andPerformBlock:v7];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (void)p_calculateClampModelValuesWithAdditionalTransform:(CGAffineTransform *)transform andPerformBlock:(id)block
{
  blockCopy = block;
  pureGeometry = [(CRLCanvasLayout *)self pureGeometry];
  v8 = *&transform->c;
  v21[0] = *&transform->a;
  v21[1] = v8;
  v21[2] = *&transform->tx;
  v9 = [pureGeometry geometryByTransformingBy:v21];

  v10 = [(CRLCanvasLayout *)self computeInfoGeometryFromPureLayoutGeometry:v9];
  normalizedGeometry = [v10 normalizedGeometry];

  info = [(CRLCanvasLayout *)self info];
  geometry = [info geometry];

  if ([geometry widthValid] && (objc_msgSend(geometry, "heightValid") & 1) != 0)
  {
    v14 = normalizedGeometry;
  }

  else
  {
    v14 = [normalizedGeometry mutableCopy];
    [v14 setWidthValid:{objc_msgSend(geometry, "widthValid")}];
    [v14 setHeightValid:{objc_msgSend(geometry, "heightValid")}];
    [v14 size];
    v16 = v15;
    v18 = v17;
    if (([geometry widthValid] & 1) == 0)
    {
      [geometry size];
      if (v19 == 0.0)
      {
        v16 = 0.0;
      }
    }

    if (([geometry heightValid] & 1) == 0)
    {
      [geometry size];
      if (v20 == 0.0)
      {
        v18 = 0.0;
      }
    }

    [v14 setSize:{v16, v18}];
  }

  blockCopy[2](blockCopy, v14);
}

- (BOOL)isSelectable
{
  info = [(CRLCanvasLayout *)self info];
  if ([info isSelectable])
  {
    parentInfo = [info parentInfo];
    objc_opt_class();
    v4 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    do
    {
      v5 = v4;
      v4 = parentInfo;

      parentInfo = [v4 parentInfo];

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
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  [geometry size];
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
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  [geometry frame];
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
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v6 = geometry;
  if (geometry)
  {
    [geometry transform];
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
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v4 = geometry;
  if (geometry)
  {
    [geometry transform];
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
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v4 = geometry;
  if (geometry)
  {
    [geometry transform];
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
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v4 = geometry;
  if (geometry)
  {
    [geometry transform];
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
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v4 = geometry;
  if (geometry)
  {
    [geometry transform];
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

- (CGPoint)getCardinalPositionFromType:(unint64_t)type
{
  if (type > 3)
  {
    if (type == 4)
    {
      [(CRLCanvasLayout *)self cardinalSouthPosition];
      goto __CRLCanvasLayout_getCardinalPositionFromType__;
    }

    if (type == 5)
    {
      [(CRLCanvasLayout *)self cardinalWestPosition];
      goto __CRLCanvasLayout_getCardinalPositionFromType__;
    }

LABEL_8:
    [(CRLCanvasLayout *)self centerForConnecting];
    goto __CRLCanvasLayout_getCardinalPositionFromType__;
  }

  if (type == 2)
  {
    [(CRLCanvasLayout *)self cardinalNorthPosition];
    goto __CRLCanvasLayout_getCardinalPositionFromType__;
  }

  if (type != 3)
  {
    goto LABEL_8;
  }

  [(CRLCanvasLayout *)self cardinalEastPosition];
- (CGPoint)getCardinalPositionWithParentTransformFromType:(unint64_t)type
{
  [(CRLCanvasLayout *)self getCardinalPositionFromType:type];
  v12 = v5;
  v13 = v4;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  parent = [(CRLCanvasAbstractLayout *)self parent];
  if (parent)
  {
    parent2 = [(CRLCanvasAbstractLayout *)self parent];
    geometryInRoot = [parent2 geometryInRoot];
    v9 = geometryInRoot;
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

  v10 = vaddq_f64(v16, vmlaq_n_f64(vmulq_n_f64(v15, v12), v14, v13));
  v11 = v10.f64[1];
  result.x = v10.f64[0];
  result.y = v11;
  return result;
}

- (id)computeLayoutGeometry
{
  layoutGeometryFromInfo = [(CRLCanvasLayout *)self layoutGeometryFromInfo];
  v4 = objc_opt_class();
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v6 = sub_100014370(v4, parent);

  if (v6 && [(CRLCanvasLayout *)self layoutState]!= 4 && [(CRLCanvasLayout *)self layoutState]!= 5)
  {
    if ([(CRLCanvasLayout *)self layoutState]== 3 && ![(CRLCanvasLayout *)self wantsNormalLayoutDuringDynamicRotation])
    {
      v20 = [CRLCanvasLayoutGeometry alloc];
      originalPureGeometry = [(CRLCanvasLayout *)self originalPureGeometry];
      [originalPureGeometry size];
      v23 = v22;
      v25 = v24;
      if (layoutGeometryFromInfo)
      {
        [layoutGeometryFromInfo transform];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
      }

      v19 = [(CRLCanvasLayoutGeometry *)v20 initWithSize:&v27 transform:v23, v25];

      layoutGeometryFromInfo = originalPureGeometry;
    }

    else
    {
      [layoutGeometryFromInfo size];
      v8 = v7;
      v10 = v9;
      if (layoutGeometryFromInfo)
      {
        [layoutGeometryFromInfo transform];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
      }

      [(CRLCanvasLayout *)self scaleForInlineClampingUnrotatedSize:&v27 withTransform:v8, v10];
      v12 = v11;
      [layoutGeometryFromInfo size];
      v15 = sub_10011F340(v13, v14, v12);
      v17 = v16;
      v18 = [CRLCanvasLayoutGeometry alloc];
      if (layoutGeometryFromInfo)
      {
        [layoutGeometryFromInfo transform];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
      }

      v19 = [(CRLCanvasLayoutGeometry *)v18 initWithSize:&v27 transform:v15, v17];
    }

    layoutGeometryFromInfo = v19;
  }

  return layoutGeometryFromInfo;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withTransform:(CGAffineTransform *)transform
{
  v6 = objc_opt_class();
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v8 = sub_100014370(v6, parent);

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
      v23 = *&transform->c;
      *&v33.a = *&transform->a;
      *&v33.c = v23;
      *&v33.tx = *&transform->tx;
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

- (void)processChanges:(id)changes
{
  changesCopy = changes;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = changesCopy;
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

        details = [*(*(&v23 + 1) + 8 * v10) details];
        v12 = details;
        if (details)
        {
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100375670;
          v22[3] = &unk_101855978;
          v22[4] = v5;
          [details enumeratePropertiesUsingBlock:v22];
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

- (void)processChangedProperty:(unint64_t)property
{
  switch(property)
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

- (void)calculateAndSetPointsToSearchReference:(id)reference
{
  referenceCopy = reference;
  [(CRLCanvasLayout *)self calculatePointFromSearchReference:referenceCopy];
  [referenceCopy setSearchReferencePoint:?];
}

- (NSArray)dependentLayouts
{
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v4 = [parent additionalDependenciesForChildLayout:self];
  v5 = [&__NSArray0__struct arrayByAddingObjectsFromArray:v4];

  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  canvasController = [canvas canvasController];

  v9 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v11 = sub_100014370(v9, info);

  if (canvasController && v11)
  {
    v12 = [canvasController additionalDependentLayoutsForBoardItem:v11];
    v13 = v12;
    if (v12 && [v12 count])
    {
      allObjects = [v13 allObjects];
      v15 = [v5 arrayByAddingObjectsFromArray:allObjects];

      v5 = v15;
    }
  }

  return v5;
}

- (CGSize)maximumFrameSizeForChild:(id)child
{
  v3 = 1.79769313e308;
  v4 = 1.79769313e308;
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)descendentWrappablesContainsWrappable:(id)wrappable
{
  parent = [wrappable parent];
  LOBYTE(self) = parent == self;

  return self;
}

- (void)p_updateDescendentWrapPathsWithTransform:(CGAffineTransform *)transform
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  descendentWrappables = [(CRLCanvasLayout *)self descendentWrappables];
  v5 = [descendentWrappables countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(descendentWrappables);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = sub_100014370(v10, v9);
        v12 = v11;
        if (v11)
        {
          v13 = *&transform->c;
          v14[0] = *&transform->a;
          v14[1] = v13;
          v14[2] = *&transform->tx;
          [v11 inRootGeometryChangedBy:v14];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [descendentWrappables countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  descendentWrappables = [(CRLCanvasLayout *)self descendentWrappables];
  v3 = [descendentWrappables countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(descendentWrappables);
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
      v4 = [descendentWrappables countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  v3 = (&self->mBaseAlignmentFrameOriginForFixingInterimPosition.y + 2);
  v4.origin.x = *(&self->mBaseAlignmentFrameOriginForFixingInterimPosition.y + 2);
  v4.origin.y = *(&self->mDirtyRect.origin.x + 2);
  v4.size.width = *(&self->mDirtyRect.origin.y + 2);
  v4.size.height = *(&self->mDirtyRect.size.width + 2);
  v5 = CGRectUnion(v4, rect);
  *v3 = v5.origin.x;
  v3[1] = v5.origin.y;
  v3[2] = v5.size.width;
  v3[3] = v5.size.height;
}

- (void)recursivelyAddLayoutAndDependentLayoutsToValidateSet:(id)set
{
  setCopy = set;
  [setCopy addObject:self];
  children = [(CRLCanvasAbstractLayout *)self children];
  [children makeObjectsPerformSelector:a2 withObject:setCopy];
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
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  [geometry size];
  v3 = [CRLBezierPath bezierPathWithRect:sub_10011ECB4()];

  return v3;
}

- (void)p_registerWithLayoutController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy i_registerLayout:self];
  [(CRLCanvasLayout *)self i_clearInvalidationCache];
  children = [(CRLCanvasAbstractLayout *)self children];
  [children makeObjectsPerformSelector:a2 withObject:controllerCopy];
}

- (void)p_unregisterWithLayoutController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy i_unregisterLayout:self];
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
  children = [(CRLCanvasAbstractLayout *)self children];
  [children makeObjectsPerformSelector:a2 withObject:controllerCopy];
}

- (void)p_recursiveInvalidate
{
  [(CRLCanvasLayout *)self invalidate];
  children = [(CRLCanvasAbstractLayout *)self children];
  [children makeObjectsPerformSelector:a2];
}

- (CGSize)p_newMaxInlineFrameSize
{
  v3 = objc_opt_class();
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100014370(v3, parent);

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
  info = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, info);

  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  delegate = [canvas delegate];
  v15 = sub_1003035DC(delegate, 1, v9, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLSearchCanvasDelegate);

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
  children = [(CRLCanvasAbstractLayout *)self children];
  [v3 addObjectsFromArray:children];

  v5 = [v3 copy];

  return v5;
}

- (void)layoutSearchForNearbyElementsWithHitBlock:(id)block
{
  blockCopy = block;
  info = [(CRLCanvasLayout *)self info];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    searchTargetSearchReference = [(CRLCanvasLayout *)self searchTargetSearchReference];
    blockCopy[2](blockCopy, searchTargetSearchReference);
  }
}

- (void)layoutSearchForHyperlinkWithHitBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v6 = sub_100014370(v4, info);

  hyperlinkURL = [v6 hyperlinkURL];
  absoluteString = [hyperlinkURL absoluteString];
  v9 = [absoluteString length];

  if (v9)
  {
    searchTargetSearchReference = [(CRLCanvasLayout *)self searchTargetSearchReference];
    blockCopy[2](blockCopy, searchTargetSearchReference);
  }
}

- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path
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

- (CGRect)rectInRootForSelectionPath:(id)path
{
  geometryInRoot = [(CRLCanvasAbstractLayout *)self geometryInRoot];
  [geometryInRoot frame];
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

- (double)percentOfUnscaledRectContainedInParentRep:(CGRect)rep
{
  height = rep.size.height;
  width = rep.size.width;
  y = rep.origin.y;
  x = rep.origin.x;
  pureGeometryInRoot = [(CRLCanvasLayout *)self pureGeometryInRoot];
  [pureGeometryInRoot frame];
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
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  [geometry size];
  x = sub_10011ECB4();
  y = v5;
  width = v7;
  height = v9;

  v11 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v13 = sub_100013F00(v11, info);

  shadow = [v13 shadow];
  v15 = shadow;
  if (shadow && [shadow isEnabled])
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

- (void)addConnectedLayout:(id)layout
{
  layoutCopy = layout;
  v5 = *(&self->mInitialBoundsForStandardKnobs.size.height + 2);
  v8 = layoutCopy;
  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = *(&self->mInitialBoundsForStandardKnobs.size.height + 2);
    *(&self->mInitialBoundsForStandardKnobs.size.height + 2) = v6;

    layoutCopy = v8;
    v5 = *(&self->mInitialBoundsForStandardKnobs.size.height + 2);
  }

  [v5 addObject:layoutCopy];
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
  descendentWrappables = [(CRLCanvasLayout *)self descendentWrappables];
  v3 = [descendentWrappables countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(descendentWrappables);
        }

        [*(*(&v7 + 1) + 8 * v6) invalidateExteriorWrap];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [descendentWrappables countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  CGAffineTransformInvert(&v8, &v7);
  v3 = vaddq_f64(*&v8.tx, vmlaq_n_f64(vmulq_n_f64(*&v8.c, y), *&v8.a, x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v3 = vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v8, y), v7, x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  CGAffineTransformInvert(&v8, &v7);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return CGRectApplyAffineTransform(v9, &v8);
}

- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
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
    pathForClippingConnectionLines = [(CRLCanvasLayout *)self pathForClippingConnectionLines];
    if (-[CRLCanvasLayout shouldBringCardinalMagnetsInward](self, "shouldBringCardinalMagnetsInward") && pathForClippingConnectionLines && ([pathForClippingConnectionLines isEmpty] & 1) == 0)
    {
      [pathForClippingConnectionLines bounds];
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

- (void)p_adjustCardinalMagnetTValuesIfNeededWithPadding:(double)padding forLowestT:(double *)t forHighestT:(double *)highestT
{
  if (*t > 0.5 - padding)
  {
    *t = 0.0;
  }

  if (*highestT < padding + 0.5)
  {
    *highestT = 1.0;
  }
}

- (void)p_getIntersectionsForTestPath:(id)path withLowestT:(double *)t withHighestT:(double *)highestT
{
  pathCopy = path;
  pathForClippingConnectionLines = [(CRLCanvasLayout *)self pathForClippingConnectionLines];
  v10 = [pathForClippingConnectionLines copy];

  v11 = +[NSMutableArray array];
  [pathCopy addIntersectionsWithPath:v10 to:v11 allIntersections:1 reversed:0];
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

  *t = v16;
  *highestT = v17;
}

- (id)convexHullPath
{
  v3 = *(&self->mCardinalWestPosition.y + 2);
  if (!v3)
  {
    pathForClippingConnectionLines = [(CRLCanvasLayout *)self pathForClippingConnectionLines];
    if ([pathForClippingConnectionLines isEmpty])
    {
      [(CRLCanvasLayout *)self boundsForStandardKnobs];
      [CRLBezierPath bezierPathWithRect:?];
    }

    else
    {
      [CRLBezierPath bezierPathWithConvexHullFromWrapPath:pathForClippingConnectionLines];
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
        connectedTo = [v8 connectedTo];

        if (connectedTo == self)
        {
          if ([v8 headMagnetType] == 6)
          {
            selfCopy3 = self;
            v12 = v8;
            v13 = 11;
            goto LABEL_12;
          }

          if ([v8 headMagnetType] == 7)
          {
            selfCopy4 = self;
            v15 = v8;
            v16 = 11;
LABEL_17:
            [(CRLCanvasLayout *)selfCopy4 p_adjustFloatingMagnetPosition:v15 forLineEnd:v16];
            continue;
          }
        }

        else
        {
          connectedFrom = [v8 connectedFrom];

          if (connectedFrom != self)
          {
            continue;
          }

          if ([v8 tailMagnetType] == 6)
          {
            selfCopy3 = self;
            v12 = v8;
            v13 = 10;
LABEL_12:
            [(CRLCanvasLayout *)selfCopy3 p_adjustEdgeMagnetPosition:v12 forLineEnd:v13];
            continue;
          }

          if ([v8 tailMagnetType] == 7)
          {
            selfCopy4 = self;
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

- (void)p_adjustEdgeMagnetPosition:(id)position forLineEnd:(unint64_t)end
{
  positionCopy = position;
  [(CRLCanvasLayout *)self boundsForStandardKnobs];
  v8 = v7;
  [(CRLCanvasLayout *)self boundsForStandardKnobs];
  v10 = fmax(v8, v9);
  v11 = 0.0;
  if ([positionCopy connectionType])
  {
    if (end == 11)
    {
      [positionCopy headMagnetCanvasPosition];
    }

    else
    {
      [positionCopy tailMagnetCanvasPosition];
    }

    [CRLCanvasLayout p_findNearestEdgePointOnWrapPathFromPoint:"p_findNearestEdgePointOnWrapPathFromPoint:withSearchThreshold:withDistanceToPoint:" withSearchThreshold:&v11 withDistanceToPoint:?];
  }

  else
  {
    [(CRLCanvasLayout *)self p_findFirstEdgePointIntersectionOnWrapPathWithLine:positionCopy forLineEnd:end withDistanceToPoint:&v11 withOverridenHeadPosition:INFINITY withOverridenTailPosition:INFINITY, INFINITY, INFINITY];
  }

  if (v11 < v10)
  {
    if (end == 11)
    {
      [positionCopy setHeadMagnetPosition:?];
    }

    else
    {
      [positionCopy setTailMagnetPosition:?];
    }

    [positionCopy updateConnectedPath];
    [positionCopy setMagnetsAdjusted:1];
  }
}

- (void)p_adjustFloatingMagnetPosition:(id)position forLineEnd:(unint64_t)end
{
  positionCopy = position;
  v7 = objc_opt_class();
  info = [positionCopy info];
  v9 = sub_100014370(v7, info);

  connectionLinePathSource = [v9 connectionLinePathSource];
  v11 = connectionLinePathSource;
  if (end == 11)
  {
    headMagnet = [connectionLinePathSource headMagnet];
    [headMagnet magnetNormalizedPosition];
    v26 = v14;
    v28 = v13;
    pureGeometry = [(CRLCanvasLayout *)self pureGeometry];
    v16 = pureGeometry;
    if (pureGeometry)
    {
      [pureGeometry fullTransform];
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

    [positionCopy setHeadMagnetPosition:{vaddq_f64(v19, vmlaq_n_f64(vmulq_n_f64(v18, v26), v17, v28))}];
  }

  else
  {
    headMagnet = [connectionLinePathSource tailMagnet];
    [headMagnet magnetNormalizedPosition];
    v27 = v21;
    v29 = v20;
    pureGeometry2 = [(CRLCanvasLayout *)self pureGeometry];
    v16 = pureGeometry2;
    if (pureGeometry2)
    {
      [pureGeometry2 fullTransform];
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

    [positionCopy setTailMagnetPosition:{vaddq_f64(v25, vmlaq_n_f64(vmulq_n_f64(v24, v27), v23, v29))}];
  }

  [positionCopy updateConnectedPath];
  [positionCopy setMagnetsAdjusted:1];
}

- (CGPoint)p_findFirstEdgePointIntersectionOnWrapPathWithLine:(id)line forLineEnd:(unint64_t)end withDistanceToPoint:(double *)point withOverridenHeadPosition:(CGPoint)position withOverridenTailPosition:(CGPoint)tailPosition
{
  y = tailPosition.y;
  x = tailPosition.x;
  v9 = position.y;
  v10 = position.x;
  lineCopy = line;
  v15 = objc_opt_class();
  info = [lineCopy info];
  v17 = sub_100014370(v15, info);

  v125 = v17;
  connectionLinePathSource = [v17 connectionLinePathSource];
  connectedTo = [lineCopy connectedTo];
  v128 = y;
  if (connectedTo)
  {
    headMagnet = [connectionLinePathSource headMagnet];
    [headMagnet magnetNormalizedPosition];
    v22 = v21;
    v24 = v23;
    connectedTo2 = [lineCopy connectedTo];
    pureGeometry = [connectedTo2 pureGeometry];
    v27 = pureGeometry;
    if (pureGeometry)
    {
      [pureGeometry fullTransform];
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
    [lineCopy headPoint];
    v35 = v34;
    v37 = v36;
    if (lineCopy)
    {
      [lineCopy transform];
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

  connectedFrom = [lineCopy connectedFrom];
  if (connectedFrom)
  {
    tailMagnet = [connectionLinePathSource tailMagnet];
    [tailMagnet magnetNormalizedPosition];
    v49 = v48;
    v51 = v50;
    connectedFrom2 = [lineCopy connectedFrom];
    pureGeometry2 = [connectedFrom2 pureGeometry];
    v54 = pureGeometry2;
    v55 = x;
    if (pureGeometry2)
    {
      [pureGeometry2 fullTransform];
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
    [lineCopy tailPoint];
    v63 = v62;
    v65 = v64;
    v55 = x;
    if (lineCopy)
    {
      [lineCopy transform];
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

  if (end == 10)
  {
    v77 = v9;
  }

  else
  {
    v77 = v75;
  }

  v126 = v77;
  if (end == 10)
  {
    v78 = v10;
  }

  else
  {
    v78 = v76;
  }

  v129 = v78;
  if (end == 10)
  {
    v79 = v75;
  }

  else
  {
    v79 = v9;
  }

  if (end == 10)
  {
    v80 = v76;
  }

  else
  {
    v80 = v10;
  }

  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  [geometry frame];
  v83 = v82;
  if (v80 > v129)
  {
    geometry2 = [(CRLCanvasAbstractLayout *)self geometry];
    [geometry2 size];
    v83 = v83 + v85;
  }

  sub_10011F31C(v80, v79, v129);
  v86 = sub_10011F334(v80, v79, v83 - v80);
  v121 = v87;
  v122 = v86;
  geometry3 = [(CRLCanvasAbstractLayout *)self geometry];
  v89 = geometry3;
  if (geometry3)
  {
    [geometry3 transform];
  }

  else
  {
    memset(&v135, 0, sizeof(v135));
  }

  CGAffineTransformInvert(&v136, &v135);
  v123 = vaddq_f64(*&v136.tx, vmlaq_n_f64(vmulq_n_f64(*&v136.c, v121), *&v136.a, v122));
  geometry4 = [(CRLCanvasAbstractLayout *)self geometry];
  v91 = geometry4;
  if (geometry4)
  {
    [geometry4 transform];
  }

  else
  {
    memset(&v135, 0, sizeof(v135));
  }

  CGAffineTransformInvert(&v136, &v135);
  v92 = [CRLBezierPath bezierPathWithStart:*&v123 end:vaddq_f64(*&v136.tx, vmlaq_n_f64(vmulq_n_f64(*&v136.c, v126), *&v136.a, v129))];

  pathForClippingConnectionLines = [(CRLCanvasLayout *)self pathForClippingConnectionLines];
  v94 = [pathForClippingConnectionLines copy];

  v95 = +[NSMutableArray array];
  [v92 addIntersectionsWithPath:v94 to:v95 allIntersections:1 reversed:0];
  if ([v95 count])
  {
    v124 = connectionLinePathSource;
    pointCopy = point;
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

    point = pointCopy;
    connectionLinePathSource = v124;
  }

  else
  {
    v100 = 0.0;
    v101 = 2.22507386e-308;
    v102 = 1.79769313e308;
    v103 = 0.0;
  }

  geometry5 = [(CRLCanvasAbstractLayout *)self geometry];
  v113 = geometry5;
  if (geometry5)
  {
    [geometry5 transform];
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

  *point = sub_100120090(v130.f64[0], v130.f64[1], v80, v79);
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
  selfCopy = self;
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
          connectionLineInfo = [v7 connectionLineInfo];
          connectionLinePathSource = [connectionLineInfo connectionLinePathSource];
          v10 = [connectionLinePathSource copy];

          headMagnet = [v10 headMagnet];

          if (headMagnet)
          {
            [v7 headMagnetNormalizedPosition];
            v60 = v13;
            v62 = v12;
            if ([v7 overridenHeadMagnetNormalizedPosition])
            {
              [v7 headMagnetNormalizedPosition];
              v15 = v14;
              v17 = v16;
              connectedTo = [v7 connectedTo];
              [(CRLCanvasLayout *)selfCopy p_convertNormalizedPositionFromLayoutToPureGeomtry:connectedTo forLayout:v15, v17];
              v60 = v20;
              v62 = v19;

              connectedTo2 = [v7 connectedTo];
              pureGeometry = [connectedTo2 pureGeometry];
              v23 = pureGeometry;
              if (pureGeometry)
              {
                [pureGeometry fullTransform];
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

          tailMagnet = [v10 tailMagnet];

          if (tailMagnet)
          {
            [v7 tailMagnetNormalizedPosition];
            v61 = v30;
            v63 = v29;
            if ([v7 overridenTailMagnetNormalizedPosition])
            {
              [v7 tailMagnetNormalizedPosition];
              v32 = v31;
              v34 = v33;
              connectedFrom = [v7 connectedFrom];
              [(CRLCanvasLayout *)selfCopy p_convertNormalizedPositionFromLayoutToPureGeomtry:connectedFrom forLayout:v32, v34];
              v61 = v37;
              v63 = v36;

              connectedFrom2 = [v7 connectedFrom];
              pureGeometry2 = [connectedFrom2 pureGeometry];
              v40 = pureGeometry2;
              if (pureGeometry2)
              {
                [pureGeometry2 fullTransform];
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

          layoutController = [(CRLCanvasLayout *)selfCopy layoutController];
          boardItemOwner = [layoutController boardItemOwner];
          v47 = [connectionLineInfo getConnectedToWithBoardItemOwner:boardItemOwner];

          v48 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:connectionLineInfo connectedItem:v47 chirality:1 pathSource:v10];
          [v56 addObject:v48];
          layoutController2 = [(CRLCanvasLayout *)selfCopy layoutController];
          [layoutController2 boardItemOwner];
          v51 = v50 = connectionLineInfo;
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

- (CGPoint)p_convertNormalizedPositionFromLayoutToPureGeomtry:(CGPoint)geomtry forLayout:(id)layout
{
  y = geomtry.y;
  x = geomtry.x;
  layoutCopy = layout;
  geometry = [layoutCopy geometry];
  v8 = geometry;
  if (geometry)
  {
    [geometry fullTransform];
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

  if (layoutCopy)
  {
    [layoutCopy pureTransformInRoot];
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  CGAffineTransformInvert(&v26, &v25);
  v24 = vaddq_f64(*&v26.tx, vmlaq_n_f64(vmulq_n_f64(*&v26.c, ty + y * d + b * x), *&v26.a, tx + y * c + a * x));
  pureGeometry = [layoutCopy pureGeometry];
  [pureGeometry size];
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
  connectedLayouts = [(CRLCanvasLayout *)self connectedLayouts];
  v4 = [connectedLayouts countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(connectedLayouts);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v8 controlKnobPositionChangedFromRouting])
        {
          layoutController = [(CRLCanvasLayout *)self layoutController];
          canvas = [layoutController canvas];
          canvasController = [canvas canvasController];
          v12 = [canvasController repForLayout:v8];

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

      v5 = [connectedLayouts countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

- (CGPoint)nearestEdgePointOnWrapPathFromPoint:(CGPoint)point
{
  v5 = 0;
  [(CRLCanvasLayout *)self p_findNearestEdgePointOnWrapPathFromPoint:&v5 withSearchThreshold:point.x withDistanceToPoint:point.y, 10.0];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)p_findNearestEdgePointOnWrapPathFromPoint:(CGPoint)point withSearchThreshold:(double)threshold withDistanceToPoint:(double *)toPoint
{
  y = point.y;
  x = point.x;
  pathForClippingConnectionLines = [(CRLCanvasLayout *)self pathForClippingConnectionLines];
  v22 = 0.0;
  v23 = 0;
  [(CRLCanvasAbstractLayout *)self transform];
  CGAffineTransformInvert(&v21, &v20);
  [pathForClippingConnectionLines distanceToPoint:&v23 elementIndex:&v22 tValue:1 threshold:vaddq_f64(*&v21.tx findClosestMatch:{vmlaq_n_f64(vmulq_n_f64(*&v21.c, y), *&v21.a, x)), threshold}];
  *toPoint = v9;
  if (v9 >= threshold)
  {
    v12 = xmmword_1014629F0;
  }

  else
  {
    [pathForClippingConnectionLines pointAt:v23 fromElement:v22];
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

- (CGPoint)findNewEdgeMagnetCanvasPositionForConnectionLine:(id)line forLineEnd:(unint64_t)end withCanvasPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  lineCopy = line;
  [(CRLCanvasLayout *)self boundsForStandardKnobs];
  v11 = v10;
  [(CRLCanvasLayout *)self boundsForStandardKnobs];
  v13 = fmax(v11, v12);
  v22 = 0.0;
  if ([lineCopy connectionType])
  {
    [(CRLCanvasLayout *)self p_findNearestEdgePointOnWrapPathFromPoint:&v22 withSearchThreshold:x withDistanceToPoint:y, v13];
  }

  else
  {
    v16 = INFINITY;
    v17 = INFINITY;
    if (end == 11)
    {
      v18 = x;
    }

    else
    {
      v18 = INFINITY;
    }

    if (end == 11)
    {
      v19 = y;
    }

    else
    {
      v19 = INFINITY;
    }

    if (end == 10)
    {
      v16 = x;
      v17 = y;
    }

    [(CRLCanvasLayout *)self p_findFirstEdgePointIntersectionOnWrapPathWithLine:lineCopy forLineEnd:end withDistanceToPoint:&v22 withOverridenHeadPosition:v18 withOverridenTailPosition:v19, v16, v17];
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

- (void)setInitialBoundsForStandardKnobs:(CGRect)knobs
{
  *(&self->mBaseGeometry + 2) = *&knobs.origin.x;
  *(&self->mInitialBoundsForStandardKnobs.origin.x + 2) = knobs.origin.y;
  *(&self->mInitialBoundsForStandardKnobs.origin.y + 2) = knobs.size.width;
  *(&self->mInitialBoundsForStandardKnobs.size.width + 2) = knobs.size.height;
}

@end