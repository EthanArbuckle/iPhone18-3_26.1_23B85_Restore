@interface CSUIAlternateApplicationIconsAlertContentViewController
- (CSUIAlternateApplicationIconsAlertContentViewController)initWithApplicationIdentity:(id)identity;
- (NSString)messageText;
- (void)__updateWithVisualStyle:(id)style;
- (void)_containingAlertControllerDidChangeVisualStyle:(id)style;
- (void)_updateWithContainingAlertControllerVisualStyle;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)setMessageText:(id)text;
@end

@implementation CSUIAlternateApplicationIconsAlertContentViewController

- (CSUIAlternateApplicationIconsAlertContentViewController)initWithApplicationIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(CSUIAlternateApplicationIconsAlertContentViewController *)self initWithNibName:0 bundle:0];
  if (v5)
  {
    bundleIdentifier = [identityCopy bundleIdentifier];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = bundleIdentifier;
  }

  return v5;
}

- (NSString)messageText
{
  view = [(CSUIAlternateApplicationIconsAlertContentViewController *)self view];
  messageLabel = self->_messageLabel;

  return [(UILabel *)messageLabel text];
}

- (void)setMessageText:(id)text
{
  textCopy = text;
  view = [(CSUIAlternateApplicationIconsAlertContentViewController *)self view];
  [(UILabel *)self->_messageLabel setText:textCopy];
}

- (void)_containingAlertControllerDidChangeVisualStyle:(id)style
{
  v5.receiver = self;
  v5.super_class = CSUIAlternateApplicationIconsAlertContentViewController;
  styleCopy = style;
  [(CSUIAlternateApplicationIconsAlertContentViewController *)&v5 _containingAlertControllerDidChangeVisualStyle:styleCopy];
  [(CSUIAlternateApplicationIconsAlertContentViewController *)self __updateWithVisualStyle:styleCopy, v5.receiver, v5.super_class];
}

- (void)__updateWithVisualStyle:(id)style
{
  styleCopy = style;
  messageLabelFont = [styleCopy messageLabelFont];
  [(UILabel *)self->_messageLabel setFont:messageLabelFont];

  messageLabelColor = [styleCopy messageLabelColor];
  [(UILabel *)self->_messageLabel setTextColor:messageLabelColor];

  maximumNumberOfLinesInMessageLabel = [styleCopy maximumNumberOfLinesInMessageLabel];
  messageLabel = self->_messageLabel;

  [(UILabel *)messageLabel setNumberOfLines:maximumNumberOfLinesInMessageLabel];
}

- (void)_updateWithContainingAlertControllerVisualStyle
{
  if (objc_opt_respondsToSelector())
  {
    _visualStyleOfContainingAlertController = [(CSUIAlternateApplicationIconsAlertContentViewController *)self _visualStyleOfContainingAlertController];
    if (_visualStyleOfContainingAlertController)
    {
      [(CSUIAlternateApplicationIconsAlertContentViewController *)self __updateWithVisualStyle:_visualStyleOfContainingAlertController];
    }

    _objc_release_x1();
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = CSUIAlternateApplicationIconsAlertContentViewController;
  [(CSUIAlternateApplicationIconsAlertContentViewController *)&v4 didMoveToParentViewController:controller];
  [(CSUIAlternateApplicationIconsAlertContentViewController *)self _updateWithContainingAlertControllerVisualStyle];
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(CSUIAlternateApplicationIconsAlertContentViewController *)self _updateWithContainingAlertControllerVisualStyle];
  [(UILabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  selfCopy = self;
  messageLabel = self->_messageLabel;
  selfCopy->_messageLabel = v3;
  v6 = selfCopy;
  v37 = selfCopy;
  v35 = v3;

  bundleIdentifier = v6->_bundleIdentifier;
  v8 = +[UIScreen mainScreen];
  [v8 scale];
  v36 = [UIImage _applicationIconImageForBundleIdentifier:bundleIdentifier format:2 scale:?];

  v9 = [[UIImageView alloc] initWithImage:v36];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v9 setContentHuggingPriority:0 forAxis:v12];
  v34 = v9;
  LODWORD(v13) = 1148846080;
  [v9 setContentHuggingPriority:1 forAxis:v13];
  v14 = [UIStackView alloc];
  v42 = v35;
  v15 = [NSArray arrayWithObjects:&v42 count:1];
  v16 = [v14 initWithArrangedSubviews:v15];

  [v16 setAxis:1];
  [v16 setAlignment:3];
  [v16 setDistribution:3];
  v17 = v16;
  v33 = v16;
  [v16 setSpacing:8.0];
  v18 = [UIStackView alloc];
  v41[0] = v9;
  v41[1] = v17;
  v19 = [NSArray arrayWithObjects:v41 count:2];
  v20 = [v18 initWithArrangedSubviews:v19];

  [v20 setAxis:0];
  [v20 setAlignment:3];
  [v20 setDistribution:3];
  [v20 setSpacing:8.0];
  v21 = objc_opt_new();
  [v21 addSubview:v20];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = @"hStackView";
  v40 = v20;
  v32 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  centerXAnchor = [v20 centerXAnchor];
  centerXAnchor2 = [v21 centerXAnchor];
  v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v38[0] = v24;
  centerYAnchor = [v20 centerYAnchor];
  centerYAnchor2 = [v21 centerYAnchor];
  v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v38[1] = v27;
  v28 = [NSArray arrayWithObjects:v38 count:2];
  v29 = [v28 mutableCopy];

  v30 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(spc)-[hStackView]-(spc)-|", 0, &off_100010C00, v32);
  [v29 addObjectsFromArray:v30];

  v31 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(spc)-[hStackView]-(spc)-|", 0, &off_100010C00, v32);
  [v29 addObjectsFromArray:v31];

  [NSLayoutConstraint activateConstraints:v29];
  [(CSUIAlternateApplicationIconsAlertContentViewController *)v37 setView:v21];
}

@end