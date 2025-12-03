@interface SFCertificatePresentationController
- (SFCertificatePresentationController)initWithCertificatePresentationRequest:(id)request;
- (SFCertificatePresentationControllerDelegate)delegate;
- (void)certificateViewControllerDidDismiss:(id)dismiss;
- (void)dismissWithCompletion:(id)completion;
- (void)presentWithCompletion:(id)completion;
@end

@implementation SFCertificatePresentationController

- (SFCertificatePresentationController)initWithCertificatePresentationRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = SFCertificatePresentationController;
  v6 = [(SFCertificatePresentationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentationRequest, request);
  }

  return v7;
}

- (void)presentWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = SFLogSFCertificatePresentationController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[SFCertificatePresentationController presentWithCompletion:]";
    _os_log_impl(&dword_23AA9F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 presentationViewControllerForCertificatePresentationController:self];
    presentationAnchor = self->_presentationAnchor;
    self->_presentationAnchor = v9;
  }

  if (!self->_presentationAnchor)
  {
    _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    rootViewController = [_applicationKeyWindow rootViewController];
    v13 = self->_presentationAnchor;
    self->_presentationAnchor = rootViewController;
  }

  v14 = [[SFCertificateViewController alloc] initWithCertificatePresentationRequest:self->_presentationRequest];
  [(SFCertificateViewController *)v14 setDelegate:self];
  v15 = self->_presentationAnchor;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__SFCertificatePresentationController_presentWithCompletion___block_invoke;
  v18[3] = &unk_278B69FE0;
  v19 = completionCopy;
  v16 = completionCopy;
  [(UIViewController *)v15 presentViewController:v14 animated:1 completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __61__SFCertificatePresentationController_presentWithCompletion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SFCertificatePresentationController_presentWithCompletion___block_invoke_2;
  block[3] = &unk_278B69FE0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __61__SFCertificatePresentationController_presentWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)dismissWithCompletion:(id)completion
{
  v8 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = SFLogSFCertificatePresentationController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SFCertificatePresentationController dismissWithCompletion:]";
    _os_log_impl(&dword_23AA9F000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)certificateViewControllerDidDismiss:(id)dismiss
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = SFLogSFCertificatePresentationController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SFCertificatePresentationController certificateViewControllerDidDismiss:]";
    _os_log_impl(&dword_23AA9F000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = SFLogSFCertificatePresentationController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_23AA9F000, v7, OS_LOG_TYPE_DEFAULT, "calling certificatePresentationControllerDidDismiss", &v10, 2u);
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 certificatePresentationControllerDidDismiss:self];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (SFCertificatePresentationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end