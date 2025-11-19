@interface CNContactViewServiceViewController
+ (Class)classForContentViewControllerImpl;
- (BOOL)shouldPerformDefaultActionForContact:(id)a3 propertyKey:(id)a4 propertyIdentifier:(id)a5;
- (CNContactViewServiceViewController)init;
- (void)didChangePreferredContentSize:(CGSize)a3;
- (void)didCompleteWithContact:(id)a3;
- (void)didDeleteContact:(id)a3;
- (void)didExecuteClearRecentsDataAction;
- (void)didExecuteDeleteFromDowntimeWhitelistAction;
- (void)isPresentingEditingController:(BOOL)a3;
- (void)isPresentingFullscreen:(BOOL)a3;
- (void)presentCancelConfirmationAlert;
- (void)updateEditing:(BOOL)a3 doneButtonEnabled:(BOOL)a4 doneButtonText:(id)a5;
- (void)viewDidAppear;
- (void)viewDidLoad;
@end

@implementation CNContactViewServiceViewController

- (void)presentCancelConfirmationAlert
{
  v2 = [(CNContactViewServiceViewController *)self extensionContext];
  [v2 presentCancelConfirmationAlert];
}

- (void)didExecuteDeleteFromDowntimeWhitelistAction
{
  v2 = [(CNContactViewServiceViewController *)self extensionContext];
  [v2 didExecuteDeleteFromDowntimeWhitelistAction];
}

- (void)didExecuteClearRecentsDataAction
{
  v2 = [(CNContactViewServiceViewController *)self extensionContext];
  [v2 didExecuteClearRecentsDataAction];
}

- (void)viewDidAppear
{
  v2 = [(CNContactViewServiceViewController *)self extensionContext];
  [v2 viewDidAppear];
}

- (void)didChangePreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CNContactViewServiceViewController *)self extensionContext];
  [v5 didChangePreferredContentSize:{width, height}];
}

- (void)isPresentingEditingController:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactViewServiceViewController *)self extensionContext];
  [v4 isPresentingEditingController:v3];
}

- (void)isPresentingFullscreen:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactViewServiceViewController *)self extensionContext];
  [v4 isPresentingFullscreen:v3];
}

- (void)didDeleteContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactViewServiceViewController *)self extensionContext];
  [v5 didDeleteContact:v4];
}

- (void)didCompleteWithContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactViewServiceViewController *)self extensionContext];
  [v5 didCompleteWithContact:v4];
}

- (void)updateEditing:(BOOL)a3 doneButtonEnabled:(BOOL)a4 doneButtonText:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(CNContactViewServiceViewController *)self extensionContext];
  [v9 updateEditing:v6 doneButtonEnabled:v5 doneButtonText:v8];
}

- (BOOL)shouldPerformDefaultActionForContact:(id)a3 propertyKey:(id)a4 propertyIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CNContactViewServiceViewController *)self extensionContext];
  v12 = [v11 shouldPerformDefaultActionForContact:v10 propertyKey:v9 propertyIdentifier:v8];

  return v12;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNContactViewServiceViewController;
  [(CNContactViewServiceViewController *)&v4 viewDidLoad];
  v3 = [(CNContactViewServiceViewController *)self contactContentVC];
  [(UIViewController *)self cnui_addChildViewController:v3];
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
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  [v3 isFeatureEnabled:10];

  v4 = objc_opt_class();

  return v4;
}

@end