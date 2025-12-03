@interface HNDContinuousScroller
- (BOOL)orientedPointLiesInContinuousScrollerActivationRegion:(CGPoint)region;
- (CGRect)_unobstructedOverflowFrameForScroller:(id)scroller originalOverflowFrame:(CGRect)frame;
- (CGRect)orientedScrollViewFrame;
- (CGRect)scrollViewFrame;
- (HNDContinuousScroller)initWithTargetElement:(id)element scrollView:(id)view orientedScrollViewFrame:(CGRect)frame scrollAxis:(unint64_t)axis supportedScrollDirections:(int64_t)directions;
- (id)directionForOrientedPoint:(CGPoint)point;
- (id)scrollingSpeedFactorForOrientedPoint:(CGPoint)point;
- (void)_computeScrollViewFrameAndActivationRegions;
- (void)extendActivationRegionWithoutCollidingWithScrollers:(id)scrollers rotatedScreenBounds:(CGRect)bounds;
@end

@implementation HNDContinuousScroller

- (HNDContinuousScroller)initWithTargetElement:(id)element scrollView:(id)view orientedScrollViewFrame:(CGRect)frame scrollAxis:(unint64_t)axis supportedScrollDirections:(int64_t)directions
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  elementCopy = element;
  viewCopy = view;
  v33.receiver = self;
  v33.super_class = HNDContinuousScroller;
  v17 = [(HNDContinuousScroller *)&v33 init];
  targetElement = v17->_targetElement;
  v17->_targetElement = elementCopy;
  v19 = elementCopy;

  scrollView = v17->_scrollView;
  v17->_scrollView = viewCopy;
  v21 = viewCopy;

  v17->_scrollAxis = axis;
  [(AXElement *)v21 visibleFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v17->_scrollViewFrame.origin.x = v23;
  v17->_scrollViewFrame.origin.y = v25;
  v17->_scrollViewFrame.size.width = v27;
  v17->_scrollViewFrame.size.height = v29;
  v17->_orientedScrollViewFrame.origin.x = x;
  v17->_orientedScrollViewFrame.origin.y = y;
  v17->_orientedScrollViewFrame.size.width = width;
  v17->_orientedScrollViewFrame.size.height = height;
  v30 = sub_100042D94();
  v31 = 50.0;
  if (v30)
  {
    v31 = 25.0;
  }

  v17->_overflowPadding = v31;
  v17->_supportedScrollDirections = directions;
  [(HNDContinuousScroller *)v17 _computeScrollViewFrameAndActivationRegions];
  return v17;
}

- (void)_computeScrollViewFrameAndActivationRegions
{
  v41 = +[NSMutableDictionary dictionary];
  scrollAreaToShowOverride = [(HNDContinuousScroller *)self scrollAreaToShowOverride];

  if (scrollAreaToShowOverride)
  {
    scrollAreaToShowOverride2 = [(HNDContinuousScroller *)self scrollAreaToShowOverride];
    [scrollAreaToShowOverride2 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.6;
  }

  v7 = (1.0 - v6) * 0.5;
  if ([(HNDContinuousScroller *)self scrollAxis])
  {
    if ([(HNDContinuousScroller *)self scrollAxis]!= 1)
    {
      goto LABEL_9;
    }

    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v9 = v7 * v8;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v11 = v10;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v13 = v12;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v15 = v14;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v17 = v16;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v19 = v17 + v18 - v9;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v21 = v20;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v23 = v22;
    v24 = 8;
    v25 = 16;
    v26 = v9;
  }

  else
  {
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v23 = v7 * v27;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v11 = v28;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v13 = v29;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v26 = v30;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v19 = v31;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v33 = v32;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v21 = v33 + v34 - v23;
    [(HNDContinuousScroller *)self orientedScrollViewFrame];
    v9 = v35;
    v24 = 2;
    v25 = 4;
    v15 = v23;
  }

  v36 = [NSValue valueWithCGRect:v11, v13, v26, v15];
  v37 = [NSNumber numberWithUnsignedLong:v24];
  [v41 setObject:v36 forKey:v37];

  v38 = [NSValue valueWithCGRect:v19, v21, v9, v23];
  v39 = [NSNumber numberWithUnsignedLong:v25];
  [v41 setObject:v38 forKey:v39];

  v40 = [v41 copy];
  [(HNDContinuousScroller *)self setScrollDirectionToActivationFrame:v40];

LABEL_9:
}

- (void)extendActivationRegionWithoutCollidingWithScrollers:(id)scrollers rotatedScreenBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  scrollersCopy = scrollers;
  if ([(HNDContinuousScroller *)self scrollAxis])
  {
    if ([(HNDContinuousScroller *)self scrollAxis]!= 1)
    {
      v17 = 0;
      v14 = 0;
      goto LABEL_26;
    }

    v10 = 8;
    v11 = 16;
  }

  else
  {
    v10 = 2;
    v11 = 4;
  }

  scrollDirectionToActivationFrame = [(HNDContinuousScroller *)self scrollDirectionToActivationFrame];
  v13 = [NSNumber numberWithUnsignedLong:v10];
  v14 = [scrollDirectionToActivationFrame objectForKeyedSubscript:v13];

  scrollDirectionToActivationFrame2 = [(HNDContinuousScroller *)self scrollDirectionToActivationFrame];
  v16 = [NSNumber numberWithUnsignedLong:v11];
  v17 = [scrollDirectionToActivationFrame2 objectForKeyedSubscript:v16];

  if (v14 && v17)
  {
    v83.origin.x = x;
    v83.origin.y = y;
    v83.size.width = width;
    v83.size.height = height;
    [v14 CGRectValue];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v80 = v24;
    [v17 CGRectValue];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [(HNDContinuousScroller *)self overflowPadding];
    v34 = v33;
    v81 = v21;
    v82 = v30;
    r1 = v23;
    v79 = v19;
    if ([(HNDContinuousScroller *)self scrollAxis])
    {
      if ([(HNDContinuousScroller *)self scrollAxis]!= 1)
      {
        goto LABEL_26;
      }

      v68 = v28;
      v69 = v26;
      v19 = v19 - v34;
      v35 = v21;
      v73 = v32;
      v74 = v34;
      v75 = v26 + v30;
      v76 = v21;
      v70 = v32;
      v23 = v34;
      v34 = v80;
    }

    else
    {
      v36 = v28;
      v35 = v21 - v34;
      v69 = v26;
      v70 = v32;
      v68 = v36;
      v75 = v26;
      v76 = v36 + v32;
      v73 = v34;
      v74 = v30;
    }

    v71 = v11;
    scrollDirectionToActivationFrame3 = [(HNDContinuousScroller *)self scrollDirectionToActivationFrame];
    v78 = [NSMutableDictionary dictionaryWithDictionary:scrollDirectionToActivationFrame3];

    v77 = +[NSMutableArray array];
    v89.origin.x = v19;
    v89.origin.y = v35;
    v89.size.width = v23;
    v89.size.height = v34;
    v90 = CGRectIntersection(v89, v83);
    v38 = v90.origin.x;
    v39 = v90.origin.y;
    v40 = v90.size.width;
    v41 = v90.size.height;
    v90.origin.x = v75;
    v90.origin.y = v76;
    v90.size.height = v73;
    v90.size.width = v74;
    v91 = CGRectIntersection(v90, v83);
    v42 = v91.origin.x;
    v43 = v91.origin.y;
    v44 = v91.size.width;
    v45 = v91.size.height;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v46 = scrollersCopy;
    v47 = [v46 countByEnumeratingWithState:&v84 objects:v88 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v85;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v85 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v84 + 1) + 8 * i);
          [(HNDContinuousScroller *)self _unobstructedOverflowFrameForScroller:v51 originalOverflowFrame:v38, v39, v40, v41];
          v38 = v52;
          v39 = v53;
          v40 = v54;
          v41 = v55;
          [(HNDContinuousScroller *)self _unobstructedOverflowFrameForScroller:v51 originalOverflowFrame:v42, v43, v44, v45];
          v42 = v56;
          v43 = v57;
          v44 = v58;
          v45 = v59;
        }

        v48 = [v46 countByEnumeratingWithState:&v84 objects:v88 count:16];
      }

      while (v48);
    }

    v92.origin.x = v38;
    v92.origin.y = v39;
    v92.size.width = v40;
    v92.size.height = v41;
    if (!CGRectIsEmpty(v92))
    {
      v93.origin.x = v38;
      v93.origin.y = v39;
      v93.size.width = v40;
      v93.size.height = v41;
      if (!CGRectIsNull(v93))
      {
        v94.origin.x = v79;
        v94.size.height = v80;
        v94.origin.y = v81;
        v94.size.width = r1;
        v100.origin.x = v38;
        v100.origin.y = v39;
        v100.size.width = v40;
        v100.size.height = v41;
        v95 = CGRectUnion(v94, v100);
        v60 = [NSValue valueWithCGRect:v95.origin.x, v95.origin.y, v95.size.width, v95.size.height];
        v61 = [NSNumber numberWithUnsignedLong:v10];
        [v78 setObject:v60 forKey:v61];

        v62 = [NSValue valueWithCGRect:v38, v39, v40, v41];
        [v77 addObject:v62];
      }
    }

    v96.origin.x = v42;
    v96.origin.y = v43;
    v96.size.width = v44;
    v96.size.height = v45;
    if (!CGRectIsEmpty(v96))
    {
      v97.origin.x = v42;
      v97.origin.y = v43;
      v97.size.width = v44;
      v97.size.height = v45;
      if (!CGRectIsNull(v97))
      {
        v98.origin.y = v68;
        v98.origin.x = v69;
        v98.size.width = v82;
        v98.size.height = v70;
        v101.origin.x = v42;
        v101.origin.y = v43;
        v101.size.width = v44;
        v101.size.height = v45;
        v99 = CGRectUnion(v98, v101);
        v63 = [NSValue valueWithCGRect:v99.origin.x, v99.origin.y, v99.size.width, v99.size.height];
        v64 = [NSNumber numberWithUnsignedLong:v71];
        [v78 setObject:v63 forKey:v64];

        v65 = [NSValue valueWithCGRect:v42, v43, v44, v45];
        [v77 addObject:v65];
      }
    }

    v66 = [v78 copy];
    [(HNDContinuousScroller *)self setScrollDirectionToActivationFrame:v66];

    v67 = [v77 copy];
    [(HNDContinuousScroller *)self setOverflowFrames:v67];
  }

LABEL_26:
}

- (CGRect)_unobstructedOverflowFrameForScroller:(id)scroller originalOverflowFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  scrollDirectionToActivationFrame = [scroller scrollDirectionToActivationFrame];
  allValues = [scrollDirectionToActivationFrame allValues];

  v10 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        if (!CGRectIsEmpty(v28))
        {
          if (v14)
          {
            [v14 CGRectValue];
            AX_CGRectBySubtractingRect();
            x = v29.origin.x;
            y = v29.origin.y;
            width = v29.size.width;
            height = v29.size.height;
            if (CGRectIsEmpty(v29))
            {
              AX_CGRectBySubtractingRect();
              x = v15;
              y = v16;
              width = v17;
              height = v18;
            }
          }
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
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

- (BOOL)orientedPointLiesInContinuousScrollerActivationRegion:(CGPoint)region
{
  v3 = [(HNDContinuousScroller *)self directionForOrientedPoint:region.x, region.y];
  v4 = v3 != 0;

  return v4;
}

- (id)directionForOrientedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  scrollDirectionToActivationFrame = [(HNDContinuousScroller *)self scrollDirectionToActivationFrame];
  v7 = [scrollDirectionToActivationFrame countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(scrollDirectionToActivationFrame);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        scrollDirectionToActivationFrame2 = [(HNDContinuousScroller *)self scrollDirectionToActivationFrame];
        v13 = [scrollDirectionToActivationFrame2 objectForKeyedSubscript:v11];

        [v13 CGRectValue];
        v22.x = x;
        v22.y = y;
        if (CGRectContainsPoint(v23, v22))
        {
          v14 = v11;

          goto LABEL_11;
        }
      }

      v8 = [scrollDirectionToActivationFrame countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)scrollingSpeedFactorForOrientedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(HNDContinuousScroller *)self directionForOrientedPoint:?];
  v7 = v6;
  if (!v6)
  {
    v27 = 0;
    goto LABEL_14;
  }

  intValue = [v6 intValue];
  scrollDirectionToActivationFrame = [(HNDContinuousScroller *)self scrollDirectionToActivationFrame];
  v10 = [scrollDirectionToActivationFrame objectForKeyedSubscript:v7];

  if (v10)
  {
    [v10 CGRectValue];
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    HIDWORD(v20) = intValue - 2;
    LODWORD(v20) = intValue - 2;
    v19 = v20 >> 1;
    if (v19 < 2)
    {
      v28 = y - CGRectGetMinY(*&v11);
      v35.origin.x = v15;
      v35.origin.y = v16;
      v35.size.width = v17;
      v35.size.height = v18;
      MaxY = CGRectGetMaxY(v35);
      v36.origin.x = v15;
      v36.origin.y = v16;
      v36.size.width = v17;
      v36.size.height = v18;
      v21 = v28 / (MaxY - CGRectGetMinY(v36));
      v25 = 1.0 - v21;
      v26 = intValue == 2;
    }

    else
    {
      if (v19 != 3)
      {
        v21 = 0.0;
        if (v19 != 7)
        {
LABEL_12:
          v30 = v21 + -1.0;
          v27 = [NSNumber numberWithDouble:fminf(fmaxf(powf(15.0, v30), 0.0), 1.0)];
          goto LABEL_13;
        }
      }

      v22 = v15;
      v23 = x - CGRectGetMinX(*(&v12 - 1));
      v33.origin.x = v15;
      v33.origin.y = v16;
      v33.size.width = v17;
      v33.size.height = v18;
      MaxX = CGRectGetMaxX(v33);
      v34.origin.x = v15;
      v34.origin.y = v16;
      v34.size.width = v17;
      v34.size.height = v18;
      v21 = v23 / (MaxX - CGRectGetMinX(v34));
      v25 = 1.0 - v21;
      v26 = intValue == 8;
    }

    if (v26)
    {
      v21 = v25;
    }

    goto LABEL_12;
  }

  v27 = 0;
LABEL_13:

LABEL_14:

  return v27;
}

- (CGRect)scrollViewFrame
{
  x = self->_scrollViewFrame.origin.x;
  y = self->_scrollViewFrame.origin.y;
  width = self->_scrollViewFrame.size.width;
  height = self->_scrollViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)orientedScrollViewFrame
{
  x = self->_orientedScrollViewFrame.origin.x;
  y = self->_orientedScrollViewFrame.origin.y;
  width = self->_orientedScrollViewFrame.size.width;
  height = self->_orientedScrollViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end