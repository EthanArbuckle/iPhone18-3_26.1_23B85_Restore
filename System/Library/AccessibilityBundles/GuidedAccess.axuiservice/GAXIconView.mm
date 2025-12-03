@interface GAXIconView
- (GAXIconView)initWithIcon:(id)icon styleProvider:(id)provider;
@end

@implementation GAXIconView

- (GAXIconView)initWithIcon:(id)icon styleProvider:(id)provider
{
  iconCopy = icon;
  providerCopy = provider;
  v43.receiver = self;
  v43.super_class = GAXIconView;
  v8 = [(GAXIconView *)&v43 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = [UIVisualEffectView alloc];
    [providerCopy featureViewOptionsBlurEffect];
    v10 = v41 = providerCopy;
    v11 = [UIVibrancyEffect effectForBlurEffect:v10 style:0];
    v12 = [v9 initWithEffect:v11];

    v13 = v12;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GAXIconView *)v8 addSubview:v12];
    v14 = [[UIImageView alloc] initWithImage:iconCopy];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setContentMode:1];
    v39 = v12;
    contentView = [v12 contentView];
    [contentView addSubview:v14];

    v42 = +[NSMutableArray array];
    v16 = [NSLayoutConstraint ax_constraintsToMakeView:v13 sameDimensionsAsView:v8];
    [v42 addObjectsFromArray:v16];

    contentView2 = [v13 contentView];
    leadingAnchor = [v14 leadingAnchor];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v36 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v44[0] = v36;
    trailingAnchor = [v14 trailingAnchor];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v33 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v44[1] = v33;
    topAnchor = [v14 topAnchor];
    topAnchor2 = [contentView2 topAnchor];
    v30 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v44[2] = v30;
    bottomAnchor = [v14 bottomAnchor];
    bottomAnchor2 = [contentView2 bottomAnchor];
    v27 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v44[3] = v27;
    centerXAnchor = [v14 centerXAnchor];
    centerXAnchor2 = [contentView2 centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v44[4] = v20;
    [v14 centerYAnchor];
    v40 = v8;
    v22 = v21 = iconCopy;
    centerYAnchor = [contentView2 centerYAnchor];
    v24 = [v22 constraintEqualToAnchor:centerYAnchor];
    v44[5] = v24;
    v25 = [NSArray arrayWithObjects:v44 count:6];
    [v42 addObjectsFromArray:v25];

    iconCopy = v21;
    v8 = v40;

    providerCopy = v41;
    [NSLayoutConstraint activateConstraints:v42];
    [(GAXIconView *)v40 setIcon:iconCopy];
  }

  return v8;
}

@end