@interface AnimojiMessagesViewController
- (BOOL)shouldPerformSegueWithIdentifier:(id)a3 sender:(id)a4;
- (UIView)launchViewContainer;
- (UIView)messagesViewContainer;
- (id)landscapeOverlayMessage;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
@end

@implementation AnimojiMessagesViewController

- (id)landscapeOverlayMessage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"sJFLandscapeTrapMessage" value:&stru_100035080 table:@"JFStrings"];

  return v3;
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = AnimojiMessagesViewController;
  v7 = a4;
  [(AnimojiMessagesViewController *)&v16 prepareForSegue:v6 sender:v7];
  v8 = [v6 identifier];
  v9 = [v8 isEqualToString:@"MessagesViewController"];

  if (v9)
  {
    v10 = [v6 destinationViewController];
    [(BaseMessagesViewController *)self setBaseMessagesViewController:v10];

    byte_10003E028 = 1;
  }

  else
  {
    v11 = [v6 identifier];
    v12 = [v11 isEqualToString:@"LaunchViewController"];

    if (v12)
    {
      v13 = [v6 destinationViewController];
      launchViewController = self->_launchViewController;
      self->_launchViewController = v13;
    }
  }

  v15 = [(BaseMessagesViewController *)self baseMessagesViewController];
  [v15 prepareForSegue:v6 sender:v7];
}

- (BOOL)shouldPerformSegueWithIdentifier:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AnimojiMessagesViewController;
  if ([(AnimojiMessagesViewController *)&v11 shouldPerformSegueWithIdentifier:v6 sender:v7])
  {
    if ([v6 isEqualToString:@"MessagesViewController"])
    {
      v8 = byte_10003E028 ^ 1;
    }

    else
    {
      v9 = [(BaseMessagesViewController *)self baseMessagesViewController];
      v8 = [v9 shouldPerformSegueWithIdentifier:v6 sender:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (UIView)messagesViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_messagesViewContainer);

  return WeakRetained;
}

- (UIView)launchViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_launchViewContainer);

  return WeakRetained;
}

@end