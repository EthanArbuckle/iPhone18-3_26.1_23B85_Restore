@interface AXAuditPluginPEP
- (AXAuditPluginPEP)init;
- (CGRect)deviceDisplayBounds;
- (CGRect)deviceNativeDisplayBounds;
- (double)deviceDisplayScale;
- (double)deviceNativeDisplayScale;
- (double)deviceRotatianInRadians;
- (id)getScreenshotData;
- (id)screenshotInfoForTransportWithFrame:(CGRect)frame;
- (void)_registerAuditElementTransportInfo;
- (void)_registerPointTransportInfo;
- (void)_registerRangeTransportInfo;
- (void)_registerRectTransportInfo;
- (void)_registerSizeTransportInfo;
@end

@implementation AXAuditPluginPEP

- (AXAuditPluginPEP)init
{
  v5.receiver = self;
  v5.super_class = AXAuditPluginPEP;
  v2 = [(AXAuditPluginPEP *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXAuditPluginPEP *)v2 _registerRectTransportInfo];
    [(AXAuditPluginPEP *)v3 _registerPointTransportInfo];
    [(AXAuditPluginPEP *)v3 _registerSizeTransportInfo];
    [(AXAuditPluginPEP *)v3 _registerRangeTransportInfo];
    [(AXAuditPluginPEP *)v3 _registerAuditElementTransportInfo];
  }

  return v3;
}

- (void)_registerAuditElementTransportInfo
{
  v3 = +[AXAuditObjectTransportManager sharedManager];
  v2 = objc_alloc_init(AXAuditObjectTransportInfoMasquerade);
  [v2 setMasqueradeAsClass:objc_opt_class()];
  [v2 setCanEncodeObjectBlock:&stru_10878];
  [v2 setCreateMasqueradeObjectBlock:&stru_108B8];
  [v2 setCreateLocalObjectWithMasqueradeObjectBlock:0];
  [v3 registerTransportInfoMasquerade:v2 encodeOnly:1];
}

- (void)_registerRangeTransportInfo
{
  v3 = +[AXAuditObjectTransportManager sharedManager];
  v2 = objc_alloc_init(AXAuditObjectTransportInfoMasquerade);
  [v2 setMasqueradeAsClass:objc_opt_class()];
  [v2 setCanEncodeObjectBlock:&stru_108D8];
  [v2 setCreateMasqueradeObjectBlock:&stru_10918];
  [v2 setCreateLocalObjectWithMasqueradeObjectBlock:&stru_10958];
  [v3 registerTransportInfoMasquerade:v2 encodeOnly:0];
}

- (void)_registerSizeTransportInfo
{
  v3 = +[AXAuditObjectTransportManager sharedManager];
  v2 = objc_alloc_init(AXAuditObjectTransportInfoMasquerade);
  [v2 setMasqueradeAsClass:objc_opt_class()];
  [v2 setCanEncodeObjectBlock:&stru_10978];
  [v2 setCreateMasqueradeObjectBlock:&stru_109B8];
  [v2 setCreateLocalObjectWithMasqueradeObjectBlock:&stru_109F8];
  [v3 registerTransportInfoMasquerade:v2 encodeOnly:0];
}

- (void)_registerPointTransportInfo
{
  v3 = +[AXAuditObjectTransportManager sharedManager];
  v2 = objc_alloc_init(AXAuditObjectTransportInfoMasquerade);
  [v2 setMasqueradeAsClass:objc_opt_class()];
  [v2 setCanEncodeObjectBlock:&stru_10A18];
  [v2 setCreateMasqueradeObjectBlock:&stru_10A58];
  [v2 setCreateLocalObjectWithMasqueradeObjectBlock:&stru_10A98];
  [v3 registerTransportInfoMasquerade:v2 encodeOnly:0];
}

- (void)_registerRectTransportInfo
{
  v3 = +[AXAuditObjectTransportManager sharedManager];
  v2 = objc_alloc_init(AXAuditObjectTransportInfoMasquerade);
  [v2 setMasqueradeAsClass:objc_opt_class()];
  [v2 setCanEncodeObjectBlock:&stru_10AB8];
  [v2 setCreateMasqueradeObjectBlock:&stru_10AF8];
  [v2 setCreateLocalObjectWithMasqueradeObjectBlock:&stru_10B38];
  [v3 registerTransportInfoMasquerade:v2 encodeOnly:0];
}

- (id)screenshotInfoForTransportWithFrame:(CGRect)frame
{
  v4 = [(AXAuditPluginPEP *)self getScreenshotData:frame.origin.x];
  [(AXAuditPluginPEP *)self deviceRotatianInRadians];
  v6 = v5;
  [(AXAuditPluginPEP *)self deviceNativeDisplayScale];
  v8 = v7;
  [(AXAuditPluginPEP *)self deviceDisplayBounds];
  v9 = [NSValue valueWithRect:?];
  v10 = kXDMScreenshotImageData;
  v11 = kXDMScreenshotShouldFlipOutline;
  v12 = [NSNumber numberWithDouble:v6];
  v13 = kXDMScreenshotRotation;
  v14 = [NSNumber numberWithDouble:v8];
  v15 = [NSDictionary dictionaryWithObjectsAndKeys:v4, v10, &__kCFBooleanTrue, v11, v12, v13, v14, kXDMScreenshotResolutionMultiplier, v9, kXDMScreenshotDisplayBounds, 0];

  return v15;
}

- (id)getScreenshotData
{
  v2 = _UICreateScreenUIImageWithRotation();
  cGImage = [v2 CGImage];

  if (cGImage)
  {
    CFRetain(cGImage);
    Mutable = CFDataCreateMutable(0, 0);
    v5 = CGImageDestinationCreateWithData(Mutable, @"public.png", 1uLL, 0);
    if (v5)
    {
      v6 = v5;
      v7 = qword_14E30;
      if (!qword_14E30)
      {
        qword_14E30 = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        valuePtr = 1061997773;
        v8 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        CFDictionarySetValue(qword_14E30, kCGImageDestinationLossyCompressionQuality, v8);
        CFRelease(v8);
        v7 = qword_14E30;
      }

      CGImageDestinationSetProperties(v6, v7);
      CGImageDestinationAddImage(v6, cGImage, 0);
      CGImageDestinationFinalize(v6);
      CFRelease(v6);
    }

    CFRelease(cGImage);
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

- (double)deviceDisplayScale
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = v3;

  return v4;
}

- (double)deviceNativeDisplayScale
{
  v2 = +[UIScreen mainScreen];
  [v2 nativeScale];
  v4 = v3;

  return v4;
}

- (CGRect)deviceDisplayBounds
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)deviceNativeDisplayBounds
{
  v2 = +[UIScreen mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)deviceRotatianInRadians
{
  v2 = objc_alloc_init(FBSOrientationObserver);
  activeInterfaceOrientation = [v2 activeInterfaceOrientation];
  [v2 invalidate];
  v4 = 0.0;
  if (activeInterfaceOrientation != (&dword_0 + 1))
  {
    if (activeInterfaceOrientation == (&dword_0 + 3))
    {
      v4 = 1.57079633;
    }

    else if (activeInterfaceOrientation == &dword_4)
    {
      v4 = -1.57079633;
    }

    else if (activeInterfaceOrientation == (&dword_0 + 2))
    {
      v4 = 3.14159265;
    }

    else
    {
      v4 = 0.0;
    }
  }

  v5 = MGCopyAnswer();
  if (v5)
  {
    v6 = v5;
    if (CFStringCompare(v5, @"AppleTV", 1uLL))
    {
      v7 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v7 userInterfaceIdiom];

      if (userInterfaceIdiom == &dword_0 + 1)
      {
        v4 = 0.0;
      }

      if (activeInterfaceOrientation != (&dword_0 + 1) && userInterfaceIdiom == &dword_0 + 1)
      {
        if (activeInterfaceOrientation == (&dword_0 + 3))
        {
          v4 = 1.57079633;
        }

        else if (activeInterfaceOrientation == &dword_4)
        {
          v4 = -1.57079633;
        }

        else if (activeInterfaceOrientation == (&dword_0 + 2))
        {
          v4 = 3.14159265;
        }

        else
        {
          v4 = 0.0;
        }
      }
    }

    CFRelease(v6);
  }

  return v4;
}

@end