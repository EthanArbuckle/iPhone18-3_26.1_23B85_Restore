@interface HSPCSetupConfirmationNetworkRouterResidentRequiredViewController
- (HFSetupPairingPopupDelegate)popupDelegate;
- (HSPCSetupConfirmationNetworkRouterResidentRequiredViewController)initWithPopupDelegate:(id)a3 setupAccessoryDescription:(id)a4;
@end

@implementation HSPCSetupConfirmationNetworkRouterResidentRequiredViewController

- (HSPCSetupConfirmationNetworkRouterResidentRequiredViewController)initWithPopupDelegate:(id)a3 setupAccessoryDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100063A44(@"HSSetupConfirmationNetworkRouterResidentRequiredViewControllerTitle");
  v9 = HFLocalizedWiFiStringKeyForKey();
  v10 = sub_100063A44(v9);

  v11 = HUImageNamed();
  v22.receiver = self;
  v22.super_class = HSPCSetupConfirmationNetworkRouterResidentRequiredViewController;
  v12 = [(HSPCSetupConfirmationNetworkRouterResidentRequiredViewController *)&v22 initWithTitle:v8 detailText:v10 contentImage:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_popupDelegate, v6);
    objc_storeStrong(&v13->_setupAccessoryDescription, a4);
    v14 = HULocalizedString();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000382DC;
    v20[3] = &unk_1000C5CA0;
    v15 = v13;
    v21 = v15;
    v16 = [PRXAction actionWithTitle:v14 style:0 handler:v20];
    v17 = [(HSPCSetupConfirmationNetworkRouterResidentRequiredViewController *)v15 addAction:v16];

    v18 = +[NSURL hf_learnAboutNetworkProtectionURL];
    [(HSPCSetupConfirmationNetworkRouterResidentRequiredViewController *)v15 addLearnMoreButtonWithURL:v18];
  }

  return v13;
}

- (HFSetupPairingPopupDelegate)popupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_popupDelegate);

  return WeakRetained;
}

@end