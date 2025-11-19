@interface BarcodeSupportHelper
- (void)processAppClipImageWithURL:(id)a3 scale:(double)a4 reply:(id)a5;
- (void)setUpQRCodeControlCenterModuleWithReply:(id)a3;
@end

@implementation BarcodeSupportHelper

- (void)setUpQRCodeControlCenterModuleWithReply:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "BarcodeSupportHelper: set up QR code control center module", buf, 2u);
  }

  v4 = +[NSLocale currentLocale];
  v5 = [v4 countryCode];

  if ([&off_100004328 containsObject:v5])
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
    v9 = v3;
    [v7 handleIconElementRequest:v6 completionHandler:v8];
  }

  else
  {
    (*(v3 + 2))(v3, 1, 0);
  }
}

- (void)processAppClipImageWithURL:(id)a3 scale:(double)a4 reply:(id)a5
{
  v6 = a5;
  v5 = _bcs_applyTreatmentToIcon();
  v6[2](v6, v5);
}

@end