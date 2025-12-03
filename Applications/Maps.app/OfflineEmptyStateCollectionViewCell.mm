@interface OfflineEmptyStateCollectionViewCell
- (OfflineEmptyStateCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation OfflineEmptyStateCollectionViewCell

- (OfflineEmptyStateCollectionViewCell)initWithFrame:(CGRect)frame
{
  v43.receiver = self;
  v43.super_class = OfflineEmptyStateCollectionViewCell;
  v3 = [(OfflineEmptyStateCollectionViewCell *)&v43 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    contentView = [(OfflineEmptyStateCollectionViewCell *)v3 contentView];
    [contentView setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    v9 = objc_alloc_init(_TtC4Maps14EmptyStateView);
    emptyStateView = v4->_emptyStateView;
    v4->_emptyStateView = v9;

    [(EmptyStateView *)v4->_emptyStateView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_emptyStateView];

    topAnchor = [(EmptyStateView *)v4->_emptyStateView topAnchor];
    contentView3 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v38 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v44[0] = v38;
    leadingAnchor = [(EmptyStateView *)v4->_emptyStateView leadingAnchor];
    contentView4 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v33 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v44[1] = v33;
    trailingAnchor = [(EmptyStateView *)v4->_emptyStateView trailingAnchor];
    contentView5 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v28 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v44[2] = v28;
    bottomAnchor = [(EmptyStateView *)v4->_emptyStateView bottomAnchor];
    contentView6 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v23 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v44[3] = v23;
    centerXAnchor = [(EmptyStateView *)v4->_emptyStateView centerXAnchor];
    contentView7 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    centerXAnchor2 = [contentView7 centerXAnchor];
    v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v44[4] = v14;
    centerYAnchor = [(EmptyStateView *)v4->_emptyStateView centerYAnchor];
    contentView8 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    centerYAnchor2 = [contentView8 centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v44[5] = v18;
    v19 = [NSArray arrayWithObjects:v44 count:6];
    [NSLayoutConstraint activateConstraints:v19];

    [(EmptyStateView *)v4->_emptyStateView setAccessibilityIdentifier:@"EmptyStateView"];
    v20 = v4;
  }

  return v4;
}

@end