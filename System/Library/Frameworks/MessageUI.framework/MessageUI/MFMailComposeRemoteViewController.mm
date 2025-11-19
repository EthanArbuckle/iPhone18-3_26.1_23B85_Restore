@interface MFMailComposeRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
- (MFMailComposeRemoteViewControllerDelegate)delegate;
- (void)bodyFinishedDrawing;
- (void)serviceCompositionFinishedWithResult:(int64_t)a3 error:(id)a4;
- (void)serviceCompositionRequestsSendWithBody:(id)a3 recipients:(id)a4 completion:(id)a5;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation MFMailComposeRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"ComposeServiceRemoteViewController" fromServiceWithBundleIdentifier:@"com.apple.MailCompositionService" connectionHandler:v3];

  return v4;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 domain];
    if ([v6 isEqualToString:*MEMORY[0x1E69DEAE8]])
    {
      v7 = [v5 code];

      if (v7 == 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "#Warning %@", &v10, 0xCu);
    }
  }

LABEL_9:
  v9 = [(MFMailComposeRemoteViewController *)self delegate];
  [v9 compositionViewServiceTerminatedWithError:v5];
}

- (void)serviceCompositionFinishedWithResult:(int64_t)a3 error:(id)a4
{
  v7 = a4;
  v6 = [(MFMailComposeRemoteViewController *)self delegate];
  [v6 compositionFinishedWithResult:a3 error:v7];
}

- (void)serviceCompositionRequestsSendWithBody:(id)a3 recipients:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MFMailComposeRemoteViewController *)self delegate];
  [v10 compositionRequestsSendWithBody:v11 recipients:v8 completion:v9];
}

- (void)bodyFinishedDrawing
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"_MFMailComposeViewControllerFirstDrawNotification" object:self];
}

- (MFMailComposeRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end