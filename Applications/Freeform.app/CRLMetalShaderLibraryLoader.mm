@interface CRLMetalShaderLibraryLoader
+ (id)loadDefaultLibraryWithDevice:(id)device;
+ (id)loadLibraryWithDevice:(id)device bundle:(id)bundle;
@end

@implementation CRLMetalShaderLibraryLoader

+ (id)loadDefaultLibraryWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [NSBundle bundleForClass:self];
  v6 = [self loadLibraryWithDevice:deviceCopy bundle:v5];

  return v6;
}

+ (id)loadLibraryWithDevice:(id)device bundle:(id)bundle
{
  deviceCopy = device;
  bundleCopy = bundle;
  v7 = bundleCopy;
  if (!deviceCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101344DB4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101344DC8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101344E58();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShaderLibraryLoader loadLibraryWithDevice:bundle:]");
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    v14 = "Can't initialize shader library with nil device.";
    v15 = v9;
    v16 = v11;
    v17 = 34;
    goto LABEL_31;
  }

  if (!bundleCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101344CE8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101344CFC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101344D8C();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v18);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShaderLibraryLoader loadLibraryWithDevice:bundle:]");
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    v14 = "Can't initialize shader library with nil bundle.";
    v15 = v9;
    v16 = v11;
    v17 = 39;
LABEL_31:
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:v17 isFatal:0 description:v14];
    v8 = 0;
    goto LABEL_32;
  }

  v20 = 0;
  v8 = [deviceCopy newDefaultLibraryWithBundle:bundleCopy error:&v20];
  v9 = v20;
  if (v8)
  {
    goto LABEL_33;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101344C10();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101344C38();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101344CC0();
  }

  v10 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v10);
  }

  v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShaderLibraryLoader loadLibraryWithDevice:bundle:]");
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:45 isFatal:0 description:"Failed to create library, error %@", v9];

LABEL_32:
LABEL_33:

  return v8;
}

@end