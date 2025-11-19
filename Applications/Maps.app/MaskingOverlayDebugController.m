@interface MaskingOverlayDebugController
- (MaskingOverlayDebugController)init;
- (void)prepareContent;
@end

@implementation MaskingOverlayDebugController

- (void)prepareContent
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100F4F9D4;
  v4[3] = &unk_10165E0A8;
  objc_copyWeak(&v5, &location);
  v3 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Masking Overlay Debug" content:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (MaskingOverlayDebugController)init
{
  v6.receiver = self;
  v6.super_class = MaskingOverlayDebugController;
  v2 = [(MapsDebugValuesViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end