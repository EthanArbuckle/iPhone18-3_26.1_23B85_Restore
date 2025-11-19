@interface UserApprovalViewController
- (UserApprovalViewController)initWithUserApprovalOptions:(id)a3;
- (UserApprovalViewControllerDelegate)delegate;
- (void)_didTapCancelButton:(id)a3;
- (void)_didTapContinueButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation UserApprovalViewController

- (UserApprovalViewController)initWithUserApprovalOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:DeviceRecoveryResultsRequiredUserApprovalContinue];
  v6 = [v4 objectForKeyedSubscript:DeviceRecoveryResultsRequiredUserApprovalIconSymbolName];
  v7 = DeviceRecoveryResultsRequiredUserApprovalTitle;
  v8 = [v4 objectForKeyedSubscript:DeviceRecoveryResultsRequiredUserApprovalTitle];
  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:v7];
  }

  else
  {
    v9 = @"<Missing title>";
  }

  v10 = [v4 objectForKeyedSubscript:DeviceRecoveryResultsRequiredUserApprovalDescription];
  v11 = [v4 objectForKeyedSubscript:DeviceRecoveryResultsRequiredUserApprovalBack];
  v18.receiver = self;
  v18.super_class = UserApprovalViewController;
  v12 = [(UserApprovalViewController *)&v18 initWithTitle:v9 detailText:v10 symbolName:v6];
  if (v12)
  {
    if (v5)
    {
      v13 = +[OBBoldTrayButton boldButton];
      [v13 setTitle:v5 forState:0];
      [v13 addTarget:v12 action:"_didTapContinueButton:" forControlEvents:0x2000];
      v14 = [(UserApprovalViewController *)v12 buttonTray];
      [v14 addButton:v13];
    }

    if (v11)
    {
      v15 = +[OBLinkTrayButton linkButton];
      [v15 setTitle:v11 forState:0];
      [v15 addTarget:v12 action:"_didTapCancelButton:" forControlEvents:0x2000];
      v16 = [(UserApprovalViewController *)v12 buttonTray];
      [v16 addButton:v15];
    }
  }

  return v12;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = UserApprovalViewController;
  [(UserApprovalViewController *)&v2 viewDidLoad];
}

- (void)_didTapContinueButton:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[UserApprovalViewController _didTapContinueButton:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: User approved.", &v7, 0xCu);
  }

  v5 = [(UserApprovalViewController *)self delegate];

  if (v5)
  {
    v6 = [(UserApprovalViewController *)self delegate];
    [v6 userApprovalViewControllerDidContinue:self];
  }
}

- (void)_didTapCancelButton:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[UserApprovalViewController _didTapCancelButton:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: User declined approval.", &v7, 0xCu);
  }

  v5 = [(UserApprovalViewController *)self delegate];

  if (v5)
  {
    v6 = [(UserApprovalViewController *)self delegate];
    [v6 userApprovalViewControllerDidCancel:self];
  }
}

- (UserApprovalViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end