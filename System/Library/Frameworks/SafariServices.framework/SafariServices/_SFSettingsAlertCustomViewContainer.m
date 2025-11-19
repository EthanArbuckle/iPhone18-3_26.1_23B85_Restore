@interface _SFSettingsAlertCustomViewContainer
- (SFSettingsAlertItemViewDelegate)delegate;
- (_SFSettingsAlertCustomViewContainer)initWithContentView:(id)a3;
- (_SFSettingsAlertItem)item;
- (void)setDefaultBackgroundMode:(int64_t)a3;
- (void)setHidesSeparator:(BOOL)a3;
@end

@implementation _SFSettingsAlertCustomViewContainer

- (_SFSettingsAlertCustomViewContainer)initWithContentView:(id)a3
{
  v26[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 bounds];
  v25.receiver = self;
  v25.super_class = _SFSettingsAlertCustomViewContainer;
  v5 = [(_SFSettingsAlertCustomViewContainer *)&v25 initWithFrame:?];
  if (v5)
  {
    v6 = [_SFSettingsAlertItemBackgroundView alloc];
    [(_SFSettingsAlertCustomViewContainer *)v5 bounds];
    v7 = [(_SFSettingsAlertItemBackgroundView *)v6 initWithFrame:?];
    backgroundView = v5->_backgroundView;
    v5->_backgroundView = v7;

    [(_SFSettingsAlertItemBackgroundView *)v5->_backgroundView setAutoresizingMask:18];
    [(_SFSettingsAlertCustomViewContainer *)v5 addSubview:v5->_backgroundView];
    [(_SFSettingsAlertCustomViewContainer *)v5 addSubview:v4];
    v19 = MEMORY[0x1E696ACD8];
    v24 = [v4 topAnchor];
    v23 = [(_SFSettingsAlertCustomViewContainer *)v5 topAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v21 = [v4 leadingAnchor];
    v20 = [(_SFSettingsAlertCustomViewContainer *)v5 leadingAnchor];
    v9 = [v21 constraintEqualToAnchor:v20];
    v26[1] = v9;
    v10 = [v4 bottomAnchor];
    v11 = [(_SFSettingsAlertCustomViewContainer *)v5 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v26[2] = v12;
    v13 = [v4 trailingAnchor];
    v14 = [(_SFSettingsAlertCustomViewContainer *)v5 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v26[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v19 activateConstraints:v16];

    v17 = v5;
  }

  return v5;
}

- (void)setHidesSeparator:(BOOL)a3
{
  if (self->_hidesSeparator != a3)
  {
    self->_hidesSeparator = a3;
    if (a3)
    {
      defaultBackgroundMode = 0;
    }

    else
    {
      defaultBackgroundMode = self->_defaultBackgroundMode;
    }

    [(_SFSettingsAlertItemBackgroundView *)self->_backgroundView setMode:defaultBackgroundMode];
  }
}

- (void)setDefaultBackgroundMode:(int64_t)a3
{
  if (self->_defaultBackgroundMode != a3)
  {
    self->_defaultBackgroundMode = a3;
    if (self->_hidesSeparator)
    {
      a3 = 0;
    }

    [(_SFSettingsAlertItemBackgroundView *)self->_backgroundView setMode:a3];
  }
}

- (SFSettingsAlertItemViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (_SFSettingsAlertItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end