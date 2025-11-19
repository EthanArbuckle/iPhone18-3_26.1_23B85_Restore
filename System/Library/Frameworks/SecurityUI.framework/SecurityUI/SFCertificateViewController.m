@interface SFCertificateViewController
- (SFCertificateViewController)initWithCertificatePresentationRequest:(id)a3;
- (SFCertificateViewControllerDelegate)delegate;
- (void)_viewDidDisappear;
- (void)dismiss;
- (void)layoutViewWithCertificatePresentationRequest:(id)a3;
- (void)viewDidLoad;
@end

@implementation SFCertificateViewController

- (SFCertificateViewController)initWithCertificatePresentationRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SFCertificateViewController;
  v6 = [(SFCertificateViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentationRequest, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SFCertificateViewController;
  [(SFCertificateViewController *)&v3 viewDidLoad];
  [(SFCertificateViewController *)self layoutViewWithCertificatePresentationRequest:self->_presentationRequest];
}

- (void)_viewDidDisappear
{
  v3 = [(SFCertificateViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = SFLogSFCertificateViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23AA9F000, v5, OS_LOG_TYPE_DEFAULT, "calling certificateViewControllerDidDismiss", v7, 2u);
    }

    v6 = [(SFCertificateViewController *)self delegate];
    [v6 certificateViewControllerDidDismiss:self];
  }
}

- (SFCertificateViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dismiss
{
  v3 = SFLogSFCertificateViewController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AA9F000, v3, OS_LOG_TYPE_DEFAULT, "dismiss", v4, 2u);
  }

  [(SFCertificateViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global];
}

- (void)layoutViewWithCertificatePresentationRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  SFCertificateViewController.layoutView(with:)(v4);
}

@end