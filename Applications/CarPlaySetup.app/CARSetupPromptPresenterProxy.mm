@interface CARSetupPromptPresenterProxy
- (CARSetupPromptDirector)director;
- (void)presentAllowWhileLockedPromptForVehicleName:(id)name responseHandler:(id)handler;
- (void)presentAssetProgressPromptForVehicleName:(id)name cancelHandler:(id)handler;
- (void)presentAssetReadyPromptForVehicleName:(id)name appClipIDs:(id)ds confirmationHandler:(id)handler;
- (void)presentAssetReadySoonPromptForVehicleName:(id)name confirmationHandler:(id)handler;
- (void)presentAssetSupportingConnectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler;
- (void)presentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler;
- (void)presentAssetUnavailablePromptWithDescription:(id)description responseHandler:(id)handler;
- (void)presentBluetoothConfirmationPromptForVehicleName:(id)name numericCode:(id)code responseHandler:(id)handler;
- (void)presentBluetoothContactsSyncPromptWithResponseHandler:(id)handler;
- (void)presentBluetoothFailedPromptForVehicleName:(id)name isTimeout:(BOOL)timeout responseHandler:(id)handler;
- (void)presentCheckForSoftwareUpdatesWithCompletionHandler:(id)handler;
- (void)presentConnectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler;
- (void)presentEnhancedIntegrationPromptForVehicleName:(id)name responseHandler:(id)handler;
- (void)presentSetupCarKeysPromptForVehicleName:(id)name carKeyInfo:(id)info cancelHandler:(id)handler;
- (void)presentUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler;
- (void)presentWaitingOnMessagingPrompt;
- (void)presentWaitingOnStartSessionPrompt;
@end

@implementation CARSetupPromptPresenterProxy

- (void)presentBluetoothConfirmationPromptForVehicleName:(id)name numericCode:(id)code responseHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003CAC;
  v10[3] = &unk_100010480;
  v10[4] = self;
  nameCopy = name;
  codeCopy = code;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = codeCopy;
  v9 = nameCopy;
  dispatch_sync(&_dispatch_main_q, v10);
}

- (void)presentBluetoothContactsSyncPromptWithResponseHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003F6C;
  v4[3] = &unk_1000104A8;
  v4[4] = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  dispatch_sync(&_dispatch_main_q, v4);
}

- (void)presentBluetoothFailedPromptForVehicleName:(id)name isTimeout:(BOOL)timeout responseHandler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000424C;
  v9[3] = &unk_1000104D0;
  v9[4] = self;
  nameCopy = name;
  timeoutCopy = timeout;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = nameCopy;
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

- (void)presentAllowWhileLockedPromptForVehicleName:(id)name responseHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004620;
  block[3] = &unk_1000104F8;
  block[4] = self;
  nameCopy = name;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = nameCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentConnectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000048E8;
  v8[3] = &unk_100010520;
  optionCopy = option;
  handlerCopy = handler;
  enablementCopy = enablement;
  v8[4] = self;
  v7 = handlerCopy;
  dispatch_sync(&_dispatch_main_q, v8);
}

- (void)presentUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004BBC;
  v6[3] = &unk_100010548;
  enablementCopy = enablement;
  variantCopy = variant;
  v6[4] = self;
  handlerCopy = handler;
  v5 = handlerCopy;
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

- (void)presentEnhancedIntegrationPromptForVehicleName:(id)name responseHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004FF0;
  block[3] = &unk_1000104F8;
  nameCopy = name;
  selfCopy = self;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = nameCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentAssetSupportingConnectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000052F8;
  v8[3] = &unk_100010520;
  optionCopy = option;
  handlerCopy = handler;
  enablementCopy = enablement;
  v8[4] = self;
  v7 = handlerCopy;
  dispatch_sync(&_dispatch_main_q, v8);
}

- (void)presentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000055CC;
  v6[3] = &unk_100010548;
  enablementCopy = enablement;
  variantCopy = variant;
  v6[4] = self;
  handlerCopy = handler;
  v5 = handlerCopy;
  dispatch_sync(&_dispatch_main_q, v6);
}

- (void)presentAssetProgressPromptForVehicleName:(id)name cancelHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000058B8;
  block[3] = &unk_1000104F8;
  nameCopy = name;
  selfCopy = self;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = nameCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentAssetUnavailablePromptWithDescription:(id)description responseHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005BC0;
  block[3] = &unk_1000104F8;
  descriptionCopy = description;
  selfCopy = self;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = descriptionCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentAssetReadyPromptForVehicleName:(id)name appClipIDs:(id)ds confirmationHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005EFC;
  v11[3] = &unk_100010480;
  nameCopy = name;
  selfCopy = self;
  dsCopy = ds;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = dsCopy;
  v10 = nameCopy;
  dispatch_sync(&_dispatch_main_q, v11);
}

- (void)presentAssetReadySoonPromptForVehicleName:(id)name confirmationHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000061D0;
  block[3] = &unk_1000104F8;
  nameCopy = name;
  selfCopy = self;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = nameCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)presentSetupCarKeysPromptForVehicleName:(id)name carKeyInfo:(id)info cancelHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000064AC;
  v11[3] = &unk_100010480;
  nameCopy = name;
  selfCopy = self;
  infoCopy = info;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = infoCopy;
  v10 = nameCopy;
  dispatch_sync(&_dispatch_main_q, v11);
}

- (void)presentCheckForSoftwareUpdatesWithCompletionHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006748;
  v4[3] = &unk_1000104A8;
  v4[4] = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  dispatch_sync(&_dispatch_main_q, v4);
}

- (CARSetupPromptDirector)director
{
  WeakRetained = objc_loadWeakRetained(&self->_director);

  return WeakRetained;
}

@end