@interface _SFSettingsAlertControl
- (SFSettingsAlertItemViewDelegate)delegate;
- (_SFSettingsAlertControl)initWithFrame:(CGRect)frame;
- (_SFSettingsAlertItem)item;
- (void)_updateBackgroundView;
- (void)setDefaultBackgroundMode:(int64_t)mode;
- (void)setHidesSeparator:(BOOL)separator;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation _SFSettingsAlertControl

- (_SFSettingsAlertControl)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _SFSettingsAlertControl;
  v3 = [(_SFSettingsAlertControl *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setHidesSeparator:(BOOL)separator
{
  if (self->_hidesSeparator != separator)
  {
    self->_hidesSeparator = separator;
    [(_SFSettingsAlertControl *)self _updateBackgroundView];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = _SFSettingsAlertControl;
  [(_SFSettingsAlertControl *)&v4 setHighlighted:highlighted];
  [(_SFSettingsAlertControl *)self _updateBackgroundView];
}

- (void)setDefaultBackgroundMode:(int64_t)mode
{
  if (self->_defaultBackgroundMode != mode)
  {
    self->_defaultBackgroundMode = mode;
    [(_SFSettingsAlertControl *)self _updateBackgroundView];
  }
}

- (void)_updateBackgroundView
{
  if (([(_SFSettingsAlertControl *)self isHighlighted]& 1) != 0 || ([(_SFSettingsAlertControl *)self isFocused]& 1) != 0)
  {
    defaultBackgroundMode = 1;
  }

  else if (self->_hidesSeparator)
  {
    defaultBackgroundMode = 0;
  }

  else
  {
    defaultBackgroundMode = [(_SFSettingsAlertControl *)self defaultBackgroundMode];
  }

  backgroundView = self->_backgroundView;

  [(_SFSettingsAlertItemBackgroundView *)backgroundView setMode:defaultBackgroundMode];
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