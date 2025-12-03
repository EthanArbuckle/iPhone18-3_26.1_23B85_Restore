@interface HOTitleDescriptionAlertActionViewController
- (CGSize)preferredContentSize;
- (HOTitleDescriptionAlertActionViewController)initWithCoder:(id)coder;
- (HOTitleDescriptionAlertActionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HOTitleDescriptionAlertActionViewController)initWithTitle:(id)title titleColor:(id)color description:(id)description descriptionColor:(id)descriptionColor;
- (void)loadView;
@end

@implementation HOTitleDescriptionAlertActionViewController

- (HOTitleDescriptionAlertActionViewController)initWithTitle:(id)title titleColor:(id)color description:(id)description descriptionColor:(id)descriptionColor
{
  titleCopy = title;
  colorCopy = color;
  descriptionCopy = description;
  descriptionColorCopy = descriptionColor;
  v22.receiver = self;
  v22.super_class = HOTitleDescriptionAlertActionViewController;
  v14 = [(HOTitleDescriptionAlertActionViewController *)&v22 initWithNibName:0 bundle:0];
  if (v14)
  {
    v15 = [[HOTitleDescriptionView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    titleDescriptionView = v14->_titleDescriptionView;
    v14->_titleDescriptionView = v15;

    titleLabel = [(HOTitleDescriptionView *)v14->_titleDescriptionView titleLabel];
    [titleLabel setText:titleCopy];

    titleLabel2 = [(HOTitleDescriptionView *)v14->_titleDescriptionView titleLabel];
    [titleLabel2 setTextColor:colorCopy];

    if (descriptionCopy)
    {
      descriptionLabel = [(HOTitleDescriptionView *)v14->_titleDescriptionView descriptionLabel];
      [descriptionLabel setText:descriptionCopy];

      descriptionLabel2 = [(HOTitleDescriptionView *)v14->_titleDescriptionView descriptionLabel];
      [descriptionLabel2 setTextColor:descriptionColorCopy];
    }
  }

  return v14;
}

- (HOTitleDescriptionAlertActionViewController)initWithCoder:(id)coder
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithTitle:titleColor:description:descriptionColor:");
  [v5 handleFailureInMethod:a2 object:self file:@"HOTitleDescriptionAlertActionViewController.m" lineNumber:90 description:{@"%s is unavailable; use %@ instead", "-[HOTitleDescriptionAlertActionViewController initWithCoder:]", v6}];

  return 0;
}

- (HOTitleDescriptionAlertActionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6 = [NSAssertionHandler currentHandler:name];
  v7 = NSStringFromSelector("initWithTitle:titleColor:description:descriptionColor:");
  [v6 handleFailureInMethod:a2 object:self file:@"HOTitleDescriptionAlertActionViewController.m" lineNumber:94 description:{@"%s is unavailable; use %@ instead", "-[HOTitleDescriptionAlertActionViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (void)loadView
{
  titleDescriptionView = [(HOTitleDescriptionAlertActionViewController *)self titleDescriptionView];
  [(HOTitleDescriptionAlertActionViewController *)self setView:titleDescriptionView];
}

- (CGSize)preferredContentSize
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

@end