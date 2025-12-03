@interface CNContactViewServiceViewController
+ (Class)classForContentViewControllerImpl;
- (BOOL)shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier;
- (CNContactViewServiceViewController)init;
- (void)didChangePreferredContentSize:(CGSize)size;
- (void)didCompleteWithContact:(id)contact;
- (void)didDeleteContact:(id)contact;
- (void)didExecuteClearRecentsDataAction;
- (void)didExecuteDeleteFromDowntimeWhitelistAction;
- (void)isPresentingEditingController:(BOOL)controller;
- (void)isPresentingFullscreen:(BOOL)fullscreen;
- (void)presentCancelConfirmationAlert;
- (void)updateEditing:(BOOL)editing doneButtonEnabled:(BOOL)enabled doneButtonText:(id)text;
- (void)viewDidAppear;
- (void)viewDidLoad;
@end

@implementation CNContactViewServiceViewController

- (void)presentCancelConfirmationAlert
{
  extensionContext = [(CNContactViewServiceViewController *)self extensionContext];
  [extensionContext presentCancelConfirmationAlert];
}

- (void)didExecuteDeleteFromDowntimeWhitelistAction
{
  extensionContext = [(CNContactViewServiceViewController *)self extensionContext];
  [extensionContext didExecuteDeleteFromDowntimeWhitelistAction];
}

- (void)didExecuteClearRecentsDataAction
{
  extensionContext = [(CNContactViewServiceViewController *)self extensionContext];
  [extensionContext didExecuteClearRecentsDataAction];
}

- (void)viewDidAppear
{
  extensionContext = [(CNContactViewServiceViewController *)self extensionContext];
  [extensionContext viewDidAppear];
}

- (void)didChangePreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  extensionContext = [(CNContactViewServiceViewController *)self extensionContext];
  [extensionContext didChangePreferredContentSize:{width, height}];
}

- (void)isPresentingEditingController:(BOOL)controller
{
  controllerCopy = controller;
  extensionContext = [(CNContactViewServiceViewController *)self extensionContext];
  [extensionContext isPresentingEditingController:controllerCopy];
}

- (void)isPresentingFullscreen:(BOOL)fullscreen
{
  fullscreenCopy = fullscreen;
  extensionContext = [(CNContactViewServiceViewController *)self extensionContext];
  [extensionContext isPresentingFullscreen:fullscreenCopy];
}

- (void)didDeleteContact:(id)contact
{
  contactCopy = contact;
  extensionContext = [(CNContactViewServiceViewController *)self extensionContext];
  [extensionContext didDeleteContact:contactCopy];
}

- (void)didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  extensionContext = [(CNContactViewServiceViewController *)self extensionContext];
  [extensionContext didCompleteWithContact:contactCopy];
}

- (void)updateEditing:(BOOL)editing doneButtonEnabled:(BOOL)enabled doneButtonText:(id)text
{
  enabledCopy = enabled;
  editingCopy = editing;
  textCopy = text;
  extensionContext = [(CNContactViewServiceViewController *)self extensionContext];
  [extensionContext updateEditing:editingCopy doneButtonEnabled:enabledCopy doneButtonText:textCopy];
}

- (BOOL)shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyCopy = key;
  contactCopy = contact;
  extensionContext = [(CNContactViewServiceViewController *)self extensionContext];
  v12 = [extensionContext shouldPerformDefaultActionForContact:contactCopy propertyKey:keyCopy propertyIdentifier:identifierCopy];

  return v12;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNContactViewServiceViewController;
  [(CNContactViewServiceViewController *)&v4 viewDidLoad];
  contactContentVC = [(CNContactViewServiceViewController *)self contactContentVC];
  [(UIViewController *)self cnui_addChildViewController:contactContentVC];
}

- (CNContactViewServiceViewController)init
{
  v8.receiver = self;
  v8.super_class = CNContactViewServiceViewController;
  v2 = [(CNContactViewServiceViewController *)&v8 init];
  v3 = objc_alloc([objc_opt_class() classForContentViewControllerImpl]);
  v4 = +[CNUIContactsEnvironment currentEnvironment];
  v5 = [v3 initWithEnvironment:v4];
  contactContentVC = v2->_contactContentVC;
  v2->_contactContentVC = v5;

  [(CNContactContentViewController *)v2->_contactContentVC setDelegate:v2];
  [(CNContactContentViewController *)v2->_contactContentVC setPptDelegate:v2];
  return v2;
}

+ (Class)classForContentViewControllerImpl
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  [featureFlags isFeatureEnabled:10];

  v4 = objc_opt_class();

  return v4;
}

@end