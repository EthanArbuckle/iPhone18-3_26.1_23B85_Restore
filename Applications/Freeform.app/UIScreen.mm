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
  block[2] = sub_100488038;
  block[3] = &unk_10183B690;
  block[4] = self;
  if (qword_101A35040 != -1)
  {
    dispatch_once(&qword_101A35040, block);
  }

  return qword_101A35038;
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
        if (qword_101AD5A10 != -1)
        {
          sub_10137D6C0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10137D6D4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10137D75C();
        }

        v8 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v8);
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
    if (qword_101AD5A10 != -1)
    {
      sub_10137D784();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137D798();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137D820();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
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
    if (qword_101AD5A10 != -1)
    {
      sub_10137D848();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137D85C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137D8E4();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
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
        if (qword_101AD5A10 != -1)
        {
          sub_10137D90C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10137D920();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10137D9A8();
        }

        v15 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v15);
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
    if (qword_101AD5A10 != -1)
    {
      sub_10137D9D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137D9E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137DA6C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
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
  if (qword_101A35050 != -1)
  {
    sub_10137DA94();
  }

  return byte_101A35048;
}

+ (BOOL)crl_screenClassPhoneUISmallOrRegularZoom
{
  if (qword_101A35060 != -1)
  {
    sub_10137DAA8();
  }

  return byte_101A35058;
}

+ (double)crl_screenZoomScale
{
  if (qword_101A35068 != -1)
  {
    sub_10137DABC();
  }

  return *&qword_1019F0840;
}

+ (BOOL)crl_pad1080H
{
  if (qword_101A35078 != -1)
  {
    sub_10137DAD0();
  }

  return byte_101A35070;
}

+ (BOOL)crl_pad1112H
{
  if (qword_101A35088 != -1)
  {
    sub_10137DAE4();
  }

  return byte_101A35080;
}

+ (BOOL)crl_pad1180H
{
  if (qword_101A35098 != -1)
  {
    sub_10137DAF8();
  }

  return byte_101A35090;
}

+ (BOOL)crl_pad1194H
{
  if (qword_101A350A8 != -1)
  {
    sub_10137DB0C();
  }

  return byte_101A350A0;
}

+ (BOOL)crl_pad1366H
{
  if (qword_101A350B8 != -1)
  {
    sub_10137DB20();
  }

  return byte_101A350B0;
}

+ (BOOL)crl_pad1366HOrLarger
{
  if (qword_101A350C8 != -1)
  {
    sub_10137DB34();
  }

  return byte_101A350C0;
}

+ (BOOL)crl_phoneUI568H
{
  if (qword_101A350D8 != -1)
  {
    sub_10137DB48();
  }

  return byte_101A350D0;
}

+ (BOOL)crl_phoneUI568HOrSmaller
{
  if (qword_101A350E8 != -1)
  {
    sub_10137DB5C();
  }

  return byte_101A350E0;
}

+ (BOOL)crl_phoneUI667H
{
  if (qword_101A350F8 != -1)
  {
    sub_10137DB70();
  }

  return byte_101A350F0;
}

+ (BOOL)crl_phoneUI667HOrSmaller
{
  if (qword_101A35108 != -1)
  {
    sub_10137DB84();
  }

  return byte_101A35100;
}

+ (BOOL)crl_phoneUI693H
{
  if (qword_101A35118 != -1)
  {
    sub_10137DB98();
  }

  return byte_101A35110;
}

+ (BOOL)crl_phoneUI736H
{
  if (qword_101A35128 != -1)
  {
    sub_10137DBAC();
  }

  return byte_101A35120;
}

+ (BOOL)crl_phoneUI812H
{
  if (qword_101A35138 != -1)
  {
    sub_10137DBC0();
  }

  return byte_101A35130;
}

+ (BOOL)crl_phoneUI812HOrLarger
{
  if (qword_101A35148 != -1)
  {
    sub_10137DBD4();
  }

  return byte_101A35140;
}

+ (BOOL)crl_phoneUI844H
{
  if (qword_101A35158 != -1)
  {
    sub_10137DBE8();
  }

  return byte_101A35150;
}

+ (BOOL)crl_phoneUI896H
{
  if (qword_101A35168 != -1)
  {
    sub_10137DBFC();
  }

  return byte_101A35160;
}

+ (BOOL)crl_phoneUI926H
{
  if (qword_101A35178 != -1)
  {
    sub_10137DC10();
  }

  return byte_101A35170;
}

+ (BOOL)crl_isHorizontallyCompactOnLandscape
{
  if ([self crl_phoneUI667HOrSmaller])
  {
    return 1;
  }

  return [self crl_phoneUI812H];
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
  if (*&qword_1019F0848 >= 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137DC24();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137DC38();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137DCCC();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v2);
    }

    v3 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIScreen(CRLAdditions) crl_resetScreenScaleCache]");
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIScreen_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:327 isFatal:0 description:"No one should look at the screen scale before the application has finished launching, because the value isn't ready yet and may change! To debug, break in UIScreen.crl_screenScale and re-launch the app."];
  }

  qword_1019F0848 = 0xBFF0000000000000;
}

+ (double)crl_screenScale
{
  result = *&qword_1019F0848;
  if (*&qword_1019F0848 < 0.0)
  {
    v3 = +[UIScreen mainScreen];
    [v3 scale];
    qword_1019F0848 = v4;

    return *&qword_1019F0848;
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
    if (qword_101AD5A10 != -1)
    {
      sub_10137DCF4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137DD08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137DD9C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIScreen(CRLAdditions) crl_is3xScreenScale]");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIScreen_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:347 isFatal:0 description:"Unsupported screen scale."];
  }

  return v3 < 0.00000011920929;
}

@end