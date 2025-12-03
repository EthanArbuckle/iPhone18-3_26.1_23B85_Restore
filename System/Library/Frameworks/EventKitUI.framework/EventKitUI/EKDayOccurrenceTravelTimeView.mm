@interface EKDayOccurrenceTravelTimeView
+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)text sizeClass:(int64_t)class;
+ (void)initialize;
- (EKDayOccurrenceTravelTimeView)initWithFrame:(CGRect)frame;
- (EKDayOccurrenceTravelTimeView)initWithReusableTravelTimeView:(id)view;
- (double)alphaForElements;
- (id)_travelTimeIconForTravelModeWithColor:(id)color;
- (void)_updateStringsColorsAndConstraintConstants;
- (void)layoutSubviews;
- (void)setColorBarColor:(id)color;
- (void)setElementColor:(id)color;
- (void)setLineColor:(id)color;
- (void)setRoutingMode:(int64_t)mode;
@end

@implementation EKDayOccurrenceTravelTimeView

+ (void)initialize
{
  v8[5] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v8[0] = v4;
  v8[1] = v4;
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];
  v7 = s_iconCache;
  s_iconCache = v6;
}

- (EKDayOccurrenceTravelTimeView)initWithFrame:(CGRect)frame
{
  v72[13] = *MEMORY[0x1E69E9840];
  v71.receiver = self;
  v71.super_class = EKDayOccurrenceTravelTimeView;
  v3 = [(EKDayOccurrenceTravelTimeView *)&v71 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(EKDayOccurrenceTravelTimeView *)v3 setOpaque:0];
    [(EKDayOccurrenceTravelTimeView *)v4 setUserInteractionEnabled:0];
    [(EKDayOccurrenceTravelTimeView *)v4 setContentMode:3];
    v5 = objc_alloc_init(DottedLineView);
    colorBarView = v4->_colorBarView;
    v4->_colorBarView = &v5->super;

    [(UIView *)v4->_colorBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKDayOccurrenceTravelTimeView *)v4 addSubview:v4->_colorBarView];
    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
    travelTimeIcon = v4->_travelTimeIcon;
    v4->_travelTimeIcon = v7;

    v9 = MEMORY[0x1E69DCAD8];
    _textFont = [(EKDayOccurrenceTravelTimeView *)v4 _textFont];
    v11 = [v9 configurationWithFont:_textFont];
    [(UIImageView *)v4->_travelTimeIcon setPreferredSymbolConfiguration:v11];

    [(UIImageView *)v4->_travelTimeIcon setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1148846080;
    [(UIImageView *)v4->_travelTimeIcon setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [(UIImageView *)v4->_travelTimeIcon setContentCompressionResistancePriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(UIImageView *)v4->_travelTimeIcon setContentHuggingPriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UIImageView *)v4->_travelTimeIcon setContentHuggingPriority:1 forAxis:v15];
    [(UIImageView *)v4->_travelTimeIcon setAlpha:0.0];
    [(EKDayOccurrenceTravelTimeView *)v4 addSubview:v4->_travelTimeIcon];
    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    travelTimeLabel = v4->_travelTimeLabel;
    v4->_travelTimeLabel = v16;

    _textFont2 = [(EKDayOccurrenceTravelTimeView *)v4 _textFont];
    [(UILabel *)v4->_travelTimeLabel setFont:_textFont2];

    [(UILabel *)v4->_travelTimeLabel setNumberOfLines:0];
    [(UILabel *)v4->_travelTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [(UILabel *)v4->_travelTimeLabel setContentCompressionResistancePriority:1 forAxis:v19];
    [(UILabel *)v4->_travelTimeLabel setAlpha:0.0];
    [(EKDayOccurrenceTravelTimeView *)v4 addSubview:v4->_travelTimeLabel];
    v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
    horizontalLineView = v4->_horizontalLineView;
    v4->_horizontalLineView = v20;

    [(UIView *)v4->_horizontalLineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKDayOccurrenceTravelTimeView *)v4 addSubview:v4->_horizontalLineView];
    trailingAnchor = [(EKDayOccurrenceTravelTimeView *)v4 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v4->_travelTimeLabel trailingAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
    travelTimeLabelToTrailingEdgeConstraint = v4->_travelTimeLabelToTrailingEdgeConstraint;
    v4->_travelTimeLabelToTrailingEdgeConstraint = v24;

    bottomAnchor = [(EKDayOccurrenceTravelTimeView *)v4 bottomAnchor];
    bottomAnchor2 = [(UILabel *)v4->_travelTimeLabel bottomAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v28 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:?];

    v57 = v28;
    LODWORD(v29) = 1144750080;
    [v28 setPriority:v29];
    bottomAnchor3 = [(UIView *)v4->_colorBarView bottomAnchor];
    bottomAnchor4 = [(EKDayOccurrenceTravelTimeView *)v4 bottomAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v70 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v32];

    LODWORD(v33) = 1144750080;
    [v70 setPriority:v33];
    v59 = MEMORY[0x1E696ACD8];
    v72[0] = v70;
    leadingAnchor = [(UIView *)v4->_colorBarView leadingAnchor];
    leadingAnchor2 = [(EKDayOccurrenceTravelTimeView *)v4 leadingAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v67 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v72[1] = v67;
    widthAnchor = [(UIView *)v4->_colorBarView widthAnchor];
    [MEMORY[0x1E6993420] colorBarThickness];
    v65 = [widthAnchor constraintEqualToConstant:?];
    v72[2] = v65;
    topAnchor = [(UIView *)v4->_colorBarView topAnchor];
    topAnchor2 = [(EKDayOccurrenceTravelTimeView *)v4 topAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v62 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v72[3] = v62;
    leadingAnchor3 = [(UIImageView *)v4->_travelTimeIcon leadingAnchor];
    trailingAnchor3 = [(UIView *)v4->_colorBarView trailingAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v58 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:?];
    v72[4] = v58;
    topAnchor3 = [(UIImageView *)v4->_travelTimeIcon topAnchor];
    topAnchor4 = [(UIView *)v4->_colorBarView topAnchor];
    v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v72[5] = v54;
    leadingAnchor4 = [(UILabel *)v4->_travelTimeLabel leadingAnchor];
    trailingAnchor4 = [(UIImageView *)v4->_travelTimeIcon trailingAnchor];
    v51 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:3.0];
    v72[6] = v51;
    topAnchor5 = [(UILabel *)v4->_travelTimeLabel topAnchor];
    colorBarView = [(EKDayOccurrenceTravelTimeView *)v4 colorBarView];
    topAnchor6 = [colorBarView topAnchor];
    v47 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v72[7] = v47;
    v72[8] = v28;
    leadingAnchor5 = [(UIView *)v4->_horizontalLineView leadingAnchor];
    leadingAnchor6 = [(EKDayOccurrenceTravelTimeView *)v4 leadingAnchor];
    v44 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v72[9] = v44;
    trailingAnchor5 = [(UIView *)v4->_horizontalLineView trailingAnchor];
    trailingAnchor6 = [(EKDayOccurrenceTravelTimeView *)v4 trailingAnchor];
    v36 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v72[10] = v36;
    heightAnchor = [(UIView *)v4->_horizontalLineView heightAnchor];
    CalRoundToScreenScale(0.5);
    v38 = [heightAnchor constraintEqualToConstant:?];
    v72[11] = v38;
    bottomAnchor5 = [(UIView *)v4->_horizontalLineView bottomAnchor];
    bottomAnchor6 = [(EKDayOccurrenceTravelTimeView *)v4 bottomAnchor];
    v41 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v72[12] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:13];
    [v59 activateConstraints:v42];
  }

  return v4;
}

- (EKDayOccurrenceTravelTimeView)initWithReusableTravelTimeView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  v5 = [(EKDayOccurrenceTravelTimeView *)self initWithFrame:?];
  if (v5)
  {
    elementColor = [viewCopy elementColor];
    [(EKDayOccurrenceTravelTimeView *)v5 setElementColor:elementColor];

    lineColor = [viewCopy lineColor];
    [(EKDayOccurrenceTravelTimeView *)v5 setLineColor:lineColor];

    -[EKDayOccurrenceTravelTimeView setRoutingMode:](v5, "setRoutingMode:", [viewCopy routingMode]);
  }

  return v5;
}

+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)text sizeClass:(int64_t)class
{
  defaultOccurrenceSecondaryTextFont = [MEMORY[0x1E6993418] defaultOccurrenceSecondaryTextFont];
  [defaultOccurrenceSecondaryTextFont lineHeight];
  v6 = v5;

  return v6;
}

- (void)_updateStringsColorsAndConstraintConstants
{
  [(UIView *)self->_horizontalLineView setBackgroundColor:self->_lineColor];
  [(UILabel *)self->_travelTimeLabel setTextColor:self->_elementColor];
  v3 = [(EKDayOccurrenceTravelTimeView *)self _travelTimeIconForTravelModeWithColor:self->_elementColor];
  [(UIImageView *)self->_travelTimeIcon setImage:v3];

  [(UIView *)self->_colorBarView setBackgroundColor:self->_colorBarColor];

  [(EKDayOccurrenceTravelTimeView *)self setNeedsLayout];
}

- (void)setElementColor:(id)color
{
  colorCopy = color;
  if (self->_elementColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_elementColor, color);
    [(EKDayOccurrenceTravelTimeView *)self _updateStringsColorsAndConstraintConstants];
    colorCopy = v6;
  }
}

- (void)setColorBarColor:(id)color
{
  colorCopy = color;
  if (self->_colorBarColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_colorBarColor, color);
    [(EKDayOccurrenceTravelTimeView *)self _updateStringsColorsAndConstraintConstants];
    colorCopy = v6;
  }
}

- (void)setLineColor:(id)color
{
  colorCopy = color;
  if (self->_lineColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_lineColor, color);
    [(EKDayOccurrenceTravelTimeView *)self _updateStringsColorsAndConstraintConstants];
    colorCopy = v6;
  }
}

- (void)setRoutingMode:(int64_t)mode
{
  if (self->_routingMode != mode)
  {
    self->_routingMode = mode;
    [(EKDayOccurrenceTravelTimeView *)self _updateStringsColorsAndConstraintConstants];
  }
}

- (id)_travelTimeIconForTravelModeWithColor:(id)color
{
  colorCopy = color;
  if (self->_routingMode == -1)
  {
    routingMode = 0;
  }

  else
  {
    routingMode = self->_routingMode;
  }

  v6 = [s_iconCache objectAtIndexedSubscript:routingMode];
  v7 = [v6 objectForKey:colorCopy];

  v8 = 0;
  if (v7)
  {
    goto LABEL_17;
  }

  if (routingMode > 1)
  {
    switch(routingMode)
    {
      case 4:
        v9 = BicycleImage_Occurrences();
        break;
      case 3:
        v9 = TransitImage_Occurrences();
        break;
      case 2:
        v9 = WalkmanImage_Occurrences();
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    if ((routingMode + 1) >= 3)
    {
      goto LABEL_15;
    }

    v9 = CarImage_Occurrences();
  }

  v8 = v9;
LABEL_15:
  v7 = [v8 imageWithTintColor:colorCopy renderingMode:1];
  if (v7)
  {
    v10 = [s_iconCache objectAtIndexedSubscript:routingMode];
    [v10 setObject:v7 forKey:colorCopy];
  }

LABEL_17:

  return v7;
}

- (double)alphaForElements
{
  [(UIImageView *)self->_travelTimeIcon frame];
  Height = CGRectGetHeight(v9);
  [(UILabel *)self->_travelTimeLabel frame];
  v4 = CGRectGetHeight(v10);
  if (Height < v4)
  {
    Height = v4;
  }

  [MEMORY[0x1E6993420] occurrencePadding];
  v6 = Height + v5;
  [(EKDayOccurrenceTravelTimeView *)self bounds];
  v7 = v6 <= CGRectGetHeight(v11);
  result = 1.0;
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

- (void)layoutSubviews
{
  [(UIImageView *)self->_travelTimeIcon intrinsicContentSize];
  v4 = v3;
  [(EKDayOccurrenceTravelTimeView *)self bounds];
  Width = CGRectGetWidth(v20);
  [MEMORY[0x1E6993420] occurrencePadding];
  v7 = v6;
  [MEMORY[0x1E6993420] colorBarThickness];
  v9 = v7 + v8;
  [MEMORY[0x1E6993420] occurrencePadding];
  v11 = v4 + v9 + v10 + 3.0;
  [MEMORY[0x1E6993420] occurrencePadding];
  v13 = v12 + v11;
  [(NSLayoutConstraint *)self->_travelTimeLabelToTrailingEdgeConstraint setActive:Width >= v13];
  v19.receiver = self;
  v19.super_class = EKDayOccurrenceTravelTimeView;
  [(EKDayOccurrenceTravelTimeView *)&v19 layoutSubviews];
  v14 = Width < v13;
  v15 = 0;
  if (!v14)
  {
    [(EKDayOccurrenceTravelTimeView *)self alphaForElements];
    v15 = v16;
  }

  if (![(EKDayOccurrenceTravelTimeView *)self animatingAlpha])
  {
    [(EKDayOccurrenceTravelTimeView *)self setAnimatingAlpha:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__EKDayOccurrenceTravelTimeView_layoutSubviews__block_invoke;
    v18[3] = &unk_1E843F690;
    v18[4] = self;
    v18[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47__EKDayOccurrenceTravelTimeView_layoutSubviews__block_invoke_2;
    v17[3] = &unk_1E843F6B8;
    v17[4] = self;
    v17[5] = v15;
    [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v18 options:v17 animations:0.200000003 completion:0.0];
  }
}

uint64_t __47__EKDayOccurrenceTravelTimeView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 448) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 456);

  return [v3 setAlpha:v2];
}

uint64_t __47__EKDayOccurrenceTravelTimeView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAnimatingAlpha:0];
  v2 = *(a1 + 40);
  result = [*(a1 + 32) alphaForElements];
  if (v2 != v4)
  {
    v5 = *(a1 + 32);

    return [v5 setNeedsLayout];
  }

  return result;
}

@end