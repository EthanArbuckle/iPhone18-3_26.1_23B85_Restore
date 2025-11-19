@interface TUIInteractiveBaseView
- (BOOL)_updateFromState;
- (TUIViewFactory)factory;
- (UIEdgeInsets)outsets;
- (id)descendentViewWithIdentifier:(id)a3;
- (id)descendentViewWithRefId:(id)a3;
- (void)_updateSubviews;
- (void)appendRenderOverrideObservers:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4;
- (void)invalidateShowContents;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setEnabled:(BOOL)a3;
- (void)setFactory:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)updateFromState;
- (void)viewDidEndDisplay;
@end

@implementation TUIInteractiveBaseView

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = self->_control;
  if ([(TUIControlView *)v4 isEnabled]!= v3)
  {
    [(TUIInteractiveBaseView *)v4 setEnabled:v3];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = self->_control;
  if ([(TUIControlView *)v4 isHighlighted]!= v3)
  {
    [(TUIInteractiveBaseView *)v4 setHighlighted:v3];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v18.receiver = self;
  v18.super_class = TUIInteractiveBaseView;
  v4 = a3;
  [(TUIReusableBaseView *)&v18 applyLayoutAttributes:v4];
  v5 = [(TUIRenderModelInteractive *)self->_renderModel style:v18.receiver];
  v6 = [v4 renderModel];
  [v4 outsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(TUIInteractiveBaseView *)self configureWithModel:v6 outsets:v8, v10, v12, v14];
  v15 = [(TUIInteractiveBaseView *)self control];
  [v5 removeStylingFromView:v15];

  v16 = [v6 style];
  v17 = [(TUIInteractiveBaseView *)self control];
  [v16 applyStylingToView:v17];
}

- (void)setFactory:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_factory, obj);
    [(TUIInteractiveBaseView *)self _updateSubviews];
    [(TUIInteractiveBaseView *)self didUpdateSubviews];
    v5 = obj;
  }
}

- (void)appendRenderOverrideObservers:(id)a3
{
  v4 = a3;
  [v4 addObject:self];
  v5 = [(TUIInteractiveBaseView *)self control];
  v6 = [v5 tui_hostedSubviewsMap];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_B9288;
  v8[3] = &unk_25F068;
  v9 = v4;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4
{
  bottom = a4.bottom;
  right = a4.right;
  top = a4.top;
  left = a4.left;
  v6 = a3;
  v17 = v6;
  if (self->_renderModel != v6 || (v7.f64[0] = top, v7.f64[1] = left, v8.f64[0] = bottom, v8.f64[1] = right, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_outsets.top, v7), vceqq_f64(*&self->_outsets.bottom, v8)))) & 1) == 0))
  {
    objc_storeStrong(&self->_renderModel, a3);
    self->_outsets.top = top;
    self->_outsets.left = left;
    self->_outsets.bottom = bottom;
    self->_outsets.right = right;
    [(TUIInteractiveBaseView *)self loadControlIfNeeded];
    [(TUIInteractiveBaseView *)self setEnabled:[(TUIInteractiveBaseView *)self isEnabledWithRenderModel:v17]];
    v9 = [(TUIInteractiveBaseView *)self clipsToBounds];
    v10 = [(TUIInteractiveBaseView *)self control];
    [v10 setClipsToBounds:v9];

    v11 = [(TUIRenderModelInteractive *)v17 name];
    [(TUIInteractiveBaseView *)self setName:v11];

    v12 = [(TUIInteractiveBaseView *)self currentState];
    [(TUIInteractiveBaseView *)self setPreviousState:v12];

    [(TUIInteractiveBaseView *)self updateFromState];
    [(TUIInteractiveBaseView *)self renderModelUpdated];
LABEL_4:
    v6 = v17;
    goto LABEL_5;
  }

  if ((*&self->_flags & 4) != 0)
  {
    *&self->_flags |= 2u;
    [(TUIInteractiveBaseView *)self setNeedsLayout];
    goto LABEL_4;
  }

LABEL_5:
}

- (void)prepareForReuse
{
  v15.receiver = self;
  v15.super_class = TUIInteractiveBaseView;
  [(TUIReusableBaseView *)&v15 prepareForReuse];
  v3 = [(TUIInteractiveBaseView *)self layer];
  v4 = *&CATransform3DIdentity.m33;
  v14[4] = *&CATransform3DIdentity.m31;
  v14[5] = v4;
  v5 = *&CATransform3DIdentity.m43;
  v14[6] = *&CATransform3DIdentity.m41;
  v14[7] = v5;
  v6 = *&CATransform3DIdentity.m13;
  v14[0] = *&CATransform3DIdentity.m11;
  v14[1] = v6;
  v7 = *&CATransform3DIdentity.m23;
  v14[2] = *&CATransform3DIdentity.m21;
  v14[3] = v7;
  [v3 setSublayerTransform:v14];

  animatingTargetState = self->_animatingTargetState;
  self->_animatingTargetState = 0;

  savedCurrentState = self->_savedCurrentState;
  self->_savedCurrentState = 0;

  v10 = [(TUIRenderModelInteractive *)self->_renderModel style];
  v11 = [(TUIInteractiveBaseView *)self control];
  [v10 removeStylingFromView:v11];

  renderModel = self->_renderModel;
  self->_renderModel = 0;

  currentSubviewsModel = self->_currentSubviewsModel;
  self->_currentSubviewsModel = 0;

  [(TUIInteractiveBaseView *)self _updateSubviews];
  [(TUIInteractiveBaseView *)self didUpdateSubviews];
}

- (void)updateFromState
{
  if ((*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 1u;
    v4 = [(TUIInteractiveBaseView *)self currentState];
    savedCurrentState = self->_savedCurrentState;
    self->_savedCurrentState = v4;

    [(TUIInteractiveBaseView *)self setNeedsLayout];
  }
}

- (BOOL)_updateFromState
{
  if (!self->_animatingTargetState)
  {
    savedCurrentState = self->_savedCurrentState;
    if (savedCurrentState)
    {
      v5 = savedCurrentState;
    }

    else
    {
      v5 = [(TUIInteractiveBaseView *)self currentState];
    }

    v6 = v5;
    v7 = self->_savedCurrentState;
    self->_savedCurrentState = 0;

    v8 = [(TUIInteractiveBaseView *)self renderModel];
    [v8 pressScale];
    v10 = v9;

    if (v6 == @"highlighted")
    {
      v12 = [(TUIInteractiveBaseView *)self previousState];
      v11 = v12 == @"default";
    }

    else
    {
      v11 = 0;
    }

    if (v6 == @"default")
    {
      v14 = [(TUIInteractiveBaseView *)self previousState];
      v13 = v14 == @"highlighted";
    }

    else
    {
      v13 = 0;
    }

    v65 = v13;
    v67 = v11;
    v15 = v11 || v13;
    v70 = [(TUIInteractiveBaseView *)self control];
    v16 = [v70 tui_hostingView];
    v17 = [(TUIRenderModelInteractive *)self->_renderModel stateToModel];
    v18 = [(TUIInteractiveBaseView *)self currentState];
    v19 = [v17 objectForKeyedSubscript:v18];

    v20 = v19;
    if (!v19)
    {
      v21 = [(TUIRenderModelInteractive *)self->_renderModel stateToModel];
      v22 = [v21 objectForKeyedSubscript:@"default"];

      v20 = v22;
    }

    v24 = v10 != 1.0 || self->_currentSubviewsModel != v20;
    v25 = v24 & v15;
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = sub_B9E58;
    v81 = sub_B9E68;
    v82 = 0;
    if ((v24 & v15) == 1)
    {
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_B9E70;
      v76[3] = &unk_25DE80;
      v76[4] = self;
      v76[5] = &v77;
      v26 = [[_TUIInteractiveBasePressAnimationDelegate alloc] initWithCompletion:v76];
    }

    else
    {
      v26 = 0;
    }

    v27 = v16;
    objc_storeStrong(v78 + 5, v26);
    v28 = v6;
    if (v25)
    {

      if (self->_currentSubviewsModel == v20)
      {
        v2 = 0;
        goto LABEL_30;
      }

      v29 = v20;
      v30 = +[CATransition animation];
      [v30 setDuration:0.15];
      v31 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      [v30 setTimingFunction:v31];

      [v30 setDelegate:v78[5]];
      v32 = [v27 layer];
      [v32 addAnimation:v30 forKey:@"crossfade"];

      v20 = v29;
    }

    else if (self->_currentSubviewsModel == v20)
    {
      v2 = 0;
LABEL_41:
      [(TUIInteractiveBaseView *)self setPreviousState:v28];
      _Block_object_dispose(&v77, 8);

      return v2;
    }

    objc_storeStrong(&self->_currentSubviewsModel, v20);
    [(TUIInteractiveBaseView *)self _updateSubviews];
    v2 = 1;
    if (!v25)
    {
      goto LABEL_41;
    }

LABEL_30:
    if (v78[5])
    {
      objc_storeStrong(&self->_animatingTargetState, v28);
    }

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v64 = v20;
    if (v67)
    {
      memset(&v75, 0, sizeof(v75));
      v33 = -self->_outsets.top;
      v34 = -self->_outsets.left;
      v35 = *&CATransform3DIdentity.m33;
      v68 = *&CATransform3DIdentity.m31;
      *&v74.m31 = v68;
      *&v74.m33 = v35;
      v62 = v35;
      v58 = *&CATransform3DIdentity.m43;
      v60 = *&CATransform3DIdentity.m41;
      *&v74.m41 = v60;
      *&v74.m43 = v58;
      v54 = *&CATransform3DIdentity.m13;
      v56 = *&CATransform3DIdentity.m11;
      *&v74.m11 = *&CATransform3DIdentity.m11;
      *&v74.m13 = v54;
      v51 = *&CATransform3DIdentity.m23;
      v52 = *&CATransform3DIdentity.m21;
      *&v74.m21 = v52;
      *&v74.m23 = v51;
      CATransform3DTranslate(&v75, &v74, v33, v34, 0.0);
      memset(&v74, 0, sizeof(v74));
      v36 = [(TUIInteractiveBaseView *)self control];
      v37 = [v36 layer];
      v38 = [v37 presentationLayer];
      v39 = v38;
      if (v38)
      {
        [v38 sublayerTransform];
      }

      else
      {
        memset(&b, 0, sizeof(b));
      }

      a = v75;
      CATransform3DConcat(&v74, &a, &b);

      memset(&b, 0, sizeof(b));
      *&a.m31 = v68;
      *&a.m33 = v62;
      *&a.m41 = v60;
      *&a.m43 = v58;
      *&a.m11 = v56;
      *&a.m13 = v54;
      *&a.m21 = v52;
      *&a.m23 = v51;
      CATransform3DScale(&b, &a, v10, v10, 1.0);
      a = v74;
      v40 = [NSValue valueWithCATransform3D:&a];
      a = b;
      v41 = [NSValue valueWithCATransform3D:&a];
      v42 = [CABasicAnimation animationWithKeyPath:@"sublayerTransform"];
      [v42 setFromValue:v40];
      [v42 setToValue:v41];
      [v42 setDuration:0.15];
      [v42 setDelegate:v78[5]];
      v43 = [(TUIInteractiveBaseView *)self layer];
      [v43 addAnimation:v42 forKey:@"pressed"];

      v71 = b;
      v44 = [(TUIInteractiveBaseView *)self layer];
      a = v71;
      [v44 setSublayerTransform:&a];

      v20 = v64;
    }

    if (v65)
    {
      memset(&v75, 0, sizeof(v75));
      v66 = *&CATransform3DIdentity.m33;
      *&v74.m31 = *&CATransform3DIdentity.m31;
      v69 = *&v74.m31;
      *&v74.m33 = v66;
      v61 = *&CATransform3DIdentity.m43;
      *&v74.m41 = *&CATransform3DIdentity.m41;
      v63 = *&v74.m41;
      *&v74.m43 = v61;
      v57 = *&CATransform3DIdentity.m13;
      *&v74.m11 = *&CATransform3DIdentity.m11;
      v59 = *&v74.m11;
      *&v74.m13 = v57;
      v53 = *&CATransform3DIdentity.m23;
      *&v74.m21 = *&CATransform3DIdentity.m21;
      v55 = *&v74.m21;
      *&v74.m23 = v53;
      CATransform3DScale(&v75, &v74, v10, v10, 1.0);
      v74 = v75;
      v45 = [NSValue valueWithCATransform3D:&v74];
      *&v74.m31 = v69;
      *&v74.m33 = v66;
      *&v74.m41 = v63;
      *&v74.m43 = v61;
      *&v74.m11 = v59;
      *&v74.m13 = v57;
      *&v74.m21 = v55;
      *&v74.m23 = v53;
      v46 = [NSValue valueWithCATransform3D:&v74];
      v47 = [CABasicAnimation animationWithKeyPath:@"sublayerTransform"];
      [v47 setFromValue:v45];
      [v47 setToValue:v46];
      [v47 setDuration:0.15];
      [v47 setDelegate:v78[5]];
      v48 = [(TUIInteractiveBaseView *)self layer];
      [v48 addAnimation:v47 forKey:@"reversed"];

      v49 = [(TUIInteractiveBaseView *)self layer];
      *&v74.m31 = v69;
      *&v74.m33 = v66;
      *&v74.m41 = v63;
      *&v74.m43 = v61;
      *&v74.m11 = v59;
      *&v74.m13 = v57;
      *&v74.m21 = v55;
      *&v74.m23 = v53;
      [v49 setSublayerTransform:&v74];

      v20 = v64;
    }

    +[CATransaction commit];
    goto LABEL_41;
  }

  return 0;
}

- (void)viewDidEndDisplay
{
  v3.receiver = self;
  v3.super_class = TUIInteractiveBaseView;
  [(TUIReusableBaseView *)&v3 viewDidEndDisplay];
  [(TUIInteractiveBaseView *)self prepareForReuse];
}

- (void)layoutSubviews
{
  flags = self->_flags;
  if (flags)
  {
    *&self->_flags = flags & 0xFE;
    v4 = [(TUIInteractiveBaseView *)self _updateFromState];
    flags = self->_flags;
    if ((flags & 2) == 0)
    {
      if (!v4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_6:
    *&self->_flags = flags & 0xFD;
    [(TUIInteractiveBaseView *)self _updateSubviews];
LABEL_7:
    [(TUIInteractiveBaseView *)self didUpdateSubviews];
    goto LABEL_8;
  }

  if ((*&self->_flags & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  v5.receiver = self;
  v5.super_class = TUIInteractiveBaseView;
  [(TUIInteractiveBaseView *)&v5 layoutSubviews];
}

- (void)invalidateShowContents
{
  if ((*&self->_flags & 2) == 0)
  {
    *&self->_flags |= 2u;
    [(TUIInteractiveBaseView *)self setNeedsLayout];
  }
}

- (id)descendentViewWithIdentifier:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TUIInteractiveBaseView;
  v5 = [(TUIReusableBaseView *)&v19 descendentViewWithIdentifier:v4];
  if (!v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(TUIInteractiveBaseView *)self control];
    v7 = [v6 tui_hostedSubviewsMap];
    v8 = [v7 allValues];

    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) descendentViewWithIdentifier:v4];
          if (v13)
          {
            v5 = v13;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_12:
  }

  return v5;
}

- (id)descendentViewWithRefId:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TUIInteractiveBaseView;
  v5 = [(TUIReusableBaseView *)&v19 descendentViewWithRefId:v4];
  if (!v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(TUIInteractiveBaseView *)self control];
    v7 = [v6 tui_hostedSubviewsMap];
    v8 = [v7 allValues];

    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) descendentViewWithRefId:v4];
          if (v13)
          {
            v5 = v13;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_12:
  }

  return v5;
}

- (void)_updateSubviews
{
  v3 = [(TUIInteractiveBaseView *)self control];
  v25 = 0;
  if (self->_currentSubviewsModel && (v4 = objc_loadWeakRetained(&self->_factory)) != 0 && (v5 = v4, v6 = [(TUIInteractiveBaseView *)self showContents], v5, v6))
  {
    [(TUIRenderModelSubviews *)self->_currentSubviewsModel prepare];
    v7 = [(TUIReusableBaseView *)self feedControllerHost];
    v8 = [v7 renderOverrideProvider];
    v9 = [v8 renderOverrides];

    if (v9)
    {
      v10 = [(TUIReusableBaseView *)self tui_querySectionUUID];
      v11 = [(TUIReusableBaseView *)self tui_querySectionUID];
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    currentSubviewsModel = self->_currentSubviewsModel;
    WeakRetained = objc_loadWeakRetained(&self->_factory);
    v16 = [(TUIRenderModelSubviews *)currentSubviewsModel configureSubviewsWithFactory:WeakRetained outsets:v3 host:v9 overrides:&v25 usedOverrides:v10 UUID:v11 uid:self->_outsets.top, self->_outsets.left, self->_outsets.bottom, self->_outsets.right];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v22;
      while (1)
      {
        if (*v22 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if (!--v19)
        {
          v19 = [v17 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (!v19)
          {
            break;
          }
        }
      }
    }

    v13 = 4 * v25;
  }

  else
  {
    v12 = objc_loadWeakRetained(&self->_factory);
    [v12 viewFactoryPrepareToReuseHost:v3];

    v13 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v13;
}

- (TUIViewFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

- (UIEdgeInsets)outsets
{
  top = self->_outsets.top;
  left = self->_outsets.left;
  bottom = self->_outsets.bottom;
  right = self->_outsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end