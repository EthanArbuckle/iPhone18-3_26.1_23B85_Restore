@interface MFNanoBridgeMessagePreviewController
- (MFNanoBridgeMessagePreviewController)initWithCoder:(id)coder;
- (MFNanoBridgeMessagePreviewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MFNanoBridgeMessagePreviewController

- (void)viewWillAppear:(BOOL)appear
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

- (MFNanoBridgeMessagePreviewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_1FF64();
  sub_1FF54();
  sub_1FF44();
  sub_20014();
  _objc_retain(name);
  _objc_retain(bundle);
  if (name)
  {
    v7 = sub_1FEB4();
    v8 = v4;
    _objc_release(name);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v6 = sub_19D90(v9, v10, bundle);

  return v6;
}

- (MFNanoBridgeMessagePreviewController)initWithCoder:(id)coder
{
  sub_1FF64();
  sub_1FF54();
  sub_1FF44();
  sub_20014();
  _objc_retain(coder);
  v5 = sub_1A010(coder);

  return v5;
}

@end