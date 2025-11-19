@interface FeatureDiscoveryOutlineCell
- (FeatureDiscoveryOutlineCell)initWithFrame:(CGRect)a3;
@end

@implementation FeatureDiscoveryOutlineCell

- (FeatureDiscoveryOutlineCell)initWithFrame:(CGRect)a3
{
  v31.receiver = self;
  v31.super_class = FeatureDiscoveryOutlineCell;
  v3 = [(SidebarOutlineCell *)&v31 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [FeatureDiscoveryView alloc];
    v5 = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    [v5 bounds];
    v6 = [(FeatureDiscoveryView *)v4 initWithFrame:?];
    featureDiscoveryView = v3->_featureDiscoveryView;
    v3->_featureDiscoveryView = v6;

    [(FeatureDiscoveryView *)v3->_featureDiscoveryView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(FeatureDiscoveryOutlineCell *)v3 setAccessibilityIdentifier:v9];

    v10 = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    [v10 addSubview:v3->_featureDiscoveryView];

    v29 = [(FeatureDiscoveryView *)v3->_featureDiscoveryView topAnchor];
    v30 = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    v28 = [v30 topAnchor];
    v27 = [v29 constraintEqualToAnchor:v28 constant:16.0];
    v32[0] = v27;
    v25 = [(FeatureDiscoveryView *)v3->_featureDiscoveryView leadingAnchor];
    v26 = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    v24 = [v26 layoutMarginsGuide];
    v23 = [v24 leadingAnchor];
    v22 = [v25 constraintEqualToAnchor:v23];
    v32[1] = v22;
    v21 = [(FeatureDiscoveryView *)v3->_featureDiscoveryView trailingAnchor];
    v11 = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    v12 = [v11 layoutMarginsGuide];
    v13 = [v12 trailingAnchor];
    v14 = [v21 constraintEqualToAnchor:v13];
    v32[2] = v14;
    v15 = [(FeatureDiscoveryView *)v3->_featureDiscoveryView bottomAnchor];
    v16 = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    v17 = [v16 bottomAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:-16.0];
    v32[3] = v18;
    v19 = [NSArray arrayWithObjects:v32 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }

  return v3;
}

@end