@interface Family_MSMessagesAppViewController
- (void)family_presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion;
@end

@implementation Family_MSMessagesAppViewController

- (void)family_presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  completionCopy = completion;
  stylesCopy = styles;
  titlesCopy = titles;
  if (objc_opt_respondsToSelector())
  {
    [(Family_MSMessagesAppViewController *)self _presentAlertSheetWithTitle:titleCopy message:messageCopy buttonTitles:titlesCopy styles:stylesCopy completion:completionCopy];
  }

  else
  {
    [(Family_MSMessagesAppViewController *)self _presentAlertSheetWith:titlesCopy styles:stylesCopy completion:completionCopy];
  }
}

@end