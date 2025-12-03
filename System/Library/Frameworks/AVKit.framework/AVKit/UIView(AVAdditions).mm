@interface UIView(AVAdditions)
- (BOOL)avkit_isInAWindowAndVisible;
- (double)avkit_extendedDynamicRangeGain;
- (double)avkit_largestInscribedRectInBoundingPathWithCenter:()AVAdditions aspectRatio:;
- (double)avkit_overrideLayoutMarginsForCounterRotation;
- (double)avkit_portionOfFrameUnobscuredBySuperviews;
- (id)avkit_ancestorViewPassingTest:()AVAdditions;
- (id)avkit_backdropGroupLeader;
- (id)avkit_hitTestControlForPoint:()AVAdditions withEvent:;
- (uint64_t)avkit_hasFullScreenLayoutClass;
- (uint64_t)avkit_isAncestorOfViewPassingTest:()AVAdditions;
- (uint64_t)avkit_isBeingDismissed;
- (uint64_t)avkit_isBeingPresented;
- (uint64_t)avkit_isBeingScrollTested;
- (uint64_t)avkit_isBeingScrolled;
- (uint64_t)avkit_isBeingScrolledQuickly;
- (uint64_t)avkit_isCompletelyTransparent;
- (uint64_t)avkit_isCounterRotatedForTransition;
- (uint64_t)avkit_isDescendantOfNonPagingScrollView;
- (uint64_t)avkit_isDescendantOfViewPassingTest:()AVAdditions;
- (uint64_t)avkit_isInAScrollView;
- (uint64_t)avkit_isVideoGravityFrozen;
- (uint64_t)avkit_setFrame:()AVAdditions inLayoutDirection:;
- (uint64_t)avkit_wantsAnimatedViewTransitions;
- (void)avkit_hitTestControlForPoint:()AVAdditions withEvent:bestSoFar:shortestDistanceSoFar:;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:()AVAdditions;
- (void)avkit_makeSubtreeDisallowGroupBlending;
- (void)avkit_needsUpdateBackdropCaptureViewHidden;
- (void)avkit_reevaluateHiddenStateOfItem:()AVAdditions;
- (void)setAvkit_extendedDynamicRangeGain:()AVAdditions;
@end

@implementation UIView(AVAdditions)

- (void)setAvkit_extendedDynamicRangeGain:()AVAdditions
{
  v4 = a2;
  v5 = fabsf(v4);
  ExtendedDynamicRangeGainFilter = [(UIView *)self _getExtendedDynamicRangeGainFilterIndex];
  v7 = ExtendedDynamicRangeGainFilter;
  if (v4 <= 0.0 || v5 < 0.00000011921)
  {
    if (ExtendedDynamicRangeGainFilter == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    layer = [self layer];
    filters = [layer filters];
    v16 = [filters mutableCopy];

    [v16 removeObjectAtIndex:v7];
    if ([v16 count])
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    [layer setFilters:v17];
  }

  else
  {
    layer2 = [self layer];
    layer = layer2;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979918]];
      [v10 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6979980]];
      [v10 setName:@"AVExtendedDynamicRangeGain.filter"];
      filters2 = [layer filters];
      v12 = [filters2 mutableCopy];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      }

      v18 = v14;

      [v18 addObject:v10];
      v7 = [v18 count] - 1;
      [layer setFilters:v18];

      layer2 = layer;
    }

    filters3 = [layer2 filters];
    v16 = [filters3 objectAtIndexedSubscript:v7];

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [v16 setValue:v20 forKey:*MEMORY[0x1E6979990]];
  }
}

- (double)avkit_extendedDynamicRangeGain
{
  ExtendedDynamicRangeGainFilter = [(UIView *)self _getExtendedDynamicRangeGainFilterIndex];
  v3 = 0.0;
  if (ExtendedDynamicRangeGainFilter != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = ExtendedDynamicRangeGainFilter;
    layer = [self layer];
    filters = [layer filters];
    v7 = [filters objectAtIndexedSubscript:v4];

    v8 = [v7 valueForKey:*MEMORY[0x1E6979990]];
    [v8 floatValue];
    v3 = v9;
  }

  return v3;
}

- (uint64_t)avkit_setFrame:()AVAdditions inLayoutDirection:
{
  if (a7 == 1)
  {
    superview = [self superview];
    [superview bounds];
    v14 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = superview;
      [v15 contentInset];
      v17 = v16;
      v19 = v18;
      [v15 bounds];
      v21 = v20 - (v17 + v19);
      [v15 contentSize];
      v23 = v22;

      v14 = v21 + fmax(v23 - v21, 0.0);
    }

    a2 = v14 - a2 - a4;
  }

  return [self setFrame:{a2, a3, a4, a5}];
}

- (double)avkit_portionOfFrameUnobscuredBySuperviews
{
  [self bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  window = [self window];
  superview = [self superview];
  v12 = superview;
  if (window && superview)
  {
    y = -100000.0;
    height = 1000000.0;
    width = 1000000.0;
    x = -100000.0;
    do
    {
      [v12 bounds];
      [v12 convertRect:0 toView:?];
      v32.origin.x = v17;
      v32.origin.y = v18;
      v32.size.width = v19;
      v32.size.height = v20;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      v29 = CGRectIntersection(v28, v32);
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      superview2 = [v12 superview];

      v12 = superview2;
    }

    while (superview2);
    [self convertRect:0 toView:{v3, v5, v7, v9}];
    v33.origin.x = v22;
    v33.origin.y = v23;
    v33.size.width = v24;
    v33.size.height = v25;
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v31 = CGRectIntersection(v30, v33);
    [self convertRect:0 fromView:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];
    v3 = v26;
  }

  return v3;
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:()AVAdditions
{
  v4 = a3;
  superview = [self superview];
  [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:v4];
}

- (void)avkit_reevaluateHiddenStateOfItem:()AVAdditions
{
  v4 = a3;
  superview = [self superview];
  [superview avkit_reevaluateHiddenStateOfItem:v4];
}

- (double)avkit_largestInscribedRectInBoundingPathWithCenter:()AVAdditions aspectRatio:
{
  traitCollection = [self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    [self _largestInscribedRectInBoundingPathWithCenter:a2 aspectRatio:{a3, a4}];
    return *&v19;
  }

  if (!self)
  {
    return 0.0;
  }

  [self bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v14 = *MEMORY[0x1E695F058];
  if (!CGRectIsInfinite(v21))
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    if (!CGRectIsNull(v22))
    {
      v15 = a4;
      v16 = a4 < 0.0 || ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
      if (!v16 || (*&a4 - 1) <= 0xFFFFFFFFFFFFELL)
      {
        v18 = 1.0;
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = height;
        v19 = AVMakeRectWithAspectRatioInsideRect(*&v15, v23);
        return *&v19;
      }
    }
  }

  return v14;
}

- (uint64_t)avkit_hasFullScreenLayoutClass
{
  superview = [self superview];
  avkit_hasFullScreenLayoutClass = [superview avkit_hasFullScreenLayoutClass];

  return avkit_hasFullScreenLayoutClass;
}

- (void)avkit_makeSubtreeDisallowGroupBlending
{
  v13 = *MEMORY[0x1E69E9840];
  layer = [self layer];
  [layer setAllowsGroupBlending:0];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  subviews = [self subviews];
  v4 = [subviews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v8 + 1) + 8 * v7++) avkit_makeSubtreeDisallowGroupBlending];
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (uint64_t)avkit_isDescendantOfNonPagingScrollView
{
  superview = [self superview];
  avkit_isDescendantOfNonPagingScrollView = [superview avkit_isDescendantOfNonPagingScrollView];

  return avkit_isDescendantOfNonPagingScrollView;
}

- (uint64_t)avkit_wantsAnimatedViewTransitions
{
  result = [self _isInAWindow];
  if (result)
  {
    return [self avkit_isBeingScrolledQuickly] ^ 1;
  }

  return result;
}

- (uint64_t)avkit_isInAScrollView
{
  superview = [self superview];
  avkit_isInAScrollView = [superview avkit_isInAScrollView];

  return avkit_isInAScrollView;
}

- (uint64_t)avkit_isBeingScrolledQuickly
{
  superview = [self superview];
  avkit_isBeingScrolledQuickly = [superview avkit_isBeingScrolledQuickly];

  return avkit_isBeingScrolledQuickly;
}

- (uint64_t)avkit_isBeingScrolled
{
  superview = [self superview];
  avkit_isBeingScrolled = [superview avkit_isBeingScrolled];

  return avkit_isBeingScrolled;
}

- (uint64_t)avkit_isBeingScrollTested
{
  superview = [self superview];
  avkit_isBeingScrollTested = [superview avkit_isBeingScrollTested];

  return avkit_isBeingScrollTested;
}

- (id)avkit_backdropGroupLeader
{
  superview = [self superview];
  avkit_backdropGroupLeader = [superview avkit_backdropGroupLeader];

  return avkit_backdropGroupLeader;
}

- (void)avkit_needsUpdateBackdropCaptureViewHidden
{
  superview = [self superview];
  [superview avkit_needsUpdateBackdropCaptureViewHidden];
}

- (uint64_t)avkit_isBeingPresented
{
  superview = [self superview];
  avkit_isBeingPresented = [superview avkit_isBeingPresented];

  return avkit_isBeingPresented;
}

- (uint64_t)avkit_isBeingDismissed
{
  superview = [self superview];
  avkit_isBeingDismissed = [superview avkit_isBeingDismissed];

  return avkit_isBeingDismissed;
}

- (uint64_t)avkit_isCounterRotatedForTransition
{
  superview = [self superview];
  avkit_isCounterRotatedForTransition = [superview avkit_isCounterRotatedForTransition];

  return avkit_isCounterRotatedForTransition;
}

- (uint64_t)avkit_isVideoGravityFrozen
{
  superview = [self superview];
  avkit_isVideoGravityFrozen = [superview avkit_isVideoGravityFrozen];

  return avkit_isVideoGravityFrozen;
}

- (double)avkit_overrideLayoutMarginsForCounterRotation
{
  superview = [self superview];
  if (superview)
  {
    superview2 = [self superview];
    [superview2 avkit_overrideLayoutMarginsForCounterRotation];
    v5 = v4;
  }

  else
  {
    v5 = 2.22507386e-308;
  }

  return v5;
}

- (uint64_t)avkit_isCompletelyTransparent
{
  layer = [self layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer opacity];
  if (v4 == 0.0)
  {
    avkit_isCompletelyTransparent = 1;
  }

  else
  {
    superview = [self superview];
    avkit_isCompletelyTransparent = [superview avkit_isCompletelyTransparent];
  }

  return avkit_isCompletelyTransparent;
}

- (BOOL)avkit_isInAWindowAndVisible
{
  if (![self _isInAWindow] || (objc_msgSend(self, "isHiddenOrHasHiddenAncestor") & 1) != 0)
  {
    return 0;
  }

  window = [self window];
  [self bounds];
  [window convertRect:self fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  window2 = [self window];
  [window2 bounds];
  v20.origin.x = v13;
  v20.origin.y = v14;
  v20.size.width = v15;
  v20.size.height = v16;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  v19 = CGRectIntersection(v18, v20);
  v2 = !CGRectIsEmpty(v19);

  return v2;
}

- (void)avkit_hitTestControlForPoint:()AVAdditions withEvent:bestSoFar:shortestDistanceSoFar:
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = a5;
  if ([self isHidden])
  {
    goto LABEL_25;
  }

  if (![self isUserInteractionEnabled])
  {
    goto LABEL_25;
  }

  [self bounds];
  if (CGRectIsEmpty(v54))
  {
    goto LABEL_25;
  }

  layer = [self layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer opacity];
  v16 = v15;

  if (v16 <= 0.05)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v12 type] == 11)
  {
    v17 = [self hitTest:v12 withEvent:{a2, a3}];
    v18 = v17;
    if (v17 == self)
    {
    }

    else
    {
      [self hitRect];
      v53.x = a2;
      v53.y = a3;
      v19 = CGRectContainsPoint(v55, v53);

      if (!v19)
      {
        goto LABEL_17;
      }
    }

    [self bounds];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [self bounds];
      [self trackRectForBounds:?];
      v45 = v21;
      v46 = v20;
      v23 = v22;
      v25 = v24;
      [self bounds];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      [self value];
      LODWORD(v44) = v34;
      [self thumbRectForBounds:v27 trackRect:v29 value:{v31, v33, v46, v45, v23, v25, v44}];
      [self _thumbHitEdgeInsets];
    }

    UIDistanceBetweenPointAndRect();
    UIRoundToViewScale();
    v36 = v35;
    if (v35 <= *a7)
    {
      selfCopy = self;
      *a6 = self;
      *a7 = v36;
    }
  }

LABEL_17:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  subviews = [self subviews];
  v39 = [subviews countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v48;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v48 != v41)
        {
          objc_enumerationMutation(subviews);
        }

        v43 = *(*(&v47 + 1) + 8 * i);
        [self convertPoint:v43 toView:{a2, a3}];
        [v43 avkit_hitTestControlForPoint:v12 withEvent:a6 bestSoFar:a7 shortestDistanceSoFar:?];
      }

      v40 = [subviews countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v40);
  }

LABEL_25:
}

- (id)avkit_hitTestControlForPoint:()AVAdditions withEvent:
{
  v5 = 0;
  v6 = 0x7FEFFFFFFFFFFFFFLL;
  [self avkit_hitTestControlForPoint:a3 withEvent:&v5 bestSoFar:&v6 shortestDistanceSoFar:?];
  v3 = v5;

  return v3;
}

- (uint64_t)avkit_isDescendantOfViewPassingTest:()AVAdditions
{
  v4 = a3;
  if (v4[2](v4, self))
  {
    v5 = 1;
  }

  else
  {
    superview = [self superview];
    v5 = [superview avkit_isDescendantOfViewPassingTest:v4];
  }

  return v5;
}

- (uint64_t)avkit_isAncestorOfViewPassingTest:()AVAdditions
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4[2](v4, self))
  {
    v5 = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    subviews = [self subviews];
    v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          if ([*(*(&v10 + 1) + 8 * i) avkit_isAncestorOfViewPassingTest:v4])
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

- (id)avkit_ancestorViewPassingTest:()AVAdditions
{
  v4 = a3;
  if (v4[2](v4, self))
  {
    selfCopy = self;
  }

  else
  {
    superview = [self superview];
    selfCopy = [superview avkit_ancestorViewPassingTest:v4];
  }

  return selfCopy;
}

@end