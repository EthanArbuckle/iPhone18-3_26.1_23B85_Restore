@interface EKUIListViewCell
+ (UIEdgeInsets)adjustedSeparatorInsets;
- (EKUIListViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)carplayBackgroundViewInsets;
- (UIView)cellContentView;
- (id)initForCarplayWithReuseIdentifier:(id)a3;
- (id)initForDragPreview;
- (void)_commonInit;
- (void)_updateVisualEffectBackground;
- (void)layoutSubviews;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation EKUIListViewCell

- (id)initForCarplayWithReuseIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = EKUIListViewCell;
  v3 = [(EKUITableViewCell *)&v6 initWithStyle:0 reuseIdentifier:a3];
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

- (EKUIListViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = EKUIListViewCell;
  v4 = [(EKUITableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
    v4 = [(UIVisualEffectView *)v3 layer];
    [v4 setMasksToBounds:1];

    v5 = objc_opt_self();
    v41[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v7 = [(EKUIListViewCell *)self registerForTraitChanges:v6 withAction:sel__updateVisualEffectBackground];

    effectView = self->_effectView;
    self->_effectView = v3;
    v39 = v3;

    [(EKUIListViewCell *)self _updateVisualEffectBackground];
    v9 = [(EKUIListViewCell *)self contentView];
    [v9 addSubview:self->_effectView];

    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(EKUIListViewCell *)self setBackgroundColor:v10];

    v11 = [MEMORY[0x1E69DC888] clearColor];
    v12 = [(EKUIListViewCell *)self contentView];
    [v12 setBackgroundColor:v11];

    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v31 = MEMORY[0x1E696ACD8];
    v37 = [(UIVisualEffectView *)self->_effectView leadingAnchor];
    v38 = [(EKUIListViewCell *)self contentView];
    v36 = [v38 leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:v16];
    v40[0] = v35;
    v33 = [(UIVisualEffectView *)self->_effectView trailingAnchor];
    v34 = [(EKUIListViewCell *)self contentView];
    v32 = [v34 trailingAnchor];
    v21 = [v33 constraintEqualToAnchor:v32 constant:-v20];
    v40[1] = v21;
    v22 = [(UIVisualEffectView *)self->_effectView topAnchor];
    v23 = [(EKUIListViewCell *)self contentView];
    v24 = [v23 topAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:v14];
    v40[2] = v25;
    v26 = [(UIVisualEffectView *)self->_effectView bottomAnchor];
    v27 = [(EKUIListViewCell *)self contentView];
    v28 = [v27 bottomAnchor];
    v29 = [v26 constraintEqualToAnchor:v28 constant:-v18];
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

- (void)updateConfigurationUsingState:(id)a3
{
  v23 = a3;
  if ([v23 isSelected] && !-[EKUIListViewCell carplayMode](self, "carplayMode"))
  {
    v6 = [(EKUIListViewCell *)self defaultBackgroundConfiguration];
    v4 = [v6 updatedConfigurationForState:v23];

    LODWORD(v6) = CalInterfaceIsLeftToRight();
    [(EKUIListViewCell *)self safeAreaInsets];
    if (v6)
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
    [v4 setCornerRadius:6.0];
    [v4 setBackgroundInsets:{4.0, v9 - (v17 + -8.0), 4.0, v13 - v22}];
    [v4 setEdgesAddingLayoutMarginsToBackgroundInsets:10];
    [(EKUIListViewCell *)self setBackgroundConfiguration:v4];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    v5 = [v4 updatedConfigurationForState:v23];
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
      v8 = [(EKUIListViewCell *)self contentView];
      [v8 bounds];
      v9 = CGRectGetHeight(v12) - v5 - v7;

      v3 = v9 * 0.5;
    }

    v10 = [(UIVisualEffectView *)self->_effectView layer];
    [v10 setCornerRadius:v3];
  }
}

- (UIView)cellContentView
{
  if ([(EKUIListViewCell *)self _usesVisualEffectBackground])
  {
    v3 = [(EKUIListViewCell *)self effectView];
    v4 = [v3 contentView];
  }

  else
  {
    v4 = [(EKUIListViewCell *)self contentView];
  }

  return v4;
}

- (void)_updateVisualEffectBackground
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DC730];
  v4 = [(EKUIListViewCell *)self traitCollection];
  if ([v4 userInterfaceStyle] == 1)
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