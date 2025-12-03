@interface MapsScreenshotService
- (MapsScreenshotService)initWithDelegate:(id)delegate windowScene:(id)scene;
- (MapsScreenshotServiceDelegate)delegate;
- (id)_generateUIImageFromView:(id)view withWatermark:(id)watermark size:(CGSize)size;
- (void)screenshotService:(id)service generatePDFRepresentationWithCompletion:(id)completion;
@end

@implementation MapsScreenshotService

- (MapsScreenshotServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_generateUIImageFromView:(id)view withWatermark:(id)watermark size:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  watermarkCopy = watermark;
  v10 = [viewCopy viewWithTag:MKLookAroundTTRButtonTag];
  isHidden = [v10 isHidden];
  [v10 setHidden:1];
  v12 = [viewCopy viewWithTag:MKLookAroundCompassTag];
  isHidden2 = [v12 isHidden];
  [v12 setHidden:1];
  v14 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100892E68;
  v22 = &unk_101650988;
  v25 = width;
  v26 = height;
  v23 = viewCopy;
  v24 = watermarkCopy;
  v15 = watermarkCopy;
  v16 = viewCopy;
  v17 = [v14 imageWithActions:&v19];
  [v10 setHidden:{isHidden, v19, v20, v21, v22}];
  [v12 setHidden:isHidden2];

  return v17;
}

- (void)screenshotService:(id)service generatePDFRepresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained viewsToRenderMapsScreenshotService:self];

  if ([v7 count])
  {
    v8 = [v7 count];
    firstObject = [v7 firstObject];
    [firstObject bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = +[GEOPlatform sharedPlatform];
    isInternalInstall = [v18 isInternalInstall];

    if (isInternalInstall)
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
    selfCopy = self;
    v28 = v20;
    v29 = v11;
    v30 = v13;
    v31 = v15;
    v32 = v17;
    v22 = v20;
    v23 = [v21 PDFDataWithActions:v25];
    v24 = [v23 copy];
    completionCopy[2](completionCopy, v24, v8, v11, v13, v15, v17);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
  }
}

- (MapsScreenshotService)initWithDelegate:(id)delegate windowScene:(id)scene
{
  delegateCopy = delegate;
  sceneCopy = scene;
  v12.receiver = self;
  v12.super_class = MapsScreenshotService;
  v8 = [(MapsScreenshotService *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    screenshotService = [sceneCopy screenshotService];
    [screenshotService setDelegate:v9];
  }

  return v9;
}

@end