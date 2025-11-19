@interface SFCertificatePresentation
- (SFCertificatePresentation)initWithTrust:(__SecTrust *)a3;
- (void)_presentSheetWithPresentationAnchor:(id)a3 dismissHandler:(id)a4;
- (void)certificatePresentationControllerDidDismiss:(id)a3;
@end

@implementation SFCertificatePresentation

- (SFCertificatePresentation)initWithTrust:(__SecTrust *)a3
{
  v5.receiver = self;
  v5.super_class = SFCertificatePresentation;
  result = [(SFCertificatePresentation *)&v5 init];
  if (result)
  {
    result->_trust = a3;
  }

  return result;
}

- (void)_presentSheetWithPresentationAnchor:(id)a3 dismissHandler:(id)a4
{
  objc_storeStrong(&self->_presentationAnchor, a3);
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x23EE93EB0]();

  dismissHandler = self->_dismissHandler;
  self->_dismissHandler = v9;

  v13 = [[SFCertificatePresentationRequest alloc] initWithTrust:self->_trust];
  [(SFCertificatePresentationRequest *)v13 setTitle:self->_title];
  [(SFCertificatePresentationRequest *)v13 setMessage:self->_message];
  [(SFCertificatePresentationRequest *)v13 setHelp:self->_helpURL];
  v11 = [[SFCertificatePresentationController alloc] initWithCertificatePresentationRequest:v13];
  controller = self->_controller;
  self->_controller = v11;

  [(SFCertificatePresentationController *)self->_controller setDelegate:self];
  [(SFCertificatePresentationController *)self->_controller presentWithCompletion:&__block_literal_global_3];
}

- (void)certificatePresentationControllerDidDismiss:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__SFCertificatePresentation_certificatePresentationControllerDidDismiss___block_invoke;
  v3[3] = &unk_278B6A028;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __73__SFCertificatePresentation_certificatePresentationControllerDidDismiss___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained dismissHandler];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 dismissHandler];
      v3[2]();

      [v4 setDismissHandler:0];
      WeakRetained = v4;
    }
  }
}

@end