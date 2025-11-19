@interface SORemoteExtensionViewController
- (SORemoteExtensionViewControllerDelegate)delegate;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SORemoteExtensionViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SORemoteExtensionViewController;
  [(_UIRemoteViewController *)&v12 viewServiceDidTerminateWithError:v4];
  if (v4)
  {
    v5 = [v4 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E69DEAE8]])
    {
      v6 = [v4 code];

      if (v6 == 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    if (SO_LOG_SORemoteExtensionViewController_once != -1)
    {
      [SORemoteExtensionViewController viewServiceDidTerminateWithError:];
    }

    v7 = SO_LOG_SORemoteExtensionViewController_log;
    if (os_log_type_enabled(SO_LOG_SORemoteExtensionViewController_log, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v14 = v4;
      _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_INFO, "viewServiceDidTerminateWithError: %{public}@", buf, 0xCu);
    }

    v8 = [(SORemoteExtensionViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(SORemoteExtensionViewController *)self delegate];
      [v10 viewServiceDidTerminateWithError:v4];
    }
  }

LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
}

- (SORemoteExtensionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end