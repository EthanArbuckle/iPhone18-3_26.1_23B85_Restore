@interface RAPSendingTitleView
+ (id)localizedSendingTitle;
- (RAPSendingTitleView)initWithFrame:(CGRect)frame;
@end

@implementation RAPSendingTitleView

- (RAPSendingTitleView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = RAPSendingTitleView;
  v3 = [(RAPSendingTitleView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    localizedSendingTitle = [objc_opt_class() localizedSendingTitle];
    [v4 setText:localizedSendingTitle];

    v6 = [UIFont boldSystemFontOfSize:17.0];
    [v4 setFont:v6];

    [v4 setNumberOfLines:1];
    [v4 setLineBreakMode:4];
    [(RAPSendingTitleView *)v3 addSubview:v4];
    v7 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v7 startAnimating];
    [(RAPSendingTitleView *)v3 addSubview:v7];
    v8 = _NSDictionaryOfVariableBindings(@"label, spinner", v4, v7, 0);
    [UIView _maps_setDoesNotTranslateAutoresizingConstraintsForViewsDictionary:v8];
    v9 = objc_alloc_init(NSMutableArray);
    v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=0)-[spinner]-(>=0)-|", 0, 0, v8);
    [v9 addObjectsFromArray:v10];

    v11 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=0)-[label]-(>=0)-|", 0, 0, v8);
    [v9 addObjectsFromArray:v11];

    v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|[spinner]-[label]|", 0, 0, v8);
    [v9 addObjectsFromArray:v12];

    [NSLayoutConstraint activateConstraints:v9];
  }

  return v3;
}

+ (id)localizedSendingTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Sending... [Report a Problem]" value:@"localized string not found" table:0];

  return v3;
}

@end