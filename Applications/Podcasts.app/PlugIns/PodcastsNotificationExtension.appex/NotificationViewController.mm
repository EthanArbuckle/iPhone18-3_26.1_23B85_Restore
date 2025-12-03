@interface NotificationViewController
- (CGSize)calculatePreferredContentSize;
- (void)didReceiveNotification:(id)notification;
@end

@implementation NotificationViewController

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  presentedContentViewController = [(NotificationViewController *)self presentedContentViewController];

  if (!presentedContentViewController)
  {
    v6 = +[UIColor appTintColor];
    view = [(NotificationViewController *)self view];
    [view setTintColor:v6];

    v8 = [NotificationViewControllerFactory contentAvailableViewControllerForNotification:notificationCopy];
    [v8 loadViewIfNeeded];
    extensionContext = [(NotificationViewController *)self extensionContext];
    notificationActions = [extensionContext notificationActions];
    v11 = [v8 actionsWithDefaultActions:notificationActions];

    if (v11)
    {
      extensionContext2 = [(NotificationViewController *)self extensionContext];
      [extensionContext2 setNotificationActions:v11];
    }

    if (v8)
    {
      view2 = [(NotificationViewController *)self view];
      [v8 view];
      v14 = v28 = v11;
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(NotificationViewController *)self addChildViewController:v8];
      [view2 addSubview:v14];
      [v8 didMoveToParentViewController:self];
      topAnchor = [view2 topAnchor];
      topAnchor2 = [v14 topAnchor];
      v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v29[0] = v25;
      leadingAnchor = [view2 leadingAnchor];
      leadingAnchor2 = [v14 leadingAnchor];
      v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v29[1] = v22;
      bottomAnchor = [view2 bottomAnchor];
      bottomAnchor2 = [v14 bottomAnchor];
      v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v29[2] = v16;
      trailingAnchor = [view2 trailingAnchor];
      trailingAnchor2 = [v14 trailingAnchor];
      v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v29[3] = v19;
      v20 = [NSArray arrayWithObjects:v29 count:4];

      [NSLayoutConstraint activateConstraints:v20];
      objc_storeStrong(&self->_presentedContentViewController, v8);

      v11 = v28;
    }
  }
}

- (CGSize)calculatePreferredContentSize
{
  presentedContentViewController = [(NotificationViewController *)self presentedContentViewController];
  view = [presentedContentViewController view];
  [view bounds];
  v6 = v5;

  height = UILayoutFittingCompressedSize.height;
  presentedContentViewController2 = [(NotificationViewController *)self presentedContentViewController];
  view2 = [presentedContentViewController2 view];
  [view2 systemLayoutSizeFittingSize:{v6, height}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end