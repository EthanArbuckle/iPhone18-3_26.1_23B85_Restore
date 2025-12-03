@interface MKStandardCalloutView
- (CGPoint)_originForScale:(double)scale;
- (CGPoint)anchorPoint;
- (CGPoint)offset;
- (MKStandardCalloutView)initWithAnnotationView:(id)view;
- (int64_t)_calculateAnchorPosition:(CGPoint *)position visibleRect:(CGRect *)rect;
- (void)_adaptToUserInterfaceStyle;
- (void)_addAccessoryTargetForView:(id)view;
- (void)_calculateActualAnchorPoint:(CGPoint *)point frame:(CGRect *)frame forDesiredAnchorPoint:(CGPoint)anchorPoint boundaryRect:(CGRect)rect;
- (void)_calloutAccessoryControlTapped:(id)tapped;
- (void)_frameDidChange;
- (void)_layoutSubviews:(BOOL)subviews;
- (void)_markDidMoveCalled;
- (void)_removeAccessoryTargetForView:(id)view;
- (void)_runBounceAnimationWithCompletionBlock:(id)block;
- (void)_setNeedsCalloutUpdate;
- (void)_setOriginForScale:(double)scale;
- (void)_showFromAnchorPoint:(CGPoint)point boundaryRect:(CGRect)rect animate:(BOOL)animate completionBlock:(id)block;
- (void)_startObservingAnnotationView:(id)view;
- (void)_stopObservingAnnotationView:(id)view;
- (void)_updateCalloutAnimated:(BOOL)animated;
- (void)animationDidStop:(id)stop finished:(id)finished context:(void *)context;
- (void)annotationViewFrameDidChange;
- (void)completeBounceAnimation;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)dismissAnimated:(BOOL)animated completionBlock:(id)block;
- (void)forceAnchorPosition:(int64_t)position;
- (void)motionEffectDidUpdate:(id)update;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setDetailView:(id)view animated:(BOOL)animated;
- (void)setFrame:(CGRect)frame;
- (void)setLeftView:(id)view backgroundColor:(id)color animated:(BOOL)animated;
- (void)setRightView:(id)view animated:(BOOL)animated;
- (void)showAnimated:(BOOL)animated completionBlock:(id)block;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)updateConstraints;
@end

@implementation MKStandardCalloutView

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(MKStandardCalloutView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [collectionCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(MKStandardCalloutView *)self _adaptToUserInterfaceStyle];
  }
}

- (void)_adaptToUserInterfaceStyle
{
  style = self->_style;
  if (style == 2)
  {
    v9 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    [(UIVisualEffectView *)self->_backdropView setEffect:v9];

    [(UIVisualEffectView *)self->_backdropView setBackgroundColor:0];
    traitCollection = [(MKStandardCalloutView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    layer = [(MKStandardCalloutView *)self layer];
    v12 = layer;
    if (userInterfaceStyle == 2)
    {
      LODWORD(v8) = 1050253722;
    }

    else
    {
      LODWORD(v8) = 1041865114;
    }
  }

  else
  {
    if (style)
    {
      return;
    }

    v4 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    [(UIVisualEffectView *)self->_backdropView setEffect:v4];

    [(UIVisualEffectView *)self->_backdropView setBackgroundColor:0];
    traitCollection2 = [(MKStandardCalloutView *)self traitCollection];
    userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

    layer = [(MKStandardCalloutView *)self layer];
    v12 = layer;
    if (userInterfaceStyle2 == 2)
    {
      LODWORD(v8) = 1051931443;
    }

    else
    {
      LODWORD(v8) = 1036831949;
    }
  }

  [layer setShadowOpacity:v8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = *MEMORY[0x1E696A500];
  v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];
  v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (v14 != v15)
  {
    if (([pathCopy isEqualToString:@"annotation.title"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"annotation.subtitle") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"detailCalloutAccessoryView") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"calloutOffset"))
    {
      [(MKStandardCalloutView *)self _setNeedsCalloutUpdate];
    }

    else if (([pathCopy isEqualToString:@"leftCalloutAccessoryView"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"rightCalloutAccessoryView"))
    {
      v16 = [changeCopy objectForKey:v13];
      [(MKStandardCalloutView *)self _removeAccessoryTargetForView:v16];
      [(MKStandardCalloutView *)self _setNeedsCalloutUpdate];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = MKStandardCalloutView;
      [(MKStandardCalloutView *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    }
  }
}

- (void)_stopObservingAnnotationView:(id)view
{
  if ((*&self->_flags & 0x10) != 0)
  {
    viewCopy = view;
    [viewCopy removeObserver:self forKeyPath:@"annotation.title"];
    [viewCopy removeObserver:self forKeyPath:@"annotation.subtitle"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"MKAnnotationCalloutInfoDidChangeNotification" object:0];

    [viewCopy removeObserver:self forKeyPath:@"leftCalloutAccessoryView"];
    [viewCopy removeObserver:self forKeyPath:@"rightCalloutAccessoryView"];
    [viewCopy removeObserver:self forKeyPath:@"detailCalloutAccessoryView"];
    [viewCopy removeObserver:self forKeyPath:@"calloutOffset"];

    *&self->_flags &= ~0x10u;
  }
}

- (void)_startObservingAnnotationView:(id)view
{
  if ((*&self->_flags & 0x10) == 0)
  {
    viewCopy = view;
    [viewCopy addObserver:self forKeyPath:@"annotation.title" options:3 context:0];
    [viewCopy addObserver:self forKeyPath:@"annotation.subtitle" options:3 context:0];
    [viewCopy addObserver:self forKeyPath:@"leftCalloutAccessoryView" options:3 context:0];
    [viewCopy addObserver:self forKeyPath:@"rightCalloutAccessoryView" options:3 context:0];
    [viewCopy addObserver:self forKeyPath:@"detailCalloutAccessoryView" options:3 context:0];
    [viewCopy addObserver:self forKeyPath:@"calloutOffset" options:0 context:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    annotation = [viewCopy annotation];

    [defaultCenter addObserver:self selector:sel__updateCallout name:@"MKAnnotationCalloutInfoDidChangeNotification" object:annotation];
    *&self->_flags |= 0x10u;
  }
}

- (void)_setNeedsCalloutUpdate
{
  flags = self->_flags;
  if ((*&flags & 8) == 0)
  {
    self->_flags = (*&flags | 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__MKStandardCalloutView__setNeedsCalloutUpdate__block_invoke;
    block[3] = &unk_1E76CDB38;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

_BYTE *__47__MKStandardCalloutView__setNeedsCalloutUpdate__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[544] & 8) != 0)
  {
    return [result _updateCalloutAnimated:1];
  }

  return result;
}

- (void)_updateCalloutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  annotationView = [(MKCalloutView *)self annotationView];
  *&self->_flags &= ~8u;
  v17 = annotationView;
  if (animatedCopy)
  {
    [(UIView *)self _mapkit_layoutBelowIfNeeded];
    annotationView = v17;
  }

  annotation = [annotationView annotation];
  hideTitle = [(MKStandardCalloutView *)self hideTitle];
  if ([(MKStandardCalloutView *)self hideTitle])
  {
    v8 = !hideTitle;
    [(MKStandardCalloutView *)self setTitle:0];
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && ([annotation title], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
  {
    title = [annotation title];
    [(MKStandardCalloutView *)self setTitle:title];

    v8 = 1;
  }

  else
  {
    [(MKStandardCalloutView *)self setTitle:0];
    v8 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    subtitle = [annotation subtitle];
  }

  else
  {
    subtitle = 0;
  }

  leftCalloutAccessoryView = [v17 leftCalloutAccessoryView];
  rightCalloutAccessoryView = [v17 rightCalloutAccessoryView];
  [(MKStandardCalloutView *)self setLeftView:leftCalloutAccessoryView backgroundColor:0 animated:animatedCopy];
  [(MKStandardCalloutView *)self setRightView:rightCalloutAccessoryView animated:animatedCopy];
  detailCalloutAccessoryView = [v17 detailCalloutAccessoryView];

  if (detailCalloutAccessoryView)
  {
    detailCalloutAccessoryView2 = [v17 detailCalloutAccessoryView];
    [(MKStandardCalloutView *)self setDetailView:detailCalloutAccessoryView2 animated:animatedCopy];
  }

  else if (v8)
  {
    [(MKStandardCalloutView *)self setDetailView:0 animated:animatedCopy];
    [(MKStandardCalloutView *)self setSubtitle:subtitle animated:animatedCopy];
  }

  [(MKStandardCalloutView *)self _addAccessoryTargetForView:leftCalloutAccessoryView];
  [(MKStandardCalloutView *)self _addAccessoryTargetForView:rightCalloutAccessoryView];
  if (animatedCopy)
  {
    [(MKStandardCalloutView *)self _layoutSubviews:1];
  }
}

- (void)_removeAccessoryTargetForView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy removeTarget:self action:sel__calloutAccessoryControlTapped_ forControlEvents:64];
  }
}

- (void)_addAccessoryTargetForView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy addTarget:self action:sel__calloutAccessoryControlTapped_ forControlEvents:64];
  }
}

- (void)_calloutAccessoryControlTapped:(id)tapped
{
  tappedCopy = tapped;
  annotationView = [(MKCalloutView *)self annotationView];
  _mapView = [annotationView _mapView];
  _containerView = [annotationView _containerView];
  [_mapView annotationContainer:_containerView annotationView:annotationView calloutAccessoryControlTapped:tappedCopy];
}

- (void)dismissAnimated:(BOOL)animated completionBlock:(id)block
{
  blockCopy = block;
  annotationView = [(MKCalloutView *)self annotationView];
  [(MKStandardCalloutView *)self _stopObservingAnnotationView:annotationView];
  self->_dismissed = 1;
  if (animated)
  {
    v8 = MEMORY[0x1E69DD250];
    UIAnimationDragCoefficient();
    v10 = (v9 * 0.1);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__MKStandardCalloutView_dismissAnimated_completionBlock___block_invoke;
    v18[3] = &unk_1E76CDB38;
    v18[4] = self;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __57__MKStandardCalloutView_dismissAnimated_completionBlock___block_invoke_2;
    v16 = &unk_1E76C9DD8;
    v17 = blockCopy;
    [v8 _mapkit_animateWithDuration:v18 animations:&v13 completion:v10];

    if (!annotationView)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(MKStandardCalloutView *)self setAlpha:0.0];
  blockCopy[2](blockCopy);
  if (annotationView)
  {
LABEL_5:
    leftCalloutAccessoryView = [annotationView leftCalloutAccessoryView];
    [(MKStandardCalloutView *)self _removeAccessoryTargetForView:leftCalloutAccessoryView];

    rightCalloutAccessoryView = [annotationView rightCalloutAccessoryView];
    [(MKStandardCalloutView *)self _removeAccessoryTargetForView:rightCalloutAccessoryView];
  }

LABEL_6:
}

- (void)showAnimated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  annotationView = [(MKCalloutView *)self annotationView];
  self->_dismissed = 0;
  self->_animatingMapToShow = 0;
  [(MKStandardCalloutView *)self _updateCalloutAnimated:0];
  v8 = MEMORY[0x1E695EFF8];
  v78 = *MEMORY[0x1E695EFF8];
  v66 = *(MEMORY[0x1E695F058] + 16);
  v77.origin = *MEMORY[0x1E695F058];
  origin = v77.origin;
  v77.size = v66;
  v9 = [(MKStandardCalloutView *)self _calculateAnchorPosition:&v78 visibleRect:&v77];
  [(MKStandardCalloutView *)self forceAnchorPosition:v9];
  [(MKStandardCalloutView *)self updateConstraints];
  v10 = *v8;
  v75.origin = origin;
  v75.size = v66;
  v76 = v10;
  [(MKStandardCalloutView *)self _calculateActualAnchorPoint:&v76 frame:&v75 forDesiredAnchorPoint:*&v78 boundaryRect:*&v77.origin, *&v77.size];
  v83 = CGRectOffset(v75, v78.f64[0] - *&v76, v78.f64[1] - *(&v76 + 1));
  v79 = CGRectUnion(v77, v83);
  CGRectIntegral(v79);
  [annotationView frame];
  if (!animatedCopy)
  {
    v78 = vrndaq_f64(v78);
    selfCopy2 = self;
    v29 = 0;
    v30 = blockCopy;
    goto LABEL_26;
  }

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = *v8;
  v69 = v8[1];
  v20 = v78.f64[1];
  v21 = v78.f64[0];
  if ((v9 - 3) < 2)
  {
    v67 = *v8;
    p_metrics = &self->_metrics;
    margin = self->_metrics.margin;
    arrowHeight = self->_metrics.arrowHeight;
    v65 = margin + arrowHeight + CGRectGetHeight(v75) * 0.5;
    v81.origin.x = v15;
    v81.origin.y = v16;
    v81.size.width = v17;
    v81.size.height = v18;
    Height = CGRectGetHeight(v81);
    if (Height <= CGRectGetHeight(v75) * 0.5)
    {
      v27 = CGRectGetHeight(v75) * 0.5;
    }

    else
    {
      v82.origin.x = v15;
      v82.origin.y = v16;
      v82.size.width = v17;
      v82.size.height = v18;
      v27 = CGRectGetHeight(v82);
    }

    v26 = v65;
  }

  else
  {
    if ((v9 - 1) > 1)
    {
      v34 = v78.f64[1];
      v33 = v78.f64[0];
      goto LABEL_11;
    }

    v67 = *v8;
    p_metrics = &self->_metrics;
    v23 = self->_metrics.arrowHeight;
    margin = self->_metrics.margin + (self->_metrics.arrowBase + -1.0) * 0.5 + 8.0;
    v25 = v23 + CGRectGetHeight(*&v11);
    v26 = v25 + CGRectGetHeight(v75) + self->_metrics.margin;
    v80.origin.x = v15;
    v80.origin.y = v16;
    v80.size.width = v17;
    v80.size.height = v18;
    v27 = CGRectGetHeight(v80);
  }

  v33 = v21 - margin;
  v21 = v21 + margin;
  v34 = v20 + v27 + p_metrics->margin;
  v20 = v20 - v26;
  v19 = v67;
LABEL_11:
  if (v9 == 4)
  {
    v33 = v33 - CGRectGetWidth(v75);
  }

  else if (v9 == 3)
  {
    v21 = v21 + CGRectGetWidth(v75);
  }

  MinY = CGRectGetMinY(v77);
  v36 = v77;
  if (v20 >= MinY)
  {
    v37 = v69;
    if (v34 > CGRectGetMaxY(v36))
    {
      v37 = CGRectGetMaxY(v77) - v34;
    }
  }

  else
  {
    v37 = CGRectGetMinY(v36) - v20;
  }

  MaxX = CGRectGetMaxX(v77);
  v39 = v77;
  if (v21 <= MaxX)
  {
    v40 = v19;
    if (v33 < CGRectGetMinX(v39))
    {
      v40 = CGRectGetMinX(v77) - v33;
    }
  }

  else
  {
    v40 = CGRectGetMaxX(v39) - v21;
  }

  annotationView2 = [(MKCalloutView *)self annotationView];
  annotationView3 = [(MKCalloutView *)self annotationView];
  superview = [annotationView3 superview];
  [annotationView2 convertPoint:superview toView:{v19, v69}];
  v45 = v44;
  v47 = v46;

  annotationView4 = [(MKCalloutView *)self annotationView];
  annotationView5 = [(MKCalloutView *)self annotationView];
  superview2 = [annotationView5 superview];
  [annotationView4 convertPoint:superview2 toView:{v40, v37}];
  v52 = v51;
  v54 = v53;

  v78 = vrndaq_f64(v78);
  if (vabdd_f64(v45, v52) >= 1.0 || vabdd_f64(v47, v54) >= 1.0)
  {
    self->_animatingMapToShow = 1;
    _mapView = [annotationView _mapView];
    _containerView = [annotationView _containerView];
    v57 = round(v45 - v52);
    v58 = round(v47 - v54);
    annotationView6 = [(MKCalloutView *)self annotationView];
    annotation = [annotationView6 annotation];
    [annotation coordinate];
    v62 = v61;
    v64 = v63;
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __54__MKStandardCalloutView_showAnimated_completionBlock___block_invoke;
    v70[3] = &unk_1E76C6D48;
    v70[4] = self;
    v71 = annotationView;
    v73 = v78;
    v74 = animatedCopy;
    v72 = blockCopy;
    [_mapView annotationContainer:_containerView scrollToRevealCalloutWithOffset:v70 annotationCoordinate:v57 completionHandler:{v58, v62, v64}];

    goto LABEL_28;
  }

  selfCopy2 = self;
  v30 = blockCopy;
  v29 = 1;
LABEL_26:
  [MKStandardCalloutView _showFromAnchorPoint:selfCopy2 boundaryRect:"_showFromAnchorPoint:boundaryRect:animate:completionBlock:" animate:v29 completionBlock:v30];
LABEL_28:
  [(MKStandardCalloutView *)self _startObservingAnnotationView:annotationView];
}

void __54__MKStandardCalloutView_showAnimated_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) annotationView];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 549);

    if ((v3 & 1) == 0)
    {
      *(*(a1 + 32) + 548) = 0;
      v4 = [*(a1 + 40) _containerView];
      [v4 _visibleCenteringRectInView:*(a1 + 40)];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v13 = *(a1 + 32);
      v14 = *(a1 + 72);
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = *(a1 + 64);

      [v13 _showFromAnchorPoint:v14 boundaryRect:v15 animate:v16 completionBlock:{v17, v6, v8, v10, v12}];
    }
  }
}

- (int64_t)_calculateAnchorPosition:(CGPoint *)position visibleRect:(CGRect *)rect
{
  annotationView = [(MKCalloutView *)self annotationView];
  _containerView = [annotationView _containerView];
  [_containerView _visibleCenteringRectInView:annotationView];
  v89 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  _allowedCalloutEdges = [annotationView _allowedCalloutEdges];
  _allowedCalloutEdges2 = [annotationView _allowedCalloutEdges];
  v17 = _allowedCalloutEdges2 & 2 | (_allowedCalloutEdges & 1);
  _allowedCalloutEdges3 = [annotationView _allowedCalloutEdges];
  v19 = _allowedCalloutEdges3;
  v20 = (_allowedCalloutEdges3 >> 3) & 1;
  _allowedCalloutEdges4 = [annotationView _allowedCalloutEdges];
  if (!v17 && (v20 & 1) == 0)
  {
    if ((_allowedCalloutEdges4 & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    v67 = annotationView;
    [v67 bounds];
    y = v97.origin.y;
    MidX = CGRectGetMidX(v97);
    [v67 calloutOffset];
    v71 = v70;
    v73 = v72;

    v63 = MidX + v71;
    v64 = y + v73;
    [v67 frame];
    v45 = v14 - CGRectGetHeight(v98);
    v66 = 2;
    if (!position)
    {
      goto LABEL_19;
    }

LABEL_18:
    position->x = v63;
    position->y = v64;
    goto LABEL_19;
  }

  if (((v17 != 0) & _allowedCalloutEdges) == 1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v22 = annotationView;
  [v22 bounds];
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  if ((v20 | (_allowedCalloutEdges2 >> 1)))
  {
    MinX = CGRectGetMinX(*&v23);
    v90.origin.x = v27;
    v90.origin.y = v28;
    v90.size.width = v29;
    v90.size.height = v30;
    [v22 leftCalloutOffset];
    v33 = v32;

    v88 = v14;
    v34 = v12;
    v35 = MinX + v33;
    v36 = v22;
    [v36 bounds];
    x = v91.origin.x;
    v38 = v91.origin.y;
    width = v91.size.width;
    height = v91.size.height;
    MaxX = CGRectGetMaxX(v91);
    v92.origin.x = x;
    v92.origin.y = v38;
    v92.size.width = width;
    v92.size.height = height;
    [v36 rightCalloutOffset];
    v43 = v42;

    v93.size.height = v88;
    v93.origin.x = v89;
    v93.origin.y = v10;
    v93.size.width = v34;
    v44 = vabdd_f64(v35, CGRectGetMinX(v93));
    v94.origin.x = v89;
    v87 = v34;
    v94.origin.y = v10;
    v94.size.width = v34;
    v45 = v88;
    v94.size.height = v88;
    v46 = v44 > vabdd_f64(MaxX + v43, CGRectGetMaxX(v94));
    v47 = (v19 & 8) == 0 || v46;
    v48 = v36;
    [v48 bounds];
    v53 = v49;
    v54 = v50;
    v55 = v51;
    v56 = v52;
    if ((_allowedCalloutEdges2 & 2) != 0 && v47)
    {
      v57 = CGRectGetMinX(*&v49);
      v95.origin.x = v53;
      v95.origin.y = v54;
      v95.size.width = v55;
      v95.size.height = v56;
      MidY = CGRectGetMidY(v95);
      [v48 leftCalloutOffset];
      v60 = v59;
      v62 = v61;

      v63 = v57 + v60;
      v64 = MidY + v62;
      [v48 frame];
      v65 = CGRectGetWidth(v96);
      v66 = 4;
    }

    else
    {
      v80 = CGRectGetMaxX(*&v49);
      v102.origin.x = v53;
      v102.origin.y = v54;
      v102.size.width = v55;
      v102.size.height = v56;
      v81 = CGRectGetMidY(v102);
      [v48 rightCalloutOffset];
      v83 = v82;
      v85 = v84;

      v63 = v80 + v83;
      v64 = v81 + v85;
      [v48 frame];
      v65 = CGRectGetWidth(v103);
      [v48 frame];
      v89 = v89 + CGRectGetWidth(v104);
      v66 = 3;
    }

    v12 = v87 - v65;
    if (!position)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v74 = CGRectGetMidX(*&v23);
  v99.origin.x = v27;
  v99.origin.y = v28;
  v99.size.width = v29;
  v99.size.height = v30;
  MaxY = CGRectGetMaxY(v99);
  [v22 _bottomCalloutOffset];
  v77 = v76;
  v79 = v78;

  v63 = v74 + v77;
  v64 = MaxY + v79;
  [v22 frame];
  v10 = v10 + CGRectGetHeight(v100);
  [v22 frame];
  v45 = v14 - CGRectGetHeight(v101);
  v66 = 1;
  if (position)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (rect)
  {
    rect->origin.x = v89;
    rect->origin.y = v10;
    rect->size.width = v12;
    rect->size.height = v45;
  }

  return v66;
}

- (void)motionEffectDidUpdate:(id)update
{
  updateCopy = update;
  [(MKSmallCalloutView *)self->_calloutView bounds];
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 / 1920.0;
  v9 = v8 <= 0.0;
  v10 = 1.0;
  v11 = v8 < 1.0 || v8 <= 0.0;
  if (v8 >= 1.0)
  {
    v9 = 1;
  }

  if (v11)
  {
    v10 = 0.0;
  }

  if (v9)
  {
    v8 = v10;
  }

  v12 = fmin(fmax(v8 * -0.25 + 0.119999997, 0.0250000004), 1.20000005);
  v13 = fmin(fmax(v8 * 30.0 + 6.0, 0.0), 10.0);
  if (updateCopy)
  {
    [updateCopy transformWithTranslationScale:v13 rotationScale:{v13, v12, v12}];
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
  }

  layer = [(UIView *)self->_contentView layer];
  v39 = v47;
  v40 = v48;
  v41 = v49;
  v42 = v50;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  [layer setTransform:&v35];

  if (updateCopy)
  {
    [updateCopy transformWithTranslationScale:v13 / -3.0 rotationScale:{v13 / -3.0, v12 / -3.0, v12 / -3.0}];
  }

  else
  {
    v31 = 0u;
    v33 = 0u;
    v27 = 0u;
    v29 = 0u;
    v23 = 0u;
    v25 = 0u;
    v19 = 0u;
    v21 = 0u;
  }

  v15 = [(MKSmallCalloutView *)self->_calloutView titlesContainerView:v19];
  layer2 = [v15 layer];
  v39 = v28;
  v40 = v30;
  v41 = v32;
  v42 = v34;
  v35 = v20;
  v36 = v22;
  v37 = v24;
  v38 = v26;
  [layer2 setTransform:&v35];

  [updateCopy offsetWithScale:{v13, 0.0}];
  v18 = v17;
  [(_MKCalloutLayer *)self->_maskLayer setArrowOffset:?];
  [(_MKCalloutLayer *)self->_contentStrokeLayer setArrowOffset:v18];
}

- (void)completeBounceAnimation
{
  p_frame = &self->_frame;
  if (!CGRectIsEmpty(self->_frame))
  {
    layer = [(MKStandardCalloutView *)self layer];
    [layer removeAllAnimations];

    layer2 = [(MKStandardCalloutView *)self layer];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    v7[0] = *MEMORY[0x1E695EFD0];
    v7[1] = v6;
    v7[2] = *(MEMORY[0x1E695EFD0] + 32);
    [layer2 setAffineTransform:v7];

    [(MKStandardCalloutView *)self setFrame:p_frame->origin.x, p_frame->origin.y, p_frame->size.width, p_frame->size.height];
    if ((*&self->_flags & 2) == 0)
    {
      [(MKStandardCalloutView *)self _markDidMoveCalled];
    }
  }
}

- (void)_markDidMoveCalled
{
  flags = self->_flags;
  if ((*&flags & 2) == 0)
  {
    self->_flags = (*&flags | 2);
    if ((*&flags & 4) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF9 | 2);
      [(MKStandardCalloutView *)self _layoutSubviews:1];
    }
  }
}

- (void)animationDidStop:(id)stop finished:(id)finished context:(void *)context
{
  if ([finished BOOLValue])
  {
    if (stop != @"MKCalloutViewBubbleAnimation")
    {
      return;
    }

    layer = [(MKStandardCalloutView *)self layer];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    v13 = *MEMORY[0x1E695EFD0];
    v14 = v8;
    v15 = *(MEMORY[0x1E695EFD0] + 32);
    [layer setAffineTransform:&v13];
  }

  else
  {
    [(MKStandardCalloutView *)self setAlpha:1.0];
    if (stop != @"MKCalloutViewBubbleAnimation")
    {
      return;
    }

    layer = [(MKStandardCalloutView *)self layer];
    v9 = *(MEMORY[0x1E69792E8] + 80);
    v17 = *(MEMORY[0x1E69792E8] + 64);
    v18 = v9;
    v10 = *(MEMORY[0x1E69792E8] + 112);
    v19 = *(MEMORY[0x1E69792E8] + 96);
    v20 = v10;
    v11 = *(MEMORY[0x1E69792E8] + 16);
    v13 = *MEMORY[0x1E69792E8];
    v14 = v11;
    v12 = *(MEMORY[0x1E69792E8] + 48);
    v15 = *(MEMORY[0x1E69792E8] + 32);
    v16 = v12;
    [layer setTransform:&v13];
  }

  [(MKStandardCalloutView *)self setFrame:self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height];
  if ((*&self->_flags & 2) == 0)
  {
    [(MKStandardCalloutView *)self _markDidMoveCalled];
  }
}

- (void)_showFromAnchorPoint:(CGPoint)point boundaryRect:(CGRect)rect animate:(BOOL)animate completionBlock:(id)block
{
  animateCopy = animate;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = point.y;
  v12 = point.x;
  blockCopy = block;
  [(MKStandardCalloutView *)self completeBounceAnimation];
  self->_anchor.desiredPoint.x = v12;
  self->_anchor.desiredPoint.y = v11;
  self->_anchor.desiredBounds.origin.x = x;
  self->_anchor.desiredBounds.origin.y = y;
  self->_anchor.desiredBounds.size.width = width;
  self->_anchor.desiredBounds.size.height = height;
  self->_flags = (*&self->_flags & 0xFFFFFFFC | animateCopy);
  annotationView = [(MKCalloutView *)self annotationView];
  [annotationView addSubview:self];

  [(MKStandardCalloutView *)self _layoutSubviews:0];
  [(UIView *)self->_calloutView _mapkit_layoutIfNeeded];
  [(UIView *)self _mapKit_setNeedsDisplay];
  [(MKStandardCalloutView *)self setAlpha:1.0];
  if (animateCopy)
  {
    [(UIView *)self _mapkit_layoutIfNeeded];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__MKStandardCalloutView__showFromAnchorPoint_boundaryRect_animate_completionBlock___block_invoke;
    v16[3] = &unk_1E76CD4D0;
    v17 = blockCopy;
    [(MKStandardCalloutView *)self _runBounceAnimationWithCompletionBlock:v16];
  }

  else if ((*&self->_flags & 2) == 0)
  {
    [(MKStandardCalloutView *)self _markDidMoveCalled];
    blockCopy[2](blockCopy);
  }
}

uint64_t __83__MKStandardCalloutView__showFromAnchorPoint_boundaryRect_animate_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)annotationViewFrameDidChange
{
  annotationView = [(MKCalloutView *)self annotationView];
  _shouldKeepCalloutVisible = [annotationView _shouldKeepCalloutVisible];

  if (_shouldKeepCalloutVisible)
  {
    if ((self->_anchor.position - 1) <= 1)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __53__MKStandardCalloutView_annotationViewFrameDidChange__block_invoke;
      v6[3] = &unk_1E76CDB38;
      v6[4] = self;
      [MEMORY[0x1E69DD250] _mapkit_performWithoutAnimation:v6];
      v5.receiver = self;
      v5.super_class = MKStandardCalloutView;
      [(MKCalloutView *)&v5 annotationViewFrameDidChange];
    }
  }
}

uint64_t __53__MKStandardCalloutView_annotationViewFrameDidChange__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695F058] + 16);
  v7 = *MEMORY[0x1E695F058];
  v8 = v3;
  v9 = v2;
  [*(a1 + 32) forceAnchorPosition:{objc_msgSend(*(a1 + 32), "_calculateAnchorPosition:visibleRect:", &v9, &v7)}];
  v9 = vrndaq_f64(v9);
  *(*(a1 + 32) + 464) = v9;
  v4 = *(a1 + 32) + 424;
  v5 = v7;
  *(v4 + 72) = v8;
  *(v4 + 56) = v5;
  [*(a1 + 32) _layoutSubviews:0];
  return [*(*(a1 + 32) + 584) _mapkit_layoutIfNeeded];
}

- (void)_runBounceAnimationWithCompletionBlock:(id)block
{
  v37[6] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  animation = [MEMORY[0x1E6979308] animation];
  [animation setRemovedOnCompletion:1];
  [animation setDuration:0.300000012];
  CATransform3DMakeScale(&v36, 0.120481931, 0.120481931, 1.0);
  CATransform3DMakeScale(&v35, 1.11244977, 1.11244977, 1.0);
  [(MKStandardCalloutView *)self _originForScale:0.120481931];
  v7 = v6;
  v9 = v8;
  [(MKStandardCalloutView *)self _originForScale:1.11244977];
  v11 = v10;
  v13 = v12;
  v34 = v36;
  v33 = v35;
  v14 = _transformAnim(&v34, &v33);
  v15 = _positionAnim(v7, v9, v11, v13);
  [v14 setDuration:0.13333334];
  [v15 setDuration:0.13333334];
  v36 = v35;
  CATransform3DMakeScale(&v34, 0.951807201, 0.951807201, 1.0);
  v35 = v34;
  [(MKStandardCalloutView *)self _originForScale:0.951807201];
  v17 = v16;
  v19 = v18;
  v34 = v36;
  v33 = v35;
  v20 = _transformAnim(&v34, &v33);
  v21 = _positionAnim(v11, v13, v17, v19);
  [v20 setBeginTime:0.13333334];
  [v21 setBeginTime:0.13333334];
  [v20 setDuration:0.0833333358];
  [v21 setDuration:0.0833333358];
  v36 = v35;
  CATransform3DMakeScale(&v34, 1.0, 1.0, 1.0);
  v35 = v34;
  [(MKStandardCalloutView *)self _originForScale:1.0];
  v23 = v22;
  v25 = v24;
  v34 = v36;
  v33 = v35;
  v26 = _transformAnim(&v34, &v33);
  v27 = _positionAnim(v17, v19, v23, v25);
  [v26 setBeginTime:0.216666676];
  [v27 setBeginTime:0.216666676];
  [v26 setDuration:0.0833333358];
  [v27 setDuration:0.0833333358];
  v37[0] = v14;
  v37[1] = v15;
  v37[2] = v20;
  v37[3] = v21;
  v37[4] = v26;
  v37[5] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:6];
  [animation setAnimations:v28];

  layer = [(MKStandardCalloutView *)self layer];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __64__MKStandardCalloutView__runBounceAnimationWithCompletionBlock___block_invoke;
  v31[3] = &unk_1E76C9B20;
  v31[4] = self;
  v32 = blockCopy;
  v30 = blockCopy;
  [layer _mapkit_addAnimation:animation forKey:@"MKCalloutViewBubbleAnimation" completion:v31];
}

uint64_t __64__MKStandardCalloutView__runBounceAnimationWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v3 animationDidStop:@"MKCalloutViewBubbleAnimation" finished:v4 context:0];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)_layoutSubviews:(BOOL)subviews
{
  subviewsCopy = subviews;
  flags = self->_flags;
  if ((*&flags & 2) != 0 || !subviews)
  {
    [(MKStandardCalloutView *)self updateConstraints];
    desiredPoint = self->_anchor.desiredPoint;
    [(MKStandardCalloutView *)self _calculateActualAnchorPoint:&desiredPoint frame:&self->_frame forDesiredAnchorPoint:self->_anchor.desiredPoint.x boundaryRect:self->_anchor.desiredPoint.y, self->_anchor.desiredBounds.origin.x, self->_anchor.desiredBounds.origin.y, self->_anchor.desiredBounds.size.width, self->_anchor.desiredBounds.size.height];
    x = desiredPoint.x;
    v7 = x - CGRectGetMinX(self->_frame);
    y = desiredPoint.y;
    MinY = CGRectGetMinY(self->_frame);
    self->_anchor.origin.x = v7;
    self->_anchor.origin.y = y - MinY;
    if (subviewsCopy)
    {
      v10 = MEMORY[0x1E69DD250];
      UIAnimationDragCoefficient();
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __41__MKStandardCalloutView__layoutSubviews___block_invoke;
      v12[3] = &unk_1E76CDB38;
      v12[4] = self;
      [v10 _mapkit_animateFromCurrentStateWithDuration:v12 animations:0 completion:v11 * 0.349999994];
    }

    else
    {
      [(MKStandardCalloutView *)self setFrame:self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height];
      [(UIView *)self _mapkit_layoutBelowIfNeeded];
    }
  }

  else
  {
    self->_flags = (*&flags | 4);
  }
}

uint64_t __41__MKStandardCalloutView__layoutSubviews___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(*(a1 + 32) + 512), *(*(a1 + 32) + 520), *(*(a1 + 32) + 528), *(*(a1 + 32) + 536)}];
  v2 = *(a1 + 32);

  return [v2 _mapkit_layoutBelowIfNeeded];
}

- (void)updateConstraints
{
  annotationView = [(MKCalloutView *)self annotationView];
  _containerView = [annotationView _containerView];
  [_containerView _visibleCenteringRectInView:annotationView];
  v6 = v5;

  v7 = v6 + self->_metrics.margin * -2.0;
  if (([(MKStandardCalloutView *)self anchorPosition]- 3) <= 1)
  {
    if (-[MKStandardCalloutView anchorPosition](self, "anchorPosition") == 4 && ([annotationView leftCalloutOffset], v8 < 0.0))
    {
      [annotationView leftCalloutOffset];
      v7 = v7 + v9;
    }

    else if ([(MKStandardCalloutView *)self anchorPosition]== 3)
    {
      [annotationView rightCalloutOffset];
      if (v10 > 0.0)
      {
        [annotationView rightCalloutOffset];
        v7 = v7 - v11;
      }
    }
  }

  v12 = fmin(v7, 390.0);
  [(MKSmallCalloutView *)self->_calloutView minimumWidth];
  if (v12 <= v13)
  {
    [(MKSmallCalloutView *)self->_calloutView minimumWidth];
    v12 = v14;
  }

  [(MKSmallCalloutView *)self->_calloutView setMaximumWidth:v12];
  v15.receiver = self;
  v15.super_class = MKStandardCalloutView;
  [(MKStandardCalloutView *)&v15 updateConstraints];
}

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = MKStandardCalloutView;
  [(MKStandardCalloutView *)&v14 didMoveToWindow];
  window = [(MKStandardCalloutView *)self window];
  screen = [window screen];

  if (screen)
  {
    window2 = [(MKStandardCalloutView *)self window];
    screen2 = [window2 screen];
    [screen2 scale];
    v8 = v7;
    layer = [(UIView *)self->_contentView layer];
    [layer setContentsScale:v8];

    window3 = [(MKStandardCalloutView *)self window];
    screen3 = [window3 screen];
    [screen3 scale];
    [(_MKCalloutLayer *)self->_maskLayer setContentsScale:?];

    window4 = [(MKStandardCalloutView *)self window];
    screen4 = [window4 screen];
    [screen4 scale];
    [(_MKCalloutLayer *)self->_contentStrokeLayer setContentsScale:?];
  }
}

- (void)forceAnchorPosition:(int64_t)position
{
  if (self->_anchor.position == position)
  {
    return;
  }

  v12 = v3;
  self->_anchor.position = position;
  arrowHeight = 0.0;
  if (position <= 2)
  {
    if (position == 1)
    {
      arrowHeight = self->_metrics.arrowHeight;
    }

    else if (position == 2)
    {
      v9 = self->_metrics.arrowHeight;
      v10 = 0.0;
LABEL_13:
      v11 = 0.0;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (position == 4)
  {
    v10 = self->_metrics.arrowHeight;
    goto LABEL_12;
  }

  if (position != 3)
  {
LABEL_10:
    v10 = 0.0;
LABEL_12:
    v9 = 0.0;
    goto LABEL_13;
  }

  v11 = self->_metrics.arrowHeight;
  v10 = 0.0;
  v9 = 0.0;
LABEL_14:
  [(MKSmallCalloutView *)self->_calloutView setLayoutMargins:arrowHeight, v11, v9, v10, v4, v12, v5];

  [(MKStandardCalloutView *)self _layoutSubviews:0];
}

- (void)_frameDidChange
{
  p_anchor = &self->_anchor;
  position = self->_anchor.position;
  if ((position - 1) < 2)
  {
    [(_MKCalloutLayer *)self->_maskLayer setArrowOffset:p_anchor->origin.x + self->_frame.size.width * -0.5];
    position = p_anchor->position;
  }

  [(_MKCalloutLayer *)self->_maskLayer setArrowPosition:position];
  [(_MKCalloutLayer *)self->_contentStrokeLayer setArrowPosition:p_anchor->position];
  [(_MKCalloutLayer *)self->_maskLayer arrowOffset];
  contentStrokeLayer = self->_contentStrokeLayer;

  [(_MKCalloutLayer *)contentStrokeLayer setArrowOffset:?];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MKStandardCalloutView *)self frame];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {
    [(MKStandardCalloutView *)self _frameDidChange];
    v8.receiver = self;
    v8.super_class = MKStandardCalloutView;
    [(MKStandardCalloutView *)&v8 setFrame:x, y, width, height];
  }
}

- (void)_setOriginForScale:(double)scale
{
  [(MKStandardCalloutView *)self _originForScale:scale];
  v5 = v4;
  v7 = v6;
  layer = [(MKStandardCalloutView *)self layer];
  [layer setPosition:{v5, v7}];
}

- (CGPoint)_originForScale:(double)scale
{
  p_frame = &self->_frame;
  MidX = CGRectGetMidX(self->_frame);
  MidY = CGRectGetMidY(*p_frame);
  v8 = MidX - CGRectGetMinX(*p_frame);
  v9 = MidY - CGRectGetMinY(*p_frame);
  v10 = round(MidX - (scale + -1.0) * (self->_anchor.origin.x - v8));
  v11 = round(MidY - (scale + -1.0) * (self->_anchor.origin.y - v9));
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_calculateActualAnchorPoint:(CGPoint *)point frame:(CGRect *)frame forDesiredAnchorPoint:(CGPoint)anchorPoint boundaryRect:(CGRect)rect
{
  rect_24 = rect.origin.y;
  height = rect.size.height;
  width = rect.size.width;
  rect_16 = rect.origin.x;
  y = anchorPoint.y;
  x = anchorPoint.x;
  [(MKStandardCalloutView *)self frame];
  v13 = v12;
  v15 = v14;
  *&v12 = x;
  v16 = roundf(*&v12);
  *&v12 = y;
  v50 = roundf(*&v12);
  [(MKSmallCalloutView *)self->_calloutView preferredContentSize];
  v19 = v17;
  v20 = v18;
  position = self->_anchor.position;
  if (position <= 2)
  {
    v22 = width;
    if (position == 1)
    {
      v15 = v50;
    }

    else if (position == 2)
    {
      v51.origin.x = v13;
      v51.origin.y = v15;
      v51.size.width = v19;
      v51.size.height = v20;
      v15 = v50 - CGRectGetHeight(v51);
    }

    goto LABEL_13;
  }

  if (position == 4)
  {
    v54.origin.x = v13;
    rect_8 = v18;
    v54.origin.y = v15;
    v54.size.width = v19;
    v54.size.height = v20;
    v13 = v16 - CGRectGetWidth(v54);
    v25 = v16 - v19 - self->_metrics.margin;
    v55.origin.x = rect_16;
    v55.origin.y = rect_24;
    v55.size.width = width;
    v55.size.height = height;
    if (v25 >= CGRectGetMinX(v55))
    {
      v27 = self->_metrics.margin + v16;
      v59.origin.x = rect_16;
      v59.origin.y = rect_24;
      v59.size.width = width;
      v59.size.height = height;
      if (v27 <= CGRectGetMaxX(v59))
      {
        v22 = width;
        v24 = v16;
      }

      else
      {
        v60.origin.x = rect_16;
        v60.origin.y = rect_24;
        v22 = width;
        v60.size.width = width;
        v60.size.height = height;
        v24 = CGRectGetMaxX(v60) - self->_metrics.margin;
      }
    }

    else
    {
      v56.origin.x = rect_16;
      v56.origin.y = rect_24;
      v22 = width;
      v56.size.width = width;
      v56.size.height = height;
      v24 = v19 + CGRectGetMinX(v56) + self->_metrics.margin;
    }

    v20 = rect_8;
  }

  else
  {
    if (position != 3)
    {
      v22 = width;
LABEL_13:
      v24 = v16;
      goto LABEL_22;
    }

    v23 = v17 + v16 + self->_metrics.margin;
    v52.origin.x = rect_16;
    v52.origin.y = rect_24;
    v52.size.width = width;
    v52.size.height = height;
    if (v23 > CGRectGetMaxX(v52))
    {
      v53.origin.x = rect_16;
      v53.origin.y = rect_24;
      v22 = width;
      v53.size.width = width;
      v53.size.height = height;
      v24 = CGRectGetMaxX(v53) - (v19 + self->_metrics.margin);
LABEL_16:
      v13 = v16;
      goto LABEL_22;
    }

    v26 = v16 - self->_metrics.margin;
    v57.origin.x = rect_16;
    v57.origin.y = rect_24;
    v57.size.width = width;
    v57.size.height = height;
    if (v26 < CGRectGetMinX(v57))
    {
      v58.origin.x = rect_16;
      v58.origin.y = rect_24;
      v22 = width;
      v58.size.width = width;
      v58.size.height = height;
      v24 = CGRectGetMinX(v58) + self->_metrics.margin;
      goto LABEL_16;
    }

    v22 = width;
    v13 = v16;
    v24 = v16;
  }

LABEL_22:
  if ((self->_anchor.position - 1) <= 1)
  {
    v43 = v24;
    v61.origin.x = v13;
    v61.origin.y = v15;
    v61.size.width = v19;
    v61.size.height = v20;
    v28 = round(v16 - CGRectGetWidth(v61) * 0.5);
    p_metrics = &self->_metrics;
    v30 = 0.0;
    v42 = fmax((v19 - (p_metrics->arrowBase + (p_metrics->var0.radialSmoothing.arrowBaseRadius + p_metrics->cornerRadius) * 2.0)) * 0.5, 0.0);
    rect = v28;
    v62.origin.x = v28;
    v62.origin.y = v15;
    v62.size.width = v19;
    v62.size.height = v20;
    v31 = CGRectGetMaxX(v62) + p_metrics->margin;
    v63.origin.x = rect_16;
    v63.origin.y = rect_24;
    v63.size.width = v22;
    v63.size.height = height;
    rect_8a = v20;
    if (v31 <= CGRectGetMaxX(v63))
    {
      v67.origin.x = rect;
      v67.origin.y = v15;
      v67.size.width = v19;
      v67.size.height = v20;
      v34 = CGRectGetMinX(v67) - p_metrics->margin;
      v68.origin.x = rect_16;
      v68.origin.y = rect_24;
      v68.size.width = v22;
      v68.size.height = height;
      v35 = v34 < CGRectGetMinX(v68);
      v36 = rect_24;
      v24 = v43;
      rectCopy2 = rect;
      if (!v35)
      {
        goto LABEL_34;
      }

      v37 = rect_16;
      v38 = v22;
      v39 = height;
      MinX = CGRectGetMinX(*(&v36 - 1));
      v69.origin.x = rect;
      v69.origin.y = v15;
      v69.size.width = v19;
      v69.size.height = rect_8a;
      v30 = MinX - (CGRectGetMinX(v69) - p_metrics->margin);
    }

    else
    {
      v64.origin.x = rect_16;
      v64.origin.y = rect_24;
      v64.size.width = v22;
      v64.size.height = height;
      MaxX = CGRectGetMaxX(v64);
      v65.origin.x = rect;
      v65.origin.y = v15;
      v65.size.width = v19;
      v65.size.height = v20;
      v30 = MaxX - (CGRectGetMaxX(v65) + p_metrics->margin);
      v24 = v43;
      rectCopy2 = rect;
    }

    if (v30 > 0.0)
    {
      v41 = v42;
      if (v30 < v42)
      {
        v41 = v30;
      }

      goto LABEL_36;
    }

LABEL_34:
    v41 = -v42;
    if (v30 > -v42)
    {
      v41 = v30;
    }

LABEL_36:
    v13 = rectCopy2 + v41;
    v20 = rect_8a;
    if (!point)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v66.origin.x = v13;
  v66.origin.y = v15;
  v66.size.width = v19;
  v66.size.height = v20;
  v15 = round(v50 + CGRectGetHeight(v66) * -0.5);
  if (point)
  {
LABEL_37:
    point->x = v24;
    point->y = v50;
  }

LABEL_38:
  if (frame)
  {
    frame->origin.x = v13;
    frame->origin.y = v15;
    frame->size.width = v19;
    frame->size.height = v20;
  }
}

- (CGPoint)anchorPoint
{
  selfCopy = self;
  [(MKStandardCalloutView *)self frame];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  selfCopy += 53;
  v7 = CGRectGetMinX(v11) + *selfCopy;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = CGRectGetMinY(v12) + selfCopy[1];
  v9 = v7;
  result.y = v8;
  result.x = v9;
  return result;
}

- (CGPoint)offset
{
  x = self->_anchor.offset.x;
  y = self->_anchor.offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (MKStandardCalloutView)initWithAnnotationView:(id)view
{
  v92[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v89.receiver = self;
  v89.super_class = MKStandardCalloutView;
  v5 = [(MKCalloutView *)&v89 initWithAnnotationView:viewCopy];
  v6 = v5;
  if (v5)
  {
    [(MKStandardCalloutView *)v5 setAutoresizesSubviews:1];
    if (viewCopy)
    {
      _calloutStyle = [viewCopy _calloutStyle];
      p_style = &v6->_style;
      v6->_style = _calloutStyle;
      p_metrics = &v6->_metrics;
      if (_calloutStyle == 2)
      {
        v10 = 0;
        v11 = xmmword_1A30F6E50;
        v12 = xmmword_1A30F6E60;
        v13 = xmmword_1A30F6E70;
        __asm { FMOV            V3.2D, #11.0 }

        v19 = 4.0;
        v20 = 1;
        goto LABEL_7;
      }
    }

    else
    {
      p_style = &v6->_style;
      v6->_style = 0;
      p_metrics = &v6->_metrics;
    }

    v20 = 0;
    v11 = xmmword_1A30F6E80;
    v12 = xmmword_1A30F6E90;
    v13 = xmmword_1A30F6EA0;
    v10 = 1;
    v19 = 0.666666687;
    _Q3 = xmmword_1A30F6E80;
LABEL_7:
    *&p_metrics->margin = v12;
    *&p_metrics->arrowBase = v13;
    p_metrics->useRadialSmoothing = v20;
    *(&p_metrics->useRadialSmoothing + 1) = v75;
    *(&p_metrics->useRadialSmoothing + 1) = *(&v75 + 3);
    p_metrics->var0.radialSmoothing.arrowBaseRadius = 6.0;
    p_metrics->var0.radialSmoothing.arrowRadius = v19;
    p_metrics->alignDetailViewBaseline = v10;
    p_metrics->scaleVerticalPaddingForDynamicType = v10;
    *(&p_metrics->scaleVerticalPaddingForDynamicType + 1) = v87;
    *(&p_metrics->scaleVerticalPaddingForDynamicType + 5) = v88;
    *&p_metrics->padding.top = v11;
    *&p_metrics->padding.bottom = _Q3;
    v21 = [_MKStandardCalloutMaskView alloc];
    [(MKStandardCalloutView *)v6 bounds];
    v22 = [(_MKStandardCalloutMaskView *)v21 initWithFrame:?];
    maskView = v6->_maskView;
    v6->_maskView = v22;

    layer = [(_MKStandardCalloutMaskView *)v6->_maskView layer];
    maskLayer = v6->_maskLayer;
    v6->_maskLayer = layer;

    v26 = *&p_metrics->arrowBase;
    v81 = *&p_metrics->margin;
    v82 = v26;
    v27 = *&p_metrics->useRadialSmoothing;
    v28 = *&p_metrics->var0.nonRadialSmoothing.arrowPointFactor;
    v29 = *&p_metrics->padding.bottom;
    v85 = *&p_metrics->padding.top;
    v86 = v29;
    v83 = v27;
    v84 = v28;
    v30 = v6->_maskLayer;
    v77 = v27;
    v78 = v28;
    v79 = v85;
    v80 = v29;
    v75 = v81;
    v76 = v82;
    [(_MKCalloutLayer *)v30 setMetrics:&v75];
    layer2 = [(MKStandardCalloutView *)v6 layer];
    [layer2 sizeSublayerToBounds:v6->_maskLayer];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MKStandardCalloutView *)v6 setBackgroundColor:clearColor];

    [(MKStandardCalloutView *)v6 setClipsToBounds:0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    layer3 = [(MKStandardCalloutView *)v6 layer];
    [layer3 setShadowColor:cGColor];

    if (*p_style == 2)
    {
      v44 = 1.0;
      v45 = 12.0;
      v46 = 1041865114;
    }

    else
    {
      if (*p_style)
      {
LABEL_12:
        v51 = objc_alloc(MEMORY[0x1E69DD298]);
        [(UIView *)v6->_contentView bounds];
        v52 = [v51 initWithFrame:?];
        backdropView = v6->_backdropView;
        v6->_backdropView = v52;

        [(UIVisualEffectView *)v6->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
        v54 = [MEMORY[0x1E69DC730] effectWithStyle:0];
        [(UIVisualEffectView *)v6->_backdropView setEffect:v54];

        [(UIVisualEffectView *)v6->_backdropView setInsetsLayoutMarginsFromSafeArea:0];
        [(UIVisualEffectView *)v6->_backdropView _setUseLiveMasking:1];
        [(MKStandardCalloutView *)v6 addSubview:v6->_backdropView];
        [(UIVisualEffectView *)v6->_backdropView setMaskView:v6->_maskView];
        contentView = [(UIVisualEffectView *)v6->_backdropView contentView];
        contentView = v6->_contentView;
        v6->_contentView = contentView;

        v57 = [MKSmallCalloutView alloc];
        [(UIView *)v6->_contentView bounds];
        v58 = *&p_metrics->arrowBase;
        v75 = *&p_metrics->margin;
        v76 = v58;
        v59 = *&p_metrics->useRadialSmoothing;
        v60 = *&p_metrics->var0.nonRadialSmoothing.arrowPointFactor;
        v61 = *&p_metrics->padding.bottom;
        v79 = *&p_metrics->padding.top;
        v80 = v61;
        v77 = v59;
        v78 = v60;
        v62 = [(MKSmallCalloutView *)v57 initWithFrame:&v75 metrics:?];
        calloutView = v6->_calloutView;
        v6->_calloutView = v62;

        [(MKSmallCalloutView *)v6->_calloutView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(MKSmallCalloutView *)v6->_calloutView setInsetsLayoutMarginsFromSafeArea:0];
        [(MKSmallCalloutView *)v6->_calloutView setPreservesSuperviewLayoutMargins:0];
        [(UIView *)v6->_contentView addSubview:v6->_calloutView];
        array = [MEMORY[0x1E695DF70] array];
        [(MKStandardCalloutView *)v6 _adaptToUserInterfaceStyle];
        v65 = [(UIView *)v6 _mapkit_constraintsPinningSubviewToBounds:v6->_backdropView];
        [array addObjectsFromArray:v65];

        v66 = [(UIView *)v6->_contentView _mapkit_constraintsPinningSubviewToBounds:v6->_calloutView];
        [array addObjectsFromArray:v66];

        [MEMORY[0x1E696ACD8] activateConstraints:array];
        v6->_anchor.offset = *MEMORY[0x1E695EFF8];
        v6->_anchor.position = 0;
        [(MKStandardCalloutView *)v6 _updateCalloutAnimated:0];
        v90 = objc_opt_class();
        v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
        v68 = [(MKStandardCalloutView *)v6 registerForTraitChanges:v67 withAction:sel_traitEnvironment_didChangeTraitCollection_];

        goto LABEL_13;
      }

      v36 = +[_MKCalloutLayer layer];
      contentStrokeLayer = v6->_contentStrokeLayer;
      v6->_contentStrokeLayer = v36;

      v70 = *&p_metrics->margin;
      v71 = *&p_metrics->arrowBase;
      v73 = *&p_metrics->padding.top;
      v74 = *&p_metrics->padding.bottom;
      v72 = *&p_metrics->var0.nonRadialSmoothing.arrowPointFactor;
      v38 = v6->_contentStrokeLayer;
      v77 = *&p_metrics->useRadialSmoothing;
      v78 = v72;
      v79 = v73;
      v80 = v74;
      v75 = v70;
      v76 = v71;
      [(_MKCalloutLayer *)v38 setMetrics:&v75, v70, v71, v77, v72, v73, v74];
      [(_MKCalloutLayer *)v6->_contentStrokeLayer setFillColor:0];
      v39 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:0.300000012];
      [(_MKCalloutLayer *)v6->_contentStrokeLayer setStrokeColor:v39];

      v91 = @"transform";
      null = [MEMORY[0x1E695DFB0] null];
      v92[0] = null;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:&v91 count:1];
      [(_MKCalloutLayer *)v6->_contentStrokeLayer setActions:v41];

      layer4 = [(MKStandardCalloutView *)v6 layer];
      [layer4 addSublayer:v6->_contentStrokeLayer];

      [(_MKCalloutLayer *)v6->_contentStrokeLayer setZPosition:10000.0];
      layer5 = [(MKStandardCalloutView *)v6 layer];
      [layer5 sizeSublayerToBounds:v6->_contentStrokeLayer];

      v44 = 4.0;
      v45 = 6.0;
      v46 = 1036831949;
    }

    layer6 = [(MKStandardCalloutView *)v6 layer];
    [layer6 setShadowOffset:{0.0, v44}];

    layer7 = [(MKStandardCalloutView *)v6 layer];
    [layer7 setShadowRadius:v45];

    layer8 = [(MKStandardCalloutView *)v6 layer];
    LODWORD(v50) = v46;
    [layer8 setShadowOpacity:v50];

    goto LABEL_12;
  }

LABEL_13:

  return v6;
}

- (void)setDetailView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  detailView = [(MKSmallCalloutView *)self->_calloutView detailView];

  v7 = viewCopy;
  if (detailView != viewCopy)
  {
    [(MKSmallCalloutView *)self->_calloutView setDetailView:viewCopy animated:animatedCopy];
    v7 = viewCopy;
  }
}

- (void)setRightView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  rightView = [(MKSmallCalloutView *)self->_calloutView rightView];

  v7 = viewCopy;
  if (rightView != viewCopy)
  {
    [(MKSmallCalloutView *)self->_calloutView setRightView:viewCopy animated:animatedCopy];
    v7 = viewCopy;
  }
}

- (void)setLeftView:(id)view backgroundColor:(id)color animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  leftView = [(MKSmallCalloutView *)self->_calloutView leftView];

  v8 = viewCopy;
  if (leftView != viewCopy)
  {
    [(MKSmallCalloutView *)self->_calloutView setLeftView:viewCopy animated:animatedCopy];
    v8 = viewCopy;
  }
}

- (void)dealloc
{
  annotationView = [(MKCalloutView *)self annotationView];
  [(MKStandardCalloutView *)self _stopObservingAnnotationView:annotationView];

  v4.receiver = self;
  v4.super_class = MKStandardCalloutView;
  [(MKStandardCalloutView *)&v4 dealloc];
}

@end