@interface TUIHFlowLayout
- (BOOL)shouldUseDefaultGuideForLayout:(id)layout edge:(unint64_t)edge;
- (TUIHFlowLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (id)defaultGuideSpecForLayout:(id)layout edge:(unint64_t)edge;
- (id)guideForLayout:(id)layout spec:(id)spec;
- (id)guideLayoutControllerForLayout:(id)layout;
- (id)guideProviderForLayout:(id)layout;
- (void)computeLayout;
- (void)onChildInvalidate:(id)invalidate;
@end

@implementation TUIHFlowLayout

- (TUIHFlowLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  modelCopy = model;
  parentCopy = parent;
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = TUIHFlowLayout;
  v11 = [(TUILayout *)&v16 initWithModel:modelCopy parent:parentCopy controller:controllerCopy];
  v12 = v11;
  if (v11)
  {
    [(TUILayout *)v11 specifiedWidth];
    if ((v13 & 0x6000000000000) == 0x2000000000000)
    {
      [(TUILayout *)v12 setSpecifiedHeightComputeInherited:1];
    }

    v14 = [(TUILayout *)v12 box];
    v12->_guideLayout = [v14 layoutMode] == &dword_0 + 1;
  }

  return v12;
}

- (id)guideLayoutControllerForLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy)
  {
    while (1)
    {
      layoutAncestor = [(TUILayout *)layoutCopy layoutAncestor];
      v6 = layoutAncestor;
      if (layoutAncestor == self)
      {
        break;
      }

      layoutCopy = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  guideLayoutController = [(TUILayout *)layoutCopy guideLayoutController];

  return guideLayoutController;
}

- (id)guideForLayout:(id)layout spec:(id)spec
{
  specCopy = spec;
  v7 = [(TUIHFlowLayout *)self guideLayoutControllerForLayout:layout];
  v8 = [v7 guideForSpec:specCopy];

  return v8;
}

- (id)guideProviderForLayout:(id)layout
{
  if (!self->_guideLayout)
  {
    self = 0;
  }

  return self;
}

- (id)defaultGuideSpecForLayout:(id)layout edge:(unint64_t)edge
{
  layoutCopy = layout;
  v6 = layoutCopy;
  if ((edge & 0xFFFFFFFFFFFFFFFELL) == 2 && [layoutCopy shouldUseDefaultGuideForLayout:layoutCopy edge:edge])
  {
    v7 = +[TUIGuideSpec unbound];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldUseDefaultGuideForLayout:(id)layout edge:(unint64_t)edge
{
  layoutCopy = layout;
  v7 = layoutCopy;
  if (self->_guideLayout)
  {
    layoutAncestor = [layoutCopy layoutAncestor];
    v9 = layoutAncestor == self;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUIHFlowLayout;
    v9 = [(TUILayout *)&v11 shouldUseDefaultGuideForLayout:layoutCopy edge:edge];
  }

  return v9;
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  v33 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  children = [(TUILayout *)self children];
  v6 = 0;
  v7 = [children countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v7)
  {
    v8 = *v44;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(children);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        [v10 setFlexedWidth:NAN];
        [(TUILayout *)self containingWidth];
        [v10 setContainingWidth:?];
        [v10 validateLayout];
        if (([v10 hidden] & 1) == 0 && !-[TUIMutableHStack addChildLayout:ifFitting:](v6, "addChildLayout:ifFitting:", v10, 1))
        {
          v11 = [TUIMutableHStack alloc];
          v12 = [(TUILayout *)self box];
          hspacing = [v12 hspacing];
          v15 = [(TUIMutableHStack *)v11 initWithLayout:self spacing:hspacing maxWidth:v14, v4];

          v6 = v15;
          if (self->_guideLayout)
          {
            v16 = objc_alloc_init(TUIGuideLayoutController);
            [(TUIHStack *)v15 setGuideLayoutController:v16];
          }

          [v33 addObject:v15];
          [(TUIMutableHStack *)v15 addChildLayout:v10 ifFitting:0];
        }
      }

      v7 = [children countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v7);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = v33;
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v18)
  {
    v19 = *v40;
    v20 = 0.0;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v39 + 1) + 8 * j) accumulatedWidth];
        v20 = fmax(v20, v22);
      }

      v18 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v18);
  }

  else
  {
    v20 = 0.0;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v23 = [(TUILayout *)self box];
  [v23 vspacing];

  v24 = [(TUILayout *)self box];
  v25 = COERCE_FLOAT([v24 vspacing]);

  v26 = v25;
  computedLayoutDirection = [(TUILayout *)self computedLayoutDirection];
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  isHorizontallyAligningChildren = [layoutAncestor isHorizontallyAligningChildren];

  v30 = 0.0;
  if (isHorizontallyAligningChildren)
  {
    v4 = v20;
  }

  else
  {
    v31 = [(TUILayout *)self box];
    halign = [v31 halign];

    if (halign < 2)
    {
      if (computedLayoutDirection == 2)
      {
        v30 = v4 - v20;
      }

      else
      {
        v30 = 0.0;
      }
    }

    else if (halign == &dword_0 + 2)
    {
      v30 = (v4 - v20) * 0.5;
    }

    else if (halign == &dword_0 + 3)
    {
      if (computedLayoutDirection == 2)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v4 - v20;
      }
    }
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_47424;
  v34[3] = &unk_25F018;
  v34[4] = &v35;
  *&v34[5] = v26;
  *&v34[6] = v30;
  *&v34[7] = v4;
  [v17 enumerateObjectsUsingBlock:v34];
  [(TUILayout *)self setComputedNaturalSize:v4, v36[3]];
  _Block_object_dispose(&v35, 8);
}

- (void)onChildInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5.receiver = self;
  v5.super_class = TUIHFlowLayout;
  [(TUILayout *)&v5 onChildInvalidate:invalidateCopy];
  [invalidateCopy setFlexedWidth:NAN];
}

@end