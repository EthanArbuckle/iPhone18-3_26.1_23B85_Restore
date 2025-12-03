@interface TUIVBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight;
- (BOOL)groupedContainingIsGrouped;
- (TUIVBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (UIEdgeInsets)groupedContainingInsets;
- (double)computedHeightAbovePivot;
- (id)guideProviderForLayout:(id)layout;
- (void)_buildVStacks;
- (void)_updateDynamicLayouts;
- (void)appendVisibleBoundsObservers:(id)observers axis:(unint64_t)axis offset:(double)offset;
- (void)computeLayout;
- (void)onChildInvalidate:(id)invalidate;
- (void)onChildTransformedSizeDidChange:(id)change;
- (void)onChildrenUpdated;
- (void)updateGuides;
@end

@implementation TUIVBoxLayout

- (TUIVBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  modelCopy = model;
  parentCopy = parent;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = TUIVBoxLayout;
  v11 = [(TUILayout *)&v15 initWithModel:modelCopy parent:parentCopy controller:controllerCopy];
  v12 = v11;
  if (v11)
  {
    [(TUILayout *)v11 specifiedWidth];
    if ((v13 & 0x6000000000000) == 0x2000000000000)
    {
      [(TUILayout *)v12 setSpecifiedWidthComputeInherited:1];
    }
  }

  return v12;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  children = [(TUILayout *)self children];
  v4 = [children countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(children);
        }

        *&v15 = [*(*(&v16 + 1) + 8 * i) validatedIntrinsicWidthConsideringSpecified];
        *(&v15 + 1) = v7;
        sub_57F44(&__p, &v15);
      }

      v4 = [children countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v4);
  }

  v8 = TUILengthCombine(__p, (v21 - __p) >> 4);
  v10 = fmin(fmax(*&v8, *(&v8 + 1)), v9);
  if (v10 <= -3.40282347e38)
  {
    v13 = 4286578687;
  }

  else
  {
    if (v10 < 3.40282347e38)
    {
      *&v11 = v10;
      v12 = (v11 | 0x7FC0000000000000);
      goto LABEL_14;
    }

    v13 = 2139095039;
  }

  v12 = (v13 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
LABEL_14:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v12;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [(TUILayout *)self children];
  v4 = [children countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(children);
        }

        *&v10 = [*(*(&v11 + 1) + 8 * i) validatedIntrinsicHeightConsideringSpecified];
        *(&v10 + 1) = v7;
        sub_57F44(&__p, &v10);
      }

      v4 = [children countByEnumeratingWithState:&v11 objects:v18 count:16];
    }

    while (v4);
  }

  v8 = TUILengthSum(__p, (v16 - __p) >> 4);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v8;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [(TUILayout *)self children];
  v4 = [children countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(children);
        }

        *&v10 = [*(*(&v11 + 1) + 8 * i) computedHeight];
        *(&v10 + 1) = v7;
        sub_57F44(&__p, &v10);
      }

      v4 = [children countByEnumeratingWithState:&v11 objects:v18 count:16];
    }

    while (v4);
  }

  v8 = TUILengthSum(__p, (v16 - __p) >> 4);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v8;
}

- (void)_buildVStacks
{
  if (!self->_vstacks)
  {
    v33 = 128;
    v37 = objc_opt_new();
    guideProvider = [(TUILayout *)self guideProvider];
    v4 = [guideProvider guideLayoutControllerForLayout:self];

    v36 = v4;
    if (v4)
    {
      v5 = objc_opt_new();
      guideTop = [(TUILayout *)self guideTop];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = [(TUILayout *)self children];
      v7 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v7)
      {
        v8 = *v39;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v39 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v38 + 1) + 8 * i);
            guideTop2 = [v10 guideTop];
            if (guideTop2)
            {
              v12 = [v5 count] == 0;

              if (!v12)
              {
                v13 = [[TUIVStack alloc] initWithLayout:self children:v5];
                [(TUIVStack *)v13 setGuideTop:guideTop];
                guideTop3 = [v10 guideTop];
                [(TUIVStack *)v13 setGuideBottom:guideTop3];

                [(TUIVStack *)v13 setGuideLayoutController:v36];
                guideTop4 = [v10 guideTop];

                [v5 removeAllObjects];
                [v37 addObject:v13];

                guideTop = guideTop4;
              }
            }

            [v5 addObject:v10];
            guideBottom = [v10 guideBottom];
            v17 = guideBottom == 0;

            if (!v17)
            {
              v18 = [[TUIVStack alloc] initWithLayout:self children:v5];
              [(TUIVStack *)v18 setGuideTop:guideTop];
              guideBottom2 = [v10 guideBottom];
              [(TUIVStack *)v18 setGuideBottom:guideBottom2];

              [(TUIVStack *)v18 setGuideLayoutController:v36];
              guideBottom3 = [v10 guideBottom];

              [v5 removeAllObjects];
              [v37 addObject:v18];

              guideTop = guideBottom3;
            }
          }

          v7 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v7);
      }

      if ([v5 count])
      {
        v21 = [[TUIVStack alloc] initWithLayout:self children:v5];
        [(TUIVStack *)v21 setGuideTop:guideTop];
        guideBottom4 = [(TUILayout *)self guideBottom];
        [(TUIVStack *)v21 setGuideBottom:guideBottom4];

        [(TUIVStack *)v21 setGuideLayoutController:v36];
        [v37 addObject:v21];
      }
    }

    else
    {
      v23 = [TUIVStack alloc];
      children = [(TUILayout *)self children];
      v25 = [(TUIVStack *)v23 initWithLayout:self children:children];

      guideProvider2 = [(TUILayout *)self guideProvider];
      v27 = [guideProvider2 guideLayoutControllerForLayout:self];
      [(TUIVStack *)v25 setGuideLayoutController:v27];

      [v37 addObject:v25];
    }

    v28 = [v37 copy];
    v29 = *(&self->super.super.isa + v34);
    *(&self->super.super.isa + v34) = v28;

    if ([*(&self->super.super.isa + v34) count] == &dword_0 + 1)
    {
      firstObject = [*(&self->super.super.isa + v34) firstObject];
      specifiedHeight = [(TUILayout *)self specifiedHeight];
      [firstObject setSpecifiedHeight:{specifiedHeight, v32}];
      [firstObject setValignEnabled:1];
    }
  }
}

- (void)updateGuides
{
  v4.receiver = self;
  v4.super_class = TUIVBoxLayout;
  [(TUILayout *)&v4 updateGuides];
  vstacks = self->_vstacks;
  self->_vstacks = 0;
}

- (void)onChildTransformedSizeDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = TUIVBoxLayout;
  [(TUILayout *)&v5 onChildTransformedSizeDidChange:changeCopy];
  [(TUILayout *)self setFlexedHeight:NAN];
}

- (void)computeLayout
{
  selfCopy = self;
  [(TUIVBoxLayout *)self _buildVStacks];
  [(TUILayout *)selfCopy computeWidth];
  v4 = v3;
  v43 = selfCopy;
  if ([(NSArray *)selfCopy->_vstacks count]== &dword_0 + 1)
  {
    [(TUILayout *)selfCopy flexedHeight];
    v6 = v5;
    v7 = [(NSArray *)selfCopy->_vstacks objectAtIndexedSubscript:0];
    [v7 setFlexedHeight:v6];

    [(TUILayout *)v43 containingHeight];
    v9 = v8;
    v10 = [(NSArray *)v43->_vstacks objectAtIndexedSubscript:0];
    [v10 setContainingHeight:v9];

    selfCopy = v43;
  }

  guideProvider = [(TUILayout *)selfCopy guideProvider];
  v12 = [guideProvider guideLayoutControllerForLayout:v43];

  layoutPhase = [v12 layoutPhase];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = v43->_vstacks;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v15)
  {
    v16 = *v45;
    v17 = layoutPhase == &dword_0 + 1 && v12 != 0;
    if (layoutPhase)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 != 0;
    }

    v19 = 0.0;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v44 + 1) + 8 * i);
        [v21 setWidth:v4];
        if (v17)
        {
          [v21 computedSize];
          v23 = v22;
          guideTop = [v21 guideTop];
          if (guideTop)
          {
            guideBottom = [v21 guideBottom];
            v26 = guideBottom == 0;

            v27 = v23;
            if (!v26)
            {
              guideBottom2 = [v21 guideBottom];
              [guideBottom2 guideOffset];
              v30 = v29;
              guideTop2 = [v21 guideTop];
              [guideTop2 guideOffset];
              v33 = v32;

              v27 = fmax(v30 - v33, 0.0);
            }
          }

          else
          {
            v27 = v23;
          }

          if (v23 != v27)
          {
            [v21 setFlexedHeight:?];
          }
        }

        [v21 computeLayoutWithOffset:{0.0, v19}];
        [v21 computedSize];
        v35 = v34;
        if (v18)
        {
          guideTop3 = [v21 guideTop];
          if (guideTop3)
          {
            guideBottom3 = [v21 guideBottom];
            v38 = guideBottom3 == 0;

            if (!v38)
            {
              guideTop4 = [v21 guideTop];
              guideBottom4 = [v21 guideBottom];
              computedHeight = [v21 computedHeight];
              [v12 addEdgeFrom:guideTop4 to:guideBottom4 length:{computedHeight, v42}];
            }
          }
        }

        v19 = v19 + v35;
      }

      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v15);
  }

  else
  {
    v19 = 0.0;
  }

  if (v43->_dynamicLayouts)
  {
    [(TUIVBoxLayout *)v43 _updateDynamicLayouts];
  }

  [(TUILayout *)v43 setComputedNaturalSize:v4, v19];
  *&v43->_flags |= 1u;
}

- (void)_updateDynamicLayouts
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_dynamicLayouts;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5) updateSummariesFromChildren];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (double)computedHeightAbovePivot
{
  v15.receiver = self;
  v15.super_class = TUIVBoxLayout;
  [(TUILayout *)&v15 computedHeightAbovePivot];
  v4 = v3;
  controller = [(TUILayout *)self controller];
  v6 = [(TUILayout *)self box];
  pivotChild = [v6 pivotChild];
  v8 = [controller layoutForModel:pivotChild];

  if (v8)
  {
    children = [(TUILayout *)self children];
    v10 = [children indexOfObjectIdenticalTo:v8];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v8 computedHeightAbovePivot];
      v12 = v11;
      [v8 computedFrame];
      v4 = v12 + v13;
    }
  }

  return v4;
}

- (void)onChildInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5.receiver = self;
  v5.super_class = TUIVBoxLayout;
  [(TUILayout *)&v5 onChildInvalidate:invalidateCopy];
  [invalidateCopy setFlexedWidth:NAN];
}

- (void)onChildrenUpdated
{
  v19.receiver = self;
  v19.super_class = TUIVBoxLayout;
  [(TUILayout *)&v19 onChildrenUpdated];
  [(TUILayout *)self invalidateIntrinsicSize];
  vstacks = self->_vstacks;
  self->_vstacks = 0;

  v4 = objc_opt_new();
  v5 = objc_opt_class();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  containers = [(TUILayout *)self containers];
  v7 = [containers countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(containers);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_class() == v5)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [containers countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 count];
  if (v13)
  {
    v14 = [v4 copy];
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(&self->_dynamicLayouts, v14);
  if (v13)
  {
  }
}

- (void)appendVisibleBoundsObservers:(id)observers axis:(unint64_t)axis offset:(double)offset
{
  observersCopy = observers;
  if (axis == 2)
  {
    v17 = 2;
    if (*&self->_flags)
    {
      *&self->_flags &= ~1u;
      ++self->_visibleBoundsGeneration;
    }

    v18 = objc_opt_new();
    model = [(TUILayout *)self model];
    [model appendLayoutChildrenToArray:v18];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v18;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            dynamicArrayWindowingBox = [v14 dynamicArrayWindowingBox];
            if (dynamicArrayWindowingBox)
            {
              v16 = [TUIVisibleBoundsObserver newVerticalWithWindow:dynamicArrayWindowingBox layout:self offset:offset];
              [observersCopy addObject:v16];
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    axis = 2;
  }

  v19.receiver = self;
  v19.super_class = TUIVBoxLayout;
  [(TUILayout *)&v19 appendVisibleBoundsObservers:observersCopy axis:axis offset:offset, v17];
}

- (id)guideProviderForLayout:(id)layout
{
  layoutCopy = layout;
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v6 = [layoutAncestor guideProviderForLayout:layoutCopy];

  return v6;
}

- (BOOL)groupedContainingIsGrouped
{
  v2 = [(TUILayout *)self box];
  grouped = [v2 grouped];

  return grouped;
}

- (UIEdgeInsets)groupedContainingInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end