@interface CarFloatingControlsButtonView
- (CarFloatingControlsButtonView)initWithFrame:(CGRect)a3;
- (CarFloatingControlsButtonViewDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (void)_pressed3DButton:(id)a3;
- (void)_rebuild;
- (void)setEnable3DButton:(BOOL)a3;
- (void)setEnableTrackingButton:(BOOL)a3;
@end

@implementation CarFloatingControlsButtonView

- (NSArray)focusOrderSubItems
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CarMultiButtonView *)self buttons];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 canBecomeFocused])
        {
          [v3 addObject:v9];
        }

        else if (objc_opt_respondsToSelector())
        {
          v10 = [v9 focusOrderSubItems];
          [v3 addObjectsFromArray:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CarFloatingControlsButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_rebuild
{
  v4 = objc_alloc_init(NSMutableArray);
  if ([(CarFloatingControlsButtonView *)self isTrackingButtonEnabled])
  {
    [v4 addObject:self->_userTrackingButton];
  }

  if ([(CarFloatingControlsButtonView *)self is3DButtonEnabled])
  {
    [v4 addObject:self->_mode3DButton];
  }

  v3 = [v4 copy];
  [(CarMultiButtonView *)self setButtons:v3];
}

- (void)setEnable3DButton:(BOOL)a3
{
  if (self->_enable3DButton != a3)
  {
    self->_enable3DButton = a3;
    [(CarFloatingControlsButtonView *)self _rebuild];
  }
}

- (void)setEnableTrackingButton:(BOOL)a3
{
  if (self->_enableTrackingButton != a3)
  {
    self->_enableTrackingButton = a3;
    [(CarFloatingControlsButtonView *)self _rebuild];
  }
}

- (void)_pressed3DButton:(id)a3
{
  v4 = [(CarFloatingControlsButtonView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CarFloatingControlsButtonView *)self delegate];
    [v6 mode3DButtonPressed];
  }
}

- (CarFloatingControlsButtonView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CarFloatingControlsButtonView;
  v3 = [(CarMultiButtonView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [CarUserTrackingButtonView buttonWithUserTrackingView:0];
    userTrackingButton = v3->_userTrackingButton;
    v3->_userTrackingButton = v4;

    v6 = [[Car3DButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    mode3DButton = v3->_mode3DButton;
    v3->_mode3DButton = v6;

    [(Car3DButton *)v3->_mode3DButton addTarget:v3 action:"_pressed3DButton:" forControlEvents:64];
    [(CarFloatingControlsButtonView *)v3 setAccessibilityIdentifier:@"CarFloatingControlsButtonView"];
    v11[0] = v3->_userTrackingButton;
    v11[1] = v3->_mode3DButton;
    v8 = [NSArray arrayWithObjects:v11 count:2];
    [(CarMultiButtonView *)v3 setButtons:v8];
  }

  return v3;
}

@end