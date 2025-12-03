@interface CarZoomButtonView
- (CarZoomButtonView)initWithVisiblePanButton:(BOOL)button;
- (CarZoomButtonViewDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (id)_availableButtons;
- (void)_panPressed:(id)pressed;
- (void)_zoomInPressed:(id)pressed;
- (void)_zoomOutPressed:(id)pressed;
- (void)setPanButtonVisible:(BOOL)visible;
- (void)setZoomInEnabled:(BOOL)enabled;
- (void)setZoomOutEnabled:(BOOL)enabled;
@end

@implementation CarZoomButtonView

- (id)_availableButtons
{
  if (self->_panButtonVisible)
  {
    zoomInButton = self->_zoomInButton;
    panButton = self->_panButton;
    v11 = zoomInButton;
    zoomOutButton = self->_zoomOutButton;
    p_panButton = &panButton;
    v4 = 3;
  }

  else
  {
    v5 = self->_zoomOutButton;
    v8 = self->_zoomInButton;
    v9 = v5;
    p_panButton = &v8;
    v4 = 2;
  }

  zoomOutButton = [NSArray arrayWithObjects:p_panButton count:v4, v8, v9, panButton, v11, zoomOutButton];

  return zoomOutButton;
}

- (NSArray)focusOrderSubItems
{
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _availableButtons = [(CarZoomButtonView *)self _availableButtons];
  v5 = [_availableButtons countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_availableButtons);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 canBecomeFocused])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [_availableButtons countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CarZoomButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setZoomOutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(CarFocusableImageButton *)self->_zoomOutButton isEnabled]!= enabled)
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"disabled";
      if (enabledCopy)
      {
        v6 = @"enabled";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting zoom-out button %@", &v7, 0xCu);
    }

    [(CarFocusableControl *)self->_zoomOutButton setEnabled:enabledCopy];
    if ([(CarFocusableImageButton *)self->_zoomOutButton isFocused])
    {
      if (!enabledCopy)
      {
        [(CarZoomButtonView *)self setNeedsFocusUpdate];
        [(CarZoomButtonView *)self updateFocusIfNeeded];
      }
    }
  }
}

- (void)setZoomInEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(CarFocusableImageButton *)self->_zoomInButton isEnabled]!= enabled)
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"disabled";
      if (enabledCopy)
      {
        v6 = @"enabled";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting zoom-in button %@", &v7, 0xCu);
    }

    [(CarFocusableControl *)self->_zoomInButton setEnabled:enabledCopy];
    if ([(CarFocusableImageButton *)self->_zoomInButton isFocused])
    {
      if (!enabledCopy)
      {
        [(CarZoomButtonView *)self setNeedsFocusUpdate];
        [(CarZoomButtonView *)self updateFocusIfNeeded];
      }
    }
  }
}

- (void)_zoomOutPressed:(id)pressed
{
  delegate = [(CarZoomButtonView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CarZoomButtonView *)self delegate];
    [delegate2 zoomOutButtonPressed];
  }
}

- (void)_zoomInPressed:(id)pressed
{
  delegate = [(CarZoomButtonView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CarZoomButtonView *)self delegate];
    [delegate2 zoomInButtonPressed];
  }
}

- (void)_panPressed:(id)pressed
{
  delegate = [(CarZoomButtonView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CarZoomButtonView *)self delegate];
    [delegate2 panButtonPressed];
  }
}

- (void)setPanButtonVisible:(BOOL)visible
{
  if (self->_panButtonVisible != visible)
  {
    self->_panButtonVisible = visible;
    _availableButtons = [(CarZoomButtonView *)self _availableButtons];
    [(CarMultiButtonView *)self setButtons:_availableButtons];
  }
}

- (CarZoomButtonView)initWithVisiblePanButton:(BOOL)button
{
  buttonCopy = button;
  v36.receiver = self;
  v36.super_class = CarZoomButtonView;
  v4 = [(CarMultiButtonView *)&v36 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_panButtonVisible = buttonCopy;
    if (buttonCopy)
    {
      v6 = +[CarDisplayController sharedInstance];
      chromeViewController = [v6 chromeViewController];
      traitCollection = [chromeViewController traitCollection];
      v9 = [UIImage imageNamed:@"CarPan" inBundle:0 compatibleWithTraitCollection:traitCollection];
      v10 = [v9 imageWithRenderingMode:2];

      v11 = [[CarFocusableImageButton alloc] initWithImage:v10];
      panButton = v5->_panButton;
      v5->_panButton = v11;

      [(CarFocusableImageButton *)v5->_panButton setAccessibilityIdentifier:@"PanButton"];
      [(CarFocusableImageButton *)v5->_panButton addTarget:v5 action:"_panPressed:" forControlEvents:64];
      [(CarFocusableBlurControl *)v5->_panButton setCastsShadow:0];
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"CarPlay_Pan" value:@"localized string not found" table:0];
      v39 = v14;
      v15 = [NSArray arrayWithObjects:&v39 count:1];
      [(CarFocusableImageButton *)v5->_panButton setAccessibilityUserInputLabels:v15];
    }

    v16 = [CarFocusableImageButton alloc];
    v17 = [UIImage _mapsCar_systemImageNamed:@"plus" textStyle:UIFontTextStyleSubheadline];
    v18 = [(CarFocusableImageButton *)v16 initWithImage:v17];
    zoomInButton = v5->_zoomInButton;
    v5->_zoomInButton = v18;

    [(CarFocusableImageButton *)v5->_zoomInButton setAccessibilityIdentifier:@"ZoomInButton"];
    [(CarFocusableImageButton *)v5->_zoomInButton addTarget:v5 action:"_zoomInPressed:" forControlEvents:64];
    [(CarFocusableBlurControl *)v5->_zoomInButton setCastsShadow:0];
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"CarPlay_ZoomIn" value:@"localized string not found" table:0];
    v38[0] = v21;
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"CarPlay_Plus" value:@"localized string not found" table:0];
    v38[1] = v23;
    v24 = [NSArray arrayWithObjects:v38 count:2];
    [(CarFocusableImageButton *)v5->_zoomInButton setAccessibilityUserInputLabels:v24];

    v25 = [CarFocusableImageButton alloc];
    v26 = [UIImage _mapsCar_systemImageNamed:@"minus" textStyle:UIFontTextStyleSubheadline];
    v27 = [(CarFocusableImageButton *)v25 initWithImage:v26];
    zoomOutButton = v5->_zoomOutButton;
    v5->_zoomOutButton = v27;

    [(CarFocusableImageButton *)v5->_zoomOutButton setAccessibilityIdentifier:@"ZoomOutButton"];
    [(CarFocusableImageButton *)v5->_zoomOutButton addTarget:v5 action:"_zoomOutPressed:" forControlEvents:64];
    [(CarFocusableBlurControl *)v5->_zoomOutButton setCastsShadow:0];
    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"CarPlay_ZoomOut" value:@"localized string not found" table:0];
    v37[0] = v30;
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"CarPlay_Minus" value:@"localized string not found" table:0];
    v37[1] = v32;
    v33 = [NSArray arrayWithObjects:v37 count:2];
    [(CarFocusableImageButton *)v5->_zoomOutButton setAccessibilityUserInputLabels:v33];

    [(CarZoomButtonView *)v5 setAccessibilityIdentifier:@"CarZoomButtonView"];
    _availableButtons = [(CarZoomButtonView *)v5 _availableButtons];
    [(CarMultiButtonView *)v5 setButtons:_availableButtons];
  }

  return v5;
}

@end