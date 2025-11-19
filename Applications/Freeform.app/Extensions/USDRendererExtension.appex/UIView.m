@interface UIView
- (void)crl_activateEqualConstraintsForView:(id)a3;
@end

@implementation UIView

- (void)crl_activateEqualConstraintsForView:(id)a3
{
  v4 = a3;
  v17 = [v4 leadingAnchor];
  v16 = [(UIView *)self leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v18[0] = v15;
  v5 = [v4 trailingAnchor];
  v6 = [(UIView *)self trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v18[1] = v7;
  v8 = [v4 topAnchor];
  v9 = [(UIView *)self topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v18[2] = v10;
  v11 = [v4 bottomAnchor];

  v12 = [(UIView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v18[3] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

@end