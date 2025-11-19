@interface FRMacros
+ (BOOL)disableAllAds;
+ (BOOL)iPad;
+ (BOOL)iPadPro;
+ (BOOL)iPhone;
+ (BOOL)iPhone4OrLess;
+ (BOOL)iPhone5;
+ (BOOL)iPhone5Landscape;
+ (BOOL)iPhone5OrLess;
+ (BOOL)iPhone6;
+ (BOOL)iPhone6OrLess;
+ (BOOL)iPhone6P;
+ (BOOL)iPhone6POrLess;
+ (BOOL)iPhoneFancyAF;
+ (BOOL)isOrbDevice;
+ (BOOL)isUIAutomationRunning;
+ (BOOL)portrait;
+ (BOOL)retina;
+ (BOOL)splitScreen;
+ (BOOL)splitScreenEqual;
+ (BOOL)splitScreenOneThird;
+ (BOOL)splitScreenThreeQuarters;
+ (BOOL)splitScreenTwoThirds;
+ (BOOL)viewIsCompact:(id)a3;
+ (BOOL)windowIsLandscape;
+ (double)deviceScreenScaleFromPotentialBackgroundThread;
+ (double)maxScreenSide;
+ (double)minScreenSide;
+ (id)imageFromNewGraphicsContextWithSize:(CGSize)a3 opaque:(BOOL)a4 forceSRGB:(BOOL)a5 scale:(double)a6 contextBlock:(id)a7;
+ (void)useManagedContextWithSize:(CGSize)a3 opaque:(BOOL)a4 forceSRGB:(BOOL)a5 scale:(double)a6 contextBlock:(id)a7;
@end

@implementation FRMacros

+ (BOOL)iPad
{
  if (qword_1000E61D8 != -1)
  {
    sub_100005C50();
  }

  return byte_1000E61E0;
}

+ (BOOL)iPhone
{
  if (qword_1000E61E8 != -1)
  {
    sub_100008A98();
  }

  return byte_1000E61F0;
}

+ (void)useManagedContextWithSize:(CGSize)a3 opaque:(BOOL)a4 forceSRGB:(BOOL)a5 scale:(double)a6 contextBlock:(id)a7
{
  v8 = a5;
  v9 = a4;
  height = a3.height;
  width = a3.width;
  v12 = a7;
  v13 = +[UIGraphicsImageRendererFormat preferredFormat];
  if (vabdd_f64(0.0, a6) < 0.00999999978)
  {
    +[FRMacros deviceScreenScaleFromPotentialBackgroundThread];
    a6 = v14;
  }

  [v13 setScale:a6];
  if (v8)
  {
    [v13 setPreferredRange:2];
  }

  [v13 setOpaque:v9];
  v15 = objc_autoreleasePoolPush();
  v16 = [[UIGraphicsImageRenderer alloc] initWithSize:v13 format:{width, height}];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000420D0;
  v19[3] = &unk_1000C4858;
  v17 = v12;
  v20 = v17;
  v18 = [v16 imageWithActions:v19];

  objc_autoreleasePoolPop(v15);
}

+ (id)imageFromNewGraphicsContextWithSize:(CGSize)a3 opaque:(BOOL)a4 forceSRGB:(BOOL)a5 scale:(double)a6 contextBlock:(id)a7
{
  v8 = a5;
  v9 = a4;
  height = a3.height;
  width = a3.width;
  v12 = a7;
  v13 = +[UIGraphicsImageRendererFormat preferredFormat];
  if (vabdd_f64(0.0, a6) < 0.00999999978)
  {
    +[FRMacros deviceScreenScaleFromPotentialBackgroundThread];
    a6 = v14;
  }

  [v13 setScale:a6];
  [v13 setOpaque:v9];
  if (v8)
  {
    [v13 setPreferredRange:2];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [[UIGraphicsImageRenderer alloc] initWithSize:v13 format:{width, height}];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000422A4;
  v20[3] = &unk_1000C4858;
  v17 = v12;
  v21 = v17;
  v18 = [v16 imageWithActions:v20];

  objc_autoreleasePoolPop(v15);

  return v18;
}

+ (BOOL)viewIsCompact:(id)a3
{
  v3 = [a3 traitCollection];
  v4 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
  v5 = [v3 containsTraitsInCollection:v4];

  return v5;
}

+ (BOOL)windowIsLandscape
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 key_window];

  [v3 frame];
  v5 = v4;
  [v3 frame];
  LOBYTE(v2) = v5 > v6;

  return v2;
}

+ (BOOL)disableAllAds
{
  v2 = NFInternalBuild();
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"disable-all-ads"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (double)maxScreenSide
{
  if (qword_1000E61A8 != -1)
  {
    sub_1000707CC();
  }

  return *&qword_1000E61B0;
}

+ (double)minScreenSide
{
  if (qword_1000E61B8 != -1)
  {
    sub_1000707E0();
  }

  return *&qword_1000E61C0;
}

+ (BOOL)splitScreen
{
  +[NSThread isMainThread];
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 key_window];

  v4 = +[UIScreen mainScreen];
  [v3 frame];
  Width = CGRectGetWidth(v8);
  [v4 bounds];
  v6 = Width != CGRectGetWidth(v9);

  return v6;
}

+ (BOOL)splitScreenEqual
{
  +[NSThread isMainThread];
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 key_window];

  v5 = +[UIScreen mainScreen];
  if ([a1 splitScreen])
  {
    [v4 frame];
    Width = CGRectGetWidth(v9);
    [v5 bounds];
    v7 = Width == CGRectGetWidth(v10) * 0.5 + -5.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)splitScreenOneThird
{
  +[NSThread isMainThread];
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 key_window];

  v5 = +[UIScreen mainScreen];
  if ([a1 splitScreen] && (objc_msgSend(a1, "splitScreenEqual") & 1) == 0)
  {
    [v4 frame];
    Width = CGRectGetWidth(v9);
    [v5 bounds];
    v6 = Width < CGRectGetWidth(v10) * 0.5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)splitScreenThreeQuarters
{
  +[NSThread isMainThread];
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 key_window];

  v5 = +[UIScreen mainScreen];
  if ([a1 splitScreen] && (objc_msgSend(a1, "portrait") & 1) == 0)
  {
    [v4 frame];
    Width = CGRectGetWidth(v9);
    [v5 bounds];
    v6 = Width > CGRectGetWidth(v10) * 0.5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)splitScreenTwoThirds
{
  +[NSThread isMainThread];
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 key_window];

  v5 = +[UIScreen mainScreen];
  if ([a1 splitScreen] && objc_msgSend(a1, "portrait"))
  {
    [v4 frame];
    Width = CGRectGetWidth(v9);
    [v5 bounds];
    v7 = Width > CGRectGetWidth(v10) * 0.5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)portrait
{
  +[NSThread isMainThread];
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 key_window];

  v4 = [v3 windowScene];
  v5 = [v4 interfaceOrientation];

  return (v5 - 1) < 2;
}

+ (BOOL)iPadPro
{
  if (qword_1000E61C8 != -1)
  {
    sub_1000707F4();
  }

  return byte_1000E61D0;
}

+ (BOOL)retina
{
  if (qword_1000E61F8 != -1)
  {
    sub_100070808();
  }

  return byte_1000E6200;
}

+ (BOOL)iPhone4OrLess
{
  if (qword_1000E6208 != -1)
  {
    sub_10007081C();
  }

  return byte_1000E6210;
}

+ (BOOL)iPhone5OrLess
{
  if (qword_1000E6218 != -1)
  {
    sub_100070830();
  }

  return byte_1000E6220;
}

+ (BOOL)iPhone5
{
  if (qword_1000E6228 != -1)
  {
    sub_100070844();
  }

  return byte_1000E6230;
}

+ (BOOL)iPhone5Landscape
{
  if (!+[FRMacros iPhone])
  {
    return 0;
  }

  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3 == 568.0;

  return v4;
}

+ (BOOL)iPhone6
{
  if (qword_1000E6238 != -1)
  {
    sub_100070858();
  }

  return byte_1000E6240;
}

+ (BOOL)iPhone6OrLess
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100042F1C;
  block[3] = &unk_1000C49B8;
  block[4] = a1;
  if (qword_1000E6248 != -1)
  {
    dispatch_once(&qword_1000E6248, block);
  }

  return byte_1000E6250;
}

+ (BOOL)iPhone6P
{
  if (qword_1000E6258 != -1)
  {
    sub_10007086C();
  }

  return byte_1000E6260;
}

+ (BOOL)iPhone6POrLess
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000430D4;
  block[3] = &unk_1000C49B8;
  block[4] = a1;
  if (qword_1000E6268 != -1)
  {
    dispatch_once(&qword_1000E6268, block);
  }

  return byte_1000E6270;
}

+ (BOOL)iPhoneFancyAF
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000431BC;
  block[3] = &unk_1000C49B8;
  block[4] = a1;
  if (qword_1000E6278 != -1)
  {
    dispatch_once(&qword_1000E6278, block);
  }

  return byte_1000E6280;
}

+ (BOOL)isOrbDevice
{
  if (qword_1000E6288 != -1)
  {
    sub_100070880();
  }

  return byte_1000E6281;
}

+ (BOOL)isUIAutomationRunning
{
  if (qword_1000E6298 != -1)
  {
    sub_100070894();
  }

  return byte_1000E6290;
}

+ (double)deviceScreenScaleFromPotentialBackgroundThread
{
  if (+[NSThread isMainThread])
  {
    v2 = +[UIScreen mainScreen];
    [v2 scale];
    v4 = v3;

    return v4;
  }

  else
  {
    if (qword_1000E62A8 != -1)
    {
      sub_1000708A8();
    }

    return *&qword_1000E62A0;
  }
}

@end