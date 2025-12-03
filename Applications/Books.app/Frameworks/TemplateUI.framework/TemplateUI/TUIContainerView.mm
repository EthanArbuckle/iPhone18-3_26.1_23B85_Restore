@interface TUIContainerView
+ (id)renderModelWithSubviewsModel:(id)model style:(id)style identifier:(id)identifier;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (TUIContainerView)initWithFrame:(CGRect)frame;
- (TUIViewFactory)factory;
- (id)descendentViewWithIdentifier:(id)identifier;
- (id)descendentViewWithRefId:(id)id;
- (void)_resetStyling;
- (void)_updateSubviews;
- (void)appendRenderOverrideObservers:(id)observers;
- (void)applyLayoutAttributes:(id)attributes;
- (void)applyStyle:(id)style;
- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets;
- (void)invalidateShowContents;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFactory:(id)factory;
- (void)viewDidEndDisplay;
@end

@implementation TUIContainerView

+ (id)renderModelWithSubviewsModel:(id)model style:(id)style identifier:(id)identifier
{
  identifierCopy = identifier;
  styleCopy = style;
  modelCopy = model;
  v10 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierContainerView" identifier:identifierCopy submodel:modelCopy style:styleCopy];

  return v10;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v16.receiver = self;
  v16.super_class = TUIContainerView;
  attributesCopy = attributes;
  [(TUIReusableBaseView *)&v16 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];
  submodel = [renderModel submodel];
  [attributesCopy outsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(TUIContainerView *)self configureWithModel:submodel outsets:v8, v10, v12, v14];
  style = [renderModel style];
  [(TUIContainerView *)self applyStyle:style];
}

- (void)applyStyle:(id)style
{
  styleCopy = style;
  [(TUIRenderStyling *)self->_currentStyle removeStylingFromView:self->_contentView];
  [styleCopy applyStylingToView:self->_contentView];
  objc_storeStrong(&self->_currentStyle, style);
  layer = [(UIView *)self->_contentView layer];
  compositingFilter = [layer compositingFilter];

  LODWORD(layer) = TUILayerCompositingFilterNeedsBackdropLayer(compositingFilter);
  layer2 = [(TUIContainerView *)self layer];
  [layer2 setAllowsGroupBlending:(compositingFilter == 0) | (layer & 1)];

  backdropView = self->_backdropView;
  if (layer)
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

  if (compositingFilter && (-[UIView layer](self->_contentView, "layer"), v13 = objc_claimAutoreleasedReturnValue(), [v13 shadowOpacity], v15 = v14, v13, v15 > 0.0))
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
    layer3 = [(UIView *)self->_contentView layer];
    shadowColor = [layer3 shadowColor];
    layer4 = [(UIView *)self->_shadowView layer];
    [layer4 setShadowColor:shadowColor];

    layer5 = [(UIView *)self->_contentView layer];
    [layer5 shadowOffset];
    v26 = v25;
    v28 = v27;
    layer6 = [(UIView *)self->_shadowView layer];
    [layer6 setShadowOffset:{v26, v28}];

    layer7 = [(UIView *)self->_contentView layer];
    [layer7 shadowRadius];
    v32 = v31;
    layer8 = [(UIView *)self->_shadowView layer];
    [layer8 setShadowRadius:v32];

    layer9 = [(UIView *)self->_contentView layer];
    [layer9 shadowOpacity];
    LODWORD(v32) = v35;
    layer10 = [(UIView *)self->_shadowView layer];
    LODWORD(v37) = LODWORD(v32);
    [layer10 setShadowOpacity:v37];

    layer11 = [(UIView *)self->_contentView layer];
    shadowPath = [layer11 shadowPath];
    layer12 = [(UIView *)self->_shadowView layer];
    [layer12 setShadowPath:shadowPath];

    layer13 = [(UIView *)self->_shadowView layer];
    [layer13 setPunchoutShadow:1];

    v42 = +[UIColor blackColor];
    cGColor = [v42 CGColor];
    layer14 = [(UIView *)self->_contentView layer];
    [layer14 setShadowColor:cGColor];

    layer15 = [(UIView *)self->_contentView layer];
    [layer15 setShadowOffset:{0.0, -3.0}];

    layer16 = [(UIView *)self->_contentView layer];
    [layer16 setShadowRadius:3.0];

    layer17 = [(UIView *)self->_contentView layer];
    [layer17 setShadowOpacity:0.0];

    layer18 = [(UIView *)self->_contentView layer];
    [layer18 setShadowPath:0];
  }
}

- (void)setFactory:(id)factory
{
  obj = factory;
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_factory, obj);
    [(TUIContainerView *)self _updateSubviews];
    v5 = obj;
  }
}

- (TUIContainerView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = TUIContainerView;
  v3 = [(TUIContainerView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  layer = [(UIView *)self->_contentView layer];
  [layer setShadowOpacity:0.0];

  layer2 = [(UIView *)self->_contentView layer];
  [layer2 setBorderWidth:0.0];

  layer3 = [(UIView *)self->_contentView layer];
  [layer3 setCornerRadius:0.0];

  layer4 = [(UIView *)self->_contentView layer];
  [layer4 setMasksToBounds:0];

  layer5 = [(UIView *)self->_contentView layer];
  [layer5 setShadowPath:0];

  layer6 = [(UIView *)self->_contentView layer];
  [layer6 setCompositingFilter:0];

  [(_TUIBackdropView *)self->_backdropView removeFromSuperview];
  backdropView = self->_backdropView;
  self->_backdropView = 0;

  [(UIView *)self->_shadowView removeFromSuperview];
  shadowView = self->_shadowView;
  self->_shadowView = 0;

  layer7 = [(TUIContainerView *)self layer];
  [layer7 setAllowsGroupBlending:1];
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
    feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
    renderOverrideProvider = [feedControllerHost renderOverrideProvider];
    renderOverrides = [renderOverrideProvider renderOverrides];

    if (renderOverrides)
    {
      tui_querySectionUUID = [(TUIReusableBaseView *)self tui_querySectionUUID];
      tui_querySectionUID = [(TUIReusableBaseView *)self tui_querySectionUID];
    }

    else
    {
      tui_querySectionUID = 0;
      tui_querySectionUUID = 0;
    }

    model = self->_model;
    WeakRetained = objc_loadWeakRetained(&self->_factory);
    v16 = [(TUIRenderModelSubviews *)model configureSubviewsWithFactory:WeakRetained outsets:self host:renderOverrides overrides:&v19 usedOverrides:tui_querySectionUUID UUID:tui_querySectionUID uid:self->_outsets.top, self->_outsets.left, self->_outsets.bottom, self->_outsets.right];

    v17 = [v16 copy];
    currentSubviews = self->_currentSubviews;
    self->_currentSubviews = v17;

    v13 = 2 * v19;
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_factory);
    subviewPool = [v11 subviewPool];
    [subviewPool prepareToReuseHost:self];

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

- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  left = outsets.left;
  bottom = outsets.bottom;
  top = outsets.top;
  modelCopy = model;
  v9 = modelCopy;
  if (self->_model != modelCopy || (v7.f64[0] = top, v7.f64[1] = left, v8.f64[0] = bottom, v8.f64[1] = right, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_outsets.top, v7), vceqq_f64(*&self->_outsets.bottom, v8)))) & 1) == 0))
  {
    objc_storeStrong(&self->_model, model);
    self->_outsets.top = top;
    self->_outsets.left = left;
    self->_outsets.bottom = bottom;
    self->_outsets.right = right;
    [(TUIContainerView *)self _updateSubviews];
LABEL_4:
    modelCopy = v9;
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

- (id)descendentViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = TUIContainerView;
  v5 = [(TUIReusableBaseView *)&v18 descendentViewWithIdentifier:identifierCopy];
  if (!v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    tui_hostedSubviewsMap = [(TUIContainerView *)self tui_hostedSubviewsMap];
    allValues = [tui_hostedSubviewsMap allValues];

    v8 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) descendentViewWithIdentifier:identifierCopy];
          if (v12)
          {
            v5 = v12;
            goto LABEL_12;
          }
        }

        v9 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
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

- (id)descendentViewWithRefId:(id)id
{
  idCopy = id;
  v18.receiver = self;
  v18.super_class = TUIContainerView;
  v5 = [(TUIReusableBaseView *)&v18 descendentViewWithRefId:idCopy];
  if (!v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    tui_hostedSubviewsMap = [(TUIContainerView *)self tui_hostedSubviewsMap];
    allValues = [tui_hostedSubviewsMap allValues];

    v8 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) descendentViewWithRefId:idCopy];
          if (v12)
          {
            v5 = v12;
            goto LABEL_12;
          }
        }

        v9 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
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

- (void)appendRenderOverrideObservers:(id)observers
{
  observersCopy = observers;
  [observersCopy addObject:self];
  tui_hostedSubviewsMap = [(TUIContainerView *)self tui_hostedSubviewsMap];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_48A1C;
  v7[3] = &unk_25F068;
  v8 = observersCopy;
  v6 = observersCopy;
  [tui_hostedSubviewsMap enumerateKeysAndObjectsUsingBlock:v7];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  contentView = self->_contentView;
  eventCopy = event;
  [(TUIContainerView *)selfCopy convertPoint:contentView toView:x, y];
  LOBYTE(selfCopy) = [(UIView *)contentView pointInside:eventCopy withEvent:?];

  return selfCopy;
}

- (TUIViewFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

@end