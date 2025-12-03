@interface CollectionTableViewCell
- (CollectionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_cellBackgroundColor;
- (void)createContent;
- (void)setCollectionInfo:(id)info;
- (void)setCollectionViewSize:(unint64_t)size;
- (void)setDisabled:(BOOL)disabled;
- (void)setShowCheckmark:(BOOL)checkmark;
@end

@implementation CollectionTableViewCell

- (void)setShowCheckmark:(BOOL)checkmark
{
  if (self->_showCheckmark != checkmark)
  {
    self->_showCheckmark = checkmark;
    [(CollectionView *)self->_collectionView setShowCheckmark:?];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(CollectionView *)self->_collectionView setDisabled:?];
  }
}

- (void)setCollectionInfo:(id)info
{
  infoCopy = info;
  if (self->_collectionInfo != infoCopy)
  {
    v6 = infoCopy;
    objc_storeStrong(&self->_collectionInfo, info);
    [(CollectionView *)self->_collectionView setCollectionInfo:self->_collectionInfo];
    infoCopy = v6;
  }
}

- (void)setCollectionViewSize:(unint64_t)size
{
  if (self->_collectionViewSize != size)
  {
    self->_collectionViewSize = size;
    [(CollectionView *)self->_collectionView setCollectionViewSize:?];
  }
}

- (void)createContent
{
  _tableView = [(CollectionTableViewCell *)self _tableView];
  style = [_tableView style];

  if (style == 2)
  {
    [(CollectionTableViewCell *)self _cellBackgroundColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v5 = ;
  [(CollectionTableViewCell *)self setBackgroundColor:v5];

  [(CollectionTableViewCell *)self setAccessibilityIdentifier:@"CollectionTableViewCell"];
  contentView = [(CollectionTableViewCell *)self contentView];
  [contentView setAccessibilityIdentifier:@"CollectionTableViewCellContent"];

  v7 = [[CollectionView alloc] initWithCollectionViewSize:self->_collectionViewSize];
  collectionView = self->_collectionView;
  self->_collectionView = v7;

  [(CollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CollectionView *)self->_collectionView setAccessibilityIdentifier:@"CollectionTableViewCellCollectionView"];
  contentView2 = [(CollectionTableViewCell *)self contentView];
  [contentView2 addSubview:self->_collectionView];

  topAnchor = [(CollectionView *)self->_collectionView topAnchor];
  contentView3 = [(CollectionTableViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[0] = v23;
  leadingAnchor = [(CollectionView *)self->_collectionView leadingAnchor];
  contentView4 = [(CollectionTableViewCell *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[1] = v10;
  trailingAnchor = [(CollectionView *)self->_collectionView trailingAnchor];
  contentView5 = [(CollectionTableViewCell *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[2] = v14;
  bottomAnchor = [(CollectionView *)self->_collectionView bottomAnchor];
  contentView6 = [(CollectionTableViewCell *)self contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v18;
  v19 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (id)_cellBackgroundColor
{
  v2 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v3 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
  v9[0] = v2;
  v4 = +[UIColor secondarySystemBackgroundColor];
  v9[1] = v3;
  v10[0] = v4;
  v5 = +[UIColor systemWhiteColor];
  v10[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [UIColor _dynamicColorWithColorsByTraitCollection:v6];

  return v7;
}

- (CollectionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CollectionTableViewCell;
  v4 = [(CollectionTableViewCell *)&v7 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_collectionViewSize = 0;
    [(CollectionTableViewCell *)v4 createContent];
  }

  return v5;
}

@end