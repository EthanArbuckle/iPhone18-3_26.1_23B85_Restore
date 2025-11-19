@interface EKUITodayCirclePulseView
- (CGPoint)textOffsetFromCircle;
- (EKUITodayCirclePulseView)initWithFrame:(CGRect)a3;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
- (id)_overlayLabel;
- (void)_layoutSubviews;
- (void)_updateLabelAttributedString;
- (void)_updateOverlayLabelAttributedString;
- (void)pulse:(id)a3;
- (void)setAttributes:(id)a3;
- (void)setOverlayAttributes:(id)a3;
- (void)setOverlayFont:(id)a3;
- (void)setOverlayString:(id)a3;
- (void)setString:(id)a3;
@end

@implementation EKUITodayCirclePulseView

- (EKUITodayCirclePulseView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = EKUITodayCirclePulseView;
  v3 = [(EKUITodayCirclePulseView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(EKUITodayCirclePulseView *)v3 setBackgroundColor:v4];

    [(EKUITodayCirclePulseView *)v3 setClipsToBounds:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundContainer = v3->_backgroundContainer;
    v3->_backgroundContainer = v5;

    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v3->_backgroundContainer setBackgroundColor:v7];

    v8 = objc_alloc_init(TodayCirclePulseBackground);
    background = v3->_background;
    v3->_background = v8;

    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(TodayCirclePulseBackground *)v3->_background setBackgroundColor:v10];

    [(TodayCirclePulseBackground *)v3->_background setAutoresizingMask:18];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v11;

    v13 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v3->_label setBackgroundColor:v13];

    v14 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v3->_label setTextColor:v14];

    [(UILabel *)v3->_label setTextAlignment:1];
    [(UIView *)v3->_backgroundContainer addSubview:v3->_background];
    [(EKUITodayCirclePulseView *)v3 addSubview:v3->_backgroundContainer];
    [(EKUITodayCirclePulseView *)v3 addSubview:v3->_label];
  }

  return v3;
}

- (void)setString:(id)a3
{
  [(UILabel *)self->_label setText:a3];
  [(EKUITodayCirclePulseView *)self _updateLabelAttributedString];

  [(EKUITodayCirclePulseView *)self setNeedsLayout];
}

- (void)setAttributes:(id)a3
{
  objc_storeStrong(&self->_attributes, a3);
  [(EKUITodayCirclePulseView *)self _updateLabelAttributedString];

  [(EKUITodayCirclePulseView *)self setNeedsLayout];
}

- (void)_updateLabelAttributedString
{
  v3 = [(UILabel *)self->_label text];
  if (v3)
  {
  }

  else if (!self->_attributes)
  {
    return;
  }

  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = [(UILabel *)self->_label text];
  v5 = [v4 initWithString:v6 attributes:self->_attributes];
  [(UILabel *)self->_label setAttributedText:v5];
}

- (id)_overlayLabel
{
  overlayLabel = self->_overlayLabel;
  if (!overlayLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_overlayLabel;
    self->_overlayLabel = v4;

    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_overlayLabel setBackgroundColor:v6];

    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_overlayLabel setTextColor:v7];

    [(UILabel *)self->_overlayLabel setTextAlignment:1];
    [(EKUITodayCirclePulseView *)self addSubview:self->_overlayLabel];
    overlayLabel = self->_overlayLabel;
  }

  return overlayLabel;
}

- (void)setOverlayString:(id)a3
{
  v4 = a3;
  v5 = [(EKUITodayCirclePulseView *)self _overlayLabel];
  [v5 setText:v4];

  [(EKUITodayCirclePulseView *)self _updateOverlayLabelAttributedString];

  [(EKUITodayCirclePulseView *)self setNeedsLayout];
}

- (void)setOverlayFont:(id)a3
{
  v4 = a3;
  v5 = [(EKUITodayCirclePulseView *)self _overlayLabel];
  [v5 setFont:v4];
}

- (void)setOverlayAttributes:(id)a3
{
  objc_storeStrong(&self->_overlayAttributes, a3);
  [(EKUITodayCirclePulseView *)self _updateOverlayLabelAttributedString];

  [(EKUITodayCirclePulseView *)self setNeedsLayout];
}

- (void)_updateOverlayLabelAttributedString
{
  v3 = [(UILabel *)self->_overlayLabel text];
  if (v3)
  {
    overlayAttributes = self->_overlayAttributes;

    if (overlayAttributes)
    {
      v5 = objc_alloc(MEMORY[0x1E696AAB0]);
      v7 = [(UILabel *)self->_overlayLabel text];
      v6 = [v5 initWithString:v7 attributes:self->_overlayAttributes];
      [(UILabel *)self->_overlayLabel setAttributedText:v6];
    }
  }
}

- (void)_layoutSubviews
{
  [(EKUITodayCirclePulseView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_label sizeToFit];
  [(UILabel *)self->_label frame];
  v12 = v11;
  v50 = v13;
  v14 = v8;
  v15 = v4;
  if (![(EKUITodayCirclePulseView *)self dontApplyCenteringOffset])
  {
    v16 = [(UILabel *)self->_label text];
    v17 = [(UILabel *)self->_label font];
    v15 = (v8 - v12) * 0.5 + CalOffsetToCenterNumberWithFont(v16, v17);

    v14 = v12;
  }

  [(EKUITodayCirclePulseView *)self textFrameWidthAdjustment];
  v19 = v18;
  textYOffset = self->_textYOffset;
  if ([(EKUITodayCirclePulseView *)self circleShouldFillFrame])
  {
    v47 = v6;
    v48 = v4;
    v49 = v10;
    v46 = v8;
  }

  else
  {
    [(EKUITodayCirclePulseView *)self circleDiameter];
    v46 = v21;
    [(EKUITodayCirclePulseView *)self circleDiameter];
    v49 = v22;
    [(EKUITodayCirclePulseView *)self circleDiameter];
    v48 = (v8 - v23) * 0.5;
    [(EKUITodayCirclePulseView *)self circleDiameter];
    v47 = textYOffset + (v50 - v24) * 0.5;
  }

  v25 = v14 + v19;
  [(EKUITodayCirclePulseView *)self textOffsetFromCircle];
  v27 = v15 + v26;
  [(EKUITodayCirclePulseView *)self textOffsetFromCircle];
  v29 = textYOffset + v28;
  v30 = [(UILabel *)self->_overlayLabel text];
  v31 = [v30 length];

  if (v31)
  {
    v45 = v8;
    [(UILabel *)self->_overlayLabel sizeToFit];
    [(UILabel *)self->_overlayLabel frame];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    if (![(EKUITodayCirclePulseView *)self usesTextYOffsetWithoutAdjustmentForOverlay])
    {
      v52.origin.x = v33;
      v52.origin.y = v35;
      v52.size.width = v37;
      v52.size.height = v39;
      v29 = v29 - ((CGRectGetHeight(v52) + -4.0) * 0.5 + 2.0);
    }

    v40 = v50;
    v53.origin.x = v27;
    v53.origin.y = v29;
    v53.size.width = v25;
    v53.size.height = v50;
    v41 = CGRectGetMaxY(v53) + -2.5;
    v54.origin.x = v33;
    v54.origin.y = v41;
    v54.size.width = v37;
    v54.size.height = v39;
    Width = CGRectGetWidth(v54);
    [(UILabel *)self->_overlayLabel setFrame:CalRoundRectToScreenScale((v45 - Width) * 0.5, v41, v37, v39)];
  }

  else
  {
    v40 = v50;
  }

  [(UILabel *)self->_label setFrame:CalRoundRectToScreenScale(v27, v29, v25, v40)];
  v43 = CalRoundRectToScreenScale(v48, v47, v46, v49);
  backgroundContainer = self->_backgroundContainer;

  [(UIView *)backgroundContainer setFrame:v43];
}

- (void)pulse:(id)a3
{
  v4 = a3;
  [(EKUITodayCirclePulseView *)self _layoutSubviews];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__EKUITodayCirclePulseView_pulse___block_invoke;
  v10[3] = &unk_1E843EC60;
  v10[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v10 options:0 animations:0.23 completion:0.07];
  v5 = MEMORY[0x1E69DD250];
  v8 = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__EKUITodayCirclePulseView_pulse___block_invoke_2;
  v9[3] = &unk_1E843EC60;
  v9[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__EKUITodayCirclePulseView_pulse___block_invoke_3;
  v7[3] = &unk_1E843F2D0;
  v6 = v4;
  [v5 _animateWithDuration:196608 delay:self options:v9 factory:v7 animations:1.29 completion:0.0];
}

void __34__EKUITodayCirclePulseView_pulse___block_invoke(uint64_t a1)
{
  v2 = *(MEMORY[0x1E69792E8] + 80);
  *&v7.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v7.m33 = v2;
  v3 = *(MEMORY[0x1E69792E8] + 112);
  *&v7.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v7.m43 = v3;
  v4 = *(MEMORY[0x1E69792E8] + 16);
  *&v7.m11 = *MEMORY[0x1E69792E8];
  *&v7.m13 = v4;
  v5 = *(MEMORY[0x1E69792E8] + 48);
  *&v7.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v7.m23 = v5;
  CATransform3DScale(&v8, &v7, 0.84, 0.84, 1.0);
  v6 = [*(*(a1 + 32) + 408) layer];
  v7 = v8;
  [v6 setTransform:&v7];
}

void __34__EKUITodayCirclePulseView_pulse___block_invoke_2(uint64_t a1)
{
  v2 = *(MEMORY[0x1E69792E8] + 80);
  *&v7.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v7.m33 = v2;
  v3 = *(MEMORY[0x1E69792E8] + 112);
  *&v7.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v7.m43 = v3;
  v4 = *(MEMORY[0x1E69792E8] + 16);
  *&v7.m11 = *MEMORY[0x1E69792E8];
  *&v7.m13 = v4;
  v5 = *(MEMORY[0x1E69792E8] + 48);
  *&v7.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v7.m23 = v5;
  CATransform3DScale(&v8, &v7, 1.19047619, 1.19047619, 1.0);
  v6 = [*(*(a1 + 32) + 416) layer];
  v7 = v8;
  [v6 setTransform:&v7];
}

uint64_t __34__EKUITodayCirclePulseView_pulse___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v4 = [MEMORY[0x1E69794A8] animationWithKeyPath:a4];
  [v4 setMass:1.2];
  [v4 setStiffness:400.0];
  [v4 setDamping:16.0];

  return v4;
}

- (CGPoint)textOffsetFromCircle
{
  x = self->_textOffsetFromCircle.x;
  y = self->_textOffsetFromCircle.y;
  result.y = y;
  result.x = x;
  return result;
}

@end