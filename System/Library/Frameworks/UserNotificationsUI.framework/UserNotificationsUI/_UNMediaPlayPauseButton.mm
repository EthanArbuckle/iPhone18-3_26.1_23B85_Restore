@interface _UNMediaPlayPauseButton
- (_UNMediaPlayPauseButton)initWithFrame:(CGRect)frame type:(int64_t)type;
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
- (void)setSelected:(BOOL)selected;
- (void)setType:(int64_t)type;
- (void)tintColorDidChange;
@end

@implementation _UNMediaPlayPauseButton

- (_UNMediaPlayPauseButton)initWithFrame:(CGRect)frame type:(int64_t)type
{
  v16.receiver = self;
  v16.super_class = _UNMediaPlayPauseButton;
  v5 = [(_UNMediaPlayPauseButton *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    v5->_type = type;
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
  button = [(_UNMediaPlayPauseButton *)self button];
  [button setImage:0 forState:0];

  button2 = [(_UNMediaPlayPauseButton *)self button];
  [button2 setImage:0 forState:4];

  [(_UNMediaPlayPauseButton *)self setNeedsLayout];
}

- (void)_updateBackground
{
  type = [(_UNMediaPlayPauseButton *)self type];
  if (type == 1)
  {

    [(_UNMediaPlayPauseButton *)self _updateBackgroundForMovieStyle];
  }

  else if (!type)
  {

    [(_UNMediaPlayPauseButton *)self _updateBackgroundForAudioStyle];
  }
}

- (void)_updateBackgroundForAudioStyle
{
  backgroundCircle = [(_UNMediaPlayPauseButton *)self backgroundCircle];

  if (backgroundCircle)
  {
    backgroundCircle2 = [(_UNMediaPlayPauseButton *)self backgroundCircle];
    [backgroundCircle2 removeFromSuperview];

    [(_UNMediaPlayPauseButton *)self setBackgroundCircle:0];
  }
}

- (void)_updateBackgroundForMovieStyle
{
  v33 = *MEMORY[0x277D85DE8];
  [(_UNMediaPlayPauseButton *)self bounds];
  v4 = v3;
  v6 = v5;
  backgroundCircle = [(_UNMediaPlayPauseButton *)self backgroundCircle];

  if (!backgroundCircle)
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
    button = [(_UNMediaPlayPauseButton *)self button];
    requiredVisualStyleCategories = [button requiredVisualStyleCategories];

    v14 = [requiredVisualStyleCategories countByEnumeratingWithState:&v23 objects:v32 count:16];
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
            objc_enumerationMutation(requiredVisualStyleCategories);
          }

          integerValue = [*(*(&v23 + 1) + 8 * v16) integerValue];
          button2 = [(_UNMediaPlayPauseButton *)self button];
          v19 = [(MTMaterialView *)self->_backgroundCircle visualStylingProviderForCategory:integerValue];
          [button2 setVisualStylingProvider:v19 forCategory:integerValue];

          ++v16;
        }

        while (v14 != v16);
        v14 = [requiredVisualStyleCategories countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v14);
    }
  }

  backgroundCircle2 = [(_UNMediaPlayPauseButton *)self backgroundCircle];
  v21 = fmin(v4, v6);
  [backgroundCircle2 setFrame:{(v4 - v21) * 0.5, (v6 - v21) * 0.5, v21, v21}];

  backgroundCircle3 = [(_UNMediaPlayPauseButton *)self backgroundCircle];
  [backgroundCircle3 _setContinuousCornerRadius:v21 * 0.5];
}

- (void)_updateSize
{
  type = [(_UNMediaPlayPauseButton *)self type];
  if (type == 1)
  {

    [(_UNMediaPlayPauseButton *)self _updateSizeForMovieStyle];
  }

  else if (!type)
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
  button = [(_UNMediaPlayPauseButton *)self button];
  [button setImage:v15 forState:0];

  button2 = [(_UNMediaPlayPauseButton *)self button];
  [button2 setImage:v3 forState:4];

  button3 = [(_UNMediaPlayPauseButton *)self button];
  [button3 setFrame:{v7, v8, v6, v6}];

  button4 = [(_UNMediaPlayPauseButton *)self button];
  BSRectWithSize();
  [button4 setBounds:?];

  button5 = [(_UNMediaPlayPauseButton *)self button];
  [button5 setContentEdgeInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  invisibleButton = [(_UNMediaPlayPauseButton *)self invisibleButton];
  [invisibleButton setBounds:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
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
  button = [(_UNMediaPlayPauseButton *)self button];
  [button setImage:v3 forState:0];

  button2 = [(_UNMediaPlayPauseButton *)self button];
  [button2 setImage:0 forState:4];

  button3 = [(_UNMediaPlayPauseButton *)self button];
  [button3 setFrame:{(v5 - v8) * 0.5, (v7 - v8) * 0.5, v8, v8}];

  button4 = [(_UNMediaPlayPauseButton *)self button];
  [button4 setContentEdgeInsets:{(v8 - v10) * 0.5, (v8 - v9) * 0.56, (v8 - v10) * 0.5, (v8 - v9) * 0.44}];

  invisibleButton = [(_UNMediaPlayPauseButton *)self invisibleButton];
  [(_UNMediaPlayPauseButton *)self bounds];
  [invisibleButton setBounds:?];
}

- (void)_updateStyle
{
  type = [(_UNMediaPlayPauseButton *)self type];
  if (type == 1)
  {

    [(_UNMediaPlayPauseButton *)self _updateStyleForMovieStyle];
  }

  else if (!type)
  {

    [(_UNMediaPlayPauseButton *)self _updateStyleForAudioStyle];
  }
}

- (void)_updateStyleForAudioStyle
{
  button = [(_UNMediaPlayPauseButton *)self button];
  [button setImageViewStyle:-1 forState:0];

  button2 = [(_UNMediaPlayPauseButton *)self button];
  [button2 setImageViewStyle:-1 forState:1];

  button3 = [(_UNMediaPlayPauseButton *)self button];
  [button3 setImageViewStyle:-1 forState:4];

  button4 = [(_UNMediaPlayPauseButton *)self button];
  tintColor = [(_UNMediaPlayPauseButton *)self tintColor];
  [button4 setTintColor:tintColor];
}

- (void)_updateStyleForMovieStyle
{
  button = [(_UNMediaPlayPauseButton *)self button];
  [button setImageViewStyle:1 forState:0];

  button2 = [(_UNMediaPlayPauseButton *)self button];
  [button2 setImageViewStyle:0 forState:1];

  button3 = [(_UNMediaPlayPauseButton *)self button];
  [button3 setImageViewStyle:-1 forState:4];

  button4 = [(_UNMediaPlayPauseButton *)self button];
  [button4 setTintColor:0];
}

- (void)_updateSelected
{
  type = [(_UNMediaPlayPauseButton *)self type];
  if (type == 1)
  {

    [(_UNMediaPlayPauseButton *)self _updateSelectedForMovieStyle];
  }

  else if (!type)
  {

    [(_UNMediaPlayPauseButton *)self _updateSelectedForAudioStyle];
  }
}

- (void)_updateSelectedForAudioStyle
{
  button = [(_UNMediaPlayPauseButton *)self button];
  [button setSelected:{-[_UNMediaPlayPauseButton isSelected](self, "isSelected")}];

  invisibleButton = [(_UNMediaPlayPauseButton *)self invisibleButton];
  [invisibleButton setHidden:1];
}

- (void)_updateSelectedForMovieStyle
{
  isSelected = [(_UNMediaPlayPauseButton *)self isSelected];
  button = [(_UNMediaPlayPauseButton *)self button];
  [button setHidden:isSelected];

  backgroundCircle = [(_UNMediaPlayPauseButton *)self backgroundCircle];
  [backgroundCircle setHidden:isSelected];

  invisibleButton = [(_UNMediaPlayPauseButton *)self invisibleButton];
  [invisibleButton setHidden:isSelected ^ 1];
}

- (void)setType:(int64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    [(_UNMediaPlayPauseButton *)self _updateType];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(_UNMediaPlayPauseButton *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = _UNMediaPlayPauseButton;
    [(_UNMediaPlayPauseButton *)&v5 setSelected:selectedCopy];
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