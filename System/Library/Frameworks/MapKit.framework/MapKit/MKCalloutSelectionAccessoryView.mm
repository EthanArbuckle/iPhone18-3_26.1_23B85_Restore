@interface MKCalloutSelectionAccessoryView
- (MKCalloutSelectionAccessoryView)initWithSelectionAccessoryView:(id)view style:(int64_t)style pointerEdge:(int64_t)edge pointerUnitLocation:(double)location;
- (void)_updateLayerColors;
- (void)_updateShape;
- (void)layoutSubviews;
- (void)placeCardPreferredContentSizeDidChange:(CGSize)change;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MKCalloutSelectionAccessoryView

- (void)_updateShape
{
  v3 = MEMORY[0x1E69DC728];
  [(MKCalloutSelectionAccessoryView *)self bounds];
  v9 = [v3 bezierPathWithCalloutRect:self->_pointerEdge unitLocation:? edge:?];
  v4 = v9;
  cGPath = [v9 CGPath];
  layer = [(MKCalloutSelectionAccessoryView *)self layer];
  [layer setPath:cGPath];

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

- (void)placeCardPreferredContentSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
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
    widthAnchor = [(MKSelectionAccessoryView *)self->_wrappedView widthAnchor];
    v13 = [widthAnchor constraintEqualToConstant:width];
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
    heightAnchor = [(MKSelectionAccessoryView *)self->_wrappedView heightAnchor];
    v18 = [heightAnchor constraintEqualToConstant:height];
    v19 = self->_wrappedViewHeightConstraint;
    self->_wrappedViewHeightConstraint = v18;

    LODWORD(v20) = 1144750080;
    [(NSLayoutConstraint *)self->_wrappedViewHeightConstraint setPriority:v20];
    [v10 addObject:self->_wrappedViewHeightConstraint];
    if (self->_calloutStyle == 1)
    {
      heightAnchor2 = [(MKSelectionAccessoryView *)self->_wrappedView heightAnchor];
      v22 = [heightAnchor2 constraintLessThanOrEqualToConstant:v15];
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
  cGColor = [(UIColor *)self->_fillColor CGColor];
  layer = [(MKCalloutSelectionAccessoryView *)self layer];
  [layer setFillColor:cGColor];

  v5 = [(UIColor *)self->_borderColor colorWithAlphaComponent:0.5];
  cGColor2 = [v5 CGColor];
  layer2 = [(MKCalloutSelectionAccessoryView *)self layer];
  [layer2 setStrokeColor:cGColor2];

  cGColor3 = [(UIColor *)self->_fillColor CGColor];
  shadowLayer = self->_shadowLayer;

  [(CAShapeLayer *)shadowLayer setFillColor:cGColor3];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(MKCalloutSelectionAccessoryView *)self traitCollection];
  v6 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v6)
  {

    [(MKCalloutSelectionAccessoryView *)self _updateLayerColors];
  }
}

- (MKCalloutSelectionAccessoryView)initWithSelectionAccessoryView:(id)view style:(int64_t)style pointerEdge:(int64_t)edge pointerUnitLocation:(double)location
{
  v64[8] = *MEMORY[0x1E69E9840];
  viewCopy = view;
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
    v16->_calloutStyle = style;
    v16->_pointerEdge = edge;
    v16->_pointerUnitLocation = location;
    v18 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"DeveloperPlaceCardBorderColor"];
    borderColor = v17->_borderColor;
    v17->_borderColor = v18;

    v62 = viewCopy;
    if (style == 2)
    {
      v20 = MEMORY[0x1E69DC888];
      v21 = @"DeveloperPlaceCardCompactBackgroundColor";
    }

    else
    {
      if (style != 1)
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

    layer = [(MKCalloutSelectionAccessoryView *)v17 layer];
    [layer setLineWidth:1.0];

    v26 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(CAShapeLayer *)v26 setShadowRadius:15.0];
    LODWORD(v27) = 1047904911;
    [(CAShapeLayer *)v26 setShadowOpacity:v27];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    -[CAShapeLayer setShadowColor:](v26, "setShadowColor:", [blackColor CGColor]);

    [(CAShapeLayer *)v26 setShadowOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(CAShapeLayer *)v26 setCornerRadius:14.0];
    layer2 = [(MKCalloutSelectionAccessoryView *)v17 layer];
    [layer2 insertSublayer:v26 atIndex:0];

    shadowLayer = v17->_shadowLayer;
    v17->_shadowLayer = v26;
    v61 = v26;

    [(MKCalloutSelectionAccessoryView *)v17 _updateLayerColors];
    v31 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer3 = [v31 layer];
    [layer3 setCornerRadius:14.0];

    layer4 = [v31 layer];
    [layer4 setMasksToBounds:1];

    [(MKCalloutSelectionAccessoryView *)v17 addSubview:v31];
    objc_storeStrong(&v17->_wrappedView, view);
    [(MKSelectionAccessoryView *)v17->_wrappedView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKSelectionAccessoryView *)v17->_wrappedView setPlaceCardContentSizeDelegate:v17];
    [v31 addSubview:v17->_wrappedView];
    v50 = MEMORY[0x1E696ACD8];
    topAnchor = [(MKSelectionAccessoryView *)v17->_wrappedView topAnchor];
    topAnchor2 = [v31 topAnchor];
    v58 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v64[0] = v58;
    leadingAnchor = [(MKSelectionAccessoryView *)v17->_wrappedView leadingAnchor];
    leadingAnchor2 = [v31 leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v64[1] = v55;
    trailingAnchor = [v31 trailingAnchor];
    trailingAnchor2 = [(MKSelectionAccessoryView *)v17->_wrappedView trailingAnchor];
    v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v64[2] = v52;
    bottomAnchor = [v31 bottomAnchor];
    bottomAnchor2 = [(MKSelectionAccessoryView *)v17->_wrappedView bottomAnchor];
    v48 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v64[3] = v48;
    topAnchor3 = [v31 topAnchor];
    topAnchor4 = [(MKCalloutSelectionAccessoryView *)v17 topAnchor];
    v45 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:0.5];
    v64[4] = v45;
    leadingAnchor3 = [v31 leadingAnchor];
    leadingAnchor4 = [(MKCalloutSelectionAccessoryView *)v17 leadingAnchor];
    v34 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.5];
    v64[5] = v34;
    trailingAnchor3 = [(MKCalloutSelectionAccessoryView *)v17 trailingAnchor];
    trailingAnchor4 = [v31 trailingAnchor];
    v37 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.5];
    v64[6] = v37;
    bottomAnchor3 = [(MKCalloutSelectionAccessoryView *)v17 bottomAnchor];
    bottomAnchor4 = [v31 bottomAnchor];
    v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.5];
    v64[7] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:8];
    [v50 activateConstraints:v41];

    viewCopy = v62;
  }

  return v17;
}

@end