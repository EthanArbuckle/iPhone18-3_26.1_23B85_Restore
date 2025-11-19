@interface COSInternalManualPairingViewController
- (COSInternalManualPairingViewController)init;
- (void)pressedDone:(id)a3;
- (void)viewDidLoad;
@end

@implementation COSInternalManualPairingViewController

- (COSInternalManualPairingViewController)init
{
  v6.receiver = self;
  v6.super_class = COSInternalManualPairingViewController;
  v2 = [(COSInternalManualPairingViewController *)&v6 init];
  if (v2)
  {
    v3 = [[COSManualFlowView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    manualView = v2->_manualView;
    v2->_manualView = v3;

    [(COSManualFlowView *)v2->_manualView setDelegate:v2];
  }

  return v2;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = COSInternalManualPairingViewController;
  [(COSInternalManualPairingViewController *)&v13 viewDidLoad];
  v3 = [(COSInternalManualPairingViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(COSManualFlowView *)self->_manualView setFrame:v5, v7, v9, v11];
  v12 = [(COSInternalManualPairingViewController *)self view];
  [v12 addSubview:self->_manualView];
}

- (void)pressedDone:(id)a3
{
  v4 = [(COSManualFlowView *)self->_manualView btDataTextField];
  v5 = [v4 text];
  v6 = [(COSManualFlowView *)self->_manualView deviceNameTextField];
  v7 = [v6 text];
  v8 = _PBBridgeMagicCodeString();

  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Code %@", &v10, 0xCu);
  }

  [(COSInternalManualPairingDelegate *)self->_pairingDelegate setManualPairingScannedCode:v8];
  [(COSInternalManualPairingDelegate *)self->_pairingDelegate processScannedCodeForManualPairing];
  [(COSInternalManualPairingDelegate *)self->_pairingDelegate doneManualPairing];
}

@end