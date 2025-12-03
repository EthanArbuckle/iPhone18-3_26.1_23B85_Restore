@interface CRLMoviePosterImageGenerator
- (CGImage)copyAssetCoverArtMetadataWithError:(id *)error;
- (CGImage)p_applyPreferredTransform:(CGAffineTransform *)transform toImage:(CGImage *)image;
- (CGImage)p_copyCGImageUsingAssetImageGeneratorForTime:(id *)time error:(id *)error;
- (CGImage)p_copyCGImageUsingAssetReaderForTime:(id *)time;
- (CGSize)maximumSize;
- (CGSize)p_scaledSizeForRenderSize:(CGSize)result;
- (CRLMoviePosterImageGenerator)initWithAsset:(id)asset;
- (id)p_coverArtDataWith:(id)with;
- (void)dealloc;
- (void)generateCGImageAsynchronouslyForTime:(id *)time completionHandler:(id)handler;
@end

@implementation CRLMoviePosterImageGenerator

- (CRLMoviePosterImageGenerator)initWithAsset:(id)asset
{
  assetCopy = asset;
  v17.receiver = self;
  v17.super_class = CRLMoviePosterImageGenerator;
  v6 = [(CRLMoviePosterImageGenerator *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
    v8 = [[AVAssetImageGenerator alloc] initWithAsset:assetCopy];
    assetImageGenerator = v7->_assetImageGenerator;
    v7->_assetImageGenerator = v8;

    v10 = v7->_assetImageGenerator;
    v15 = *&kCMTimeZero.value;
    v14 = v15;
    epoch = kCMTimeZero.epoch;
    v11 = epoch;
    [(AVAssetImageGenerator *)v10 setRequestedTimeToleranceAfter:&v15];
    v12 = v7->_assetImageGenerator;
    v15 = v14;
    epoch = v11;
    [(AVAssetImageGenerator *)v12 setRequestedTimeToleranceBefore:&v15];
    [(AVAssetImageGenerator *)v7->_assetImageGenerator setAppliesPreferredTrackTransform:1];
    v7->_maximumSize = CGSizeZero;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CRLMoviePosterImageGenerator;
  [(CRLMoviePosterImageGenerator *)&v2 dealloc];
}

- (CGSize)p_scaledSizeForRenderSize:(CGSize)result
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  if (width != CGSizeZero.width || height != CGSizeZero.height)
  {
    if (width <= 0.0)
    {
      width = result.width;
    }

    if (height <= 0.0)
    {
      height = result.height;
    }

    if (width < result.width || height < result.height)
    {
      v7 = width / result.width;
      v8 = height / result.height;
      result.height = result.height * v7;
      result.width = result.width * v8;
      if (v7 >= v8)
      {
        result.height = height;
      }

      else
      {
        result.width = width;
      }
    }
  }

  return result;
}

- (CGImage)p_copyCGImageUsingAssetReaderForTime:(id *)time
{
  v5 = objc_autoreleasePoolPush();
  v6 = [AVAssetReader alloc];
  asset = self->_asset;
  v30 = 0;
  v8 = [v6 initWithAsset:asset error:&v30];
  v9 = v30;
  if (v8)
  {
    *&start.start.value = *&time->var0;
    start.start.epoch = time->var3;
    duration = kCMTimePositiveInfinity;
    CMTimeRangeMake(&v29, &start.start, &duration);
    start = v29;
    [v8 setTimeRange:&start];
    v10 = [(AVAsset *)self->_asset crl_firstTrackWithMediaType:AVMediaTypeVideo];
    v11 = v10;
    if (v10)
    {
      [v10 naturalSize];
      [(CRLMoviePosterImageGenerator *)self p_scaledSizeForRenderSize:?];
      v13 = v12;
      v31[0] = kCVPixelBufferWidthKey;
      v14 = [NSNumber numberWithDouble:?];
      v32[0] = v14;
      v31[1] = kCVPixelBufferHeightKey;
      v15 = [NSNumber numberWithDouble:v13];
      v32[1] = v15;
      v32[2] = &off_1018E20B8;
      v31[2] = kCVPixelBufferPixelFormatTypeKey;
      v31[3] = kCVPixelBufferMetalCompatibilityKey;
      v32[3] = &__kCFBooleanTrue;
      v16 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];

      v17 = [[AVAssetReaderTrackOutput alloc] initWithTrack:v11 outputSettings:v16];
      [v8 addOutput:v17];
      [v8 startReading];
      copyNextSampleBuffer = [v17 copyNextSampleBuffer];
      if (copyNextSampleBuffer)
      {
        v19 = copyNextSampleBuffer;
        v20 = atomic_load(&self->_isCancelled);
        if (!v20 && CMSampleBufferGetImageBuffer(copyNextSampleBuffer))
        {
          atomic_load(&self->_isCancelled);
        }

        CFRelease(v19);
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101315EFC();
        }

        v21 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101315F24(v21);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131600C();
        }

        v22 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130F3A8(v22);
        }

        v23 = [NSString stringWithUTF8String:"[CRLMoviePosterImageGenerator p_copyCGImageUsingAssetReaderForTime:]"];
        v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePosterImageGenerator.m"];
        error = [v8 error];
        [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:111 isFatal:0 description:"Failed to copy buffer when generating poster frame using AVAssetReader (error: %@). Falling back to AVAssetImageGenerator.", error];
      }

      [v8 cancelReading];
    }
  }

  objc_autoreleasePoolPop(v5);
  return 0;
}

- (CGImage)p_applyPreferredTransform:(CGAffineTransform *)transform toImage:(CGImage *)image
{
  CGImageGetWidth(image);
  CGImageGetHeight(image);
  v6 = sub_10011ECB4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *&transform->c;
  *&v25.a = *&transform->a;
  *&v25.c = v14;
  *&v25.tx = *&transform->tx;
  *&v14 = v9;
  v26 = CGRectApplyAffineTransform(*&v6, &v25);
  width = v26.size.width;
  height = v26.size.height;
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  ColorSpace = CGImageGetColorSpace(image);
  BitmapInfo = CGImageGetBitmapInfo(image);
  v20 = CGBitmapContextCreate(0, width, height, BitsPerComponent, (width * BitsPerComponent), ColorSpace, BitmapInfo);
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  CGContextScaleCTM(v20, -1.0, -1.0);
  CGContextTranslateCTM(v21, -width, -height);
  v22 = *&transform->c;
  *&v25.a = *&transform->a;
  *&v25.c = v22;
  *&v25.tx = *&transform->tx;
  CGContextConcatCTM(v21, &v25);
  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  CGContextDrawImage(v21, v27, image);
  Image = CGBitmapContextCreateImage(v21);
  CGContextRelease(v21);
  return Image;
}

- (CGImage)p_copyCGImageUsingAssetImageGeneratorForTime:(id *)time error:(id *)error
{
  assetImageGenerator = self->_assetImageGenerator;
  if (!assetImageGenerator)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101316034();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101316048();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013160F8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLMoviePosterImageGenerator p_copyCGImageUsingAssetImageGeneratorForTime:error:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePosterImageGenerator.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:165 isFatal:0 description:"invalid nil value for '%{public}s'", "_assetImageGenerator"];

    assetImageGenerator = self->_assetImageGenerator;
  }

  [(AVAssetImageGenerator *)assetImageGenerator setMaximumSize:self->_maximumSize.width, self->_maximumSize.height];
  v11 = self->_assetImageGenerator;
  v13 = *&time->var0;
  var3 = time->var3;
  return [(AVAssetImageGenerator *)v11 copyCGImageAtTime:&v13 actualTime:0 error:error];
}

- (id)p_coverArtDataWith:(id)with
{
  withCopy = with;
  v4 = [AVMetadataItem metadataItemsFromArray:withCopy filteredByIdentifier:AVMetadataCommonIdentifierArtwork];
  firstObject = [v4 firstObject];

  if (!firstObject)
  {
    v6 = [AVMetadataItem metadataItemsFromArray:withCopy filteredByIdentifier:@"caaf/aart"];
    firstObject = [v6 firstObject];
  }

  dataValue = [firstObject dataValue];

  return dataValue;
}

- (CGImage)copyAssetCoverArtMetadataWithError:(id *)error
{
  commonMetadata = [(AVAsset *)self->_asset commonMetadata];
  v6 = [(CRLMoviePosterImageGenerator *)self p_coverArtDataWith:commonMetadata];
  if (v6 && ([CRLImage imageWithData:v6], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = CGImageRetain([v7 CGImage]);
  }

  else if (error)
  {
    [NSError errorWithDomain:AVFoundationErrorDomain code:-11832 userInfo:0];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)generateCGImageAsynchronouslyForTime:(id *)time completionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101316120();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101316134();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013161E4();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLMoviePosterImageGenerator generateCGImageAsynchronouslyForTime:completionHandler:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePosterImageGenerator.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:214 isFatal:0 description:"invalid nil value for '%{public}s'", "handler"];

    goto LABEL_14;
  }

  if (![(AVAsset *)self->_asset crl_containsVideoTracks])
  {
    v12 = 0;
    v11 = [(CRLMoviePosterImageGenerator *)self copyAssetCoverArtMetadataWithError:&v12];
    v9 = v12;
    handlerCopy[2](handlerCopy, v11, v11 == 0, v9);
LABEL_14:

    goto LABEL_15;
  }

  v7 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010FA80;
  block[3] = &unk_10183D380;
  block[4] = self;
  v15 = *&time->var0;
  var3 = time->var3;
  v14 = handlerCopy;
  dispatch_async(v7, block);

LABEL_15:
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end