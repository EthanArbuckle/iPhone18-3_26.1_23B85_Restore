@interface COSManualPairingFlowViewController
- (COSManualPairingDelegate)pairingDelegate;
- (COSManualPairingFlowViewController)init;
- (Class)pairingControllerClass;
- (void)controllerCancelled:(id)a3;
@end

@implementation COSManualPairingFlowViewController

- (COSManualPairingFlowViewController)init
{
  v3 = [objc_alloc(-[COSManualPairingFlowViewController pairingControllerClass](self "pairingControllerClass"))];
  v10.receiver = self;
  v10.super_class = COSManualPairingFlowViewController;
  v4 = [(COSManualPairingFlowViewController *)&v10 initWithRootViewController:v3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_securePairingController, v3);
    v6 = [(COSManualPairingFlowViewController *)v5 navigationBar];
    sub_10002C794(v6);

    v7 = [(COSManualPairingFlowViewController *)v5 view];
    v8 = BPSBackgroundColor();
    [v7 setBackgroundColor:v8];
  }

  return v5;
}

- (void)controllerCancelled:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDelegate);
  [WeakRetained didCancelManualPairing];
}

- (Class)pairingControllerClass
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSManualPairingFlowViewController pairingControllerClass]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v4, 0xCu);
  }

  return 0;
}

- (COSManualPairingDelegate)pairingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDelegate);

  return WeakRetained;
}

@end