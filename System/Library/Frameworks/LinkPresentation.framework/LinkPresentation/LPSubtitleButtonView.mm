@interface LPSubtitleButtonView
- (CGSize)_layoutButtonForSize:(CGSize)a3 applyingLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPSubtitleButtonView)initWithHost:(id)a3 buttonProperties:(id)a4 style:(id)a5;
- (void)_buildSubviewsIfNeeded;
- (void)_updateAttributedTitle;
- (void)buttonPressed:(id)a3;
- (void)layoutComponentView;
- (void)sizeToFit;
- (void)updateIndicator;
@end

@implementation LPSubtitleButtonView

- (LPSubtitleButtonView)initWithHost:(id)a3 buttonProperties:(id)a4 style:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = LPSubtitleButtonView;
  v11 = [(LPComponentView *)&v15 initWithHost:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_buttonProperties, a4);
    objc_storeStrong(&v12->_style, a5);
    v13 = v12;
  }

  return v12;
}

- (void)_updateAttributedTitle
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties attributedText];

  if (v3)
  {
    button = self->_button;
    v29 = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties attributedText];
    [(UIButton *)button setAttributedTitle:v29 forState:0];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AD40]);
    v6 = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties text];
    v7 = [v5 initWithString:v6];

    if (![(LPCaptionButtonPresentationProperties *)self->_buttonProperties type]|| [(LPCaptionButtonPresentationProperties *)self->_buttonProperties type]== 2)
    {
      v8 = [(LPTextViewStyle *)self->_style font];
      v30 = [(LPComponentView *)self host];
      v9 = [v30 showingDisclosureViewForComponentView:self];
      v10 = v7;
      v11 = v8;
      v28 = [v11 fontDescriptor];
      v27 = [v28 objectForKey:*MEMORY[0x1E69DB8F0]];
      v12 = [v27 objectForKeyedSubscript:*MEMORY[0x1E69DB990]];
      v26 = v12;
      if (v12)
      {
        v12 = [v12 doubleValue];
      }

      else
      {
        v13.n128_u64[0] = *MEMORY[0x1E69DB978];
      }

      v14 = MEMORY[0x1B270A7C0](v12, v13);
      v15 = MEMORY[0x1E69DCAD8];
      [v11 pointSize];
      v16 = [v15 configurationWithPointSize:v14 weight:1 scale:?];
      if (v9)
      {
        v17 = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:@"chevron.down"];
      }

      else
      {
        v18 = +[LPResources chevron];
        v17 = [v18 platformImage];
      }

      v19 = [v17 _lp_imageByApplyingSymbolConfiguration:v16];

      v20 = [v19 imageWithRenderingMode:2];

      v21 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      [v21 setImage:v20];
      v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
      [v10 appendAttributedString:v22];

      v23 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v21];
      [v10 appendAttributedString:v23];
    }

    v31 = *MEMORY[0x1E69DB648];
    v24 = [(LPTextViewStyle *)self->_style font];
    v32[0] = v24;
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

    v5 = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties foregroundColor];

    if (v5)
    {
      v6 = self->_button;
      v7 = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties foregroundColor];
      [(UIButton *)v6 setTitleColor:v7 forState:0];
    }

    [(UIButton *)self->_button _setDisableAutomaticTitleAnimations:1];
    [(LPSubtitleButtonView *)self _updateAttributedTitle];
    v8 = [(UIButton *)self->_button titleLabel];
    [v8 setBaselineAdjustment:2];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(LPSubtitleButtonView *)self _buildSubviewsIfNeeded];

  [(LPSubtitleButtonView *)self _layoutButtonForSize:0 applyingLayout:width, height];
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)_layoutButtonForSize:(CGSize)a3 applyingLayout:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    [(UIButton *)self->_button setFrame:0.0, 0.0, a3.width, a3.height];
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

- (void)buttonPressed:(id)a3
{
  v5 = [(LPComponentView *)self host];
  [v5 componentViewDidTapCaptionButton:self buttonType:{-[LPCaptionButtonPresentationProperties type](self->_buttonProperties, "type")}];

  v4 = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties callback];

  if (v4)
  {
    v6 = [(LPCaptionButtonPresentationProperties *)self->_buttonProperties callback];
    v6[2]();
  }
}

- (void)updateIndicator
{
  [(LPSubtitleButtonView *)self _updateAttributedTitle];
  v3 = [(LPComponentView *)self host];
  [v3 componentViewDidChangeIntrinsicContentSize:self];
}

@end