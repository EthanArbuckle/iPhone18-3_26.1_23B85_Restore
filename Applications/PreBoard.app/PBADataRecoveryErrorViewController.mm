@interface PBADataRecoveryErrorViewController
- (void)loadView;
@end

@implementation PBADataRecoveryErrorViewController

- (void)loadView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v17 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v8 = +[NSBundle mainBundle];
  v9 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PREBOARD_RECOVERY_GIVE_UP"];
  v10 = [v8 localizedStringForKey:v9 value:&stru_10001CDA8 table:@"PreBoard"];
  [v7 setText:v10];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setNumberOfLines:0];
  [v7 setTextAlignment:1];
  [v17 addSubview:v7];
  centerXAnchor = [v7 centerXAnchor];
  centerXAnchor2 = [v17 centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v13 setActive:1];

  centerYAnchor = [v7 centerYAnchor];
  centerYAnchor2 = [v17 centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-20.0];
  [v16 setActive:1];

  [(PBADataRecoveryErrorViewController *)self setView:v17];
}

@end