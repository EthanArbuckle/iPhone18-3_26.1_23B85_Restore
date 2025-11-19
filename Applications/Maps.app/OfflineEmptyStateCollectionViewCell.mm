@interface OfflineEmptyStateCollectionViewCell
- (OfflineEmptyStateCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation OfflineEmptyStateCollectionViewCell

- (OfflineEmptyStateCollectionViewCell)initWithFrame:(CGRect)a3
{
  v43.receiver = self;
  v43.super_class = OfflineEmptyStateCollectionViewCell;
  v3 = [(OfflineEmptyStateCollectionViewCell *)&v43 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v8 = [(OfflineEmptyStateCollectionViewCell *)v3 contentView];
    [v8 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    v9 = objc_alloc_init(_TtC4Maps14EmptyStateView);
    emptyStateView = v4->_emptyStateView;
    v4->_emptyStateView = v9;

    [(EmptyStateView *)v4->_emptyStateView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    [v11 addSubview:v4->_emptyStateView];

    v41 = [(EmptyStateView *)v4->_emptyStateView topAnchor];
    v42 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    v40 = [v42 layoutMarginsGuide];
    v39 = [v40 topAnchor];
    v38 = [v41 constraintGreaterThanOrEqualToAnchor:v39];
    v44[0] = v38;
    v36 = [(EmptyStateView *)v4->_emptyStateView leadingAnchor];
    v37 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    v35 = [v37 layoutMarginsGuide];
    v34 = [v35 leadingAnchor];
    v33 = [v36 constraintGreaterThanOrEqualToAnchor:v34];
    v44[1] = v33;
    v31 = [(EmptyStateView *)v4->_emptyStateView trailingAnchor];
    v32 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    v30 = [v32 layoutMarginsGuide];
    v29 = [v30 trailingAnchor];
    v28 = [v31 constraintLessThanOrEqualToAnchor:v29];
    v44[2] = v28;
    v26 = [(EmptyStateView *)v4->_emptyStateView bottomAnchor];
    v27 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    v25 = [v27 layoutMarginsGuide];
    v24 = [v25 bottomAnchor];
    v23 = [v26 constraintLessThanOrEqualToAnchor:v24];
    v44[3] = v23;
    v22 = [(EmptyStateView *)v4->_emptyStateView centerXAnchor];
    v12 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    v13 = [v12 centerXAnchor];
    v14 = [v22 constraintEqualToAnchor:v13];
    v44[4] = v14;
    v15 = [(EmptyStateView *)v4->_emptyStateView centerYAnchor];
    v16 = [(OfflineEmptyStateCollectionViewCell *)v4 contentView];
    v17 = [v16 centerYAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v44[5] = v18;
    v19 = [NSArray arrayWithObjects:v44 count:6];
    [NSLayoutConstraint activateConstraints:v19];

    [(EmptyStateView *)v4->_emptyStateView setAccessibilityIdentifier:@"EmptyStateView"];
    v20 = v4;
  }

  return v4;
}

@end