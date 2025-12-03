@interface BarcodeSupportHelper
- (void)processAppClipImageWithURL:(id)l scale:(double)scale reply:(id)reply;
- (void)setUpQRCodeControlCenterModuleWithReply:(id)reply;
@end

@implementation BarcodeSupportHelper

- (void)setUpQRCodeControlCenterModuleWithReply:(id)reply
{
  replyCopy = reply;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "BarcodeSupportHelper: set up QR code control center module", buf, 2u);
  }

  v4 = +[NSLocale currentLocale];
  countryCode = [v4 countryCode];

  if ([&off_100004328 containsObject:countryCode])
  {
    v6 = [[CCSIconElementRequest alloc] initWithIntent:2 controlKind:@"com.apple.BarcodeScanner.button" controlType:2 extensionBundleIdentifier:@"com.apple.BarcodeScanner.BarcodeScannerWidgetExtension" containerBundleIdentifier:@"com.apple.BarcodeScanner" size:0];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "BarcodeSupportHelper: enable QR code control center module", buf, 2u);
    }

    v7 = +[CCSControlCenterService sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001068;
    v8[3] = &unk_100004108;
    v9 = replyCopy;
    [v7 handleIconElementRequest:v6 completionHandler:v8];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 1, 0);
  }
}

- (void)processAppClipImageWithURL:(id)l scale:(double)scale reply:(id)reply
{
  replyCopy = reply;
  v5 = _bcs_applyTreatmentToIcon();
  replyCopy[2](replyCopy, v5);
}

@end