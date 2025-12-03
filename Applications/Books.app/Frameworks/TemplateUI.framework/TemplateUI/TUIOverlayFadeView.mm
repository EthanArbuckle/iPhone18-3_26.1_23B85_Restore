@interface TUIOverlayFadeView
+ (id)renderModelWithIdentifier:(id)identifier size:(CGSize)size content:(id)content contentOrigin:(CGPoint)origin contentErasableInsets:(UIEdgeInsets)insets overlay:(id)overlay overlayOrigin:(CGPoint)overlayOrigin padding:(double)self0 gradientWidth:(double)self1 layoutDirection:(unint64_t)self2;
- (TUIViewFactory)factory;
- (void)_updateGeometry;
- (void)_updateSubviews;
- (void)applyLayoutAttributes:(id)attributes;
- (void)configureWithModel:(id)model;
- (void)layoutSubviews;
- (void)viewDidEndDisplay;
@end

@implementation TUIOverlayFadeView

+ (id)renderModelWithIdentifier:(id)identifier size:(CGSize)size content:(id)content contentOrigin:(CGPoint)origin contentErasableInsets:(UIEdgeInsets)insets overlay:(id)overlay overlayOrigin:(CGPoint)overlayOrigin padding:(double)self0 gradientWidth:(double)self1 layoutDirection:(unint64_t)self2
{
  x = overlayOrigin.x;
  bottom = insets.bottom;
  right = insets.right;
  left = insets.left;
  top = insets.top;
  y = origin.y;
  v16 = origin.x;
  height = size.height;
  width = size.width;
  overlayCopy = overlay;
  contentCopy = content;
  identifierCopy = identifier;
  v24 = [[_TUIOverlayFadeRenderModel alloc] initWithIdentifier:identifierCopy size:contentCopy content:overlayCopy contentOrigin:*&x contentErasableInsets:width overlay:height overlayOrigin:v16 padding:y gradientWidth:top layoutDirection:left, bottom, right, *&padding, *&width, v29, v30];

  return v24;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = TUIOverlayFadeView;
  attributesCopy = attributes;
  [(TUIReusableBaseView *)&v6 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];

  [(TUIOverlayFadeView *)self configureWithModel:renderModel];
}

- (void)configureWithModel:(id)model
{
  modelCopy = model;
  if (self->_model == modelCopy)
  {
    if ((*&self->_flags & 2) == 0)
    {
      goto LABEL_6;
    }

    *&self->_flags |= 1u;
    v6 = modelCopy;
    [(TUIOverlayFadeView *)self setNeedsLayout];
  }

  else
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_model, model);
    [(TUIOverlayFadeView *)self _updateSubviews];
  }

  modelCopy = v6;
LABEL_6:
}

- (void)_updateGeometry
{
  [(_TUIOverlayFadeRenderModel *)self->_model size];
  v4 = v3;
  v72 = v3;
  [(_TUIOverlayFadeRenderModel *)self->_model padding];
  v6 = v5;
  [(_TUIOverlayFadeRenderModel *)self->_model gradientWidth];
  v79 = v7;
  content = [(_TUIOverlayFadeRenderModel *)self->_model content];
  [content size];
  v10 = v9;
  rect = v9;

  overlay = [(_TUIOverlayFadeRenderModel *)self->_model overlay];
  [overlay size];
  v13 = v12;

  [(_TUIOverlayFadeRenderModel *)self->_model contentErasableInsets];
  v15 = v14;
  v17 = v16;
  v81 = v18;
  v20 = v19;
  layoutDirection = [(_TUIOverlayFadeRenderModel *)self->_model layoutDirection];
  v68 = v6;
  v89 = v13;
  v88 = v6 + v10;
  IsLessThanOrAlmostEqualFloat = TUICGFloatIsLessThanOrAlmostEqualFloat(v6 + v10 + v13, v4);
  y = CGPointZero.y;
  [(_TUIOverlayFadeRenderModel *)self->_model size];
  v87 = v24;
  content2 = [(_TUIOverlayFadeRenderModel *)self->_model content];
  [content2 size];
  v27 = v26;
  v29 = v28;

  v30 = v17 + CGPointZero.x;
  v31 = y;
  v83 = v20;
  v84 = v17;
  v32 = v27 - (v17 + v20);
  v85 = v15;
  v82 = v15 + v81;
  v69 = v29;
  v70 = v10;
  v75 = v29 - v82;
  v77 = v15 + y;
  MinX = v72 - v10;
  v74 = y;
  if (!IsLessThanOrAlmostEqualFloat)
  {
    v71 = v32;
    v35 = 0.0;
    v34 = v79;
    v36 = v79;
    v37 = y;
    v38 = v87;
    if (layoutDirection == 2)
    {
      goto LABEL_5;
    }

    v52 = v30;
    v95.size.width = v13;
    v95.origin.x = v72 - v13;
    v88 = v72 - v13;
    v95.origin.y = v37;
    v95.size.height = v87;
    v51 = CGRectGetMinX(v95) - v79;
    v96.origin.x = v51;
    v96.origin.y = v37;
    v96.size.width = v79;
    v96.size.height = v87;
    rect = CGRectGetMaxX(v96);
    v32 = v71;
LABEL_12:
    v97.origin.x = v51;
    v97.origin.y = v37;
    v97.size.width = v34;
    v97.size.height = v38;
    MaxX = CGRectGetMaxX(v97);
    v98.origin.x = v52;
    v98.size.height = v29 - v82;
    v98.origin.y = v77;
    v98.size.width = v32;
    v53 = CGRectGetMaxX(v98);
    v99.origin.x = v51;
    v99.origin.y = v37;
    v99.size.width = v34;
    v99.size.height = v38;
    MinX = 0.0;
    v76 = v34;
    v78 = fmax(v53 - CGRectGetMaxX(v99), 0.0);
    v50 = 0.0;
    goto LABEL_14;
  }

  v34 = v79;
  if (layoutDirection != 2)
  {
    v52 = v30;
    v34 = 0.0;
    v38 = v87;
    v51 = v88;
    v37 = v31;
    goto LABEL_12;
  }

  v71 = v32;
  v35 = MinX - v68 - v13;
  v36 = 0.0;
  v37 = y;
  v38 = v87;
LABEL_5:
  v39 = MinX + v30;
  v88 = v35;
  v40 = v37;
  v41 = v13;
  v42 = v38;
  v43 = CGRectGetMaxX(*&v35);
  v44 = v43;
  if (!IsLessThanOrAlmostEqualFloat)
  {
    v45 = v37;
    v46 = v34;
    v47 = v38;
    rect = v72 - CGRectGetMinX(*&v43);
    v91.origin.x = v44;
    v91.origin.y = v37;
    v91.size.width = v34;
    v91.size.height = v38;
    MinX = CGRectGetMinX(v91);
  }

  v92.origin.x = v39;
  v92.origin.y = v77;
  v92.size.width = v71;
  v92.size.height = v75;
  MaxX = CGRectGetMinX(v92);
  v73 = v44;
  v93.origin.x = v44;
  v93.origin.y = v37;
  v48 = v36;
  v93.size.width = v36;
  v93.size.height = v38;
  v49 = CGRectGetMinX(v93);
  v94.origin.x = v39;
  v94.origin.y = v77;
  v94.size.width = v71;
  v94.size.height = v75;
  v50 = 0.0;
  v78 = fmax(v49 - CGRectGetMinX(v94), 0.0);
  if (IsLessThanOrAlmostEqualFloat)
  {
    v76 = 0.0;
  }

  else
  {
    v100.size.height = v69;
    v100.origin.x = MinX;
    v100.origin.y = v37;
    v100.size.width = rect;
    v50 = v70 - CGRectGetWidth(v100);
    v76 = v48;
  }

  v51 = v73;
LABEL_14:
  v54 = layoutDirection == 2;
  v55 = layoutDirection == 2;
  if (v54)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v84;
  }

  v57 = v54 || IsLessThanOrAlmostEqualFloat;
  if (IsLessThanOrAlmostEqualFloat)
  {
    v58 = v84;
  }

  else
  {
    v58 = v56;
  }

  if (v57)
  {
    v59 = v83;
  }

  else
  {
    v59 = 0.0;
  }

  [(_TUIOverlayFadeRenderModel *)self->_model contentOrigin];
  v61 = v60;
  content3 = [(_TUIOverlayFadeRenderModel *)self->_model content];
  [content3 size];
  v64 = v63;

  v65 = v85 + v61;
  v66 = v64 - v82;
  [(UIView *)self->_content setFrame:v58 + MinX, v65, rect - (v58 + v59), v66];
  [(UIView *)self->_content setBounds:v58 + v50, v85, rect - (v58 + v59), v66];
  [(TUIOverlayFadeView *)self convertRect:self->_content toView:v51, v65, v76, v66];
  [(_TUIOverlayFadeGradientView *)self->_gradient setFrame:?];
  [(TUIOverlayFadeView *)self convertRect:self->_content toView:MaxX, v65, v78, v66];
  [(UIView *)self->_gradientOverflow setFrame:?];
  [(UIView *)self->_overlay setFrame:v88, v74, v89, v87];
  gradient = self->_gradient;

  [(_TUIOverlayFadeGradientView *)gradient configureGradientWithAxis:1 leading:v55];
}

- (void)_updateSubviews
{
  if (!self->_content && !self->_overlay)
  {
    v3 = objc_alloc_init(UIView);
    content = self->_content;
    self->_content = v3;

    [(UIView *)self->_content setClipsToBounds:1];
    v5 = objc_alloc_init(UIView);
    overlay = self->_overlay;
    self->_overlay = v5;

    v7 = objc_alloc_init(_TUIOverlayFadeGradientView);
    gradient = self->_gradient;
    self->_gradient = v7;

    v9 = objc_alloc_init(UIView);
    gradientOverflow = self->_gradientOverflow;
    self->_gradientOverflow = v9;

    v11 = +[UIColor blackColor];
    [(UIView *)self->_gradientOverflow setBackgroundColor:v11];

    v12 = kCAFilterDestOut;
    layer = [(UIView *)self->_gradientOverflow layer];
    [layer setCompositingFilter:v12];

    layer2 = [(_TUIOverlayFadeGradientView *)self->_gradient layer];
    [layer2 setZPosition:10000.0];

    layer3 = [(_TUIOverlayFadeGradientView *)self->_gradient layer];
    [layer3 setZPosition:10000.0];

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_B7C3C;
    v37[3] = &unk_25DE30;
    v37[4] = self;
    [UIView performWithoutAnimation:v37];
  }

  v36 = 0;
  if (self->_model && (v16 = objc_loadWeakRetained(&self->_factory), v16, v16))
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

    content = [(_TUIOverlayFadeRenderModel *)self->_model content];
    WeakRetained = objc_loadWeakRetained(&self->_factory);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v32 = [content configureSubviewsWithFactory:WeakRetained outsets:self->_content host:renderOverrides overrides:&v36 usedOverrides:tui_querySectionUUID UUID:tui_querySectionUID uid:{UIEdgeInsetsZero.top, left, bottom, right}];

    overlay = [(_TUIOverlayFadeRenderModel *)self->_model overlay];
    v34 = objc_loadWeakRetained(&self->_factory);
    v35 = [overlay configureSubviewsWithFactory:v34 outsets:self->_overlay host:renderOverrides overrides:&v36 usedOverrides:tui_querySectionUUID UUID:tui_querySectionUID uid:{UIEdgeInsetsZero.top, left, bottom, right}];

    [(TUIOverlayFadeView *)self _updateGeometry];
    v26 = 2 * v36;
  }

  else
  {
    v22 = objc_loadWeakRetained(&self->_factory);
    subviewPool = [v22 subviewPool];
    [subviewPool prepareToReuseHost:self->_content];

    v24 = objc_loadWeakRetained(&self->_factory);
    subviewPool2 = [v24 subviewPool];
    [subviewPool2 prepareToReuseHost:self->_overlay];

    v26 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v26;
}

- (void)viewDidEndDisplay
{
  v8.receiver = self;
  v8.super_class = TUIOverlayFadeView;
  [(TUIReusableBaseView *)&v8 viewDidEndDisplay];
  model = self->_model;
  self->_model = 0;

  WeakRetained = objc_loadWeakRetained(&self->_factory);
  subviewPool = [WeakRetained subviewPool];
  [subviewPool prepareToReuseHost:self->_content];

  v6 = objc_loadWeakRetained(&self->_factory);
  subviewPool2 = [v6 subviewPool];
  [subviewPool2 prepareToReuseHost:self->_overlay];
}

- (void)layoutSubviews
{
  if (*&self->_flags)
  {
    *&self->_flags &= ~1u;
    [(TUIOverlayFadeView *)self _updateSubviews];
  }

  v3.receiver = self;
  v3.super_class = TUIOverlayFadeView;
  [(TUIOverlayFadeView *)&v3 layoutSubviews];
}

- (TUIViewFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

@end