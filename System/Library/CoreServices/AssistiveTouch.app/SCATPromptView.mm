@interface SCATPromptView
- (void)_updatePromptBackdropViewMask;
- (void)layoutSubviews;
- (void)setPrompt:(id)prompt;
@end

@implementation SCATPromptView

- (void)setPrompt:(id)prompt
{
  promptCopy = prompt;
  prompt = [(SCATPromptView *)self prompt];
  v5 = [prompt isEqualToString:promptCopy];

  v6 = promptCopy;
  if ((v5 & 1) == 0)
  {
    if ([promptCopy length])
    {
      v7 = +[SCATStyleProvider sharedStyleProvider];
      if (!self->_backdropView)
      {
        v8 = [UIBlurEffect effectWithStyle:9];
        if (_UISolariumEnabled())
        {

          v8 = 0;
        }

        v9 = [[UIVisualEffectView alloc] initWithEffect:v8];
        backdropView = self->_backdropView;
        self->_backdropView = v9;

        [(SCATPromptView *)self _setOverrideUserInterfaceStyle:2];
        [(SCATPromptView *)self insertSubview:self->_backdropView atIndex:0];
      }

      promptLabel = self->_promptLabel;
      if (!promptLabel)
      {
        v12 = objc_alloc_init(UILabel);
        v13 = self->_promptLabel;
        self->_promptLabel = v12;

        [(UILabel *)self->_promptLabel setTextAlignment:1];
        pointPickerPromptTextColor = [v7 pointPickerPromptTextColor];
        [(UILabel *)self->_promptLabel setTextColor:pointPickerPromptTextColor];

        pointPickerPromptFont = [v7 pointPickerPromptFont];
        [(UILabel *)self->_promptLabel setFont:pointPickerPromptFont];

        [(UILabel *)self->_promptLabel setNumberOfLines:0];
        [(SCATPromptView *)self addSubview:self->_promptLabel];
        promptLabel = self->_promptLabel;
      }

      [(UILabel *)promptLabel setText:promptCopy];
      [(SCATPromptView *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)self->_promptLabel removeFromSuperview];
      v16 = self->_promptLabel;
      self->_promptLabel = 0;

      [(UIVisualEffectView *)self->_backdropView removeFromSuperview];
      v7 = self->_backdropView;
      self->_backdropView = 0;
    }

    v6 = promptCopy;
  }
}

- (void)_updatePromptBackdropViewMask
{
  v3 = +[SCATStyleProvider sharedStyleProvider];
  [(UIVisualEffectView *)self->_backdropView bounds];
  [v3 pointPickerPromptCornerRadiusForSize:{v4, v5}];
  v7 = v6;

  if (_UISolariumEnabled())
  {
    layer = [(UIVisualEffectView *)self->_backdropView layer];
    [layer setCornerRadius:v7];

    backdropView = self->_backdropView;

    [(UIVisualEffectView *)backdropView ax_setWantsGlassAppearance:1];
  }
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SCATPromptView;
  [(SCATPromptView *)&v22 layoutSubviews];
  if (self->_promptLabel)
  {
    [(SCATPromptView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = +[SCATStyleProvider sharedStyleProvider];
    [v11 pointPickerPromptPadding];
    v13 = v12;

    [(UILabel *)self->_promptLabel sizeThatFits:v8 + v13 * -2.0, v10 + v13 * -2.0];
    v15 = v14;
    v17 = v16;
    v18 = v4 + (v8 - v14) * 0.5;
    position = [(SCATPromptView *)self position];
    v20 = v6 + v10 * 0.5;
    if (!position)
    {
      v20 = v6;
    }

    v23.origin.x = v18;
    v23.origin.y = v20 + (v10 * 0.5 - v17) * 0.5;
    y = v23.origin.y;
    v23.size.width = v15;
    v23.size.height = v17;
    v24 = CGRectIntegral(v23);
    [(UILabel *)self->_promptLabel setFrame:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
    v25.size.width = v15 + v13 * 2.0;
    v25.size.height = v17 + v13 * 2.0;
    v25.origin.x = v18 - v13;
    v25.origin.y = y - v13;
    v26 = CGRectIntegral(v25);
    [(UIVisualEffectView *)self->_backdropView setFrame:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
    [(SCATPromptView *)self _updatePromptBackdropViewMask];
  }
}

@end