@interface TUIContainerView
+ (id)renderModelWithSubviewsModel:(id)a3 style:(id)a4 identifier:(id)a5;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (TUIContainerView)initWithFrame:(CGRect)a3;
- (TUIViewFactory)factory;
- (id)descendentViewWithIdentifier:(id)a3;
- (id)descendentViewWithRefId:(id)a3;
- (void)_resetStyling;
- (void)_updateSubviews;
- (void)appendRenderOverrideObservers:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)applyStyle:(id)a3;
- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4;
- (void)invalidateShowContents;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFactory:(id)a3;
- (void)viewDidEndDisplay;
@end

@implementation TUIContainerView

+ (id)renderModelWithSubviewsModel:(id)a3 style:(id)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierContainerView" identifier:v7 submodel:v9 style:v8];

  return v10;
}

- (void)applyLayoutAttributes:(id)a3
{
  v16.receiver = self;
  v16.super_class = TUIContainerView;
  v4 = a3;
  [(TUIReusableBaseView *)&v16 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];
  v6 = [v5 submodel];
  [v4 outsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(TUIContainerView *)self configureWithModel:v6 outsets:v8, v10, v12, v14];
  v15 = [v5 style];
  [(TUIContainerView *)self applyStyle:v15];
}

- (void)applyStyle:(id)a3
{
  v49 = a3;
  [(TUIRenderStyling *)self->_currentStyle removeStylingFromView:self->_contentView];
  [v49 applyStylingToView:self->_contentView];
  objc_storeStrong(&self->_currentStyle, a3);
  v5 = [(UIView *)self->_contentView layer];
  v6 = [v5 compositingFilter];

  LODWORD(v5) = TUILayerCompositingFilterNeedsBackdropLayer(v6);
  v7 = [(TUIContainerView *)self layer];
  [v7 setAllowsGroupBlending:(v6 == 0) | (v5 & 1)];

  backdropView = self->_backdropView;
  if (v5)
  {
    if (!backdropView)
    {
      v9 = [_TUIBackdropView alloc];
      [(TUIContainerView *)self bounds];
      v10 = [(_TUIBackdropView *)v9 initWithFrame:?];
      v11 = self->_backdropView;
      self->_backdropView = v10;

      [(_TUIBackdropView *)self->_backdropView setUserInteractionEnabled:0];
      [(_TUIBackdropView *)self->_backdropView setAutoresizingMask:18];
      [(TUIContainerView *)self insertSubview:self->_backdropView belowSubview:self->_contentView];
    }
  }

  else if (backdropView)
  {
    [(_TUIBackdropView *)backdropView removeFromSuperview];
    v12 = self->_backdropView;
    self->_backdropView = 0;
  }

  if (v6 && (-[UIView layer](self->_contentView, "layer"), v13 = objc_claimAutoreleasedReturnValue(), [v13 shadowOpacity], v15 = v14, v13, v15 > 0.0))
  {
    if (!self->_shadowView)
    {
      v16 = [UIView alloc];
      [(TUIContainerView *)self bounds];
      v17 = [v16 initWithFrame:?];
      shadowView = self->_shadowView;
      self->_shadowView = v17;

      [(UIView *)self->_shadowView setUserInteractionEnabled:0];
      [(UIView *)self->_shadowView setAutoresizingMask:18];
      [(TUIContainerView *)self insertSubview:self->_shadowView belowSubview:self->_contentView];
    }
  }

  else
  {
    v19 = self->_shadowView;
    if (v19)
    {
      [(UIView *)v19 removeFromSuperview];
      v20 = self->_shadowView;
      self->_shadowView = 0;
    }
  }

  if (self->_shadowView)
  {
    v21 = [(UIView *)self->_contentView layer];
    v22 = [v21 shadowColor];
    v23 = [(UIView *)self->_shadowView layer];
    [v23 setShadowColor:v22];

    v24 = [(UIView *)self->_contentView layer];
    [v24 shadowOffset];
    v26 = v25;
    v28 = v27;
    v29 = [(UIView *)self->_shadowView layer];
    [v29 setShadowOffset:{v26, v28}];

    v30 = [(UIView *)self->_contentView layer];
    [v30 shadowRadius];
    v32 = v31;
    v33 = [(UIView *)self->_shadowView layer];
    [v33 setShadowRadius:v32];

    v34 = [(UIView *)self->_contentView layer];
    [v34 shadowOpacity];
    LODWORD(v32) = v35;
    v36 = [(UIView *)self->_shadowView layer];
    LODWORD(v37) = LODWORD(v32);
    [v36 setShadowOpacity:v37];

    v38 = [(UIView *)self->_contentView layer];
    v39 = [v38 shadowPath];
    v40 = [(UIView *)self->_shadowView layer];
    [v40 setShadowPath:v39];

    v41 = [(UIView *)self->_shadowView layer];
    [v41 setPunchoutShadow:1];

    v42 = +[UIColor blackColor];
    v43 = [v42 CGColor];
    v44 = [(UIView *)self->_contentView layer];
    [v44 setShadowColor:v43];

    v45 = [(UIView *)self->_contentView layer];
    [v45 setShadowOffset:{0.0, -3.0}];

    v46 = [(UIView *)self->_contentView layer];
    [v46 setShadowRadius:3.0];

    v47 = [(UIView *)self->_contentView layer];
    [v47 setShadowOpacity:0.0];

    v48 = [(UIView *)self->_contentView layer];
    [v48 setShadowPath:0];
  }
}

- (void)setFactory:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_factory, obj);
    [(TUIContainerView *)self _updateSubviews];
    v5 = obj;
  }
}

- (TUIContainerView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = TUIContainerView;
  v3 = [(TUIContainerView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUIContainerView *)v3 setClipsToBounds:0];
    v5 = [_TUIContainerContentView alloc];
    [(TUIContainerView *)v4 bounds];
    v6 = [(_TUIContainerContentView *)v5 initWithFrame:?];
    contentView = v4->_contentView;
    v4->_contentView = &v6->super;

    [(UIView *)v4->_contentView setAutoresizingMask:18];
    [(TUIContainerView *)v4 addSubview:v4->_contentView];
  }

  return v4;
}

- (void)_resetStyling
{
  [(TUIRenderStyling *)self->_currentStyle removeStylingFromView:self->_contentView];
  currentStyle = self->_currentStyle;
  self->_currentStyle = 0;

  [(UIView *)self->_contentView setBackgroundColor:0];
  v4 = [(UIView *)self->_contentView layer];
  [v4 setShadowOpacity:0.0];

  v5 = [(UIView *)self->_contentView layer];
  [v5 setBorderWidth:0.0];

  v6 = [(UIView *)self->_contentView layer];
  [v6 setCornerRadius:0.0];

  v7 = [(UIView *)self->_contentView layer];
  [v7 setMasksToBounds:0];

  v8 = [(UIView *)self->_contentView layer];
  [v8 setShadowPath:0];

  v9 = [(UIView *)self->_contentView layer];
  [v9 setCompositingFilter:0];

  [(_TUIBackdropView *)self->_backdropView removeFromSuperview];
  backdropView = self->_backdropView;
  self->_backdropView = 0;

  [(UIView *)self->_shadowView removeFromSuperview];
  shadowView = self->_shadowView;
  self->_shadowView = 0;

  v12 = [(TUIContainerView *)self layer];
  [v12 setAllowsGroupBlending:1];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TUIContainerView;
  [(TUIReusableBaseView *)&v4 prepareForReuse];
  [(TUIContainerView *)self _resetStyling];
  model = self->_model;
  self->_model = 0;

  [(TUIContainerView *)self _updateSubviews];
}

- (void)viewDidEndDisplay
{
  v3.receiver = self;
  v3.super_class = TUIContainerView;
  [(TUIReusableBaseView *)&v3 viewDidEndDisplay];
  [(TUIContainerView *)self prepareForReuse];
}

- (void)_updateSubviews
{
  v19 = 0;
  if (self->_model && (v3 = objc_loadWeakRetained(&self->_factory)) != 0 && (v4 = v3, v5 = [(TUIContainerView *)self showContents], v4, v5))
  {
    v6 = [(TUIReusableBaseView *)self feedControllerHost];
    v7 = [v6 renderOverrideProvider];
    v8 = [v7 renderOverrides];

    if (v8)
    {
      v9 = [(TUIReusableBaseView *)self tui_querySectionUUID];
      v10 = [(TUIReusableBaseView *)self tui_querySectionUID];
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    model = self->_model;
    WeakRetained = objc_loadWeakRetained(&self->_factory);
    v16 = [(TUIRenderModelSubviews *)model configureSubviewsWithFactory:WeakRetained outsets:self host:v8 overrides:&v19 usedOverrides:v9 UUID:v10 uid:self->_outsets.top, self->_outsets.left, self->_outsets.bottom, self->_outsets.right];

    v17 = [v16 copy];
    currentSubviews = self->_currentSubviews;
    self->_currentSubviews = v17;

    v13 = 2 * v19;
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_factory);
    v12 = [v11 subviewPool];
    [v12 prepareToReuseHost:self];

    v13 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v13;
}

- (void)layoutSubviews
{
  if (*&self->_flags)
  {
    *&self->_flags &= ~1u;
    [(TUIContainerView *)self _updateSubviews];
  }

  v3.receiver = self;
  v3.super_class = TUIContainerView;
  [(TUIContainerView *)&v3 layoutSubviews];
}

- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4
{
  right = a4.right;
  left = a4.left;
  bottom = a4.bottom;
  top = a4.top;
  v6 = a3;
  v9 = v6;
  if (self->_model != v6 || (v7.f64[0] = top, v7.f64[1] = left, v8.f64[0] = bottom, v8.f64[1] = right, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_outsets.top, v7), vceqq_f64(*&self->_outsets.bottom, v8)))) & 1) == 0))
  {
    objc_storeStrong(&self->_model, a3);
    self->_outsets.top = top;
    self->_outsets.left = left;
    self->_outsets.bottom = bottom;
    self->_outsets.right = right;
    [(TUIContainerView *)self _updateSubviews];
LABEL_4:
    v6 = v9;
    goto LABEL_5;
  }

  if ((*&self->_flags & 2) != 0)
  {
    *&self->_flags |= 1u;
    [(TUIContainerView *)self setNeedsLayout];
    goto LABEL_4;
  }

LABEL_5:
}

- (void)invalidateShowContents
{
  if ((*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 1u;
    [(TUIContainerView *)self setNeedsLayout];
  }
}

- (id)descendentViewWithIdentifier:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TUIContainerView;
  v5 = [(TUIReusableBaseView *)&v18 descendentViewWithIdentifier:v4];
  if (!v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(TUIContainerView *)self tui_hostedSubviewsMap];
    v7 = [v6 allValues];

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) descendentViewWithIdentifier:v4];
          if (v12)
          {
            v5 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v9)
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
  v18.receiver = self;
  v18.super_class = TUIContainerView;
  v5 = [(TUIReusableBaseView *)&v18 descendentViewWithRefId:v4];
  if (!v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(TUIContainerView *)self tui_hostedSubviewsMap];
    v7 = [v6 allValues];

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) descendentViewWithRefId:v4];
          if (v12)
          {
            v5 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v9)
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

- (void)appendRenderOverrideObservers:(id)a3
{
  v4 = a3;
  [v4 addObject:self];
  v5 = [(TUIContainerView *)self tui_hostedSubviewsMap];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_48A1C;
  v7[3] = &unk_25F068;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  contentView = self->_contentView;
  v8 = a4;
  [(TUIContainerView *)v6 convertPoint:contentView toView:x, y];
  LOBYTE(v6) = [(UIView *)contentView pointInside:v8 withEvent:?];

  return v6;
}

- (TUIViewFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

@end