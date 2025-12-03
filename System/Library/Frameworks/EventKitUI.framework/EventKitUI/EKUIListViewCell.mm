@interface EKUIListViewCell
+ (UIEdgeInsets)adjustedSeparatorInsets;
- (EKUIListViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)carplayBackgroundViewInsets;
- (UIView)cellContentView;
- (id)initForCarplayWithReuseIdentifier:(id)identifier;
- (id)initForDragPreview;
- (void)_commonInit;
- (void)_updateVisualEffectBackground;
- (void)layoutSubviews;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation EKUIListViewCell

- (id)initForCarplayWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = EKUIListViewCell;
  v3 = [(EKUITableViewCell *)&v6 initWithStyle:0 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    v3->_carplayMode = 1;
    [(EKUIListViewCell *)v3 setAutomaticallyUpdatesBackgroundConfiguration:0];
    [(EKUIListViewCell *)v4 _commonInit];
  }

  return v4;
}

- (id)initForDragPreview
{
  v5.receiver = self;
  v5.super_class = EKUIListViewCell;
  v2 = [(EKUITableViewCell *)&v5 initWithStyle:0 reuseIdentifier:0];
  v3 = v2;
  if (v2)
  {
    v2->_dragPreview = 1;
    [(EKUIListViewCell *)v2 setAutomaticallyUpdatesBackgroundConfiguration:0];
    [(EKUIListViewCell *)v3 _commonInit];
  }

  return v3;
}

- (EKUIListViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = EKUIListViewCell;
  v4 = [(EKUITableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(EKUIListViewCell *)v4 setAutomaticallyUpdatesBackgroundConfiguration:0];
    [(EKUIListViewCell *)v5 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  v41[1] = *MEMORY[0x1E69E9840];
  if ([(EKUIListViewCell *)self _usesVisualEffectBackground])
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD298]);
    [(UIVisualEffectView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIVisualEffectView *)v3 layer];
    [layer setMasksToBounds:1];

    v5 = objc_opt_self();
    v41[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v7 = [(EKUIListViewCell *)self registerForTraitChanges:v6 withAction:sel__updateVisualEffectBackground];

    effectView = self->_effectView;
    self->_effectView = v3;
    v39 = v3;

    [(EKUIListViewCell *)self _updateVisualEffectBackground];
    contentView = [(EKUIListViewCell *)self contentView];
    [contentView addSubview:self->_effectView];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(EKUIListViewCell *)self setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    contentView2 = [(EKUIListViewCell *)self contentView];
    [contentView2 setBackgroundColor:clearColor2];

    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v31 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIVisualEffectView *)self->_effectView leadingAnchor];
    contentView3 = [(EKUIListViewCell *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v16];
    v40[0] = v35;
    trailingAnchor = [(UIVisualEffectView *)self->_effectView trailingAnchor];
    contentView4 = [(EKUIListViewCell *)self contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v20];
    v40[1] = v21;
    topAnchor = [(UIVisualEffectView *)self->_effectView topAnchor];
    contentView5 = [(EKUIListViewCell *)self contentView];
    topAnchor2 = [contentView5 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v14];
    v40[2] = v25;
    bottomAnchor = [(UIVisualEffectView *)self->_effectView bottomAnchor];
    contentView6 = [(EKUIListViewCell *)self contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v18];
    v40[3] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
    [v31 activateConstraints:v30];
  }
}

- (UIEdgeInsets)carplayBackgroundViewInsets
{
  v2 = 2.0;
  v3 = 0.0;
  v4 = 2.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  if ([stateCopy isSelected] && !-[EKUIListViewCell carplayMode](self, "carplayMode"))
  {
    defaultBackgroundConfiguration = [(EKUIListViewCell *)self defaultBackgroundConfiguration];
    clearConfiguration = [defaultBackgroundConfiguration updatedConfigurationForState:stateCopy];

    LODWORD(defaultBackgroundConfiguration) = CalInterfaceIsLeftToRight();
    [(EKUIListViewCell *)self safeAreaInsets];
    if (defaultBackgroundConfiguration)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    IsLeftToRight = CalInterfaceIsLeftToRight();
    [(EKUIListViewCell *)self safeAreaInsets];
    if (IsLeftToRight)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    v14 = CalInterfaceIsLeftToRight();
    [(EKUIListViewCell *)self layoutMargins];
    if (v14)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v18 = CalInterfaceIsLeftToRight();
    [(EKUIListViewCell *)self layoutMargins];
    if (v18)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 + -8.0;
    [clearConfiguration setCornerRadius:6.0];
    [clearConfiguration setBackgroundInsets:{4.0, v9 - (v17 + -8.0), 4.0, v13 - v22}];
    [clearConfiguration setEdgesAddingLayoutMarginsToBackgroundInsets:10];
    [(EKUIListViewCell *)self setBackgroundConfiguration:clearConfiguration];
  }

  else
  {
    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    v5 = [clearConfiguration updatedConfigurationForState:stateCopy];
    [(EKUIListViewCell *)self setBackgroundConfiguration:v5];
  }
}

+ (UIEdgeInsets)adjustedSeparatorInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = EKUIListViewCell;
  [(EKUITableViewCell *)&v11 layoutSubviews];
  if ([(EKUIListViewCell *)self _usesVisualEffectBackground])
  {
    v3 = 14.0;
    if ([(EKUIListViewCell *)self wantsPillShape])
    {
      [(EKUIListViewCell *)self carplayBackgroundViewInsets];
      v5 = v4;
      v7 = v6;
      contentView = [(EKUIListViewCell *)self contentView];
      [contentView bounds];
      v9 = CGRectGetHeight(v12) - v5 - v7;

      v3 = v9 * 0.5;
    }

    layer = [(UIVisualEffectView *)self->_effectView layer];
    [layer setCornerRadius:v3];
  }
}

- (UIView)cellContentView
{
  if ([(EKUIListViewCell *)self _usesVisualEffectBackground])
  {
    effectView = [(EKUIListViewCell *)self effectView];
    contentView = [effectView contentView];
  }

  else
  {
    contentView = [(EKUIListViewCell *)self contentView];
  }

  return contentView;
}

- (void)_updateVisualEffectBackground
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DC730];
  traitCollection = [(EKUIListViewCell *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  v6 = [v3 effectWithStyle:v5];

  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(UIVisualEffectView *)self->_effectView setBackgroundEffects:v7];
}

@end