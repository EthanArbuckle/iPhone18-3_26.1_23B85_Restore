@interface DetailsViewController
- (DetailsViewController)init;
- (id)_generateBarcode:(id)barcode showAsQRCode:(BOOL)code;
- (void)loadView;
@end

@implementation DetailsViewController

- (DetailsViewController)init
{
  v3.receiver = self;
  v3.super_class = DetailsViewController;
  return [(DetailsViewController *)&v3 initWithNibName:@"DetailsView" bundle:0];
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = DetailsViewController;
  [(DetailsViewController *)&v19 loadView];
  v3 = MGCopyAnswer();
  [(UILabel *)self->_serialNumberLabel setText:v3];
  v4 = [NSAttributedString alloc];
  v20 = UIAccessibilitySpeechAttributeSpellOut;
  v21 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v6 = [v4 initWithString:v3 attributes:v5];
  [(UILabel *)self->_serialNumberLabel setAccessibilityAttributedLabel:v6];

  v7 = [(DetailsViewController *)self _generateBarcode:v3 showAsQRCode:1];
  qrCodeView = [(DetailsViewController *)self qrCodeView];
  [qrCodeView setImage:v7];

  qrCodeView2 = [(DetailsViewController *)self qrCodeView];
  [qrCodeView2 setIsAccessibilityElement:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"AX_QRCODE" value:&stru_100028E90 table:0];
  qrCodeView3 = [(DetailsViewController *)self qrCodeView];
  [qrCodeView3 setAccessibilityLabel:v11];

  v13 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
  [(DetailsViewController *)self setTelephony:v13];

  imeiLabel = [(DetailsViewController *)self imeiLabel];
  telephony = [(DetailsViewController *)self telephony];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100004A0C;
  v17[3] = &unk_1000287B0;
  v18 = imeiLabel;
  v16 = imeiLabel;
  [telephony copyMobileEquipmentInfo:v17];
}

- (id)_generateBarcode:(id)barcode showAsQRCode:(BOOL)code
{
  if (code)
  {
    v5 = 3.5;
  }

  else
  {
    v5 = 2.5;
  }

  v6 = @"CICode128BarcodeGenerator";
  if (code)
  {
    v6 = @"CIQRCodeGenerator";
  }

  v7 = v6;
  v8 = [barcode dataUsingEncoding:1];
  v9 = [CIFilter filterWithName:v7];

  [v9 setValue:v8 forKey:@"inputMessage"];
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v5, v5);
  outputImage = [v9 outputImage];
  v14 = v15;
  v11 = [outputImage imageByApplyingTransform:&v14];

  v12 = [[UIImage alloc] initWithCIImage:v11];

  return v12;
}

@end