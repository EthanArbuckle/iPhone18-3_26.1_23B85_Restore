@interface CollectionTableViewCell
- (CollectionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_cellBackgroundColor;
- (void)createContent;
- (void)setCollectionInfo:(id)a3;
- (void)setCollectionViewSize:(unint64_t)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setShowCheckmark:(BOOL)a3;
@end

@implementation CollectionTableViewCell

- (void)setShowCheckmark:(BOOL)a3
{
  if (self->_showCheckmark != a3)
  {
    self->_showCheckmark = a3;
    [(CollectionView *)self->_collectionView setShowCheckmark:?];
  }
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(CollectionView *)self->_collectionView setDisabled:?];
  }
}

- (void)setCollectionInfo:(id)a3
{
  v5 = a3;
  if (self->_collectionInfo != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_collectionInfo, a3);
    [(CollectionView *)self->_collectionView setCollectionInfo:self->_collectionInfo];
    v5 = v6;
  }
}

- (void)setCollectionViewSize:(unint64_t)a3
{
  if (self->_collectionViewSize != a3)
  {
    self->_collectionViewSize = a3;
    [(CollectionView *)self->_collectionView setCollectionViewSize:?];
  }
}

- (void)createContent
{
  v3 = [(CollectionTableViewCell *)self _tableView];
  v4 = [v3 style];

  if (v4 == 2)
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
  v6 = [(CollectionTableViewCell *)self contentView];
  [v6 setAccessibilityIdentifier:@"CollectionTableViewCellContent"];

  v7 = [[CollectionView alloc] initWithCollectionViewSize:self->_collectionViewSize];
  collectionView = self->_collectionView;
  self->_collectionView = v7;

  [(CollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CollectionView *)self->_collectionView setAccessibilityIdentifier:@"CollectionTableViewCellCollectionView"];
  v9 = [(CollectionTableViewCell *)self contentView];
  [v9 addSubview:self->_collectionView];

  v25 = [(CollectionView *)self->_collectionView topAnchor];
  v26 = [(CollectionTableViewCell *)self contentView];
  v24 = [v26 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v27[0] = v23;
  v21 = [(CollectionView *)self->_collectionView leadingAnchor];
  v22 = [(CollectionTableViewCell *)self contentView];
  v20 = [v22 leadingAnchor];
  v10 = [v21 constraintEqualToAnchor:v20];
  v27[1] = v10;
  v11 = [(CollectionView *)self->_collectionView trailingAnchor];
  v12 = [(CollectionTableViewCell *)self contentView];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v27[2] = v14;
  v15 = [(CollectionView *)self->_collectionView bottomAnchor];
  v16 = [(CollectionTableViewCell *)self contentView];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
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

- (CollectionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CollectionTableViewCell;
  v4 = [(CollectionTableViewCell *)&v7 initWithStyle:0 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v4->_collectionViewSize = 0;
    [(CollectionTableViewCell *)v4 createContent];
  }

  return v5;
}

@end