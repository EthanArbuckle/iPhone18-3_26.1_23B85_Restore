@interface _SFSettingsAlertItemBackgroundView
- (_SFSettingsAlertItemBackgroundView)initWithFrame:(CGRect)frame;
- (id)_highlightEffect;
- (void)setMode:(int64_t)mode;
- (void)updateConstraints;
@end

@implementation _SFSettingsAlertItemBackgroundView

- (_SFSettingsAlertItemBackgroundView)initWithFrame:(CGRect)frame
{
  v40[1] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = _SFSettingsAlertItemBackgroundView;
  v3 = [(_SFSettingsAlertItemBackgroundView *)&v39 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    _highlightEffect = [(_SFSettingsAlertItemBackgroundView *)v3 _highlightEffect];
    v6 = [v4 initWithEffect:_highlightEffect];
    highlightView = v3->_highlightView;
    v3->_highlightView = v6;

    [(UIVisualEffectView *)v3->_highlightView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SFSettingsAlertItemBackgroundView *)v3 bounds];
    [(UIVisualEffectView *)v3->_highlightView setFrame:?];
    [(UIVisualEffectView *)v3->_highlightView setHidden:1];
    contentView = [(UIVisualEffectView *)v3->_highlightView contentView];
    tintColor = [contentView tintColor];
    contentView2 = [(UIVisualEffectView *)v3->_highlightView contentView];
    [contentView2 setBackgroundColor:tintColor];

    [(_SFSettingsAlertItemBackgroundView *)v3 addSubview:v3->_highlightView];
    topAnchor = [(UIVisualEffectView *)v3->_highlightView topAnchor];
    topAnchor2 = [(_SFSettingsAlertItemBackgroundView *)v3 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    highlightToTopConstraint = v3->_highlightToTopConstraint;
    v3->_highlightToTopConstraint = v13;

    bottomAnchor = [(UIVisualEffectView *)v3->_highlightView bottomAnchor];
    bottomAnchor2 = [(_SFSettingsAlertItemBackgroundView *)v3 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    highlightToBottomConstraint = v3->_highlightToBottomConstraint;
    v3->_highlightToBottomConstraint = v17;

    leadingAnchor = [(UIVisualEffectView *)v3->_highlightView leadingAnchor];
    leadingAnchor2 = [(_SFSettingsAlertItemBackgroundView *)v3 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    highlightToLeadingConstraint = v3->_highlightToLeadingConstraint;
    v3->_highlightToLeadingConstraint = v21;

    leadingAnchor3 = [(UIVisualEffectView *)v3->_highlightView leadingAnchor];
    leadingAnchor4 = [(_SFSettingsAlertItemBackgroundView *)v3 leadingAnchor];
    v25 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor4 multiplier:1.0];
    highlightToLeadingWithSpaceConstraint = v3->_highlightToLeadingWithSpaceConstraint;
    v3->_highlightToLeadingWithSpaceConstraint = v25;

    heightAnchor = [(UIVisualEffectView *)v3->_highlightView heightAnchor];
    _SFOnePixel();
    v28 = [heightAnchor constraintEqualToConstant:?];
    highlightPixelHeightConstraint = v3->_highlightPixelHeightConstraint;
    v3->_highlightPixelHeightConstraint = v28;

    widthAnchor = [(UIVisualEffectView *)v3->_highlightView widthAnchor];
    _SFOnePixel();
    v31 = [widthAnchor constraintEqualToConstant:?];
    highlightPixelWidthConstraint = v3->_highlightPixelWidthConstraint;
    v3->_highlightPixelWidthConstraint = v31;

    trailingAnchor = [(UIVisualEffectView *)v3->_highlightView trailingAnchor];
    trailingAnchor2 = [(_SFSettingsAlertItemBackgroundView *)v3 trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[0] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [(_SFSettingsAlertItemBackgroundView *)v3 addConstraints:v36];

    [(_SFSettingsAlertItemBackgroundView *)v3 setUserInteractionEnabled:0];
    v37 = v3;
  }

  return v3;
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    _highlightEffect = [(_SFSettingsAlertItemBackgroundView *)self _highlightEffect];
    [(UIVisualEffectView *)self->_highlightView setEffect:_highlightEffect];

    [(_SFSettingsAlertItemBackgroundView *)self setNeedsUpdateConstraints];
  }
}

- (id)_highlightEffect
{
  mode = self->_mode;
  if (mode > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1D47DE770[mode];
  }

  v4 = MEMORY[0x1E69DD248];
  _sf_defaultPopoverBackgroundEffect = [MEMORY[0x1E69DC730] _sf_defaultPopoverBackgroundEffect];
  v6 = [v4 effectForBlurEffect:_sf_defaultPopoverBackgroundEffect style:v3];

  return v6;
}

- (void)updateConstraints
{
  v27[6] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = _SFSettingsAlertItemBackgroundView;
  [(_SFSettingsAlertItemBackgroundView *)&v20 updateConstraints];
  v3 = MEMORY[0x1E696ACD8];
  p_highlightToTopConstraint = &self->_highlightToTopConstraint;
  p_highlightToBottomConstraint = &self->_highlightToBottomConstraint;
  highlightToBottomConstraint = self->_highlightToBottomConstraint;
  v27[0] = self->_highlightToTopConstraint;
  v27[1] = highlightToBottomConstraint;
  p_highlightToLeadingConstraint = &self->_highlightToLeadingConstraint;
  p_highlightToLeadingWithSpaceConstraint = &self->_highlightToLeadingWithSpaceConstraint;
  highlightToLeadingWithSpaceConstraint = self->_highlightToLeadingWithSpaceConstraint;
  v27[2] = self->_highlightToLeadingConstraint;
  v27[3] = highlightToLeadingWithSpaceConstraint;
  p_highlightPixelWidthConstraint = &self->_highlightPixelWidthConstraint;
  p_highlightPixelHeightConstraint = &self->_highlightPixelHeightConstraint;
  highlightPixelHeightConstraint = self->_highlightPixelHeightConstraint;
  v27[4] = self->_highlightPixelWidthConstraint;
  v27[5] = highlightPixelHeightConstraint;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:6];
  [v3 deactivateConstraints:v13];

  [(UIVisualEffectView *)self->_highlightView setHidden:self->_mode == 0];
  [(_SFSettingsAlertItemBackgroundView *)self setBackgroundColor:0];
  if ([MEMORY[0x1E69C8880] isBrowsingAssistantEnabled])
  {
    mode = self->_mode;
    if (mode != 1)
    {
      goto LABEL_5;
    }

    [(UIVisualEffectView *)self->_highlightView setHidden:1];
    systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
    [(_SFSettingsAlertItemBackgroundView *)self setBackgroundColor:systemGray4Color];
  }

  mode = self->_mode;
LABEL_5:
  if (mode > 3)
  {
    switch(mode)
    {
      case 4:
        v16 = MEMORY[0x1E696ACD8];
        v24 = *p_highlightToBottomConstraint;
        v17 = &v24;
        break;
      case 5:
        v16 = MEMORY[0x1E696ACD8];
        v23 = *p_highlightToBottomConstraint;
        v17 = &v23;
LABEL_18:
        p_highlightToLeadingWithSpaceConstraint = p_highlightToLeadingConstraint;
        break;
      case 6:
        v16 = MEMORY[0x1E696ACD8];
        v22 = *p_highlightToTopConstraint;
        v17 = &v22;
        p_highlightPixelHeightConstraint = p_highlightToBottomConstraint;
        p_highlightToLeadingWithSpaceConstraint = p_highlightPixelWidthConstraint;
        break;
      default:
        return;
    }
  }

  else if (mode < 2)
  {
    v16 = MEMORY[0x1E696ACD8];
    v21 = *p_highlightToLeadingConstraint;
    v17 = &v21;
    p_highlightPixelHeightConstraint = p_highlightToTopConstraint;
    p_highlightToLeadingWithSpaceConstraint = p_highlightToBottomConstraint;
  }

  else
  {
    if (mode != 2)
    {
      if (mode != 3)
      {
        return;
      }

      v16 = MEMORY[0x1E696ACD8];
      v25 = *p_highlightToTopConstraint;
      v17 = &v25;
      goto LABEL_18;
    }

    v16 = MEMORY[0x1E696ACD8];
    v26 = *p_highlightToTopConstraint;
    v17 = &v26;
  }

  v18 = *p_highlightToLeadingWithSpaceConstraint;
  v17[1] = *p_highlightPixelHeightConstraint;
  v17[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  [v16 activateConstraints:v19];
}

@end