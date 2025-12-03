@interface CARSettingsCollectionViewCell
- (BOOL)canBecomeFocused;
- (CARSettingsCellViewSpecifier)cellViewSpecifier;
- (CARSettingsCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setSpecifier:(id)specifier;
@end

@implementation CARSettingsCollectionViewCell

- (CARSettingsCollectionViewCell)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CARSettingsCollectionViewCell;
  return [(CARSettingsCollectionViewCell *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  contentView = [(CARSettingsCollectionViewCell *)self contentView];
  subviews = [contentView subviews];

  v5 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v9 + 1) + 8 * v8) removeFromSuperview];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  objc_storeStrong(&self->_specifier, specifier);
  objc_opt_class();
  v26 = specifierCopy;
  if (objc_opt_isKindOfClass())
  {
    view = [specifierCopy view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    view = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [view setContentMode:1];
    image = [specifierCopy image];
    [view setImage:image];
  }

  contentView = [(CARSettingsCollectionViewCell *)self contentView];
  [contentView addSubview:view];

  topAnchor = [view topAnchor];
  contentView2 = [(CARSettingsCollectionViewCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[0] = v22;
  leftAnchor = [view leftAnchor];
  contentView3 = [(CARSettingsCollectionViewCell *)self contentView];
  leftAnchor2 = [contentView3 leftAnchor];
  v18 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v27[1] = v18;
  rightAnchor = [view rightAnchor];
  contentView4 = [(CARSettingsCollectionViewCell *)self contentView];
  rightAnchor2 = [contentView4 rightAnchor];
  v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v27[2] = v12;
  bottomAnchor = [view bottomAnchor];
  contentView5 = [(CARSettingsCollectionViewCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v16;
  v17 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (CARSettingsCellViewSpecifier)cellViewSpecifier
{
  objc_opt_class();
  specifier = [(CARSettingsCollectionViewCell *)self specifier];
  if (specifier && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = specifier;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canBecomeFocused
{
  cellViewSpecifier = [(CARSettingsCollectionViewCell *)self cellViewSpecifier];

  if (cellViewSpecifier)
  {
    cellViewSpecifier2 = [(CARSettingsCollectionViewCell *)self cellViewSpecifier];
    canBecomeFocused = [cellViewSpecifier2 canBecomeFocused];

    return canBecomeFocused;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CARSettingsCollectionViewCell;
    return [(CARSettingsCollectionViewCell *)&v7 canBecomeFocused];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v10.receiver = self;
  v10.super_class = CARSettingsCollectionViewCell;
  contextCopy = context;
  [(CARSettingsCollectionViewCell *)&v10 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];

  v8 = nextFocusedItem == self;
  cellViewSpecifier = [(CARSettingsCollectionViewCell *)self cellViewSpecifier];
  [cellViewSpecifier setFocused:v8];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = CARSettingsCollectionViewCell;
  [(CARSettingsCollectionViewCell *)&v6 setHighlighted:?];
  cellViewSpecifier = [(CARSettingsCollectionViewCell *)self cellViewSpecifier];
  [cellViewSpecifier setHighlighted:highlightedCopy];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = CARSettingsCollectionViewCell;
  [(CARSettingsCollectionViewCell *)&v6 setSelected:?];
  cellViewSpecifier = [(CARSettingsCollectionViewCell *)self cellViewSpecifier];
  [cellViewSpecifier setSelected:selectedCopy];
}

@end