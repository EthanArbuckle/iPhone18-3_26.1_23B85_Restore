@interface _SFSettingsAlertItemBackgroundView
- (_SFSettingsAlertItemBackgroundView)initWithFrame:(CGRect)a3;
- (id)_highlightEffect;
- (void)setMode:(int64_t)a3;
- (void)updateConstraints;
@end

@implementation _SFSettingsAlertItemBackgroundView

- (_SFSettingsAlertItemBackgroundView)initWithFrame:(CGRect)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = _SFSettingsAlertItemBackgroundView;
  v3 = [(_SFSettingsAlertItemBackgroundView *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    v5 = [(_SFSettingsAlertItemBackgroundView *)v3 _highlightEffect];
    v6 = [v4 initWithEffect:v5];
    highlightView = v3->_highlightView;
    v3->_highlightView = v6;

    [(UIVisualEffectView *)v3->_highlightView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SFSettingsAlertItemBackgroundView *)v3 bounds];
    [(UIVisualEffectView *)v3->_highlightView setFrame:?];
    [(UIVisualEffectView *)v3->_highlightView setHidden:1];
    v8 = [(UIVisualEffectView *)v3->_highlightView contentView];
    v9 = [v8 tintColor];
    v10 = [(UIVisualEffectView *)v3->_highlightView contentView];
    [v10 setBackgroundColor:v9];

    [(_SFSettingsAlertItemBackgroundView *)v3 addSubview:v3->_highlightView];
    v11 = [(UIVisualEffectView *)v3->_highlightView topAnchor];
    v12 = [(_SFSettingsAlertItemBackgroundView *)v3 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    highlightToTopConstraint = v3->_highlightToTopConstraint;
    v3->_highlightToTopConstraint = v13;

    v15 = [(UIVisualEffectView *)v3->_highlightView bottomAnchor];
    v16 = [(_SFSettingsAlertItemBackgroundView *)v3 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    highlightToBottomConstraint = v3->_highlightToBottomConstraint;
    v3->_highlightToBottomConstraint = v17;

    v19 = [(UIVisualEffectView *)v3->_highlightView leadingAnchor];
    v20 = [(_SFSettingsAlertItemBackgroundView *)v3 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    highlightToLeadingConstraint = v3->_highlightToLeadingConstraint;
    v3->_highlightToLeadingConstraint = v21;

    v23 = [(UIVisualEffectView *)v3->_highlightView leadingAnchor];
    v24 = [(_SFSettingsAlertItemBackgroundView *)v3 leadingAnchor];
    v25 = [v23 constraintEqualToSystemSpacingAfterAnchor:v24 multiplier:1.0];
    highlightToLeadingWithSpaceConstraint = v3->_highlightToLeadingWithSpaceConstraint;
    v3->_highlightToLeadingWithSpaceConstraint = v25;

    v27 = [(UIVisualEffectView *)v3->_highlightView heightAnchor];
    _SFOnePixel();
    v28 = [v27 constraintEqualToConstant:?];
    highlightPixelHeightConstraint = v3->_highlightPixelHeightConstraint;
    v3->_highlightPixelHeightConstraint = v28;

    v30 = [(UIVisualEffectView *)v3->_highlightView widthAnchor];
    _SFOnePixel();
    v31 = [v30 constraintEqualToConstant:?];
    highlightPixelWidthConstraint = v3->_highlightPixelWidthConstraint;
    v3->_highlightPixelWidthConstraint = v31;

    v33 = [(UIVisualEffectView *)v3->_highlightView trailingAnchor];
    v34 = [(_SFSettingsAlertItemBackgroundView *)v3 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    v40[0] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [(_SFSettingsAlertItemBackgroundView *)v3 addConstraints:v36];

    [(_SFSettingsAlertItemBackgroundView *)v3 setUserInteractionEnabled:0];
    v37 = v3;
  }

  return v3;
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    v5 = [(_SFSettingsAlertItemBackgroundView *)self _highlightEffect];
    [(UIVisualEffectView *)self->_highlightView setEffect:v5];

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
  v5 = [MEMORY[0x1E69DC730] _sf_defaultPopoverBackgroundEffect];
  v6 = [v4 effectForBlurEffect:v5 style:v3];

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
    v15 = [MEMORY[0x1E69DC888] systemGray4Color];
    [(_SFSettingsAlertItemBackgroundView *)self setBackgroundColor:v15];
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