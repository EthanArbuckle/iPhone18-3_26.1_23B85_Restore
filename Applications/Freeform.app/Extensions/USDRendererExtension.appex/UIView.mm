@interface UIView
- (void)crl_activateEqualConstraintsForView:(id)view;
@end

@implementation UIView

- (void)crl_activateEqualConstraintsForView:(id)view
{
  viewCopy = view;
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v18[0] = v15;
  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [(UIView *)self trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v18[1] = v7;
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v18[2] = v10;
  bottomAnchor = [viewCopy bottomAnchor];

  bottomAnchor2 = [(UIView *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v18[3] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

@end