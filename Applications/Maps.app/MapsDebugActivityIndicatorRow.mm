@interface MapsDebugActivityIndicatorRow
- (void)configureCell:(id)a3;
@end

@implementation MapsDebugActivityIndicatorRow

- (void)configureCell:(id)a3
{
  v18.receiver = self;
  v18.super_class = MapsDebugActivityIndicatorRow;
  v4 = a3;
  [(MapsDebugTableRow *)&v18 configureCell:v4];
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v7 = self->_activityIndicator;
    self->_activityIndicator = v6;

    [(UIActivityIndicatorView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    activityIndicator = self->_activityIndicator;
  }

  [(UIActivityIndicatorView *)activityIndicator removeFromSuperview];
  v8 = [v4 contentView];
  [v8 addSubview:self->_activityIndicator];

  v17 = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
  v9 = [v4 contentView];
  v10 = [v9 centerXAnchor];
  v11 = [v17 constraintEqualToAnchor:v10];
  v19[0] = v11;
  v12 = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
  v13 = [v4 contentView];

  v14 = [v13 centerYAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v19[1] = v15;
  v16 = [NSArray arrayWithObjects:v19 count:2];
  [NSLayoutConstraint activateConstraints:v16];

  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
}

@end