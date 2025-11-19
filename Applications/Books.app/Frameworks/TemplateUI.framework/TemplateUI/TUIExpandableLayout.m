@interface TUIExpandableLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- (BOOL)_isExpanded;
- (BOOL)shouldUseDefaultGuideForLayout:(id)a3 edge:(unint64_t)a4;
- (TUIExpandableContentLayout)expandableChild;
- (TUILayout)expandedContentChild;
- (TUILayout)moreChild;
- (double)computedHeightAbovePivot;
- (id)effectiveGuideBottom;
- (id)effectiveGuideLeading;
- (id)effectiveGuideTop;
- (id)effectiveGuideTrailing;
- (id)guideProviderForLayout:(id)a3;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)_examineChildrenIfNeeded;
- (void)computeLayout;
- (void)onChildrenUpdated;
@end

@implementation TUIExpandableLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(TUILayout *)self box];
  v8 = [v7 viewState];

  v9 = 0;
  if (a3 >= 4 && v8)
  {
    v10 = objc_opt_new();
    v11 = [(TUILayout *)self box];
    v12 = [v11 pointerRefId];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v15 = v8;
      WeakRetained = objc_loadWeakRetained(&self->_moreChild);
      v17 = [WeakRetained box];
      v14 = [v17 refId];

      v8 = v15;
    }

    v36 = v14;

    v18 = [(TUILayout *)self box];
    v19 = [v18 pointerStyle];
    v20 = [TUIPointer pointerWithRefId:v14 style:v19];

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_294F4;
    v40[3] = &unk_25E7C0;
    v40[4] = self;
    v21 = v6;
    v41 = v21;
    v42 = v10;
    v35 = v10;
    [v21 evaluateWithPointer:v20 block:v40];
    v43 = @"press";
    v22 = objc_alloc_init(TUIElementBehaviorArgumentsMap);
    v44 = v22;
    [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v34 = v37 = v6;

    v23 = [[TUIElementTriggerBehaviorMap alloc] initWithMap:v34];
    v24 = [TUIElementActionTriggerHandler alloc];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_295D4;
    v38[3] = &unk_25E7E8;
    v25 = v8;
    v39 = v25;
    v26 = [(TUIElementActionTriggerHandler *)v24 initWithActionsData:v23 block:v38];
    v27 = [(TUILayout *)self box];
    [v27 identifier];
    v29 = v28 = v8;
    LOWORD(v33) = 0;
    LOBYTE(v32) = 0;
    LOBYTE(v31) = 1;
    v9 = [TUIControlView renderModelWithStateToButtonAttributes:0 stateToRenderModel:v35 imageModelIDToResource:0 actionHandler:v26 viewState:v25 linkEntities:0 type:1.0 role:UIEdgeInsetsZero.top userInterfaceStyle:UIEdgeInsetsZero.left enabled:UIEdgeInsetsZero.bottom pressScale:UIEdgeInsetsZero.right touchInsets:0 identifier:0 style:0 pointer:v31 focusStyle:v29 menu:0 contextMenuIsPrimaryAction:v20 name:0 axAttributes:0 enableBackgroundForHighlightPreview:v32 enableShadowForHighlightPreview:0, 0, v33];

    v8 = v28;
    [(TUILayout *)self renderModelSizeWithContext:v21];
    [v9 setSize:?];

    v6 = v37;
  }

  return v9;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  v3 = [(TUIExpandableLayout *)self expandableChild];
  v4 = [v3 validatedIntrinsicWidthConsideringSpecified];

  return v4;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  v3 = [(TUIExpandableLayout *)self expandableChild];
  v4 = [v3 validatedIntrinsicHeightConsideringSpecified];

  return v4;
}

- (double)computedHeightAbovePivot
{
  v2 = [(TUIExpandableLayout *)self expandableChild];
  [v2 computedHeightAbovePivot];
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
  v3 = [(TUIExpandableLayout *)self _isExpanded];
  v4 = [(TUIExpandableLayout *)self expandableChild];
  v5 = v3 ^ 1;
  v6 = (v4 != 0) & (v3 ^ 1);

  if (v6 == 1)
  {
    v7 = [(TUIExpandableLayout *)self moreChild];
    [v7 validateLayout];

    v8 = [(TUIExpandableLayout *)self moreChild];
    [v8 computedTransformedSize];
    v10 = v9;
    v11 = [(TUIExpandableLayout *)self expandableChild];
    [v11 setExpandableMoreWidth:v10];
  }

  [(TUILayout *)self flexedWidth];
  v13 = v12;
  v14 = [(TUIExpandableLayout *)self expandableChild];
  [v14 setFlexedWidth:v13];

  [(TUILayout *)self flexedHeight];
  v16 = v15;
  v17 = [(TUIExpandableLayout *)self expandableChild];
  [v17 setFlexedHeight:v16];

  [(TUILayout *)self computeWidth];
  v19 = v18;
  v20 = [(TUIExpandableLayout *)self expandableChild];
  [v20 setContainingWidth:v19];

  [(TUILayout *)self containingHeight];
  [(TUILayout *)self containingHeight];
  v22 = v21;
  v23 = [(TUIExpandableLayout *)self expandableChild];
  [v23 setContainingHeight:v22];

  v24 = [(TUIExpandableLayout *)self expandableChild];
  [v24 validateLayout];

  v25 = [(TUIExpandableLayout *)self expandableChild];
  [v25 computedTransformedSize];
  v27 = v26;
  v29 = v28;

  v30 = [(TUIExpandableLayout *)self expandableChild];
  v31 = [v30 expandableContentIsTruncated];

  v32 = v5 & v31;
  v33 = [(TUIExpandableLayout *)self moreChild];
  [v33 setHidden:v6 & v32 ^ 1];

  v34 = [(TUIExpandableLayout *)self expandedContentChild];
  [v34 setHidden:v32];

  if ((((v6 & v32) ^ 1) & 1) == 0)
  {
    v35 = [(TUIExpandableLayout *)self expandableChild];
    [v35 expandableMoreXOffset];
    v37 = v36;

    v38 = [(TUIExpandableLayout *)self expandableChild];
    [v38 computedOrigin];
    v40 = v39;
    v41 = [(TUIExpandableLayout *)self expandableChild];
    [v41 computedHeightAbovePivot];
    v43 = v40 + v42;
    v44 = [(TUIExpandableLayout *)self moreChild];
    [v44 computedHeightAbovePivot];
    v46 = v43 - v45;

    v47 = [(TUIExpandableLayout *)self moreChild];
    [(TUIVStack *)v47 setComputedOrigin:v37, v46];
LABEL_8:

    goto LABEL_9;
  }

  v48 = [(TUIExpandableLayout *)self expandedContentChild];
  if (v48)
  {
    v49 = v48;
    v50 = [(TUIExpandableLayout *)self expandedContentChild];
    v51 = [v50 hidden];

    if ((v51 & 1) == 0)
    {
      v52 = [TUIVStack alloc];
      v53 = [(TUIExpandableLayout *)self expandableChild];
      v58[0] = v53;
      v54 = [(TUIExpandableLayout *)self expandedContentChild];
      v58[1] = v54;
      v55 = [NSArray arrayWithObjects:v58 count:2];
      v47 = [(TUIVStack *)v52 initWithLayout:self children:v55];

      [(TUILayout *)self flexedHeight];
      [(TUIVStack *)v47 setFlexedHeight:?];
      [(TUIVStack *)v47 setWidth:v19];
      [(TUIVStack *)v47 computeLayoutWithOffset:CGPointZero.x, CGPointZero.y];
      [(TUIVStack *)v47 computedSize];
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
  v3 = [(TUIExpandableLayout *)self expandableChild];
  v4 = [v3 computedContentWidth];

  return v4;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight
{
  v3 = [(TUIExpandableLayout *)self expandableChild];
  v4 = [v3 computedContentHeight];

  return v4;
}

- (id)guideProviderForLayout:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self layoutAncestor];
  v6 = [v5 guideProviderForLayout:v4];

  return v6;
}

- (BOOL)shouldUseDefaultGuideForLayout:(id)a3 edge:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 layoutAncestor];
  if (v7 == self)
  {
    v9 = [v6 box];
    if ([v9 role])
    {
      v8 = 0;
    }

    else
    {
      v10 = [(TUILayout *)self layoutAncestor];
      v8 = [v10 shouldUseDefaultGuideForLayout:self edge:a4];
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
  v2 = [(TUIExpandableLayout *)self expandableChild];
  v3 = [v2 effectiveGuideTop];

  return v3;
}

- (id)effectiveGuideBottom
{
  v2 = [(TUIExpandableLayout *)self expandableChild];
  v3 = [v2 effectiveGuideBottom];

  return v3;
}

- (id)effectiveGuideLeading
{
  v2 = [(TUIExpandableLayout *)self expandableChild];
  v3 = [v2 effectiveGuideLeading];

  return v3;
}

- (id)effectiveGuideTrailing
{
  v2 = [(TUIExpandableLayout *)self expandableChild];
  v3 = [v2 effectiveGuideTrailing];

  return v3;
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
    v3 = [(TUILayout *)self children];
    v4 = [v3 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [v8 box];
        v10 = [v9 role];

        if (v10)
        {
          v11 = [v8 box];
          v12 = [v11 role];

          if (v12 == &dword_0 + 2)
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
            v28 = [v27 role];

            if (v28 != &dword_4 + 1)
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

      v5 = [v3 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
  v3 = [v2 viewState];
  v4 = [v3 value];
  v5 = [v4 BOOLValue];

  return v5;
}

- (TUILayout)expandedContentChild
{
  WeakRetained = objc_loadWeakRetained(&self->_expandedContentChild);

  return WeakRetained;
}

@end