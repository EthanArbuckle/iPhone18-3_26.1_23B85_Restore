@interface CARSetupPromptPresenterProxy
- (CARSetupPromptDirector)director;
- (void)presentAllowWhileLockedPromptForVehicleName:(id)a3 responseHandler:(id)a4;
- (void)presentAssetProgressPromptForVehicleName:(id)a3 cancelHandler:(id)a4;
- (void)presentAssetReadyPromptForVehicleName:(id)a3 appClipIDs:(id)a4 confirmationHandler:(id)a5;
- (void)presentAssetReadySoonPromptForVehicleName:(id)a3 confirmationHandler:(id)a4;
- (void)presentAssetSupportingConnectPromptWithBluetoothOnlyOption:(BOOL)a3 wirelessEnablement:(unint64_t)a4 responseHandler:(id)a5;
- (void)presentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)a3 declineVariant:(unint64_t)a4 responseHandler:(id)a5;
- (void)presentAssetUnavailablePromptWithDescription:(id)a3 responseHandler:(id)a4;
- (void)presentBluetoothConfirmationPromptForVehicleName:(id)a3 numericCode:(id)a4 responseHandler:(id)a5;
- (void)presentBluetoothContactsSyncPromptWithResponseHandler:(id)a3;
- (void)presentBluetoothFailedPromptForVehicleName:(id)a3 isTimeout:(BOOL)a4 responseHandler:(id)a5;
- (void)presentCheckForSoftwareUpdatesWithCompletionHandler:(id)a3;
- (void)presentConnectPromptWithBluetoothOnlyOption:(BOOL)a3 wirelessEnablement:(unint64_t)a4 responseHandler:(id)a5;
- (void)presentEnhancedIntegrationPromptForVehicleName:(id)a3 responseHandler:(id)a4;
- (void)presentSetupCarKeysPromptForVehicleName:(id)a3 carKeyInfo:(id)a4 cancelHandler:(id)a5;
- (void)presentUseWirelessPromptWithWirelessEnablement:(unint64_t)a3 declineVariant:(unint64_t)a4 responseHandler:(id)a5;
- (void)presentWaitingOnMessagingPrompt;
- (void)presentWaitingOnStartSessionPrompt;
@end

@implementation CARSetupPromptPresenterProxy

- (void)presentBluetoothConfirmationPromptForVehicleName:(id)a3 numericCode:(id)a4 responseHandler:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003CAC;
  v10[3] = &unk_100010480;
  v10[4] = self;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v7 = v13;
  v8 = v12;
  v9 = v11;
  dispatch_sync(&_dispatch_main_q, v10);
}

- (void)presentBluetoothContactsSyncPromptWithResponseHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003F6C;
  v4[3] = &unk_1000104A8;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_sync(&_dispatch_main_q, v4);
}

- (void)presentBluetoothFailedPromptForVehicleName:(id)a3 isTimeout:(BOOL)a4 responseHandler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000424C;
  v9[3] = &unk_1000104D0;
  v9[4] = self;
  v10 = a3;
  v12 = a4;
  v11 = a5;
  v7 = v11;
  v8 = v10;
  dispatch_sync(&_dispatch_main_q, v9);
}

- (void)presentWaitingOnMessagingPrompt
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004488;
  block[3] = &unk_100010350;
  block[4] = self;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentAllowWhileLockedPromptForVehicleName:(id)a3 responseHandler:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004620;
  block[3] = &unk_1000104F8;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentConnectPromptWithBluetoothOnlyOption:(BOOL)a3 wirelessEnablement:(unint64_t)a4 responseHandler:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000048E8;
  v8[3] = &unk_100010520;
  v11 = a3;
  v9 = a5;
  v10 = a4;
  v8[4] = self;
  v7 = v9;
  dispatch_sync(&_dispatch_main_q, v8);
}

- (void)presentUseWirelessPromptWithWirelessEnablement:(unint64_t)a3 declineVariant:(unint64_t)a4 responseHandler:(id)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004BBC;
  v6[3] = &unk_100010548;
  v8 = a3;
  v9 = a4;
  v6[4] = self;
  v7 = a5;
  v5 = v7;
  dispatch_sync(&_dispatch_main_q, v6);
}

- (void)presentWaitingOnStartSessionPrompt
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004E58;
  block[3] = &unk_100010350;
  block[4] = self;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentEnhancedIntegrationPromptForVehicleName:(id)a3 responseHandler:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004FF0;
  block[3] = &unk_1000104F8;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentAssetSupportingConnectPromptWithBluetoothOnlyOption:(BOOL)a3 wirelessEnablement:(unint64_t)a4 responseHandler:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000052F8;
  v8[3] = &unk_100010520;
  v11 = a3;
  v9 = a5;
  v10 = a4;
  v8[4] = self;
  v7 = v9;
  dispatch_sync(&_dispatch_main_q, v8);
}

- (void)presentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)a3 declineVariant:(unint64_t)a4 responseHandler:(id)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000055CC;
  v6[3] = &unk_100010548;
  v8 = a3;
  v9 = a4;
  v6[4] = self;
  v7 = a5;
  v5 = v7;
  dispatch_sync(&_dispatch_main_q, v6);
}

- (void)presentAssetProgressPromptForVehicleName:(id)a3 cancelHandler:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000058B8;
  block[3] = &unk_1000104F8;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentAssetUnavailablePromptWithDescription:(id)a3 responseHandler:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005BC0;
  block[3] = &unk_1000104F8;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentAssetReadyPromptForVehicleName:(id)a3 appClipIDs:(id)a4 confirmationHandler:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005EFC;
  v11[3] = &unk_100010480;
  v12 = a3;
  v13 = self;
  v14 = a4;
  v15 = a5;
  v8 = v15;
  v9 = v14;
  v10 = v12;
  dispatch_sync(&_dispatch_main_q, v11);
}

- (void)presentAssetReadySoonPromptForVehicleName:(id)a3 confirmationHandler:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000061D0;
  block[3] = &unk_1000104F8;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentSetupCarKeysPromptForVehicleName:(id)a3 carKeyInfo:(id)a4 cancelHandler:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000064AC;
  v11[3] = &unk_100010480;
  v12 = a3;
  v13 = self;
  v14 = a4;
  v15 = a5;
  v8 = v15;
  v9 = v14;
  v10 = v12;
  dispatch_sync(&_dispatch_main_q, v11);
}

- (void)presentCheckForSoftwareUpdatesWithCompletionHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006748;
  v4[3] = &unk_1000104A8;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_sync(&_dispatch_main_q, v4);
}

- (CARSetupPromptDirector)director
{
  WeakRetained = objc_loadWeakRetained(&self->_director);

  return WeakRetained;
}

@end