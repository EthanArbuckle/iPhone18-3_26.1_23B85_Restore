@interface MapsScreenshotService
- (MapsScreenshotService)initWithDelegate:(id)a3 windowScene:(id)a4;
- (MapsScreenshotServiceDelegate)delegate;
- (id)_generateUIImageFromView:(id)a3 withWatermark:(id)a4 size:(CGSize)a5;
- (void)screenshotService:(id)a3 generatePDFRepresentationWithCompletion:(id)a4;
@end

@implementation MapsScreenshotService

- (MapsScreenshotServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_generateUIImageFromView:(id)a3 withWatermark:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = a4;
  v10 = [v8 viewWithTag:MKLookAroundTTRButtonTag];
  v11 = [v10 isHidden];
  [v10 setHidden:1];
  v12 = [v8 viewWithTag:MKLookAroundCompassTag];
  v13 = [v12 isHidden];
  [v12 setHidden:1];
  v14 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100892E68;
  v22 = &unk_101650988;
  v25 = width;
  v26 = height;
  v23 = v8;
  v24 = v9;
  v15 = v9;
  v16 = v8;
  v17 = [v14 imageWithActions:&v19];
  [v10 setHidden:{v11, v19, v20, v21, v22}];
  [v12 setHidden:v13];

  return v17;
}

- (void)screenshotService:(id)a3 generatePDFRepresentationWithCompletion:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained viewsToRenderMapsScreenshotService:self];

  if ([v7 count])
  {
    v8 = [v7 count];
    v9 = [v7 firstObject];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = +[GEOPlatform sharedPlatform];
    v19 = [v18 isInternalInstall];

    if (v19)
    {
      v20 = [[WatermarkView alloc] initWithFrame:v11, v13, v15, v17];
    }

    else
    {
      v20 = 0;
    }

    v21 = [[UIGraphicsPDFRenderer alloc] initWithBounds:{v11, v13, v15, v17}];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1008930F8;
    v25[3] = &unk_10162CD48;
    v26 = v7;
    v27 = self;
    v28 = v20;
    v29 = v11;
    v30 = v13;
    v31 = v15;
    v32 = v17;
    v22 = v20;
    v23 = [v21 PDFDataWithActions:v25];
    v24 = [v23 copy];
    v5[2](v5, v24, v8, v11, v13, v15, v17);
  }

  else
  {
    v5[2](v5, 0, 0, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
  }
}

- (MapsScreenshotService)initWithDelegate:(id)a3 windowScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MapsScreenshotService;
  v8 = [(MapsScreenshotService *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = [v7 screenshotService];
    [v10 setDelegate:v9];
  }

  return v9;
}

@end