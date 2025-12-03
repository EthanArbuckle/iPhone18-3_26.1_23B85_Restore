@interface AnimojiMessagesViewController
- (BOOL)shouldPerformSegueWithIdentifier:(id)identifier sender:(id)sender;
- (UIView)launchViewContainer;
- (UIView)messagesViewContainer;
- (id)landscapeOverlayMessage;
- (void)prepareForSegue:(id)segue sender:(id)sender;
@end

@implementation AnimojiMessagesViewController

- (id)landscapeOverlayMessage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"sJFLandscapeTrapMessage" value:&stru_100035080 table:@"JFStrings"];

  return v3;
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  v16.receiver = self;
  v16.super_class = AnimojiMessagesViewController;
  senderCopy = sender;
  [(AnimojiMessagesViewController *)&v16 prepareForSegue:segueCopy sender:senderCopy];
  identifier = [segueCopy identifier];
  v9 = [identifier isEqualToString:@"MessagesViewController"];

  if (v9)
  {
    destinationViewController = [segueCopy destinationViewController];
    [(BaseMessagesViewController *)self setBaseMessagesViewController:destinationViewController];

    byte_10003E028 = 1;
  }

  else
  {
    identifier2 = [segueCopy identifier];
    v12 = [identifier2 isEqualToString:@"LaunchViewController"];

    if (v12)
    {
      destinationViewController2 = [segueCopy destinationViewController];
      launchViewController = self->_launchViewController;
      self->_launchViewController = destinationViewController2;
    }
  }

  baseMessagesViewController = [(BaseMessagesViewController *)self baseMessagesViewController];
  [baseMessagesViewController prepareForSegue:segueCopy sender:senderCopy];
}

- (BOOL)shouldPerformSegueWithIdentifier:(id)identifier sender:(id)sender
{
  identifierCopy = identifier;
  senderCopy = sender;
  v11.receiver = self;
  v11.super_class = AnimojiMessagesViewController;
  if ([(AnimojiMessagesViewController *)&v11 shouldPerformSegueWithIdentifier:identifierCopy sender:senderCopy])
  {
    if ([identifierCopy isEqualToString:@"MessagesViewController"])
    {
      v8 = byte_10003E028 ^ 1;
    }

    else
    {
      baseMessagesViewController = [(BaseMessagesViewController *)self baseMessagesViewController];
      v8 = [baseMessagesViewController shouldPerformSegueWithIdentifier:identifierCopy sender:senderCopy];
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