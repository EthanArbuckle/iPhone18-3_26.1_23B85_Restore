@interface CARSettingsCollectionViewCell
- (BOOL)canBecomeFocused;
- (CARSettingsCellViewSpecifier)cellViewSpecifier;
- (CARSettingsCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSpecifier:(id)a3;
@end

@implementation CARSettingsCollectionViewCell

- (CARSettingsCollectionViewCell)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CARSettingsCollectionViewCell;
  return [(CARSettingsCollectionViewCell *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)prepareForReuse
{
  v13.receiver = self;
  v13.super_class = CARSettingsCollectionViewCell;
  [(CARSettingsCollectionViewCell *)&v13 prepareForReuse];
  [(CARSettingsCollectionViewCell *)self setSpecifier:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(CARSettingsCollectionViewCell *)self contentView];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) removeFromSuperview];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setSpecifier:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_specifier, a3);
  objc_opt_class();
  v26 = v5;
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 view];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v6 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setContentMode:1];
    v7 = [v5 image];
    [v6 setImage:v7];
  }

  v8 = [(CARSettingsCollectionViewCell *)self contentView];
  [v8 addSubview:v6];

  v24 = [v6 topAnchor];
  v25 = [(CARSettingsCollectionViewCell *)self contentView];
  v23 = [v25 topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v27[0] = v22;
  v20 = [v6 leftAnchor];
  v21 = [(CARSettingsCollectionViewCell *)self contentView];
  v19 = [v21 leftAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v27[1] = v18;
  v9 = [v6 rightAnchor];
  v10 = [(CARSettingsCollectionViewCell *)self contentView];
  v11 = [v10 rightAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v27[2] = v12;
  v13 = [v6 bottomAnchor];
  v14 = [(CARSettingsCollectionViewCell *)self contentView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v27[3] = v16;
  v17 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (CARSettingsCellViewSpecifier)cellViewSpecifier
{
  objc_opt_class();
  v3 = [(CARSettingsCollectionViewCell *)self specifier];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canBecomeFocused
{
  v3 = [(CARSettingsCollectionViewCell *)self cellViewSpecifier];

  if (v3)
  {
    v4 = [(CARSettingsCollectionViewCell *)self cellViewSpecifier];
    v5 = [v4 canBecomeFocused];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CARSettingsCollectionViewCell;
    return [(CARSettingsCollectionViewCell *)&v7 canBecomeFocused];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v10.receiver = self;
  v10.super_class = CARSettingsCollectionViewCell;
  v6 = a3;
  [(CARSettingsCollectionViewCell *)&v10 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];

  v8 = v7 == self;
  v9 = [(CARSettingsCollectionViewCell *)self cellViewSpecifier];
  [v9 setFocused:v8];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CARSettingsCollectionViewCell;
  [(CARSettingsCollectionViewCell *)&v6 setHighlighted:?];
  v5 = [(CARSettingsCollectionViewCell *)self cellViewSpecifier];
  [v5 setHighlighted:v3];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CARSettingsCollectionViewCell;
  [(CARSettingsCollectionViewCell *)&v6 setSelected:?];
  v5 = [(CARSettingsCollectionViewCell *)self cellViewSpecifier];
  [v5 setSelected:v3];
}

@end