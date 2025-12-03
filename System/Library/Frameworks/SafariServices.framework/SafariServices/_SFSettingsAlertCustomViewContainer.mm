@interface _SFSettingsAlertCustomViewContainer
- (SFSettingsAlertItemViewDelegate)delegate;
- (_SFSettingsAlertCustomViewContainer)initWithContentView:(id)view;
- (_SFSettingsAlertItem)item;
- (void)setDefaultBackgroundMode:(int64_t)mode;
- (void)setHidesSeparator:(BOOL)separator;
@end

@implementation _SFSettingsAlertCustomViewContainer

- (_SFSettingsAlertCustomViewContainer)initWithContentView:(id)view
{
  v26[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy bounds];
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
    [(_SFSettingsAlertCustomViewContainer *)v5 addSubview:viewCopy];
    v19 = MEMORY[0x1E696ACD8];
    topAnchor = [viewCopy topAnchor];
    topAnchor2 = [(_SFSettingsAlertCustomViewContainer *)v5 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[0] = v22;
    leadingAnchor = [viewCopy leadingAnchor];
    leadingAnchor2 = [(_SFSettingsAlertCustomViewContainer *)v5 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[1] = v9;
    bottomAnchor = [viewCopy bottomAnchor];
    bottomAnchor2 = [(_SFSettingsAlertCustomViewContainer *)v5 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[2] = v12;
    trailingAnchor = [viewCopy trailingAnchor];
    trailingAnchor2 = [(_SFSettingsAlertCustomViewContainer *)v5 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v19 activateConstraints:v16];

    v17 = v5;
  }

  return v5;
}

- (void)setHidesSeparator:(BOOL)separator
{
  if (self->_hidesSeparator != separator)
  {
    self->_hidesSeparator = separator;
    if (separator)
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

- (void)setDefaultBackgroundMode:(int64_t)mode
{
  if (self->_defaultBackgroundMode != mode)
  {
    self->_defaultBackgroundMode = mode;
    if (self->_hidesSeparator)
    {
      mode = 0;
    }

    [(_SFSettingsAlertItemBackgroundView *)self->_backgroundView setMode:mode];
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