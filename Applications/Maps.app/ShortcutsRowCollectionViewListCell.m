@interface ShortcutsRowCollectionViewListCell
- (ShortcutsRowCollectionViewListCell)initWithFrame:(CGRect)a3;
- (ShortcutsRowCollectionViewListCellDelegate)delegate;
- (void)shortcutsRowCellProvider:(id)a3 editShortcut:(id)a4;
- (void)shortcutsRowCellProvider:(id)a3 openFavorite:(id)a4;
- (void)shortcutsRowCellProvider:(id)a3 openShortcut:(id)a4;
- (void)shortcutsRowCellProvider:(id)a3 removeShortcut:(id)a4;
- (void)shortcutsRowCellProviderAddNewShortcut:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ShortcutsRowCollectionViewListCell

- (ShortcutsRowCollectionViewListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)shortcutsRowCellProvider:(id)a3 removeShortcut:(id)a4
{
  v5 = a4;
  v6 = [(ShortcutsRowCollectionViewListCell *)self delegate];
  [v6 removeFavoriteShortcut:v5];
}

- (void)shortcutsRowCellProvider:(id)a3 editShortcut:(id)a4
{
  v5 = a4;
  v6 = [(ShortcutsRowCollectionViewListCell *)self delegate];
  [v6 editFavoriteShortcut:v5];
}

- (void)shortcutsRowCellProvider:(id)a3 openFavorite:(id)a4
{
  v5 = a4;
  v6 = [(ShortcutsRowCollectionViewListCell *)self delegate];
  [v6 shortcutsRowCollectionViewListCell:self openFavorite:v5];
}

- (void)shortcutsRowCellProvider:(id)a3 openShortcut:(id)a4
{
  v5 = a4;
  v6 = [(ShortcutsRowCollectionViewListCell *)self delegate];
  [v6 shortcutsRowCollectionViewListCell:self openShortcut:v5];
}

- (void)shortcutsRowCellProviderAddNewShortcut:(id)a3
{
  v4 = [(ShortcutsRowCollectionViewListCell *)self delegate];
  [v4 shortcutsRowCollectionViewListCellAddNewShortcut:self];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = ShortcutsRowCollectionViewListCell;
  [(ShortcutsRowCollectionViewListCell *)&v5 traitCollectionDidChange:a3];
  v4 = [(ShortcutsRowCollectionViewListCell *)self traitCollection];
  [(ShortcutsRowCellProvider *)self->_cellProvider setTraitCollection:v4];
}

- (ShortcutsRowCollectionViewListCell)initWithFrame:(CGRect)a3
{
  v33.receiver = self;
  v33.super_class = ShortcutsRowCollectionViewListCell;
  v3 = [(ShortcutsRowCollectionViewListCell *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UICollectionView alloc];
    v5 = objc_alloc_init(UICollectionViewFlowLayout);
    v6 = [v4 initWithFrame:v5 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    collectionView = v3->_collectionView;
    v3->_collectionView = v6;

    [(UICollectionView *)v3->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UICollectionView *)v3->_collectionView setAlwaysBounceHorizontal:1];
    v8 = +[UIColor clearColor];
    [(UICollectionView *)v3->_collectionView setBackgroundColor:v8];

    [(UICollectionView *)v3->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)v3->_collectionView setAccessibilityIdentifier:@"ShortcutsRowTableViewCellCollectionView"];
    v9 = [(ShortcutsRowCollectionViewListCell *)v3 contentView];
    [v9 addSubview:v3->_collectionView];

    v10 = [[ShortcutsRowCellProvider alloc] initWithCollectionView:v3->_collectionView];
    cellProvider = v3->_cellProvider;
    v3->_cellProvider = v10;

    [(ShortcutsRowCellProvider *)v3->_cellProvider setDelegate:v3];
    v12 = [(ShortcutsRowCollectionViewListCell *)v3 traitCollection];
    [(ShortcutsRowCellProvider *)v3->_cellProvider setTraitCollection:v12];

    v31 = [(UICollectionView *)v3->_collectionView topAnchor];
    v32 = [(ShortcutsRowCollectionViewListCell *)v3 contentView];
    v30 = [v32 topAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v34[0] = v29;
    v27 = [(UICollectionView *)v3->_collectionView leadingAnchor];
    v28 = [(ShortcutsRowCollectionViewListCell *)v3 contentView];
    v26 = [v28 leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v34[1] = v25;
    v24 = [(UICollectionView *)v3->_collectionView trailingAnchor];
    v13 = [(ShortcutsRowCollectionViewListCell *)v3 contentView];
    v14 = [v13 trailingAnchor];
    v15 = [v24 constraintEqualToAnchor:v14];
    v34[2] = v15;
    v16 = [(UICollectionView *)v3->_collectionView bottomAnchor];
    v17 = [(ShortcutsRowCollectionViewListCell *)v3 contentView];
    v18 = [v17 bottomAnchor];
    LODWORD(v19) = 1132068864;
    v20 = [v16 constraintEqualToAnchor:v18 constant:0.0 priority:v19];
    v34[3] = v20;
    v21 = [(ShortcutsRowCellProvider *)v3->_cellProvider heightConstraint];
    v34[4] = v21;
    v22 = [NSArray arrayWithObjects:v34 count:5];
    [NSLayoutConstraint activateConstraints:v22];
  }

  return v3;
}

@end