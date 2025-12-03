@interface PKVariableSliderView
- (CGSize)intrinsicContentSize;
- (void)_stringFromNumber:(void *)number;
- (void)layoutSubviews;
- (void)sendValueChanged;
- (void)setupViewsIfNecessary;
- (void)sliderValueChanged;
@end

@implementation PKVariableSliderView

- (void)_stringFromNumber:(void *)number
{
  numberCopy = number;
  if (number)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v4 setNumberStyle:1];
    [v4 setMinimumFractionDigits:numberCopy[58]];
    [v4 setMaximumFractionDigits:numberCopy[58]];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    numberCopy = [v4 stringFromNumber:v5];
  }

  return numberCopy;
}

- (void)setupViewsIfNecessary
{
  if (self)
  {
    if (!*(self + 424))
    {
      v2 = [MEMORY[0x1E69DC730] effectWithStyle:7];
      v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v2];
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v3 _setContinuousCornerRadius:8.0];
      [v3 setClipsToBounds:1];
      v4 = *(self + 424);
      *(self + 424) = v3;
      v5 = v3;

      [self addSubview:*(self + 424)];
    }

    if (!*(self + 408))
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DCF60]);
      v7 = *(self + 408);
      *(self + 408) = v6;

      [*(self + 408) setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(self + 408) addTarget:self action:sel_sliderValueChanged forControlEvents:4096];
      [self addSubview:*(self + 408)];
      v8 = *(self + 472);
      if (v8 >= 0.0)
      {
        v9 = *(self + 472);
      }

      else
      {
        v9 = -v8;
      }

      v10 = 10.0;
      if (v9 > 10.0)
      {
        v11 = 1.0;
        do
        {
          v11 = v11 + 1.0;
          v12 = __exp10(v11);
        }

        while (v9 > v12);
        v10 = v12;
      }

      if (v8 >= 0.0)
      {
        v16 = fmax(v8 + v10 * -0.5, 0.0);
        *&v16 = v16;
        [*(self + 408) setMinimumValue:v16];
        [*(self + 408) minimumValue];
        v18 = v10 + v17;
        *&v18 = v18;
        [*(self + 408) setMaximumValue:v18];
      }

      else
      {
        v13 = v8 + v10;
        if (v8 + v10 > -0.000001)
        {
          v13 = -0.000001;
        }

        *&v13 = v13;
        [*(self + 408) setMaximumValue:v13];
        [*(self + 408) maximumValue];
        v15 = v14 - v10;
        *&v15 = v15;
        [*(self + 408) setMinimumValue:v15];
      }

      v19 = *(self + 472);
      *&v19 = v19;
      [*(self + 408) setValue:v19];
    }

    if (!*(self + 416))
    {
      v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v21 = *(self + 416);
      *(self + 416) = v20;

      [*(self + 416) setTranslatesAutoresizingMaskIntoConstraints:0];
      v22 = [(PKVariableSliderView *)self _stringFromNumber:?];
      [*(self + 416) setText:v22];

      v23 = *(self + 416);

      [self addSubview:v23];
    }
  }
}

- (void)layoutSubviews
{
  [(PKVariableSliderView *)self setupViewsIfNecessary];
  [(PKVariableSliderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIVisualEffectView *)self->_blurView setFrame:?];
  [(UISlider *)self->_slider intrinsicContentSize];
  v12 = v11;
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  MaxY = CGRectGetMaxY(v21);
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  MidX = CGRectGetMidX(v22);
  [(UISlider *)self->_slider setFrame:8.0, MaxY - (v12 + 8.0), v8 + -16.0, v12];
  [(UILabel *)self->_label sizeThatFits:v8, v10];
  v17 = v16;
  label = self->_label;
  v19 = MidX + v16 * -0.5;

  [(UILabel *)label setFrame:v19, 8.0, v17, v15];
}

- (CGSize)intrinsicContentSize
{
  [(PKVariableSliderView *)self setupViewsIfNecessary];
  [(UISlider *)self->_slider intrinsicContentSize];
  v4 = v3;
  [(UILabel *)self->_label intrinsicContentSize];
  v6 = v4 + v5 + 24.0;
  v7 = 216.0;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)sliderValueChanged
{
  [(UISlider *)self->_slider value];
  v4 = v3;
  v7 = [(PKVariableSliderView *)self _stringFromNumber:v3];
  text = [(UILabel *)self->_label text];
  v6 = [v7 isEqual:text];

  if ((v6 & 1) == 0)
  {
    self->_valueToSend = v4;
    [(UILabel *)self->_label setText:v7];
    [(PKVariableSliderView *)self setNeedsLayout];
    if (CACurrentMediaTime() - self->_lastSentTimestamp >= 0.05)
    {
      [(PKVariableSliderView *)self sendValueChanged];
    }

    else
    {
      [(PKVariableSliderView *)self performSelector:sel_sendValueChanged withObject:0 afterDelay:?];
    }
  }
}

- (void)sendValueChanged
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_sendValueChanged object:0];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained variableSliderView:self valueDidChange:self->_valueToSend];

  self->_lastSentTimestamp = CACurrentMediaTime();
}

@end