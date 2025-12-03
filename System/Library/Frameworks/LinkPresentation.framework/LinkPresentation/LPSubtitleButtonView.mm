@interface LPSubtitleButtonView
- (CGSize)_layoutButtonForSize:(CGSize)size applyingLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPSubtitleButtonView)initWithHost:(id)host buttonProperties:(id)properties style:(id)style;
- (void)_buildSubviewsIfNeeded;
- (void)_updateAttributedTitle;
- (void)buttonPressed:(id)pressed;
- (void)layoutComponentView;
- (void)sizeToFit;
- (void)updateIndicator;
@end

@implementation LPSubtitleButtonView

- (LPSubtitleButtonView)initWithHost:(id)host buttonProperties:(id)properties style:(id)style
{
  propertiesCopy = properties;
  styleCopy = style;
  v15.receiver = self;
  v15.super_class = LPSubtitleButtonView;
  v11 = [(LPComponentView *)&v15 initWithHost:host];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_buttonProperties, properties);
    objc_storeStrong(&v12->_style, style);
    v13 = v12;
  }

  return v12;
}

- (void)_updateAttributedTitle
{
  v32[1] = *MEMORY[0x1E69E9840];
  attributedText = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties attributedText];

  if (attributedText)
  {
    button = self->_button;
    attributedText2 = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties attributedText];
    [(UIButton *)button setAttributedTitle:attributedText2 forState:0];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AD40]);
    text = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties text];
    v7 = [v5 initWithString:text];

    if (![(LPCaptionButtonPresentationProperties *)self->_buttonProperties type]|| [(LPCaptionButtonPresentationProperties *)self->_buttonProperties type]== 2)
    {
      font = [(LPTextViewStyle *)self->_style font];
      host = [(LPComponentView *)self host];
      v9 = [host showingDisclosureViewForComponentView:self];
      v10 = v7;
      v11 = font;
      fontDescriptor = [v11 fontDescriptor];
      v27 = [fontDescriptor objectForKey:*MEMORY[0x1E69DB8F0]];
      doubleValue = [v27 objectForKeyedSubscript:*MEMORY[0x1E69DB990]];
      v26 = doubleValue;
      if (doubleValue)
      {
        doubleValue = [doubleValue doubleValue];
      }

      else
      {
        v13.n128_u64[0] = *MEMORY[0x1E69DB978];
      }

      v14 = MEMORY[0x1B270A7C0](doubleValue, v13);
      v15 = MEMORY[0x1E69DCAD8];
      [v11 pointSize];
      v16 = [v15 configurationWithPointSize:v14 weight:1 scale:?];
      if (v9)
      {
        platformImage = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:@"chevron.down"];
      }

      else
      {
        v18 = +[LPResources chevron];
        platformImage = [v18 platformImage];
      }

      v19 = [platformImage _lp_imageByApplyingSymbolConfiguration:v16];

      v20 = [v19 imageWithRenderingMode:2];

      v21 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      [v21 setImage:v20];
      v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
      [v10 appendAttributedString:v22];

      v23 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v21];
      [v10 appendAttributedString:v23];
    }

    v31 = *MEMORY[0x1E69DB648];
    font2 = [(LPTextViewStyle *)self->_style font];
    v32[0] = font2;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v7 addAttributes:v25 range:{0, objc_msgSend(v7, "length")}];

    [(UIButton *)self->_button setAttributedTitle:v7 forState:0];
  }
}

- (void)_buildSubviewsIfNeeded
{
  if (!self->_button)
  {
    v3 = [MEMORY[0x1E69DC738] buttonWithType:1];
    button = self->_button;
    self->_button = v3;

    foregroundColor = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties foregroundColor];

    if (foregroundColor)
    {
      v6 = self->_button;
      foregroundColor2 = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties foregroundColor];
      [(UIButton *)v6 setTitleColor:foregroundColor2 forState:0];
    }

    [(UIButton *)self->_button _setDisableAutomaticTitleAnimations:1];
    [(LPSubtitleButtonView *)self _updateAttributedTitle];
    titleLabel = [(UIButton *)self->_button titleLabel];
    [titleLabel setBaselineAdjustment:2];

    [(UIButton *)self->_button addTarget:self action:sel_buttonPressed_ forControlEvents:64];
    v9 = self->_button;

    [(LPSubtitleButtonView *)self addSubview:v9];
  }
}

- (void)layoutComponentView
{
  [(LPSubtitleButtonView *)self _buildSubviewsIfNeeded];
  [(LPSubtitleButtonView *)self bounds];

  [(LPSubtitleButtonView *)self _layoutButtonForSize:1 applyingLayout:v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(LPSubtitleButtonView *)self _buildSubviewsIfNeeded];

  [(LPSubtitleButtonView *)self _layoutButtonForSize:0 applyingLayout:width, height];
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)_layoutButtonForSize:(CGSize)size applyingLayout:(BOOL)layout
{
  height = size.height;
  width = size.width;
  if (layout)
  {
    [(UIButton *)self->_button setFrame:0.0, 0.0, size.width, size.height];
  }

  button = self->_button;

  [(UIButton *)button sizeThatFits:width, height];
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)sizeToFit
{
  [(LPSubtitleButtonView *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  [(LPSubtitleButtonView *)self setFrame:0.0, 0.0, v3, v4];
}

- (void)buttonPressed:(id)pressed
{
  host = [(LPComponentView *)self host];
  [host componentViewDidTapCaptionButton:self buttonType:{-[LPCaptionButtonPresentationProperties type](self->_buttonProperties, "type")}];

  callback = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties callback];

  if (callback)
  {
    callback2 = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties callback];
    callback2[2]();
  }
}

- (void)updateIndicator
{
  [(LPSubtitleButtonView *)self _updateAttributedTitle];
  host = [(LPComponentView *)self host];
  [host componentViewDidChangeIntrinsicContentSize:self];
}

@end