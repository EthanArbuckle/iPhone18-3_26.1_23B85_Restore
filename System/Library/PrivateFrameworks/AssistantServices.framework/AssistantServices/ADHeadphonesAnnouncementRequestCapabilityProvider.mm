@interface ADHeadphonesAnnouncementRequestCapabilityProvider
- (void)fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:(id)completion;
@end

@implementation ADHeadphonesAnnouncementRequestCapabilityProvider

- (void)fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:(id)completion
{
  completionCopy = completion;
  currentlyRoutedHeadphonesBTAddress = [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self currentlyRoutedHeadphonesBTAddress];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v13 = "[ADHeadphonesAnnouncementRequestCapabilityProvider fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:]";
    v14 = 2112;
    v15 = currentlyRoutedHeadphonesBTAddress;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s BTAddress for currently routed headset: %@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100362DE8;
  v9[3] = &unk_10051D6C8;
  v10 = currentlyRoutedHeadphonesBTAddress;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = currentlyRoutedHeadphonesBTAddress;
  [ADCoreBluetoothManager fetchCBUUIDForConnectedDeviceWithAddress:v8 completion:v9];
}

@end