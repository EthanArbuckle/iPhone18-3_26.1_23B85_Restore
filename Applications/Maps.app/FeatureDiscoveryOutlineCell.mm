@interface FeatureDiscoveryOutlineCell
- (FeatureDiscoveryOutlineCell)initWithFrame:(CGRect)frame;
@end

@implementation FeatureDiscoveryOutlineCell

- (FeatureDiscoveryOutlineCell)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = FeatureDiscoveryOutlineCell;
  v3 = [(SidebarOutlineCell *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [FeatureDiscoveryView alloc];
    contentView = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    [contentView bounds];
    v6 = [(FeatureDiscoveryView *)v4 initWithFrame:?];
    featureDiscoveryView = v3->_featureDiscoveryView;
    v3->_featureDiscoveryView = v6;

    [(FeatureDiscoveryView *)v3->_featureDiscoveryView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(FeatureDiscoveryOutlineCell *)v3 setAccessibilityIdentifier:v9];

    contentView2 = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    [contentView2 addSubview:v3->_featureDiscoveryView];

    topAnchor = [(FeatureDiscoveryView *)v3->_featureDiscoveryView topAnchor];
    contentView3 = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    v32[0] = v27;
    leadingAnchor = [(FeatureDiscoveryView *)v3->_featureDiscoveryView leadingAnchor];
    contentView4 = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[1] = v22;
    trailingAnchor = [(FeatureDiscoveryView *)v3->_featureDiscoveryView trailingAnchor];
    contentView5 = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[2] = v14;
    bottomAnchor = [(FeatureDiscoveryView *)v3->_featureDiscoveryView bottomAnchor];
    contentView6 = [(FeatureDiscoveryOutlineCell *)v3 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    v32[3] = v18;
    v19 = [NSArray arrayWithObjects:v32 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }

  return v3;
}

@end