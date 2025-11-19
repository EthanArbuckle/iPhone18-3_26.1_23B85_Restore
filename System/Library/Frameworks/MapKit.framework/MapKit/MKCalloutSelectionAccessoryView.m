@interface MKCalloutSelectionAccessoryView
- (MKCalloutSelectionAccessoryView)initWithSelectionAccessoryView:(id)a3 style:(int64_t)a4 pointerEdge:(int64_t)a5 pointerUnitLocation:(double)a6;
- (void)_updateLayerColors;
- (void)_updateShape;
- (void)layoutSubviews;
- (void)placeCardPreferredContentSizeDidChange:(CGSize)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MKCalloutSelectionAccessoryView

- (void)_updateShape
{
  v3 = MEMORY[0x1E69DC728];
  [(MKCalloutSelectionAccessoryView *)self bounds];
  v9 = [v3 bezierPathWithCalloutRect:self->_pointerEdge unitLocation:? edge:?];
  v4 = v9;
  v5 = [v9 CGPath];
  v6 = [(MKCalloutSelectionAccessoryView *)self layer];
  [v6 setPath:v5];

  v7 = v9;
  -[CAShapeLayer setPath:](self->_shadowLayer, "setPath:", [v9 CGPath]);
  v8 = v9;
  -[CAShapeLayer setShadowPath:](self->_shadowLayer, "setShadowPath:", [v9 CGPath]);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MKCalloutSelectionAccessoryView;
  [(MKCalloutSelectionAccessoryView *)&v3 layoutSubviews];
  [(MKCalloutSelectionAccessoryView *)self _updateShape];
}

- (void)placeCardPreferredContentSizeDidChange:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v26 = *MEMORY[0x1E69E9840];
  if (MKGetMKRemoteUILog_onceToken_10621 != -1)
  {
    dispatch_once(&MKGetMKRemoteUILog_onceToken_10621, &__block_literal_global_10622);
  }

  v6 = MKGetMKRemoteUILog_log_10623;
  if (os_log_type_enabled(MKGetMKRemoteUILog_log_10623, OS_LOG_TYPE_DEBUG))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = v6;
    v9 = [v7 stringWithFormat:@"{%.1f, %.1f}", *&width, *&height];
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_DEBUG, "CalloutSelectionAccessoryView placeCardPreferredContentSizeDidChange: %{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  wrappedViewWidthConstraint = self->_wrappedViewWidthConstraint;
  if (wrappedViewWidthConstraint)
  {
    [(NSLayoutConstraint *)wrappedViewWidthConstraint setConstant:width];
  }

  else
  {
    v12 = [(MKSelectionAccessoryView *)self->_wrappedView widthAnchor];
    v13 = [v12 constraintEqualToConstant:width];
    v14 = self->_wrappedViewWidthConstraint;
    self->_wrappedViewWidthConstraint = v13;

    [v10 addObject:self->_wrappedViewWidthConstraint];
  }

  v15 = fmin(height, 640.0);
  wrappedViewHeightConstraint = self->_wrappedViewHeightConstraint;
  if (wrappedViewHeightConstraint)
  {
    [(NSLayoutConstraint *)wrappedViewHeightConstraint setConstant:height];
    [(NSLayoutConstraint *)self->_wrappedViewMaxHeightConstraint setConstant:v15];
  }

  else
  {
    v17 = [(MKSelectionAccessoryView *)self->_wrappedView heightAnchor];
    v18 = [v17 constraintEqualToConstant:height];
    v19 = self->_wrappedViewHeightConstraint;
    self->_wrappedViewHeightConstraint = v18;

    LODWORD(v20) = 1144750080;
    [(NSLayoutConstraint *)self->_wrappedViewHeightConstraint setPriority:v20];
    [v10 addObject:self->_wrappedViewHeightConstraint];
    if (self->_calloutStyle == 1)
    {
      v21 = [(MKSelectionAccessoryView *)self->_wrappedView heightAnchor];
      v22 = [v21 constraintLessThanOrEqualToConstant:v15];
      wrappedViewMaxHeightConstraint = self->_wrappedViewMaxHeightConstraint;
      self->_wrappedViewMaxHeightConstraint = v22;

      [v10 addObject:self->_wrappedViewMaxHeightConstraint];
    }
  }

  if ([v10 count])
  {
    [MEMORY[0x1E696ACD8] activateConstraints:v10];
  }
}

- (void)_updateLayerColors
{
  v3 = [(UIColor *)self->_fillColor CGColor];
  v4 = [(MKCalloutSelectionAccessoryView *)self layer];
  [v4 setFillColor:v3];

  v5 = [(UIColor *)self->_borderColor colorWithAlphaComponent:0.5];
  v6 = [v5 CGColor];
  v7 = [(MKCalloutSelectionAccessoryView *)self layer];
  [v7 setStrokeColor:v6];

  v8 = [(UIColor *)self->_fillColor CGColor];
  shadowLayer = self->_shadowLayer;

  [(CAShapeLayer *)shadowLayer setFillColor:v8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(MKCalloutSelectionAccessoryView *)self traitCollection];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v6)
  {

    [(MKCalloutSelectionAccessoryView *)self _updateLayerColors];
  }
}

- (MKCalloutSelectionAccessoryView)initWithSelectionAccessoryView:(id)a3 style:(int64_t)a4 pointerEdge:(int64_t)a5 pointerUnitLocation:(double)a6
{
  v64[8] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v63.receiver = self;
  v63.super_class = MKCalloutSelectionAccessoryView;
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  v16 = [(MKSelectionAccessoryView *)&v63 initWithFrame:*MEMORY[0x1E695F058], v13, v14, v15];
  v17 = v16;
  if (v16)
  {
    v16->_calloutStyle = a4;
    v16->_pointerEdge = a5;
    v16->_pointerUnitLocation = a6;
    v18 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"DeveloperPlaceCardBorderColor"];
    borderColor = v17->_borderColor;
    v17->_borderColor = v18;

    v62 = v11;
    if (a4 == 2)
    {
      v20 = MEMORY[0x1E69DC888];
      v21 = @"DeveloperPlaceCardCompactBackgroundColor";
    }

    else
    {
      if (a4 != 1)
      {
        v24 = v17->_borderColor;
        fillColor = v17->_fillColor;
        v17->_fillColor = v24;
        goto LABEL_8;
      }

      v20 = MEMORY[0x1E69DC888];
      v21 = @"DeveloperPlaceCardFullBackgroundColor";
    }

    v22 = [v20 _mapkit_colorNamed:v21];
    fillColor = v17->_fillColor;
    v17->_fillColor = v22;
LABEL_8:

    v25 = [(MKCalloutSelectionAccessoryView *)v17 layer];
    [v25 setLineWidth:1.0];

    v26 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(CAShapeLayer *)v26 setShadowRadius:15.0];
    LODWORD(v27) = 1047904911;
    [(CAShapeLayer *)v26 setShadowOpacity:v27];
    v28 = [MEMORY[0x1E69DC888] blackColor];
    -[CAShapeLayer setShadowColor:](v26, "setShadowColor:", [v28 CGColor]);

    [(CAShapeLayer *)v26 setShadowOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(CAShapeLayer *)v26 setCornerRadius:14.0];
    v29 = [(MKCalloutSelectionAccessoryView *)v17 layer];
    [v29 insertSublayer:v26 atIndex:0];

    shadowLayer = v17->_shadowLayer;
    v17->_shadowLayer = v26;
    v61 = v26;

    [(MKCalloutSelectionAccessoryView *)v17 _updateLayerColors];
    v31 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [v31 layer];
    [v32 setCornerRadius:14.0];

    v33 = [v31 layer];
    [v33 setMasksToBounds:1];

    [(MKCalloutSelectionAccessoryView *)v17 addSubview:v31];
    objc_storeStrong(&v17->_wrappedView, a3);
    [(MKSelectionAccessoryView *)v17->_wrappedView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKSelectionAccessoryView *)v17->_wrappedView setPlaceCardContentSizeDelegate:v17];
    [v31 addSubview:v17->_wrappedView];
    v50 = MEMORY[0x1E696ACD8];
    v60 = [(MKSelectionAccessoryView *)v17->_wrappedView topAnchor];
    v59 = [v31 topAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v64[0] = v58;
    v57 = [(MKSelectionAccessoryView *)v17->_wrappedView leadingAnchor];
    v56 = [v31 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v64[1] = v55;
    v54 = [v31 trailingAnchor];
    v53 = [(MKSelectionAccessoryView *)v17->_wrappedView trailingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v64[2] = v52;
    v51 = [v31 bottomAnchor];
    v49 = [(MKSelectionAccessoryView *)v17->_wrappedView bottomAnchor];
    v48 = [v51 constraintEqualToAnchor:v49];
    v64[3] = v48;
    v47 = [v31 topAnchor];
    v46 = [(MKCalloutSelectionAccessoryView *)v17 topAnchor];
    v45 = [v47 constraintEqualToAnchor:v46 constant:0.5];
    v64[4] = v45;
    v44 = [v31 leadingAnchor];
    v43 = [(MKCalloutSelectionAccessoryView *)v17 leadingAnchor];
    v34 = [v44 constraintEqualToAnchor:v43 constant:0.5];
    v64[5] = v34;
    v35 = [(MKCalloutSelectionAccessoryView *)v17 trailingAnchor];
    v36 = [v31 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:0.5];
    v64[6] = v37;
    v38 = [(MKCalloutSelectionAccessoryView *)v17 bottomAnchor];
    v39 = [v31 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:0.5];
    v64[7] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:8];
    [v50 activateConstraints:v41];

    v11 = v62;
  }

  return v17;
}

@end