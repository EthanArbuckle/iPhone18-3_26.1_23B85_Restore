@interface _UNMediaPlayPauseButton
- (_UNMediaPlayPauseButton)initWithFrame:(CGRect)a3 type:(int64_t)a4;
- (void)_updateBackground;
- (void)_updateBackgroundForAudioStyle;
- (void)_updateBackgroundForMovieStyle;
- (void)_updateSelected;
- (void)_updateSelectedForAudioStyle;
- (void)_updateSelectedForMovieStyle;
- (void)_updateSize;
- (void)_updateSizeForAudioStyle;
- (void)_updateSizeForMovieStyle;
- (void)_updateStyle;
- (void)_updateStyleForAudioStyle;
- (void)_updateStyleForMovieStyle;
- (void)_updateType;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
- (void)setType:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation _UNMediaPlayPauseButton

- (_UNMediaPlayPauseButton)initWithFrame:(CGRect)a3 type:(int64_t)a4
{
  v16.receiver = self;
  v16.super_class = _UNMediaPlayPauseButton;
  v5 = [(_UNMediaPlayPauseButton *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [_UNMaterialButton alloc];
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [(_UNMaterialButton *)v6 initWithFrame:*MEMORY[0x277CBF3A0], v8, v9, v10];
    button = v5->_button;
    v5->_button = v11;

    [(_UNMaterialButton *)v5->_button setContentMode:0];
    [(_UNMaterialButton *)v5->_button setContentHorizontalAlignment:3];
    [(_UNMaterialButton *)v5->_button setContentVerticalAlignment:3];
    [(_UNMaterialButton *)v5->_button addTarget:v5 action:sel__buttonTouchUpInside_ forControlEvents:64];
    [(_UNMediaPlayPauseButton *)v5 addSubview:v5->_button];
    v13 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{v7, v8, v9, v10}];
    invisibleButton = v5->_invisibleButton;
    v5->_invisibleButton = v13;

    [(UIButton *)v5->_invisibleButton addTarget:v5 action:sel__buttonTouchUpInside_ forControlEvents:64];
    [(_UNMediaPlayPauseButton *)v5 addSubview:v5->_invisibleButton];
    v5->_type = a4;
    [(_UNMediaPlayPauseButton *)v5 setNeedsLayout];
  }

  return v5;
}

- (void)layoutSubviews
{
  [(_UNMediaPlayPauseButton *)self _updateBackground];
  [(_UNMediaPlayPauseButton *)self _updateSize];
  [(_UNMediaPlayPauseButton *)self _updateStyle];

  [(_UNMediaPlayPauseButton *)self _updateSelected];
}

- (void)_updateType
{
  v3 = [(_UNMediaPlayPauseButton *)self button];
  [v3 setImage:0 forState:0];

  v4 = [(_UNMediaPlayPauseButton *)self button];
  [v4 setImage:0 forState:4];

  [(_UNMediaPlayPauseButton *)self setNeedsLayout];
}

- (void)_updateBackground
{
  v3 = [(_UNMediaPlayPauseButton *)self type];
  if (v3 == 1)
  {

    [(_UNMediaPlayPauseButton *)self _updateBackgroundForMovieStyle];
  }

  else if (!v3)
  {

    [(_UNMediaPlayPauseButton *)self _updateBackgroundForAudioStyle];
  }
}

- (void)_updateBackgroundForAudioStyle
{
  v3 = [(_UNMediaPlayPauseButton *)self backgroundCircle];

  if (v3)
  {
    v4 = [(_UNMediaPlayPauseButton *)self backgroundCircle];
    [v4 removeFromSuperview];

    [(_UNMediaPlayPauseButton *)self setBackgroundCircle:0];
  }
}

- (void)_updateBackgroundForMovieStyle
{
  v33 = *MEMORY[0x277D85DE8];
  [(_UNMediaPlayPauseButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(_UNMediaPlayPauseButton *)self backgroundCircle];

  if (!v7)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v8 = getMTMaterialViewClass_softClass;
    v31 = getMTMaterialViewClass_softClass;
    if (!getMTMaterialViewClass_softClass)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __getMTMaterialViewClass_block_invoke;
      v27[3] = &unk_278B71758;
      v27[4] = &v28;
      __getMTMaterialViewClass_block_invoke(v27);
      v8 = v29[3];
    }

    v9 = v8;
    _Block_object_dispose(&v28, 8);
    v10 = [v8 materialViewWithRecipe:1];
    backgroundCircle = self->_backgroundCircle;
    self->_backgroundCircle = v10;

    [(_UNMediaPlayPauseButton *)self addSubview:self->_backgroundCircle];
    [(_UNMediaPlayPauseButton *)self sendSubviewToBack:self->_backgroundCircle];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [(_UNMediaPlayPauseButton *)self button];
    v13 = [v12 requiredVisualStyleCategories];

    v14 = [v13 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v14)
    {
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [*(*(&v23 + 1) + 8 * v16) integerValue];
          v18 = [(_UNMediaPlayPauseButton *)self button];
          v19 = [(MTMaterialView *)self->_backgroundCircle visualStylingProviderForCategory:v17];
          [v18 setVisualStylingProvider:v19 forCategory:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v14);
    }
  }

  v20 = [(_UNMediaPlayPauseButton *)self backgroundCircle];
  v21 = fmin(v4, v6);
  [v20 setFrame:{(v4 - v21) * 0.5, (v6 - v21) * 0.5, v21, v21}];

  v22 = [(_UNMediaPlayPauseButton *)self backgroundCircle];
  [v22 _setContinuousCornerRadius:v21 * 0.5];
}

- (void)_updateSize
{
  v3 = [(_UNMediaPlayPauseButton *)self type];
  if (v3 == 1)
  {

    [(_UNMediaPlayPauseButton *)self _updateSizeForMovieStyle];
  }

  else if (!v3)
  {

    [(_UNMediaPlayPauseButton *)self _updateSizeForAudioStyle];
  }
}

- (void)_updateSizeForAudioStyle
{
  v15 = [MEMORY[0x277D755B8] _systemImageNamed:@"play.fill"];
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:@"pause.fill"];
  [(_UNMediaPlayPauseButton *)self bounds];
  v6 = fmin(v4, v5);
  v7 = (v4 - v6) * 0.5;
  v8 = (v5 - v6) * 0.5;
  v9 = [(_UNMediaPlayPauseButton *)self button];
  [v9 setImage:v15 forState:0];

  v10 = [(_UNMediaPlayPauseButton *)self button];
  [v10 setImage:v3 forState:4];

  v11 = [(_UNMediaPlayPauseButton *)self button];
  [v11 setFrame:{v7, v8, v6, v6}];

  v12 = [(_UNMediaPlayPauseButton *)self button];
  BSRectWithSize();
  [v12 setBounds:?];

  v13 = [(_UNMediaPlayPauseButton *)self button];
  [v13 setContentEdgeInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  v14 = [(_UNMediaPlayPauseButton *)self invisibleButton];
  [v14 setBounds:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
}

- (void)_updateSizeForMovieStyle
{
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:@"play.fill"];
  [(_UNMediaPlayPauseButton *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = fmin(v4, v6);
  CGAffineTransformMakeScale(&v16, 0.471428571, 0.471428571);
  v9 = v8 * v16.c + v16.a * v8;
  v10 = v8 * v16.d + v16.b * v8;
  v11 = [(_UNMediaPlayPauseButton *)self button];
  [v11 setImage:v3 forState:0];

  v12 = [(_UNMediaPlayPauseButton *)self button];
  [v12 setImage:0 forState:4];

  v13 = [(_UNMediaPlayPauseButton *)self button];
  [v13 setFrame:{(v5 - v8) * 0.5, (v7 - v8) * 0.5, v8, v8}];

  v14 = [(_UNMediaPlayPauseButton *)self button];
  [v14 setContentEdgeInsets:{(v8 - v10) * 0.5, (v8 - v9) * 0.56, (v8 - v10) * 0.5, (v8 - v9) * 0.44}];

  v15 = [(_UNMediaPlayPauseButton *)self invisibleButton];
  [(_UNMediaPlayPauseButton *)self bounds];
  [v15 setBounds:?];
}

- (void)_updateStyle
{
  v3 = [(_UNMediaPlayPauseButton *)self type];
  if (v3 == 1)
  {

    [(_UNMediaPlayPauseButton *)self _updateStyleForMovieStyle];
  }

  else if (!v3)
  {

    [(_UNMediaPlayPauseButton *)self _updateStyleForAudioStyle];
  }
}

- (void)_updateStyleForAudioStyle
{
  v3 = [(_UNMediaPlayPauseButton *)self button];
  [v3 setImageViewStyle:-1 forState:0];

  v4 = [(_UNMediaPlayPauseButton *)self button];
  [v4 setImageViewStyle:-1 forState:1];

  v5 = [(_UNMediaPlayPauseButton *)self button];
  [v5 setImageViewStyle:-1 forState:4];

  v7 = [(_UNMediaPlayPauseButton *)self button];
  v6 = [(_UNMediaPlayPauseButton *)self tintColor];
  [v7 setTintColor:v6];
}

- (void)_updateStyleForMovieStyle
{
  v3 = [(_UNMediaPlayPauseButton *)self button];
  [v3 setImageViewStyle:1 forState:0];

  v4 = [(_UNMediaPlayPauseButton *)self button];
  [v4 setImageViewStyle:0 forState:1];

  v5 = [(_UNMediaPlayPauseButton *)self button];
  [v5 setImageViewStyle:-1 forState:4];

  v6 = [(_UNMediaPlayPauseButton *)self button];
  [v6 setTintColor:0];
}

- (void)_updateSelected
{
  v3 = [(_UNMediaPlayPauseButton *)self type];
  if (v3 == 1)
  {

    [(_UNMediaPlayPauseButton *)self _updateSelectedForMovieStyle];
  }

  else if (!v3)
  {

    [(_UNMediaPlayPauseButton *)self _updateSelectedForAudioStyle];
  }
}

- (void)_updateSelectedForAudioStyle
{
  v3 = [(_UNMediaPlayPauseButton *)self button];
  [v3 setSelected:{-[_UNMediaPlayPauseButton isSelected](self, "isSelected")}];

  v4 = [(_UNMediaPlayPauseButton *)self invisibleButton];
  [v4 setHidden:1];
}

- (void)_updateSelectedForMovieStyle
{
  v3 = [(_UNMediaPlayPauseButton *)self isSelected];
  v4 = [(_UNMediaPlayPauseButton *)self button];
  [v4 setHidden:v3];

  v5 = [(_UNMediaPlayPauseButton *)self backgroundCircle];
  [v5 setHidden:v3];

  v6 = [(_UNMediaPlayPauseButton *)self invisibleButton];
  [v6 setHidden:v3 ^ 1];
}

- (void)setType:(int64_t)a3
{
  if (self->_type != a3)
  {
    self->_type = a3;
    [(_UNMediaPlayPauseButton *)self _updateType];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(_UNMediaPlayPauseButton *)self isSelected]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _UNMediaPlayPauseButton;
    [(_UNMediaPlayPauseButton *)&v5 setSelected:v3];
    [(_UNMediaPlayPauseButton *)self _updateSelected];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _UNMediaPlayPauseButton;
  [(_UNMediaPlayPauseButton *)&v3 tintColorDidChange];
  [(_UNMediaPlayPauseButton *)self _updateStyle];
}

@end