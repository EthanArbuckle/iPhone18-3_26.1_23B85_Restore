@interface ShortcutsRowCollectionViewListCell
- (ShortcutsRowCollectionViewListCell)initWithFrame:(CGRect)frame;
- (ShortcutsRowCollectionViewListCellDelegate)delegate;
- (void)shortcutsRowCellProvider:(id)provider editShortcut:(id)shortcut;
- (void)shortcutsRowCellProvider:(id)provider openFavorite:(id)favorite;
- (void)shortcutsRowCellProvider:(id)provider openShortcut:(id)shortcut;
- (void)shortcutsRowCellProvider:(id)provider removeShortcut:(id)shortcut;
- (void)shortcutsRowCellProviderAddNewShortcut:(id)shortcut;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ShortcutsRowCollectionViewListCell

- (ShortcutsRowCollectionViewListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)shortcutsRowCellProvider:(id)provider removeShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  delegate = [(ShortcutsRowCollectionViewListCell *)self delegate];
  [delegate removeFavoriteShortcut:shortcutCopy];
}

- (void)shortcutsRowCellProvider:(id)provider editShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  delegate = [(ShortcutsRowCollectionViewListCell *)self delegate];
  [delegate editFavoriteShortcut:shortcutCopy];
}

- (void)shortcutsRowCellProvider:(id)provider openFavorite:(id)favorite
{
  favoriteCopy = favorite;
  delegate = [(ShortcutsRowCollectionViewListCell *)self delegate];
  [delegate shortcutsRowCollectionViewListCell:self openFavorite:favoriteCopy];
}

- (void)shortcutsRowCellProvider:(id)provider openShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  delegate = [(ShortcutsRowCollectionViewListCell *)self delegate];
  [delegate shortcutsRowCollectionViewListCell:self openShortcut:shortcutCopy];
}

- (void)shortcutsRowCellProviderAddNewShortcut:(id)shortcut
{
  delegate = [(ShortcutsRowCollectionViewListCell *)self delegate];
  [delegate shortcutsRowCollectionViewListCellAddNewShortcut:self];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = ShortcutsRowCollectionViewListCell;
  [(ShortcutsRowCollectionViewListCell *)&v5 traitCollectionDidChange:change];
  traitCollection = [(ShortcutsRowCollectionViewListCell *)self traitCollection];
  [(ShortcutsRowCellProvider *)self->_cellProvider setTraitCollection:traitCollection];
}

- (ShortcutsRowCollectionViewListCell)initWithFrame:(CGRect)frame
{
  v33.receiver = self;
  v33.super_class = ShortcutsRowCollectionViewListCell;
  v3 = [(ShortcutsRowCollectionViewListCell *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    contentView = [(ShortcutsRowCollectionViewListCell *)v3 contentView];
    [contentView addSubview:v3->_collectionView];

    v10 = [[ShortcutsRowCellProvider alloc] initWithCollectionView:v3->_collectionView];
    cellProvider = v3->_cellProvider;
    v3->_cellProvider = v10;

    [(ShortcutsRowCellProvider *)v3->_cellProvider setDelegate:v3];
    traitCollection = [(ShortcutsRowCollectionViewListCell *)v3 traitCollection];
    [(ShortcutsRowCellProvider *)v3->_cellProvider setTraitCollection:traitCollection];

    topAnchor = [(UICollectionView *)v3->_collectionView topAnchor];
    contentView2 = [(ShortcutsRowCollectionViewListCell *)v3 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v34[0] = v29;
    leadingAnchor = [(UICollectionView *)v3->_collectionView leadingAnchor];
    contentView3 = [(ShortcutsRowCollectionViewListCell *)v3 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v34[1] = v25;
    trailingAnchor = [(UICollectionView *)v3->_collectionView trailingAnchor];
    contentView4 = [(ShortcutsRowCollectionViewListCell *)v3 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v34[2] = v15;
    bottomAnchor = [(UICollectionView *)v3->_collectionView bottomAnchor];
    contentView5 = [(ShortcutsRowCollectionViewListCell *)v3 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    LODWORD(v19) = 1132068864;
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0 priority:v19];
    v34[3] = v20;
    heightConstraint = [(ShortcutsRowCellProvider *)v3->_cellProvider heightConstraint];
    v34[4] = heightConstraint;
    v22 = [NSArray arrayWithObjects:v34 count:5];
    [NSLayoutConstraint activateConstraints:v22];
  }

  return v3;
}

@end