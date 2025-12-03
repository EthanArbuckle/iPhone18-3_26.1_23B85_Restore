@interface TUIExpandableLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- (BOOL)_isExpanded;
- (BOOL)shouldUseDefaultGuideForLayout:(id)layout edge:(unint64_t)edge;
- (TUIExpandableContentLayout)expandableChild;
- (TUILayout)expandedContentChild;
- (TUILayout)moreChild;
- (double)computedHeightAbovePivot;
- (id)effectiveGuideBottom;
- (id)effectiveGuideLeading;
- (id)effectiveGuideTop;
- (id)effectiveGuideTrailing;
- (id)guideProviderForLayout:(id)layout;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)_examineChildrenIfNeeded;
- (void)computeLayout;
- (void)onChildrenUpdated;
@end

@implementation TUIExpandableLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  v7 = [(TUILayout *)self box];
  viewState = [v7 viewState];

  v9 = 0;
  if (kind >= 4 && viewState)
  {
    v10 = objc_opt_new();
    v11 = [(TUILayout *)self box];
    pointerRefId = [v11 pointerRefId];
    v13 = pointerRefId;
    if (pointerRefId)
    {
      refId = pointerRefId;
    }

    else
    {
      v15 = viewState;
      WeakRetained = objc_loadWeakRetained(&self->_moreChild);
      v17 = [WeakRetained box];
      refId = [v17 refId];

      viewState = v15;
    }

    v36 = refId;

    v18 = [(TUILayout *)self box];
    pointerStyle = [v18 pointerStyle];
    v20 = [TUIPointer pointerWithRefId:refId style:pointerStyle];

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_294F4;
    v40[3] = &unk_25E7C0;
    v40[4] = self;
    v21 = contextCopy;
    v41 = v21;
    v42 = v10;
    v35 = v10;
    [v21 evaluateWithPointer:v20 block:v40];
    v43 = @"press";
    v22 = objc_alloc_init(TUIElementBehaviorArgumentsMap);
    v44 = v22;
    [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v34 = v37 = contextCopy;

    v23 = [[TUIElementTriggerBehaviorMap alloc] initWithMap:v34];
    v24 = [TUIElementActionTriggerHandler alloc];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_295D4;
    v38[3] = &unk_25E7E8;
    v25 = viewState;
    v39 = v25;
    v26 = [(TUIElementActionTriggerHandler *)v24 initWithActionsData:v23 block:v38];
    v27 = [(TUILayout *)self box];
    [v27 identifier];
    v29 = v28 = viewState;
    LOWORD(v33) = 0;
    LOBYTE(v32) = 0;
    LOBYTE(v31) = 1;
    v9 = [TUIControlView renderModelWithStateToButtonAttributes:0 stateToRenderModel:v35 imageModelIDToResource:0 actionHandler:v26 viewState:v25 linkEntities:0 type:1.0 role:UIEdgeInsetsZero.top userInterfaceStyle:UIEdgeInsetsZero.left enabled:UIEdgeInsetsZero.bottom pressScale:UIEdgeInsetsZero.right touchInsets:0 identifier:0 style:0 pointer:v31 focusStyle:v29 menu:0 contextMenuIsPrimaryAction:v20 name:0 axAttributes:0 enableBackgroundForHighlightPreview:v32 enableShadowForHighlightPreview:0, 0, v33];

    viewState = v28;
    [(TUILayout *)self renderModelSizeWithContext:v21];
    [v9 setSize:?];

    contextCopy = v37;
  }

  return v9;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  expandableChild = [(TUIExpandableLayout *)self expandableChild];
  validatedIntrinsicWidthConsideringSpecified = [expandableChild validatedIntrinsicWidthConsideringSpecified];

  return validatedIntrinsicWidthConsideringSpecified;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  expandableChild = [(TUIExpandableLayout *)self expandableChild];
  validatedIntrinsicHeightConsideringSpecified = [expandableChild validatedIntrinsicHeightConsideringSpecified];

  return validatedIntrinsicHeightConsideringSpecified;
}

- (double)computedHeightAbovePivot
{
  expandableChild = [(TUIExpandableLayout *)self expandableChild];
  [expandableChild computedHeightAbovePivot];
  v4 = v3;

  return v4;
}

- (void)onChildrenUpdated
{
  v3.receiver = self;
  v3.super_class = TUIExpandableLayout;
  [(TUILayout *)&v3 onChildrenUpdated];
  objc_storeWeak(&self->_expandableChild, 0);
  objc_storeWeak(&self->_expandedContentChild, 0);
  objc_storeWeak(&self->_moreChild, 0);
  self->_didExamineChildren = 0;
}

- (void)computeLayout
{
  _isExpanded = [(TUIExpandableLayout *)self _isExpanded];
  expandableChild = [(TUIExpandableLayout *)self expandableChild];
  v5 = _isExpanded ^ 1;
  v6 = (expandableChild != 0) & (_isExpanded ^ 1);

  if (v6 == 1)
  {
    moreChild = [(TUIExpandableLayout *)self moreChild];
    [moreChild validateLayout];

    moreChild2 = [(TUIExpandableLayout *)self moreChild];
    [moreChild2 computedTransformedSize];
    v10 = v9;
    expandableChild2 = [(TUIExpandableLayout *)self expandableChild];
    [expandableChild2 setExpandableMoreWidth:v10];
  }

  [(TUILayout *)self flexedWidth];
  v13 = v12;
  expandableChild3 = [(TUIExpandableLayout *)self expandableChild];
  [expandableChild3 setFlexedWidth:v13];

  [(TUILayout *)self flexedHeight];
  v16 = v15;
  expandableChild4 = [(TUIExpandableLayout *)self expandableChild];
  [expandableChild4 setFlexedHeight:v16];

  [(TUILayout *)self computeWidth];
  v19 = v18;
  expandableChild5 = [(TUIExpandableLayout *)self expandableChild];
  [expandableChild5 setContainingWidth:v19];

  [(TUILayout *)self containingHeight];
  [(TUILayout *)self containingHeight];
  v22 = v21;
  expandableChild6 = [(TUIExpandableLayout *)self expandableChild];
  [expandableChild6 setContainingHeight:v22];

  expandableChild7 = [(TUIExpandableLayout *)self expandableChild];
  [expandableChild7 validateLayout];

  expandableChild8 = [(TUIExpandableLayout *)self expandableChild];
  [expandableChild8 computedTransformedSize];
  v27 = v26;
  v29 = v28;

  expandableChild9 = [(TUIExpandableLayout *)self expandableChild];
  expandableContentIsTruncated = [expandableChild9 expandableContentIsTruncated];

  v32 = v5 & expandableContentIsTruncated;
  moreChild3 = [(TUIExpandableLayout *)self moreChild];
  [moreChild3 setHidden:v6 & v32 ^ 1];

  expandedContentChild = [(TUIExpandableLayout *)self expandedContentChild];
  [expandedContentChild setHidden:v32];

  if ((((v6 & v32) ^ 1) & 1) == 0)
  {
    expandableChild10 = [(TUIExpandableLayout *)self expandableChild];
    [expandableChild10 expandableMoreXOffset];
    v37 = v36;

    expandableChild11 = [(TUIExpandableLayout *)self expandableChild];
    [expandableChild11 computedOrigin];
    v40 = v39;
    expandableChild12 = [(TUIExpandableLayout *)self expandableChild];
    [expandableChild12 computedHeightAbovePivot];
    v43 = v40 + v42;
    moreChild4 = [(TUIExpandableLayout *)self moreChild];
    [moreChild4 computedHeightAbovePivot];
    v46 = v43 - v45;

    moreChild5 = [(TUIExpandableLayout *)self moreChild];
    [(TUIVStack *)moreChild5 setComputedOrigin:v37, v46];
LABEL_8:

    goto LABEL_9;
  }

  expandedContentChild2 = [(TUIExpandableLayout *)self expandedContentChild];
  if (expandedContentChild2)
  {
    v49 = expandedContentChild2;
    expandedContentChild3 = [(TUIExpandableLayout *)self expandedContentChild];
    hidden = [expandedContentChild3 hidden];

    if ((hidden & 1) == 0)
    {
      v52 = [TUIVStack alloc];
      expandableChild13 = [(TUIExpandableLayout *)self expandableChild];
      v58[0] = expandableChild13;
      expandedContentChild4 = [(TUIExpandableLayout *)self expandedContentChild];
      v58[1] = expandedContentChild4;
      v55 = [NSArray arrayWithObjects:v58 count:2];
      moreChild5 = [(TUIVStack *)v52 initWithLayout:self children:v55];

      [(TUILayout *)self flexedHeight];
      [(TUIVStack *)moreChild5 setFlexedHeight:?];
      [(TUIVStack *)moreChild5 setWidth:v19];
      [(TUIVStack *)moreChild5 computeLayoutWithOffset:CGPointZero.x, CGPointZero.y];
      [(TUIVStack *)moreChild5 computedSize];
      v27 = v56;
      v29 = v57;
      goto LABEL_8;
    }
  }

LABEL_9:
  [(TUILayout *)self setComputedNaturalSize:v27, v29];
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth
{
  expandableChild = [(TUIExpandableLayout *)self expandableChild];
  computedContentWidth = [expandableChild computedContentWidth];

  return computedContentWidth;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight
{
  expandableChild = [(TUIExpandableLayout *)self expandableChild];
  computedContentHeight = [expandableChild computedContentHeight];

  return computedContentHeight;
}

- (id)guideProviderForLayout:(id)layout
{
  layoutCopy = layout;
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v6 = [layoutAncestor guideProviderForLayout:layoutCopy];

  return v6;
}

- (BOOL)shouldUseDefaultGuideForLayout:(id)layout edge:(unint64_t)edge
{
  layoutCopy = layout;
  layoutAncestor = [layoutCopy layoutAncestor];
  if (layoutAncestor == self)
  {
    v9 = [layoutCopy box];
    if ([v9 role])
    {
      v8 = 0;
    }

    else
    {
      layoutAncestor2 = [(TUILayout *)self layoutAncestor];
      v8 = [layoutAncestor2 shouldUseDefaultGuideForLayout:self edge:edge];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)effectiveGuideTop
{
  expandableChild = [(TUIExpandableLayout *)self expandableChild];
  effectiveGuideTop = [expandableChild effectiveGuideTop];

  return effectiveGuideTop;
}

- (id)effectiveGuideBottom
{
  expandableChild = [(TUIExpandableLayout *)self expandableChild];
  effectiveGuideBottom = [expandableChild effectiveGuideBottom];

  return effectiveGuideBottom;
}

- (id)effectiveGuideLeading
{
  expandableChild = [(TUIExpandableLayout *)self expandableChild];
  effectiveGuideLeading = [expandableChild effectiveGuideLeading];

  return effectiveGuideLeading;
}

- (id)effectiveGuideTrailing
{
  expandableChild = [(TUIExpandableLayout *)self expandableChild];
  effectiveGuideTrailing = [expandableChild effectiveGuideTrailing];

  return effectiveGuideTrailing;
}

- (TUIExpandableContentLayout)expandableChild
{
  [(TUIExpandableLayout *)self _examineChildrenIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_expandableChild);

  return WeakRetained;
}

- (TUILayout)moreChild
{
  [(TUIExpandableLayout *)self _examineChildrenIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_moreChild);

  return WeakRetained;
}

- (void)_examineChildrenIfNeeded
{
  if (![(TUIExpandableLayout *)self didExamineChildren])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    children = [(TUILayout *)self children];
    v4 = [children countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (!v4)
    {
      goto LABEL_28;
    }

    v5 = v4;
    v6 = *v31;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(children);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [v8 box];
        role = [v9 role];

        if (role)
        {
          v11 = [v8 box];
          role2 = [v11 role];

          if (role2 == &dword_0 + 2)
          {
            v13 = 120;
            WeakRetained = objc_loadWeakRetained(&self->_expandedContentChild);

            if (WeakRetained)
            {
              v15 = TUIDefaultLog();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_1998D4(v35, self);
              }

              goto LABEL_24;
            }
          }

          else
          {
            v27 = [v8 box];
            role3 = [v27 role];

            if (role3 != &dword_4 + 1)
            {
              continue;
            }

            v13 = 128;
            v29 = objc_loadWeakRetained(&self->_moreChild);

            if (v29)
            {
              v15 = TUIDefaultLog();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_199878(v34, self);
              }

LABEL_24:
            }
          }

          objc_storeWeak((&self->super.super.isa + v13), v8);
          continue;
        }

        v16 = objc_loadWeakRetained(&self->_expandableChild);

        if (v16)
        {
          v17 = TUIDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_199930(v37, self);
          }
        }

        v18 = objc_opt_class();
        v24 = TUIClassAndProtocolCast(v8, v18, 1, v19, v20, v21, v22, v23, &OBJC_PROTOCOL___TUIExpandableContentLayout);
        objc_storeWeak(&self->_expandableChild, v24);

        v25 = objc_loadWeakRetained(&self->_expandableChild);
        if (!v25)
        {
          v26 = TUIDefaultLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_19998C(v36, self);
          }
        }
      }

      v5 = [children countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (!v5)
      {
LABEL_28:

        [(TUIExpandableLayout *)self setDidExamineChildren:1];
        return;
      }
    }
  }
}

- (BOOL)_isExpanded
{
  v2 = [(TUILayout *)self box];
  viewState = [v2 viewState];
  value = [viewState value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (TUILayout)expandedContentChild
{
  WeakRetained = objc_loadWeakRetained(&self->_expandedContentChild);

  return WeakRetained;
}

@end