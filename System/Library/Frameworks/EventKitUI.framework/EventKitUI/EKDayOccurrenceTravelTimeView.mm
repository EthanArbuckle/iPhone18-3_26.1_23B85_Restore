@interface EKDayOccurrenceTravelTimeView
+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4;
+ (void)initialize;
- (EKDayOccurrenceTravelTimeView)initWithFrame:(CGRect)a3;
- (EKDayOccurrenceTravelTimeView)initWithReusableTravelTimeView:(id)a3;
- (double)alphaForElements;
- (id)_travelTimeIconForTravelModeWithColor:(id)a3;
- (void)_updateStringsColorsAndConstraintConstants;
- (void)layoutSubviews;
- (void)setColorBarColor:(id)a3;
- (void)setElementColor:(id)a3;
- (void)setLineColor:(id)a3;
- (void)setRoutingMode:(int64_t)a3;
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

- (EKDayOccurrenceTravelTimeView)initWithFrame:(CGRect)a3
{
  v72[13] = *MEMORY[0x1E69E9840];
  v71.receiver = self;
  v71.super_class = EKDayOccurrenceTravelTimeView;
  v3 = [(EKDayOccurrenceTravelTimeView *)&v71 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v10 = [(EKDayOccurrenceTravelTimeView *)v4 _textFont];
    v11 = [v9 configurationWithFont:v10];
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

    v18 = [(EKDayOccurrenceTravelTimeView *)v4 _textFont];
    [(UILabel *)v4->_travelTimeLabel setFont:v18];

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
    v22 = [(EKDayOccurrenceTravelTimeView *)v4 trailingAnchor];
    v23 = [(UILabel *)v4->_travelTimeLabel trailingAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v24 = [v22 constraintEqualToAnchor:v23 constant:?];
    travelTimeLabelToTrailingEdgeConstraint = v4->_travelTimeLabelToTrailingEdgeConstraint;
    v4->_travelTimeLabelToTrailingEdgeConstraint = v24;

    v26 = [(EKDayOccurrenceTravelTimeView *)v4 bottomAnchor];
    v27 = [(UILabel *)v4->_travelTimeLabel bottomAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v28 = [v26 constraintGreaterThanOrEqualToAnchor:v27 constant:?];

    v57 = v28;
    LODWORD(v29) = 1144750080;
    [v28 setPriority:v29];
    v30 = [(UIView *)v4->_colorBarView bottomAnchor];
    v31 = [(EKDayOccurrenceTravelTimeView *)v4 bottomAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v70 = [v30 constraintEqualToAnchor:v31 constant:-v32];

    LODWORD(v33) = 1144750080;
    [v70 setPriority:v33];
    v59 = MEMORY[0x1E696ACD8];
    v72[0] = v70;
    v69 = [(UIView *)v4->_colorBarView leadingAnchor];
    v68 = [(EKDayOccurrenceTravelTimeView *)v4 leadingAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v67 = [v69 constraintEqualToAnchor:v68 constant:?];
    v72[1] = v67;
    v66 = [(UIView *)v4->_colorBarView widthAnchor];
    [MEMORY[0x1E6993420] colorBarThickness];
    v65 = [v66 constraintEqualToConstant:?];
    v72[2] = v65;
    v64 = [(UIView *)v4->_colorBarView topAnchor];
    v63 = [(EKDayOccurrenceTravelTimeView *)v4 topAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v62 = [v64 constraintEqualToAnchor:v63 constant:?];
    v72[3] = v62;
    v61 = [(UIImageView *)v4->_travelTimeIcon leadingAnchor];
    v60 = [(UIView *)v4->_colorBarView trailingAnchor];
    [MEMORY[0x1E6993420] occurrencePadding];
    v58 = [v61 constraintEqualToAnchor:v60 constant:?];
    v72[4] = v58;
    v56 = [(UIImageView *)v4->_travelTimeIcon topAnchor];
    v55 = [(UIView *)v4->_colorBarView topAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v72[5] = v54;
    v53 = [(UILabel *)v4->_travelTimeLabel leadingAnchor];
    v52 = [(UIImageView *)v4->_travelTimeIcon trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52 constant:3.0];
    v72[6] = v51;
    v49 = [(UILabel *)v4->_travelTimeLabel topAnchor];
    v50 = [(EKDayOccurrenceTravelTimeView *)v4 colorBarView];
    v48 = [v50 topAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v72[7] = v47;
    v72[8] = v28;
    v46 = [(UIView *)v4->_horizontalLineView leadingAnchor];
    v45 = [(EKDayOccurrenceTravelTimeView *)v4 leadingAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v72[9] = v44;
    v34 = [(UIView *)v4->_horizontalLineView trailingAnchor];
    v35 = [(EKDayOccurrenceTravelTimeView *)v4 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v72[10] = v36;
    v37 = [(UIView *)v4->_horizontalLineView heightAnchor];
    CalRoundToScreenScale(0.5);
    v38 = [v37 constraintEqualToConstant:?];
    v72[11] = v38;
    v39 = [(UIView *)v4->_horizontalLineView bottomAnchor];
    v40 = [(EKDayOccurrenceTravelTimeView *)v4 bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v72[12] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:13];
    [v59 activateConstraints:v42];
  }

  return v4;
}

- (EKDayOccurrenceTravelTimeView)initWithReusableTravelTimeView:(id)a3
{
  v4 = a3;
  [v4 frame];
  v5 = [(EKDayOccurrenceTravelTimeView *)self initWithFrame:?];
  if (v5)
  {
    v6 = [v4 elementColor];
    [(EKDayOccurrenceTravelTimeView *)v5 setElementColor:v6];

    v7 = [v4 lineColor];
    [(EKDayOccurrenceTravelTimeView *)v5 setLineColor:v7];

    -[EKDayOccurrenceTravelTimeView setRoutingMode:](v5, "setRoutingMode:", [v4 routingMode]);
  }

  return v5;
}

+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4
{
  v4 = [MEMORY[0x1E6993418] defaultOccurrenceSecondaryTextFont];
  [v4 lineHeight];
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

- (void)setElementColor:(id)a3
{
  v5 = a3;
  if (self->_elementColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_elementColor, a3);
    [(EKDayOccurrenceTravelTimeView *)self _updateStringsColorsAndConstraintConstants];
    v5 = v6;
  }
}

- (void)setColorBarColor:(id)a3
{
  v5 = a3;
  if (self->_colorBarColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_colorBarColor, a3);
    [(EKDayOccurrenceTravelTimeView *)self _updateStringsColorsAndConstraintConstants];
    v5 = v6;
  }
}

- (void)setLineColor:(id)a3
{
  v5 = a3;
  if (self->_lineColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_lineColor, a3);
    [(EKDayOccurrenceTravelTimeView *)self _updateStringsColorsAndConstraintConstants];
    v5 = v6;
  }
}

- (void)setRoutingMode:(int64_t)a3
{
  if (self->_routingMode != a3)
  {
    self->_routingMode = a3;
    [(EKDayOccurrenceTravelTimeView *)self _updateStringsColorsAndConstraintConstants];
  }
}

- (id)_travelTimeIconForTravelModeWithColor:(id)a3
{
  v4 = a3;
  if (self->_routingMode == -1)
  {
    routingMode = 0;
  }

  else
  {
    routingMode = self->_routingMode;
  }

  v6 = [s_iconCache objectAtIndexedSubscript:routingMode];
  v7 = [v6 objectForKey:v4];

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
  v7 = [v8 imageWithTintColor:v4 renderingMode:1];
  if (v7)
  {
    v10 = [s_iconCache objectAtIndexedSubscript:routingMode];
    [v10 setObject:v7 forKey:v4];
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