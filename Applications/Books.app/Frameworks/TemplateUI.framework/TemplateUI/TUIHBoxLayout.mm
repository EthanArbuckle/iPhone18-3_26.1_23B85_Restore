@interface TUIHBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- ($E297CC25127479E857BE23A4F8632EA4)modifiedSpecifiedWidthForChild:(SEL)a3;
- (BOOL)shouldUseDefaultGuideForLayout:(id)a3 edge:(unint64_t)a4;
- (TUIHBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (id)defaultGuideSpecForLayout:(id)a3 edge:(unint64_t)a4;
- (id)guideForLayout:(id)a3 spec:(id)a4;
- (id)guideProviderForLayout:(id)a3;
- (void)_updateDynamicLayouts;
- (void)appendLayoutsWithSpecifiedWidthModifiedToArray:(id)a3;
- (void)appendVisibleBoundsObservers:(id)a3 axis:(unint64_t)a4 offset:(double)a5;
- (void)computeLayout;
- (void)onChildInvalidate:(id)a3;
- (void)onChildrenUpdated;
- (void)onContainingWidthChange;
- (void)onDesdendantSpecifiedWidthModifiedDidChange;
@end

@implementation TUIHBoxLayout

- (TUIHBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = TUIHBoxLayout;
  v11 = [(TUILayout *)&v24 initWithModel:v8 parent:v9 controller:v10];
  v12 = v11;
  if (v11)
  {
    [(TUILayout *)v11 specifiedWidth];
    if ((v13 & 0x6000000000000) == 0x2000000000000)
    {
      [(TUILayout *)v12 setSpecifiedWidthComputeInherited:1];
    }

    v14 = [(TUILayout *)v12 box];
    v15 = [v14 layoutMode];

    if (v15 != &dword_0 + 1)
    {
      v18 = [(TUILayout *)v12 box];
      v19 = [v18 layoutMode];

      if (v19 == &dword_0 + 2)
      {
        v20 = *&v12->_flags | 2;
      }

      else
      {
        v21 = [(TUILayout *)v12 box];
        v22 = [v21 layoutMode];

        if (v22 != &dword_0 + 3)
        {
          goto LABEL_11;
        }

        v20 = *&v12->_flags | 6;
      }

      *&v12->_flags = v20;
      goto LABEL_11;
    }

    v16 = objc_alloc_init(TUIGuideLayoutController);
    guideLayoutController = v12->_guideLayoutController;
    v12->_guideLayoutController = v16;
  }

LABEL_11:

  return v12;
}

- (id)guideForLayout:(id)a3 spec:(id)a4
{
  v4 = [(TUIGuideLayoutController *)self->_guideLayoutController guideForSpec:a4];

  return v4;
}

- (id)guideProviderForLayout:(id)a3
{
  if (!self->_guideLayoutController)
  {
    self = 0;
  }

  return self;
}

- (id)defaultGuideSpecForLayout:(id)a3 edge:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2 && [v5 shouldUseDefaultGuideForLayout:v5 edge:a4])
  {
    v7 = +[TUIGuideSpec unbound];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldUseDefaultGuideForLayout:(id)a3 edge:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_guideLayoutController)
  {
    v8 = [v6 layoutAncestor];
    v9 = v8 == self;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUIHBoxLayout;
    v9 = [(TUILayout *)&v11 shouldUseDefaultGuideForLayout:v6 edge:a4];
  }

  return v9;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(TUILayout *)self children];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        *&v10 = [*(*(&v11 + 1) + 8 * i) validatedIntrinsicWidthConsideringSpecified];
        *(&v10 + 1) = v7;
        sub_57F44(&__p, &v10);
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v18 count:16];
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

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(TUILayout *)self children];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        *&v10 = [*(*(&v11 + 1) + 8 * i) computedWidth];
        *(&v10 + 1) = v7;
        sub_57F44(&__p, &v10);
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v18 count:16];
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

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  v5 = [(TUILayout *)self specifiedHeight];
  v7 = v5;
  v9 = v8;
  if ((v8 & 0x8000000000000) != 0)
  {
    LODWORD(v6) = v5;
    [(TUILayout *)self computeHeight];
    v10 = v11;
  }

  else
  {
    v10 = NAN;
  }

  v12 = [TUIHStack alloc];
  v13 = [(TUILayout *)self children];
  v16 = [(TUIHStack *)v12 initWithLayout:self children:v13];

  [(TUIHStack *)v16 setComputedWidth:v4];
  [(TUIHStack *)v16 setComputedHeight:v10];
  [(TUILayout *)self containingWidth];
  [(TUIHStack *)v16 setContainingMaxWidth:?];
  v14 = [(TUILayout *)self specifiedWidth];
  [(TUIHStack *)v16 setSpecifiedWidth:v14, v15];
  [(TUIHStack *)v16 setSpecifiedHeight:v7, v9];
  [(TUIHStack *)v16 setGuideLayoutController:self->_guideLayoutController];
  [(TUIHStack *)v16 setPrefersEqualWidth:(*&self->_flags >> 1) & 1];
  [(TUIHStack *)v16 setUseStrictEqualWidth:(*&self->_flags >> 2) & 1];
  [(TUIHStack *)v16 computeLayout];
  if (self->_dynamicLayouts)
  {
    [(TUIHBoxLayout *)self _updateDynamicLayouts];
  }

  [(TUIHStack *)v16 layoutSize];
  [(TUILayout *)self setComputedNaturalSize:?];
  *&self->_flags |= 1u;
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

- (void)onChildInvalidate:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = TUIHBoxLayout;
  [(TUILayout *)&v5 onChildInvalidate:v4];
  [v4 setFlexedWidth:NAN];
}

- (void)onDesdendantSpecifiedWidthModifiedDidChange
{
  v3 = [(TUILayout *)self layoutAncestor];
  [v3 onDesdendantSpecifiedWidthModifiedDidChangeForChild:self];
}

- (void)appendLayoutsWithSpecifiedWidthModifiedToArray:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self children];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16D940;
  v7[3] = &unk_25ECF8;
  v6 = v4;
  v8 = v6;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)onContainingWidthChange
{
  if ([(TUILayout *)self desdendantSpecifiedWidthModified])
  {
    v3 = objc_opt_new();
    [(TUIHBoxLayout *)self appendLayoutsWithSpecifiedWidthModifiedToArray:v3];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * v7) onSpecifiedWidthChanged];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- ($E297CC25127479E857BE23A4F8632EA4)modifiedSpecifiedWidthForChild:(SEL)a3
{
  v5 = [a4 box];
  v6 = [v5 relativeWidth];
  v8 = v7;

  v9 = self;
  [(TUILayout *)v9 containingWidth];
  v11 = TUILengthByScaling(v6, v8, v10);

  return v11;
}

- (void)onChildrenUpdated
{
  v30.receiver = self;
  v30.super_class = TUIHBoxLayout;
  [(TUILayout *)&v30 onChildrenUpdated];
  [(TUILayout *)self invalidateIntrinsicSize];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(TUILayout *)self children];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v5)
  {
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v8 box];
        v10 = [v9 hasRelativeWidth];

        if (v10)
        {
          v4 = 1;
          [v8 setSpecifiedWidthModified:1];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v5);
  }

  [(TUILayout *)self updateDesdendantSpecifiedWidthModifiedWithFlag:v4 & 1];
  v11 = objc_opt_new();
  v12 = objc_opt_class();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [(TUILayout *)self containers];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v14)
  {
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v22 + 1) + 8 * j);
        if (objc_opt_class() == v12)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        if (v19)
        {
          [v11 addObject:v19];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v14);
  }

  v20 = [v11 count];
  if (v20)
  {
    v21 = [v11 copy];
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(&self->_dynamicLayouts, v21);
  if (v20)
  {
  }
}

- (void)appendVisibleBoundsObservers:(id)a3 axis:(unint64_t)a4 offset:(double)a5
{
  v8 = a3;
  if (a4 == 1)
  {
    v17 = 1;
    if (*&self->_flags)
    {
      *&self->_flags &= ~1u;
      ++self->_visibleBoundsGeneration;
    }

    v18 = objc_opt_new();
    v9 = [(TUILayout *)self model];
    [v9 appendLayoutChildrenToArray:v18];

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
            v15 = [v14 dynamicArrayWindowingBox];
            if (v15)
            {
              v16 = [TUIVisibleBoundsObserver newHorizontalWithWindow:v15 layout:self offset:a5];
              [v8 addObject:v16];
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    a4 = 1;
  }

  v19.receiver = self;
  v19.super_class = TUIHBoxLayout;
  [(TUILayout *)&v19 appendVisibleBoundsObservers:v8 axis:a4 offset:a5, v17];
}

@end