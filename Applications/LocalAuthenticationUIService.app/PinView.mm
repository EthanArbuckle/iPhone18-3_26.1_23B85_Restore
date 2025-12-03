@interface PinView
- (BOOL)becomeFirstResponder;
- (BOOL)hasText;
- (BOOL)resignFirstResponder;
- (CGRect)_roundRectToPixel:(CGRect)pixel;
- (PinView)initWithPinLength:(id)length minLength:(id)minLength maxLength:(id)maxLength charset:(id)charset;
- (PinViewDelegate)delegate;
- (int64_t)autocapitalizationType;
- (int64_t)keyboardAppearance;
- (int64_t)keyboardType;
- (void)_activateKeypadView;
- (void)_deactivateKeypadView;
- (void)_dismissKeypad;
- (void)_layoutSubviewsWithKeyboard:(CGRect)keyboard;
- (void)dealloc;
- (void)keyboardDidShow:(id)show;
- (void)layoutSubviews;
- (void)pinEntered:(id)entered;
- (void)setCancelButton:(id)button;
@end

@implementation PinView

- (PinView)initWithPinLength:(id)length minLength:(id)minLength maxLength:(id)maxLength charset:(id)charset
{
  lengthCopy = length;
  minLengthCopy = minLength;
  maxLengthCopy = maxLength;
  charsetCopy = charset;
  v40.receiver = self;
  v40.super_class = PinView;
  v14 = [(PinView *)&v40 init];
  if (v14)
  {
    +[UIScreen mainScreen];
    v39 = charsetCopy;
    v15 = maxLengthCopy;
    v16 = minLengthCopy;
    v18 = v17 = lengthCopy;
    [v18 scale];
    v14->_scale = v19;

    v20 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v20 userInterfaceIdiom];

    v14->_autoKeyboard = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v22 = objc_opt_new();
    titleLabel = v14->_titleLabel;
    v14->_titleLabel = v22;

    v24 = v14->_titleLabel;
    v25 = UISystemFontForSize();
    [(UILabel *)v24 setFont:v25];

    [(UILabel *)v14->_titleLabel setOpaque:0];
    [(UILabel *)v14->_titleLabel setBackgroundColor:0];
    [(UILabel *)v14->_titleLabel setTextAlignment:1];
    v26 = v14->_titleLabel;
    v27 = +[UIColor labelColor];
    v28 = v26;
    lengthCopy = v17;
    minLengthCopy = v16;
    maxLengthCopy = v15;
    charsetCopy = v39;
    [(UILabel *)v28 setTextColor:v27];

    [(UILabel *)v14->_titleLabel setNumberOfLines:0];
    [(PinView *)v14 addSubview:v14->_titleLabel];
    v29 = [[PinField alloc] initWithPinLength:lengthCopy minLength:minLengthCopy maxLength:maxLengthCopy charset:v39];
    pinField = v14->_pinField;
    v14->_pinField = v29;

    [(PinView *)v14 addSubview:v14->_pinField];
    [(PinField *)v14->_pinField setDelegate:v14];
    objc_storeStrong(&v14->_pinMinLength, minLength);
    objc_storeStrong(&v14->_pinCharset, charset);
    if (!v14->_autoKeyboard || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 userInterfaceIdiom], v31, (v32 & 0xFFFFFFFFFFFFFFFBLL) != 1))
    {
      v33 = objc_opt_new();
      dividerLine = v14->_dividerLine;
      v14->_dividerLine = v33;

      v35 = v14->_dividerLine;
      v36 = +[UIColor systemBackgroundColor];
      [(UIView *)v35 setBackgroundColor:v36];

      [(UIView *)v14->_dividerLine setHidden:1];
      [(PinView *)v14 addSubview:v14->_dividerLine];
    }

    if (v14->_autoKeyboard)
    {
      v37 = +[NSNotificationCenter defaultCenter];
      [v37 addObserver:v14 selector:"keyboardDidShow:" name:UIKeyboardDidShowNotification object:0];
    }

    else
    {
      if (UIKeyboardAutomaticIsOnScreen())
      {
        UIKeyboardOrderOutAutomaticSkippingAnimation();
      }

      [(PinView *)v14 _activateKeypadView];
    }
  }

  return v14;
}

- (void)dealloc
{
  if (self->_autoKeyboard)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:UIKeyboardDidShowNotification object:0];
  }

  else
  {
    [(PinView *)self _dismissKeypad];
  }

  v4.receiver = self;
  v4.super_class = PinView;
  [(PinView *)&v4 dealloc];
}

- (void)keyboardDidShow:(id)show
{
  userInfo = [show userInfo];
  v9 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];

  if (v9)
  {
    [v9 CGRectValue];
    x = v11.origin.x;
    y = v11.origin.y;
    width = v11.size.width;
    height = v11.size.height;
    if (!CGRectIsEmpty(v11))
    {
      [(PinView *)self _layoutSubviewsWithKeyboard:x, y, width, height];
    }
  }

  _objc_release_x1();
}

- (void)setCancelButton:(id)button
{
  buttonCopy = button;
  v5 = buttonCopy;
  if (self->_cancelButton)
  {
    [(UIButton *)buttonCopy removeFromSuperview];
  }

  cancelButton = self->_cancelButton;
  self->_cancelButton = v5;
  v7 = v5;

  [(PinView *)self addSubview:self->_cancelButton];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = PinView;
  [(PinView *)&v18 layoutSubviews];
  [(PinView *)self bounds];
  height = v19.size.height;
  if (!CGRectIsEmpty(v19))
  {
    if (self->_keypad)
    {
      x = self->_keyboardDefaultFrame.origin.x;
      width = self->_keyboardDefaultFrame.size.width;
      v6 = self->_keyboardDefaultFrame.size.height;
      v7 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v7 userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v6 = 216.0;
        width = 320.0;
      }

      [(PinView *)self _roundToPixel:height - v6];
      v10 = v9;
      [(PinKeypad *)self->_keypad setFrame:x, v9, width, v6];
      if (self->_dividerLine)
      {
        [(PinView *)self _roundRectToPixel:x, v10 + -0.5, width, 0.5];
        [(UIView *)self->_dividerLine setFrame:?];
        [(UIView *)self->_dividerLine setHidden:0];
      }
    }

    else
    {
      keyboardLayoutGuide = [(PinView *)self keyboardLayoutGuide];
      [keyboardLayoutGuide layoutFrame];
      x = v12;
      v10 = v13;
      width = v14;
      v16 = v15;

      v6 = 285.0;
      if (v16 >= 285.0)
      {
        v6 = v16;
      }

      else
      {
        [(PinView *)self frame];
        width = v17;
        x = 0.0;
        v10 = 0.0;
      }
    }

    [(PinView *)self _layoutSubviewsWithKeyboard:x, v10, width, v6];
  }
}

- (void)_layoutSubviewsWithKeyboard:(CGRect)keyboard
{
  height = keyboard.size.height;
  width = keyboard.size.width;
  y = keyboard.origin.y;
  x = keyboard.origin.x;
  [(PinView *)self bounds];
  v8 = v26.origin.x;
  v9 = v26.origin.y;
  v10 = v26.size.width;
  v11 = v26.size.height;
  if (!CGRectIsEmpty(v26))
  {
    viewController = [(PinView *)self viewController];
    view = [viewController view];
    [view safeAreaInsets];
    v24 = v14;

    cancelButton = self->_cancelButton;
    if (cancelButton)
    {
      [(UIButton *)cancelButton frame];
      [(UIButton *)self->_cancelButton setFrame:v10 - v16 + -15.0, v24 + 10.0];
    }

    v27.origin.x = v8;
    v27.origin.y = v9;
    v27.size.width = v10;
    v27.size.height = v11;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v28 = CGRectIntersection(v27, v29);
    CGRectIsNull(v28);
    [(PinField *)self->_pinField updateLayoutForWidth:v10];
    [(UILabel *)self->_titleLabel sizeThatFits:v10 + -30.0, v11];
    [(PinField *)self->_pinField frame];
    UIRectCenteredXInRect();
    scale = self->_scale;
    UIRectIntegralWithScale();
    v18 = self->_scale;
    UIRectIntegralWithScale();
    v20 = v19;
    [(PinField *)self->_pinField setFrame:?];
    v21 = CGPointZero.y;
    UIRectCenteredXInRect();
    v22 = self->_scale;
    UIRectIntegralWithScale();
    [(UILabel *)self->_titleLabel setFrame:?];
    titleLabel = self->_titleLabel;

    [(UILabel *)titleLabel _setLastLineBaselineFrameOriginY:v20 + -30.0];
  }
}

- (CGRect)_roundRectToPixel:(CGRect)pixel
{
  height = pixel.size.height;
  width = pixel.size.width;
  y = pixel.origin.y;
  [(PinView *)self _roundToPixel:pixel.origin.x];
  v8 = v7;
  [(PinView *)self _roundToPixel:y];
  v10 = v9;
  [(PinView *)self _roundToPixel:width];
  v12 = v11;
  [(PinView *)self _roundToPixel:height];
  v14 = v13;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (BOOL)becomeFirstResponder
{
  if (self->_autoKeyboard)
  {
    v5.receiver = self;
    v5.super_class = PinView;
    return [(PinView *)&v5 becomeFirstResponder];
  }

  if (self->_keypadActive)
  {
    UIKeyboardDisableAutomaticAppearance();
    v4.receiver = self;
    v4.super_class = PinView;
    if ([(PinView *)&v4 becomeFirstResponder])
    {
      return 1;
    }

    UIKeyboardEnableAutomaticAppearance();
  }

  return 0;
}

- (BOOL)resignFirstResponder
{
  isFirstResponder = [(PinView *)self isFirstResponder];
  if (isFirstResponder)
  {
    v6.receiver = self;
    v6.super_class = PinView;
    isFirstResponder = [(PinView *)&v6 resignFirstResponder];
    if (isFirstResponder)
    {
      if (self->_keypadActive)
      {
        UIKeyboardEnableAutomaticAppearance();
      }

      if (!self->_pinEntered)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained pinCancelled];
      }

      LOBYTE(isFirstResponder) = 1;
    }
  }

  return isFirstResponder;
}

- (void)_activateKeypadView
{
  if (!self->_keypadActive)
  {
    keypad = self->_keypad;
    if (!keypad)
    {
      initWithDefaultSize = [[PinKeypad alloc] initWithDefaultSize];
      v5 = self->_keypad;
      self->_keypad = initWithDefaultSize;

      layer = [(PinKeypad *)self->_keypad layer];
      disableUpdateMask = [layer disableUpdateMask];

      layer2 = [(PinKeypad *)self->_keypad layer];
      [layer2 setDisableUpdateMask:disableUpdateMask | 0x10];

      [(PinKeypad *)self->_keypad frame];
      self->_keyboardDefaultFrame.origin.x = v9;
      self->_keyboardDefaultFrame.origin.y = v10;
      self->_keyboardDefaultFrame.size.width = v11;
      self->_keyboardDefaultFrame.size.height = v12;
      keypad = self->_keypad;
    }

    [(PinKeypad *)keypad activate];
    self->_keypadActive = 1;
    superview = [(PinKeypad *)self->_keypad superview];

    if (!superview)
    {
      v14 = self->_keypad;

      [(PinView *)self addSubview:v14];
    }
  }
}

- (void)_deactivateKeypadView
{
  if (self->_keypadActive)
  {
    [(PinKeypad *)self->_keypad deactivate];
    self->_keypadActive = 0;
  }
}

- (void)_dismissKeypad
{
  [(PinView *)self _deactivateKeypadView];
  keypad = self->_keypad;
  if (keypad)
  {
    [(PinKeypad *)keypad removeFromSuperview];
    v4 = self->_keypad;
    self->_keypad = 0;
  }
}

- (void)pinEntered:(id)entered
{
  self->_pinEntered = 1;
  enteredCopy = entered;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pinEntered:enteredCopy];
}

- (int64_t)keyboardType
{
  if (!self->_autoKeyboard)
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      return 127;
    }
  }

  if ([(NSNumber *)self->_pinCharset unsignedIntValue])
  {
    return 1;
  }

  return 4;
}

- (int64_t)keyboardAppearance
{
  traitCollection = [(PinView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1000 || userInterfaceStyle == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)autocapitalizationType
{
  if ([(NSNumber *)self->_pinCharset unsignedIntValue]== 2)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasText
{
  pinValue = [(PinField *)self->_pinField pinValue];
  v3 = [pinValue length] != 0;

  return v3;
}

- (PinViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end