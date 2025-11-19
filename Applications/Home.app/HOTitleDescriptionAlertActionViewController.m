@interface HOTitleDescriptionAlertActionViewController
- (CGSize)preferredContentSize;
- (HOTitleDescriptionAlertActionViewController)initWithCoder:(id)a3;
- (HOTitleDescriptionAlertActionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HOTitleDescriptionAlertActionViewController)initWithTitle:(id)a3 titleColor:(id)a4 description:(id)a5 descriptionColor:(id)a6;
- (void)loadView;
@end

@implementation HOTitleDescriptionAlertActionViewController

- (HOTitleDescriptionAlertActionViewController)initWithTitle:(id)a3 titleColor:(id)a4 description:(id)a5 descriptionColor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = HOTitleDescriptionAlertActionViewController;
  v14 = [(HOTitleDescriptionAlertActionViewController *)&v22 initWithNibName:0 bundle:0];
  if (v14)
  {
    v15 = [[HOTitleDescriptionView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    titleDescriptionView = v14->_titleDescriptionView;
    v14->_titleDescriptionView = v15;

    v17 = [(HOTitleDescriptionView *)v14->_titleDescriptionView titleLabel];
    [v17 setText:v10];

    v18 = [(HOTitleDescriptionView *)v14->_titleDescriptionView titleLabel];
    [v18 setTextColor:v11];

    if (v12)
    {
      v19 = [(HOTitleDescriptionView *)v14->_titleDescriptionView descriptionLabel];
      [v19 setText:v12];

      v20 = [(HOTitleDescriptionView *)v14->_titleDescriptionView descriptionLabel];
      [v20 setTextColor:v13];
    }
  }

  return v14;
}

- (HOTitleDescriptionAlertActionViewController)initWithCoder:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithTitle:titleColor:description:descriptionColor:");
  [v5 handleFailureInMethod:a2 object:self file:@"HOTitleDescriptionAlertActionViewController.m" lineNumber:90 description:{@"%s is unavailable; use %@ instead", "-[HOTitleDescriptionAlertActionViewController initWithCoder:]", v6}];

  return 0;
}

- (HOTitleDescriptionAlertActionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  v7 = NSStringFromSelector("initWithTitle:titleColor:description:descriptionColor:");
  [v6 handleFailureInMethod:a2 object:self file:@"HOTitleDescriptionAlertActionViewController.m" lineNumber:94 description:{@"%s is unavailable; use %@ instead", "-[HOTitleDescriptionAlertActionViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (void)loadView
{
  v3 = [(HOTitleDescriptionAlertActionViewController *)self titleDescriptionView];
  [(HOTitleDescriptionAlertActionViewController *)self setView:v3];
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