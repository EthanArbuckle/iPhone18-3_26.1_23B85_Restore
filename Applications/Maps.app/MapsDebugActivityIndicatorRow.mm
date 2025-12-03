@interface MapsDebugActivityIndicatorRow
- (void)configureCell:(id)cell;
@end

@implementation MapsDebugActivityIndicatorRow

- (void)configureCell:(id)cell
{
  v18.receiver = self;
  v18.super_class = MapsDebugActivityIndicatorRow;
  cellCopy = cell;
  [(MapsDebugTableRow *)&v18 configureCell:cellCopy];
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
  contentView = [cellCopy contentView];
  [contentView addSubview:self->_activityIndicator];

  centerXAnchor = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
  contentView2 = [cellCopy contentView];
  centerXAnchor2 = [contentView2 centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v19[0] = v11;
  centerYAnchor = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
  contentView3 = [cellCopy contentView];

  centerYAnchor2 = [contentView3 centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v19[1] = v15;
  v16 = [NSArray arrayWithObjects:v19 count:2];
  [NSLayoutConstraint activateConstraints:v16];

  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
}

@end