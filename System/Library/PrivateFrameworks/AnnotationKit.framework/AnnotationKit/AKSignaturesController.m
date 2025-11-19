@interface AKSignaturesController
- (AKController)controller;
- (AKSignaturesController)initWithController:(id)a3;
- (AKSignaturesControllerDelegate)delegate;
- (void)_continueToCreateSignature;
- (void)_continueToManageSignatures;
- (void)_notifyDidSelectSignature;
- (void)presentSignaturesViewController;
- (void)signatureCreationControllerDidCreateSignature:(id)a3;
- (void)signaturesViewControllerContinueToCreateSignature:(id)a3;
- (void)signaturesViewControllerDidCancel:(id)a3;
- (void)signaturesViewControllerDidSelectSignature:(id)a3;
@end

@implementation AKSignaturesController

- (AKSignaturesController)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKSignaturesController;
  v5 = [(AKSignaturesController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKSignaturesController *)v5 setController:v4];
  }

  return v6;
}

- (void)presentSignaturesViewController
{
  v3 = [(AKSignaturesController *)self controller];
  v4 = [v3 signatureModelController];
  v5 = [v4 signatures];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [[AKSignaturesViewController_iOS alloc] initWithController:v3];
    [(AKSignaturesController *)self setSignaturesAlertViewController:v7];

    v8 = [(AKSignaturesController *)self signaturesAlertViewController];
    [v8 setDelegate:self];

    v9 = [(AKSignaturesController *)self signaturesAlertViewController];
    [v9 setPresentedInAlert:1];

    v10 = [(AKSignaturesController *)self signaturesAlertViewController];
    [v10 setShowsNavigationBar:0];

    v11 = [(AKSignaturesController *)self signaturesAlertViewController];
    [v11 setAllowsEdits:0];

    v12 = [MEMORY[0x277D75348] clearColor];
    v13 = [(AKSignaturesController *)self signaturesAlertViewController];
    [v13 setTableBackgroundColor:v12];

    v14 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
    [v14 setModalPresentationStyle:7];
    v15 = [v14 popoverPresentationController];
    [v15 setDelegate:self];

    v16 = [v14 popoverPresentationController];
    [v16 setPermittedArrowDirections:2];

    v17 = [(AKSignaturesController *)self presentationContext];
    v18 = [v17 sourceView];
    v19 = [v14 popoverPresentationController];
    [v19 setSourceView:v18];

    v20 = [(AKSignaturesController *)self signaturesAlertViewController];
    [v14 setContentViewController:v20];

    v21 = MEMORY[0x277D750F8];
    v22 = +[AKController akBundle];
    v23 = [v22 localizedStringForKey:@"Add or Remove Signature" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_23F46E7FC;
    v32[3] = &unk_278C7BE58;
    v32[4] = self;
    v24 = [v21 actionWithTitle:v23 style:0 handler:v32];
    [v14 addAction:v24];

    v25 = MEMORY[0x277D750F8];
    v26 = +[AKController akBundle];
    v27 = [v26 localizedStringForKey:@"Cancel" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_23F46E8D0;
    v31[3] = &unk_278C7BE58;
    v31[4] = self;
    v28 = [v25 actionWithTitle:v27 style:1 handler:v31];
    [v14 addAction:v28];

    v29 = [(AKSignaturesController *)self presentationContext];
    v30 = [v29 presentingViewController];
    [v30 presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    [(AKSignaturesController *)self _continueToCreateSignature];
  }
}

- (void)_continueToManageSignatures
{
  v3 = [AKSignaturesViewController_iOS alloc];
  v4 = [(AKSignaturesController *)self controller];
  v5 = [(AKSignaturesViewController_iOS *)v3 initWithController:v4];
  [(AKSignaturesController *)self setSignaturesSheetViewController:v5];

  v6 = [(AKSignaturesController *)self signaturesSheetViewController];
  [v6 setDelegate:self];

  v7 = [(AKSignaturesController *)self signaturesSheetViewController];
  [v7 setModalPresentationStyle:2];

  v8 = [(AKSignaturesController *)self signaturesSheetViewController];
  [v8 setModalInPresentation:1];

  v9 = [(AKSignaturesController *)self signaturesSheetViewController];
  [v9 setShowsNavigationBar:1];

  v10 = [(AKSignaturesController *)self signaturesSheetViewController];
  [v10 setPresentedInAlert:0];

  v11 = [(AKSignaturesController *)self signaturesSheetViewController];
  [v11 setAllowsEdits:1];

  v14 = [(AKSignaturesController *)self presentationContext];
  v12 = [v14 presentingViewController];
  v13 = [(AKSignaturesController *)self signaturesSheetViewController];
  [v12 presentViewController:v13 animated:1 completion:0];
}

- (void)signaturesViewControllerDidCancel:(id)a3
{
  v4 = [(AKSignaturesController *)self signaturesSheetViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23F46EB74;
  v5[3] = &unk_278C7B540;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

- (void)signaturesViewControllerDidSelectSignature:(id)a3
{
  v4 = [(AKSignaturesController *)self signaturesAlertViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  [(AKSignaturesController *)self _notifyDidSelectSignature];
}

- (void)signaturesViewControllerContinueToCreateSignature:(id)a3
{
  v4 = [(AKSignaturesController *)self signaturesSheetViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23F46EC5C;
  v5[3] = &unk_278C7B540;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

- (void)_continueToCreateSignature
{
  v3 = [AKSignatureCreationViewController_iOS alloc];
  v4 = [(AKSignaturesController *)self controller];
  v5 = [(AKSignatureCreationViewController_iOS *)v3 initWithController:v4];
  [(AKSignaturesController *)self setSignaturesCreationViewController:v5];

  v6 = [(AKSignaturesController *)self signaturesCreationViewController];
  [v6 setDelegate:self];

  v7 = [(AKSignaturesController *)self signaturesCreationViewController];
  [v7 setModalTransitionStyle:0];

  v8 = [(AKSignaturesController *)self signaturesCreationViewController];
  [v8 setModalPresentationStyle:2];

  v9 = [(AKSignaturesController *)self signaturesCreationViewController];
  [v9 setModalInPresentation:1];

  v10 = [(AKSignaturesController *)self signaturesCreationViewController];
  v11 = [v10 popoverPresentationController];
  [v11 setDelegate:self];

  v14 = [(AKSignaturesController *)self presentationContext];
  v12 = [v14 presentingViewController];
  v13 = [(AKSignaturesController *)self signaturesCreationViewController];
  [v12 presentViewController:v13 animated:1 completion:0];
}

- (void)signatureCreationControllerDidCreateSignature:(id)a3
{
  v4 = [(AKSignaturesController *)self signaturesCreationViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23F46EE9C;
  v5[3] = &unk_278C7B540;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];

  [(AKSignaturesController *)self _notifyDidSelectSignature];
}

- (void)_notifyDidSelectSignature
{
  v3 = [(AKSignaturesController *)self controller];
  v4 = [v3 signatureModelController];
  v8 = [v4 selectedSignature];

  v5 = objc_alloc_init(AKSignatureAnnotation);
  [(AKSignatureAnnotation *)v5 setSignature:v8];
  [v8 pathBounds];
  [(AKSignatureAnnotation *)v5 setRectangle:0.0, 0.0];
  v6 = [MEMORY[0x277D75348] blackColor];
  [(AKSignatureAnnotation *)v5 setStrokeColor:v6];

  v7 = [(AKSignaturesController *)self delegate];
  [v7 signaturesController:self didSelectSignatureWithAnnotation:v5];
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (AKSignaturesControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end