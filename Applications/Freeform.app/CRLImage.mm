@interface CRLImage
+ (CRLImage)allocWithZone:(_NSZone *)zone;
+ (CRLImage)imageWithCGImage:(CGImage *)image;
+ (CRLImage)imageWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation;
+ (CRLImage)imageWithContentsOfFile:(id)file;
+ (CRLImage)imageWithData:(id)data;
+ (CRLImage)imageWithPrivateSystemImageNamed:(id)named;
+ (CRLImage)imageWithPrivateSystemImageNamed:(id)named pointSize:(double)size;
+ (CRLImage)imageWithSystemImageNamed:(id)named;
+ (CRLImage)imageWithSystemImageNamed:(id)named pointSize:(double)size;
+ (CRLImage)imageWithUIImage:(id)image;
+ (id)crl_quickInspectorImageNamed:(id)named isPrivateImage:(BOOL)image isBundledImage:(BOOL)bundledImage;
- (BOOL)isEmpty;
- (CGImage)CGImage;
- (CGImage)CGImageForSize:(CGSize)size;
- (CGImage)CGImageForSize:(CGSize)size inContext:(CGContext *)context orContentsScaleProvider:(id)provider;
- (CGSize)size;
- (CRLImage)init;
- (CRLImage)initWithCGImage:(CGImage *)image;
- (CRLImage)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation;
- (CRLImage)initWithContentsOfFile:(id)file;
- (CRLImage)initWithData:(id)data;
- (CRLImage)initWithImageSourceRef:(CGImageSource *)ref;
- (CRLImage)initWithPrivateSystemImageNamed:(id)named;
- (CRLImage)initWithPrivateSystemImageNamed:(id)named pointSize:(double)size;
- (CRLImage)initWithSystemImageNamed:(id)named;
- (CRLImage)initWithSystemImageNamed:(id)named pointSize:(double)size;
- (CRLImage)initWithUIImage:(id)image;
- (UIImage)UIImage;
- (double)scale;
- (id)JPEGRepresentationWithCompressionQuality:(double)quality;
- (id)PNGRepresentation;
- (id)TIFFRepresentation;
- (id)compositeImageWithOverlayImage:(id)image overlayTintColor:(id)color;
- (id)compositedImageWithColor:(id)color alpha:(double)alpha blendMode:(int)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stretchedImageOfSize:(CGSize)size leftCapWidth:(double)width rightCapWidth:(double)capWidth topCapHeight:(double)height bottomCapHeight:(double)capHeight;
- (int64_t)imageOrientation;
- (void)dealloc;
@end

@implementation CRLImage

- (CRLImage)init
{
  v8.receiver = self;
  v8.super_class = CRLImage;
  v2 = [(CRLImage *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRLOnce);
    mImageSlicesOnce = v2->mImageSlicesOnce;
    v2->mImageSlicesOnce = v3;

    v5 = objc_alloc_init(CRLOnce);
    mCachedImageOnce = v2->mCachedImageOnce;
    v2->mCachedImageOnce = v5;
  }

  return v2;
}

- (void)dealloc
{
  CGImageRelease(self->mCachedSliceableImage);
  mImageSlices = self->mImageSlices;
  if (mImageSlices)
  {
    CFRelease(mImageSlices);
  }

  mCachedSystemImage = self->mCachedSystemImage;
  self->mCachedSystemImage = 0;

  mImageSlicesOnce = self->mImageSlicesOnce;
  self->mImageSlicesOnce = 0;

  mCachedImageOnce = self->mCachedImageOnce;
  self->mCachedImageOnce = 0;

  v7.receiver = self;
  v7.super_class = CRLImage;
  [(CRLImage *)&v7 dealloc];
}

+ (CRLImage)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [_CRLImageM allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___CRLImage;
    return objc_msgSendSuper2(&v6, "allocWithZone:", zone);
  }
}

+ (CRLImage)imageWithContentsOfFile:(id)file
{
  fileCopy = file;
  v5 = [[self alloc] initWithContentsOfFile:fileCopy];

  return v5;
}

+ (CRLImage)imageWithData:(id)data
{
  dataCopy = data;
  v5 = [[self alloc] initWithData:dataCopy];

  return v5;
}

+ (CRLImage)imageWithCGImage:(CGImage *)image
{
  v3 = [[self alloc] initWithCGImage:image];

  return v3;
}

+ (CRLImage)imageWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation
{
  v5 = [[self alloc] initWithCGImage:image scale:orientation orientation:scale];

  return v5;
}

+ (CRLImage)imageWithSystemImageNamed:(id)named pointSize:(double)size
{
  namedCopy = named;
  v6 = [[CRLUIImage alloc] initWithSystemImageNamed:namedCopy pointSize:size];

  return v6;
}

+ (CRLImage)imageWithSystemImageNamed:(id)named
{
  namedCopy = named;
  v4 = [[CRLUIImage alloc] initWithSystemImageNamed:namedCopy];

  return v4;
}

+ (CRLImage)imageWithPrivateSystemImageNamed:(id)named pointSize:(double)size
{
  namedCopy = named;
  v6 = [[CRLUIImage alloc] initWithPrivateSystemImageNamed:namedCopy pointSize:size];

  return v6;
}

+ (CRLImage)imageWithPrivateSystemImageNamed:(id)named
{
  namedCopy = named;
  v4 = [[CRLUIImage alloc] initWithPrivateSystemImageNamed:namedCopy];

  return v4;
}

+ (id)crl_quickInspectorImageNamed:(id)named isPrivateImage:(BOOL)image isBundledImage:(BOOL)bundledImage
{
  bundledImageCopy = bundledImage;
  imageCopy = image;
  namedCopy = named;
  if (!+[NSThread isMainThread])
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101387258();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138726C(v9, v10);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101387318();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v11, v9);
    }

    v12 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLImage crl_quickInspectorImageNamed:isPrivateImage:isBundledImage:]");
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:715 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (qword_101A352A8 != -1)
  {
    sub_101387340();
  }

  v14 = [qword_101A352A0 objectForKeyedSubscript:namedCopy];
  if (!v14)
  {
    if (bundledImageCopy)
    {
      v15 = [self imageNamed:namedCopy];
    }

    else
    {
      if (imageCopy)
      {
        [self imageWithPrivateSystemImageNamed:namedCopy];
      }

      else
      {
        [self imageWithSystemImageNamed:namedCopy];
      }
      v15 = ;
    }

    v14 = v15;
    [qword_101A352A0 setObject:v15 forKeyedSubscript:namedCopy];
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A330);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v21 = v3;
    v22 = 2082;
    v23 = "[CRLImage copyWithZone:]";
    v24 = 2082;
    v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v26 = 1024;
    v27 = 749;
    v28 = 2114;
    v29 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A350);
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v21 = v3;
    v22 = 2114;
    v23 = v10;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v11 = [NSString stringWithUTF8String:"[CRLImage copyWithZone:]"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:749 isFatal:0 description:"Abstract method not overridden by %{public}@", v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v16, "[CRLImage copyWithZone:]"];
  v18 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v17 userInfo:0];
  v19 = v18;

  objc_exception_throw(v18);
}

- (CRLImage)initWithContentsOfFile:(id)file
{
  fileCopy = file;
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A370);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 67110146;
    v22 = v4;
    v23 = 2082;
    v24 = "[CRLImage initWithContentsOfFile:]";
    v25 = 2082;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v27 = 1024;
    v28 = 754;
    v29 = 2114;
    v30 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A390);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v22 = v4;
    v23 = 2114;
    v24 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v12 = [NSString stringWithUTF8String:"[CRLImage initWithContentsOfFile:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:754 isFatal:0 description:"Abstract method not overridden by %{public}@", v15];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v17, "[CRLImage initWithContentsOfFile:]"];
  v19 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

- (CRLImage)initWithData:(id)data
{
  dataCopy = data;
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A3B0);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 67110146;
    v22 = v4;
    v23 = 2082;
    v24 = "[CRLImage initWithData:]";
    v25 = 2082;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v27 = 1024;
    v28 = 759;
    v29 = 2114;
    v30 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A3D0);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v22 = v4;
    v23 = 2114;
    v24 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v12 = [NSString stringWithUTF8String:"[CRLImage initWithData:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:759 isFatal:0 description:"Abstract method not overridden by %{public}@", v15];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v17, "[CRLImage initWithData:]"];
  v19 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

- (CRLImage)initWithCGImage:(CGImage *)image
{
  v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A3F0);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v21 = v3;
    v22 = 2082;
    v23 = "[CRLImage initWithCGImage:]";
    v24 = 2082;
    v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v26 = 1024;
    v27 = 764;
    v28 = 2114;
    v29 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A410);
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v21 = v3;
    v22 = 2114;
    v23 = v10;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v11 = [NSString stringWithUTF8String:"[CRLImage initWithCGImage:]"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:764 isFatal:0 description:"Abstract method not overridden by %{public}@", v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v16, "[CRLImage initWithCGImage:]"];
  v18 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v17 userInfo:0];
  v19 = v18;

  objc_exception_throw(v18);
}

- (CRLImage)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation
{
  v5 = [CRLAssertionHandler _atomicIncrementAssertCount:image];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A430);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 67110146;
    v23 = v5;
    v24 = 2082;
    v25 = "[CRLImage initWithCGImage:scale:orientation:]";
    v26 = 2082;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v28 = 1024;
    v29 = 769;
    v30 = 2114;
    v31 = v9;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A450);
  }

  v10 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    v12 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v23 = v5;
    v24 = 2114;
    v25 = v12;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v13 = [NSString stringWithUTF8String:"[CRLImage initWithCGImage:scale:orientation:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:769 isFatal:0 description:"Abstract method not overridden by %{public}@", v16];

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v18, "[CRLImage initWithCGImage:scale:orientation:]"];
  v20 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v19 userInfo:0];
  v21 = v20;

  objc_exception_throw(v20);
}

- (CRLImage)initWithImageSourceRef:(CGImageSource *)ref
{
  v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A470);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v21 = v3;
    v22 = 2082;
    v23 = "[CRLImage initWithImageSourceRef:]";
    v24 = 2082;
    v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v26 = 1024;
    v27 = 774;
    v28 = 2114;
    v29 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A490);
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v21 = v3;
    v22 = 2114;
    v23 = v10;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v11 = [NSString stringWithUTF8String:"[CRLImage initWithImageSourceRef:]"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:774 isFatal:0 description:"Abstract method not overridden by %{public}@", v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v16, "[CRLImage initWithImageSourceRef:]"];
  v18 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v17 userInfo:0];
  v19 = v18;

  objc_exception_throw(v18);
}

- (CRLImage)initWithSystemImageNamed:(id)named
{
  namedCopy = named;
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A4B0);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 67110146;
    v22 = v4;
    v23 = 2082;
    v24 = "[CRLImage initWithSystemImageNamed:]";
    v25 = 2082;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v27 = 1024;
    v28 = 779;
    v29 = 2114;
    v30 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A4D0);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v22 = v4;
    v23 = 2114;
    v24 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v12 = [NSString stringWithUTF8String:"[CRLImage initWithSystemImageNamed:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:779 isFatal:0 description:"Abstract method not overridden by %{public}@", v15];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v17, "[CRLImage initWithSystemImageNamed:]"];
  v19 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

- (CRLImage)initWithSystemImageNamed:(id)named pointSize:(double)size
{
  namedCopy = named;
  v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A4F0);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 67110146;
    v23 = v5;
    v24 = 2082;
    v25 = "[CRLImage initWithSystemImageNamed:pointSize:]";
    v26 = 2082;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v28 = 1024;
    v29 = 784;
    v30 = 2114;
    v31 = v9;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A510);
  }

  v10 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    v12 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v23 = v5;
    v24 = 2114;
    v25 = v12;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v13 = [NSString stringWithUTF8String:"[CRLImage initWithSystemImageNamed:pointSize:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:784 isFatal:0 description:"Abstract method not overridden by %{public}@", v16];

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v18, "[CRLImage initWithSystemImageNamed:pointSize:]"];
  v20 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v19 userInfo:0];
  v21 = v20;

  objc_exception_throw(v20);
}

- (CRLImage)initWithPrivateSystemImageNamed:(id)named
{
  namedCopy = named;
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A530);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 67110146;
    v22 = v4;
    v23 = 2082;
    v24 = "[CRLImage initWithPrivateSystemImageNamed:]";
    v25 = 2082;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v27 = 1024;
    v28 = 789;
    v29 = 2114;
    v30 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A550);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v22 = v4;
    v23 = 2114;
    v24 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v12 = [NSString stringWithUTF8String:"[CRLImage initWithPrivateSystemImageNamed:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:789 isFatal:0 description:"Abstract method not overridden by %{public}@", v15];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v17, "[CRLImage initWithPrivateSystemImageNamed:]"];
  v19 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

- (CRLImage)initWithPrivateSystemImageNamed:(id)named pointSize:(double)size
{
  namedCopy = named;
  v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A570);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 67110146;
    v23 = v5;
    v24 = 2082;
    v25 = "[CRLImage initWithPrivateSystemImageNamed:pointSize:]";
    v26 = 2082;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v28 = 1024;
    v29 = 794;
    v30 = 2114;
    v31 = v9;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A590);
  }

  v10 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    v12 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v23 = v5;
    v24 = 2114;
    v25 = v12;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v13 = [NSString stringWithUTF8String:"[CRLImage initWithPrivateSystemImageNamed:pointSize:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:794 isFatal:0 description:"Abstract method not overridden by %{public}@", v16];

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v18, "[CRLImage initWithPrivateSystemImageNamed:pointSize:]"];
  v20 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v19 userInfo:0];
  v21 = v20;

  objc_exception_throw(v20);
}

- (CGSize)size
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A5B0);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLImage size]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v25 = 1024;
    v26 = 800;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A5D0);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLImage size]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:800 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLImage size]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (double)scale
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A5F0);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLImage scale]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v25 = 1024;
    v26 = 804;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A610);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLImage scale]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:804 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLImage scale]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (CGImage)CGImageForSize:(CGSize)size
{
  v3 = [CRLAssertionHandler _atomicIncrementAssertCount:size.width];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A630);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v21 = v3;
    v22 = 2082;
    v23 = "[CRLImage CGImageForSize:]";
    v24 = 2082;
    v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v26 = 1024;
    v27 = 818;
    v28 = 2114;
    v29 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A650);
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v21 = v3;
    v22 = 2114;
    v23 = v10;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v11 = [NSString stringWithUTF8String:"[CRLImage CGImageForSize:]"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:818 isFatal:0 description:"Abstract method not overridden by %{public}@", v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v16, "[CRLImage CGImageForSize:]"];
  v18 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v17 userInfo:0];
  v19 = v18;

  objc_exception_throw(v18);
}

- (CGImage)CGImage
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A670);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLImage CGImage]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v25 = 1024;
    v26 = 822;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A690);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLImage CGImage]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:822 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLImage CGImage]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (int64_t)imageOrientation
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A6B0);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLImage imageOrientation]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v25 = 1024;
    v26 = 826;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A6D0);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLImage imageOrientation]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:826 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLImage imageOrientation]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (BOOL)isEmpty
{
  cGImage = [(CRLImage *)self CGImage];

  return sub_1004F7FF0(cGImage);
}

- (id)TIFFRepresentation
{
  cGImage = [(CRLImage *)self CGImage];

  return sub_10053583C(cGImage);
}

- (id)JPEGRepresentationWithCompressionQuality:(double)quality
{
  cGImage = [(CRLImage *)self CGImage];

  return sub_1005357C4(cGImage, quality);
}

- (id)PNGRepresentation
{
  cGImage = [(CRLImage *)self CGImage];

  return sub_1005357BC(cGImage);
}

- (id)stretchedImageOfSize:(CGSize)size leftCapWidth:(double)width rightCapWidth:(double)capWidth topCapHeight:(double)height bottomCapHeight:(double)capHeight
{
  height = size.height;
  width = size.width;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1004F826C;
  v16[3] = &unk_10186A6F8;
  sizeCopy = size;
  v16[4] = self;
  heightCopy = height;
  capHeightCopy = capHeight;
  widthCopy = width;
  capWidthCopy = capWidth;
  v10 = objc_retainBlock(v16);
  v11 = (v10[2])(v10, [(CRLImage *)self CGImageForSize:width, height], 1.0);
  if (v11)
  {
    v12 = v11;
    [(CRLImage *)self scale];
    v14 = [CRLImage imageWithCGImage:v12 scale:[(CRLImage *)self imageOrientation] orientation:v13];
    CGImageRelease(v12);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (CRLImage)imageWithUIImage:(id)image
{
  imageCopy = image;
  v4 = [[CRLUIImage alloc] initWithUIImage:imageCopy];

  return v4;
}

- (CRLImage)initWithUIImage:(id)image
{
  imageCopy = image;
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A718);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 67110146;
    v22 = v4;
    v23 = 2082;
    v24 = "[CRLImage(UIKitAdditions) initWithUIImage:]";
    v25 = 2082;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
    v27 = 1024;
    v28 = 972;
    v29 = 2114;
    v30 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186A738);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v22 = v4;
    v23 = 2114;
    v24 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v12 = [NSString stringWithUTF8String:"[CRLImage(UIKitAdditions) initWithUIImage:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m"];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:972 isFatal:0 description:"Abstract method not overridden by %{public}@", v15];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v17, "[CRLImage(UIKitAdditions) initWithUIImage:]"];
  v19 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

- (UIImage)UIImage
{
  mCachedImageOnce = self->mCachedImageOnce;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004F8B48;
  v5[3] = &unk_10183AB38;
  v5[4] = self;
  [(CRLOnce *)mCachedImageOnce performBlockOnce:v5];
  return self->mCachedSystemImage;
}

- (CGImage)CGImageForSize:(CGSize)size inContext:(CGContext *)context orContentsScaleProvider:(id)provider
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  v10 = providerCopy;
  if (!context)
  {
    if (providerCopy)
    {
      [providerCopy contentsScale];
      width = width * v23;
      [v10 contentsScale];
      height = height * v24;
    }

    goto LABEL_17;
  }

  if (providerCopy)
  {
    v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101387368();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138737C(v11, v12);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101387428();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v13, v11);
    }

    v14 = [NSString stringWithUTF8String:"[CRLImage(RenderingAdditions) CGImageForSize:inContext:orContentsScaleProvider:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImage_RenderingAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:25 isFatal:0 description:"using context to determine requested image size. contents scale provider should be nil"];
  }

  v16 = 2.0;
  if ((sub_10051058C(context) & 1) == 0 && (sub_100510804(context) & 1) == 0)
  {
    v17 = sub_100510A7C(context);
    v18 = sub_10011F340(width, height, v17);
    v20 = v19;
    CGContextGetCTM(&v29, context);
    v21 = sub_100139A00(&v29.a);
    width = sub_10011F340(v18, v20, v21);
    height = v22;
LABEL_17:
    [(CRLImage *)self size];
    v16 = 2.0;
    if (width <= v25)
    {
      [(CRLImage *)self size];
      if (height <= v26)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 2.0;
      }
    }
  }

  v27 = [(CRLImage *)self CGImageForContentsScale:v16];

  return v27;
}

- (id)compositedImageWithColor:(id)color alpha:(double)alpha blendMode:(int)mode
{
  colorCopy = color;
  [(CRLImage *)self scale];
  v10 = v9;
  [(CRLImage *)self size];
  v13 = sub_10011F340(v11, v12, v10);
  v15 = sub_10050DF80(3, v13, v14);
  v16 = sub_10011ECB4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(CRLImage *)self CGImageForContentsScale:v10];
  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  CGContextDrawImage(v15, v29, v23);
  cGColor = [colorCopy CGColor];

  CGContextSetFillColorWithColor(v15, cGColor);
  CGContextSetAlpha(v15, alpha);
  CGContextSetBlendMode(v15, mode);
  v30.origin.x = v16;
  v30.origin.y = v18;
  v30.size.width = v20;
  v30.size.height = v22;
  CGContextFillRect(v15, v30);
  Image = CGBitmapContextCreateImage(v15);
  v26 = [CRLImage imageWithCGImage:Image scale:0 orientation:v10];
  CGImageRelease(Image);
  CGContextRelease(v15);

  return v26;
}

- (id)compositeImageWithOverlayImage:(id)image overlayTintColor:(id)color
{
  colorCopy = color;
  imageCopy = image;
  [(CRLImage *)self scale];
  v9 = v8;
  [(CRLImage *)self size];
  v12 = sub_10011F340(v10, v11, v9);
  v14 = sub_10050DF80(3, v12, v13);
  v15 = sub_10011ECB4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(CRLImage *)self CGImageForContentsScale:v9];
  v29.origin.x = v15;
  v29.origin.y = v17;
  v29.size.width = v19;
  v29.size.height = v21;
  CGContextDrawImage(v14, v29, v22);
  [colorCopy alphaComponent];
  v23 = [imageCopy compositedImageWithColor:colorCopy alpha:20 blendMode:?];

  v24 = [v23 CGImageForContentsScale:v9];
  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  CGContextDrawImage(v14, v30, v24);
  Image = CGBitmapContextCreateImage(v14);
  v26 = [CRLImage imageWithCGImage:Image scale:0 orientation:v9];
  CGImageRelease(Image);
  CGContextRelease(v14);

  return v26;
}

@end