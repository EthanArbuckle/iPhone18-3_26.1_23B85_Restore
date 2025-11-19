@interface MFNanoBridgeMessagePreviewController
- (MFNanoBridgeMessagePreviewController)initWithCoder:(id)a3;
- (MFNanoBridgeMessagePreviewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MFNanoBridgeMessagePreviewController

- (void)viewWillAppear:(BOOL)a3
{
  sub_1FF64();
  sub_1FF54();
  sub_1FF44();
  sub_20014();
  _objc_retain(self);
  v3 = sub_1FE24();
  sub_19C00(v3 & 1);
  _objc_release(self);
}

- (MFNanoBridgeMessagePreviewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_1FF64();
  sub_1FF54();
  sub_1FF44();
  sub_20014();
  _objc_retain(a3);
  _objc_retain(a4);
  if (a3)
  {
    v7 = sub_1FEB4();
    v8 = v4;
    _objc_release(a3);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v6 = sub_19D90(v9, v10, a4);

  return v6;
}

- (MFNanoBridgeMessagePreviewController)initWithCoder:(id)a3
{
  sub_1FF64();
  sub_1FF54();
  sub_1FF44();
  sub_20014();
  _objc_retain(a3);
  v5 = sub_1A010(a3);

  return v5;
}

@end