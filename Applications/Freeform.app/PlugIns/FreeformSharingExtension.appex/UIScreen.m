@interface UIScreen
+ (BOOL)crl_deviceIsLandscape;
+ (BOOL)crl_is3xScreenScale;
+ (BOOL)crl_isHorizontallyCompactOnLandscape;
+ (BOOL)crl_pad1080H;
+ (BOOL)crl_pad1112H;
+ (BOOL)crl_pad1180H;
+ (BOOL)crl_pad1194H;
+ (BOOL)crl_pad1366H;
+ (BOOL)crl_pad1366HOrLarger;
+ (BOOL)crl_phoneUI568H;
+ (BOOL)crl_phoneUI568HOrSmaller;
+ (BOOL)crl_phoneUI667H;
+ (BOOL)crl_phoneUI667HOrSmaller;
+ (BOOL)crl_phoneUI693H;
+ (BOOL)crl_phoneUI736H;
+ (BOOL)crl_phoneUI812H;
+ (BOOL)crl_phoneUI812HOrLarger;
+ (BOOL)crl_phoneUI844H;
+ (BOOL)crl_phoneUI896H;
+ (BOOL)crl_phoneUI926H;
+ (BOOL)crl_screenClassPhoneUIRegularOrLarge;
+ (BOOL)crl_screenClassPhoneUISmallOrRegularZoom;
+ (double)crl_expectedScreenScale;
+ (double)crl_screenScale;
+ (double)crl_screenZoomScale;
+ (int64_t)crl_screenClass;
+ (int64_t)p_crl_uncachedScreenClass;
+ (void)crl_resetScreenScaleCache;
@end

@implementation UIScreen

+ (int64_t)crl_screenClass
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000129FC;
  block[3] = &unk_1000A6BD8;
  block[4] = a1;
  if (qword_1000B4BD0 != -1)
  {
    dispatch_once(&qword_1000B4BD0, block);
  }

  return qword_1000B4BC8;
}

+ (int64_t)p_crl_uncachedScreenClass
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  if (!+[UIDevice crl_phoneUI])
  {
    return 0;
  }

  if (v4 < v6)
  {
    v4 = v6;
  }

  if (v4 <= 667.0)
  {
    if (v4 != 557.0)
    {
      v7 = 1;
      if (v4 == 568.0)
      {
        return v7;
      }

      if (fabs(v4 + -557.0) < 0.000556999999)
      {
        return v7;
      }

      v7 = 1;
      if (v4 == 667.0 || fabs(v4 + -568.0) < 0.000567999999)
      {
        return v7;
      }

      if (fabs(v4 + -667.0) >= 0.000666999998)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (CRLAssertCat_init_token != -1)
        {
          sub_10007D164();
        }

        if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_10007D178();
        }

        if (CRLAssertCat_init_token != -1)
        {
          sub_10007D200();
        }

        v8 = CRLAssertCat_log_t;
        if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_10007BC70(v8);
        }

        v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIScreen(CRLAdditions) p_crl_uncachedScreenClass]");
        v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIScreen_CRLAdditions.m"];
        [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:34 isFatal:0 description:"New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUISmall.", *&v4];
        v7 = 1;
        goto LABEL_65;
      }
    }

    return 1;
  }

  if (v4 <= 693.0)
  {
    if (v4 == 693.0 || fabs(v4 + -693.0) < 0.000692999998)
    {
      return 2;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007D228();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007D23C();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007D2C4();
    }

    v11 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BC70(v11);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIScreen(CRLAdditions) p_crl_uncachedScreenClass]");
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIScreen_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:37 isFatal:0 description:"New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUIRegularZoom.", *&v4];
    v7 = 2;
    goto LABEL_65;
  }

  if (v4 <= 736.0)
  {
    if (v4 == 736.0 || fabs(v4 + -736.0) < 0.000735999998)
    {
      return 4;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007D2EC();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007D300();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007D388();
    }

    v13 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BC70(v13);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIScreen(CRLAdditions) p_crl_uncachedScreenClass]");
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIScreen_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:40 isFatal:0 description:"New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUIRegularPlus.", *&v4];
    v7 = 4;
    goto LABEL_65;
  }

  if (v4 <= 844.0)
  {
    if (v4 != 812.0)
    {
      v7 = 3;
      if (v4 == 844.0 || fabs(v4 + -812.0) < 0.000811999998)
      {
        return v7;
      }

      if (fabs(v4 + -844.0) >= 0.000843999998)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (CRLAssertCat_init_token != -1)
        {
          sub_10007D3B0();
        }

        if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_10007D3C4();
        }

        if (CRLAssertCat_init_token != -1)
        {
          sub_10007D44C();
        }

        v15 = CRLAssertCat_log_t;
        if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_10007BC70(v15);
        }

        v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIScreen(CRLAdditions) p_crl_uncachedScreenClass]");
        v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIScreen_CRLAdditions.m"];
        [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:43 isFatal:0 description:"New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUIRegular.", *&v4];
        v7 = 3;
        goto LABEL_65;
      }
    }

    return 3;
  }

  if (v4 == 896.0)
  {
    return 5;
  }

  v7 = 5;
  if (v4 != 926.0 && fabs(v4 + -896.0) >= 0.000895999998)
  {
    if (fabs(v4 + -926.0) < 0.000925999998)
    {
      return 5;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007D474();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007D488();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007D510();
    }

    v12 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BC70(v12);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIScreen(CRLAdditions) p_crl_uncachedScreenClass]");
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIScreen_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:46 isFatal:0 description:"New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUILarge.", *&v4];
    v7 = 5;
LABEL_65:
  }

  return v7;
}

+ (BOOL)crl_screenClassPhoneUIRegularOrLarge
{
  if (qword_1000B4BE0 != -1)
  {
    sub_10007D538();
  }

  return byte_1000B4BD8;
}

+ (BOOL)crl_screenClassPhoneUISmallOrRegularZoom
{
  if (qword_1000B4BF0 != -1)
  {
    sub_10007D54C();
  }

  return byte_1000B4BE8;
}

+ (double)crl_screenZoomScale
{
  if (qword_1000B4BF8 != -1)
  {
    sub_10007D560();
  }

  return *&qword_1000B1B00;
}

+ (BOOL)crl_pad1080H
{
  if (qword_1000B4C08 != -1)
  {
    sub_10007D574();
  }

  return byte_1000B4C00;
}

+ (BOOL)crl_pad1112H
{
  if (qword_1000B4C18 != -1)
  {
    sub_10007D588();
  }

  return byte_1000B4C10;
}

+ (BOOL)crl_pad1180H
{
  if (qword_1000B4C28 != -1)
  {
    sub_10007D59C();
  }

  return byte_1000B4C20;
}

+ (BOOL)crl_pad1194H
{
  if (qword_1000B4C38 != -1)
  {
    sub_10007D5B0();
  }

  return byte_1000B4C30;
}

+ (BOOL)crl_pad1366H
{
  if (qword_1000B4C48 != -1)
  {
    sub_10007D5C4();
  }

  return byte_1000B4C40;
}

+ (BOOL)crl_pad1366HOrLarger
{
  if (qword_1000B4C58 != -1)
  {
    sub_10007D5D8();
  }

  return byte_1000B4C50;
}

+ (BOOL)crl_phoneUI568H
{
  if (qword_1000B4C68 != -1)
  {
    sub_10007D5EC();
  }

  return byte_1000B4C60;
}

+ (BOOL)crl_phoneUI568HOrSmaller
{
  if (qword_1000B4C78 != -1)
  {
    sub_10007D600();
  }

  return byte_1000B4C70;
}

+ (BOOL)crl_phoneUI667H
{
  if (qword_1000B4C88 != -1)
  {
    sub_10007D614();
  }

  return byte_1000B4C80;
}

+ (BOOL)crl_phoneUI667HOrSmaller
{
  if (qword_1000B4C98 != -1)
  {
    sub_10007D628();
  }

  return byte_1000B4C90;
}

+ (BOOL)crl_phoneUI693H
{
  if (qword_1000B4CA8 != -1)
  {
    sub_10007D63C();
  }

  return byte_1000B4CA0;
}

+ (BOOL)crl_phoneUI736H
{
  if (qword_1000B4CB8 != -1)
  {
    sub_10007D650();
  }

  return byte_1000B4CB0;
}

+ (BOOL)crl_phoneUI812H
{
  if (qword_1000B4CC8 != -1)
  {
    sub_10007D664();
  }

  return byte_1000B4CC0;
}

+ (BOOL)crl_phoneUI812HOrLarger
{
  if (qword_1000B4CD8 != -1)
  {
    sub_10007D678();
  }

  return byte_1000B4CD0;
}

+ (BOOL)crl_phoneUI844H
{
  if (qword_1000B4CE8 != -1)
  {
    sub_10007D68C();
  }

  return byte_1000B4CE0;
}

+ (BOOL)crl_phoneUI896H
{
  if (qword_1000B4CF8 != -1)
  {
    sub_10007D6A0();
  }

  return byte_1000B4CF0;
}

+ (BOOL)crl_phoneUI926H
{
  if (qword_1000B4D08 != -1)
  {
    sub_10007D6B4();
  }

  return byte_1000B4D00;
}

+ (BOOL)crl_isHorizontallyCompactOnLandscape
{
  if ([a1 crl_phoneUI667HOrSmaller])
  {
    return 1;
  }

  return [a1 crl_phoneUI812H];
}

+ (BOOL)crl_deviceIsLandscape
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  return v4 > v6;
}

+ (double)crl_expectedScreenScale
{
  +[UIScreen crl_screenScale];
  v3 = v2;
  if (v2 > 2.0 && +[UIScreen crl_phoneUI667H])
  {
    return 2.0;
  }

  return v3;
}

+ (void)crl_resetScreenScaleCache
{
  if (*&qword_1000B1B08 >= 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007D6C8();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007D6DC();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007D770();
    }

    v2 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BC70(v2);
    }

    v3 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIScreen(CRLAdditions) crl_resetScreenScaleCache]");
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIScreen_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:327 isFatal:0 description:"No one should look at the screen scale before the application has finished launching, because the value isn't ready yet and may change! To debug, break in UIScreen.crl_screenScale and re-launch the app."];
  }

  qword_1000B1B08 = 0xBFF0000000000000;
}

+ (double)crl_screenScale
{
  result = *&qword_1000B1B08;
  if (*&qword_1000B1B08 < 0.0)
  {
    v3 = +[UIScreen mainScreen];
    [v3 scale];
    qword_1000B1B08 = v4;

    return *&qword_1000B1B08;
  }

  return result;
}

+ (BOOL)crl_is3xScreenScale
{
  +[UIScreen crl_screenScale];
  v3 = vabdd_f64(3.0, v2);
  if (vabdd_f64(2.0, v2) >= 0.00000011920929 && v3 >= 0.00000011920929)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007D798();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007D7AC();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007D840();
    }

    v5 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BC70(v5);
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIScreen(CRLAdditions) crl_is3xScreenScale]");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIScreen_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:347 isFatal:0 description:"Unsupported screen scale."];
  }

  return v3 < 0.00000011920929;
}

@end