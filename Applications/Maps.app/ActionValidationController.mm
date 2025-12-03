@interface ActionValidationController
+ (void)presentAttributedString:(id)string inWindow:(id)window;
+ (void)presentCollectionSavedValidationActionWithName:(id)name inWindow:(id)window;
+ (void)presentDefaultValidationActionWithTitle:(id)title inWindow:(id)window;
+ (void)presentString:(id)string withFont:(id)font inWindow:(id)window;
@end

@implementation ActionValidationController

+ (void)presentString:(id)string withFont:(id)font inWindow:(id)window
{
  windowCopy = window;
  fontCopy = font;
  stringCopy = string;
  v11 = [NSAttributedString alloc];
  v14 = NSFontAttributeName;
  v15 = fontCopy;
  v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v13 = [v11 initWithString:stringCopy attributes:v12];
  [self presentAttributedString:v13 inWindow:windowCopy];
}

+ (void)presentAttributedString:(id)string inWindow:(id)window
{
  windowCopy = window;
  if (windowCopy)
  {
    stringCopy = string;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [windowCopy keyboardHeight];
      v8 = v7 * -0.5;
    }

    else
    {
      v8 = -0.0;
    }

    v9 = [[MessageView alloc] initWithTitle:stringCopy];

    [(MessageView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [windowCopy addSubview:v9];
    offsetConstraint = [(MessageView *)v9 offsetConstraint];
    [offsetConstraint setConstant:v8];

    topAnchor = [(MessageView *)v9 topAnchor];
    topAnchor2 = [windowCopy topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[0] = v23;
    bottomAnchor = [(MessageView *)v9 bottomAnchor];
    bottomAnchor2 = [windowCopy bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v28[1] = v11;
    leadingAnchor = [(MessageView *)v9 leadingAnchor];
    leadingAnchor2 = [windowCopy leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[2] = v14;
    trailingAnchor = [(MessageView *)v9 trailingAnchor];
    trailingAnchor2 = [windowCopy trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v28[3] = v17;
    v18 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v18];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100A095FC;
    v26[3] = &unk_10164FBA0;
    v27 = v9;
    v19 = v9;
    v20 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v26 block:1.15000001];
  }
}

+ (void)presentCollectionSavedValidationActionWithName:(id)name inWindow:(id)window
{
  windowCopy = window;
  nameCopy = name;
  v7 = [NSMutableAttributedString alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[Collection] Saved to %@" value:@"localized string not found" table:0];
  nameCopy = [NSString stringWithFormat:v9, nameCopy];
  v22 = NSFontAttributeName;
  v11 = +[UIFont system17];
  v23 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v13 = [v7 initWithString:nameCopy attributes:v12];

  string = [v13 string];
  v15 = [string rangeOfString:nameCopy];
  v17 = v16;

  v20 = NSFontAttributeName;
  v18 = +[UIFont system20Bold];
  v21 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v13 addAttributes:v19 range:{v15, v17}];

  [ActionValidationController presentAttributedString:v13 inWindow:windowCopy];
}

+ (void)presentDefaultValidationActionWithTitle:(id)title inWindow:(id)window
{
  windowCopy = window;
  titleCopy = title;
  v8 = +[UIFont system17SemiBold];
  [self presentString:titleCopy withFont:v8 inWindow:windowCopy];
}

@end