@interface FeatureDiscoveryTableViewCell
+ (double)estimatedHeightForContext:(unint64_t)context;
+ (id)reuseIdentifier;
- (FeatureDiscoveryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateFeatureDiscoveryViewConstraints;
- (void)setContext:(unint64_t)context;
@end

@implementation FeatureDiscoveryTableViewCell

- (void)setContext:(unint64_t)context
{
  if (self->_context != context)
  {
    [(FeatureDiscoveryTableViewCell *)self _updateFeatureDiscoveryViewConstraints];
  }
}

- (void)_updateFeatureDiscoveryViewConstraints
{
  if (self->_featureDiscoveryViewConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  featureDiscoveryView = self->_featureDiscoveryView;
  contentView = [(FeatureDiscoveryTableViewCell *)self contentView];
  traitCollection = [(FeatureDiscoveryTableViewCell *)self traitCollection];
  v6 = +[FeatureDiscoveryView _constraintsForFeatureDiscoveryView:centeredInContentView:withIdiom:context:](FeatureDiscoveryView, "_constraintsForFeatureDiscoveryView:centeredInContentView:withIdiom:context:", featureDiscoveryView, contentView, [traitCollection userInterfaceIdiom], self->_context);
  featureDiscoveryViewConstraints = self->_featureDiscoveryViewConstraints;
  self->_featureDiscoveryViewConstraints = v6;

  v8 = self->_featureDiscoveryViewConstraints;

  [NSLayoutConstraint activateConstraints:v8];
}

- (FeatureDiscoveryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = FeatureDiscoveryTableViewCell;
  v4 = [(FeatureDiscoveryTableViewCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(FeatureDiscoveryTableViewCell *)v4 setSelectionStyle:0];
    v6 = +[UIColor clearColor];
    [(FeatureDiscoveryTableViewCell *)v5 setBackgroundColor:v6];

    v7 = +[UIColor clearColor];
    contentView = [(FeatureDiscoveryTableViewCell *)v5 contentView];
    [contentView setBackgroundColor:v7];

    v9 = [FeatureDiscoveryView alloc];
    contentView2 = [(FeatureDiscoveryTableViewCell *)v5 contentView];
    [contentView2 bounds];
    v11 = [(FeatureDiscoveryView *)v9 initWithFrame:?];
    featureDiscoveryView = v5->_featureDiscoveryView;
    v5->_featureDiscoveryView = v11;

    [(FeatureDiscoveryView *)v5->_featureDiscoveryView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(FeatureDiscoveryTableViewCell *)v5 contentView];
    [contentView3 addSubview:v5->_featureDiscoveryView];

    [(FeatureDiscoveryTableViewCell *)v5 _updateFeatureDiscoveryViewConstraints];
  }

  return v5;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
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