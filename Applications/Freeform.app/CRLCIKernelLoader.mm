@interface CRLCIKernelLoader
+ (id)loadKernelWithMetalName:(id)name legacyName:(id)legacyName;
+ (id)p_loadLegacyKernelWithName:(id)name;
+ (id)p_loadMetalKernelWithName:(id)name;
@end

@implementation CRLCIKernelLoader

+ (id)loadKernelWithMetalName:(id)name legacyName:(id)legacyName
{
  nameCopy = name;
  legacyNameCopy = legacyName;
  v8 = +[CRLCapabilities currentCapabilities];
  if (([v8 isMetalCapable] & 1) == 0)
  {

LABEL_14:
    v13 = [self p_loadLegacyKernelWithName:legacyNameCopy];
    if (!v13)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101391DA0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101391DB4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101391E44();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v18);
      }

      v15 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCIKernelLoader loadKernelWithMetalName:legacyName:]");
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:30 isFatal:0 description:"Unable to load legacy CIKernel with name: %{public}@", legacyNameCopy];
      goto LABEL_25;
    }

LABEL_15:
    v17 = v13;
    goto LABEL_26;
  }

  v9 = +[CRLCapabilities currentCapabilities];
  v10 = sub_10016BB74();
  v11 = [v9 metalCapabilitiesForDevice:v10];
  isCoreImageMetalCapable = [v11 isCoreImageMetalCapable];

  if (!isCoreImageMetalCapable)
  {
    goto LABEL_14;
  }

  v13 = [self p_loadMetalKernelWithName:nameCopy];
  if (v13)
  {
    goto LABEL_15;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101391E6C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101391E80();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101391F10();
  }

  v14 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v14);
  }

  v15 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCIKernelLoader loadKernelWithMetalName:legacyName:]");
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
  [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:27 isFatal:0 description:"Unable to load Metal CIKernel with name: %{public}@", nameCopy];
LABEL_25:

  v17 = 0;
LABEL_26:

  return v17;
}

+ (id)p_loadMetalKernelWithName:(id)name
{
  nameCopy = name;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  p_info = CRLiOSMultiSelectGestureRecognizer.info;
  v6 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101391F38();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101391F4C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101391FE0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCIKernelLoader p_loadMetalKernelWithName:]");
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:40 isFatal:0 description:"invalid nil value for '%{public}s'", "tsdBundle"];
  }

  v10 = [v4 URLForResource:@"coreimage" withExtension:@"metallib"];
  if (!v10)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101392008();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392030();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013920C4();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCIKernelLoader p_loadMetalKernelWithName:]");
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:42 isFatal:0 description:"invalid nil value for '%{public}s'", "metalLibraryURL"];
  }

  v14 = [NSData dataWithContentsOfURL:v10];
  if (!v14)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101392220();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392248();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013922DC();
    }

    v29 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v29);
    }

    v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCIKernelLoader p_loadMetalKernelWithName:]");
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v23 lineNumber:44 isFatal:0 description:"invalid nil value for '%{public}s'", "metalLibraryData"];
    v15 = 0;
    goto LABEL_51;
  }

  v39 = 0;
  v15 = [CIKernel kernelWithFunctionName:nameCopy fromMetalLibraryData:v14 error:&v39];
  v16 = v39;
  v38 = nameCopy;
  if (!v15)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013920EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392114();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013921A8();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCIKernelLoader p_loadMetalKernelWithName:]");
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:48 isFatal:0 description:"invalid nil value for '%{public}s'", "kernelToReturn"];

    v6 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    p_info = CRLiOSMultiSelectGestureRecognizer.info;

    nameCopy = v38;
  }

  if (v16)
  {
    v37 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013921D0();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v31 = v20;
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      domain = [v16 domain];
      code = [v16 code];
      *buf = 67111170;
      v41 = v37;
      v42 = 2082;
      v43 = "+[CRLCIKernelLoader p_loadMetalKernelWithName:]";
      v44 = 2082;
      v45 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m";
      v46 = 1024;
      v47 = 49;
      v48 = 2112;
      v49 = v38;
      v50 = 2114;
      v51 = v33;
      v52 = 2114;
      v53 = domain;
      v54 = 2048;
      v55 = code;
      v56 = 2112;
      v57 = v16;

      v6 = &_s10Foundation9IndexPathVSHAAMc_ptr;
      p_info = (CRLiOSMultiSelectGestureRecognizer + 32);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013921F8();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v21);
    }

    v22 = p_info + 206;
    v23 = [v6[101] stringWithUTF8String:"+[CRLCIKernelLoader p_loadMetalKernelWithName:]"];
    v24 = [v6[101] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    domain2 = [v16 domain];
    code2 = [v16 code];
    v28 = v22;
    nameCopy = v38;

LABEL_51:
  }

  return v15;
}

+ (id)p_loadLegacyKernelWithName:(id)name
{
  nameCopy = name;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101392304();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392318();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013923AC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCIKernelLoader p_loadLegacyKernelWithName:]");
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:60 isFatal:0 description:"invalid nil value for '%{public}s'", "tsdBundle"];
  }

  v9 = [v4 URLForResource:nameCopy withExtension:@"cikernel"];
  if (v9)
  {
    v41 = nameCopy;
    v42 = 0;
    v10 = [NSString stringWithContentsOfURL:v9 encoding:4 error:&v42];
    v11 = v42;
    v40 = v10;
    if (!v10)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013923D4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013923FC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101392490();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCIKernelLoader p_loadLegacyKernelWithName:]");
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:66 isFatal:0 description:"invalid nil value for '%{public}s'", "kernelCodeString"];

      v10 = 0;
    }

    if (v11)
    {
      v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013924B8();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v35 = v16;
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        domain = [v11 domain];
        code = [v11 code];
        *buf = 67111170;
        v44 = v15;
        v45 = 2082;
        v46 = "+[CRLCIKernelLoader p_loadLegacyKernelWithName:]";
        v5 = &_s10Foundation9IndexPathVSHAAMc_ptr;
        v47 = 2082;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m";
        v49 = 1024;
        v50 = 67;
        v51 = 2112;
        v52 = nameCopy;
        v53 = 2114;
        v54 = v37;
        v55 = 2114;
        v56 = domain;
        v57 = 2048;
        v58 = code;
        v59 = 2112;
        v60 = v11;
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013924E0();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v17);
      }

      v18 = [v5[101] stringWithUTF8String:"+[CRLCIKernelLoader p_loadLegacyKernelWithName:]"];
      v19 = [v5[101] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      [v11 domain];
      v23 = v22 = v5;

      v5 = v22;
      v10 = v40;
    }

    if (v10)
    {
      v24 = [CIKernel kernelsWithString:v10];
      if ([v24 count] != 1)
      {
        v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101392508();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101392530(v25);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013925F0();
        }

        v26 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v26);
        }

        v27 = [v5[101] stringWithUTF8String:"+[CRLCIKernelLoader p_loadLegacyKernelWithName:]"];
        v28 = [v5[101] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
        [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:74 isFatal:0 description:"expected equality between %{public}s and %{public}s", "kernelsFromString.count", "1U"];
      }

      firstObject = [v24 firstObject];
      nameCopy = v41;
      if (!firstObject)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101392618();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101392640();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013926D4();
        }

        v30 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v30);
        }

        v31 = [v5[101] stringWithUTF8String:"+[CRLCIKernelLoader p_loadLegacyKernelWithName:]"];
        v32 = [v5[101] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
        [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:76 isFatal:0 description:"invalid nil value for '%{public}s'", "kernelToReturn"];

        nameCopy = v41;
      }

      v10 = v40;
    }

    else
    {
      firstObject = 0;
      nameCopy = v41;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013926FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392724();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013927B8();
    }

    v33 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v33);
    }

    v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCIKernelLoader p_loadLegacyKernelWithName:]");
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCIKernelLoader.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v10 lineNumber:62 isFatal:0 description:"invalid nil value for '%{public}s'", "kernelURL"];
    firstObject = 0;
  }

  return firstObject;
}

@end