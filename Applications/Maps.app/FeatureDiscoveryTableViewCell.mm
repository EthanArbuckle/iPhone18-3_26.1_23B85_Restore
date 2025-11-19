@interface FeatureDiscoveryTableViewCell
+ (double)estimatedHeightForContext:(unint64_t)a3;
+ (id)reuseIdentifier;
- (FeatureDiscoveryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateFeatureDiscoveryViewConstraints;
- (void)setContext:(unint64_t)a3;
@end

@implementation FeatureDiscoveryTableViewCell

- (void)setContext:(unint64_t)a3
{
  if (self->_context != a3)
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
  v4 = [(FeatureDiscoveryTableViewCell *)self contentView];
  v5 = [(FeatureDiscoveryTableViewCell *)self traitCollection];
  v6 = +[FeatureDiscoveryView _constraintsForFeatureDiscoveryView:centeredInContentView:withIdiom:context:](FeatureDiscoveryView, "_constraintsForFeatureDiscoveryView:centeredInContentView:withIdiom:context:", featureDiscoveryView, v4, [v5 userInterfaceIdiom], self->_context);
  featureDiscoveryViewConstraints = self->_featureDiscoveryViewConstraints;
  self->_featureDiscoveryViewConstraints = v6;

  v8 = self->_featureDiscoveryViewConstraints;

  [NSLayoutConstraint activateConstraints:v8];
}

- (FeatureDiscoveryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = FeatureDiscoveryTableViewCell;
  v4 = [(FeatureDiscoveryTableViewCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(FeatureDiscoveryTableViewCell *)v4 setSelectionStyle:0];
    v6 = +[UIColor clearColor];
    [(FeatureDiscoveryTableViewCell *)v5 setBackgroundColor:v6];

    v7 = +[UIColor clearColor];
    v8 = [(FeatureDiscoveryTableViewCell *)v5 contentView];
    [v8 setBackgroundColor:v7];

    v9 = [FeatureDiscoveryView alloc];
    v10 = [(FeatureDiscoveryTableViewCell *)v5 contentView];
    [v10 bounds];
    v11 = [(FeatureDiscoveryView *)v9 initWithFrame:?];
    featureDiscoveryView = v5->_featureDiscoveryView;
    v5->_featureDiscoveryView = v11;

    [(FeatureDiscoveryView *)v5->_featureDiscoveryView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(FeatureDiscoveryTableViewCell *)v5 contentView];
    [v13 addSubview:v5->_featureDiscoveryView];

    [(FeatureDiscoveryTableViewCell *)v5 _updateFeatureDiscoveryViewConstraints];
  }

  return v5;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (double)estimatedHeightForContext:(unint64_t)a3
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  [FeatureDiscoveryView _cellMetricsForIdiom:v5 context:a3];
  v7 = v6;
  v9 = v8;
  +[FeatureDiscoveryView estimatedHeight];
  return v9 + v7 + v10;
}

@end