@interface SORemoteExtensionViewController
- (SORemoteExtensionViewControllerDelegate)delegate;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SORemoteExtensionViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = SORemoteExtensionViewController;
  [(_UIRemoteViewController *)&v12 viewServiceDidTerminateWithError:errorCopy];
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x1E69DEAE8]])
    {
      code = [errorCopy code];

      if (code == 1)
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
      v14 = errorCopy;
      _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_INFO, "viewServiceDidTerminateWithError: %{public}@", buf, 0xCu);
    }

    delegate = [(SORemoteExtensionViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(SORemoteExtensionViewController *)self delegate];
      [delegate2 viewServiceDidTerminateWithError:errorCopy];
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