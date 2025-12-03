@interface CRLImageRepSizingState
- (CGSize)desiredSize;
- (CRLImageRepSizingState)initWithDesiredSize:(CGSize)size provider:(id)provider maskPath:(CGPath *)path wideGamutCanvas:(BOOL)canvas;
- (void)dealloc;
- (void)generateSizedImage;
@end

@implementation CRLImageRepSizingState

- (CRLImageRepSizingState)initWithDesiredSize:(CGSize)size provider:(id)provider maskPath:(CGPath *)path wideGamutCanvas:(BOOL)canvas
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  if (!providerCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101310904();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101310918();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013109C8();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLImageRepSizingState initWithDesiredSize:provider:maskPath:wideGamutCanvas:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepSizingState.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:32 isFatal:0 description:"invalid nil value for '%{public}s'", "provider"];
  }

  v19.receiver = self;
  v19.super_class = CRLImageRepSizingState;
  v16 = [(CRLImageRepSizingState *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_desiredSize.width = width;
    v16->_desiredSize.height = height;
    objc_storeStrong(&v16->_provider, provider);
    v17->_status = 0;
    v17->_wideGamutCanvas = canvas;
    if (path)
    {
      v17->_maskPath = CGPathRetain(path);
    }
  }

  return v17;
}

- (void)dealloc
{
  CGImageRelease(self->_sizedImage);
  maskPath = self->_maskPath;
  if (maskPath)
  {
    CGPathRelease(maskPath);
  }

  v4.receiver = self;
  v4.super_class = CRLImageRepSizingState;
  [(CRLImageRepSizingState *)&v4 dealloc];
}

- (void)generateSizedImage
{
  if (+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013109F0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101310A04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101310AA4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLImageRepSizingState generateSizedImage]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepSizingState.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:59 isFatal:0 description:"wrong thread"];
  }

  sizedImage = self->_sizedImage;
  if (sizedImage)
  {
    CFRelease(sizedImage);
    self->_sizedImage = 0;
  }

  if (!self->_status)
  {
    width = self->_desiredSize.width;
    height = self->_desiredSize.height;
    if (width < 1.0 || height < 1.0)
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101310ACC();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v37 = v11;
        v50.width = width;
        v50.height = height;
        v38 = NSStringFromCGSize(v50);
        *buf = 67110146;
        v40 = v10;
        v41 = 2082;
        v42 = "[CRLImageRepSizingState generateSizedImage]";
        v43 = 2082;
        v44 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepSizingState.m";
        v45 = 1024;
        v46 = 67;
        v47 = 2112;
        v48 = v38;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Asked to resample an image to be size %@, which is invalid", buf, 0x2Cu);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101310AF4();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLImageRepSizingState generateSizedImage]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepSizingState.m"];
      v49.width = width;
      v49.height = height;
      v15 = NSStringFromCGSize(v49);
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:67 isFatal:0 description:"Asked to resample an image to be size %@, which is invalid", v15];

      height = 1.0;
      width = 1.0;
    }

    v16 = objc_opt_class();
    provider = [(CRLImageRepSizingState *)self provider];
    v18 = sub_100014370(v16, provider);

    if (v18 && (([v18 naturalSize], width == v20) ? (v21 = height == v19) : (v21 = 0), v21 && !-[CRLImageRepSizingState maskPath](self, "maskPath")))
    {
      self->_sizedImage = CGImageRetain([v18 CGImageOfLargestSafeSize]);
      self->_sizedImageOrientation = [v18 orientation];
    }

    else
    {
      if (-[CRLImageRepSizingState wideGamut](self, "wideGamut") && (-[CRLImageRepSizingState provider](self, "provider"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isError], v22, (v23 & 1) == 0))
      {
        provider2 = [(CRLImageRepSizingState *)self provider];
        imageGamut = [provider2 imageGamut];

        if (imageGamut == 2)
        {
          v24 = 11;
        }

        else
        {
          v24 = 43;
        }
      }

      else
      {
        v24 = 11;
      }

      v27 = sub_10050DF80(v24, width, height);
      if (v27)
      {
        v28 = v27;
        CGContextSetInterpolationQuality(v27, kCGInterpolationHigh);
        v29 = sub_10011ECB4();
        v31 = v30;
        v33 = v32;
        v35 = v34;
        if ([(CRLImageRepSizingState *)self maskPath])
        {
          CGContextAddPath(v28, [(CRLImageRepSizingState *)self maskPath]);
          CGContextClip(v28);
        }

        provider3 = [(CRLImageRepSizingState *)self provider];
        [provider3 drawImageInContext:v28 rect:{v29, v31, v33, v35}];

        self->_sizedImage = CGBitmapContextCreateImage(v28);
        self->_sizedImageOrientation = 0;
        CGContextRelease(v28);
      }
    }
  }
}

- (CGSize)desiredSize
{
  width = self->_desiredSize.width;
  height = self->_desiredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end