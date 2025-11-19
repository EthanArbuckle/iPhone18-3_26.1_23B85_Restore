@interface NotificationViewController
- (CGSize)calculatePreferredContentSize;
- (void)didReceiveNotification:(id)a3;
@end

@implementation NotificationViewController

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = [(NotificationViewController *)self presentedContentViewController];

  if (!v5)
  {
    v6 = +[UIColor appTintColor];
    v7 = [(NotificationViewController *)self view];
    [v7 setTintColor:v6];

    v8 = [NotificationViewControllerFactory contentAvailableViewControllerForNotification:v4];
    [v8 loadViewIfNeeded];
    v9 = [(NotificationViewController *)self extensionContext];
    v10 = [v9 notificationActions];
    v11 = [v8 actionsWithDefaultActions:v10];

    if (v11)
    {
      v12 = [(NotificationViewController *)self extensionContext];
      [v12 setNotificationActions:v11];
    }

    if (v8)
    {
      v13 = [(NotificationViewController *)self view];
      [v8 view];
      v14 = v28 = v11;
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(NotificationViewController *)self addChildViewController:v8];
      [v13 addSubview:v14];
      [v8 didMoveToParentViewController:self];
      v27 = [v13 topAnchor];
      v26 = [v14 topAnchor];
      v25 = [v27 constraintEqualToAnchor:v26];
      v29[0] = v25;
      v24 = [v13 leadingAnchor];
      v23 = [v14 leadingAnchor];
      v22 = [v24 constraintEqualToAnchor:v23];
      v29[1] = v22;
      v21 = [v13 bottomAnchor];
      v15 = [v14 bottomAnchor];
      v16 = [v21 constraintEqualToAnchor:v15];
      v29[2] = v16;
      v17 = [v13 trailingAnchor];
      v18 = [v14 trailingAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
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
  v3 = [(NotificationViewController *)self presentedContentViewController];
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5;

  height = UILayoutFittingCompressedSize.height;
  v8 = [(NotificationViewController *)self presentedContentViewController];
  v9 = [v8 view];
  [v9 systemLayoutSizeFittingSize:{v6, height}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end