@interface CRLBrushStrokeLoader
+ (double)p_brushPixelScaleAt100Percent;
+ (id)p_allLoadableBrushStrokeNames;
+ (id)p_allStorageCaches;
+ (id)p_brushStrokeLoadQueue;
+ (id)p_cacheDirectory;
+ (id)p_storageCacheForCurrentThread;
+ (id)p_storagesByBrushName;
+ (id)storageForBrushStrokeNamed:(id)named;
+ (void)backgroundLoadAllBrushStrokes;
+ (void)p_clearOnDiskCache;
+ (void)p_loadBrushIfNeeded:(id)needed;
+ (void)p_loadImageForBrush:(id)brush intoStorage:(id)storage;
+ (void)p_loadLineEndTextureForBrush:(id)brush lineEnd:(id)end path:(CGPath *)path andBounds:(CGRect)bounds;
+ (void)p_loadLineEndsForBrush:(id)brush fromSVGDoc:(_xmlDoc *)doc intoStorage:(id)storage;
+ (void)p_loadSectionsForBrush:(id)brush fromSVGDoc:(_xmlDoc *)doc intoStorage:(id)storage;
@end

@implementation CRLBrushStrokeLoader

+ (void)backgroundLoadAllBrushStrokes
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [self p_allLoadableBrushStrokeNames];
  v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100017070;
        block[3] = &unk_10183B720;
        block[4] = v7;
        block[5] = self;
        v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
        v9 = +[CRLBrushStrokeLoader p_brushStrokeLoadQueue];
        dispatch_async(v9, v8);

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

+ (id)p_allLoadableBrushStrokeNames
{
  if (qword_101A34608 != -1)
  {
    sub_100016BC4();
  }

  v3 = qword_101A34600;

  return v3;
}

+ (id)p_brushStrokeLoadQueue
{
  if (qword_101A34628 != -1)
  {
    sub_100016DB0();
  }

  v3 = qword_101A34620;

  return v3;
}

+ (id)p_storagesByBrushName
{
  if (qword_101A34638 != -1)
  {
    sub_1000170C0();
  }

  v3 = qword_101A34630;

  return v3;
}

+ (id)p_cacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"Brushes"];

  v5 = +[NSFileManager defaultManager];
  [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  return v4;
}

+ (id)storageForBrushStrokeNamed:(id)named
{
  namedCopy = named;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100126230;
  v21 = sub_100126240;
  v22 = 0;
  p_storageCacheForCurrentThread = [self p_storageCacheForCurrentThread];
  v6 = [p_storageCacheForCurrentThread objectForKey:namedCopy];
  v7 = v18[5];
  v18[5] = v6;

  v8 = v18[5];
  if (!v8)
  {
    v9 = +[CRLBrushStrokeLoader p_brushStrokeLoadQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100126248;
    block[3] = &unk_10183B748;
    selfCopy = self;
    v10 = namedCopy;
    v14 = v10;
    v15 = &v17;
    dispatch_sync(v9, block);

    [p_storageCacheForCurrentThread setObject:v18[5] forKey:v10];
    v8 = v18[5];
  }

  v11 = v8;

  _Block_object_dispose(&v17, 8);

  return v11;
}

+ (id)p_storageCacheForCurrentThread
{
  v3 = +[NSThread currentThread];
  threadDictionary = [v3 threadDictionary];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100126230;
  v14 = sub_100126240;
  v15 = [threadDictionary objectForKeyedSubscript:@"CRLBrushStrokeLoaderStorageCache"];
  v5 = v11[5];
  if (!v5)
  {
    v6 = +[CRLBrushStrokeLoader p_brushStrokeLoadQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100126448;
    block[3] = &unk_10183B670;
    block[4] = threadDictionary;
    block[5] = &v10;
    block[6] = self;
    dispatch_sync(v6, block);

    v5 = v11[5];
  }

  v7 = v5;
  _Block_object_dispose(&v10, 8);

  return v7;
}

+ (id)p_allStorageCaches
{
  if (qword_101A34618 != -1)
  {
    sub_101319838();
  }

  v3 = qword_101A34610;

  return v3;
}

+ (double)p_brushPixelScaleAt100Percent
{
  +[UIScreen crl_screenScale];
  v3 = v2;
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  return fmax(v3 * sqrt(v6 * v8 / 786432.0), 1.0);
}

+ (void)p_loadBrushIfNeeded:(id)needed
{
  neededCopy = needed;
  p_storagesByBrushName = [self p_storagesByBrushName];
  if (![p_storagesByBrushName count])
  {
    v6 = +[CRLBrushStrokeLoader p_cacheDirectory];
    v7 = [v6 stringByAppendingString:@"/CRLBrushCacheVersion.txt"];
    v8 = [NSString stringWithContentsOfFile:v7 encoding:4 error:0];
    v9 = [NSString stringWithFormat:@"%ld", 17];
    if (!v8 || ([v8 isEqualToString:v9] & 1) == 0)
    {
      [self p_clearOnDiskCache];
      [v9 writeToFile:v7 atomically:0 encoding:4 error:0];
    }
  }

  v10 = [p_storagesByBrushName objectForKeyedSubscript:neededCopy];

  if (!v10)
  {
    v11 = objc_alloc_init(CRLMutableBrushStrokeStorage);
    v12 = [@"CRLBrush_" stringByAppendingString:neededCopy];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 pathForResource:v12 ofType:@"svg"];

    v15 = [NSData alloc];
    v16 = [NSURL crl_fileURLWithPath:v14];
    v17 = [v15 initWithContentsOfURL:v16 options:0 error:0];

    v18 = [v17 length];
    v29 = v14;
    if (v18 >> 31)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131984C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101319860();
      }

      if (qword_101AD5A10 != -1)
      {
        dispatch_once(&qword_101AD5A10, &stru_10183E850);
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v25);
      }

      v26 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBrushStrokeLoader p_loadBrushIfNeeded:]");
      v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m"];
      [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:203 isFatal:0 description:"Out-of-bounds type assignment failed"];
    }

    else
    {
      Memory = xmlReadMemory([v17 bytes], v18, "", 0, 1);
      [NSString stringWithFormat:@"//svg:%@[1]", @"split-at-sharp-angles"];
      v20 = v28 = v12;
      v21 = sub_10006E4D0(Memory, v20);
      v22 = [v21 count] != 0;

      v23 = [NSNumber numberWithBool:v22];
      [(CRLMutableBrushStrokeStorage *)v11 setOption:v23 forKey:@"split-at-sharp-angles"];

      [self p_loadLineEndsForBrush:neededCopy fromSVGDoc:Memory intoStorage:v11];
      [self p_loadSectionsForBrush:neededCopy fromSVGDoc:Memory intoStorage:v11];
      xmlFreeDoc(Memory);
      deepCopy = [(CRLMutableBrushStrokeStorage *)v11 deepCopy];
      [p_storagesByBrushName setObject:deepCopy forKeyedSubscript:neededCopy];
    }
  }
}

+ (void)p_clearOnDiskCache
{
  v2 = +[CRLBrushStrokeLoader p_cacheDirectory];
  v3 = +[NSFileManager defaultManager];
  v37 = 0;
  v31 = v2;
  v4 = [v3 contentsOfDirectoryAtPath:v2 error:&v37];
  v5 = v37;

  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013198F4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131991C(v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013199F8();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v7);
    }

    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBrushStrokeLoader p_clearOnDiskCache]");
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m"];
    v10 = [v5 description];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:231 isFatal:0 description:"%{public}@", v10];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        if ([v16 hasPrefix:@"CRLBrush"])
        {
          v17 = +[NSFileManager defaultManager];
          v18 = [v31 stringByAppendingPathComponent:v16];
          v32 = v5;
          v19 = [v17 removeItemAtPath:v18 error:&v32];
          v20 = v32;

          if ((v19 & 1) == 0)
          {
            v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101319A20();
            }

            v22 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v27 = v22;
              v28 = [v20 description];
              *buf = 67110146;
              v39 = v21;
              v40 = 2082;
              v41 = "+[CRLBrushStrokeLoader p_clearOnDiskCache]";
              v42 = 2082;
              v43 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m";
              v44 = 1024;
              v45 = 234;
              v46 = 2112;
              v47 = v28;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d %@", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101319A48();
            }

            v23 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v29 = v23;
              v30 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v39 = v21;
              v40 = 2114;
              v41 = v30;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v24 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBrushStrokeLoader p_clearOnDiskCache]");
            v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m"];
            v26 = [v20 description];
            [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:234 isFatal:0 description:"%@", v26];
          }

          v5 = v20;
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
    }

    while (v13);
  }
}

+ (void)p_loadLineEndTextureForBrush:(id)brush lineEnd:(id)end path:(CGPath *)path andBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  endCopy = end;
  brushCopy = brush;
  v14 = +[CRLBrushStrokeLoader p_cacheDirectory];
  endCopy = [v14 stringByAppendingFormat:@"/CRLBrushEnd_%@_%@.png", brushCopy, endCopy];

  v16 = [CRLImage imageWithContentsOfFile:endCopy];
  v17 = v16;
  if (v16)
  {
    Image = CGImageRetain([v16 CGImage]);
  }

  else
  {
    +[CRLBrushStrokeLoader p_brushPixelScaleAt100Percent];
    v20 = v19 * 100.0 / height;
    v21 = width * v20;
    v22 = height * v20;
    v23 = sub_10050DF80(3, v21, v22);
    CGContextSetRGBFillColor(v23, 1.0, 1.0, 1.0, 1.0);
    v24 = v21;
    v30.size.width = ceilf(v24);
    v25 = v22;
    v30.size.height = ceilf(v25);
    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    CGContextFillRect(v23, v30);
    CGContextSetRGBFillColor(v23, 0.0, 0.0, 0.0, 1.0);
    CGAffineTransformMakeScale(&transform, v20, v20);
    CGContextConcatCTM(v23, &transform);
    CGAffineTransformMakeTranslation(&transform, -x, -y);
    CGContextConcatCTM(v23, &transform);
    CGContextAddPath(v23, path);
    CGContextFillPath(v23);
    Image = CGBitmapContextCreateImage(v23);
    v26 = [CRLImage imageWithCGImage:Image];
    pNGRepresentation = [v26 PNGRepresentation];

    v28 = [NSURL crl_fileURLWithPath:endCopy];
    [pNGRepresentation writeToURL:v28 atomically:1];
    CGContextRelease(v23);
  }

  CGImageRelease(Image);
}

+ (void)p_loadLineEndsForBrush:(id)brush fromSVGDoc:(_xmlDoc *)doc intoStorage:(id)storage
{
  brushCopy = brush;
  storageCopy = storage;
  sub_10006E4D0(doc, @"//svg:path['_wrap'=substring(@id,string-length(@id)-4)]");
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v85 = 0u;
  v72 = [obj countByEnumeratingWithState:&v82 objects:v87 count:16];
  if (v72)
  {
    v7 = @"nodeAttributes";
    v68 = *v83;
    v66 = *&CGAffineTransformIdentity.a;
    v67 = *&CGAffineTransformIdentity.c;
    ty = CGAffineTransformIdentity.ty;
    tx = CGAffineTransformIdentity.tx;
    v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    do
    {
      v9 = 0;
      do
      {
        if (*v83 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v79 = v9;
        v10 = [*(*(&v82 + 1) + 8 * v9) objectForKey:v7];
        v80 = [v10 objectForKey:@"d"];
        v11 = [v10 objectForKey:@"id"];
        v12 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 5}];

        v13 = [v8[101] stringWithFormat:@"//svg:path[@id='%@_end']", v12];
        v14 = sub_10006E4D0(doc, v13);

        if ([v14 count] != 1)
        {
          v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101319A70();
          }

          v16 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v86.a) = 67109890;
            HIDWORD(v86.a) = v15;
            LOWORD(v86.b) = 2082;
            *(&v86.b + 2) = "+[CRLBrushStrokeLoader p_loadLineEndsForBrush:fromSVGDoc:intoStorage:]";
            WORD1(v86.c) = 2082;
            *(&v86.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m";
            WORD2(v86.d) = 1024;
            *(&v86.d + 6) = 290;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Arrow head needs path", &v86, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101319A98();
          }

          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v59 = v17;
            v60 = +[CRLAssertionHandler packedBacktraceString];
            LODWORD(v86.a) = 67109378;
            HIDWORD(v86.a) = v15;
            LOWORD(v86.b) = 2114;
            *(&v86.b + 2) = v60;
            _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v86, 0x12u);
          }

          v18 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBrushStrokeLoader p_loadLineEndsForBrush:fromSVGDoc:intoStorage:]");
          v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m"];
          [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:290 isFatal:0 description:"Arrow head needs path"];

          v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
        }

        lastObject = [v14 lastObject];
        v21 = [lastObject objectForKey:v7];

        v78 = [v21 objectForKey:@"d"];
        v22 = [v8[101] stringWithFormat:@"//svg:rect[@id='%@_end_bounds']", v12];
        v23 = sub_10006E4D0(doc, v22);

        if ([v23 count] != 1)
        {
          v24 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101319AC0();
          }

          v25 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v86.a) = 67109890;
            HIDWORD(v86.a) = v24;
            LOWORD(v86.b) = 2082;
            *(&v86.b + 2) = "+[CRLBrushStrokeLoader p_loadLineEndsForBrush:fromSVGDoc:intoStorage:]";
            WORD1(v86.c) = 2082;
            *(&v86.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m";
            WORD2(v86.d) = 1024;
            *(&v86.d + 6) = 297;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Arrow head needs bounding rect", &v86, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101319AE8();
          }

          v26 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v61 = v26;
            v62 = +[CRLAssertionHandler packedBacktraceString];
            LODWORD(v86.a) = 67109378;
            HIDWORD(v86.a) = v24;
            LOWORD(v86.b) = 2114;
            *(&v86.b + 2) = v62;
            _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v86, 0x12u);
          }

          v27 = [v8[101] stringWithUTF8String:"+[CRLBrushStrokeLoader p_loadLineEndsForBrush:fromSVGDoc:intoStorage:]"];
          v28 = [v8[101] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m"];
          [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:297 isFatal:0 description:"Arrow head needs bounding rect"];
        }

        lastObject2 = [v23 lastObject];
        v30 = [lastObject2 objectForKey:v7];

        v31 = [v30 objectForKey:@"x"];
        [v31 doubleValue];
        v33 = v32;
        v74 = v32;

        v34 = [v30 objectForKey:@"y"];
        [v34 doubleValue];
        v36 = v35;

        v37 = [v30 objectForKey:@"width"];
        [v37 doubleValue];
        v76 = v38;

        v39 = [v30 objectForKey:@"height"];
        [v39 doubleValue];
        v41 = v40;
        v75 = v40;

        v42 = [v12 stringByReplacingOccurrencesOfString:@"_" withString:@" "];

        *&v81.a = v66;
        *&v81.c = v67;
        v81.tx = tx;
        v81.ty = ty;
        CGAffineTransformTranslate(&v86, &v81, 0.0, -0.5);
        v81 = v86;
        CGAffineTransformScale(&v86, &v81, 2.0 / v41, 2.0 / v41);
        v81 = v86;
        CGAffineTransformTranslate(&v86, &v81, -v33, -v36);
        v81 = v86;
        CGAffineTransformRotate(&v86, &v81, -1.57079633);
        a = v86.a;
        b = v86.b;
        c = v86.c;
        d = v86.d;
        v47 = v86.tx;
        v48 = v86.ty;
        v77 = v23;
        v49 = [CRLSVGToBezierPathConverter newPathFromSVGPathString:v80];
        v86.a = a;
        v86.b = b;
        v73 = b;
        v86.c = c;
        v86.d = d;
        v86.tx = v47;
        v86.ty = v48;
        v50 = sub_10007187C(v49, &v86);
        v51 = v7;
        v52 = [CRLSVGToBezierPathConverter newPathFromSVGPathString:v78];
        v86.a = a;
        v86.b = b;
        v86.c = c;
        v86.d = d;
        v86.tx = v47;
        v86.ty = v48;
        v53 = sub_10007187C(v52, &v86);
        docCopy = doc;
        v88.origin.x = v74;
        v88.origin.y = v36;
        v88.size.width = v76;
        v88.size.height = v75;
        MaxX = CGRectGetMaxX(v88);
        v89.origin.x = v74;
        v89.origin.y = v36;
        v89.size.width = v76;
        v89.size.height = v75;
        MidY = CGRectGetMidY(v89);
        maxX = [CRLLineEnd lineEndWithPath:v53 wrapPath:v50 endPoint:1 isFilled:v42 identifier:v47 + c * MidY + a * MaxX, v48 + d * MidY + v73 * MaxX];
        [storageCopy setLineEnd:maxX forKey:v42];
        BoundingBox = CGPathGetBoundingBox(v50);
        [self p_loadLineEndTextureForBrush:brushCopy lineEnd:v42 path:v53 andBounds:{BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height}];
        v58 = v52;
        v7 = v51;
        v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
        CGPathRelease(v58);
        CGPathRelease(v53);
        CGPathRelease(v49);
        CGPathRelease(v50);

        doc = docCopy;
        v9 = v79 + 1;
      }

      while (v72 != (v79 + 1));
      v72 = [obj countByEnumeratingWithState:&v82 objects:v87 count:16];
    }

    while (v72);
  }
}

+ (void)p_loadImageForBrush:(id)brush intoStorage:(id)storage
{
  brushCopy = brush;
  storageCopy = storage;
  v54 = +[CRLBrushStrokeLoader p_cacheDirectory];
  v55 = brushCopy;
  brushCopy = [v54 stringByAppendingFormat:@"/CRLBrush_%@.png", brushCopy];
  paths = [storageCopy paths];
  if (!paths)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101319B10();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101319B24();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101319BD0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBrushStrokeLoader p_loadImageForBrush:intoStorage:]");
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:340 isFatal:0 description:"invalid nil value for '%{public}s'", "paths"];
  }

  v56 = brushCopy;
  v11 = [CRLImage imageWithContentsOfFile:brushCopy];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    bounds = [storageCopy bounds];
    if (!bounds)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101319BF8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101319C20();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101319CCC();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v13);
      }

      v14 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBrushStrokeLoader p_loadImageForBrush:intoStorage:]");
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:346 isFatal:0 description:"invalid nil value for '%{public}s'", "bounds"];
    }

    totalSectionCount = [storageCopy totalSectionCount];
    if (totalSectionCount == 1)
    {
      v17 = 2048.0;
    }

    else
    {
      v17 = 512.0;
    }

    v18 = sub_10050DF80(3, v17, totalSectionCount * 80.0);
    CGContextSetRGBFillColor(v18, 0.0, 0.0, 0.0, 1.0);
    ClipBoundingBox = CGContextGetClipBoundingBox(v18);
    CGContextFillRect(v18, ClipBoundingBox);
    CGContextSetRGBFillColor(v18, 1.0, 1.0, 1.0, 1.0);
    allKeys = [paths allKeys];
    v20 = [allKeys sortedArrayUsingSelector:?];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v20;
    v60 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (v60)
    {
      v21 = 0;
      v58 = *v69;
      do
      {
        v22 = 0;
        do
        {
          if (*v69 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v61 = v22;
          v23 = *(*(&v68 + 1) + 8 * v22);
          v24 = [paths objectForKeyedSubscript:v23];
          v25 = [bounds objectForKeyedSubscript:v23];
          if ([v24 count])
          {
            v26 = 0;
            do
            {
              v27 = [v24 objectAtIndexedSubscript:v26];
              originalPath = [v27 originalPath];

              v29 = [v25 objectAtIndexedSubscript:v26];
              [v29 CGRectValue];

              [originalPath bounds];
              x = v75.origin.x;
              y = v75.origin.y;
              width = v75.size.width;
              height = v75.size.height;
              v34 = fmin(CGRectGetMinX(v75), 0.0);
              v76.origin.x = x;
              v76.origin.y = y;
              v76.size.width = width;
              v76.size.height = height;
              v35 = v21 * 80.0;
              v36 = v17 / (fmax(CGRectGetMaxX(v76), 1.0) - v34);
              v37 = 32;
              do
              {
                CGContextSaveGState(v18);
                CGAffineTransformMakeTranslation(&transform, 0.0, v35);
                CGContextConcatCTM(v18, &transform);
                CGAffineTransformMakeScale(&transform, v36, v37);
                CGContextConcatCTM(v18, &transform);
                CGAffineTransformMakeTranslation(&transform, -v34, 0.5);
                CGContextConcatCTM(v18, &transform);
                CGContextAddPath(v18, [originalPath CGPath]);
                CGContextFillPath(v18);
                v35 = (v37 + v35) + 4.0;
                CGContextRestoreGState(v18);
                v38 = v37 > 3;
                v37 >>= 1;
              }

              while (v38);
              ++v21;

              ++v26;
            }

            while (v26 < [v24 count]);
          }

          v22 = v61 + 1;
        }

        while ((v61 + 1) != v60);
        v60 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
      }

      while (v60);
    }

    Image = CGBitmapContextCreateImage(v18);
    v12 = [CRLImage imageWithCGImage:Image];
    pNGRepresentation = [v12 PNGRepresentation];
    v41 = [NSURL crl_fileURLWithPath:v56];
    [pNGRepresentation writeToURL:v41 atomically:1];
    CGImageRelease(Image);
    CGContextRelease(v18);
  }

  allKeys2 = [paths allKeys];
  v43 = [allKeys2 sortedArrayUsingSelector:"compare:"];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v44 = v43;
  v45 = [v44 countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = 0;
    v48 = *v64;
    do
    {
      for (i = 0; i != v46; i = i + 1)
      {
        if (*v64 != v48)
        {
          objc_enumerationMutation(v44);
        }

        v50 = *(*(&v63 + 1) + 8 * i);
        v51 = [paths objectForKeyedSubscript:v50];
        v52 = [v51 count];

        if (v52)
        {
          v53 = &v47[v52];
          do
          {
            [storageCopy addTextureIndex:v47++ forKey:v50];
            v52 = v52 - 1;
          }

          while (v52);
          v47 = v53;
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v63 objects:v72 count:16];
    }

    while (v46);
  }

  [storageCopy setImage:v12];
}

+ (void)p_loadSectionsForBrush:(id)brush fromSVGDoc:(_xmlDoc *)doc intoStorage:(id)storage
{
  brushCopy = brush;
  docCopy = doc;
  storageCopy = storage;
  v7 = sub_10006E4D0(doc, @"//svg:path['_section'=substring(@id,string-length(@id)-7)]");
  if (![v7 count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101319CF4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101319D08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101319D9C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBrushStrokeLoader p_loadSectionsForBrush:fromSVGDoc:intoStorage:]");
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:472 isFatal:0 description:"No sections"];
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    v49 = *v56;
    v47 = *&CGAffineTransformIdentity.c;
    v48 = *&CGAffineTransformIdentity.a;
    v46 = *&CGAffineTransformIdentity.tx;
    do
    {
      v13 = 0;
      do
      {
        if (*v56 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(*(&v55 + 1) + 8 * v13) objectForKey:@"nodeAttributes"];
        v15 = [v14 objectForKey:@"d"];
        v16 = [v14 objectForKey:@"id"];
        v17 = [NSString stringWithFormat:@"//svg:rect[@id='%@_bounds']", v16];
        v18 = sub_10006E4D0(docCopy, v17);

        if ([v18 count] != 1)
        {
          v19 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101319DC4();
          }

          v20 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v59.a) = 67109890;
            HIDWORD(v59.a) = v19;
            LOWORD(v59.b) = 2082;
            *(&v59.b + 2) = "+[CRLBrushStrokeLoader p_loadSectionsForBrush:fromSVGDoc:intoStorage:]";
            WORD1(v59.c) = 2082;
            *(&v59.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m";
            WORD2(v59.d) = 1024;
            *(&v59.d + 6) = 481;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Section needs bounding rect", &v59, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101319DEC();
          }

          v21 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v42 = v21;
            v43 = +[CRLAssertionHandler packedBacktraceString];
            LODWORD(v59.a) = 67109378;
            HIDWORD(v59.a) = v19;
            LOWORD(v59.b) = 2114;
            *(&v59.b + 2) = v43;
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v59, 0x12u);
          }

          v22 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBrushStrokeLoader p_loadSectionsForBrush:fromSVGDoc:intoStorage:]");
          v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStrokeLoader.m"];
          [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:481 isFatal:0 description:"Section needs bounding rect"];
        }

        lastObject = [v18 lastObject];
        v25 = [lastObject objectForKey:@"nodeAttributes"];

        v26 = [v25 objectForKey:@"x"];
        [v26 doubleValue];
        v28 = v27;

        v29 = [v25 objectForKey:@"y"];
        [v29 doubleValue];
        v31 = v30;

        v32 = [v25 objectForKey:@"width"];
        [v32 doubleValue];
        v34 = v33;

        v35 = [v25 objectForKey:@"height"];
        [v35 doubleValue];
        v37 = v36;

        v38 = [CRLSVGToBezierPathConverter newPathFromSVGPathString:v15];
        v39 = [CRLBezierPath bezierPathWithCGPath:v38];
        *&v59.a = v48;
        *&v59.c = v47;
        *&v59.tx = v46;
        *&v54.a = v48;
        *&v54.c = v47;
        *&v54.tx = v46;
        CGAffineTransformTranslate(&v59, &v54, 0.0, -0.5);
        v53 = v59;
        CGAffineTransformScale(&v54, &v53, 1.0 / v34, 1.0 / v37);
        v59 = v54;
        v53 = v54;
        CGAffineTransformTranslate(&v54, &v53, -v28, -v31);
        v59 = v54;
        [v39 transformUsingAffineTransform:&v54];
        v40 = [v16 substringToIndex:{objc_msgSend(v16, "rangeOfString:", @"_"}];
        if ([brushCopy isEqualToString:@"Chalk2"])
        {
          v41 = [v40 isEqualToString:@"small"] ^ 1;
        }

        else
        {
          v41 = 0;
        }

        [storageCopy addPath:v39 withBounds:v41 shouldSmooth:v40 forKey:{v28, v31, v34, v37}];
        CGPathRelease(v38);

        v13 = v13 + 1;
      }

      while (v12 != v13);
      v12 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v12);
  }

  [self p_loadImageForBrush:brushCopy intoStorage:storageCopy];
}

@end