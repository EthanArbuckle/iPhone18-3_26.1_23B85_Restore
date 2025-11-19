@interface _SFSettingsAlertControl
- (SFSettingsAlertItemViewDelegate)delegate;
- (_SFSettingsAlertControl)initWithFrame:(CGRect)a3;
- (_SFSettingsAlertItem)item;
- (void)_updateBackgroundView;
- (void)setDefaultBackgroundMode:(int64_t)a3;
- (void)setHidesSeparator:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation _SFSettingsAlertControl

- (_SFSettingsAlertControl)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _SFSettingsAlertControl;
  v3 = [(_SFSettingsAlertControl *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_defaultBackgroundMode = 4;
    v5 = [_SFSettingsAlertItemBackgroundView alloc];
    [(_SFSettingsAlertControl *)v4 bounds];
    v6 = [(_SFSettingsAlertItemBackgroundView *)v5 initWithFrame:?];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v6;

    [(_SFSettingsAlertItemBackgroundView *)v4->_backgroundView setAutoresizingMask:18];
    [(_SFSettingsAlertControl *)v4 addSubview:v4->_backgroundView];
    [(_SFSettingsAlertControl *)v4 _updateBackgroundView];
    [(_SFSettingsAlertControl *)v4 setFocusGroupIdentifier:0];
    v8 = v4;
  }

  return v4;
}

- (void)setHidesSeparator:(BOOL)a3
{
  if (self->_hidesSeparator != a3)
  {
    self->_hidesSeparator = a3;
    [(_SFSettingsAlertControl *)self _updateBackgroundView];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SFSettingsAlertControl;
  [(_SFSettingsAlertControl *)&v4 setHighlighted:a3];
  [(_SFSettingsAlertControl *)self _updateBackgroundView];
}

- (void)setDefaultBackgroundMode:(int64_t)a3
{
  if (self->_defaultBackgroundMode != a3)
  {
    self->_defaultBackgroundMode = a3;
    [(_SFSettingsAlertControl *)self _updateBackgroundView];
  }
}

- (void)_updateBackgroundView
{
  if (([(_SFSettingsAlertControl *)self isHighlighted]& 1) != 0 || ([(_SFSettingsAlertControl *)self isFocused]& 1) != 0)
  {
    v3 = 1;
  }

  else if (self->_hidesSeparator)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_SFSettingsAlertControl *)self defaultBackgroundMode];
  }

  backgroundView = self->_backgroundView;

  [(_SFSettingsAlertItemBackgroundView *)backgroundView setMode:v3];
}

- (SFSettingsAlertItemViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_SFSettingsAlertItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end