@interface MFMailComposeRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (MFMailComposeRemoteViewControllerDelegate)delegate;
- (void)bodyFinishedDrawing;
- (void)serviceCompositionFinishedWithResult:(int64_t)result error:(id)error;
- (void)serviceCompositionRequestsSendWithBody:(id)body recipients:(id)recipients completion:(id)completion;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation MFMailComposeRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"ComposeServiceRemoteViewController" fromServiceWithBundleIdentifier:@"com.apple.MailCompositionService" connectionHandler:handlerCopy];

  return v4;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x1E69DEAE8]])
    {
      code = [v5 code];

      if (code == 1)
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
  delegate = [(MFMailComposeRemoteViewController *)self delegate];
  [delegate compositionViewServiceTerminatedWithError:v5];
}

- (void)serviceCompositionFinishedWithResult:(int64_t)result error:(id)error
{
  errorCopy = error;
  delegate = [(MFMailComposeRemoteViewController *)self delegate];
  [delegate compositionFinishedWithResult:result error:errorCopy];
}

- (void)serviceCompositionRequestsSendWithBody:(id)body recipients:(id)recipients completion:(id)completion
{
  bodyCopy = body;
  recipientsCopy = recipients;
  completionCopy = completion;
  delegate = [(MFMailComposeRemoteViewController *)self delegate];
  [delegate compositionRequestsSendWithBody:bodyCopy recipients:recipientsCopy completion:completionCopy];
}

- (void)bodyFinishedDrawing
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_MFMailComposeViewControllerFirstDrawNotification" object:self];
}

- (MFMailComposeRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end