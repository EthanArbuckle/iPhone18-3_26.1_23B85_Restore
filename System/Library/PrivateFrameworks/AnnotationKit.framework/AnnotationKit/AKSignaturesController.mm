@interface AKSignaturesController
- (AKController)controller;
- (AKSignaturesController)initWithController:(id)controller;
- (AKSignaturesControllerDelegate)delegate;
- (void)_continueToCreateSignature;
- (void)_continueToManageSignatures;
- (void)_notifyDidSelectSignature;
- (void)presentSignaturesViewController;
- (void)signatureCreationControllerDidCreateSignature:(id)signature;
- (void)signaturesViewControllerContinueToCreateSignature:(id)signature;
- (void)signaturesViewControllerDidCancel:(id)cancel;
- (void)signaturesViewControllerDidSelectSignature:(id)signature;
@end

@implementation AKSignaturesController

- (AKSignaturesController)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AKSignaturesController;
  v5 = [(AKSignaturesController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKSignaturesController *)v5 setController:controllerCopy];
  }

  return v6;
}

- (void)presentSignaturesViewController
{
  controller = [(AKSignaturesController *)self controller];
  signatureModelController = [controller signatureModelController];
  signatures = [signatureModelController signatures];
  v6 = [signatures count];

  if (v6)
  {
    v7 = [[AKSignaturesViewController_iOS alloc] initWithController:controller];
    [(AKSignaturesController *)self setSignaturesAlertViewController:v7];

    signaturesAlertViewController = [(AKSignaturesController *)self signaturesAlertViewController];
    [signaturesAlertViewController setDelegate:self];

    signaturesAlertViewController2 = [(AKSignaturesController *)self signaturesAlertViewController];
    [signaturesAlertViewController2 setPresentedInAlert:1];

    signaturesAlertViewController3 = [(AKSignaturesController *)self signaturesAlertViewController];
    [signaturesAlertViewController3 setShowsNavigationBar:0];

    signaturesAlertViewController4 = [(AKSignaturesController *)self signaturesAlertViewController];
    [signaturesAlertViewController4 setAllowsEdits:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    signaturesAlertViewController5 = [(AKSignaturesController *)self signaturesAlertViewController];
    [signaturesAlertViewController5 setTableBackgroundColor:clearColor];

    v14 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
    [v14 setModalPresentationStyle:7];
    popoverPresentationController = [v14 popoverPresentationController];
    [popoverPresentationController setDelegate:self];

    popoverPresentationController2 = [v14 popoverPresentationController];
    [popoverPresentationController2 setPermittedArrowDirections:2];

    presentationContext = [(AKSignaturesController *)self presentationContext];
    sourceView = [presentationContext sourceView];
    popoverPresentationController3 = [v14 popoverPresentationController];
    [popoverPresentationController3 setSourceView:sourceView];

    signaturesAlertViewController6 = [(AKSignaturesController *)self signaturesAlertViewController];
    [v14 setContentViewController:signaturesAlertViewController6];

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

    presentationContext2 = [(AKSignaturesController *)self presentationContext];
    presentingViewController = [presentationContext2 presentingViewController];
    [presentingViewController presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    [(AKSignaturesController *)self _continueToCreateSignature];
  }
}

- (void)_continueToManageSignatures
{
  v3 = [AKSignaturesViewController_iOS alloc];
  controller = [(AKSignaturesController *)self controller];
  v5 = [(AKSignaturesViewController_iOS *)v3 initWithController:controller];
  [(AKSignaturesController *)self setSignaturesSheetViewController:v5];

  signaturesSheetViewController = [(AKSignaturesController *)self signaturesSheetViewController];
  [signaturesSheetViewController setDelegate:self];

  signaturesSheetViewController2 = [(AKSignaturesController *)self signaturesSheetViewController];
  [signaturesSheetViewController2 setModalPresentationStyle:2];

  signaturesSheetViewController3 = [(AKSignaturesController *)self signaturesSheetViewController];
  [signaturesSheetViewController3 setModalInPresentation:1];

  signaturesSheetViewController4 = [(AKSignaturesController *)self signaturesSheetViewController];
  [signaturesSheetViewController4 setShowsNavigationBar:1];

  signaturesSheetViewController5 = [(AKSignaturesController *)self signaturesSheetViewController];
  [signaturesSheetViewController5 setPresentedInAlert:0];

  signaturesSheetViewController6 = [(AKSignaturesController *)self signaturesSheetViewController];
  [signaturesSheetViewController6 setAllowsEdits:1];

  presentationContext = [(AKSignaturesController *)self presentationContext];
  presentingViewController = [presentationContext presentingViewController];
  signaturesSheetViewController7 = [(AKSignaturesController *)self signaturesSheetViewController];
  [presentingViewController presentViewController:signaturesSheetViewController7 animated:1 completion:0];
}

- (void)signaturesViewControllerDidCancel:(id)cancel
{
  signaturesSheetViewController = [(AKSignaturesController *)self signaturesSheetViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23F46EB74;
  v5[3] = &unk_278C7B540;
  v5[4] = self;
  [signaturesSheetViewController dismissViewControllerAnimated:1 completion:v5];
}

- (void)signaturesViewControllerDidSelectSignature:(id)signature
{
  signaturesAlertViewController = [(AKSignaturesController *)self signaturesAlertViewController];
  [signaturesAlertViewController dismissViewControllerAnimated:1 completion:0];

  [(AKSignaturesController *)self _notifyDidSelectSignature];
}

- (void)signaturesViewControllerContinueToCreateSignature:(id)signature
{
  signaturesSheetViewController = [(AKSignaturesController *)self signaturesSheetViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23F46EC5C;
  v5[3] = &unk_278C7B540;
  v5[4] = self;
  [signaturesSheetViewController dismissViewControllerAnimated:1 completion:v5];
}

- (void)_continueToCreateSignature
{
  v3 = [AKSignatureCreationViewController_iOS alloc];
  controller = [(AKSignaturesController *)self controller];
  v5 = [(AKSignatureCreationViewController_iOS *)v3 initWithController:controller];
  [(AKSignaturesController *)self setSignaturesCreationViewController:v5];

  signaturesCreationViewController = [(AKSignaturesController *)self signaturesCreationViewController];
  [signaturesCreationViewController setDelegate:self];

  signaturesCreationViewController2 = [(AKSignaturesController *)self signaturesCreationViewController];
  [signaturesCreationViewController2 setModalTransitionStyle:0];

  signaturesCreationViewController3 = [(AKSignaturesController *)self signaturesCreationViewController];
  [signaturesCreationViewController3 setModalPresentationStyle:2];

  signaturesCreationViewController4 = [(AKSignaturesController *)self signaturesCreationViewController];
  [signaturesCreationViewController4 setModalInPresentation:1];

  signaturesCreationViewController5 = [(AKSignaturesController *)self signaturesCreationViewController];
  popoverPresentationController = [signaturesCreationViewController5 popoverPresentationController];
  [popoverPresentationController setDelegate:self];

  presentationContext = [(AKSignaturesController *)self presentationContext];
  presentingViewController = [presentationContext presentingViewController];
  signaturesCreationViewController6 = [(AKSignaturesController *)self signaturesCreationViewController];
  [presentingViewController presentViewController:signaturesCreationViewController6 animated:1 completion:0];
}

- (void)signatureCreationControllerDidCreateSignature:(id)signature
{
  signaturesCreationViewController = [(AKSignaturesController *)self signaturesCreationViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23F46EE9C;
  v5[3] = &unk_278C7B540;
  v5[4] = self;
  [signaturesCreationViewController dismissViewControllerAnimated:1 completion:v5];

  [(AKSignaturesController *)self _notifyDidSelectSignature];
}

- (void)_notifyDidSelectSignature
{
  controller = [(AKSignaturesController *)self controller];
  signatureModelController = [controller signatureModelController];
  selectedSignature = [signatureModelController selectedSignature];

  v5 = objc_alloc_init(AKSignatureAnnotation);
  [(AKSignatureAnnotation *)v5 setSignature:selectedSignature];
  [selectedSignature pathBounds];
  [(AKSignatureAnnotation *)v5 setRectangle:0.0, 0.0];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(AKSignatureAnnotation *)v5 setStrokeColor:blackColor];

  delegate = [(AKSignaturesController *)self delegate];
  [delegate signaturesController:self didSelectSignatureWithAnnotation:v5];
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