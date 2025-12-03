@interface CRLImageResamplingOperation
- (CGSize)desiredAlternateSizeIfConvertedToPNG;
- (CGSize)desiredSize;
- (CRLImageResamplingOperation)init;
- (CRLImageResamplingOperation)initWithImageProvider:(id)provider desiredSize:(CGSize)size assetOwner:(id)owner;
- (id)performResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions;
- (void)setDesiredAlternateSizeIfConvertedToPNG:(CGSize)g;
@end

@implementation CRLImageResamplingOperation

- (CRLImageResamplingOperation)initWithImageProvider:(id)provider desiredSize:(CGSize)size assetOwner:(id)owner
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  ownerCopy = owner;
  if (!providerCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013443DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013443F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134448C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation initWithImageProvider:desiredSize:assetOwner:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:41 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "imageProvider != nil"];
  }

  v24.receiver = self;
  v24.super_class = CRLImageResamplingOperation;
  v15 = [(CRLImageResamplingOperation *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->mImageProvider, provider);
    v16->mDesiredSize.width = width;
    v16->mDesiredSize.height = height;
    objc_storeStrong(&v16->mAssetOwner, owner);
    if (CRLWPShapeLayout.columnsAreLeftToRight.getter())
    {
      if (width * height > sub_10050CF30())
      {
        v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013444B4();
        }

        v18 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013444DC(v18, v17, width, height);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013445DC();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v19);
        }

        v20 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation initWithImageProvider:desiredSize:assetOwner:]"];
        v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
        v25.width = width;
        v25.height = height;
        v22 = NSStringFromCGSize(v25);
        [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:47 isFatal:0 description:"Should not be resampling an image to this size %{public}@ on a platform with memory limits!", v22];
      }
    }
  }

  return v16;
}

- (CRLImageResamplingOperation)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101850018);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLImageResamplingOperation init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m";
    v18 = 1024;
    v19 = 55;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101850038);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:55 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLImageResamplingOperation init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setDesiredAlternateSizeIfConvertedToPNG:(CGSize)g
{
  height = g.height;
  width = g.width;
  [(CRLImageResamplingOperation *)self desiredSize];
  if (width <= v6 && ([(CRLImageResamplingOperation *)self desiredSize], height <= v7))
  {
    self->mDesiredAlternateSizeIfConvertedToPNG.width = width;
    self->mDesiredAlternateSizeIfConvertedToPNG.height = height;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101344604();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101344618();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013446A8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation setDesiredAlternateSizeIfConvertedToPNG:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:66 isFatal:0 description:"Should not provide a size that is larger than our default size!"];
  }
}

- (id)performResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions
{
  contextOptionsCopy = contextOptions;
  optionsCopy = options;
  imageProvider = [(CRLImageResamplingOperation *)self imageProvider];
  [imageProvider naturalSize];
  v8 = v7;
  v10 = v9;

  if ((optionsCopy & 8) != 0)
  {
    [(CRLImageResamplingOperation *)self desiredAlternateSizeIfConvertedToPNG];
    if (v12 != CGSizeZero.width || v11 != CGSizeZero.height)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013446D0();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1013446E4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101344774();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10134479C();
      }

      v16 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:81 isFatal:0 description:"Should not specify an alternate size if a precise size is required!"];
    }
  }

  v18 = optionsCopy & 1;
  [(CRLImageResamplingOperation *)self desiredSize];
  v22 = sub_10011FBF0(v19, v20, 1.0);
  v23 = v21;
  if ((optionsCopy & 8) == 0)
  {
    v22 = sub_100121EF4(0, v8, v10, v22, v21);
    v23 = v24;
  }

  if (optionsCopy)
  {
    v25 = 0.5;
  }

  else
  {
    v25 = 0.699999988;
  }

  v26 = objc_opt_class();
  imageProvider2 = [(CRLImageResamplingOperation *)self imageProvider];
  v28 = sub_100014370(v26, imageProvider2);

  if ((optionsCopy & 2) == 0 && !v28)
  {
    v29 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
    imageProvider3 = [(CRLImageResamplingOperation *)self imageProvider];
    imageData = [(__CFString *)imageProvider3 imageData];
    v32 = [(CRLPreinsertionAssetWrapper *)v29 initWithAlreadyInsertedAsset:imageData owner:self->mAssetOwner];
    goto LABEL_141;
  }

  cGImageSource = [v28 CGImageSource];
  isrc = cGImageSource;
  if (cGImageSource && (v34 = cGImageSource, CGImageSourceGetStatus(cGImageSource) == kCGImageStatusComplete))
  {
    v105 = CGImageSourceCopyPropertiesAtIndex(v34, 0, 0);
    if (v105)
    {
      cf = v105;
      v133 = 1;
      v135 = CFDictionaryGetValue(v105, kCGImagePropertyHasAlpha) == kCFBooleanTrue;
      goto LABEL_27;
    }

    v133 = 1;
  }

  else
  {
    v133 = 0;
  }

  cf = 0;
  v135 = [v28 isOpaque] ^ 1;
LABEL_27:
  displayName = [(CRLImageResamplingOperation *)self displayName];
  imageProvider3 = [displayName stringByDeletingPathExtension];

  if (!imageProvider3 || ![(__CFString *)imageProvider3 length])
  {
    imageProvider4 = [(CRLImageResamplingOperation *)self imageProvider];
    imageData2 = [imageProvider4 imageData];
    filename = [imageData2 filename];
    stringByDeletingPathExtension = [filename stringByDeletingPathExtension];

    if (stringByDeletingPathExtension && [(__CFString *)stringByDeletingPathExtension length])
    {
      imageProvider3 = stringByDeletingPathExtension;
    }

    else
    {

      imageProvider3 = @"image";
    }
  }

  v131 = v28;
  displayName2 = [(CRLImageResamplingOperation *)self displayName];
  imageData = [displayName2 pathExtension];

  if (!imageData || ![imageData length])
  {
    imageProvider5 = [(CRLImageResamplingOperation *)self imageProvider];
    imageData3 = [imageProvider5 imageData];
    filename2 = [imageData3 filename];
    pathExtension = [filename2 pathExtension];

    imageData = pathExtension;
  }

  v45 = [UTType typeWithTag:imageData tagClass:UTTagClassFilenameExtension conformingToType:0];
  v128 = v45;
  if (!v45)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101344844();
    }

    v46 = off_1019EDA68;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_10134486C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101344908();
    }

    v47 = off_1019EDA68;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_10134479C();
    }

    v48 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
    v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
    [CRLAssertionHandler handleFailureInFunction:v48 file:v49 lineNumber:129 isFatal:0 description:"invalid nil value for '%{public}s'", "utTypeForOriginalFile"];

    v45 = 0;
  }

  if ([v45 conformsToType:UTTypeJPEG])
  {
    LOBYTE(v50) = 0;
  }

  else
  {
    v51 = +[CRLIngestionTypes highEfficiencyImageUTTypes];
    if ([v45 crl_conformsToAnyUTType:v51])
    {
      LOBYTE(v50) = 0;
    }

    else
    {
      v50 = [v45 conformsToType:UTTypeWebP] ^ 1;
    }
  }

  if ((v135 | v50))
  {
    v52 = UTTypePNG;
  }

  else
  {
    v52 = UTTypeJPEG;
  }

  v53 = v52;
  if ([(UTType *)v53 isEqual:UTTypePNG])
  {
    [(CRLImageResamplingOperation *)self desiredAlternateSizeIfConvertedToPNG];
    if (v55 != CGSizeZero.width || v54 != CGSizeZero.height)
    {
      [(CRLImageResamplingOperation *)self desiredAlternateSizeIfConvertedToPNG];
      v22 = sub_100121EF4(0, v8, v10, v56, v57);
      v23 = v58;
    }
  }

  preferredFilenameExtension = [(UTType *)v53 preferredFilenameExtension];
  v127 = [(__CFString *)imageProvider3 stringByAppendingPathExtension:preferredFilenameExtension];
  v60 = v133 ^ 1;
  if ((optionsCopy & 0x18) != 0)
  {
    v60 = 1;
  }

  v129 = v53;
  v125 = preferredFilenameExtension;
  if ((v60 & 1) == 0 && v22 < v8 && v23 < v10)
  {
    v144[0] = kCGImageSourceCreateThumbnailFromImageAlways;
    v144[1] = kCGImageSourceCreateThumbnailWithTransform;
    v145[0] = &__kCFBooleanTrue;
    v145[1] = &__kCFBooleanTrue;
    v144[2] = kCGImageSourceThumbnailMaxPixelSize;
    v61 = v22 >= v23 ? v22 : v23;
    v62 = [NSNumber numberWithDouble:v61];
    v145[2] = v62;
    v63 = [NSDictionary dictionaryWithObjects:v145 forKeys:v144 count:3];

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(isrc, 0, v63);
    if (ThumbnailAtIndex)
    {
      goto LABEL_95;
    }
  }

  v65 = contextOptionsCopy | 2;
  if (!v135)
  {
    v65 = contextOptionsCopy;
  }

  v66 = v65 | (4 * v18);
  v67 = sub_10012211C(v22);
  v69 = v68;
  if ((v133 & 1) != 0 && (-[CRLImageResamplingOperation imageProvider](self, "imageProvider"), v70 = objc_claimAutoreleasedReturnValue(), [v70 imageData], v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(v71, "newCGImage"), v71, v70, v73 = sub_10050E434(v72, v66, v67, v69), v74 = v72, v53 = v129, CGImageRelease(v74), v73))
  {
    v75 = isrc;
  }

  else
  {
    imageProvider6 = [(CRLImageResamplingOperation *)self imageProvider];
    imageGamut = [imageProvider6 imageGamut];

    if (imageGamut == 2)
    {
      v78 = v66;
    }

    else
    {
      v78 = v66 | 0x20;
    }

    v79 = sub_10050DF80(v78, v67, v69);
    v75 = isrc;
    if (!v79)
    {
LABEL_105:
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101344B24();
      }

      v98 = v127;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101344B4C();
      }

      v28 = v131;
      if (qword_101AD5A10 != -1)
      {
        sub_101344BE8();
      }

      v99 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v99);
      }

      v88 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
      v100 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
      [CRLAssertionHandler handleFailureInFunction:v88 file:v100 lineNumber:239 isFatal:0 description:"invalid nil value for '%{public}s'", "resampledImage", v125];

      v32 = 0;
      v101 = v129;
      goto LABEL_138;
    }

    v73 = v79;
  }

  if (v18)
  {
    v80 = kCGInterpolationNone;
  }

  else
  {
    v80 = kCGInterpolationLow;
  }

  CGContextSetInterpolationQuality(v73, v80);
  if (!v135)
  {
    v23 = v69;
    v22 = v67;
  }

  if (v75 && ((Type = CGImageSourceGetType(v75), v8 / v22 >= v10 / v23) ? (v82 = v8 / v22) : (v82 = v10 / v23), [v131 isValid] && (objc_msgSend(UTTypeJPEG, "identifier"), v83 = objc_claimAutoreleasedReturnValue(), v84 = CFEqual(Type, v83), v83, v84) && v82 >= 2.0))
  {
    if (v82 >= 8.0)
    {
      v86 = 8;
      v85 = v131;
    }

    else
    {
      v85 = v131;
      if (v82 >= 4.0)
      {
        v86 = 4;
      }

      else
      {
        v86 = 2;
      }
    }

    v142 = @"kCGImageSourceSubsampleFactor";
    v114 = [NSNumber numberWithInt:v86];
    v143 = v114;
    imageProvider7 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];

    ImageAtIndex = CGImageSourceCreateImageAtIndex(isrc, 0, imageProvider7);
    v116 = sub_10011ECB4();
    v118 = v117;
    v120 = v119;
    v122 = v121;
    CGContextSaveGState(v73);
    v146.origin.x = v116;
    v146.origin.y = v118;
    v146.size.width = v120;
    v146.size.height = v122;
    MinY = CGRectGetMinY(v146);
    v147.origin.x = v116;
    v147.origin.y = v118;
    v147.size.width = v120;
    v147.size.height = v122;
    MaxY = CGRectGetMaxY(v147);
    CGContextTranslateCTM(v73, 0.0, MinY + MaxY);
    CGContextScaleCTM(v73, 1.0, -1.0);
    sub_1004F3D84([v85 orientation], 1, &transform, v116, v118, v120, v122);
    CGContextConcatCTM(v73, &transform);
    v148.origin.x = v116;
    v148.origin.y = v118;
    v148.size.width = v120;
    v148.size.height = v122;
    CGContextDrawImage(v73, v148, ImageAtIndex);
    if (ImageAtIndex)
    {
      CFRelease(ImageAtIndex);
    }

    CGContextRestoreGState(v73);
    v53 = v129;
  }

  else
  {
    imageProvider7 = [(CRLImageResamplingOperation *)self imageProvider];
    [(__CFDictionary *)imageProvider7 drawImageInContext:v73 rect:sub_10011ECB4()];
  }

  ThumbnailAtIndex = CGBitmapContextCreateImage(v73);
  CGContextRelease(v73);
  if (!ThumbnailAtIndex)
  {
    goto LABEL_105;
  }

LABEL_95:
  v88 = objc_alloc_init(NSMutableData);
  identifier = [(UTType *)v53 identifier];
  v90 = CGImageDestinationCreateWithData(v88, identifier, 1uLL, 0);

  if (v90)
  {
    v140 = kCGImageDestinationLossyCompressionQuality;
    v91 = [NSNumber numberWithDouble:v25];
    v141 = v91;
    v92 = [NSDictionary dictionaryWithObjects:&v141 forKeys:&v140 count:1];

    v93 = v92;
    CGImageDestinationSetProperties(v90, v92);
    if (v133)
    {
      v136 = v92;
      Mutable = CFDictionaryCreateMutable(0, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, kCGImageDestinationLossyCompressionQuality, [NSNumber numberWithDouble:v25]);
      v95 = CGImageSourceCopyPropertiesAtIndex(isrc, 0, 0);
      if (CFDictionaryContainsKey(v95, kCGImagePropertyDPIWidth))
      {
        Value = CFDictionaryGetValue(v95, kCGImagePropertyDPIWidth);
        CFDictionaryAddValue(Mutable, kCGImagePropertyDPIWidth, Value);
      }

      if (CFDictionaryContainsKey(v95, kCGImagePropertyDPIHeight))
      {
        v97 = CFDictionaryGetValue(v95, kCGImagePropertyDPIHeight);
        CFDictionaryAddValue(Mutable, kCGImagePropertyDPIHeight, v97);
      }

      CGImageDestinationAddImage(v90, ThumbnailAtIndex, Mutable);
      v28 = v131;
      if (v95)
      {
        CFRelease(v95);
      }

      v93 = v136;
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      CGImageDestinationAddImage(v90, ThumbnailAtIndex, 0);
      v28 = v131;
    }

    CGImageDestinationFinalize(v90);
    CFRelease(v90);
    v106 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
    mAssetOwner = self->mAssetOwner;
    v138 = 0;
    v98 = v127;
    v32 = [(CRLPreinsertionAssetWrapper *)v106 initWithData:v88 filename:v127 owner:mAssetOwner error:&v138];
    v104 = v138;
    if (v32)
    {
      v101 = v129;
    }

    else
    {
      v137 = v93;
      v134 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101344930();
      }

      v108 = off_1019EDA68;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        sub_101344958(v104, v134);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101344A10();
      }

      v109 = off_1019EDA68;
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        sub_10134479C();
      }

      v110 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
      v111 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
      [CRLAssertionHandler handleFailureInFunction:v110 file:v111 lineNumber:282 isFatal:0 description:"Error %@ creating pre-insertion asset wrapper for data.", v104, v125];

      v28 = v131;
      v101 = v129;
      v98 = v127;
      v93 = v137;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101344A38();
    }

    v98 = v127;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101344A60();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101344AFC();
    }

    v101 = v129;
    v102 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v102);
    }

    v103 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
    v104 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
    v93 = v103;
    [CRLAssertionHandler handleFailureInFunction:v103 file:v104 lineNumber:244 isFatal:0 description:"invalid nil value for '%{public}s'", "destination", v125];
    v32 = 0;
    v28 = v131;
  }

  CFRelease(ThumbnailAtIndex);
LABEL_138:

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_141:
  v112 = v32;

  return v32;
}

- (CGSize)desiredSize
{
  width = self->mDesiredSize.width;
  height = self->mDesiredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)desiredAlternateSizeIfConvertedToPNG
{
  width = self->mDesiredAlternateSizeIfConvertedToPNG.width;
  height = self->mDesiredAlternateSizeIfConvertedToPNG.height;
  result.height = height;
  result.width = width;
  return result;
}

@end