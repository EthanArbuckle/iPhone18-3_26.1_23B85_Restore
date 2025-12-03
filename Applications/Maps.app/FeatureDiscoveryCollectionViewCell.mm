@interface FeatureDiscoveryCollectionViewCell
+ (double)estimatedHeightForContext:(unint64_t)context;
- (FeatureDiscoveryCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_updateFeatureDiscoveryViewConstraints;
- (void)setContext:(unint64_t)context;
@end

@implementation FeatureDiscoveryCollectionViewCell

- (void)setContext:(unint64_t)context
{
  if (self->_context != context)
  {
    self->_context = context;
    [(FeatureDiscoveryCollectionViewCell *)self _updateFeatureDiscoveryViewConstraints];
  }
}

- (void)_updateFeatureDiscoveryViewConstraints
{
  if (self->_featureDiscoveryViewConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  featureDiscoveryView = self->_featureDiscoveryView;
  contentView = [(FeatureDiscoveryCollectionViewCell *)self contentView];
  traitCollection = [(FeatureDiscoveryCollectionViewCell *)self traitCollection];
  v6 = +[FeatureDiscoveryView _constraintsForFeatureDiscoveryView:centeredInContentView:withIdiom:context:](FeatureDiscoveryView, "_constraintsForFeatureDiscoveryView:centeredInContentView:withIdiom:context:", featureDiscoveryView, contentView, [traitCollection userInterfaceIdiom], self->_context);
  featureDiscoveryViewConstraints = self->_featureDiscoveryViewConstraints;
  self->_featureDiscoveryViewConstraints = v6;

  v8 = self->_featureDiscoveryViewConstraints;

  [NSLayoutConstraint activateConstraints:v8];
}

- (FeatureDiscoveryCollectionViewCell)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = FeatureDiscoveryCollectionViewCell;
  v3 = [(MapsThemeCollectionViewCell *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(FeatureDiscoveryCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = +[UIColor clearColor];
    contentView = [(FeatureDiscoveryCollectionViewCell *)v3 contentView];
    [contentView setBackgroundColor:v5];

    v7 = [FeatureDiscoveryView alloc];
    contentView2 = [(FeatureDiscoveryCollectionViewCell *)v3 contentView];
    [contentView2 bounds];
    v9 = [(FeatureDiscoveryView *)v7 initWithFrame:?];
    featureDiscoveryView = v3->_featureDiscoveryView;
    v3->_featureDiscoveryView = v9;

    [(FeatureDiscoveryView *)v3->_featureDiscoveryView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(FeatureDiscoveryCollectionViewCell *)v3 contentView];
    [contentView3 addSubview:v3->_featureDiscoveryView];

    [(FeatureDiscoveryCollectionViewCell *)v3 _updateFeatureDiscoveryViewConstraints];
  }

  return v3;
}

+ (double)estimatedHeightForContext:(unint64_t)context
{
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  [FeatureDiscoveryView _cellMetricsForIdiom:userInterfaceIdiom context:context];
  v7 = v6;
  v9 = v8;
  +[FeatureDiscoveryView estimatedHeight];
  return v9 + v7 + v10;
}

@end