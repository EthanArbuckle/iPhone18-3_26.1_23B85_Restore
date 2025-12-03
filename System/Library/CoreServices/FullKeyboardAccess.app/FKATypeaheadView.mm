@interface FKATypeaheadView
- (FKATypeaheadView)initWithFrame:(CGRect)frame;
@end

@implementation FKATypeaheadView

- (FKATypeaheadView)initWithFrame:(CGRect)frame
{
  v54.receiver = self;
  v54.super_class = FKATypeaheadView;
  v3 = [(FKATypeaheadView *)&v54 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIVisualEffectView alloc];
    platterBlurEffect = [(FKATypeaheadView *)v3 platterBlurEffect];
    v6 = [UIVibrancyEffect effectForBlurEffect:platterBlurEffect style:0];
    v7 = [v4 initWithEffect:v6];

    if (_UISolariumEnabled())
    {
      [v7 setEffect:0];
    }

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FKATypeaheadView *)v3 addSubview:v7];
    contentView = [v7 contentView];
    v9 = objc_alloc_init(FKATypeaheadTextField);
    [(FKATypeaheadTextField *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = v9;
    [(FKATypeaheadTextField *)v9 layer];
    v11 = v7;
    v12 = v52 = v7;
    [v12 setCornerRadius:14.0];

    [contentView addSubview:v10];
    v13 = v10;
    [(FKATypeaheadView *)v3 setTextField:v10];
    v53 = objc_opt_new();
    contentView2 = [(FKATypeaheadView *)v3 contentView];
    v15 = [NSLayoutConstraint ax_constraintsToMakeView:v11 sameDimensionsAsView:contentView2];
    [v53 addObjectsFromArray:v15];

    textField = [(FKATypeaheadView *)v3 textField];
    widthAnchor = [textField widthAnchor];
    v49 = [widthAnchor constraintEqualToConstant:289.0];
    v55[0] = v49;
    textField2 = [(FKATypeaheadView *)v3 textField];
    heightAnchor = [textField2 heightAnchor];
    v46 = [heightAnchor constraintEqualToConstant:36.0];
    v55[1] = v46;
    heightAnchor2 = [contentView heightAnchor];
    v44 = [heightAnchor2 constraintEqualToConstant:46.0];
    v55[2] = v44;
    topAnchor = [contentView topAnchor];
    topAnchor2 = [(FKATypeaheadView *)v3 topAnchor];
    v41 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:68.0];
    v55[3] = v41;
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [(FKATypeaheadView *)v3 bottomAnchor];
    v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-68.0];
    v55[4] = v38;
    leadingAnchor = [contentView leadingAnchor];
    leadingAnchor2 = [(FKATypeaheadView *)v3 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:68.0];
    v55[5] = v35;
    trailingAnchor = [contentView trailingAnchor];
    trailingAnchor2 = [(FKATypeaheadView *)v3 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-68.0];
    v55[6] = v31;
    v16 = v13;
    topAnchor3 = [(FKATypeaheadTextField *)v13 topAnchor];
    topAnchor4 = [contentView topAnchor];
    v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:5.0];
    v55[7] = v28;
    bottomAnchor3 = [contentView bottomAnchor];
    bottomAnchor4 = [(FKATypeaheadTextField *)v13 bottomAnchor];
    v17 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:5.0];
    v55[8] = v17;
    v34 = v13;
    leadingAnchor3 = [(FKATypeaheadTextField *)v13 leadingAnchor];
    leadingAnchor4 = [contentView leadingAnchor];
    v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:5.0];
    v55[9] = v20;
    trailingAnchor3 = [contentView trailingAnchor];
    trailingAnchor4 = [(FKATypeaheadTextField *)v16 trailingAnchor];
    v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:5.0];
    v55[10] = v23;
    v24 = [NSArray arrayWithObjects:v55 count:11];
    [v53 addObjectsFromArray:v24];

    [NSLayoutConstraint activateConstraints:v53];
  }

  return v3;
}

@end