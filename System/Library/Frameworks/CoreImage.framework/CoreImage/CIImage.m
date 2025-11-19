@interface CIImage
+ (CIImage)blackImage;
+ (CIImage)blueImage;
+ (CIImage)clearImage;
+ (CIImage)cyanImage;
+ (CIImage)emptyImage;
+ (CIImage)grayImage;
+ (CIImage)greenImage;
+ (CIImage)imageWithArrayOfImages:(id)a3 selector:(id)a4;
+ (CIImage)imageWithAttributedString:(id)a3 format:(int)a4;
+ (CIImage)imageWithAttributedString:(id)a3 format:(int)a4 options:(id)a5;
+ (CIImage)imageWithBitmapData:(NSData *)data bytesPerRow:(size_t)bytesPerRow size:(CGSize)size format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace;
+ (CIImage)imageWithBitmapData:(id)a3 bytesPerRow:(unint64_t)a4 size:(CGSize)a5 format:(int)a6 options:(id)a7;
+ (CIImage)imageWithCGImage:(CGImageRef)image options:(NSDictionary *)options;
+ (CIImage)imageWithCGImageSource:(CGImageSourceRef)source index:(size_t)index options:(NSDictionary *)dict;
+ (CIImage)imageWithCGLayer:(CGLayerRef)layer options:(NSDictionary *)options;
+ (CIImage)imageWithCVImageBuffer:(CVImageBufferRef)imageBuffer options:(NSDictionary *)options;
+ (CIImage)imageWithCVPixelBuffer:(CVPixelBufferRef)pixelBuffer options:(NSDictionary *)options;
+ (CIImage)imageWithColor:(CIColor *)color;
+ (CIImage)imageWithContentsOfFile:(id)a3 options:(id)a4;
+ (CIImage)imageWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options;
+ (CIImage)imageWithData:(NSData *)data;
+ (CIImage)imageWithData:(NSData *)data options:(NSDictionary *)options;
+ (CIImage)imageWithDepthData:(AVDepthData *)data;
+ (CIImage)imageWithDepthData:(AVDepthData *)data options:(NSDictionary *)options;
+ (CIImage)imageWithExtent:(CGRect)a3 processorDescription:(id)a4 argumentDigest:(unint64_t)a5 outputFormat:(int)a6 options:(id)a7 processor:(id)a8;
+ (CIImage)imageWithIOSurface:(IOSurfaceRef)surface options:(NSDictionary *)options;
+ (CIImage)imageWithImageProvider:(id)a3 userInfo:(id)a4 size:(CGSize)a5 format:(int)a6 flipped:(BOOL)a7 colorSpace:(CGColorSpace *)a8;
+ (CIImage)imageWithImageProvider:(id)p size:(size_t)width :(size_t)height format:(CIFormat)f colorSpace:(CGColorSpaceRef)cs options:(NSDictionary *)options;
+ (CIImage)imageWithInternalRepresentation:(void *)a3;
+ (CIImage)imageWithMTLTexture:(id)texture options:(NSDictionary *)options;
+ (CIImage)imageWithPortaitEffectsMatte:(AVPortraitEffectsMatte *)matte;
+ (CIImage)imageWithPortaitEffectsMatte:(AVPortraitEffectsMatte *)matte options:(NSDictionary *)options;
+ (CIImage)imageWithPortraitEffectsMatte:(id)a3;
+ (CIImage)imageWithPortraitEffectsMatte:(id)a3 options:(id)a4;
+ (CIImage)imageWithSemanticSegmentationMatte:(AVSemanticSegmentationMatte *)matte;
+ (CIImage)imageWithSemanticSegmentationMatte:(AVSemanticSegmentationMatte *)matte options:(NSDictionary *)options;
+ (CIImage)imageWithTexture:(unsigned int)a3 size:(CGSize)a4 options:(id)a5;
+ (CIImage)imageWithTexture:(unsigned int)name size:(CGSize)size flipped:(BOOL)flipped colorSpace:(CGColorSpaceRef)colorSpace;
+ (CIImage)imageWithTexture:(unsigned int)name size:(CGSize)size flipped:(BOOL)flipped options:(NSDictionary *)options;
+ (CIImage)imageWithYCCImage:(id)a3 matrix:(int)a4 fullRange:(BOOL)a5 precision:(int)a6 colorSpace:(CGColorSpace *)a7;
+ (CIImage)imageWithYImage:(id)a3 CrCbImage:(id)a4 CrCbScale:(int)a5 matrix:(int)a6 fullRange:(BOOL)a7 precision:(int)a8 colorSpace:(CGColorSpace *)a9;
+ (CIImage)magentaImage;
+ (CIImage)redImage;
+ (CIImage)whiteImage;
+ (CIImage)yellowImage;
+ (id)clearImage:(CGRect)a3;
+ (id)imageForRenderingWithMPS:(id)a3 orNonMPS:(id)a4;
+ (id)imageForRenderingWithMetal:(id)a3 orNonMetal:(id)a4;
+ (id)imageForRenderingWithMetalContext:(id)a3 orOpenGLContextUsingMetal:(id)a4 orNonMetalContext:(id)a5;
+ (id)imageYCC444:(id)a3 matrix:(int)a4 fullRange:(BOOL)a5 precision:(int)a6 colorSpace:(CGColorSpace *)a7;
+ (id)noiseImage;
+ (id)noiseImageNearest;
+ (id)noiseImagePadded;
+ (id)smartColorAdjustmentsForValue:(double)a3 andStatistics:(id)a4;
+ (id)smartToneAdjustmentsForValue:(double)a3 andStatistics:(id)a4;
+ (id)smartToneAdjustmentsForValue:(double)a3 localLightAutoValue:(double)a4 andStatistics:(id)a5;
- (BOOL)isOpaque;
- (CGAffineTransform)imageTransformForCGOrientation:(SEL)a3;
- (CGAffineTransform)imageTransformForOrientation:(SEL)a3;
- (CGAffineTransform)inverseImageTransformForOrientation:(SEL)a3;
- (CGColorSpace)_copyHDRColorspaceFromSource:(CGImageSource *)a3 index:(unint64_t)a4;
- (CGImage)_cgImageGraphRepresentation;
- (CGImageRef)CGImage;
- (CGPoint)calcIntersection:(CGPoint)a3 slope1:(CGPoint)a4 pt2:(CGPoint)a5 slope2:(CGPoint)a6;
- (CGPoint)pointWithDictionary:(id)a3 name:(id)a4 index:(int)a5 transformedBy:(CGAffineTransform *)a6;
- (CGRect)extent;
- (CGRect)regionOfInterestForImage:(CIImage *)image inRect:(CGRect)rect;
- (CIFilterShape)definition;
- (CIImage)imageByApplyingCGOrientation:(CGImagePropertyOrientation)orientation;
- (CIImage)imageByApplyingFilter:(NSString *)filterName withInputParameters:(NSDictionary *)params;
- (CIImage)imageByApplyingGaussianBlurWithSigma:(double)sigma;
- (CIImage)imageByApplyingOrientation:(int)orientation;
- (CIImage)imageByApplyingTransform:(CGAffineTransform *)matrix;
- (CIImage)imageByApplyingTransform:(CGAffineTransform *)matrix highQualityDownsample:(BOOL)highQualityDownsample;
- (CIImage)imageByClampingToExtent;
- (CIImage)imageByClampingToRect:(CGRect)rect;
- (CIImage)imageByColorMatchingColorSpaceToWorkingSpace:(CGColorSpaceRef)colorSpace;
- (CIImage)imageByColorMatchingWorkingSpaceToColorSpace:(CGColorSpaceRef)colorSpace;
- (CIImage)imageByCompositingOverImage:(CIImage *)dest;
- (CIImage)imageByConvertingLabToWorkingSpace;
- (CIImage)imageByConvertingWorkingSpaceToLab;
- (CIImage)imageByCroppingToRect:(CGRect)rect;
- (CIImage)imageByInsertingIntermediate:(BOOL)cache;
- (CIImage)imageByPremultiplyingAlpha;
- (CIImage)imageBySamplingLinear;
- (CIImage)imageBySamplingNearest;
- (CIImage)imageBySettingProperties:(NSDictionary *)properties;
- (CIImage)imageByUnpremultiplyingAlpha;
- (CIImage)imageWithExtent:(CGRect)a3 processorDescription:(id)a4 argumentDigest:(unint64_t)a5 inputFormat:(int)a6 outputFormat:(int)a7 options:(id)a8 roiCallback:(id)a9 processor:(id)a10;
- (CIImage)imageWithMesh:(id)a3 transform:(CGAffineTransform *)a4;
- (CIImage)initWithArrayOfImages:(id)a3 selector:(id)a4;
- (CIImage)initWithAttributedString:(id)a3 format:(int)a4 options:(id)a5;
- (CIImage)initWithBitmapData:(NSData *)data bytesPerRow:(size_t)bytesPerRow size:(CGSize)size format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace;
- (CIImage)initWithBitmapData:(id)a3 bytesPerRow:(unint64_t)a4 size:(CGSize)a5 format:(int)a6 options:(id)a7;
- (CIImage)initWithCGImage:(CGImageRef)image options:(NSDictionary *)options;
- (CIImage)initWithCGImageSource:(CGImageSourceRef)source index:(size_t)index options:(NSDictionary *)dict;
- (CIImage)initWithCGLayer:(CGLayerRef)layer options:(NSDictionary *)options;
- (CIImage)initWithCVImageBuffer:(CVImageBufferRef)imageBuffer options:(NSDictionary *)options;
- (CIImage)initWithCVPixelBuffer:(CVPixelBufferRef)pixelBuffer options:(NSDictionary *)options;
- (CIImage)initWithCoder:(id)a3;
- (CIImage)initWithColor:(CIColor *)color;
- (CIImage)initWithContentsOfFile:(id)a3 options:(id)a4;
- (CIImage)initWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options;
- (CIImage)initWithData:(NSData *)data options:(NSDictionary *)options;
- (CIImage)initWithDepthData:(AVDepthData *)data options:(NSDictionary *)options;
- (CIImage)initWithImageProvider:(id)a3 userInfo:(id)a4 size:(CGSize)a5 format:(int)a6 flipped:(BOOL)a7 colorSpace:(CGColorSpace *)a8;
- (CIImage)initWithImageProvider:(id)p size:(size_t)width :(size_t)height format:(CIFormat)f colorSpace:(CGColorSpaceRef)cs options:(NSDictionary *)options;
- (CIImage)initWithMTLTexture:(id)texture options:(NSDictionary *)options;
- (CIImage)initWithPortaitEffectsMatte:(AVPortraitEffectsMatte *)matte options:(NSDictionary *)options;
- (CIImage)initWithSemanticSegmentationMatte:(AVSemanticSegmentationMatte *)matte options:(NSDictionary *)options;
- (CIImage)initWithTexture:(unsigned int)a3 size:(CGSize)a4 options:(id)a5;
- (CIImage)initWithTexture:(unsigned int)name size:(CGSize)size flipped:(BOOL)flipped colorSpace:(CGColorSpaceRef)colorSpace;
- (CIImage)initWithTexture:(unsigned int)name size:(CGSize)size flipped:(BOOL)flipped options:(NSDictionary *)options;
- (CVPixelBufferRef)pixelBuffer;
- (MTLTexture)metalTexture;
- (NSArray)autoAdjustmentFiltersWithOptions:(NSDictionary *)options;
- (NSURL)url;
- (__CVBuffer)_pixelBufferFromAuxProps:(__CFDictionary *)a3 linear:(BOOL)a4;
- (__IOSurface)_originalIOSurface;
- (float)_makernoteMeteorHeadroom;
- (id)TIFFRepresentation;
- (id)_autoRedEyeFilterWithFeatures:(id)a3 imageProperties:(id)a4 context:(id)a5 options:(id)a6;
- (id)_dictForFeature:(id)a3 invOrientationTransform:(CGAffineTransform *)a4 extent:(CGRect)a5;
- (id)_dotStringRepresentation;
- (id)_imageByApplyingColorMatrixRed:(CIImage *)self green:(SEL)a2 blue:bias:;
- (id)_imageByApplyingGainMap:(id)a3 headroom:(float)a4;
- (id)_imageByApplyingGamma:(double)a3;
- (id)_imageByApplyingTransform:(CGAffineTransform *)a3 highQualityDownsample:(Trilean)a4;
- (id)_imageByToneMappingColorSpaceToWorkingSpace:(CGColorSpace *)a3 targetHeadroom:(float)a4 constrainedHigh:(BOOL)a5;
- (id)_initNaiveWithCGImage:(CGImage *)a3 options:(id)a4;
- (id)_initWithBitmapData:(id)a3 bytesPerRow:(unint64_t)a4 size:(CGSize)a5 format:(int)a6 options:(id)a7;
- (id)_initWithCVImageBuffer:(__CVBuffer *)a3 options:(id)a4;
- (id)_initWithIOSurface:(__IOSurface *)a3 options:(id)a4 owner:(void *)a5;
- (id)_initWithImageProvider:(id)a3 :(id)a4 width:(unint64_t)a5 height:(unint64_t)a6 format:(int)a7 colorSpace:(CGColorSpace *)a8 surfaceCache:(BOOL)a9 options:(id)a10;
- (id)_initWithInternalRepresentation:(void *)a3;
- (id)_pdfDataRepresentation;
- (id)_scaleImageToMaxDimension:(unsigned int)a3;
- (id)autoAdjustmentFiltersWithImageProperties:(id)a3 options:(id)a4;
- (id)autoPerspectiveFilterWithOptions:(id)a3;
- (id)autoPerspectiveResultWithOptions:(id)a3;
- (id)autoRedEyeFilterWithFeatures:(id)a3 imageProperties:(id)a4 options:(id)a5;
- (id)autoRedEyeFilterWithFeatures:(id)a3 options:(id)a4;
- (id)autoRotateFilterFFT:(id)a3 image:(CGImage *)a4 inputRect:(CGRect)a5 minTiltAngle:(float)a6 maxTiltAngle:(float)a7 detectVerticalLines:(BOOL)a8 thrVertAngle:(float)a9 thrDomAngleDiff:(float)a10;
- (id)debugDescription;
- (id)description;
- (id)filteredImage:(id)a3 keysAndValues:(id)a4;
- (id)getAutoRotateFilter:(id)a3 ciImage:(id)a4 inputRect:(CGRect)a5 rotateCropRect:(CGRect *)a6 minTiltAngle:(float)a7 maxTiltAngle:(float)a8 detectVerticalLines:(BOOL)a9 thrVertAngle:(float)a10 thrDomAngleDiff:(float)a11;
- (id)imageByColorMatchingWorkingSpaceToRGBorGrayColorSpace:(CGColorSpace *)a3;
- (id)imageBySettingAssociatedAlpha;
- (id)imageBySettingContentAverageLightLevel:(float)a3;
- (id)imageBySettingContentHeadroom:(float)a3;
- (id)imageBySettingDepthData:(id)a3;
- (id)imageBySettingPropertiesNoCopy:(id)a3;
- (id)imageBySettingUnassociatedAlpha;
- (id)imageByTaggingWithColorSpace:(CGColorSpace *)a3;
- (id)imageByToneMappingColorSpaceToWorkingSpace:(CGColorSpace *)a3;
- (id)initAuxiliaryWithImageSource:(CGImageSource *)a3 index:(unint64_t)a4 options:(id)a5 depth:(BOOL)a6;
- (id)initForRenderingWithMPS:(id)a3 orNonMPS:(id)a4;
- (id)initForRenderingWithMetal:(id)a3 orNonMetal:(id)a4;
- (id)initForRenderingWithMetalContext:(id)a3 orOpenGLContextUsingMetal:(id)a4 orNonMetalContext:(id)a5;
- (id)initGainmapWithImageSource:(CGImageSource *)a3 options:(id)a4;
- (id)initMatteWithImageSource:(CGImageSource *)a3 options:(id)a4;
- (id)localLightStatisticsWithProxy:(BOOL)a3;
- (id)metalImageByApplyingFilter:(id)a3;
- (id)metalImageByApplyingFilter:(id)a3 withInputParameters:(id)a4;
- (id)smartBlackAndWhiteAdjustmentsForValue:(double)a3 andStatistics:(id)a4;
- (id)smartBlackAndWhiteStatistics;
- (id)smartColorStatistics;
- (id)smartToneStatistics;
- (id)userInfo;
- (unint64_t)digest;
- (unint64_t)recipeDigest;
- (void)_setOriginalCGImage:(CGImage *)a3 options:(id)a4;
- (void)_setOriginalCVPixelBuffer:(__CVBuffer *)a3 options:(id)a4;
- (void)_setOriginalMTLTexture:(id)a3 options:(id)a4;
- (void)_setOriginalSurface:(__IOSurface *)a3 options:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)getAutocropRect:(id)a3 rotateXfrm:(CGAffineTransform *)a4 inputImageRect:(CGRect)a5 clipRect:(CGRect *)a6;
- (void)printTree;
- (void)setValue:(id)a3 forKeyPath:(id)a4;
- (void)writeToTIFF:(id)a3;
@end

@implementation CIImage

+ (CIImage)emptyImage
{
  {
    +[CIImage emptyImage]::empty = [[CIImage alloc] initWithEmptyClearColor];
  }

  return +[CIImage emptyImage]::empty;
}

- (CGRect)extent
{
  v3.origin.x = (*(*self->_priv + 88))(self->_priv, a2);
  v4 = CGRectInset(v3, 0.00100000005, 0.00100000005);

  return CGRectIntegral(v4);
}

+ (CIImage)blackImage
{
  {
    +[CIImage blackImage]::i = [[CIImage alloc] initWithColor:+[CIColor blackColor]];
  }

  return +[CIImage blackImage]::i;
}

+ (CIImage)whiteImage
{
  {
    +[CIImage whiteImage]::i = [[CIImage alloc] initWithColor:+[CIColor whiteColor]];
  }

  return +[CIImage whiteImage]::i;
}

+ (CIImage)grayImage
{
  {
    +[CIImage grayImage]::i = [[CIImage alloc] initWithColor:+[CIColor grayColor]];
  }

  return +[CIImage grayImage]::i;
}

+ (CIImage)redImage
{
  {
    +[CIImage redImage]::i = [[CIImage alloc] initWithColor:+[CIColor redColor]];
  }

  return +[CIImage redImage]::i;
}

+ (CIImage)greenImage
{
  {
    +[CIImage greenImage]::i = [[CIImage alloc] initWithColor:+[CIColor greenColor]];
  }

  return +[CIImage greenImage]::i;
}

+ (CIImage)blueImage
{
  {
    +[CIImage blueImage]::i = [[CIImage alloc] initWithColor:+[CIColor blueColor]];
  }

  return +[CIImage blueImage]::i;
}

+ (CIImage)cyanImage
{
  {
    +[CIImage cyanImage]::i = [[CIImage alloc] initWithColor:+[CIColor cyanColor]];
  }

  return +[CIImage cyanImage]::i;
}

+ (CIImage)magentaImage
{
  {
    +[CIImage magentaImage]::i = [[CIImage alloc] initWithColor:+[CIColor magentaColor]];
  }

  return +[CIImage magentaImage]::i;
}

+ (CIImage)yellowImage
{
  {
    +[CIImage yellowImage]::i = [[CIImage alloc] initWithColor:+[CIColor yellowColor]];
  }

  return +[CIImage yellowImage]::i;
}

+ (CIImage)clearImage
{
  {
    +[CIImage clearImage]::i = [[CIImage alloc] initWithColor:+[CIColor clearColor]];
  }

  return +[CIImage clearImage]::i;
}

- (void)_setOriginalSurface:(__IOSurface *)a3 options:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v12 = a3;
  v8 = *v15;
  v9 = 1;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(a4);
      }

      v11 = *(*(&v14 + 1) + 8 * i);
      v18[0] = @"kCIImageCacheHint";
      v18[1] = @"kCIImageCacheImmediately";
      v18[2] = @"kCIImageContentDigest";
      v18[3] = @"CIImageEdgesAreClear";
      v18[4] = @"kCIImageAVDepthData";
      v18[5] = @"kCIImageAVPortraitEffectsMatte";
      v18[6] = @"kCIImageAVSemanticSegmentationMatte";
      v18[7] = @"CIImageProperties";
      if (([objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:{8), "containsObject:", v11}] & 1) == 0)
      {
        v9 &= [v11 hasPrefix:@"kCGImageSource"];
      }
    }

    v7 = [a4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  }

  while (v7);
  a3 = v12;
  if (v9)
  {
LABEL_11:
    (*(*self->_priv + 352))(self->_priv, a3);
  }
}

- (__IOSurface)_originalIOSurface
{
  v2 = (*(*self->_priv + 336))(self->_priv, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 != IOSurfaceGetTypeID())
  {
    return 0;
  }

  return v3;
}

- (id)_initWithIOSurface:(__IOSurface *)a3 options:(id)a4 owner:(void *)a5
{
  if (!a3)
  {
    goto LABEL_19;
  }

  PixelFormat = IOSurfaceGetPixelFormat(a3);
  v9 = PixelFormat;
  if (PixelFormat != 1919365992 && PixelFormat != 1919365990)
  {
    if (CI::PixelFormatType_is_source_supported(PixelFormat))
    {
      v15 = CI::format_from_IOSurface(a3, v14);
      v16 = [a4 objectForKey:@"CIImageSurfaceFormat"];
      if (!v16 || (v17 = [v16 unsignedIntValue], v18 = CI::format_bits_per_pixel(v15), v15 = v17, v18 == CI::format_bits_per_pixel(v17)))
      {
        if ([a4 objectForKey:@"CIImageFlipped"])
        {
          [objc_msgSend(a4 objectForKey:{@"CIImageFlipped", "BOOLValue"}];
        }

        if (CI::format_has_unpremul_alpha(v15))
        {
          v23 = 2;
        }

        else if (CI::format_has_alpha(v15))
        {
          v23 = 0;
        }

        else if (CI::format_has_x(v15))
        {
          v23 = -1;
        }

        else
        {
          v23 = 1;
        }

        IOSurfaceGetBulkAttachments();
        OptionAlphaMode(a4, v23);
        if (a4)
        {
          [a4 objectForKey:@"CIImageEdgesAreClear"];
        }

        v24 = MEMORY[0x1E695E118];
        if (a4)
        {
          [a4 objectForKey:@"CIImageClampToEdge"];
          v25 = [a4 objectForKey:@"CIImageEdgeRepeat"];
        }

        else
        {
          v25 = 0;
        }

        if ((v25 == v24 || v25 == &unk_1F1081DE8) && (v26 = ci_logger_api(), os_log_type_enabled(v26, OS_LOG_TYPE_ERROR)))
        {
          [CIImage _initWithIOSurface:options:owner:];
          if (!a4)
          {
            goto LABEL_39;
          }
        }

        else if (!a4)
        {
LABEL_39:
          v31 = [a4 objectForKey:@"CIImageColorSpace"];
          if ([MEMORY[0x1E695DFB0] null] != v31 && !CI_NO_CM() && !v31)
          {
            DeviceRGB = CopySurfaceColorSpace(a3);
            if (DeviceRGB || (DeviceRGB = CGColorSpaceCreateDeviceRGB()) != 0)
            {
              CFAutorelease(DeviceRGB);
            }
          }

          if ([a4 objectForKey:@"kCIImageToneMapHDRtoSDR"] && a4)
          {
            [a4 objectForKey:@"kCIImageToneMapHDRtoSDR"];
          }

          v27 = [a4 objectForKey:@"CIImageProperties"];
          v28 = [a4 objectForKey:@"kCIImageApplyOrientationProperty"];
          if ([v28 isEqual:MEMORY[0x1E695E118]])
          {
            v29 = [v27 objectForKey:*MEMORY[0x1E696DE78]];
            if (v29)
            {
              [v29 intValue];
            }

            if (v27 && [MEMORY[0x1E695DFB0] null] != v27)
            {
              v30 = &__block_literal_global_814;
LABEL_58:
              dictionaryDeepCopy(v27, v30);
            }
          }

          else if (v27 && [MEMORY[0x1E695DFB0] null] != v27)
          {
            v30 = &__block_literal_global_820;
            goto LABEL_58;
          }

          if ([a4 objectForKey:@"kCIImageYCCMatrix"])
          {
            [objc_msgSend(a4 objectForKey:{@"kCIImageYCCMatrix", "intValue"}];
          }

          OptionHeadroom(a4);
          OptionAverageLightLevel(a4);
          operator new();
        }

        [a4 objectForKey:@"CIImageNearestSampling"];
        [a4 objectForKey:@"kCIImageCacheHint"];
        goto LABEL_39;
      }

      v21 = ci_logger_api();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CIImage _initWithIOSurface:options:owner:];
      }
    }

    else if (v9 < 0x29)
    {
      v20 = ci_logger_api();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CIImage _initWithIOSurface:options:owner:];
      }
    }

    else
    {
      v19 = ci_logger_api();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CIImage _initWithIOSurface:options:owner:];
      }
    }

LABEL_19:

    return 0;
  }

  Width = IOSurfaceGetWidth(a3);
  Height = IOSurfaceGetHeight(a3);
  v12 = [a4 objectForKeyedSubscript:@"CIImageColorSpace"];
  if (!v12)
  {
    v12 = CopySurfaceColorSpace(a3);
    CFAutorelease(v12);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __44__CIImage__initWithIOSurface_options_owner___block_invoke;
  v33[3] = &unk_1E75C2E00;
  v33[4] = a3;
  v34 = v9;
  return [(CIImage *)self initWithImageProvider:v33 width:Width height:Height format:2056 colorSpace:v12 options:a4];
}

uint64_t __44__CIImage__initWithIOSurface_options_owner___block_invoke(uint64_t a1, char *__b, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v13 = __b;
    v14 = a7;
    do
    {
      memset_pattern8(v13, &unk_19CF23CA8, 8 * a6);
      v13 += a3;
      --v14;
    }

    while (v14);
  }

  v15 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __44__CIImage__initWithIOSurface_options_owner___block_invoke_2;
  v18[3] = &__block_descriptor_84_e22_v48__0r_v8Q16Q24Q32Q40l;
  v18[4] = a7;
  v18[5] = __b;
  v18[6] = a3;
  v18[7] = a5;
  v19 = *(a1 + 40);
  v18[8] = a6;
  v18[9] = a4;
  return SurfaceApplyPlaneReadOnlyBlock(v15, v18);
}

uint64_t __44__CIImage__initWithIOSurface_options_owner___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(result + 48);
    v9 = *(result + 80);
    v10 = a2 + *(result + 56) * a6;
    v11 = *(result + 40) + 2 * a3;
    do
    {
      if (v9 == 1919365990)
      {
        v15 = *(result + 64);
        if (v15)
        {
          v16 = (v10 + 4 * *(result + 72));
          v17 = v11;
          do
          {
            v18 = *v16++;
            _S0 = v18;
            __asm { FCVT            H0, S0 }

            *v17 = _S0;
            v17 += 4;
            --v15;
          }

          while (v15);
        }
      }

      else if (v9 == 1919365992)
      {
        v12 = *(result + 64);
        if (v12)
        {
          v13 = 0;
          v14 = 2 * *(result + 72);
          do
          {
            *(v11 + v13) = *(v10 + v14);
            v14 += 2;
            v13 += 8;
            --v12;
          }

          while (v12);
        }
      }

      ++v7;
      v10 += a6;
      v11 += v8;
    }

    while (v7 != v6);
  }

  return result;
}

+ (CIImage)imageWithIOSurface:(IOSurfaceRef)surface options:(NSDictionary *)options
{
  v4 = [[CIImage alloc] initWithIOSurface:surface options:options];

  return v4;
}

- (void)_setOriginalCGImage:(CGImage *)a3 options:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v12 = a3;
  v8 = *v15;
  v9 = 1;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(a4);
      }

      v11 = *(*(&v14 + 1) + 8 * i);
      v18[0] = @"kCIImageCacheHint";
      v18[1] = @"kCIImageCacheImmediately";
      v18[2] = @"kCIImageContentDigest";
      v18[3] = @"CIImageEdgesAreClear";
      v18[4] = @"kCIImageAVDepthData";
      v18[5] = @"kCIImageAVPortraitEffectsMatte";
      v18[6] = @"kCIImageAVSemanticSegmentationMatte";
      v18[7] = @"CIImageProperties";
      if (([objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:{8), "containsObject:", v11}] & 1) == 0)
      {
        v9 &= [v11 hasPrefix:@"kCGImageSource"];
      }
    }

    v7 = [a4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  }

  while (v7);
  a3 = v12;
  if (v9)
  {
LABEL_11:
    (*(*self->_priv + 344))(self->_priv, a3);
  }
}

- (CGImageRef)CGImage
{
  v2 = (*(*self->_priv + 328))(self->_priv, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 != CGImageGetTypeID())
  {
    return 0;
  }

  return v3;
}

+ (CIImage)imageWithCGImage:(CGImageRef)image options:(NSDictionary *)options
{
  v4 = [[CIImage alloc] initWithCGImage:image options:options];

  return v4;
}

+ (CIImage)imageWithCGImageSource:(CGImageSourceRef)source index:(size_t)index options:(NSDictionary *)dict
{
  v5 = [[CIImage alloc] initWithCGImageSource:source index:index options:dict];

  return v5;
}

- (id)_initNaiveWithCGImage:(CGImage *)a3 options:(id)a4
{
  if (a3)
  {
    v16.receiver = self;
    v16.super_class = CIImage;
    v6 = [(CIImage *)&v16 init];
    if (v6)
    {
      if ([a4 objectForKey:@"CIImageFlipped"])
      {
        [objc_msgSend(a4 objectForKey:{@"CIImageFlipped", "BOOLValue"}];
      }

      v7 = MEMORY[0x1E695E118];
      if (a4)
      {
        [a4 objectForKey:@"CIImageEdgesAreClear"];
        [a4 objectForKey:@"CIImageClampToEdge"];
        v8 = [a4 objectForKey:@"CIImageEdgeRepeat"];
      }

      else
      {
        v8 = 0;
      }

      if ((v8 == v7 || v8 == &unk_1F1081DE8) && (v9 = ci_logger_api(), os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
      {
        [CIImage _initNaiveWithCGImage:options:];
        if (!a4)
        {
          goto LABEL_15;
        }
      }

      else if (!a4)
      {
LABEL_15:
        v10 = [a4 objectForKey:@"CIImageColorSpace"];
        if ([MEMORY[0x1E695DFB0] null] != v10 && !CI_NO_CM() && !v10)
        {
          CGImageGetColorSpace(a3);
        }

        if ([a4 objectForKey:@"kCIImageToneMapHDRtoSDR"] && a4)
        {
          [a4 objectForKey:@"kCIImageToneMapHDRtoSDR"];
        }

        v11 = [a4 objectForKey:@"CIImageProperties"];
        v12 = [a4 objectForKey:@"kCIImageApplyOrientationProperty"];
        if ([v12 isEqual:MEMORY[0x1E695E118]])
        {
          v13 = [v11 objectForKey:*MEMORY[0x1E696DE78]];
          if (v13)
          {
            [v13 intValue];
          }

          if (v11 && [MEMORY[0x1E695DFB0] null] != v11)
          {
            v14 = &__block_literal_global_814;
LABEL_32:
            dictionaryDeepCopy(v11, v14);
          }
        }

        else if (v11 && [MEMORY[0x1E695DFB0] null] != v11)
        {
          v14 = &__block_literal_global_820;
          goto LABEL_32;
        }

        OptionHeadroom(a4);
        OptionAverageLightLevel(a4);
        operator new();
      }

      [a4 objectForKey:@"CIImageNearestSampling"];
      [a4 objectForKey:@"kCIImageCacheHint"];
      goto LABEL_15;
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

- (CIImage)initWithCGImage:(CGImageRef)image options:(NSDictionary *)options
{
  v122 = *MEMORY[0x1E69E9840];
  if (!image)
  {
    v25 = ci_logger_api();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CIImage initWithCGImage:options:];
    }

LABEL_23:

    return 0;
  }

  CopyWithColorSpace = image;
  if (CGImageGetImageProvider())
  {
    Property = CGImageProviderGetProperty();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v8 = [(NSDictionary *)options countByEnumeratingWithState:&v104 objects:v121 count:16];
      if (!v8)
      {
        goto LABEL_14;
      }

      v9 = v8;
      v10 = *v105;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v105 != v10)
          {
            objc_enumerationMutation(options);
          }

          v13 = *(*(&v104 + 1) + 8 * i);
          if (([v13 isEqual:@"CIImageProperties"] & 1) == 0)
          {
            v11 &= [v13 hasPrefix:@"kCGImageSource"];
          }
        }

        v9 = [(NSDictionary *)options countByEnumeratingWithState:&v104 objects:v121 count:16];
      }

      while (v9);
      if (v11)
      {
LABEL_14:
        v14 = [(NSDictionary *)options objectForKey:@"CIImageProperties"];
        if (v14)
        {
          Property = [Property imageBySettingProperties:v14];
        }

        return Property;
      }
    }
  }

  Width = CGImageGetWidth(CopyWithColorSpace);
  Height = CGImageGetHeight(CopyWithColorSpace);
  BytesPerRow = CGImageGetBytesPerRow(CopyWithColorSpace);
  if (!Width || !Height)
  {
    goto LABEL_23;
  }

  v20 = BytesPerRow;
  v100 = self;
  v21 = CI::alpha_mode_from_CGImage(CopyWithColorSpace, v19);
  v23 = CI::format_from_CGImage(CopyWithColorSpace, v22);
  if (CGImageGetMask())
  {
    v24 = 1;
  }

  else
  {
    v24 = CGImageGetMaskingColors() != 0;
  }

  Decode = CGImageGetDecode(CopyWithColorSpace);
  if (Decode && (v28 = Decode, ColorSpace = CGImageGetColorSpace(CopyWithColorSpace), (v30 = 2 * CGColorSpaceGetNumberOfComponents(ColorSpace)) != 0))
  {
    v31 = 0;
    while (v28[v31] == 0.0 && v28[v31 + 1] == 1.0)
    {
      v31 += 2;
      if (v31 >= v30)
      {
        goto LABEL_33;
      }
    }

    v32 = 1;
  }

  else
  {
LABEL_33:
    v32 = 0;
  }

  is_supported_source_bitmap = CI::format_is_supported_source_bitmap(v23);
  if ((v32 & 1) == 0 && ((is_supported_source_bitmap ^ 1 | v24) & 1) == 0)
  {
    if (options)
    {
      v34 = [(NSDictionary *)options mutableCopy];
    }

    else
    {
      v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v59 = v34;
    v60 = [(NSDictionary *)options valueForKey:@"kCIImageCacheImmediately"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v60)
    {
      v61 = [v60 BOOLValue];
    }

    else
    {
      v62 = atomic_load(&dword_1ED7C47BC[20]);
      v61 = v62 < 0x101 && v20 * Height < 0x4000001;
    }

    ImageProvider = CGImageGetImageProvider();
    v65 = ImageProvider;
    if (ImageProvider)
    {
      v66 = _cgImageProviderGetProperty(ImageProvider, @"kCGImageProviderPreferredTileWidth");
      v67 = _cgImageProviderGetProperty(v65, @"kCGImageProviderPreferredTileHeight");
      if (v66 >= 1 && v67 >= 1)
      {
        CI::Tileable::TileRectGridMakeEqualSizedTilesWithImageSize(v66, v67, Width, Height, buf);
        v68 = *&buf[8] - *buf == 24 && *(*buf + 8) - **buf == 24;
        v61 |= v68;
        v103[0] = buf;
        std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](v103);
      }
    }

    iosurface_limits(buf);
    if (Height <= *&buf[8])
    {
      v70 = iosurface_limits(v103);
      v71 = v65 ? v61 : 0;
      if (Width <= v103[0] && (v71 & 1) != 0)
      {
        v72 = [(NSDictionary *)options valueForKey:@"kCIImageRequestSurfaceFormat", v70];
        if (v72 && (v110 = *MEMORY[0x1E696E148], v111 = v72, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1], (v73 = CGImageProviderCopyIOSurface()) != 0) || (v73 = CGImageProviderCopyIOSurface()) != 0)
        {
          v74 = v73;
LABEL_102:
          if (![v59 objectForKey:@"CIImageColorSpace"])
          {
            [v59 setObject:CGImageGetColorSpace(CopyWithColorSpace) forKey:@"CIImageColorSpace"];
          }

          if (v21 == 2)
          {
            [v59 setObject:MEMORY[0x1E695E110] forKey:@"CIImagePremultiplied"];
            v75 = v100;
          }

          else
          {
            v75 = v100;
            if (v21 == 1)
            {
              [v59 setObject:MEMORY[0x1E695E118] forKey:@"kCIImageAlphaOne"];
            }
          }

          if (!getContentDigestFromOptions(options))
          {
            [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", CGImageGetIdentifier() | 0x6367696400000000), @"kCIImageContentDigest"}];
          }

          v15 = [(CIImage *)v75 _initWithIOSurface:v74 options:v59 owner:0];
          [(CIImage *)v15 _setOriginalCGImage:CopyWithColorSpace options:options];
          [(CIImage *)v15 _setOriginalSurface:v74 options:options];

          CFRelease(v74);
          return v15;
        }

        v97 = CI_IOSURFACE_WRAPPING(1u);
        v76 = *MEMORY[0x1E695F290];
        v108[0] = *MEMORY[0x1E695F298];
        v108[1] = v76;
        v109[0] = MEMORY[0x1E695E118];
        v109[1] = MEMORY[0x1E695E118];
        v108[2] = *MEMORY[0x1E695F270];
        v109[2] = &unk_1F1081D88;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:3];
        v21 = CI::alpha_mode_from_CGImageProvider(v65);
        v77 = CI::format_from_CGImageProvider(v65);
        v99 = CI::PixelFormatType_from_format(v77);
        v78 = CI::PixelFormatType_approx_from_format(v77);
        if (v77)
        {
          if (v78)
          {
            v96 = v78;
            v79 = CGImageProviderCopyImageBlockSetWithOptions();
            if (v79)
            {
              v80 = v79;
              if (CGImageBlockSetGetCount() == 1)
              {
                v95 = v80;
                ImageBlock = CGImageBlockSetGetImageBlock();
                if (iosurface_creatable_from_cgblock(ImageBlock))
                {
                  CGImageBlockGetRect();
                  v125.origin.x = v82;
                  v125.origin.y = v83;
                  v125.size.width = v84;
                  v125.size.height = v85;
                  v124.origin.x = 0.0;
                  v124.origin.y = 0.0;
                  v124.size.width = Width;
                  v124.size.height = Height;
                  if (CGRectEqualToRect(v124, v125))
                  {
                    v94 = CGImageBlockGetBytesPerRow();
                    Data = CGImageBlockGetData();
                    if (IOSurfaceWrapPointerOk(Data) && (v94 & 3) == 0 && v97)
                    {
                      PixelSize = CGImageProviderGetPixelSize();
                      WrappedSurface = CreateWrappedSurface(Width, Height, v96, v94 & 0xFFFFFFFC, PixelSize, Data);
                      if (WrappedSurface)
                      {
                        v74 = WrappedSurface;
                        CGImageBlockSetRetain();
                        v101[0] = MEMORY[0x1E69E9820];
                        v101[1] = 3221225472;
                        v101[2] = __35__CIImage_initWithCGImage_options___block_invoke_2;
                        v101[3] = &__block_descriptor_40_e5_v8__0l;
                        v101[4] = v95;
                        SetSurfaceDeallocBlock(v74, v101);
                        goto LABEL_124;
                      }
                    }

                    else
                    {
                      Surface = CreateSurface(Width, Height, 0x10uLL, v96, 0);
                      v90 = Data;
                      v74 = Surface;
                      v102[0] = MEMORY[0x1E69E9820];
                      v102[1] = 3221225472;
                      v102[2] = __35__CIImage_initWithCGImage_options___block_invoke;
                      v102[3] = &__block_descriptor_48_e21_v48__0_v8Q16Q24Q32Q40l;
                      v102[4] = v90;
                      v102[5] = v94;
                      SurfaceApplyPlaneBlock(Surface, v102);
                      if (v74)
                      {
LABEL_124:
                        v91 = CGImageGetColorSpace(CopyWithColorSpace);
                        if (v91)
                        {
                          v92 = CGColorSpaceCopyPropertyList(v91);
                          if (v92)
                          {
                            v93 = v92;
                            IOSurfaceSetValue(v74, *MEMORY[0x1E696CEE0], v92);
                            CFRelease(v93);
                          }
                        }

                        if (v21 == 1 || v21 == -1)
                        {
                          IOSurfaceSetValue(v74, @"IOSurfaceAlphaIsOpaque", *MEMORY[0x1E695E4D0]);
                        }

                        if (v99 != v96)
                        {
                          [v59 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", v77), @"CIImageSurfaceFormat"}];
                        }

                        CGImageBlockSetRelease();
                        goto LABEL_102;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        CGImageBlockSetRelease();
      }
    }

    v15 = [(CIImage *)v100 _initNaiveWithCGImage:CopyWithColorSpace options:v59];
    [(CIImage *)v15 _setOriginalCGImage:CopyWithColorSpace options:options];

    return v15;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(CopyWithColorSpace);
  BitsPerPixel = CGImageGetBitsPerPixel(CopyWithColorSpace);
  v37 = (CGImageGetBitmapInfo(CopyWithColorSpace) >> 8) & 1;
  if (BitsPerComponent > 8)
  {
    v37 = 1;
  }

  v98 = v37;
  BitmapInfo = CGImageGetBitmapInfo(CopyWithColorSpace);
  v39 = ci_logger_performance();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = "ABGR8";
    *buf = 136447490;
    *&buf[4] = "[CIImage initWithCGImage:options:]";
    if (v98)
    {
      v40 = "RGBAh";
    }

    *&buf[12] = 2082;
    *&buf[14] = v40;
    v41 = "decode array";
    if (!v32)
    {
      v41 = "pixel format that is unsupported";
    }

    v113 = 2048;
    v114 = BitsPerComponent;
    v115 = 2048;
    v116 = BitsPerPixel;
    v117 = 1024;
    v118 = BitmapInfo;
    if (v24)
    {
      v41 = "mask";
    }

    v119 = 2082;
    v120 = v41;
    _os_log_impl(&dword_19CC36000, v39, OS_LOG_TYPE_INFO, "%{public}s CI_CONVERSION: Rendered to intermediate %{public}s CGImage because the CGImage (bpc:%zu bpp:%zu info:0x%X) passed to Core Image has a %{public}s.", buf, 0x3Au);
  }

  v42 = CGImageGetColorSpace(CopyWithColorSpace);
  v43 = CGColorSpaceRetain(v42);
  if (CGColorSpaceGetModel(v43) == kCGColorSpaceModelIndexed)
  {
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(v43);
    v45 = CGColorSpaceRetain(BaseColorSpace);
    CGColorSpaceRelease(v43);
    v43 = v45;
  }

  if (CGColorSpaceGetModel(v43) == kCGColorSpaceModelRGB)
  {
    if (v43 && !CGColorSpaceSupportsOutput(v43))
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(CopyWithColorSpace, DeviceRGB);
      v47 = v43;
      v43 = DeviceRGB;
      goto LABEL_57;
    }
  }

  else
  {
    CGColorSpaceRelease(v43);
    v43 = CGColorSpaceCreateDeviceRGB();
  }

  v47 = 0;
LABEL_57:
  if (v98)
  {
    v48 = 8 * Width;
    v49 = Width;
    v50 = Height;
    v51 = 16;
    v52 = v43;
    v53 = 4353;
  }

  else
  {
    v48 = 4 * Width;
    v49 = Width;
    v50 = Height;
    v51 = 8;
    v52 = v43;
    v53 = 8194;
  }

  v54 = CGBitmapContextCreate(0, v49, v50, v51, v48, v52, v53);
  CGColorSpaceRelease(v43);
  if (!v54)
  {
    v56 = v100;
    if (v47)
    {
      CGImageRelease(CopyWithColorSpace);
    }

    CGColorSpaceRelease(v47);
    v58 = ci_logger_api();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_88;
    }

LABEL_87:
    [CIImage initWithCGImage:options:];
LABEL_88:

    return 0;
  }

  v123.size.width = Width;
  v123.size.height = Height;
  v123.origin.x = 0.0;
  v123.origin.y = 0.0;
  CGContextDrawImage(v54, v123, CopyWithColorSpace);
  v55 = CGBitmapContextCreateImage(v54);
  CGContextRelease(v54);
  v56 = v100;
  if (!v55)
  {
    if (v47)
    {
      CGImageRelease(CopyWithColorSpace);
    }

    CGColorSpaceRelease(v47);
    v69 = ci_logger_api();
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  if (v47)
  {
    v57 = CGImageCreateCopyWithColorSpace(v55, v47);
    CGImageRelease(v55);
    CGImageRelease(CopyWithColorSpace);
    v55 = v57;
  }

  v15 = [(CIImage *)v100 initWithCGImage:v55 options:options];
  CGColorSpaceRelease(v47);
  CGImageRelease(v55);
  return v15;
}

void *__35__CIImage_initWithCGImage_options___block_invoke(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
{
  if (a5)
  {
    v9 = result;
    for (i = 0; i != a5; ++i)
    {
      v11 = *(v9 + 40);
      if (v11 >= a6)
      {
        v12 = a6;
      }

      else
      {
        v12 = *(v9 + 40);
      }

      result = memcpy(__dst, (*(v9 + 32) + v11 * i), v12);
      __dst += a6;
    }
  }

  return result;
}

- (id)initAuxiliaryWithImageSource:(CGImageSource *)a3 index:(unint64_t)a4 options:(id)a5 depth:(BOOL)a6
{
  v45[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_26;
  }

  v10 = (a6 ? 1751410032 : 1751411059);
  v11 = imageSourceCopyAuxiliaryDataInfo(a3, a4, *MEMORY[0x1E696D260]);
  if (!v11)
  {
    v11 = imageSourceCopyAuxiliaryDataInfo(a3, a4, *MEMORY[0x1E696D258]);
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  v12 = v11;
  v13 = *MEMORY[0x1E696D228];
  Value = CFDictionaryGetValue(v11, *MEMORY[0x1E696D228]);
  v15 = Value;
  if (Value)
  {
    v16 = CFRetain(Value);
    CFAutorelease(v16);
  }

  v17 = AVFDepthDataFromDictionary(v12);
  CFRelease(v12);
  if (!v17)
  {
    goto LABEL_26;
  }

  if (AVFDepthDataType(v17, v18) != v10)
  {
    v17 = AVFDepthDataByConvertingToDepthDataType(v17, v10);
  }

  v20 = AVFDepthDataMap(v17, v19);
  if (v20)
  {
    v21 = v20;
    v44 = @"kCIImageAVDepthData";
    v45[0] = v17;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    if (v15)
    {
      v42[1] = @"CIImageProperties";
      v43[0] = v17;
      v42[0] = @"kCIImageAVDepthData";
      v40 = v13;
      v41 = v15;
      v43[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
    }

    v23 = v22;
    v24 = [a5 objectForKey:@"kCIImageApplyOrientationProperty"];
    if ([v24 isEqual:MEMORY[0x1E695E118]])
    {
      v25 = CGImageSourceCopyPropertiesAtIndex(a3, 0, a5);
      v26 = *MEMORY[0x1E696DE78];
      v27 = [(__CFDictionary *)v25 objectForKey:*MEMORY[0x1E696DE78]];
      if (v27)
      {
        v28 = [v27 intValue];
        v29 = v28 - 9 >= 0xFFFFFFF8 ? v28 : 0;
        if (v29 >= 1)
        {
          v38[0] = @"kCIImageAVDepthData";
          v38[1] = @"kCIImageApplyOrientationProperty";
          v39[0] = v17;
          v39[1] = MEMORY[0x1E695E118];
          v38[2] = @"CIImageProperties";
          v36 = v26;
          v37 = [MEMORY[0x1E696AD98] numberWithInt:v29];
          v39[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
          if (v15)
          {
            v34[0] = @"kCIImageAVDepthData";
            v34[1] = @"kCIImageApplyOrientationProperty";
            v35[0] = v17;
            v35[1] = MEMORY[0x1E695E118];
            v34[2] = @"CIImageProperties";
            v32[1] = v13;
            v33[0] = [MEMORY[0x1E696AD98] numberWithInt:{v29, v26}];
            v33[1] = v15;
            v35[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
            v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
          }

          v23 = v30;
        }
      }

      CFRelease(v25);
    }

    return [(CIImage *)self initWithCVPixelBuffer:v21 options:v23];
  }

  else
  {
LABEL_26:

    return 0;
  }
}

- (__CVBuffer)_pixelBufferFromAuxProps:(__CFDictionary *)a3 linear:(BOOL)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  if (!a3)
  {
    return 0;
  }

  v4 = a4;
  Value = CFDictionaryGetValue(a3, *MEMORY[0x1E696D220]);
  v7 = CFDictionaryGetValue(a3, *MEMORY[0x1E696D218]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = [objc_msgSend(Value valueForKey:{@"Width", "intValue"}];
  v9 = [objc_msgSend(Value valueForKey:{@"Height", "intValue"}];
  v10 = [objc_msgSend(Value valueForKey:{@"BytesPerRow", "intValue"}];
  v11 = [objc_msgSend(Value valueForKey:{@"PixelFormat", "unsignedLongValue"}];
  v12 = !v8 || v9 == 0;
  if (v12 || v10 == 0)
  {
    return 0;
  }

  if (v10 < v8 || v11 != 1278226488)
  {
    return 0;
  }

  v21 = *MEMORY[0x1E69660D8];
  v22[0] = MEMORY[0x1E695E0F8];
  v16 = CVPixelBufferCreate(0, v8, v9, 0x4C303038u, [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1], &pixelBufferOut);
  result = pixelBufferOut;
  if (!v16)
  {
    v17 = MEMORY[0x1E6965F60];
    if (!v4)
    {
      v17 = MEMORY[0x1E6965F88];
    }

    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F30], *v17, kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965D88], *MEMORY[0x1E6965DB8], kCVAttachmentMode_ShouldPropagate);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __43__CIImage__pixelBufferFromAuxProps_linear___block_invoke;
    v18[3] = &unk_1E75C2E48;
    v18[4] = v7;
    v19 = v10;
    PixelBufferApplyOnePlaneBlock(pixelBufferOut, 0, v18);
    return pixelBufferOut;
  }

  return result;
}

char *__43__CIImage__pixelBufferFromAuxProps_linear___block_invoke(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
{
  result = [*(a1 + 32) bytes];
  v11 = result;
  if (*(a1 + 40) == a6)
  {

    return memcpy(a2, result, a6 * a5);
  }

  else if (a5)
  {
    v12 = 0;
    do
    {
      v13 = *(a1 + 40);
      if (v13 >= a6)
      {
        v14 = a6;
      }

      else
      {
        v14 = *(a1 + 40);
      }

      result = memcpy(a2, &v11[v13 * v12++], v14);
      a2 += a6;
    }

    while (a5 != v12);
  }

  return result;
}

- (id)initMatteWithImageSource:(CGImageSource *)a3 options:(id)a4
{
  v58[5] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_55;
  }

  v7 = [a4 valueForKey:@"kCIImageAuxiliaryPortraitEffectsMatte"];
  v8 = [v7 isEqual:MEMORY[0x1E695E118]];
  v9 = MEMORY[0x1E696D288];
  if (v8)
  {
    v10 = *MEMORY[0x1E696D288];
    v11 = @"kCIImageAVPortraitEffectsMatte";
LABEL_15:
    v18 = 1;
    goto LABEL_16;
  }

  v12 = [a4 valueForKey:@"kCIImageAuxiliarySemanticSegmentationSkinMatte"];
  if ([v12 isEqual:MEMORY[0x1E695E118]])
  {
    v13 = MEMORY[0x1E696D2A0];
LABEL_14:
    v10 = *v13;
    v11 = @"kCIImageAVSemanticSegmentationMatte";
    goto LABEL_15;
  }

  v14 = [a4 valueForKey:@"kCIImageAuxiliarySemanticSegmentationHairMatte"];
  if ([v14 isEqual:MEMORY[0x1E695E118]])
  {
    v13 = MEMORY[0x1E696D298];
    goto LABEL_14;
  }

  v15 = [a4 valueForKey:@"kCIImageAuxiliarySemanticSegmentationTeethMatte"];
  if ([v15 isEqual:MEMORY[0x1E695E118]])
  {
    v13 = MEMORY[0x1E696D2B0];
    goto LABEL_14;
  }

  v16 = [a4 valueForKey:@"kCIImageAuxiliarySemanticSegmentationGlassesMatte"];
  if ([v16 isEqual:MEMORY[0x1E695E118]])
  {
    v13 = MEMORY[0x1E696D290];
    goto LABEL_14;
  }

  v17 = [a4 valueForKey:@"kCIImageAuxiliarySemanticSegmentationSkyMatte"];
  if ([v17 isEqual:MEMORY[0x1E695E118]])
  {
    v13 = MEMORY[0x1E696D2A8];
    goto LABEL_14;
  }

  v18 = 0;
  v11 = 0;
  v10 = 0;
LABEL_16:
  v19 = imageSourceCopyAuxiliaryDataInfo(a3, 0, v10);
  if (!v19)
  {
    goto LABEL_55;
  }

  v20 = v19;
  v51 = *MEMORY[0x1E696D228];
  Value = CFDictionaryGetValue(v19, *MEMORY[0x1E696D228]);
  v22 = Value;
  if (Value)
  {
    v23 = CFRetain(Value);
    CFAutorelease(v23);
  }

  v24 = *MEMORY[0x1E696D298];
  v58[0] = *MEMORY[0x1E696D2A0];
  v58[1] = v24;
  v25 = *MEMORY[0x1E696D290];
  v58[2] = *MEMORY[0x1E696D2B0];
  v58[3] = v25;
  v58[4] = *MEMORY[0x1E696D2A8];
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:5];
  if (v10 == *v9)
  {
    v32 = AVPortraitEffectsMatteFromDictionary(v20);
    v31 = v32;
    if (v32)
    {
      v30 = AVFPortraitEffectsMatteImage(v32, v33);
      v29 = 0;
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (![v26 containsObject:v10])
  {
    v31 = 0;
LABEL_28:
    v29 = 0;
LABEL_30:
    v34 = [(CIImage *)self _pixelBufferFromAuxProps:v20 linear:1];
    if (v34)
    {
      v30 = v34;
      CFAutorelease(v34);
      goto LABEL_32;
    }

    CFRelease(v20);
LABEL_55:

    return 0;
  }

  v27 = AVSemanticSegmentationMatteFromDictionary(v20, v10);
  v29 = v27;
  if (!v27)
  {
    v31 = 0;
    goto LABEL_30;
  }

  v30 = AVSemanticSegmentationMatteImage(v27, v28);
  v31 = 0;
  if (!v30)
  {
    goto LABEL_30;
  }

LABEL_32:
  CFRelease(v20);
  v35 = [MEMORY[0x1E695DF90] dictionary];
  v36 = v35;
  v37 = v18 ^ 1;
  if (v31)
  {
    v38 = v37;
  }

  else
  {
    v38 = 1;
  }

  if ((v38 & 1) == 0)
  {
    [v35 setObject:v31 forKey:v11];
  }

  if (v29)
  {
    v39 = v37;
  }

  else
  {
    v39 = 1;
  }

  if ((v39 & 1) == 0)
  {
    [v36 setObject:v29 forKey:v11];
  }

  if (v22)
  {
    v56 = v51;
    v57 = v22;
    [v36 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", &v57, &v56, 1), @"CIImageProperties"}];
  }

  if ([a4 valueForKey:@"CIImageColorSpace"])
  {
    [v36 setObject:objc_msgSend(a4 forKey:{"valueForKey:", @"CIImageColorSpace", @"CIImageColorSpace"}];
  }

  v40 = [a4 objectForKey:@"kCIImageApplyOrientationProperty"];
  if ([v40 isEqual:MEMORY[0x1E695E118]])
  {
    v41 = CGImageSourceCopyPropertiesAtIndex(a3, 0, a4);
    v42 = *MEMORY[0x1E696DE78];
    v43 = [(__CFDictionary *)v41 objectForKey:*MEMORY[0x1E696DE78]];
    if (v43)
    {
      v44 = [v43 intValue];
      v45 = v44 - 9 >= 0xFFFFFFF8 ? v44 : 0;
      if (v45 >= 1)
      {
        [v36 setObject:MEMORY[0x1E695E118] forKey:@"kCIImageApplyOrientationProperty"];
        if (v22)
        {
          v54[0] = v42;
          v54[1] = v51;
          v55[0] = [MEMORY[0x1E696AD98] numberWithInt:v45];
          v55[1] = v22;
          v46 = MEMORY[0x1E695DF20];
          v47 = v55;
          v48 = v54;
          v49 = 2;
        }

        else
        {
          v52 = v42;
          v53 = [MEMORY[0x1E696AD98] numberWithInt:v45];
          v46 = MEMORY[0x1E695DF20];
          v47 = &v53;
          v48 = &v52;
          v49 = 1;
        }

        [v36 setObject:objc_msgSend(v46 forKey:{"dictionaryWithObjects:forKeys:count:", v47, v48, v49), @"CIImageProperties"}];
      }
    }

    CFRelease(v41);
  }

  return [(CIImage *)self initWithCVPixelBuffer:v30 options:v36];
}

- (id)initGainmapWithImageSource:(CGImageSource *)a3 options:(id)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_16;
  }

  v7 = [a4 valueForKey:@"kCIImageAuxiliaryHDRGainMap"];
  if (([v7 isEqual:MEMORY[0x1E695E118]] & 1) == 0)
  {
    goto LABEL_16;
  }

  if (![a4 objectForKey:@"kCIImageAuxiliaryGainMapPreference"])
  {
    [0 intValue];
    [0 intValue];
  }

  v35 = *MEMORY[0x1E696D240];
  v36[0] = *MEMORY[0x1E696D248];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  v8 = CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions();
  if (!v8)
  {
    v8 = imageSourceCopyAuxiliaryDataInfo(a3, 0, *MEMORY[0x1E696D270]);
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  v9 = v8;
  v10 = *MEMORY[0x1E696D228];
  Value = CFDictionaryGetValue(v8, *MEMORY[0x1E696D228]);
  v12 = Value;
  if (Value)
  {
    CFRetain(Value);
    CFAutorelease(v12);
  }

  v13 = CFDictionaryGetValue(v9, *MEMORY[0x1E696D238]);
  if (!v13)
  {
    v14 = [(CIImage *)self _pixelBufferFromAuxProps:v9 linear:1];
    CFRelease(v9);
    if (v14)
    {
      goto LABEL_12;
    }

LABEL_16:

    return 0;
  }

  v14 = v13;
  CFRetain(v13);
  CFRelease(v9);
LABEL_12:
  v15 = [MEMORY[0x1E695DF90] dictionary];
  if (v12)
  {
    v33 = v10;
    v34 = v12;
    [v15 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", &v34, &v33, 1), @"CIImageProperties"}];
  }

  if ([a4 valueForKey:@"CIImageColorSpace"])
  {
    v16 = [a4 valueForKey:@"CIImageColorSpace"];
  }

  else
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  [v15 setObject:v16 forKey:@"CIImageColorSpace"];
  v18 = [a4 objectForKey:@"kCIImageApplyOrientationProperty"];
  if ([v18 isEqual:MEMORY[0x1E695E118]])
  {
    v19 = CGImageSourceCopyPropertiesAtIndex(a3, 0, a4);
    v20 = *MEMORY[0x1E696DE78];
    v21 = [(__CFDictionary *)v19 objectForKey:*MEMORY[0x1E696DE78]];
    if (v21)
    {
      v22 = [v21 intValue];
      v23 = v22 - 9 >= 0xFFFFFFF8 ? v22 : 0;
      if (v23 >= 1)
      {
        [v15 setObject:MEMORY[0x1E695E118] forKey:@"kCIImageApplyOrientationProperty"];
        if (v12)
        {
          v31[0] = v20;
          v31[1] = v10;
          v32[0] = [MEMORY[0x1E696AD98] numberWithInt:v23];
          v32[1] = v12;
          v24 = MEMORY[0x1E695DF20];
          v25 = v32;
          v26 = v31;
          v27 = 2;
        }

        else
        {
          v29 = v20;
          v30 = [MEMORY[0x1E696AD98] numberWithInt:v23];
          v24 = MEMORY[0x1E695DF20];
          v25 = &v30;
          v26 = &v29;
          v27 = 1;
        }

        [v15 setObject:objc_msgSend(v24 forKey:{"dictionaryWithObjects:forKeys:count:", v25, v26, v27), @"CIImageProperties"}];
      }
    }

    CFRelease(v19);
  }

  v17 = [(CIImage *)self initWithCVPixelBuffer:v14 options:v15];
  CFRelease(v14);
  return v17;
}

- (id)_imageByApplyingGainMap:(id)a3 headroom:(float)a4
{
  v135[8] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return self;
  }

  v7 = [a3 properties];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696D228]];
  if (!v8)
  {
    v13 = 0;
    v14 = 0.0;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v119 = 0u;
    v15 = 0.0;
    goto LABEL_6;
  }

  v9 = v8;
  v10 = objc_autoreleasePoolPush();
  v11 = copyMetadataValue(v9, @"HDRToneMap:Version");
  if (v11)
  {
    v12 = [v11 intValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [copyMetadataValue(v9 @"HDRToneMap:{"isEqual:", @"True"}BaseColorIsWorkingColor")];
  v19 = copyMetadataValue(v9, @"HDRToneMap:BaseHeadroom");
  if (v19)
  {
    [v19 floatValue];
    v15 = v20;
  }

  else
  {
    v15 = NAN;
  }

  v21 = copyMetadataValue(v9, @"HDRToneMap:AlternateHeadroom");
  if (v21)
  {
    [v21 floatValue];
    v14 = v22;
  }

  else
  {
    v14 = NAN;
  }

  v23 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[0].BaseOffset");
  if (v23)
  {
    [v23 floatValue];
  }

  else
  {
    v24.i32[0] = 2143289344;
  }

  v127 = vdupq_lane_s32(v24, 0);
  v25 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[1].BaseOffset");
  if (v25)
  {
    [v25 floatValue];
    v26 = v127;
    v26.i32[1] = v27;
    v127 = v26;
  }

  v28 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[2].BaseOffset");
  if (v28)
  {
    [v28 floatValue];
    v29 = v127;
    v29.i32[2] = v30;
    v127 = v29;
  }

  v31 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[0].AlternateOffset");
  if (v31)
  {
    [v31 floatValue];
  }

  else
  {
    v32.i32[0] = 2143289344;
  }

  v126 = vdupq_lane_s32(v32, 0);
  v33 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[1].AlternateOffset");
  if (v33)
  {
    [v33 floatValue];
    v34 = v126;
    v34.i32[1] = v35;
    v126 = v34;
  }

  v36 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[2].AlternateOffset");
  if (v36)
  {
    [v36 floatValue];
    v37 = v126;
    v37.i32[2] = v38;
    v126 = v37;
  }

  v39 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[0].GainMapMin");
  if (v39)
  {
    [v39 floatValue];
  }

  else
  {
    v40.i32[0] = 2143289344;
  }

  v125 = vdupq_lane_s32(v40, 0);
  v41 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[1].GainMapMin");
  if (v41)
  {
    [v41 floatValue];
    v42 = v125;
    v42.i32[1] = v43;
    v125 = v42;
  }

  v44 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[2].GainMapMin");
  if (v44)
  {
    [v44 floatValue];
    v45 = v125;
    v45.i32[2] = v46;
    v125 = v45;
  }

  v47 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[0].GainMapMax");
  if (v47)
  {
    [v47 floatValue];
  }

  else
  {
    v48.i32[0] = 2143289344;
  }

  v124 = vdupq_lane_s32(v48, 0);
  v49 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[1].GainMapMax");
  if (v49)
  {
    [v49 floatValue];
    v50 = v124;
    v50.i32[1] = v51;
    v124 = v50;
  }

  v52 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[2].GainMapMax");
  if (v52)
  {
    [v52 floatValue];
    v53 = v124;
    v53.i32[2] = v54;
    v124 = v53;
  }

  v55 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[0].Gamma");
  if (v55)
  {
    [v55 floatValue];
  }

  else
  {
    v56.i32[0] = 2143289344;
  }

  v119 = vdupq_lane_s32(v56, 0);
  v57 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[1].Gamma");
  if (v57)
  {
    [v57 floatValue];
    v58 = v119;
    v58.i32[1] = v59;
    v119 = v58;
  }

  v60 = copyMetadataValue(v9, @"HDRToneMap:ChannelMetadata[2].Gamma");
  if (v60)
  {
    [v60 floatValue];
    v61 = v119;
    v61.i32[2] = v62;
    v119 = v61;
  }

  objc_autoreleasePoolPop(v10);
  v63 = CGImageMetadataCopyTagWithPath(v9, 0, @"HDRGainMap:HDRGainMapVersion");
  v64 = v63;
  if (v63)
  {
    v65 = CGImageMetadataTagCopyValue(v63);
  }

  else
  {
    v65 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = 0;
    if (!v65)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v18 = [v65 intValue];
  if (v65)
  {
LABEL_58:
    CFRelease(v65);
  }

LABEL_59:
  if (v64)
  {
    CFRelease(v64);
  }

  if (v12 == 1)
  {
    v17 = 1;
    goto LABEL_68;
  }

  if (v12 >= 2)
  {
    v66 = ci_logger_api();
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
LABEL_67:
      v17 = 0;
      goto LABEL_68;
    }

    LOWORD(buf.a) = 0;
    v67 = "Image's gain map will be ignored because FlexRange version value was not supported.";
LABEL_66:
    _os_log_impl(&dword_19CC36000, v66, OS_LOG_TYPE_DEFAULT, v67, &buf, 2u);
    goto LABEL_67;
  }

  v17 = 0;
  if (v18 != 0x20000 && v18 != 0x10000)
  {
    if (v18)
    {
      v66 = ci_logger_api();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      LOWORD(buf.a) = 0;
      v67 = "Image's gain map will be ignored because GainMap version value was not supported.";
      goto LABEL_66;
    }

LABEL_6:
    v16 = ci_logger_api();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_19CC36000, v16, OS_LOG_TYPE_DEFAULT, "Image's gain map will be ignored because no version tag was present.", &buf, 2u);
    }

    v17 = 0;
    v18 = 0;
  }

LABEL_68:
  memset(&buf, 0, sizeof(buf));
  [(CIImage *)self extent];
  v69 = v68;
  [a3 extent];
  v71 = v69 / v70;
  [(CIImage *)self extent];
  v73 = v72;
  [a3 extent];
  CGAffineTransformMakeScale(&buf, v71, v73 / v74);
  v128 = buf;
  v75 = [a3 imageByApplyingTransform:&v128];
  if (v17)
  {
    v76 = exp2f(v15);
    v77 = exp2f(v14);
    v78 = fmaxf(v76, v77);
    v79 = fminf(fmaxf(a4, fminf(v76, v77)), v78);
    if (a4 == 0.0)
    {
      v79 = v78;
    }

    v80 = log2f(v79);
    __asm { FMOV            V0.4S, #1.0 }

    v121 = vdivq_f32(_Q0, v120);
    v86 = fminf(fmaxf((v80 - v15) / (v14 - v15), 0.0), 1.0);
    if (v80 <= v15)
    {
      v87 = -v86;
    }

    else
    {
      v87 = v86;
    }

    v88 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_flexMap, *&v121];
    if (v13 && [(CIImage *)self colorSpace])
    {
      ExtendedLinearized = CGColorSpaceCreateExtendedLinearized([(CIImage *)self colorSpace]);
    }

    else
    {
      ExtendedLinearized = CGColorSpaceCreateWithName(*MEMORY[0x1E695F100]);
    }

    v104 = ExtendedLinearized;
    v105 = [(CIImage *)self imageByColorMatchingWorkingSpaceToColorSpace:ExtendedLinearized];
    v106 = exp2f(v80);
    [(CIImage *)v105 extent];
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v135[0] = v105;
    v135[1] = v75;
    v135[2] = [CIVector vectorWithX:*&v122 Y:*(&v122 + 1) Z:v123];
    v135[3] = [CIVector vectorWithX:*v125.i32 Y:*&v125.i32[1] Z:*&v125.i32[2]];
    v135[4] = [CIVector vectorWithX:*v124.i32 Y:*&v124.i32[1] Z:*&v124.i32[2]];
    *&v115 = v87;
    v135[5] = [MEMORY[0x1E696AD98] numberWithFloat:v115];
    v135[6] = [CIVector vectorWithX:*v127.i32 Y:*&v127.i32[1] Z:*&v127.i32[2]];
    v135[7] = [CIVector vectorWithX:*v126.i32 Y:*&v126.i32[1] Z:*&v126.i32[2]];
    v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:8];
    v133 = @"kCIImageContentHeadroom";
    *&v117 = v106;
    v134 = [MEMORY[0x1E696AD98] numberWithFloat:v117];
    self = [-[CIColorKernel applyWithExtent:arguments:options:](v88 applyWithExtent:v116 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v134, &v133, 1), v108, v110, v112, v114), "imageByColorMatchingColorSpaceToWorkingSpace:", v104}];
    CGColorSpaceRelease(v104);
  }

  else if (v18 == 0x20000 || v18 == 0x10000)
  {
    v90 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gainMap];
    [(CIImage *)self _makernoteMeteorHeadroom];
    v92 = fminf(fmaxf(a4, 1.0), v91);
    v93 = a4 == 0.0 ? v91 : v92;
    if (v93 > 1.0)
    {
      [(CIImage *)self extent];
      v95 = v94;
      v97 = v96;
      v99 = v98;
      v101 = v100;
      v132[0] = self;
      v132[1] = v75;
      *&v94 = v93;
      v132[2] = [MEMORY[0x1E696AD98] numberWithFloat:v94];
      v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:3];
      v130 = @"kCIImageContentHeadroom";
      *&v103 = v93;
      v131 = [MEMORY[0x1E696AD98] numberWithFloat:v103];
      return -[CIColorKernel applyWithExtent:arguments:options:](v90, "applyWithExtent:arguments:options:", v102, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1], v95, v97, v99, v101);
    }
  }

  return self;
}

- (CGColorSpace)_copyHDRColorspaceFromSource:(CGImageSource *)a3 index:(unint64_t)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E696E018];
  v13[0] = *MEMORY[0x1E696E028];
  v6 = *MEMORY[0x1E696E020];
  v12[0] = v5;
  v12[1] = v6;
  v10 = *MEMORY[0x1E696D208];
  v11 = MEMORY[0x1E695E118];
  v13[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a3, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2]);
  ColorSpace = CGImageGetColorSpace(ImageAtIndex);
  CGColorSpaceRetain(ColorSpace);
  CGImageRelease(ImageAtIndex);
  return ColorSpace;
}

- (CIImage)initWithCGImageSource:(CGImageSourceRef)source index:(size_t)index options:(NSDictionary *)dict
{
  if (!source)
  {

    return 0;
  }

  v9 = [(NSDictionary *)dict valueForKey:@"kCIImageAuxiliaryDepth"];
  if ([v9 isEqual:MEMORY[0x1E695E118]])
  {
    v10 = self;
    v11 = source;
    v12 = index;
    v13 = dict;
    v14 = 1;
LABEL_9:

    return [(CIImage *)v10 initAuxiliaryWithImageSource:v11 index:v12 options:v13 depth:v14];
  }

  v17 = [(NSDictionary *)dict valueForKey:@"kCIImageAuxiliaryDisparity"];
  if ([v17 isEqual:MEMORY[0x1E695E118]])
  {
    v10 = self;
    v11 = source;
    v12 = index;
    v13 = dict;
    v14 = 0;
    goto LABEL_9;
  }

  v18 = [(NSDictionary *)dict valueForKey:@"kCIImageAuxiliaryPortraitEffectsMatte"];
  if ([v18 isEqual:MEMORY[0x1E695E118]] & 1) != 0 || (v19 = -[NSDictionary valueForKey:](dict, "valueForKey:", @"kCIImageAuxiliarySemanticSegmentationGlassesMatte"), (objc_msgSend(v19, "isEqual:", MEMORY[0x1E695E118])) || (v20 = -[NSDictionary valueForKey:](dict, "valueForKey:", @"kCIImageAuxiliarySemanticSegmentationSkyMatte"), (objc_msgSend(v20, "isEqual:", MEMORY[0x1E695E118])) || (v21 = -[NSDictionary valueForKey:](dict, "valueForKey:", @"kCIImageAuxiliarySemanticSegmentationSkinMatte"), (objc_msgSend(v21, "isEqual:", MEMORY[0x1E695E118])) || (v22 = -[NSDictionary valueForKey:](dict, "valueForKey:", @"kCIImageAuxiliarySemanticSegmentationHairMatte"), (objc_msgSend(v22, "isEqual:", MEMORY[0x1E695E118])) || (v23 = -[NSDictionary valueForKey:](dict, "valueForKey:", @"kCIImageAuxiliarySemanticSegmentationTeethMatte"), objc_msgSend(v23, "isEqual:", MEMORY[0x1E695E118])))
  {

    return [(CIImage *)self initMatteWithImageSource:source options:dict];
  }

  v24 = [(NSDictionary *)dict valueForKey:@"kCIImageAuxiliaryHDRGainMap"];
  v25 = MEMORY[0x1E695E118];
  if (![v24 isEqual:MEMORY[0x1E695E118]])
  {
    if (dict)
    {
      v26 = [(NSDictionary *)dict objectForKey:@"kCIImageExpandToHDR"];
    }

    else
    {
      v26 = 0;
    }

    if (v26 == v25 || v26 == &unk_1F1081DE8)
    {
      [(__CFString *)CGImageSourceGetType(source) hasSuffix:@"raw-image"];
    }

    if (dict)
    {
      v27 = [(NSDictionary *)dict mutableCopy];
    }

    else
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v28 = v27;
    v29 = *MEMORY[0x1E696E138];
    v30 = [(NSDictionary *)dict valueForKey:*MEMORY[0x1E696E138]];
    v31 = *MEMORY[0x1E695E4D0];
    if (!v30)
    {
      [v28 setObject:*MEMORY[0x1E695E4D0] forKey:v29];
    }

    [v28 setObject:v31 forKey:*MEMORY[0x1E696E008]];
    if (![(NSDictionary *)dict valueForKey:@"kCGImageSourceRasterizationDPI"])
    {
      [v28 setObject:&unk_1F1081DA0 forKey:@"kCGImageSourceRasterizationDPI"];
    }

    v32 = MEMORY[0x1E695E118];
    [v28 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696DFD0]];
    if (dict)
    {
      v33 = [(NSDictionary *)dict objectForKey:@"kCIImageExpandToHDR"];
    }

    else
    {
      v33 = 0;
    }

    v35 = v33 != v32 && v33 != &unk_1F1081DE8;
    if ([(NSDictionary *)dict objectForKey:@"kCIImageToneMapHDRtoSDR"])
    {
      if (dict)
      {
        v36 = [(NSDictionary *)dict objectForKey:@"kCIImageToneMapHDRtoSDR"];
      }

      else
      {
        v36 = 0;
      }

      v37 = v36 == v32 || v36 == &unk_1F1081DE8;
    }

    else
    {
      v37 = 0;
    }

    v73 = v35;
    if (v35)
    {
      v39 = 0;
    }

    else
    {
      v40 = [(NSDictionary *)dict mutableCopy];
      [v40 setValue:MEMORY[0x1E695E118] forKey:@"kCIImageAuxiliaryHDRGainMap"];
      v39 = [CIImage imageWithCGImageSource:source index:index options:v40];
    }

    if (![v28 objectForKey:@"CIImageProperties"])
    {
      v41 = CGImageSourceCopyPropertiesAtIndex(source, index, v28);
      if (v41)
      {
        v42 = v41;
        v72 = v37;
        v43 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v41];
        v44 = [v43 valueForKeyPath:@"{JPEG}.ChromaSubsamplingX"];
        v45 = [v43 valueForKeyPath:@"{JPEG}.ChromaSubsamplingY"];
        if ([v44 intValue] == 1 || objc_msgSend(v45, "intValue") == 1)
        {
          [v28 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", 1111970369), @"kCIImageRequestSurfaceFormat"}];
        }

        [v43 removeObjectForKey:*MEMORY[0x1E696DE20]];
        [v28 setObject:v43 forKey:@"CIImageProperties"];
        CFRelease(v42);
        v37 = v72;
      }
    }

    v46 = *MEMORY[0x1E696E0B8];
    v47 = [v28 valueForKey:*MEMORY[0x1E696E0B8]];
    v48 = [v28 valueForKey:@"kCIImageCacheImmediately"];
    if (v47 && !v48)
    {
      v49 = v39;
      v50 = v37;
      v51 = MEMORY[0x1E696AD98];
      v52 = [v47 BOOLValue];
      v53 = v51;
      v37 = v50;
      v39 = v49;
      [v28 setValue:objc_msgSend(v53 forKey:{"numberWithBool:", v52), @"kCIImageCacheImmediately"}];
    }

    [v28 setValue:MEMORY[0x1E695E110] forKey:v46];
    ImageAtIndex = CGImageSourceCreateImageAtIndex(source, index, v28);
    if (ImageAtIndex)
    {
      v55 = ImageAtIndex;
      v15 = [(CIImage *)self initWithCGImage:ImageAtIndex options:v28];
      CGImageRelease(v55);
      v56 = v73;
      if (!v39)
      {
        v56 = 1;
      }

      if ((v56 | v37))
      {
        goto LABEL_89;
      }

      v57 = [(CIImage *)v15 imageByApplyingGainMap:v39];
      if (v57 == v15)
      {
        goto LABEL_89;
      }

      v58 = v57;
      if (dict)
      {
        v59 = [(NSDictionary *)dict objectForKey:@"kCIImageGenerateFlexGTC"];
      }

      else
      {
        v59 = 0;
      }

      if (v59 == MEMORY[0x1E695E118] || v59 == &unk_1F1081DE8)
      {
        v61 = [(CIImage *)v15 _copyHDRColorspaceFromSource:source index:index];
        v60 = v61;
        if (v61 && CGColorSpaceIsPQBased(v61))
        {
          PQBasedCopy = CGColorSpaceRetain(v60);
LABEL_86:
          v65 = PQBasedCopy;
          v66 = [v58 imageByTaggingWithColorSpace:PQBasedCopy];
          CGColorSpaceRelease(v65);
          CGColorSpaceRelease(v60);
          v67 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v66, "properties")}];
          [v67 setObject:&unk_1F1081DB8 forKey:@"Depth"];
          v68 = CGColorSpaceCopyICCProfileDescription();
          if (v68)
          {
            v69 = v68;
            [v67 setObject:v68 forKey:@"ProfileName"];
            CFRelease(v69);
          }

          v70 = [v66 imageBySettingProperties:v67];
          v71 = v15;
          v15 = v70;
LABEL_89:

          return v15;
        }
      }

      else
      {
        v60 = 0;
      }

      v63 = [(CIImage *)v15 colorSpace];
      PQBasedCopy = CI::ColorSpaceCreatePQBasedCopy(v63, v64);
      goto LABEL_86;
    }

    return 0;
  }

  return [(CIImage *)self initGainmapWithImageSource:source options:dict];
}

+ (CIImage)imageWithCGLayer:(CGLayerRef)layer options:(NSDictionary *)options
{
  v4 = [[CIImage alloc] initWithCGLayer:layer options:options];

  return v4;
}

- (CIImage)initWithCGLayer:(CGLayerRef)layer options:(NSDictionary *)options
{
  if (!layer)
  {
    goto LABEL_14;
  }

  Size = CGLayerGetSize(layer);
  Context = CGLayerGetContext(layer);
  v9 = Size.width < 0.5 || Size.height < 0.5;
  if (v9 || Context == 0)
  {
    goto LABEL_14;
  }

  v11 = vcvtpd_u64_f64(Size.width);
  v12 = vcvtpd_u64_f64(Size.height);
  v13 = CGContextCopyDeviceColorSpace();
  if (!v13)
  {
    v13 = +[CIContext defaultRGBColorSpace];
  }

  v14 = CGBitmapContextCreate(0, v11, v12, 8uLL, 0, v13, 2u);
  CGColorSpaceRelease(v13);
  if (v14 && (CGContextDrawLayerAtPoint(v14, *MEMORY[0x1E695EFF8], layer), CGContextFlush(v14), Image = CGBitmapContextCreateImage(v14), CGContextRelease(v14), Image))
  {
    v16 = [(CIImage *)self initWithCGImage:Image options:options];
    CGImageRelease(Image);
    return v16;
  }

  else
  {
LABEL_14:

    return 0;
  }
}

+ (CIImage)imageWithBitmapData:(id)a3 bytesPerRow:(unint64_t)a4 size:(CGSize)a5 format:(int)a6 options:(id)a7
{
  v7 = [[CIImage alloc] initWithBitmapData:a3 bytesPerRow:a4 size:*&a6 format:a7 options:a5.width, a5.height];

  return v7;
}

+ (CIImage)imageWithBitmapData:(NSData *)data bytesPerRow:(size_t)bytesPerRow size:(CGSize)size format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace
{
  v7 = [[CIImage alloc] initWithBitmapData:data bytesPerRow:bytesPerRow size:*&format format:colorSpace colorSpace:size.width, size.height];

  return v7;
}

- (id)_initWithBitmapData:(id)a3 bytesPerRow:(unint64_t)a4 size:(CGSize)a5 format:(int)a6 options:(id)a7
{
  v8 = *&a6;
  height = a5.height;
  width = a5.width;
  v19.receiver = self;
  v19.super_class = CIImage;
  result = [(CIImage *)&v19 init];
  if (result)
  {
    v14 = result;
    if (a3 && (width ? (v15 = height == 0) : (v15 = 1), !v15 && CI::format_bytes_per_row(v8, width) <= a4))
    {
      v16 = [a7 objectForKey:@"CIImageColorSpace"];
      if ([MEMORY[0x1E695DFB0] null] == v16 || CI_NO_CM())
      {
        v16 = 0;
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __63__CIImage__initWithBitmapData_bytesPerRow_size_format_options___block_invoke;
      v17[3] = &unk_1E75C2E70;
      v18 = v8;
      v17[4] = a3;
      v17[5] = a4;
      return [v14 initWithImageProvider:v17 width:width height:height format:v8 colorSpace:v16 options:a7];
    }

    else
    {

      return 0;
    }
  }

  return result;
}

char *__63__CIImage__initWithBitmapData_bytesPerRow_size_format_options___block_invoke(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = CI::format_bytes_per_pixel(*(a1 + 48));
  result = CFDataGetBytePtr(*(a1 + 32));
  if (a7)
  {
    v16 = &result[*(a1 + 40) * a5 + v14 * a4];
    v17 = v14 * a6;
    do
    {
      result = memcpy(a2, v16, v17);
      v16 += *(a1 + 40);
      a2 += a3;
      --a7;
    }

    while (a7);
  }

  return result;
}

- (CIImage)initWithBitmapData:(NSData *)data bytesPerRow:(size_t)bytesPerRow size:(CGSize)size format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace
{
  v7 = *&format;
  height = size.height;
  width = size.width;
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"CIImageColorSpace";
  if (!colorSpace)
  {
    colorSpace = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = colorSpace;
  return -[CIImage initWithBitmapData:bytesPerRow:size:format:options:](self, "initWithBitmapData:bytesPerRow:size:format:options:", data, bytesPerRow, v7, [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1], width, height);
}

- (CIImage)initWithBitmapData:(id)a3 bytesPerRow:(unint64_t)a4 size:(CGSize)a5 format:(int)a6 options:(id)a7
{
  v10 = *&a6;
  height = a5.height;
  width = a5.width;
  v14 = a3;
  LODWORD(v7) = vcvtpd_u64_f64(a5.width);
  LODWORD(v8) = vcvtpd_u64_f64(a5.height);
  v16 = [a3 length];
  if (v7)
  {
    v17 = v8 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_28;
  }

  v18 = v16;
  if (![v14 bytes])
  {
    goto LABEL_28;
  }

  v20 = CI::format_modernize(v10, "[CIImage initWithBitmapData:bytesPerRow:size:format:options:]", v19);
  if ((CI::format_is_supported_source_bitmap(v20) & 1) == 0)
  {
    v22 = CI::name_for_format(v20);
    v23 = ci_logger_api();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        [CIImage initWithBitmapData:bytesPerRow:size:format:options:];
      }
    }

    else if (v24)
    {
      [CIImage initWithBitmapData:bytesPerRow:size:format:options:];
    }

    goto LABEL_28;
  }

  if (ceil(height) * a4 > v18)
  {
    v21 = ci_logger_api();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CIImage initWithBitmapData:bytesPerRow:size:format:options:];
    }

LABEL_28:

    return 0;
  }

  v25 = [v14 bytes];
  v26 = CI_IOSURFACE_WRAPPING(1u);
  if ((a4 & 3) != 0)
  {
    goto LABEL_23;
  }

  if (!v26)
  {
    goto LABEL_23;
  }

  v27 = atomic_load(&dword_1ED7C47BC[20]);
  if (v27 >= 0x101)
  {
    goto LABEL_23;
  }

  if ((IOSurfaceWrapPointerOk(v25) & 1) == 0)
  {
    v28 = mmap(0, v18, 3, 4098, 1140850688, 0);
    if (v28 == -1)
    {
      goto LABEL_23;
    }

    v29 = v28;
    memcpy(v28, v25, v18);
    v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v29 length:v18 deallocator:&__block_literal_global_40];
    v30 = v14;
  }

  v31 = CI::PixelFormatType_from_format(v20);
  v32 = CI::PixelFormatType_approx_from_format(v20);
  v33 = [v14 bytes];
  v34 = CI::format_bytes_per_pixel(v20);
  if (v32)
  {
    WrappedSurface = CreateWrappedSurface(v7, v8, v32, a4 & 0xFFFFFFFC, v34, v33);
    if (WrappedSurface)
    {
      v36 = WrappedSurface;
      objc_setAssociatedObject(WrappedSurface, SetSurfaceBackingObject, v14, 1);
      if (v31 == v32)
      {
        v37 = a7;
      }

      else
      {
        if (a7)
        {
          v39 = [a7 mutableCopy];
        }

        else
        {
          v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v37 = v39;
        [v39 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v20), @"CIImageSurfaceFormat"}];
      }

      v40 = [(CIImage *)self _initWithIOSurface:v36 options:v37 owner:0];
      CFRelease(v36);

      return v40;
    }
  }

LABEL_23:

  return [(CIImage *)self _initWithBitmapData:v14 bytesPerRow:a4 size:v20 format:a7 options:width, height];
}

+ (CIImage)imageWithTexture:(unsigned int)name size:(CGSize)size flipped:(BOOL)flipped colorSpace:(CGColorSpaceRef)colorSpace
{
  v6 = [[CIImage alloc] initWithTexture:*&name size:flipped flipped:colorSpace colorSpace:size.width, size.height];

  return v6;
}

+ (CIImage)imageWithTexture:(unsigned int)a3 size:(CGSize)a4 options:(id)a5
{
  v5 = [[CIImage alloc] initWithTexture:*&a3 size:a5 options:a4.width, a4.height];

  return v5;
}

+ (CIImage)imageWithTexture:(unsigned int)name size:(CGSize)size flipped:(BOOL)flipped options:(NSDictionary *)options
{
  v6 = [[CIImage alloc] initWithTexture:*&name size:flipped flipped:options options:size.width, size.height];

  return v6;
}

- (CIImage)initWithTexture:(unsigned int)name size:(CGSize)size flipped:(BOOL)flipped colorSpace:(CGColorSpaceRef)colorSpace
{
  v6 = flipped;
  height = size.height;
  width = size.width;
  v9 = *&name;
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIImageColorSpace";
  if (!colorSpace)
  {
    colorSpace = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"CIImageFlipped";
  v13[0] = colorSpace;
  v13[1] = [MEMORY[0x1E696AD98] numberWithBool:v6];
  return -[CIImage initWithTexture:size:options:](self, "initWithTexture:size:options:", v9, [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2], width, height);
}

- (CIImage)initWithTexture:(unsigned int)name size:(CGSize)size flipped:(BOOL)flipped options:(NSDictionary *)options
{
  v6 = flipped;
  height = size.height;
  width = size.width;
  v9 = *&name;
  v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
  [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", v6), @"CIImageFlipped"}];

  return [(CIImage *)self initWithTexture:v9 size:v11 options:width, height];
}

- (CIImage)initWithTexture:(unsigned int)a3 size:(CGSize)a4 options:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = [a5 objectForKey:@"kCIImageTextureTarget"];
  v10 = v9;
  if (!v9 || [v9 intValue] == 3553)
  {
    [a5 objectForKey:@"kCIImageTextureFormat"];
    OptionAlphaMode(a5, 0);
    v17 = self;
    if (a5)
    {
      [a5 objectForKey:{@"CIImageEdgesAreClear", self}];
    }

    v12 = MEMORY[0x1E695E118];
    if (a5)
    {
      [a5 objectForKey:@"CIImageClampToEdge"];
      v13 = [a5 objectForKey:{@"CIImageEdgeRepeat", v17}];
    }

    else
    {
      v13 = 0;
    }

    if (v13 == v12 || v13 == &unk_1F1081DE8)
    {
      v14 = ci_logger_api();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CIImage initWithTexture:size:options:];
      }
    }

    v15 = [a5 objectForKey:{@"CIImageProperties", v17}];
    if (v15)
    {
      if ([MEMORY[0x1E695DFB0] null] != v15)
      {
        dictionaryDeepCopy(v15, &__block_literal_global_820);
      }
    }

    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.width = width;
    v18.size.height = height;
    if (CGRectIsNull(v18))
    {
      if (!v10)
      {
LABEL_25:
        operator new();
      }
    }

    else
    {
      v19.origin.x = 0.0;
      v19.origin.y = 0.0;
      v19.size.width = width;
      v19.size.height = height;
      if (CGRectIsInfinite(v19))
      {
        if (!v10)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v20.origin.x = 0.0;
        v20.origin.y = 0.0;
        v20.size.width = width;
        v20.size.height = height;
        v21 = CGRectInset(v20, 0.000001, 0.000001);
        CGRectIntegral(v21);
        if (!v10)
        {
          goto LABEL_25;
        }
      }
    }

    [v10 intValue];
    goto LABEL_25;
  }

  v11 = ci_logger_api();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CIImage initWithTexture:size:options:];
  }

  return 0;
}

- (void)_setOriginalMTLTexture:(id)a3 options:(id)a4
{
  v7[6] = *MEMORY[0x1E69E9840];
  v6 = [a4 mutableCopy];
  v7[0] = @"kCIImageCacheHint";
  v7[1] = @"kCIImageCacheImmediately";
  v7[2] = @"kCIImageContentDigest";
  v7[3] = @"CIImageEdgesAreClear";
  v7[4] = @"kCIImageAVDepthData";
  v7[5] = @"CIImageProperties";
  [v6 removeObjectsForKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 6)}];
  if (![v6 count])
  {
    (*(*self->_priv + 320))(self->_priv, a3);
  }
}

- (MTLTexture)metalTexture
{
  v2 = (*(*self->_priv + 312))(self->_priv, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (([(MTLTexture *)v2 conformsToProtocol:&unk_1F10AACC8]& 1) == 0)
  {
    return 0;
  }

  return v3;
}

+ (CIImage)imageWithMTLTexture:(id)texture options:(NSDictionary *)options
{
  v4 = [[CIImage alloc] initWithMTLTexture:texture options:options];

  return v4;
}

- (CIImage)initWithMTLTexture:(id)texture options:(NSDictionary *)options
{
  if ([texture textureType] != 2)
  {
    v8 = ci_logger_api();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CIImage initWithMTLTexture:options:];
    }

    goto LABEL_7;
  }

  if (([texture usage] & 1) == 0)
  {
    v7 = ci_logger_api();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CIImage initWithMTLTexture:options:];
    }

LABEL_7:

    return 0;
  }

  v10 = [texture iosurface];
  if (!v10 || (v11 = v10, IOSurfaceGetPlaneCount(v10) < 2) || (v12 = [texture device], (CIMetalDeviceIsA9OrHigher(v12, v13) & 1) != 0))
  {
    v14 = [texture pixelFormat];
    v15 = [texture swizzle] >> 24;
    if (v15 == 1)
    {
      goto LABEL_34;
    }

    if (v15 != 5)
    {
      goto LABEL_28;
    }

    v15 = 1;
    if (v14 <= 499)
    {
      if (((v14 - 10) > 0x37 || ((1 << (v14 - 10)) & 0x84200000308403) == 0) && ((v14 - 240) > 0x3D || ((1 << (v14 + 16)) & 0x3000000000000003) == 0) && v14 != 105)
      {
        goto LABEL_28;
      }
    }

    else if (((v14 - 500) > 0x37 || ((1 << (v14 + 12)) & 0xC1FF00000007EDLL) == 0) && (v14 - 570) >= 3)
    {
LABEL_28:
      v16 = [texture pixelFormat];
      if ((v16 & 0xFFFFFFFFFFFFFFFBLL) == 0x5A || v16 == 560)
      {
        v15 = 2;
      }

      else
      {
        v15 = 0;
      }
    }

LABEL_34:
    OptionAlphaMode(options, v15);
    if (options)
    {
      [(NSDictionary *)options objectForKey:@"CIImageEdgesAreClear"];
    }

    v18 = MEMORY[0x1E695E118];
    if (options)
    {
      [(NSDictionary *)options objectForKey:@"CIImageClampToEdge"];
      v19 = [(NSDictionary *)options objectForKey:@"CIImageEdgeRepeat"];
    }

    else
    {
      v19 = 0;
    }

    if (v19 == v18 || v19 == &unk_1F1081DE8)
    {
      v20 = ci_logger_api();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CIImage initWithMTLTexture:options:];
      }
    }

    v21 = [(NSDictionary *)options objectForKey:@"CIImageProperties"];
    v22 = [(NSDictionary *)options objectForKey:@"kCIImageApplyOrientationProperty"];
    if ([v22 isEqual:MEMORY[0x1E695E118]])
    {
      v23 = [v21 objectForKey:*MEMORY[0x1E696DE78]];
      if (v23)
      {
        [v23 intValue];
      }

      if (v21 && [MEMORY[0x1E695DFB0] null] != v21)
      {
        v24 = &__block_literal_global_814;
LABEL_52:
        dictionaryDeepCopy(v21, v24);
      }
    }

    else if (v21 && [MEMORY[0x1E695DFB0] null] != v21)
    {
      v24 = &__block_literal_global_820;
      goto LABEL_52;
    }

    operator new();
  }

  if (![(NSDictionary *)options objectForKey:@"CIImageFlipped"])
  {
    options = [(NSDictionary *)options mutableCopy];
    [(NSDictionary *)options setObject:MEMORY[0x1E695E110] forKey:@"CIImageFlipped"];
  }

  return [(CIImage *)self _initWithIOSurface:v11 options:options owner:0];
}

- (void)_setOriginalCVPixelBuffer:(__CVBuffer *)a3 options:(id)a4
{
  v7[8] = *MEMORY[0x1E69E9840];
  v6 = [a4 mutableCopy];
  v7[0] = @"kCIImageCacheHint";
  v7[1] = @"kCIImageCacheImmediately";
  v7[2] = @"kCIImageContentDigest";
  v7[3] = @"CIImageEdgesAreClear";
  v7[4] = @"kCIImageAVDepthData";
  v7[5] = @"kCIImageAVPortraitEffectsMatte";
  v7[6] = @"kCIImageAVSemanticSegmentationMatte";
  v7[7] = @"CIImageProperties";
  [v6 removeObjectsForKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 8)}];
  if (![v6 count])
  {
    (*(*self->_priv + 320))(self->_priv, a3);
  }
}

- (CVPixelBufferRef)pixelBuffer
{
  v2 = (*(*self->_priv + 312))(self->_priv, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 != CVPixelBufferGetTypeID())
  {
    return 0;
  }

  return v3;
}

- (id)_initWithCVImageBuffer:(__CVBuffer *)a3 options:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(a3);
  if (v6 == CVPixelBufferGetTypeID())
  {
    EncodedSize = CVImageBufferGetEncodedSize(a3);
    v9 = CI::format_from_CVPixelBuffer(a3, v8);
    v10 = CVImageBufferIsFlipped(a3) != 0;
    if ([a4 objectForKey:@"CIImageFlipped"])
    {
      v10 = [objc_msgSend(a4 objectForKey:{@"CIImageFlipped", "BOOLValue"}];
    }

    v56 = v10;
    if (CI::format_has_unpremul_alpha(v9))
    {
      v11 = 2;
    }

    else if (CI::format_has_alpha(v9))
    {
      v11 = 0;
    }

    else if (CI::format_has_x(v9))
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    Attachment = CVBufferGetAttachment(a3, *MEMORY[0x1E6965CC0], 0);
    if (Attachment && CFEqual(Attachment, *MEMORY[0x1E6965CD0]))
    {
      v11 = 2;
    }

    if (CVBufferGetAttachment(a3, *MEMORY[0x1E6965CB8], 0) == *MEMORY[0x1E695E4D0])
    {
      v15 = -1;
    }

    else
    {
      v15 = v11;
    }

    OptionAlphaMode(a4, v15);
    if (a4)
    {
      [a4 objectForKey:@"CIImageEdgesAreClear"];
    }

    v16 = MEMORY[0x1E695E118];
    if (a4)
    {
      [a4 objectForKey:@"CIImageClampToEdge"];
      v17 = [a4 objectForKey:@"CIImageEdgeRepeat"];
    }

    else
    {
      v17 = 0;
    }

    if (v17 == v16 || v17 == &unk_1F1081DE8)
    {
      v18 = ci_logger_api();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CIImage _initWithCVImageBuffer:options:];
      }
    }

    if (a4)
    {
      [a4 objectForKey:@"CIImageNearestSampling"];
      [a4 objectForKey:@"kCIImageCacheHint"];
    }

    if (!CI::format_is_ycc_or_ycca(v9) || ![a4 objectForKey:@"kCIImageYCCMatrix"] || !objc_msgSend(objc_msgSend(a4, "objectForKey:", @"kCIImageYCCMatrix"), "intValue"))
    {
      if (CI::format_is_ycc_or_ycca(v9))
      {
        if (!GetPixelBufferYCCMatrix(a3))
        {
          default_ycc_color_matrix = CI::format_get_default_ycc_color_matrix(v9);
          v20 = ci_logger_api();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = default_ycc_color_matrix;
            _os_log_impl(&dword_19CC36000, v20, OS_LOG_TYPE_INFO, "CIImage will use Rec. %d YCC Matrix because the CVPixelBuffer was not tagged with a supported kCVImageBufferYCbCrMatrixKey.", buf, 8u);
          }
        }
      }
    }

    v57 = [a4 objectForKey:@"CIImageColorSpace"];
    if ([MEMORY[0x1E695DFB0] null] == v57 || CI_NO_CM())
    {
      v55 = 1;
      goto LABEL_46;
    }

    if (!v57)
    {
      DeviceRGB = CVImageBufferCopyColorSpace(a3);
      if (!DeviceRGB)
      {
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        if (!DeviceRGB)
        {
          v55 = 0;
          v57 = 0;
LABEL_46:
          if ([a4 objectForKey:@"kCIImageToneMapHDRtoSDR"])
          {
            if (a4)
            {
              v22 = [a4 objectForKey:@"kCIImageToneMapHDRtoSDR"];
            }

            else
            {
              v22 = 0;
            }

            v24 = v22 == v16 || v22 == &unk_1F1081DE8;
            v53 = v24;
          }

          else
          {
            v53 = 0;
          }

          v25 = [a4 objectForKey:@"CIImageProperties"];
          v26 = [a4 objectForKey:@"kCIImageApplyOrientationProperty"];
          if ([v26 isEqual:MEMORY[0x1E695E118]])
          {
            v27 = [v25 objectForKey:*MEMORY[0x1E696DE78]];
            if (v27)
            {
              LODWORD(v27) = [v27 intValue];
            }

            if ((v27 - 9) >= 0xFFFFFFF8)
            {
              v28 = v27;
            }

            else
            {
              v28 = 0;
            }

            v54 = v28;
            if (v25 && [MEMORY[0x1E695DFB0] null] != v25)
            {
              v29 = &__block_literal_global_814;
LABEL_70:
              dictionaryDeepCopy(v25, v29);
            }
          }

          else
          {
            if (!v25)
            {
              v54 = 0;
              goto LABEL_72;
            }

            v54 = 0;
            if ([MEMORY[0x1E695DFB0] null] != v25)
            {
              v29 = &__block_literal_global_820;
              goto LABEL_70;
            }
          }

LABEL_72:
          v30 = OptionHeadroom(a4);
          v31 = *&v30;
          v32 = OptionAverageLightLevel(a4);
          if (v31 == 0.0 || *&v32 == 0.0)
          {
            v33 = CVBufferCopyAttachment(a3, *MEMORY[0x1E6965EE8], 0);
            v34 = v33;
            if (v33)
            {
              v35 = CFGetTypeID(v33);
              if (v35 == CFDataGetTypeID() && CFDataGetLength(v34) == 24)
              {
                CFDataGetBytePtr(v34);
              }
            }

            v36 = CVBufferCopyAttachment(a3, *MEMORY[0x1E6965DE0], 0);
            v37 = v36;
            if (v36)
            {
              v38 = CFGetTypeID(v36);
              if (v38 == CFDataGetTypeID() && CFDataGetLength(v37) == 4)
              {
                CFDataGetBytePtr(v37);
              }

              goto LABEL_83;
            }

            if (v34)
            {
LABEL_83:
              if (v34)
              {
                CFRelease(v34);
              }

              if (v37)
              {
                CFRelease(v37);
              }
            }
          }

          v39 = CFGetTypeID(a3);
          if (v39 == CVPixelBufferGetTypeID())
          {
            operator new();
          }

          [a4 objectForKey:@"kCIImageAVDepthData"];
          [a4 objectForKey:@"kCIImageAVPortraitEffectsMatte"];
          [a4 objectForKey:@"kCIImageAVSemanticSegmentationMatte"];
          if ((v55 & 1) == 0)
          {
            CI::ColorMatchImage::append_and_unref(0, v57, v53);
          }

          v41 = *(MEMORY[0x1E695F050] + 16);
          v62.origin = *MEMORY[0x1E695F050];
          v62.size = v41;
          if ((OptionIsRectVector(a4, &v62, v40) & 1) == 0)
          {
            v42 = a4 ? [a4 objectForKey:@"kCIImageApplyCleanAperture"] : 0;
            if (v42 == MEMORY[0x1E695E118] || v42 == &unk_1F1081DE8)
            {
              v62.origin.x = GetPixelBufferCleanAperture(a3);
              v62.origin.y = v43;
              v62.size.width = v44;
              v62.size.height = v45;
            }
          }

          x = v62.origin.x;
          y = v62.origin.y;
          size = v62.size;
          if (!CGRectIsNull(v62))
          {
            *buf = 0x3FF0000000000000;
            *&buf[8] = 0;
            *&v64[0] = 0;
            *(&v64[0] + 1) = 0x3FF0000000000000;
            *&v64[1] = -x;
            *(&v64[1] + 1) = -y;
            if (!CI::Affine::isNearIdentity(buf, 0.00001))
            {
              v59 = *buf;
              v60 = v64[0];
              v61 = v64[1];
              CI::AffineImage::append_and_unref(0, &v59, 0);
            }

            v66.origin.x = 0.0;
            v66.origin.y = 0.0;
            v66.size = size;
            CI::CropImage::append_and_unref(0, v49, v66);
          }

          height = EncodedSize.height;
          if (EncodedSize.height == 1)
          {
            v51 = 0;
          }

          else
          {
            v51 = v56;
          }

          if (v51 == 1)
          {
            *&buf[8] = 0;
            *&v64[0] = 0;
            *buf = 0x3FF0000000000000;
            *(v64 + 8) = xmmword_19CF25100;
            *(&v64[1] + 1) = height;
            CI::AffineImage::append_and_unref(0, buf, 0);
          }

          if (v54 >= 2)
          {
            v67.size.width = EncodedSize.width;
            v67.size.height = height;
            memset(v64, 0, sizeof(v64));
            *buf = 0u;
            v67.origin.x = 0.0;
            v67.origin.y = 0.0;
            orientationTransform(v67, v54, buf);
            v59 = *buf;
            v60 = v64[0];
            v61 = v64[1];
            CI::AffineImage::append_and_unref(0, &v59, 0);
          }

          return [(CIImage *)self _initWithInternalRepresentation:0];
        }
      }

      v57 = DeviceRGB;
      CFAutorelease(DeviceRGB);
    }

    v55 = 0;
    goto LABEL_46;
  }

  v12 = ci_logger_api();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CIImage _initWithCVImageBuffer:options:];
  }

  return 0;
}

+ (CIImage)imageWithCVPixelBuffer:(CVPixelBufferRef)pixelBuffer options:(NSDictionary *)options
{
  v4 = [[CIImage alloc] initWithCVPixelBuffer:pixelBuffer options:options];

  return v4;
}

- (CIImage)initWithCVPixelBuffer:(CVPixelBufferRef)pixelBuffer options:(NSDictionary *)options
{
  if (!pixelBuffer)
  {
    v14 = ci_logger_api();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CIImage initWithCVPixelBuffer:options:];
    }

    goto LABEL_12;
  }

  v7 = CFGetTypeID(pixelBuffer);
  if (v7 != CVPixelBufferGetTypeID())
  {
    v15 = ci_logger_api();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CIImage initWithCVPixelBuffer:options:];
    }

LABEL_12:

    return 0;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v9 = PixelFormatType;
  if (PixelFormatType != 1919365992 && PixelFormatType != 1919365990)
  {
    if (CI::PixelFormatType_is_source_supported(PixelFormatType))
    {
      CVPixelBufferGetIOSurface(pixelBuffer);
      v13 = [(CIImage *)self _initWithCVImageBuffer:pixelBuffer options:options];
      [(CIImage *)v13 _setOriginalCVPixelBuffer:pixelBuffer options:options];
      return v13;
    }

    if (v9 < 0x29)
    {
      v18 = ci_logger_api();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CIImage initWithCVPixelBuffer:options:];
      }
    }

    else
    {
      v17 = ci_logger_api();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CIImage initWithCVPixelBuffer:options:];
      }
    }

    goto LABEL_12;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v12 = [(NSDictionary *)options objectForKeyedSubscript:@"CIImageColorSpace"];
  if (!v12)
  {
    v12 = CVImageBufferCopyColorSpace(pixelBuffer);
    CFAutorelease(v12);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__CIImage_initWithCVPixelBuffer_options___block_invoke;
  v19[3] = &unk_1E75C2E00;
  v19[4] = pixelBuffer;
  v20 = v9;
  return [(CIImage *)self initWithImageProvider:v19 width:Width height:Height format:2056 colorSpace:v12 options:options];
}

uint64_t __41__CIImage_initWithCVPixelBuffer_options___block_invoke(uint64_t a1, char *__b, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v13 = __b;
    v14 = a7;
    do
    {
      memset_pattern8(v13, &unk_19CF23CA8, 8 * a6);
      v13 += a3;
      --v14;
    }

    while (v14);
  }

  v15 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __41__CIImage_initWithCVPixelBuffer_options___block_invoke_2;
  v18[3] = &__block_descriptor_84_e22_v48__0r_v8Q16Q24Q32Q40l;
  v18[4] = a7;
  v18[5] = __b;
  v18[6] = a3;
  v18[7] = a5;
  v19 = *(a1 + 40);
  v18[8] = a6;
  v18[9] = a4;
  return PixelBufferApplyPlaneReadOnlyBlock(v15, v18);
}

uint64_t __41__CIImage_initWithCVPixelBuffer_options___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(result + 48);
    v9 = *(result + 80);
    v10 = a2 + *(result + 56) * a6;
    v11 = *(result + 40) + 2 * a3;
    do
    {
      if (v9 == 1919365990)
      {
        v15 = *(result + 64);
        if (v15)
        {
          v16 = (v10 + 4 * *(result + 72));
          v17 = v11;
          do
          {
            v18 = *v16++;
            _S0 = v18;
            __asm { FCVT            H0, S0 }

            *v17 = _S0;
            v17 += 4;
            --v15;
          }

          while (v15);
        }
      }

      else if (v9 == 1919365992)
      {
        v12 = *(result + 64);
        if (v12)
        {
          v13 = 0;
          v14 = 2 * *(result + 72);
          do
          {
            *(v11 + v13) = *(v10 + v14);
            v14 += 2;
            v13 += 8;
            --v12;
          }

          while (v12);
        }
      }

      ++v7;
      v10 += a6;
      v11 += v8;
    }

    while (v7 != v6);
  }

  return result;
}

+ (CIImage)imageWithCVImageBuffer:(CVImageBufferRef)imageBuffer options:(NSDictionary *)options
{
  v4 = [[CIImage alloc] initWithCVImageBuffer:imageBuffer options:options];

  return v4;
}

- (CIImage)initWithCVImageBuffer:(CVImageBufferRef)imageBuffer options:(NSDictionary *)options
{
  if (!imageBuffer)
  {
    v9 = ci_logger_api();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CIImage initWithCVImageBuffer:options:];
    }

    goto LABEL_14;
  }

  v7 = CFGetTypeID(imageBuffer);
  if (v7 == CVPixelBufferGetTypeID())
  {

    return [(CIImage *)self initWithCVPixelBuffer:imageBuffer options:options];
  }

  v10 = CFGetTypeID(imageBuffer);
  if (v10 != CVMetalTextureGetTypeID())
  {
    v12 = ci_logger_api();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CIImage initWithCVImageBuffer:options:];
    }

LABEL_14:

    return 0;
  }

  Texture = CVMetalTextureGetTexture(imageBuffer);

  return [(CIImage *)self initWithMTLTexture:Texture options:options];
}

+ (CIImage)imageWithColor:(CIColor *)color
{
  v3 = [[CIImage alloc] initWithColor:color];

  return v3;
}

- (CIImage)initWithColor:(CIColor *)color
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    operator new();
  }

  return 0;
}

+ (id)noiseImage
{
  {
    +[CIImage noiseImage]::noiseImage = _noiseImage(0);
  }

  return +[CIImage noiseImage]::noiseImage;
}

+ (id)noiseImageNearest
{
  {
    +[CIImage noiseImageNearest]::noiseImage = _noiseImage(1);
  }

  return +[CIImage noiseImageNearest]::noiseImage;
}

+ (id)noiseImagePadded
{
  if (+[CIImage noiseImagePadded]::onceToken != -1)
  {
    +[CIImage noiseImagePadded];
  }

  return +[CIImage noiseImagePadded]::noiseImage;
}

CIImage *__27__CIImage_noiseImagePadded__block_invoke()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF88] dataWithLength:268320];
  v1 = [v0 mutableBytes];
  srandom(0x2Au);
  v2 = 0;
  v3 = v1 + 1044;
  do
  {
    for (i = 0; i != 1024; ++i)
    {
      *(v3 + i) = random();
    }

    ++v2;
    v3 += 1040;
  }

  while (v2 != 256);
  for (j = 0; j != 266240; j += 1040)
  {
    v6 = v1 + j;
    *(v6 + 1040) = *(v1 + j + 2064);
    *(v6 + 2068) = *(v1 + j + 1044);
  }

  memcpy(v1, (v1 + 266240), 0x410uLL);
  memcpy((v1 + 267280), (v1 + 1040), 0x410uLL);
  v8 = @"CIImageColorSpace";
  v9[0] = [MEMORY[0x1E695DFB0] null];
  result = -[CIImage initWithBitmapData:bytesPerRow:size:format:options:]([CIImage alloc], "initWithBitmapData:bytesPerRow:size:format:options:", v0, 1040, 265, [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1], 258.0, 258.0);
  +[CIImage noiseImagePadded]::noiseImage = result;
  return result;
}

- (CGAffineTransform)imageTransformForOrientation:(SEL)a3
{
  [(CIImage *)self extent];

  return orientationTransform(*&v6, orientation, retstr);
}

- (CIImage)imageByApplyingOrientation:(int)orientation
{
  if (self)
  {
    [(CIImage *)self imageTransformForOrientation:*&orientation];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  return [(CIImage *)self imageByApplyingTransform:v5];
}

- (CGAffineTransform)imageTransformForCGOrientation:(SEL)a3
{
  [(CIImage *)self extent];

  return orientationTransform(*&v6, orientation, retstr);
}

- (CIImage)imageByApplyingCGOrientation:(CGImagePropertyOrientation)orientation
{
  if (self)
  {
    [(CIImage *)self imageTransformForCGOrientation:*&orientation];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  return [(CIImage *)self imageByApplyingTransform:v5];
}

+ (CIImage)imageWithData:(NSData *)data
{
  v3 = [[CIImage alloc] initWithData:data options:0];

  return v3;
}

+ (CIImage)imageWithData:(NSData *)data options:(NSDictionary *)options
{
  v4 = [[CIImage alloc] initWithData:data options:options];

  return v4;
}

- (CIImage)initWithData:(NSData *)data options:(NSDictionary *)options
{
  v7 = objc_autoreleasePoolPush();
  if (!data)
  {
    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = *MEMORY[0x1E696E118];
  if ([(NSDictionary *)options valueForKey:*MEMORY[0x1E696E118]])
  {
    [v8 setObject:-[NSDictionary valueForKey:](options forKey:{"valueForKey:", v9), v9}];
  }

  v10 = *MEMORY[0x1E696E0F8];
  if ([(NSDictionary *)options objectForKey:*MEMORY[0x1E696E0F8]])
  {
    [v8 setObject:-[NSDictionary objectForKey:](options forKey:{"objectForKey:", v10), v10}];
  }

  v11 = CGImageSourceCreateWithData(data, v8);
  if (v11)
  {
    v12 = v11;
    if (options)
    {
      v13 = [(NSDictionary *)options objectForKey:@"kCIImageExpandToHDR"];
    }

    else
    {
      v13 = 0;
    }

    if ((v13 == MEMORY[0x1E695E118] || v13 == &unk_1F1081DE8) && [(__CFString *)CGImageSourceGetType(v12) hasSuffix:@"raw-image"]&& (v15 = [CIRAWFilter filterWithImageData:data identifierHint:CGImageSourceGetType(v12)], (v18 = hdrRawImage(v15, v16, v17)) != 0))
    {
      v19 = v18;
      CFRelease(v12);

      v14 = v19;
    }

    else
    {
      v14 = [(CIImage *)self initWithCGImageSource:v12 index:0 options:options];
      CFRelease(v12);
    }
  }

  else
  {
LABEL_9:

    v14 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v14;
}

+ (CIImage)imageWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options
{
  v4 = [[CIImage alloc] initWithContentsOfURL:url options:options];

  return v4;
}

- (CIImage)initWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options
{
  v7 = objc_autoreleasePoolPush();
  v8 = CGImageSourceCreateWithURL(url, 0);
  if (v8)
  {
    v9 = v8;
    if (options)
    {
      v10 = [(NSDictionary *)options objectForKey:@"kCIImageExpandToHDR"];
    }

    else
    {
      v10 = 0;
    }

    v12 = MEMORY[0x1E695E118];
    v13 = v10 == MEMORY[0x1E695E118] || v10 == &unk_1F1081DE8;
    if (!v13 || [(NSDictionary *)options objectForKey:@"kCIImageToneMapHDRtoSDR"]&& (!options ? (v14 = 0) : (v14 = [(NSDictionary *)options objectForKey:@"kCIImageToneMapHDRtoSDR"]), v14 == v12 || v14 == &unk_1F1081DE8) || ![(__CFString *)CGImageSourceGetType(v9) hasSuffix:@"raw-image"]|| (v15 = [CIRAWFilter filterWithImageURL:url], (v18 = hdrRawImage(v15, v16, v17)) == 0))
    {
      v11 = [(CIImage *)self initWithCGImageSource:v9 index:0 options:options];
      CFRelease(v9);
      if (v11)
      {
        priv = v11->_priv;
        (*(*priv + 288))(priv, url);
        if ((*(*priv + 336))(priv))
        {
          (*(*priv + 344))(priv, 0);
        }
      }
    }

    else
    {
      v19 = v18;
      CFRelease(v9);

      v11 = v19;
    }
  }

  else
  {

    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

+ (CIImage)imageWithContentsOfFile:(id)a3 options:(id)a4
{
  v4 = [[CIImage alloc] initWithContentsOfFile:a3 options:a4];

  return v4;
}

- (CIImage)initWithContentsOfFile:(id)a3 options:(id)a4
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3];

  return [(CIImage *)self initWithContentsOfURL:v6 options:a4];
}

- (id)_imageByApplyingTransform:(CGAffineTransform *)a3 highQualityDownsample:(Trilean)a4
{
  v6 = *&a3->c;
  *&v15.a = *&a3->a;
  *&v15.c = v6;
  *&v15.tx = *&a3->tx;
  if (CGAffineTransformIsIdentity(&v15))
  {
    return self;
  }

  v8 = [(CIImage *)self _internalRepresentation];
  v9 = *&a3->a;
  v10 = *&a3->c;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v9, v9), vceqq_f64(v10, v10))))))
  {
    v13 = ci_logger_api();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CIImage _imageByApplyingTransform:highQualityDownsample:];
    }

    return +[CIImage emptyImage];
  }

  v11 = v8;
  if (fabs(-v9.f64[1] * v10.f64[0] + v9.f64[0] * v10.f64[1]) >= 1.0e-10)
  {
    operator new();
  }

  v16.origin.x = (*(*v8 + 88))(v8);
  if (!CGRectIsInfinite(v16))
  {
    return +[CIImage emptyImage];
  }

  if ((*(*v11 + 16))(v11) == 9)
  {
    return self;
  }

  return 0;
}

- (CIImage)imageByApplyingTransform:(CGAffineTransform *)matrix
{
  v3 = *&matrix->c;
  v5[0] = *&matrix->a;
  v5[1] = v3;
  v5[2] = *&matrix->tx;
  return [(CIImage *)self _imageByApplyingTransform:v5 highQualityDownsample:0];
}

- (CIImage)imageByApplyingTransform:(CGAffineTransform *)matrix highQualityDownsample:(BOOL)highQualityDownsample
{
  v4 = *&matrix->c;
  v7[0] = *&matrix->a;
  v7[1] = v4;
  v7[2] = *&matrix->tx;
  if (highQualityDownsample)
  {
    v5 = 1;
  }

  else
  {
    v5 = 255;
  }

  return [(CIImage *)self _imageByApplyingTransform:v7 highQualityDownsample:v5];
}

- (CIImage)imageByCroppingToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(CIImage *)self extent];
  v27.origin.x = v8;
  v27.origin.y = v9;
  v27.size.width = v10;
  v27.size.height = v11;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  if (CGRectContainsRect(v23, v27))
  {
    v12 = self;

    return v12;
  }

  else
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v25 = CGRectIntegral(v24);
    v14 = v25.origin.x;
    v15 = v25.origin.y;
    v16 = v25.size.width;
    v17 = v25.size.height;
    [(CIImage *)self extent];
    v28.origin.x = v18;
    v28.origin.y = v19;
    v28.size.width = v20;
    v28.size.height = v21;
    v26.origin.x = v14;
    v26.origin.y = v15;
    v26.size.width = v16;
    v26.size.height = v17;
    if (CGRectIntersectsRect(v26, v28))
    {
      [(CIImage *)self _internalRepresentation];
      operator new();
    }

    return +[CIImage emptyImage];
  }
}

- (CIImage)imageByClampingToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
  {
LABEL_2:

    return +[CIImage emptyImage];
  }

  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectIsInfinite(v11))
  {
    [(CIImage *)self extent];
    if (!CGRectIsEmpty(v12))
    {
      [(CIImage *)self extent];
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      v14 = CGRectIntersection(v13, v15);
      if (!CGRectIsEmpty(v14))
      {
        [(CIImage *)self _internalRepresentation];
        operator new();
      }
    }

    goto LABEL_2;
  }

  v9 = self;

  return v9;
}

- (CIImage)imageByClampingToExtent
{
  [(CIImage *)self extent];

  return [(CIImage *)self imageByClampingToRect:?];
}

- (CIImage)imageByCompositingOverImage:(CIImage *)dest
{
  [(CIImage *)self extent];
  IsEmpty = CGRectIsEmpty(v10);
  [(CIImage *)dest extent];
  v6 = CGRectIsEmpty(v11);
  if (IsEmpty && v6)
  {

    return +[CIImage emptyImage];
  }

  else
  {
    if (v6)
    {
      v8 = self;
    }

    else
    {
      if (!IsEmpty)
      {
        return [(CIImage *)self filteredImage:@"CISourceOverCompositing" keysAndValues:@"inputBackgroundImage", dest, 0];
      }

      v8 = dest;
    }

    return v8;
  }
}

- (CIImage)imageByPremultiplyingAlpha
{
  [(CIImage *)self extent];
  if (CGRectIsEmpty(v7))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    v4 = [(CIImage *)self _internalRepresentation];
    if ((*(*v4 + 16))(v4) == 16 && v4[34] == -1)
    {
      v5 = (*(*v4 + 48))(v4, 0);
    }

    else
    {
      if ((*(*v4 + 128))(v4) != 1 && (*(*v4 + 128))(v4) != -1)
      {
        operator new();
      }

      v5 = v4;
    }

    return [CIImage imageWithInternalRepresentation:v5];
  }
}

- (CIImage)imageByUnpremultiplyingAlpha
{
  v10 = *MEMORY[0x1E69E9840];
  [(CIImage *)self extent];
  if (CGRectIsEmpty(v12))
  {

    return +[CIImage emptyImage];
  }

  v4 = [(CIImage *)self _internalRepresentation];
  if ((*(*v4 + 16))(v4) == 16)
  {
    v5 = v4[34];
    if (v5 != 1)
    {
      if (v5 == -1)
      {
        v6 = ci_logger_api();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v8 = 136446210;
          v9 = "[CIImage imageByUnpremultiplyingAlpha]";
          _os_log_impl(&dword_19CC36000, v6, OS_LOG_TYPE_INFO, "%{public}s was called and the receiver is already unpremultiplied.", &v8, 0xCu);
        }
      }

LABEL_12:
      operator new();
    }

    v7 = (*(*v4 + 48))(v4, 0);
  }

  else
  {
    if ((*(*v4 + 128))(v4) != 1 && (*(*v4 + 128))(v4) != -1)
    {
      goto LABEL_12;
    }

    v7 = v4;
  }

  return [CIImage imageWithInternalRepresentation:v7];
}

- (id)imageBySettingUnassociatedAlpha
{
  v2 = [(CIImage *)self _internalRepresentation];
  if ((*(*v2 + 128))(v2) != -1)
  {
    operator new();
  }

  return [CIImage imageWithInternalRepresentation:v2];
}

- (id)imageBySettingAssociatedAlpha
{
  v2 = [(CIImage *)self _internalRepresentation];
  if ((*(*v2 + 128))(v2) == -1)
  {
    operator new();
  }

  return [CIImage imageWithInternalRepresentation:v2];
}

- (id)_imageByApplyingGamma:(double)a3
{
  [(CIImage *)self extent];
  if (CGRectIsEmpty(v8))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    if (fabs(a3 + -1.0) >= 0.01)
    {
      [(CIImage *)self _internalRepresentation];
      operator new();
    }

    v6 = self;

    return v6;
  }
}

- (CIImage)imageByApplyingGaussianBlurWithSigma:(double)sigma
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (sigma >= 0.16)
  {
    v6 = @"inputRadius";
    v7[0] = [MEMORY[0x1E696AD98] numberWithDouble:?];
    return -[CIImage imageByApplyingFilter:withInputParameters:](self, "imageByApplyingFilter:withInputParameters:", @"CIGaussianBlur", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  }

  else
  {
    v4 = self;

    return v4;
  }
}

- (CIImage)imageByColorMatchingWorkingSpaceToColorSpace:(CGColorSpaceRef)colorSpace
{
  v3 = self;
  if (colorSpace)
  {
    [(CIImage *)self extent];
    if (CGRectIsEmpty(v16))
    {

      return +[CIImage emptyImage];
    }

    else if (CI::ColorSpace_is_RGB_or_Gray_and_supports_output(colorSpace, v5))
    {
      v8 = [(CIImage *)v3 baseColorSpace];
      if (!CI_NO_CM() && CI::ColorSpace_is_HDR(v8, v9) && (CI::ColorSpace_is_HDR(colorSpace, v10) & 1) == 0 && !CGColorSpaceUsesExtendedRange(colorSpace))
      {
        v3 = [[(CIImage *)v3 imageByColorMatchingWorkingSpaceToColorSpace:v8] imageByToneMappingColorSpaceToWorkingSpace:v8];
      }

      v11 = [(CIImage *)v3 _internalRepresentation];
      if (*(*v11 + 16))(v11) != 4 || *(v11 + 153) != 1 || (v12 = *(v11 + 136), v12 != colorSpace) && (!v12 || !CFEqual(colorSpace, v12)) || (*(v11 + 154))
      {
        operator new();
      }

      v14 = (*(*v11 + 48))(v11, 0);

      return [CIImage imageWithInternalRepresentation:v14];
    }

    else
    {
      v13 = ci_logger_api();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CIImage imageByColorMatchingWorkingSpaceToColorSpace:];
      }

      return 0;
    }
  }

  else
  {
    v7 = self;

    return v7;
  }
}

- (id)imageByColorMatchingWorkingSpaceToRGBorGrayColorSpace:(CGColorSpace *)a3
{
  if (a3)
  {
    if (CI::ColorSpace_is_RGB_or_Gray_and_supports_output(a3, a2))
    {
      v5 = [(CIImage *)self _internalRepresentation];
      if (*(*v5 + 16))(v5) != 4 || *(v5 + 153) != 1 || (v6 = *(v5 + 17), v6 != a3) && (!v6 || !CFEqual(a3, v6)) || (*(v5 + 154))
      {
        operator new();
      }

      v10 = (*(*v5 + 48))(v5, 0);

      return [CIImage imageWithInternalRepresentation:v10];
    }

    else
    {
      v9 = ci_logger_api();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CIImage imageByColorMatchingWorkingSpaceToRGBorGrayColorSpace:];
      }

      return 0;
    }
  }

  else
  {
    v7 = self;

    return v7;
  }
}

- (CIImage)imageByColorMatchingColorSpaceToWorkingSpace:(CGColorSpaceRef)colorSpace
{
  if (colorSpace)
  {
    if (CI::ColorSpace_is_RGB_or_Gray(colorSpace, a2))
    {
      v5 = [(CIImage *)self _internalRepresentation];
      if (*(*v5 + 16))(v5) != 4 || (v6 = CGColorSpaceContainsFlexGTCInfo(), v5[152] != 1) || (v7 = v6, v8 = *(v5 + 18), v8 != colorSpace) && (!v8 || !CFEqual(colorSpace, v8)) || ((v5[154] | v7))
      {
        operator new();
      }

      v12 = (*(*v5 + 48))(v5, 0);

      return [CIImage imageWithInternalRepresentation:v12];
    }

    else
    {
      v11 = ci_logger_api();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CIImage imageByColorMatchingColorSpaceToWorkingSpace:];
      }

      return 0;
    }
  }

  else
  {
    v9 = self;

    return v9;
  }
}

- (id)_imageByToneMappingColorSpaceToWorkingSpace:(CGColorSpace *)a3 targetHeadroom:(float)a4 constrainedHigh:(BOOL)a5
{
  if (a3)
  {
    if (CI::ColorSpace_is_RGB(a3, a2) && (CI::ColorSpace_is_HDR(a3, v8) & 1) != 0)
    {
      if (a4 >= 1.0 && a4 <= 16.0)
      {
        [(CIImage *)self _internalRepresentation];
        operator new();
      }

      v10 = ci_logger_api();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CIImage _imageByToneMappingColorSpaceToWorkingSpace:targetHeadroom:constrainedHigh:];
      }
    }

    else
    {
      v11 = ci_logger_api();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CIImage _imageByToneMappingColorSpaceToWorkingSpace:targetHeadroom:constrainedHigh:];
      }
    }

    return 0;
  }

  else
  {
    v13 = self;

    return v13;
  }
}

- (id)imageByToneMappingColorSpaceToWorkingSpace:(CGColorSpace *)a3
{
  if (a3)
  {
    if (CI::ColorSpace_is_RGB(a3, a2) && (CI::ColorSpace_is_HDR(a3, v5) & 1) != 0)
    {
      [(CIImage *)self _internalRepresentation];
      operator new();
    }

    v6 = ci_logger_api();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CIImage imageByToneMappingColorSpaceToWorkingSpace:];
    }

    return 0;
  }

  else
  {
    v8 = self;

    return v8;
  }
}

- (id)imageByTaggingWithColorSpace:(CGColorSpace *)a3
{
  if (!a3 || (CI::ColorSpace_is_RGB(a3, a2) & 1) != 0)
  {
    [(CIImage *)self _internalRepresentation];
    operator new();
  }

  v4 = ci_logger_api();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CIImage imageByTaggingWithColorSpace:];
  }

  return 0;
}

- (id)imageBySettingContentHeadroom:(float)a3
{
  if (a3 < 1.0 && a3 != 0.0)
  {
    v4 = ci_logger_api();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [CIImage imageBySettingContentHeadroom:];
    }
  }

  [(CIImage *)self _internalRepresentation];
  operator new();
}

- (id)imageBySettingContentAverageLightLevel:(float)a3
{
  if (a3 < 0.0)
  {
    v4 = ci_logger_api();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [CIImage imageBySettingContentAverageLightLevel:];
    }
  }

  [(CIImage *)self _internalRepresentation];
  operator new();
}

- (id)_imageByApplyingColorMatrixRed:(CIImage *)self green:(SEL)a2 blue:bias:
{
  v11 = v4;
  v12 = v5;
  v9 = v2;
  v10 = v3;
  v24 = *MEMORY[0x1E69E9840];
  [(CIImage *)self extent];
  if (CGRectIsEmpty(v26))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    v13[0] = vcvtq_f64_f32(*&v9);
    *&v13[1] = *(&v9 + 2);
    *(&v13[1] + 1) = 0;
    v13[2] = vcvtq_f64_f32(*&v10);
    v14 = *(&v10 + 2);
    v15 = 0;
    v16 = vcvtq_f64_f32(*&v11);
    v17 = *(&v11 + 2);
    v18 = 0;
    v19 = xmmword_19CF27208;
    v20 = unk_19CF27218;
    v21 = vcvtq_f64_f32(*&v12);
    v22 = *(&v12 + 2);
    v23 = 0;
    if (!CI::ColorMatrixImage::is_identity(v13, v7))
    {
      [(CIImage *)self _internalRepresentation];
      operator new();
    }

    return self;
  }
}

- (CIImage)imageByInsertingIntermediate:(BOOL)cache
{
  if (cache)
  {
    v3.var0 = 1;
  }

  else
  {
    v3.var0 = -1;
  }

  return implRenderToIntermediate(self, v3);
}

- (CIImage)imageBySettingProperties:(NSDictionary *)properties
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSDictionary *)properties allValues];
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = objc_autoreleasePoolPush();
    v8 = [(NSArray *)v5 count];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [(NSArray *)v5 objectAtIndexedSubscript:i];
        v12 = CFGetTypeID(v11);
        if (v12 != CGImageMetadataGetTypeID() && v12 != CGColorSpaceGetTypeID() && v12 != CGColorGetTypeID())
        {
          v11 = [v11 copy];
        }

        [v6 setObject:v11 atIndexedSubscript:i];
      }
    }

    objc_autoreleasePoolPop(v7);
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:{-[NSDictionary allKeys](properties, "allKeys")}];
    [(CIImage *)self _internalRepresentation];
    operator new();
  }

  v13 = ci_logger_api();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [CIImage imageBySettingProperties:];
  }

  return self;
}

- (id)imageBySettingPropertiesNoCopy:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:a3 copyItems:0];
    [(CIImage *)self _internalRepresentation];
    operator new();
  }

  v6 = ci_logger_api();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CIImage imageBySettingPropertiesNoCopy:];
  }

  return self;
}

- (id)imageBySettingDepthData:(id)a3
{
  if (isKind_AVDepthDataClass(a3))
  {
    [(CIImage *)self _internalRepresentation];
    operator new();
  }

  v4 = ci_logger_api();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CIImage imageBySettingDepthData:];
  }

  return self;
}

- (CIImage)imageBySamplingNearest
{
  [(CIImage *)self extent];
  if (!CGRectIsEmpty(v5))
  {
    [(CIImage *)self _internalRepresentation];
    operator new();
  }

  return +[CIImage emptyImage];
}

- (CIImage)imageBySamplingLinear
{
  [(CIImage *)self extent];
  if (!CGRectIsEmpty(v5))
  {
    [(CIImage *)self _internalRepresentation];
    operator new();
  }

  return +[CIImage emptyImage];
}

+ (id)imageForRenderingWithMetal:(id)a3 orNonMetal:(id)a4
{
  v4 = [[CIImage alloc] initForRenderingWithMetal:a3 orNonMetal:a4];

  return v4;
}

- (id)initForRenderingWithMetal:(id)a3 orNonMetal:(id)a4
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a4;
  v5[1] = a3;
  return -[CIImage initWithArrayOfImages:selector:](self, "initWithArrayOfImages:selector:", [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2], &__block_literal_global_400);
}

+ (id)imageForRenderingWithMPS:(id)a3 orNonMPS:(id)a4
{
  v4 = [[CIImage alloc] initForRenderingWithMPS:a3 orNonMPS:a4];

  return v4;
}

- (id)initForRenderingWithMPS:(id)a3 orNonMPS:(id)a4
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a4;
  v5[1] = a3;
  return -[CIImage initWithArrayOfImages:selector:](self, "initWithArrayOfImages:selector:", [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2], &__block_literal_global_405);
}

+ (id)imageForRenderingWithMetalContext:(id)a3 orOpenGLContextUsingMetal:(id)a4 orNonMetalContext:(id)a5
{
  v5 = [[CIImage alloc] initForRenderingWithMetalContext:a3 orOpenGLContextUsingMetal:a4 orNonMetalContext:a5];

  return v5;
}

- (id)initForRenderingWithMetalContext:(id)a3 orOpenGLContextUsingMetal:(id)a4 orNonMetalContext:(id)a5
{
  v6[3] = *MEMORY[0x1E69E9840];
  v6[0] = a5;
  v6[1] = a4;
  v6[2] = a3;
  return -[CIImage initWithArrayOfImages:selector:](self, "initWithArrayOfImages:selector:", [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3], &__block_literal_global_410);
}

uint64_t __88__CIImage_initForRenderingWithMetalContext_orOpenGLContextUsingMetal_orNonMetalContext___block_invoke(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 objectForKey:{@"kContextInfoIsMetal", "BOOLValue"}])
  {
    return 0;
  }

  v3 = CIMetalCopyDefaultDevice();
  if (!v3)
  {
    return 2;
  }

  v5 = v3;
  if (CIMetalDeviceIsSupported(v3, v4))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  CFRelease(v5);
  return v2;
}

+ (CIImage)imageWithArrayOfImages:(id)a3 selector:(id)a4
{
  v4 = [[CIImage alloc] initWithArrayOfImages:a3 selector:a4];

  return v4;
}

- (CIImage)initWithArrayOfImages:(id)a3 selector:(id)a4
{
  if ([a3 count])
  {
    [a3 count];
    operator new();
  }

  return 0;
}

- (CIFilterShape)definition
{
  [(CIImage *)self extent];

  return [CIFilterShape shapeWithRect:?];
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    if (priv[22] > 0x3FFu)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __18__CIImage_dealloc__block_invoke_2;
      v5[3] = &__block_descriptor_40_e5_v8__0l;
      v5[4] = priv;
      CI::Object::performDeferredRoot(v5);
    }

    else
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __18__CIImage_dealloc__block_invoke;
      v6[3] = &__block_descriptor_40_e5_v8__0l;
      v6[4] = priv;
      CI::Object::performDeferred(v6);
    }

    self->_priv = 0;
  }

  v4.receiver = self;
  v4.super_class = CIImage;
  [(CIImage *)&v4 dealloc];
}

void __18__CIImage_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

void __18__CIImage_dealloc__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

- (id)description
{
  [(CIImage *)self extent];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectIsInfinite(v12))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CIImage: %p extent [infinite]>", self, v8, v9, v10, v11];
  }

  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (CGRectIsEmpty(v13))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CIImage: %p extent [empty]>", self, v8, v9, v10, v11];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CIImage: %p extent [%g %g %g %g]>", self, *&x, *&y, *&width, *&height];
  }
}

- (id)debugDescription
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__CIImage_debugDescription__block_invoke;
  v3[3] = &unk_1E75C1EE0;
  v3[4] = self;
  return stream_to_string(v3);
}

uint64_t __27__CIImage_debugDescription__block_invoke(uint64_t a1, __sFILE *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  [v3 extent];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (CGRectIsInfinite(v11))
  {
    fprintf(a2, "<CIImage: %p extent [infinite]>\n");
  }

  else
  {
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    if (CGRectIsEmpty(v12))
    {
      fprintf(a2, "<CIImage: %p extent [empty]>\n");
    }

    else
    {
      fprintf(a2, "<CIImage: %p extent [%g %g %g %g]>\n");
    }
  }

  return CI::Image::print_graph(v4, a2);
}

- (float)_makernoteMeteorHeadroom
{
  v2 = [(CIImage *)self properties];
  v3 = [(NSDictionary *)v2 valueForKeyPath:@"{MakerApple}.33"];
  if (!v3)
  {
    return NAN;
  }

  v4 = v3;
  v5 = [(NSDictionary *)v2 valueForKeyPath:@"{MakerApple}.48"];
  if (!v5)
  {
    return NAN;
  }

  v6 = v5;
  [v4 floatValue];
  v8 = v7;
  [v6 floatValue];
  if (v8 >= 1.0)
  {
    if (v9 <= 0.01)
    {
      v13 = (v9 * -70.0) + 3.0;
      goto LABEL_12;
    }

    v10 = 2.303;
    v11 = -0.303;
  }

  else if (v9 <= 0.01)
  {
    v10 = 1.8;
    v11 = -20.0;
  }

  else
  {
    v10 = 1.601;
    v11 = -0.101;
  }

  v13 = v10 + (v9 * v11);
LABEL_12:

  return exp2f(v13);
}

- (BOOL)isOpaque
{
  priv = self->_priv;
  v3 = (*(*priv + 128))(priv, a2);
  if (v3 != 1)
  {
    LOBYTE(v3) = (*(*priv + 128))(priv) == -1;
  }

  return v3;
}

- (NSURL)url
{
  v2 = (*(*self->_priv + 280))(self->_priv, a2);

  return v2;
}

- (id)userInfo
{
  v2 = (*(*self->_priv + 296))(self->_priv, a2);

  return v2;
}

- (unint64_t)digest
{
  priv = self->_priv;
  if (priv)
  {
    return priv[12];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)recipeDigest
{
  priv = self->_priv;
  if (priv)
  {
    return priv[13];
  }

  else
  {
    return 0;
  }
}

- (id)filteredImage:(id)a3 keysAndValues:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [CIFilter filterWithName:a3];
  if (v8)
  {
    v9 = v8;
    [(CIFilter *)v8 setValue:self forKey:@"inputImage"];
    v13 = &v14;
    if (a4)
    {
      do
      {
        [(CIFilter *)v9 setValue:*v13 forKey:a4];
        v10 = (v13 + 1);
        v13 += 2;
        a4 = *v10;
      }

      while (*v10);
    }

    v11 = [(CIFilter *)v9 outputImage];
    objc_autoreleasePoolPop(v7);
    return v11;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (CIImage)imageByApplyingFilter:(NSString *)filterName withInputParameters:(NSDictionary *)params
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v8 = [CIFilter filterWithName:filterName setDefaults:1];
  if (v8)
  {
    v9 = v8;
    if ([(NSDictionary *)[(CIFilter *)v8 attributes] objectForKey:@"inputImage"])
    {
      [(CIFilter *)v9 setValue:self forKey:@"inputImage"];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(NSDictionary *)params countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(params);
          }

          [(CIFilter *)v9 setValue:[(NSDictionary *)params objectForKey:*(*(&v16 + 1) + 8 * v13)] forKey:*(*(&v16 + 1) + 8 * v13)];
          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSDictionary *)params countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    v14 = [(CIFilter *)v9 outputImage];
    objc_autoreleasePoolPop(v7);
    return v14;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (void)writeToTIFF:(id)a3
{
  v5 = +[CIContext _singletonContext];
  [(CIImage *)self extent];
  CGRectIsInfinite(v10);
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3];
  v7 = [v5 workingColorSpace];
  v8 = MEMORY[0x1E695E0F8];

  [v5 writeTIFFRepresentationOfImage:self toURL:v6 format:2056 colorSpace:v7 options:v8 error:0];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v5 = @"CIRequiresKeyedArchiver";
    v6 = MEMORY[0x1E695DF30];
    v7 = @"CoreImage doesn't support old-style archiving";
    goto LABEL_5;
  }

  [(CIImage *)self extent];
  if (CGRectIsInfinite(v27))
  {
    v5 = @"CIImageEncoder";
    v6 = MEMORY[0x1E695DF30];
    v7 = @"CoreImage doesn't support archiving infinite images.";
LABEL_5:

    [v6 raise:v5 format:v7];
    return;
  }

  v8 = +[CIContext _singletonContext];
  [(CIImage *)self extent];
  v9 = [v8 createCGImage:self fromRect:?];
  if (v9)
  {
    v10 = v9;
    [(CIImage *)self extent];
    v12 = v11;
    v14 = v13;
    Width = CGImageGetWidth(v10);
    Height = CGImageGetHeight(v10);
    BitsPerComponent = CGImageGetBitsPerComponent(v10);
    BitsPerPixel = CGImageGetBitsPerPixel(v10);
    BytesPerRow = CGImageGetBytesPerRow(v10);
    BitmapInfo = CGImageGetBitmapInfo(v10);
    ShouldInterpolate = CGImageGetShouldInterpolate(v10);
    RenderingIntent = CGImageGetRenderingIntent(v10);
    DataProvider = CGImageGetDataProvider(v10);
    if (DataProvider)
    {
      v23 = CGDataProviderCopyData(DataProvider);
      if (v23)
      {
        v24 = v23;
        [a3 encodeObject:v23 forKey:@"CICGImageData"];
        [a3 encodeInt:Width forKey:@"CICGImageWidth"];
        [a3 encodeInt:Height forKey:@"CICGImageHeight"];
        [a3 encodeInt:BitsPerComponent forKey:@"CICGImageBPC"];
        [a3 encodeInt:BitsPerPixel forKey:@"CICGImageBPP"];
        [a3 encodeInt:BytesPerRow forKey:@"CICGImageBPR"];
        [a3 encodeInt:BitmapInfo forKey:@"CICGImageAlphaInfo"];
        [a3 encodeBool:ShouldInterpolate forKey:@"CICGImageInterp"];
        [a3 encodeInt:RenderingIntent forKey:@"CICGImageRI"];
        if (v12 != 0.0)
        {
          [a3 encodeInt:v12 forKey:@"CICGImageOriginX"];
        }

        if (v14 != 0.0)
        {
          [a3 encodeInt:v14 forKey:@"CICGImageOriginY"];
        }

        CFRelease(v24);
      }
    }

    CGImageRelease(v10);
  }
}

- (CIImage)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    return 0;
  }

  v23.receiver = self;
  v23.super_class = CIImage;
  v5 = [(CIImage *)&v23 init];
  if (!v5)
  {
    return v5;
  }

  v6 = objc_autoreleasePoolPush();
  if (![a3 containsValueForKey:@"CICGImageData"] || ((v7 = objc_msgSend(a3, "decodeObjectOfClass:forKey:", objc_opt_class(), @"CICGImageData"), v8 = objc_msgSend(a3, "decodeIntForKey:", @"CICGImageWidth"), v21 = objc_msgSend(a3, "decodeIntForKey:", @"CICGImageHeight"), !objc_msgSend(a3, "containsValueForKey:", @"CICGImageBPC")) ? (v9 = 8) : (v9 = objc_msgSend(a3, "decodeIntForKey:", @"CICGImageBPC")), (v20 = v9, !objc_msgSend(a3, "containsValueForKey:", @"CICGImageBPP")) ? (v10 = 32) : (v10 = objc_msgSend(a3, "decodeIntForKey:", @"CICGImageBPP")), !objc_msgSend(a3, "containsValueForKey:", @"CICGImageBPR") ? (v19 = (v10 >> 3) * v8) : (v19 = objc_msgSend(a3, "decodeIntForKey:", @"CICGImageBPR")), !objc_msgSend(a3, "containsValueForKey:", @"CICGImageAlphaInfo") ? (v11 = 2) : (v11 = objc_msgSend(a3, "decodeIntForKey:", @"CICGImageAlphaInfo")), !objc_msgSend(a3, "containsValueForKey:", @"CICGImageInterp") ? (shouldInterpolate = 1) : (shouldInterpolate = objc_msgSend(a3, "decodeBoolForKey:", @"CICGImageInterp")), !objc_msgSend(a3, "containsValueForKey:", @"CICGImageRI") ? (intent = kCGRenderingIntentDefault) : (intent = objc_msgSend(a3, "decodeIntForKey:", @"CICGImageRI")), DeviceRGB = CGColorSpaceCreateDeviceRGB(), v15 = CGDataProviderCreateWithCFData(v7), v16 = CGImageCreate(v8, v21, v20, v10, v19, DeviceRGB, v11, v15, 0, shouldInterpolate, intent), CGDataProviderRelease(v15), CGColorSpaceRelease(DeviceRGB), !v16))
  {

    objc_autoreleasePoolPop(v6);
    return 0;
  }

  v17 = [CIImage imageWithCGImage:v16];
  CGImageRelease(v16);
  if (([a3 containsValueForKey:@"CICGImageOriginX"] & 1) != 0 || objc_msgSend(a3, "containsValueForKey:", @"CICGImageOriginY"))
  {
    CGAffineTransformMakeTranslation(&v22, [a3 decodeIntForKey:@"CICGImageOriginX"], objc_msgSend(a3, "decodeIntForKey:", @"CICGImageOriginY"));
    v17 = [(CIImage *)v17 imageByApplyingTransform:&v22];
  }

  v5 = [(CIImage *)v5 _initWithInternalRepresentation:[(CIImage *)v17 _internalRepresentation]];
  objc_autoreleasePoolPop(v6);
  if ([a3 containsValueForKey:@"CIUserInfo"] && -[CIImage initWithCoder:]::onceToken != -1)
  {
    [CIImage initWithCoder:];
  }

  return v5;
}

void __25__CIImage_initWithCoder___block_invoke()
{
  v0 = ci_logger_api();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __25__CIImage_initWithCoder___block_invoke_cold_1();
  }
}

- (void)printTree
{
  v3 = CI_LOG_FILE();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __20__CIImage_printTree__block_invoke;
  v4[3] = &unk_1E75C1EE0;
  v4[4] = self;
  stream_to_file(v3, v4);
}

size_t __20__CIImage_printTree__block_invoke(uint64_t a1, FILE *a2)
{
  v3 = *(*(a1 + 32) + 8);
  fprintf(a2, "<CIImage: %p> printTree:\n", *(a1 + 32));
  CI::Image::print_graph(v3, a2);

  return fwrite("\n\n", 2uLL, 1uLL, a2);
}

- (id)TIFFRepresentation
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  [(CIImage *)self extent];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (CGRectIsEmpty(v20))
  {
    objc_autoreleasePoolPop(v3);
    return 0;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (CGRectIsInfinite(v21))
  {
    height = 1024.0;
    width = 1024.0;
    y = 0.0;
    x = 0.0;
  }

  v9 = +[CIContext _singletonContext];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11 = [v9 createCGImage:self fromRect:265 format:DeviceRGB colorSpace:{x, y, width, height}];
  CGColorSpaceRelease(DeviceRGB);
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v18 = *MEMORY[0x1E696DF28];
    v16 = *MEMORY[0x1E696DF10];
    v17 = &unk_1F1081DD0;
    v19[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = CGImageDestinationCreateWithData(v12, @"public.tiff", 1uLL, [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1]);
    if (v13)
    {
      v14 = v13;
      CGImageDestinationAddImage(v13, v11, 0);
      v15 = CGImageDestinationFinalize(v14);
      CFRelease(v14);
      CGImageRelease(v11);
      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      CGImageRelease(v11);
    }
  }

  v12 = 0;
LABEL_12:
  objc_autoreleasePoolPop(v3);
  return v12;
}

+ (CIImage)imageWithInternalRepresentation:(void *)a3
{
  v3 = [[CIImage alloc] _initWithInternalRepresentation:a3];

  return v3;
}

- (id)_initWithInternalRepresentation:(void *)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = CIImage;
    v4 = [(CIImage *)&v6 init];
    if (v4)
    {
      v4->_priv = CI::Object::ref(a3);
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (CGRect)regionOfInterestForImage:(CIImage *)image inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsEmpty(rect))
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v30 = CGRectInset(v29, 0.001, 0.001);
    v31 = CGRectIntegral(v30);
    v10 = v31.origin.x;
    v11 = v31.origin.y;
    v12 = v31.size.width;
    v13 = v31.size.height;
    [(CIImage *)self extent];
    v36.origin.x = v14;
    v36.origin.y = v15;
    v36.size.width = v16;
    v36.size.height = v17;
    v32.origin.x = v10;
    v32.origin.y = v11;
    v32.size.width = v12;
    v32.size.height = v13;
    v33 = CGRectIntersection(v32, v36);
    v18 = v33.origin.x;
    v19 = v33.origin.y;
    v20 = v33.size.width;
    v21 = v33.size.height;
    if (!CGRectIsEmpty(v33))
    {
      v26 = [(CIImage *)image _internalRepresentation];
      v27 = [(CIImage *)self _internalRepresentation];
      while ((*(*v26 + 16))(v26) == 16 || (*(*v26 + 16))(v26) == 4)
      {
        v26 = (*(*v26 + 48))(v26, 0);
      }

      v34.origin.x = v18;
      v34.origin.y = v19;
      v34.size.width = v20;
      v34.size.height = v21;
      CI::Image::BuildMapToUnionRoi(v27, v28, v34);
    }
  }

  v22 = *MEMORY[0x1E695F050];
  v23 = *(MEMORY[0x1E695F050] + 8);
  v24 = *(MEMORY[0x1E695F050] + 16);
  v25 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)setValue:(id)a3 forKeyPath:(id)a4
{
  v4 = ci_logger_api();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CIImage setValue:forKeyPath:];
  }
}

- (CIImage)initWithDepthData:(AVDepthData *)data options:(NSDictionary *)options
{
  if (data && (v7 = AVFDepthDataMap(data, a2)) != 0)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
    [v9 setValue:data forKey:@"kCIImageAVDepthData"];

    return [(CIImage *)self initWithCVPixelBuffer:v8 options:v9];
  }

  else
  {

    return 0;
  }
}

+ (CIImage)imageWithDepthData:(AVDepthData *)data options:(NSDictionary *)options
{
  v4 = [[CIImage alloc] initWithDepthData:data options:options];

  return v4;
}

+ (CIImage)imageWithDepthData:(AVDepthData *)data
{
  v3 = [[CIImage alloc] initWithDepthData:data options:0];

  return v3;
}

- (CIImage)initWithPortaitEffectsMatte:(AVPortraitEffectsMatte *)matte options:(NSDictionary *)options
{
  if (matte && (v7 = AVFPortraitEffectsMatteImage(matte, a2)) != 0)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
    [v9 setValue:matte forKey:@"kCIImageAVPortraitEffectsMatte"];

    return [(CIImage *)self initWithCVPixelBuffer:v8 options:v9];
  }

  else
  {

    return 0;
  }
}

+ (CIImage)imageWithPortaitEffectsMatte:(AVPortraitEffectsMatte *)matte options:(NSDictionary *)options
{
  v4 = [[CIImage alloc] initWithPortaitEffectsMatte:matte options:options];

  return v4;
}

+ (CIImage)imageWithPortaitEffectsMatte:(AVPortraitEffectsMatte *)matte
{
  v3 = [[CIImage alloc] initWithPortaitEffectsMatte:matte options:0];

  return v3;
}

+ (CIImage)imageWithPortraitEffectsMatte:(id)a3 options:(id)a4
{
  v4 = [[CIImage alloc] initWithPortraitEffectsMatte:a3 options:a4];

  return v4;
}

+ (CIImage)imageWithPortraitEffectsMatte:(id)a3
{
  v3 = [[CIImage alloc] initWithPortraitEffectsMatte:a3 options:0];

  return v3;
}

- (CIImage)initWithSemanticSegmentationMatte:(AVSemanticSegmentationMatte *)matte options:(NSDictionary *)options
{
  if (matte && (v7 = AVSemanticSegmentationMatteImage(matte, a2)) != 0)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
    [v9 setValue:matte forKey:@"kCIImageAVSemanticSegmentationMatte"];

    return [(CIImage *)self initWithCVPixelBuffer:v8 options:v9];
  }

  else
  {

    return 0;
  }
}

+ (CIImage)imageWithSemanticSegmentationMatte:(AVSemanticSegmentationMatte *)matte options:(NSDictionary *)options
{
  v4 = [[CIImage alloc] initWithSemanticSegmentationMatte:matte options:options];

  return v4;
}

+ (CIImage)imageWithSemanticSegmentationMatte:(AVSemanticSegmentationMatte *)matte
{
  v3 = [[CIImage alloc] initWithSemanticSegmentationMatte:matte options:0];

  return v3;
}

- (CIImage)imageByConvertingWorkingSpaceToLab
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_RGBtoLAB];
  [(CIImage *)self extent];
  v9[0] = self;
  return -[CIImage imageByTaggingWithColorSpace:](-[CIColorKernel applyWithExtent:arguments:](v3, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1], v4, v5, v6, v7), "imageByTaggingWithColorSpace:", 0);
}

- (CIImage)imageByConvertingLabToWorkingSpace
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_LABtoRGB];
  [(CIImage *)self extent];
  v9[0] = self;
  return -[CIColorKernel applyWithExtent:arguments:](v3, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1], v4, v5, v6, v7);
}

+ (CIImage)imageWithAttributedString:(id)a3 format:(int)a4
{
  v4 = [[CIImage alloc] initWithAttributedString:a3 format:*&a4 options:0];

  return v4;
}

+ (CIImage)imageWithAttributedString:(id)a3 format:(int)a4 options:(id)a5
{
  v5 = [[CIImage alloc] initWithAttributedString:a3 format:*&a4 options:a5];

  return v5;
}

- (CIImage)initWithAttributedString:(id)a3 format:(int)a4 options:(id)a5
{
  v6 = *&a4;
  v46[1] = *MEMORY[0x1E69E9840];
  v9 = [a5 objectForKey:@"CIImageColorSpace"];
  v10 = [a5 objectForKey:@"kCIImageTextScaleFactor"];
  if (v10)
  {
    [v10 floatValue];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  v43 = v12;
  v13 = [a5 objectForKey:@"kCIImageTextPadding"];
  if (v13)
  {
    [v13 floatValue];
    v16 = vcvtps_s32_f32(v15);
  }

  else
  {
    v16 = 1;
  }

  v17 = CI::format_modernize(v6, "[CIImage(TextImage) initWithAttributedString:format:options:]", v14);
  v44 = v17;
  v18 = CTFramesetterCreateWithAttributedString(a3);
  v19 = [a3 length];
  v49.width = 1.79769313e308;
  v47.location = 0;
  v47.length = v19;
  v49.height = 1.79769313e308;
  v20 = CTFramesetterSuggestFrameSizeWithConstraints(v18, v47, 0, v49, 0);
  width = v20.width;
  v22 = CTLineCreateWithAttributedString(a3);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v22, 8uLL);
  x = BoundsWithOptions.origin.x;
  y = BoundsWithOptions.origin.y;
  v25 = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  if (v20.width < CGRectGetMaxX(BoundsWithOptions))
  {
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = v25;
    v51.size.height = height;
    width = CGRectGetMaxX(v51);
  }

  v27 = ceil(-0.001 - x);
  if (x < 0.0)
  {
    width = v27 + width;
  }

  CFRelease(v22);
  v52.origin.x = 0.0;
  v52.origin.y = 0.0;
  v52.size.width = width;
  v52.size.height = v20.height;
  v28 = CGPathCreateWithRect(v52, 0);
  v48.location = 0;
  v48.length = v19;
  Frame = CTFramesetterCreateFrame(v18, v48, v28, 0);
  v30 = Frame;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v31 = [a3 dataFromRange:0 documentAttributes:objc_msgSend(a3 error:{"length"), &unk_1F10825A0, 0}]) == 0)
  {
    v31 = archivedDataWithRootObject([a3 string]);
  }

  v32 = [v31 mutableCopy];
  [v32 appendBytes:&v44 length:4];
  [v32 appendBytes:&v43 length:4];
  if (v9)
  {
    v33 = CGColorSpaceCopyICCData(v9);
    [v32 appendData:v33];
  }

  else
  {
    if (CI::format_is_luminance(v17))
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
    }

    else
    {
      DeviceGray = CGColorSpaceCreateDeviceRGB();
    }

    v9 = DeviceGray;
  }

  v35 = 0.0;
  if (x < 0.0)
  {
    v35 = v27;
  }

  if ((v16 & ~(v16 >> 31)) >= 200)
  {
    v36 = 200;
  }

  else
  {
    v36 = v16 & ~(v16 >> 31);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __62__CIImage_TextImage__initWithAttributedString_format_options___block_invoke_2;
  v39[3] = &unk_1E75C2EF0;
  *&v39[6] = v35;
  v40 = v17;
  v41 = v36;
  v42 = v43;
  v39[4] = v30;
  v39[5] = v9;
  v45 = @"kCIImageProviderContentDigest";
  v46[0] = v32;
  v37 = -[CIImage initWithImageProvider:width:height:format:colorSpace:options:](self, "initWithImageProvider:width:height:format:colorSpace:options:", v39, vcvtpd_u64_f64(ceil(width * v12 + -0.001) + (2 * v36)), vcvtpd_u64_f64(ceil(v20.height * v12 + -0.001) + (2 * v36)), v44, v9, [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1]);
  CFRelease(Frame);

  CFRelease(v18);
  CGPathRelease(v28);
  return v37;
}

uint64_t __62__CIImage_TextImage__initWithAttributedString_format_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) appendFormat:@"range(%lu, %lu)\n", a3, a4];
  v6 = *(a1 + 32);
  v7 = [a2 debugDescription];

  return [v6 appendString:v7];
}

void __62__CIImage_TextImage__initWithAttributedString_format_options___block_invoke_2(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, size_t a6, size_t a7)
{
  v12 = CI::buffer_size_for_format(*(a1 + 56), a6, a7, a3);
  bzero(a2, v12);
  v13 = CI::format_bits_per_component(*(a1 + 56));
  v14 = CI::format_CGBitmapInfo(*(a1 + 56), 1);
  v15 = CGBitmapContextCreate(a2, a6, a7, v13, a3, *(a1 + 40), v14);
  CGContextSetShouldSmoothFonts(v15, 0);
  CGContextTranslateCTM(v15, *(a1 + 48), 0.0);
  CGContextTranslateCTM(v15, *(a1 + 60), *(a1 + 60));
  CGContextScaleCTM(v15, *(a1 + 64), *(a1 + 64));
  CTFrameDraw(*(a1 + 32), v15);

  CGContextRelease(v15);
}

- (id)_pdfDataRepresentation
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = CFStringCreateWithFormat(0, 0, @"CIImage <%p>", self);
  v4 = [CIContext _cachedContext:@"CIImageQuicklook" options:0];
  [(CIImage *)self extent];
  v9 = [v4 createCGImage:self fromRect:264 format:objc_msgSend(v4 colorSpace:"_outputColorSpace") deferred:{0, v5, v6, v7, v8}];
  v11 = 0;
  if ([(CIImage *)self isUnassociatedAlpha])
  {
    v12 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_justAlpha];
    [(CIImage *)self extent];
    v22[0] = self;
    v17 = -[CIColorKernel applyWithExtent:arguments:](v12, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1], v13, v14, v15, v16);
    v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F8]);
    [(CIImage *)v17 extent];
    v11 = [v4 createCGImage:v17 fromRect:259 format:v18 colorSpace:0 deferred:?];
    CGColorSpaceRelease(v18);
  }

  v19 = CI::GraphObject::graphviz_representation(self->_priv, v3, v9, v11, v10);
  {
    [CIImage(QuicklookSupport) _pdfDataRepresentation]::renderer = CIGVRendererCreatePDFRenderer();
  }

  CIGVRendererSetOutputFileURL([CIImage(QuicklookSupport) _pdfDataRepresentation]::renderer, 0);
  CIGVGraphRender(v19, [CIImage(QuicklookSupport) _pdfDataRepresentation]::renderer);
  CIGVRendererFlushRender([CIImage(QuicklookSupport) _pdfDataRepresentation]::renderer);
  PDFData = CIGVRendererGetPDFData([CIImage(QuicklookSupport) _pdfDataRepresentation]::renderer);
  CFRelease(v3);
  CGImageRelease(v9);
  CFRelease(v19);
  return PDFData;
}

- (CGImage)_cgImageGraphRepresentation
{
  v3 = CFStringCreateWithFormat(0, 0, @"CIImage <%p>", self);
  v5 = CI::GraphObject::graphviz_representation(self->_priv, v3, 0, 0, v4);
  {
    [CIImage(QuicklookSupport) _cgImageGraphRepresentation]::renderer = CIGVRendererCreatePNGRenderer();
  }

  CIGVGraphRender(v5, [CIImage(QuicklookSupport) _cgImageGraphRepresentation]::renderer);
  CGImage = CIGVRendererGetCGImage([CIImage(QuicklookSupport) _cgImageGraphRepresentation]::renderer);
  CFRelease(v3);
  CFRelease(v5);
  return CGImage;
}

- (id)_dotStringRepresentation
{
  {
    [CIImage(QuicklookSupport) _dotStringRepresentation]::renderer = CIGVRendererCreateDOTRenderer();
  }

  if (![CIImage(QuicklookSupport) _dotStringRepresentation]::renderer)
  {
    return 0;
  }

  v3 = CFStringCreateWithFormat(0, 0, @"CIImage <%p>", self);
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  v6 = CI::GraphObject::graphviz_representation(self->_priv, v3, 0, 0, v4);
  if (v6)
  {
    v7 = v6;
    CIGVRendererSetOutputFileTitle([CIImage(QuicklookSupport) _dotStringRepresentation]::renderer, "CIImage Graph");
    CIGVGraphRender(v7, [CIImage(QuicklookSupport) _dotStringRepresentation]::renderer);
    CIGVRendererFlushRender([CIImage(QuicklookSupport) _dotStringRepresentation]::renderer);
    String = CIGVRendererGetString([CIImage(QuicklookSupport) _dotStringRepresentation]::renderer);
    v9 = String;
    if (String)
    {
      CFAutorelease(String);
    }

    CFRelease(v5);
  }

  else
  {
    v9 = 0;
    v7 = v5;
  }

  CFRelease(v7);
  return v9;
}

+ (id)clearImage:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_clearer];

  return [(CIColorKernel *)v7 applyWithExtent:0 arguments:x, y, width, height];
}

- (id)_scaleImageToMaxDimension:(unsigned int)a3
{
  v4 = self;
  [(CIImage *)self extent];
  x = v7;
  y = v9;
  v11 = fmin(a3 / v5, a3 / v6);
  if (v11 < 1.0)
  {
    width = v5;
    height = v6;
    memset(&v21, 0, sizeof(v21));
    CGAffineTransformMakeScale(&v21, 0.5, 0.5);
    while (v11 < 0.5)
    {
      v20 = v21;
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v23 = CGRectApplyAffineTransform(v22, &v20);
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
      v20 = v21;
      v4 = [[(CIImage *)v4 imageByApplyingTransform:&v20] _imageByRenderingToIntermediate];
      v11 = v11 + v11;
    }

    CGAffineTransformMakeScale(&v20, v11, v11);
    v21 = v20;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v25 = CGRectApplyAffineTransform(v24, &v20);
    v26 = CGRectIntegral(v25);
    v14 = v26.origin.x;
    v15 = v26.origin.y;
    v16 = v26.size.width;
    v17 = v26.size.height;
    v18 = [(CIImage *)v4 imageByClampingToExtent];
    v20 = v21;
    return [[(CIImage *)v18 imageByApplyingTransform:&v20] imageByCroppingToRect:v14, v15, v16, v17];
  }

  return v4;
}

- (id)autoAdjustmentFiltersWithImageProperties:(id)a3 options:(id)a4
{
  v120[1] = *MEMORY[0x1E69E9840];
  v119 = @"high_quality_downsample";
  v120[0] = MEMORY[0x1E695E118];
  v100 = +[CIContext _cachedContext:options:](CIContext, "_cachedContext:options:", @"CIImageAutoAdjust", [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:&v119 count:1]);
  v7 = *MEMORY[0x1E696D9B0];
  v99 = a3;
  v8 = [a3 valueForKey:*MEMORY[0x1E696D9B0]];
  v9 = [v8 valueForKey:*MEMORY[0x1E696D9F0]];
  if (v9)
  {
    v10 = ([v9 intValue] & 1) == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = [a4 objectForKey:@"kCIImageAutoAdjustRedEye"];
  v12 = [a4 objectForKey:@"kCIImageAutoAdjustEnhance"];
  v13 = [a4 objectForKey:@"kCIImageAutoAdjustCrop"];
  v14 = [a4 objectForKey:@"kCIImageAutoAdjustLevel"];
  if (v12)
  {
    v15 = [v12 BOOLValue];
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 1;
    if (v11)
    {
LABEL_6:
      v16 = [v11 BOOLValue];
      if (v13)
      {
        goto LABEL_7;
      }

LABEL_11:
      v17 = 0;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v16 = 1;
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_7:
  v17 = [v13 BOOLValue];
  if (v14)
  {
LABEL_8:
    v18 = [v14 BOOLValue];
    goto LABEL_13;
  }

LABEL_12:
  v18 = 0;
LABEL_13:
  [(CIImage *)self extent];
  x = v121.origin.x;
  y = v121.origin.y;
  width = v121.size.width;
  height = v121.size.height;
  if (CGRectIsNull(v121))
  {
    return 0;
  }

  v122.origin.x = x;
  v122.origin.y = y;
  v122.size.width = width;
  v122.size.height = height;
  if (CGRectIsInfinite(v122))
  {
    return 0;
  }

  v123.origin.x = x;
  v123.origin.y = y;
  v123.size.width = width;
  v123.size.height = height;
  if (CGRectIsEmpty(v123))
  {
    return 0;
  }

  if (v10 || (v16 & 1) == 0 || fmin(width, height) < 160.0)
  {
    v16 = 0;
  }

  if (((v15 | v16 | v17 | v18) & 1) == 0)
  {
    return 0;
  }

  v97 = [a4 valueForKey:@"kCIImageAutoAdjustFeatures"];
  if (!v97)
  {
    if ((v16 | v17 | v15))
    {
      context = objc_autoreleasePoolPush();
      v117 = @"CIDetectorBetterEyeLocs";
      v118 = [MEMORY[0x1E696AD98] numberWithInt:v16];
      v98 = +[CIDetector detectorOfType:context:options:](CIDetector, "detectorOfType:context:options:", @"CIDetectorTypeFace", v100, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1]);
      v23 = [a4 valueForKey:?];
      if (v23)
      {
        v115 = @"CIDetectorImageOrientation";
        v116 = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      }

      else
      {
        v24 = 0;
      }

      v26 = [(NSArray *)[(CIDetector *)v98 featuresInImage:self options:v24] sortedArrayUsingComparator:&__block_literal_global_42];
      v27 = v26;
      objc_autoreleasePoolPop(context);
      v97 = v26;
      v28 = v26;
    }

    else
    {
      v97 = 0;
    }
  }

  v29 = [MEMORY[0x1E695DF70] array];
  if (v16)
  {
    v30 = [(CIImage *)self _autoRedEyeFilterWithFeatures:v97 imageProperties:v99 context:v100 options:a4];
    if (v30)
    {
      v31 = v30;
      if (([v30 _isIdentity] & 1) == 0)
      {
        [v29 addObject:v31];
      }
    }
  }

  if ((v15 | v17 | v18))
  {
    contexta = v29;
    v32 = objc_alloc_init(CIEnhancementCalculator);
    [(CIEnhancementCalculator *)v32 setFaceBalanceEnabled:v15];
    [(CIEnhancementCalculator *)v32 setVibranceEnabled:v15];
    [(CIEnhancementCalculator *)v32 setCurvesEnabled:v15];
    [(CIEnhancementCalculator *)v32 setShadowsEnabled:v15];
    v94 = objc_opt_new();
    v33 = v32;
    if ([(CIEnhancementCalculator *)v32 faceBalanceEnabled])
    {
      v34 = objc_opt_new();
      [(CIEnhancementCalculator *)v33 setupFaceColorFromImage:self usingContext:v100 features:v97];
      [v34 drain];
    }

    v93 = [(CIImage *)self _scaleImageToMaxDimension:400];
    v35 = objc_opt_new();
    if (v15)
    {
      v36 = [CIImageRowReader forImage:v93 usingContext:v100];
      -[CIEnhancementCalculator setupHistogramsUsing:redIndex:greenIndex:blueIndex:](v33, "setupHistogramsUsing:redIndex:greenIndex:blueIndex:", v36, [v36 red], objc_msgSend(v36, "green"), objc_msgSend(v36, "blue"));
    }

    v37 = *(MEMORY[0x1E695EFD0] + 16);
    v105 = *MEMORY[0x1E695EFD0];
    v106 = v37;
    v107 = *(MEMORY[0x1E695EFD0] + 32);
    v103.f64[0] = x;
    v103.f64[1] = y;
    v104.f64[0] = width;
    v104.f64[1] = height;
    if (v18)
    {
      v38 = [a4 objectForKey:@"kCIImageAutoAdjustLevel_MaxAngle"];
      v39 = [a4 objectForKey:@"kCIImageAutoAdjustLevel_UseVerticalDetector"];
      if (v38)
      {
        [v38 floatValue];
        v41 = v40;
      }

      else
      {
        v41 = -1.0;
      }

      if (v39)
      {
        v43 = [v14 BOOLValue];
      }

      else
      {
        v43 = 0;
      }

      v44 = [a4 objectForKey:@"kCIImageAutoAdjustLevel_MinAngle"];
      v45 = [a4 objectForKey:@"kCIImageAutoAdjustLevel_VerticalAngleThreshold"];
      v46 = [a4 objectForKey:@"kCIImageAutoAdjustLevel_DominantAngleDiffThreshold"];
      v51 = -1.0;
      v52 = -1.0;
      if (v44)
      {
        [v44 floatValue];
        v52 = v53;
      }

      if (v45)
      {
        [v45 floatValue];
        v51 = v54;
      }

      if (v46)
      {
        [v46 floatValue];
        LODWORD(v50) = v55;
      }

      else
      {
        LODWORD(v50) = -1.0;
      }

      *&v47 = v52;
      *&v48 = v41;
      *&v49 = v51;
      v56 = [(CIImage *)self getAutoRotateFilter:v100 ciImage:v93 inputRect:&v103 rotateCropRect:v43 minTiltAngle:x maxTiltAngle:y detectVerticalLines:width thrVertAngle:height thrDomAngleDiff:v47, v48, v49, v50];
      if (v56)
      {
        v57 = v56;
        [contexta addObject:v56];
        CGAffineTransformFromObject([v57 valueForKey:@"inputTransform"], &v105);
      }
    }

    [v35 drain];
    [v94 drain];
    v101 = v103;
    v102 = v104;
    if (v17)
    {
      v108 = v105;
      v109 = v106;
      v110 = v107;
      [(CIImage *)self getAutocropRect:v97 rotateXfrm:&v108 inputImageRect:&v101 clipRect:x, y, width, height];
    }

    v124.origin = v101;
    v124.size = v102;
    v125.origin.x = x;
    v125.origin.y = y;
    v125.size.width = width;
    v125.size.height = height;
    if (!CGRectEqualToRect(v124, v125))
    {
      __asm { FMOV            V1.2D, #0.5 }

      v63 = vsubq_f64(v101, vcvtq_f64_f32(vcvt_f32_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(v101, _Q1))))));
      v101 = vsubq_f64(v101, v63);
      v102 = vcvtq_f64_f32(vcvt_f32_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(vaddq_f64(v102, v63), _Q1)))));
      v64 = [CIFilter filterWithName:@"CICrop" keysAndValues:@"inputRectangle", [CIVector vectorWithCGRect:*&v101, *&v102], 0];
      acLog("   adding crop rect: x=%.3f,y=%.3f,w=%.3f,h=%.3f\n", v65, v66, v67, v68, v69, v70, v71, SLOBYTE(v101.f64[0]));
      if (v64)
      {
        [contexta addObject:v64];
      }
    }

    if (v15)
    {
      v42 = v33;
      v72 = [(CIEnhancementCalculator *)v33 faceBalanceEnabled];
      v29 = contexta;
      if (v72)
      {
        if ([(CIEnhancementCalculation *)v42 faceBalanceWarmth])
        {
          if ([(CIEnhancementCalculation *)v42 faceBalanceStrength])
          {
            v73 = [CIFilter filterWithName:@"CIFaceBalance"];
            if (v73)
            {
              v74 = v73;
              [(CIEnhancementCalculation *)v42 originalFaceColor];
              v76 = v75;
              -[CIFilter setValue:forKey:](v74, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:?], @"inputOrigI");
              -[CIFilter setValue:forKey:](v74, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v76], @"inputOrigQ");
              [(CIFilter *)v74 setValue:[(CIEnhancementCalculation *)v42 faceBalanceStrength] forKey:@"inputStrength"];
              [(CIFilter *)v74 setValue:[(CIEnhancementCalculation *)v42 faceBalanceWarmth] forKey:@"inputWarmth"];
              if (![(CIFilter *)v74 _isIdentity])
              {
                [contexta addObject:v74];
              }
            }
          }
        }
      }

      if ([(CIEnhancementCalculator *)v42 vibranceEnabled])
      {
        if ([(CIEnhancementCalculation *)v42 vibrance])
        {
          v77 = [CIFilter filterWithName:@"CIVibrance"];
          if (v77)
          {
            v78 = v77;
            [(CIFilter *)v77 setValue:[(CIEnhancementCalculation *)v42 vibrance] forKey:@"inputAmount"];
            if (![(CIFilter *)v78 _isIdentity])
            {
              [contexta addObject:v78];
            }
          }
        }
      }

      if ([(CIEnhancementCalculator *)v42 curvesEnabled])
      {
        if ([(CIEnhancementCalculation *)v42 curveCount]== 5)
        {
          v79 = [CIFilter filterWithName:@"CIToneCurve"];
          if (v79)
          {
            v80 = v79;
            v81 = 0;
            v82 = &v108 + 1;
            do
            {
              [(CIEnhancementCalculation *)v42 curvePointAtIndex:v81];
              *(v82 - 1) = v83;
              *v82 = v84;
              ++v81;
              v82 += 2;
            }

            while (v81 != 5);
            [(CIFilter *)v80 setValue:[CIVector vectorWithX:v108 Y:?], @"inputPoint0"];
            [(CIFilter *)v80 setValue:[CIVector vectorWithX:v109 Y:?], @"inputPoint1"];
            [(CIFilter *)v80 setValue:[CIVector vectorWithX:v110 Y:?], @"inputPoint2"];
            [(CIFilter *)v80 setValue:[CIVector forKey:"vectorWithX:Y:" vectorWithX:v111 Y:v112], @"inputPoint3"];
            [(CIFilter *)v80 setValue:[CIVector forKey:"vectorWithX:Y:" vectorWithX:v113 Y:v114], @"inputPoint4"];
            [(CIFilter *)v80 setValue:MEMORY[0x1E695E118] forKey:@"inputExtrapolate"];
            if (![(CIFilter *)v80 _isIdentity])
            {
              [contexta addObject:v80];
            }
          }
        }
      }

      v85 = [(CIEnhancementCalculator *)v42 shadowsEnabled];
      if (v99)
      {
        if (v85)
        {
          v86 = [v99 objectForKey:v7];
          v87 = [objc_msgSend(v86 objectForKey:{*MEMORY[0x1E696D988]), "intValue"}];
          v88 = [v99 objectForKey:*MEMORY[0x1E696DF28]];
          v89 = [v88 objectForKey:*MEMORY[0x1E696DF50]];
          if (v87 == 3)
          {
            v90 = v89;
            if (([v89 hasPrefix:@"iPhone"] & 1) != 0 || objc_msgSend(v90, "hasPrefix:", @"iPad"))
            {
              [(CIEnhancementCalculator *)v42 setShadowsEnabled:0];
            }
          }
        }
      }

      if ([(CIEnhancementCalculator *)v42 shadowsEnabled])
      {
        if ([(CIEnhancementCalculation *)v42 shadow])
        {
          v91 = [CIFilter filterWithName:@"CIHighlightShadowAdjust"];
          if (v91)
          {
            v92 = v91;
            [(CIFilter *)v91 setValue:[(CIEnhancementCalculation *)v42 shadow] forKey:@"inputShadowAmount"];
            [(CIFilter *)v92 setValue:&unk_1F1081E00 forKey:@"__inputVersion"];
            if (![(CIFilter *)v92 _isIdentity])
            {
              [contexta addObject:v92];
            }
          }
        }
      }
    }

    else
    {
      v42 = v33;
      v29 = contexta;
    }
  }

  else
  {
    v42 = 0;
  }

  if (autoAdjustmentFiltersWithImageProperties_options__didCheck != -1)
  {
    [CIImage(AutoAdjust) autoAdjustmentFiltersWithImageProperties:options:];
  }

  if (autoAdjustmentFiltersWithImageProperties_options__dumpAutoEnhanceArray)
  {
    NSLog(&cfstr_Filters_0.isa, v29);
  }

  return [MEMORY[0x1E695DEC8] arrayWithArray:v29];
}

uint64_t __72__CIImage_AutoAdjust__autoAdjustmentFiltersWithImageProperties_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 bounds];
  v6 = v5;
  [a2 bounds];
  v8 = v6 * v7;
  [a3 bounds];
  v10 = v9;
  [a3 bounds];
  if (v8 > v10 * v11)
  {
    return -1;
  }

  else
  {
    return v8 < v10 * v11;
  }
}

const char *__72__CIImage_AutoAdjust__autoAdjustmentFiltersWithImageProperties_options___block_invoke_103()
{
  result = getenv("DUMP_AUTO_ENHANCE_ARRAY");
  if (result)
  {
    result = atoi(result);
  }

  autoAdjustmentFiltersWithImageProperties_options__dumpAutoEnhanceArray = result;
  return result;
}

- (NSArray)autoAdjustmentFiltersWithOptions:(NSDictionary *)options
{
  v5 = [(CIImage *)self properties];

  return [(CIImage *)self autoAdjustmentFiltersWithImageProperties:v5 options:options];
}

- (CIImage)imageWithMesh:(id)a3 transform:(CGAffineTransform *)a4
{
  v22[3] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = 169;
  v9 = &unk_19CF272B4;
  do
  {
    v10 = *v9;
    v11 = [a3 objectAtIndexedSubscript:*(v9 - 1)];
    [v11 X];
    v13 = v12;
    [v11 Y];
    v15 = v14;
    v16 = [a3 objectAtIndexedSubscript:v10];
    [v16 X];
    v18 = v17;
    [v16 Y];
    [v7 addObject:{+[CIVector vectorWithX:Y:Z:W:](CIVector, "vectorWithX:Y:Z:W:", a4->tx + v15 * a4->c + a4->a * v13, a4->ty + v15 * a4->d + a4->b * v13, a4->tx + v19 * a4->c + a4->a * v18, a4->ty + v19 * a4->d + a4->b * v18)}];
    v9 += 2;
    --v8;
  }

  while (v8);
  v22[0] = &unk_1F1083E28;
  v21[0] = @"inputWidth";
  v21[1] = @"inputColor";
  v21[2] = @"inputMesh";
  v22[1] = [CIVector vectorWithX:1.0 Y:1.0 Z:0.0 W:1.0];
  v22[2] = v7;
  return [-[CIFilter valueForKey:](+[CIFilter filterWithName:withInputParameters:](CIFilter filterWithName:@"CIMeshGenerator" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, v21, 3)), "valueForKey:", @"outputImage", "imageByCompositingOverImage:", self}];
}

- (CGPoint)pointWithDictionary:(id)a3 name:(id)a4 index:(int)a5 transformedBy:(CGAffineTransform *)a6
{
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{a4), "objectAtIndexedSubscript:", a5}];
  [v7 X];
  v12 = v8;
  [v7 Y];
  v10 = vaddq_f64(*&a6->tx, vmlaq_n_f64(vmulq_n_f64(*&a6->c, v9), *&a6->a, v12));
  v11 = v10.f64[1];
  result.x = v10.f64[0];
  result.y = v11;
  return result;
}

- (id)_dictForFeature:(id)a3 invOrientationTransform:(CGAffineTransform *)a4 extent:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = CI_EDIT_RED_EYE_VERSION();
  [(CIImage *)self extent];
  v13 = v12;
  v15 = v14;
  v16 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v11 >= 2 && [a3 landmarks])
    {
      v17 = [a3 landmarks];
      v18 = *&a4->c;
      v158 = *&a4->a;
      v159 = v18;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"leftPupil" index:0 transformedBy:&v158];
      v20 = v19;
      v121 = v21;
      v22 = *&a4->c;
      v158 = *&a4->a;
      v159 = v22;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"rightPupil" index:0 transformedBy:&v158];
      v117 = v23;
      v124 = v24;
      v25 = *&a4->c;
      v158 = *&a4->a;
      v159 = v25;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"innerLips" index:1 transformedBy:&v158];
      v120 = v26;
      v127 = v27;
      v28 = *&a4->c;
      v158 = *&a4->a;
      v159 = v28;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"innerLips" index:4 transformedBy:&v158];
      v30 = v29;
      v118 = v31;
      v32 = *&a4->c;
      v158 = *&a4->a;
      v159 = v32;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"noseCrest" index:0 transformedBy:&v158];
      v34 = v33;
      v122 = v35;
      v36 = *&a4->c;
      v158 = *&a4->a;
      v159 = v36;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"noseCrest" index:2 transformedBy:&v158];
      v119 = v37;
      v125 = v38;
      v39 = *&a4->c;
      v158 = *&a4->a;
      v159 = v39;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"leftEye" index:0 transformedBy:&v158];
      v123 = v40;
      v128 = v41;
      v42 = *&a4->c;
      v158 = *&a4->a;
      v159 = v42;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"leftEye" index:1 transformedBy:&v158];
      v126 = v43;
      v130 = v44;
      v45 = *&a4->c;
      v158 = *&a4->a;
      v159 = v45;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"leftEye" index:2 transformedBy:&v158];
      v129 = v46;
      v132 = v47;
      v48 = *&a4->c;
      v158 = *&a4->a;
      v159 = v48;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"leftEye" index:3 transformedBy:&v158];
      v131 = v49;
      v134 = v50;
      v51 = *&a4->c;
      v158 = *&a4->a;
      v159 = v51;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"leftEye" index:4 transformedBy:&v158];
      v133 = v52;
      v136 = v53;
      v54 = *&a4->c;
      v158 = *&a4->a;
      v159 = v54;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"leftEye" index:5 transformedBy:&v158];
      v135 = v55;
      v138 = v56;
      v57 = *&a4->c;
      v158 = *&a4->a;
      v159 = v57;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"leftEye" index:6 transformedBy:&v158];
      v137 = v58;
      v140 = v59;
      v60 = *&a4->c;
      v158 = *&a4->a;
      v159 = v60;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"leftEye" index:7 transformedBy:&v158];
      v139 = v61;
      v142 = v62;
      v63 = *&a4->c;
      v158 = *&a4->a;
      v159 = v63;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"rightEye" index:0 transformedBy:&v158];
      v141 = v64;
      v144 = v65;
      v66 = *&a4->c;
      v158 = *&a4->a;
      v159 = v66;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"rightEye" index:1 transformedBy:&v158];
      v143 = v67;
      v146 = v68;
      v69 = *&a4->c;
      v158 = *&a4->a;
      v159 = v69;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"rightEye" index:2 transformedBy:&v158];
      v145 = v70;
      v148 = v71;
      v72 = *&a4->c;
      v158 = *&a4->a;
      v159 = v72;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"rightEye" index:3 transformedBy:&v158];
      v147 = v73;
      v150 = v74;
      v75 = *&a4->c;
      v158 = *&a4->a;
      v159 = v75;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"rightEye" index:4 transformedBy:&v158];
      v149 = v76;
      v152 = v77;
      v78 = *&a4->c;
      v158 = *&a4->a;
      v159 = v78;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"rightEye" index:5 transformedBy:&v158];
      v151 = v79;
      v154 = v80;
      v81 = *&a4->c;
      v158 = *&a4->a;
      v159 = v81;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"rightEye" index:6 transformedBy:&v158];
      v153 = v82;
      v156 = v83;
      v84 = *&a4->c;
      v158 = *&a4->a;
      v159 = v84;
      v160 = *&a4->tx;
      [(CIImage *)self pointWithDictionary:v17 name:@"rightEye" index:7 transformedBy:&v158];
      v155 = v85;
      v157 = v86;
      v87 = v13 / width;
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v20), @"leftEyeX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v121 * (v15 / height)), @"leftEyeY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v117), @"rightEyeX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v124 * (v15 / height)), @"rightEyeY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * ((v120 + v30) * 0.5)), @"mouthCenterX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 + (v127 + v118) * -0.5 * (v15 / height)), @"mouthCenterY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v34), @"noseBridgeX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v122 * (v15 / height)), @"noseBridgeY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v119), @"noseTipX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v125 * (v15 / height)), @"noseTipY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v123), @"leftEyeLeftX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v128 * (v15 / height)), @"leftEyeLeftY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v126), @"leftEyelidNWX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v130 * (v15 / height)), @"leftEyelidNWY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v129), @"leftEyelidUpperX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v132 * (v15 / height)), @"leftEyelidUpperY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v131), @"leftEyelidNEX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v134 * (v15 / height)), @"leftEyelidNEY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v133), @"leftEyeRightX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v136 * (v15 / height)), @"leftEyeRightY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v135), @"leftEyelidSEX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v138 * (v15 / height)), @"leftEyelidSEY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v137), @"leftEyelidLowerX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v140 * (v15 / height)), @"leftEyelidLowerY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v139), @"leftEyelidSWX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v142 * (v15 / height)), @"leftEyelidSWY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v141), @"rightEyeLeftX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v144 * (v15 / height)), @"rightEyeLeftY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v143), @"rightEyelidNWX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v146 * (v15 / height)), @"rightEyelidNWY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v145), @"rightEyelidUpperX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v148 * (v15 / height)), @"rightEyelidUpperY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v147), @"rightEyelidNEX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v150 * (v15 / height)), @"rightEyelidNEY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v149), @"rightEyeRightX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v152 * (v15 / height)), @"rightEyeRightY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v151), @"rightEyelidSEX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v154 * (v15 / height)), @"rightEyelidSEY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v153), @"rightEyelidLowerX"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v16 - v156 * (v15 / height)), @"rightEyelidLowerY"}];
      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v87 * v155), @"rightEyelidSWX"}];
      v88 = [MEMORY[0x1E696AD98] numberWithDouble:v16 - v157 * (v15 / height)];
      v89 = v10;
LABEL_8:
      [v89 setObject:v88 forKeyedSubscript:@"rightEyelidSWY"];
      return v10;
    }

    if ([a3 hasLeftEyePosition])
    {
      v90 = MEMORY[0x1E696AD98];
      [a3 leftEyePosition];
      [v10 setValue:objc_msgSend(v90 forKey:{"numberWithDouble:"), @"leftEyeX"}];
      v91 = MEMORY[0x1E696AD98];
      [a3 leftEyePosition];
      [v10 setValue:objc_msgSend(v91 forKey:{"numberWithDouble:", v16 - v92), @"leftEyeY"}];
    }

    if ([a3 hasRightEyePosition])
    {
      v93 = MEMORY[0x1E696AD98];
      [a3 rightEyePosition];
      [v10 setValue:objc_msgSend(v93 forKey:{"numberWithDouble:"), @"rightEyeX"}];
      v94 = MEMORY[0x1E696AD98];
      [a3 rightEyePosition];
      [v10 setValue:objc_msgSend(v94 forKey:{"numberWithDouble:", v16 - v95), @"rightEyeY"}];
    }

    if ([a3 hasMouthPosition])
    {
      v96 = MEMORY[0x1E696AD98];
      [a3 mouthPosition];
      [v10 setValue:objc_msgSend(v96 forKey:{"numberWithDouble:"), @"mouthCenterX"}];
      v97 = MEMORY[0x1E696AD98];
      [a3 mouthPosition];
      v99 = v16 - v98;
      v100 = v97;
LABEL_28:
      [v10 setValue:objc_msgSend(v100 forKey:{"numberWithDouble:", v99), @"mouthCenterY"}];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a3 objectForKeyedSubscript:@"leftEyeX"])
      {
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyeX", @"leftEyeX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyeY", @"leftEyeY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyeX", @"rightEyeX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyeY", @"rightEyeY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"mouthCenterX", @"mouthCenterX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"mouthCenterY", @"mouthCenterY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"noseBridgeX", @"noseBridgeX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"noseBridgeY", @"noseBridgeY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"noseTipX", @"noseTipX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"noseTipY", @"noseTipY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyeLeftX", @"leftEyeLeftX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyeLeftY", @"leftEyeLeftY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidNWX", @"leftEyelidNWX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidNWY", @"leftEyelidNWY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidUpperX", @"leftEyelidUpperX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidUpperY", @"leftEyelidUpperY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidNEX", @"leftEyelidNEX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidNEY", @"leftEyelidNEY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyeRightX", @"leftEyeRightX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyeRightY", @"leftEyeRightY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidSEX", @"leftEyelidSEX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidSEY", @"leftEyelidSEY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidLowerX", @"leftEyelidLowerX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidLowerY", @"leftEyelidLowerY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidSWX", @"leftEyelidSWX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"leftEyelidSWY", @"leftEyelidSWY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyeLeftX", @"rightEyeLeftX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyeLeftY", @"rightEyeLeftY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyelidNWX", @"rightEyelidNWX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyelidNWY", @"rightEyelidNWY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyelidUpperX", @"rightEyelidUpperX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyelidUpperY", @"rightEyelidUpperY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyelidNEX", @"rightEyelidNEX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyelidNEY", @"rightEyelidNEY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyeRightX", @"rightEyeRightX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyeRightY", @"rightEyeRightY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyelidSEX", @"rightEyelidSEX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyelidSEY", @"rightEyelidSEY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyelidLowerX", @"rightEyelidLowerX"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyelidLowerY", @"rightEyelidLowerY"}];
        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"rightEyelidSWX", @"rightEyelidSWX"}];
        v88 = [a3 objectForKeyedSubscript:@"rightEyelidSWY"];
        v89 = v10;
        goto LABEL_8;
      }

      v101 = [a3 valueForKey:@"leftEyePosition"];
      if (v101 || (v101 = [a3 valueForKey:@"leftEye"]) != 0)
      {
        v102 = v101;
        v103 = MEMORY[0x1E696AD98];
        [v101 X];
        [v10 setValue:objc_msgSend(v103 forKey:{"numberWithDouble:"), @"leftEyeX"}];
        v104 = MEMORY[0x1E696AD98];
        [v102 Y];
        [v10 setValue:objc_msgSend(v104 forKey:{"numberWithDouble:", v16 - v105), @"leftEyeY"}];
      }

      v106 = [a3 valueForKey:@"rightEyePosition"];
      if (v106 || (v106 = [a3 valueForKey:@"rightEye"]) != 0)
      {
        v107 = v106;
        v108 = MEMORY[0x1E696AD98];
        [v106 X];
        [v10 setValue:objc_msgSend(v108 forKey:{"numberWithDouble:"), @"rightEyeX"}];
        v109 = MEMORY[0x1E696AD98];
        [v107 Y];
        [v10 setValue:objc_msgSend(v109 forKey:{"numberWithDouble:", v16 - v110), @"rightEyeY"}];
      }

      if ([a3 valueForKey:@"leftEyeTouchSize"])
      {
        [v10 setValue:objc_msgSend(a3 forKey:{"valueForKey:", @"leftEyeTouchSize", @"leftEyeSize"}];
      }

      if ([a3 valueForKey:@"rightEyeTouchSize"])
      {
        [v10 setValue:objc_msgSend(a3 forKey:{"valueForKey:", @"rightEyeTouchSize", @"rightEyeSize"}];
      }

      v111 = [a3 valueForKey:@"mouthPosition"];
      if (v111 || (v111 = [a3 valueForKey:@"mouthCenter"]) != 0)
      {
        v112 = v111;
        v113 = MEMORY[0x1E696AD98];
        [v111 X];
        [v10 setValue:objc_msgSend(v113 forKey:{"numberWithDouble:"), @"mouthCenterX"}];
        v114 = MEMORY[0x1E696AD98];
        [v112 Y];
        v99 = v16 - v115;
        v100 = v114;
        goto LABEL_28;
      }
    }
  }

  return v10;
}

- (CGAffineTransform)inverseImageTransformForOrientation:(SEL)a3
{
  [(CIImage *)self extent];
  v10 = v9;
  if (a4 < 5)
  {
    v12 = v7;
  }

  else
  {
    [(CIImage *)self extent];
    v12 = v11;
    [(CIImage *)self extent];
    v8 = v13;
  }

  orientationTransform(a4, &v15, v10, v12, v8);
  return CGAffineTransformInvert(retstr, &v15);
}

- (id)_autoRedEyeFilterWithFeatures:(id)a3 imageProperties:(id)a4 context:(id)a5 options:(id)a6
{
  v88[1] = *MEMORY[0x1E69E9840];
  v11 = CI_EDIT_RED_EYE_VERSION();
  v12 = [a6 valueForKey:@"CIDetectorImageOrientation"];
  if (v12)
  {
    v13 = [v12 intValue];
  }

  else
  {
    v13 = 1;
  }

  v80 = 0u;
  v81 = 0u;
  v79 = 0u;
  [(CIImage *)self extent];
  orientationTransform(v13, &v79, v14, v15, v16);
  v17 = self;
  v18 = self;
  if (v11 >= 2)
  {
    v17 = self;
    if ([a6 objectForKeyedSubscript:@"fullSizeImage"])
    {
      v17 = [a6 objectForKeyedSubscript:@"fullSizeImage"];
    }

    if (v13 == 1)
    {
      v18 = self;
    }

    else
    {
      v17 = [(CIImage *)v17 imageByApplyingOrientation:v13];
      v18 = [(CIImage *)self imageByApplyingOrientation:v13];
    }
  }

  v73 = v11;
  if (!a5)
  {
    a5 = +[CIContext _singletonContext];
  }

  v19 = [a4 valueForKey:*MEMORY[0x1E696DF28]];
  v20 = [v19 valueForKey:*MEMORY[0x1E696DF50]];
  v21 = [a4 valueForKey:*MEMORY[0x1E696D9B0]];
  v22 = [v21 valueForKey:*MEMORY[0x1E696D9F0]];
  if (v22 && ([v22 intValue] & 1) == 0)
  {
    return 0;
  }

  v70 = v13;
  if (!a3)
  {
    v87 = @"CIDetectorBetterEyeLocs";
    v88[0] = MEMORY[0x1E695E118];
    v23 = +[CIDetector detectorOfType:context:options:](CIDetector, "detectorOfType:context:options:", @"CIDetectorTypeFace", a5, [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1]);
    v24 = [a6 valueForKey:@"CIDetectorImageOrientation"];
    if (v24)
    {
      v85 = @"CIDetectorImageOrientation";
      v86 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    }

    else
    {
      v25 = 0;
    }

    a3 = [(CIDetector *)v23 featuresInImage:v18 options:v25];
  }

  v71 = a5;
  v72 = v20;
  v26 = a6;
  v27 = [MEMORY[0x1E695DF70] array];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v28 = [a3 countByEnumeratingWithState:&v75 objects:v84 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v76;
    do
    {
      v31 = 0;
      do
      {
        if (*v76 != v30)
        {
          objc_enumerationMutation(a3);
        }

        v32 = *(*(&v75 + 1) + 8 * v31);
        [(CIImage *)v18 extent];
        v74[0] = v79;
        v74[1] = v80;
        v74[2] = v81;
        [v27 addObject:{-[CIImage _dictForFeature:invOrientationTransform:extent:](v17, "_dictForFeature:invOrientationTransform:extent:", v32, v74)}];
        ++v31;
      }

      while (v29 != v31);
      v29 = [a3 countByEnumeratingWithState:&v75 objects:v84 count:16];
    }

    while (v29);
  }

  if (![v27 count])
  {
    return 0;
  }

  [(CIImage *)v17 extent];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v26;
  if (![a3 count])
  {
    goto LABEL_35;
  }

  [a3 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v43 = [a3 objectAtIndexedSubscript:0];
  if (isKindOfClass)
  {
    v44 = v73;
    if (![v43 landmarks])
    {
LABEL_35:
      v44 = 1;
      goto LABEL_36;
    }
  }

  else
  {
    objc_opt_class();
    v44 = v73;
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(a3 objectAtIndexedSubscript:{0), "objectForKeyedSubscript:", @"leftEyeX"}])
    {
      goto LABEL_35;
    }
  }

  if (v44 == 3)
  {
    v45 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v26];
    v83[0] = [MEMORY[0x1E696AD98] numberWithDouble:v34];
    v83[1] = [MEMORY[0x1E696AD98] numberWithDouble:v36];
    v83[2] = [MEMORY[0x1E696AD98] numberWithDouble:v38];
    v83[3] = [MEMORY[0x1E696AD98] numberWithDouble:v40];
    [v45 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v83, 4), @"imageExtent"}];
    [CIRedEyeRepair3 supportRectangleWithFaceArray:v27 options:v45];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = 1;
    v55 = 1;
    goto LABEL_37;
  }

LABEL_36:
  [CIRedEyeRepair supportRectangleWithFaceArray:v27 imageSize:v38, v40];
  v47 = v56;
  v49 = v57;
  v51 = v58;
  v53 = v59;
  v54 = 0;
  v55 = v44 > 1;
LABEL_37:
  v60 = vcvtd_n_u64_f64(ceil(v51), 2uLL);
  v61 = malloc_type_calloc(v60, vcvtpd_u64_f64(v53), 0xF853F23EuLL);
  v62 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  v63 = &kCIFormatBGRA8;
  if (!v55)
  {
    v63 = &kCIFormatRGBA8;
  }

  [v71 render:v17 toBitmap:v61 rowBytes:v60 bounds:*v63 format:v62 colorSpace:{v47, v49, v51, v53}];
  CGColorSpaceRelease(v62);
  if (v54)
  {
    v64 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v41];
    v82[0] = [MEMORY[0x1E696AD98] numberWithDouble:v34];
    v82[1] = [MEMORY[0x1E696AD98] numberWithDouble:v36];
    v82[2] = [MEMORY[0x1E696AD98] numberWithDouble:v38];
    v82[3] = [MEMORY[0x1E696AD98] numberWithDouble:v40];
    [v64 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v82, 4), @"imageExtent"}];
    [v64 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v70), @"orientation"}];
    v65 = [[CIRedEyeRepair3 alloc] initWithExternalBuffer:v61 subRectangle:v60 rowBytes:v64 options:v47, v49, v51, v53];
    v66 = v72;
  }

  else
  {
    v66 = v72;
    v65 = [[CIRedEyeRepair alloc] initWithExternalBuffer:v61 subRectangle:v60 fullSize:v72 rowBytes:v47 cameraModel:v49, v51, v53, v38, v40];
  }

  [(CIRedEyeRepair3 *)v65 autoRepairWithFaceArray:v27];
  v67 = [(CIRedEyeRepair3 *)v65 repairArray];

  if (v61)
  {
    free(v61);
  }

  if (![v67 count])
  {
    return 0;
  }

  v68 = [CIFilter filterWithName:@"CIRedEyeCorrections"];
  [(CIFilter *)v68 setValue:self forKey:@"inputImage"];
  [(CIFilter *)v68 setValue:v66 forKey:@"inputCameraModel"];
  [(CIFilter *)v68 setValue:v67 forKey:@"inputCorrectionInfo"];
  return v68;
}

- (id)autoRedEyeFilterWithFeatures:(id)a3 imageProperties:(id)a4 options:(id)a5
{
  if (a3)
  {
    return [(CIImage *)self _autoRedEyeFilterWithFeatures:a3 imageProperties:a4 context:0 options:a5];
  }

  else
  {
    return 0;
  }
}

- (id)autoRedEyeFilterWithFeatures:(id)a3 options:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = [(CIImage *)self properties];

  return [(CIImage *)self _autoRedEyeFilterWithFeatures:a3 imageProperties:v7 context:0 options:a4];
}

- (CGPoint)calcIntersection:(CGPoint)a3 slope1:(CGPoint)a4 pt2:(CGPoint)a5 slope2:(CGPoint)a6
{
  v6 = ((a5.y - a3.y) * a6.x - (a5.x - a3.x) * a6.y) / (a6.x * a4.y - a4.x * a6.y);
  v7 = a3.x + v6 * a4.x;
  v8 = a3.y + v6 * a4.y;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)getAutoRotateFilter:(id)a3 ciImage:(id)a4 inputRect:(CGRect)a5 rotateCropRect:(CGRect *)a6 minTiltAngle:(float)a7 maxTiltAngle:(float)a8 detectVerticalLines:(BOOL)a9 thrVertAngle:(float)a10 thrDomAngleDiff:(float)a11
{
  v13 = a9;
  width = a5.size.width;
  height = a5.size.height;
  y = a5.origin.y;
  x = a5.origin.x;
  [a4 extent];
  v23 = v22;
  [a4 extent];
  v24 = [a3 createCGImage:a4 fromRect:{0.0, 0.0, v23}];
  *&v25 = a7;
  *&v26 = a8;
  *&v27 = a10;
  *&v28 = a11;
  v29 = [(CIImage *)self autoRotateFilterFFT:a3 image:v24 inputRect:v13 minTiltAngle:x maxTiltAngle:y detectVerticalLines:width thrVertAngle:height thrDomAngleDiff:v25, v26, v27, v28];
  CGImageRelease(v24);
  if (!v29)
  {
    return v29;
  }

  if ([v29 _isIdentity])
  {
    return 0;
  }

  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  v30 = [v29 valueForKey:@"inputTransform"];
  if (v30)
  {
    v31 = v30;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [v31 objCType];
      if (!strcmp(v32, "{CGAffineTransform=dddddd}") || !strcmp(v32, "{?=dddddd}"))
      {
        [v31 getValue:&v78 size:48];
      }

      goto LABEL_13;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v31 count] == 6)
      {
        [objc_msgSend(v31 objectAtIndex:{0), "doubleValue"}];
        v78.f64[0] = v64;
        [objc_msgSend(v31 objectAtIndex:{1), "doubleValue"}];
        v78.f64[1] = v65;
        [objc_msgSend(v31 objectAtIndex:{2), "doubleValue"}];
        v79.f64[0] = v66;
        [objc_msgSend(v31 objectAtIndex:{3), "doubleValue"}];
        v79.f64[1] = v67;
        [objc_msgSend(v31 objectAtIndex:{4), "doubleValue"}];
        v80.f64[0] = v68;
        [objc_msgSend(v31 objectAtIndex:{5), "doubleValue"}];
        v80.f64[1] = v69;
      }

      goto LABEL_13;
    }

    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    [v31 transformStruct];
    v78 = 0u;
    v79 = 0u;
    v34 = 0u;
  }

  else
  {
    v33 = *(MEMORY[0x1E695EFD0] + 16);
    v78 = *MEMORY[0x1E695EFD0];
    v79 = v33;
    v34 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v80 = v34;
LABEL_13:
  v35 = vmulq_f64(v79, 0);
  v36 = vaddq_f64(v80, vmlaq_f64(v35, 0, v78));
  v72 = vsubq_f64(vaddq_f64(v80, vmlaq_n_f64(v35, v78, width)), v36);
  v73 = vsubq_f64(vaddq_f64(v80, vmlaq_f64(vmulq_n_f64(v79, height), 0, v78)), v36);
  v37 = width * 0.5;
  v38 = height * 0.5;
  v39 = height * -0.5;
  v40 = width * -0.5;
  v41 = v36;
  [(CIImage *)self calcIntersection:width * 0.5 slope1:height * 0.5 pt2:width * 0.5 slope2:height * -0.5, *&v36, *&v72];
  v77 = v42;
  v75 = v43;
  [(CIImage *)self calcIntersection:v37 slope1:v38 pt2:v37 slope2:v39, *&v41];
  v70 = v45;
  v71 = v44;
  [(CIImage *)self calcIntersection:v37 slope1:v38 pt2:v40 slope2:v39, *&v41, *&v72];
  v47 = v46;
  v49 = v48;
  [(CIImage *)self calcIntersection:v37 slope1:v38 pt2:v40 slope2:v39, *&v41, *&v73];
  if (a6)
  {
    v52 = (v49 - v38) * (v49 - v38) + (v47 - v37) * (v47 - v37);
    v53 = (v70 - v38) * (v70 - v38) + (v71 - v37) * (v71 - v37);
    v54 = (v75 - v38) * (v75 - v38) + (v77 - v37) * (v77 - v37);
    v55 = v53 < v54;
    if (v53 < v54)
    {
      v56 = v70;
    }

    else
    {
      v53 = (v75 - v38) * (v75 - v38) + (v77 - v37) * (v77 - v37);
      v56 = v75;
    }

    if (v55)
    {
      v57 = v71;
    }

    else
    {
      v57 = v77;
    }

    v58 = v52 < v53;
    if (v52 < v53)
    {
      v59 = v49;
    }

    else
    {
      v52 = v53;
      v59 = v56;
    }

    if (v58)
    {
      v60 = v47;
    }

    else
    {
      v60 = v57;
    }

    if ((v51 - v38) * (v51 - v38) + (v50 - v37) * (v50 - v37) >= v52)
    {
      v51 = v59;
      v50 = v60;
    }

    v61 = vabdd_f64(v51, v38);
    v62 = vabdd_f64(v50, v37);
    a6->origin.x = v37 - v62;
    a6->origin.y = v38 - v61;
    a6->size.width = v62 + v62;
    a6->size.height = v61 + v61;
  }

  return v29;
}

- (id)autoRotateFilterFFT:(id)a3 image:(CGImage *)a4 inputRect:(CGRect)a5 minTiltAngle:(float)a6 maxTiltAngle:(float)a7 detectVerticalLines:(BOOL)a8 thrVertAngle:(float)a9 thrDomAngleDiff:(float)a10
{
  v12 = a8;
  height = a5.size.height;
  width = a5.size.width;
  v154 = *MEMORY[0x1E69E9840];
  result = VisionLibraryCore();
  if (result)
  {
    result = gethorizonDetectionFFTAnglesSymbolLoc();
    if (result)
    {
      result = VisionLibraryCore();
      if (result)
      {
        result = gethorizonDetectionFFTSymbolLoc();
        if (result)
        {
          v27 = [(CIImage *)self properties];
          v146 = width;
          v147 = height;
          v148 = a10;
          v149 = a9;
          if (!v27)
          {
            v37 = 0.0;
            v38 = 0.0;
            v145 = 0.0;
            goto LABEL_25;
          }

          acLog("autoRotateFilterFFT: props exist\n", v20, v21, v22, v23, v24, v25, v26, v138);
          v28 = [(NSDictionary *)v27 objectForKey:*MEMORY[0x1E696DE78]];
          if (v28)
          {
            v36 = [v28 intValue];
          }

          else
          {
            v36 = 0;
          }

          acLog("Orientation = %d\n", v29, v30, v31, v32, v33, v34, v35, v36);
          v39 = [(NSDictionary *)v27 objectForKey:*MEMORY[0x1E696DE30]];
          v47 = 0.0;
          v48 = 0.0;
          v49 = 0.0;
          if (v39)
          {
            v50 = [v39 objectForKey:kMakerNoteProperty_AccelerationVector];
            acLog("  Found makerNotes\n", v51, v52, v53, v54, v55, v56, v57, v139);
            if (v50)
            {
              [objc_msgSend(v50 objectAtIndex:{0), "floatValue"}];
              v49 = v58;
              [objc_msgSend(v50 objectAtIndex:{1), "floatValue"}];
              v48 = v59;
              [objc_msgSend(v50 objectAtIndex:{2), "floatValue"}];
              v47 = v60;
              v140 = v49;
              acLog("    Found vector: %.3f,%.3f,%.3f\n", v61, v62, v63, v64, v65, v66, v67, SLOBYTE(v140));
            }
          }

          v141 = v49;
          acLog("acc = (%.5f, %.5f, %.5f)\n", v40, v41, v42, v43, v44, v45, v46, SLOBYTE(v141));
          v68 = (v48 * v48) + (v49 * v49);
          v69 = atan2f(v47, sqrtf(v68));
          v70 = sqrtf(v68 + (v47 * v47)) + -1.0;
          v78 = atan2f(v48, v49);
          if (v36 > 5)
          {
            if (v36 == 6)
            {
              v79 = 1.5708;
            }

            else
            {
              if (v36 != 8)
              {
LABEL_20:
                v80 = ((v78 + 0.0) * -180.0) / 3.14159265;
                v145 = v80;
                v81 = (v69 * 180.0) / 3.14159265;
                v38 = v70;
                acLog("accelPitch = %.3f deg, accelMagnitudeDev = %.3f\n", v71, v72, v73, v74, v75, v76, v77, SLOBYTE(v81));
                LODWORD(v27) = 0;
LABEL_24:
                v37 = v69;
LABEL_25:
                CFPreferenceFloat = getCFPreferenceFloat(@"MaxAccelPitch", @"com.apple.mobileslideshow", 25.0);
                v85 = getCFPreferenceFloat(@"MaxPixelTilt", @"com.apple.mobileslideshow", 10.0);
                v86 = getCFPreferenceFloat(@"MinPixelTilt", @"com.apple.mobileslideshow", 1.0);
                v87 = getCFPreferenceFloat(@"MaxAccelMagDev", @"com.apple.mobileslideshow", 0.03);
                v95 = getCFPreferenceFloat(@"MaxAccelFFTDiff", @"com.apple.mobileslideshow", 5.0);
                if (a7 == -1.0)
                {
                  v96 = v85;
                }

                else
                {
                  v96 = a7;
                }

                if (a6 == -1.0)
                {
                  v97 = v86;
                }

                else
                {
                  v97 = a6;
                }

                v98 = v95;
                v99 = CFPreferenceFloat;
                v100 = v96;
                v101 = v97;
                v144 = v95;
                v143 = v97;
                acLog("MaxPitch = %.3f, MaxPixelTilt = %.3f, MinPixelTilt = %.3f, MaxAccelMagDev = %.3f, MaxAccelFFTDifff = %.3f\n", v88, v89, v90, v91, v92, v93, v94, SLOBYTE(v99));
                if (fabsf(v38) <= v87)
                {
                  v102 = v27;
                }

                else
                {
                  v102 = 0;
                }

                v103 = v99 * 3.14159265 / 180.0;
                if (fabs(v37) > v103)
                {
                  return 0;
                }

                v104 = CGImageGetWidth(a4);
                v105 = CGImageGetHeight(a4);
                v106 = v105;
                v107 = v104;
                if (v104 > v105)
                {
                  v108 = (((v107 / v106) * 256.0) + 0.5);
                }

                else
                {
                  v108 = 256;
                }

                if (v104 > v105)
                {
                  v109 = 256;
                }

                else
                {
                  v109 = (((v106 / v107) * 256.0) + 0.5);
                }

                DeviceRGB = CGColorSpaceCreateDeviceRGB();
                v111 = (4 * v108 + 60) & 0xFFFFFFC0;
                v112 = malloc_type_malloc(v111 * v109, 0x100004077774924uLL);
                v113 = CGBitmapContextCreate(v112, v108, v109, 8uLL, v111, DeviceRGB, 5u);
                CGContextSetInterpolationQuality(v113, kCGInterpolationHigh);
                v155.size.width = v108;
                v155.size.height = v109;
                v155.origin.x = 0.0;
                v155.origin.y = 0.0;
                CGContextDrawImage(v113, v155, a4);
                CGContextRelease(v113);
                CGColorSpaceRelease(DeviceRGB);
                v152 = 0.0;
                if (v12)
                {
                  if (v148 == -1.0)
                  {
                    v114 = 0.17453;
                  }

                  else
                  {
                    v114 = v148 * 3.14159265 / 180.0;
                  }

                  v117 = gethorizonDetectionFFTAnglesSymbolLoc();
                  if (!v117)
                  {
                    [CIImage(AutoAdjustCrop) autoRotateFilterFFT:image:inputRect:minTiltAngle:maxTiltAngle:detectVerticalLines:thrVertAngle:thrDomAngleDiff:];
                  }

                  v118 = v117(v112, (4 * v108 + 60) & 0xFFFFFFC0, v108, v109, 1, 5, &v153, v114);
                  v116 = *&v153.a;
                  v152 = *&v153.a;
                  if (v149 == -1.0)
                  {
                    v120 = 0.0349065848;
                  }

                  else
                  {
                    v119 = v149 * 3.14159265 / 180.0;
                    v120 = v119;
                  }

                  if (v118 >= 1)
                  {
                    v121 = v118;
                    v122 = &v153.a + 1;
                    while (*v122 <= 0.1 || fabs(fabsf(*(v122 - 1)) + -1.57079637) >= v120)
                    {
                      v122 += 2;
                      if (!--v121)
                      {
                        goto LABEL_58;
                      }
                    }

                    v152 = 0.0;
                    v116 = 0.0;
                  }

LABEL_58:
                  v123 = v116;
                  v124 = fabs(v116);
                  if (v124 <= 2.35619449)
                  {
                    if (v124 < 0.785398163)
                    {
                      goto LABEL_63;
                    }

                    v125 = v123 + 1.57079633;
                  }

                  else
                  {
                    v125 = v123 + 3.14159265;
                  }

                  v116 = v125;
                  v152 = v116;
                }

                else
                {
                  v115 = gethorizonDetectionFFTSymbolLoc();
                  if (!v115)
                  {
                    [CIImage(AutoAdjustCrop) autoRotateFilterFFT:image:inputRect:minTiltAngle:maxTiltAngle:detectVerticalLines:thrVertAngle:thrDomAngleDiff:];
                  }

                  v115(v112, (4 * v108 + 60) & 0xFFFFFFC0, v108, v109, &v152, 1);
                  v116 = v152;
                }

LABEL_63:
                v127 = v101 * 3.14159265 / 180.0;
                free(v112);
                v142 = (v116 * 180.0) / 3.14159265;
                acLog("FFT detected angle = %.3f deg\n", v128, v129, v130, v131, v132, v133, v134, SLOBYTE(v142));
                v135 = v152;
                v136 = fabsf(v152);
                if (v136 >= v127)
                {
                  v126 = v100 * 3.14159265 / 180.0;
                  v137 = v136 > v126;
                }

                else
                {
                  v137 = 1;
                }

                if (!v137 && (!v102 || vabds_f32((v152 * 180.0) / 3.1416, v145) <= v98))
                {
                  memset(&v153, 0, sizeof(v153));
                  CGAffineTransformMakeTranslation(&v153, v146 * 0.5, v147 * 0.5);
                  v150 = v153;
                  CGAffineTransformRotate(&v151, &v150, v135);
                  v153 = v151;
                  v150 = v151;
                  CGAffineTransformTranslate(&v151, &v150, v146 * -0.5, v147 * -0.5);
                  v153 = v151;
                  return +[CIFilter filterWithName:keysAndValues:](CIFilter, "filterWithName:keysAndValues:", @"CIAffineTransform", @"inputTransform", [MEMORY[0x1E696B098] valueWithBytes:&v153 objCType:"{CGAffineTransform=dddddd}"], 0, *&v143, v87, *&v144);
                }

                return 0;
              }

              v79 = -1.5708;
            }
          }

          else if (v36 == 1)
          {
            v79 = flt_19CF27810[v78 < 0.0];
          }

          else
          {
            v79 = 0.0;
            if (v36 != 3)
            {
              goto LABEL_20;
            }
          }

          v82 = ((v78 + v79) * -180.0) / 3.14159265;
          v145 = v82;
          v83 = v82;
          v38 = v70;
          acLog("accelTilt = %.3f deg, accelPitch = %.3f deg, accMagnitudeDev %.3f\n", v71, v72, v73, v74, v75, v76, v77, SLOBYTE(v83));
          LODWORD(v27) = 1;
          goto LABEL_24;
        }
      }
    }
  }

  return result;
}

- (void)getAutocropRect:(id)a3 rotateXfrm:(CGAffineTransform *)a4 inputImageRect:(CGRect)a5 clipRect:(CGRect *)a6
{
  height = a5.size.height;
  width = a5.size.width;
  v10 = a3;
  v11 = [a3 count];
  acLog("Crop: Based on %d features\n", v12, v13, v14, v15, v16, v17, v18, v11);
  if ([v10 count])
  {
    v116 = width;
    v117 = height;
    x = a6->origin.x;
    y = a6->origin.y;
    v21 = a6->size.width;
    v22 = a6->size.height;
    v115 = a6;
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v118 = v21;
    v119 = v22;
    if ([v10 count])
    {
      v24 = 0;
      v25 = x + v21;
      v26 = y + v22;
      v27 = 0.0;
      v124 = *MEMORY[0x1E695EFF8];
      v28 = 0x1E695D000uLL;
      v122 = *(MEMORY[0x1E695F058] + 16);
      v123 = *MEMORY[0x1E695F058];
      v29 = @"bounds";
      v30 = @"leftEyePosition";
      v31 = @"rightEyePosition";
      __asm { FMOV            V0.2D, #0.5 }

      v121 = _Q0;
      v37 = 0.0;
      v38 = 0.0;
      v39 = 0.0;
      v120 = v10;
      while (1)
      {
        v40 = [v10 objectAtIndex:v24];
        v128 = v124;
        v129 = v124;
        v126 = v123;
        v127 = v122;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = [v40 objectForKey:v29];
          if (v41)
          {
            [v41 getValue:&v126];
          }

          v42 = [v40 objectForKey:v30];
          v43 = v42 != 0;
          if (v42)
          {
            [v42 getValue:&v129];
          }

          v44 = [v40 objectForKey:v31];
          if (!v44)
          {
LABEL_13:
            v43 = 0;
            goto LABEL_14;
          }

          [v44 getValue:&v128];
        }

        else
        {
          [v40 bounds];
          v126.f64[0] = v45;
          v126.f64[1] = v46;
          v127.width = v47;
          v127.height = v48;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }

          v49 = [v40 hasLeftEyePosition];
          v50 = v23;
          v51 = v31;
          v52 = v30;
          v53 = v29;
          v54 = v28;
          v55 = [v40 hasRightEyePosition];
          [v40 leftEyePosition];
          v129.f64[0] = v56;
          v129.f64[1] = v57;
          [v40 rightEyePosition];
          v128.f64[0] = v58;
          v128.f64[1] = v59;
          v43 = v49 & v55;
          v28 = v54;
          v29 = v53;
          v30 = v52;
          v31 = v51;
          v23 = v50;
          v10 = v120;
        }

LABEL_14:
        v130.origin = v126;
        v130.size = v127;
        v60 = *&a4->c;
        *&v125.a = *&a4->a;
        *&v125.c = v60;
        *&v125.tx = *&a4->tx;
        v131 = CGRectApplyAffineTransform(v130, &v125);
        v126.f64[0] = v131.origin.x;
        v126.f64[1] = v131.origin.y;
        v127.width = v131.size.width;
        v127.height = v131.size.height;
        if (v43)
        {
          a = a4->a;
          b = a4->b;
          c = a4->c;
          d = a4->d;
          tx = a4->tx;
          ty = a4->ty;
          v74 = ty + v129.f64[1] * d + b * v129.f64[0];
          v129.f64[0] = tx + v129.f64[1] * c + a4->a * v129.f64[0];
          v129.f64[1] = v74;
          v75 = ty + d * v128.f64[1] + b * v128.f64[0];
          v128.f64[0] = tx + c * v128.f64[1] + a * v128.f64[0];
          v128.f64[1] = v75;
          acLog("  feature%d has left eye at (%.3f,%.3f), right eye at (%.3f,%.3f)\n", v61, v62, v63, v64, v65, v66, v67, v24);
          v76 = vmulq_f64(vaddq_f64(v129, v128), v121);
          v77 = vsubq_f64(v76, v126);
          v78 = vsubq_f64(vaddq_f64(v126, v127), v76);
          v79 = vmovn_s64(vcgtq_f64(v77, v78));
          v80 = v79.i8[4];
          if (v79.i8[0])
          {
            v81 = v77.f64[0];
          }

          else
          {
            v81 = v78.f64[0];
          }

          v82 = v81;
          v83 = v78.f64[1];
          if (v80)
          {
            v83 = v77.f64[1];
          }

          v84 = v83;
          if (v76.f64[0] - v82 < x)
          {
            v85 = v76.f64[0] - x;
            v82 = v85;
          }

          if (v76.f64[0] + v82 > v25)
          {
            v86 = v25 - v76.f64[0];
            v82 = v86;
          }

          if (v76.f64[1] - v84 < y)
          {
            v87 = v76.f64[1] - y;
            v84 = v87;
          }

          if (v76.f64[1] + v84 <= v26)
          {
            v88 = v84;
          }

          else
          {
            v88 = v26 - v76.f64[1];
          }

          v131.origin.x = v76.f64[0] - v82;
          v131.origin.y = v76.f64[1] - v88;
          v127.width = (v82 + v82);
          v127.height = (v88 + v88);
        }

        v126.f64[0] = v131.origin.x - x;
        v126.f64[1] = v131.origin.y - y;
        [v23 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", &v126, "{CGRect={CGPoint=dd}{CGSize=dd}}")}];
        if (v24)
        {
          v134.origin = v126;
          v134.size = v127;
          v132.origin.x = v27;
          v132.origin.y = v37;
          v132.size.width = v38;
          v132.size.height = v39;
          v133 = CGRectUnion(v132, v134);
          v27 = v133.origin.x;
          v37 = v133.origin.y;
          v38 = v133.size.width;
          v39 = v133.size.height;
        }

        else
        {
          v37 = v126.f64[1];
          v27 = v126.f64[0];
          v39 = v127.height;
          v38 = v127.width;
        }

        if ([v10 count] <= ++v24)
        {
          goto LABEL_36;
        }
      }
    }

    v39 = 0.0;
    v38 = 0.0;
    v37 = 0.0;
    v27 = 0.0;
LABEL_36:
    v89 = objc_alloc_init(AutoCropper);
    v90 = [(AutoCropper *)v89 clusterRects:v23];
    memset(&v125, 0, 32);
    [objc_msgSend(v90 objectAtIndex:{0), "getValue:", &v125}];
    [(AutoCropper *)v89 computeClippingWithinSize:0 forImportantRect:v118 andType:v119 restrictRect:v125.a, v125.b, v125.c, v125.d, *&v27, *&v37, *&v38, *&v39];
    v115->origin.x = v91;
    v115->origin.y = v92;
    v115->size.width = v93;
    v115->size.height = v94;
    v95 = v116 * v117;
    *&v91 = v93 * v94;
    v96 = ((*&v91 * 100.0) / v95);
    acLog("  clip overall %% = %.3f\n", v97, v98, v99, v100, v101, v102, v103, SLOBYTE(v96));
    v111 = v115->size.width * v115->size.height;
    if (v111 >= (v95 * 0.75))
    {
      if (v111 <= (v95 * 0.99))
      {
        v113 = y + v115->origin.y;
        v115->origin.x = x + v115->origin.x;
        v115->origin.y = v113;
        goto LABEL_42;
      }

      v112 = "    too little clipping - reverting back\n";
    }

    else
    {
      v112 = "    too much clipping - reverting back to rotated crop only\n";
    }

    acLog(v112, v104, v105, v106, v107, v108, v109, v110, v114);
    v115->origin.x = x;
    v115->origin.y = y;
    v115->size.width = v118;
    v115->size.height = v119;
LABEL_42:
  }
}

- (CIImage)imageWithExtent:(CGRect)a3 processorDescription:(id)a4 argumentDigest:(unint64_t)a5 inputFormat:(int)a6 outputFormat:(int)a7 options:(id)a8 roiCallback:(id)a9 processor:(id)a10
{
  v11 = *&a7;
  v12 = *&a6;
  v40 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(a3))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    if (a10)
    {
      if (kCIFormatAllowSRGB == v12 || (v26 = CI::format_modernize(v12, "[CIImage(CIImageProcessor) imageWithExtent:processorDescription:argumentDigest:inputFormat:outputFormat:options:roiCallback:processor:]", v16)) == 0 || v26 == 274 || (CI::ProcessorImage::format_is_supported(v26, 1) & 1) != 0)
      {
        if (kCIFormatAllowSRGB == v11 || (v27 = CI::format_modernize(v11, "[CIImage(CIImageProcessor) imageWithExtent:processorDescription:argumentDigest:inputFormat:outputFormat:options:roiCallback:processor:]", v16)) == 0 || (CI::ProcessorImage::format_is_supported(v27, 0) & 1) != 0)
        {
          if (!a5)
          {
            v28 = ci_logger_performance();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v37 = "[CIImage(CIImageProcessor) imageWithExtent:processorDescription:argumentDigest:inputFormat:outputFormat:options:roiCallback:processor:]";
              v38 = 2114;
              v39 = a4;
              _os_log_impl(&dword_19CC36000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s argumentDigest is 0 which will prevent CoreImage from caching %{public}@ optimally.", buf, 0x16u);
            }
          }

          [objc_msgSend(a8 objectForKey:{@"kCIImageAlphaOne", "BOOLValue"}];
          [(CIImage *)self _internalRepresentation];
          v29 = [a8 objectForKeyedSubscript:@"kCIImageProcessorSynchronizeInputs"];
          if (v29)
          {
            [v29 BOOLValue];
          }

          v31 = [a8 objectForKeyedSubscript:@"kCIImageProcessorAllowPartialOutputRegion"];
          if (v31)
          {
            [v31 BOOLValue];
          }

          v32 = [a8 objectForKeyedSubscript:@"kCIImageProcessorAllowCompressedInputsAndOutputs"];
          if (v32)
          {
            [v32 BOOLValue];
          }

          v33 = [a8 objectForKeyedSubscript:@"kCIImageProcessorCanOutputLossyCompressed"];
          if (v33)
          {
            [v33 BOOLValue];
          }

          v34 = [a8 objectForKeyedSubscript:@"kCIImageProcessorOnlyUsesMetal"];
          if (v34)
          {
            [v34 BOOLValue];
          }

          operator new();
        }

        v30 = ci_logger_api();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [CIImage(CIImageProcessor) imageWithExtent:processorDescription:argumentDigest:inputFormat:outputFormat:options:roiCallback:processor:];
        }
      }

      else
      {
        v35 = ci_logger_api();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [CIImage(CIImageProcessor) imageWithExtent:processorDescription:argumentDigest:inputFormat:outputFormat:options:roiCallback:processor:];
        }
      }
    }

    else
    {
      v18 = ci_logger_api();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CIImage(CIImageProcessor) imageWithExtent:v18 processorDescription:v19 argumentDigest:v20 inputFormat:v21 outputFormat:v22 options:v23 roiCallback:v24 processor:v25];
      }
    }

    return 0;
  }
}

void __136__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_inputFormat_outputFormat_options_roiCallback_processor___block_invoke_2(uint64_t a1, void **a2, void *a3, void **a4, double **a5, _DWORD **a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, unsigned __int8 a14, uint64_t a15)
{
  v46 = *MEMORY[0x1E69E9840];
  v26 = [CIImageProcessorInput alloc];
  v27 = *a3;
  v28 = a1;
  v29 = [(CIImageProcessorInput *)v26 initWithSurface:**a2 texture:*v27 digest:**a4 allowSRGB:**a6 & 1 bounds:*(a1 + 48) onlyMetal:a15 context:**a5, (*a5)[1], (*a5)[2], (*a5)[3]];
  v30 = [(CIImageProcessorInOut *)[CIImageProcessorOutput alloc] initWithSurface:a7 texture:a8 digest:a13 allowSRGB:a14 bounds:*(a1 + 48) onlyMetal:a15 context:a9, a10, a11, a12];
  v31 = objc_autoreleasePoolPush();
  v32 = ci_signpost_log_render();
  v33 = (*(*a15 + 280))(a15) << 32;
  if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    v34 = *(v28 + 32);
    *buf = 138543362;
    v45 = v34;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v33, "processor_process", "%{public}@", buf, 0xCu);
  }

  v35 = (*(*a15 + 280))(a15);
  TimerBase::TimerBase(buf, v35, 0, "processor_process", 0);
  (*(*(v28 + 40) + 16))();
  _ZZZ136__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_inputFormat_outputFormat_options_roiCallback_processor__EUb_EN13SignpostTimerD1Ev(buf);
  v36 = ci_signpost_log_render();
  v37 = (*(*a15 + 280))(a15) << 32;
  if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    v38 = *(v28 + 32);
    *buf = 138543362;
    v45 = v38;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v37, "processor_postprocess", "%{public}@", buf, 0xCu);
  }

  v39 = (*(*a15 + 280))(a15);
  TimerBase::TimerBase(buf, v39, 0, "processor_postprocess", 0);
  v43 = v29;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v42 = v30;
  post_process(v40, [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1], a15);
  _ZZZ136__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_inputFormat_outputFormat_options_roiCallback_processor__EUb_EN13SignpostTimerD1E_0v(buf);
  objc_autoreleasePoolPop(v31);
}

+ (CIImage)imageWithExtent:(CGRect)a3 processorDescription:(id)a4 argumentDigest:(unint64_t)a5 outputFormat:(int)a6 options:(id)a7 processor:(id)a8
{
  v10 = *&a6;
  v34 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(a3))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    if (a8)
    {
      if (kCIFormatAllowSRGB == v10 || (v24 = CI::format_modernize(v10, "+[CIImage(CIImageProcessor) imageWithExtent:processorDescription:argumentDigest:outputFormat:options:processor:]", v13)) == 0 || v24 == kCIFormatAllowSRGB || (CI::ProcessorImage::format_is_supported(v24, 0) & 1) != 0)
      {
        if (!a5)
        {
          v15 = ci_logger_performance();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v31 = "+[CIImage(CIImageProcessor) imageWithExtent:processorDescription:argumentDigest:outputFormat:options:processor:]";
            v32 = 2114;
            v33 = a4;
            _os_log_impl(&dword_19CC36000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s argumentDigest is 0 which will prevent CoreImage from caching %{public}@ optimally.", buf, 0x16u);
          }
        }

        [objc_msgSend(a7 objectForKey:{@"kCIImageAlphaOne", "BOOLValue"}];
        v26 = [a7 objectForKeyedSubscript:@"kCIImageProcessorAllowPartialOutputRegion"];
        if (v26)
        {
          [v26 BOOLValue];
        }

        v27 = [a7 objectForKeyedSubscript:@"kCIImageProcessorAllowCompressedInputsAndOutputs"];
        if (v27)
        {
          [v27 BOOLValue];
        }

        v28 = [a7 objectForKeyedSubscript:@"kCIImageProcessorCanOutputLossyCompressed"];
        if (v28)
        {
          [v28 BOOLValue];
        }

        v29 = [a7 objectForKeyedSubscript:@"kCIImageProcessorOnlyUsesMetal"];
        if (v29)
        {
          [v29 BOOLValue];
        }

        operator new();
      }

      v25 = ci_logger_api();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[CIImage(CIImageProcessor) imageWithExtent:processorDescription:argumentDigest:outputFormat:options:processor:];
      }
    }

    else
    {
      v16 = ci_logger_api();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(CIImage(CIImageProcessor) *)v16 imageWithExtent:v17 processorDescription:v18 argumentDigest:v19 outputFormat:v20 options:v21 processor:v22, v23];
      }
    }

    return 0;
  }
}

void __112__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_outputFormat_options_processor___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15)
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = [(CIImageProcessorInOut *)[CIImageProcessorOutput alloc] initWithSurface:a11 texture:a12 digest:a13 allowSRGB:a14 bounds:*(a1 + 48) onlyMetal:a15 context:a2, a3, a4, a5];
  v17 = objc_autoreleasePoolPush();
  v18 = ci_signpost_log_render();
  v19 = (*(*a15 + 280))(a15) << 32;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v20 = *(a1 + 32);
    *buf = 138543362;
    v29 = v20;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v19, "processor_process", "%{public}@", buf, 0xCu);
  }

  v21 = (*(*a15 + 280))(a15);
  TimerBase::TimerBase(buf, v21, 0, "processor_process", 0);
  (*(*(a1 + 40) + 16))();
  _ZZZ112__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_outputFormat_options_processor__EUb0_EN13SignpostTimerD1Ev(buf);
  v22 = ci_signpost_log_render();
  v23 = (*(*a15 + 280))(a15) << 32;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    v24 = *(a1 + 32);
    *buf = 138543362;
    v29 = v24;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v23, "processor_postprocess", "%{public}@", buf, 0xCu);
  }

  v25 = (*(*a15 + 280))(a15);
  TimerBase::TimerBase(buf, v25, 0, "processor_postprocess", 0);
  v27 = v16;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  post_process(MEMORY[0x1E695E0F0], v26, a15);
  _ZZZ112__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_outputFormat_options_processor__EUb0_EN13SignpostTimerD1E_0v(buf);
  objc_autoreleasePoolPop(v17);
}

+ (CIImage)imageWithImageProvider:(id)a3 userInfo:(id)a4 size:(CGSize)a5 format:(int)a6 flipped:(BOOL)a7 colorSpace:(CGColorSpace *)a8
{
  v8 = [[CIImage alloc] initWithImageProvider:a3 userInfo:a4 size:*&a6 format:a7 flipped:a8 colorSpace:a5.width, a5.height];

  return v8;
}

+ (CIImage)imageWithImageProvider:(id)p size:(size_t)width :(size_t)height format:(CIFormat)f colorSpace:(CGColorSpaceRef)cs options:(NSDictionary *)options
{
  v8 = [[CIImage alloc] initWithImageProvider:p size:width format:height colorSpace:*&f options:cs];

  return v8;
}

- (CIImage)initWithImageProvider:(id)a3 userInfo:(id)a4 size:(CGSize)a5 format:(int)a6 flipped:(BOOL)a7 colorSpace:(CGColorSpace *)a8
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"user_info";
  v10[1] = @"CIImageFlipped";
  v8 = MEMORY[0x1E695E110];
  if (a7)
  {
    v8 = MEMORY[0x1E695E118];
  }

  v11[0] = a4;
  v11[1] = v8;
  return -[CIImage initWithImageProvider:size::format:colorSpace:options:](self, "initWithImageProvider:size::format:colorSpace:options:", a3, a5.width, a5.height, *&a6, a8, [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2]);
}

- (CIImage)initWithImageProvider:(id)p size:(size_t)width :(size_t)height format:(CIFormat)f colorSpace:(CGColorSpaceRef)cs options:(NSDictionary *)options
{
  v9 = *&f;
  NSSelectorFromString(&cfstr_Provideimageda.isa);
  NSSelectorFromString(&cfstr_Provideimageto.isa);
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v31 = self;
    CI::format_modernize(v9, "[CIImage(CIImageProvider) initWithImageProvider:size::format:colorSpace:options:]", v14);
    NSSelectorFromString(&cfstr_Provideimagete.isa);
    v15 = objc_opt_respondsToSelector();
    v16 = [(NSDictionary *)options objectForKey:@"user_info"];
    v17 = CI_LOG_IMAGE_PROVIDER() != 0;
    v18 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
    if (![(NSDictionary *)options objectForKey:@"kCIImageProviderName"])
    {
      v19 = objc_opt_class();
      [v18 setObject:NSStringFromClass(v19) forKey:@"kCIImageProviderName"];
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = v32;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __82__CIImage_CIImageProvider__initWithImageProvider_size::format_colorSpace_options___block_invoke;
      v32[3] = &unk_1E75C31F0;
      v33 = v17;
      v32[6] = width;
      v32[7] = height;
      v32[4] = p;
      v32[5] = v16;
    }

    else
    {
      v20 = 0;
    }

    objc_opt_respondsToSelector();
    LOBYTE(v30) = (v15 ^ 1) & 1;
    return [CIImage _initWithImageProvider:v31 width:"_initWithImageProvider::width:height:format:colorSpace:surfaceCache:options:" height:v20 format:v30 colorSpace:v18 surfaceCache:? options:?];
  }

  else
  {
    v22 = ci_logger_api();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(CIImage(CIImageProvider) *)v22 initWithImageProvider:v23 size:v24 format:v25 colorSpace:v26 options:v27];
    }

    return 0;
  }
}

uint64_t __82__CIImage_CIImageProvider__initWithImageProvider_size::format_colorSpace_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    v14 = ci_logger_api();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [objc_opt_class() description];
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      *buf = 138544642;
      v21 = v15;
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      v26 = 2048;
      v27 = v18;
      v28 = 2048;
      v29 = a4;
      v30 = 2048;
      v31 = a5;
      _os_log_impl(&dword_19CC36000, v14, OS_LOG_TYPE_INFO, "CIImageProvider <%{public}@ %p> %zux%zu at %zu,%zu", buf, 0x3Eu);
    }
  }

  return [*(a1 + 32) provideImageData:a2 bytesPerRow:a3 origin:a4 :a5 size:a6 :a7 userInfo:*(a1 + 40)];
}

uint64_t __82__CIImage_CIImageProvider__initWithImageProvider_size::format_colorSpace_options___block_invoke_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    v14 = ci_logger_api();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [objc_opt_class() description];
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      *buf = 138544642;
      v21 = v15;
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      v26 = 2048;
      v27 = v18;
      v28 = 2048;
      v29 = a4;
      v30 = 2048;
      v31 = a5;
      _os_log_impl(&dword_19CC36000, v14, OS_LOG_TYPE_INFO, "CIImageProvider <%{public}@ %p> %zux%zu at %zu,%zu", buf, 0x3Eu);
    }
  }

  return [*(a1 + 32) provideImageToMTLTexture:a2 commandBuffer:a3 originx:a4 originy:a5 width:a6 height:a7 userInfo:*(a1 + 40)];
}

- (id)_initWithImageProvider:(id)a3 :(id)a4 width:(unint64_t)a5 height:(unint64_t)a6 format:(int)a7 colorSpace:(CGColorSpace *)a8 surfaceCache:(BOOL)a9 options:(id)a10
{
  if (a3 | a4 && a5 && a6)
  {
    v14 = CI::format_modernize(*&a7, "[CIImage(CIImageProvider) _initWithImageProvider::width:height:format:colorSpace:surfaceCache:options:]", a3);
    if (!CI::format_is_supported_source_provider(v14) || CI::format_is_ycc_biplanar(v14))
    {
      v15 = CI::name_for_format(v14);
      v16 = ci_logger_api();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CIImage(CIImageProvider) _initWithImageProvider:v15 width:v16 height:v17 format:v18 colorSpace:v19 surfaceCache:v20 options:v21];
      }

      goto LABEL_8;
    }

    if ([a10 objectForKey:@"CIImageFlipped"])
    {
      [objc_msgSend(a10 objectForKey:{@"CIImageFlipped", "BOOLValue"}];
    }

    if (!CI::format_has_unpremul_alpha(v14))
    {
      CI::format_has_alpha(v14);
    }

    if ([a10 objectForKey:@"CIImagePremultiplied"])
    {
      [objc_msgSend(a10 objectForKey:{@"CIImagePremultiplied", "BOOLValue"}];
    }

    [objc_msgSend(a10 objectForKey:{@"kCIImageAlphaOne", "BOOLValue"}];
    CI::format_is_ycc(v14);
    [objc_msgSend(a10 objectForKey:{@"CIImageEdgesAreClear", "BOOLValue"}];
    if (([objc_msgSend(a10 objectForKey:{@"CIImageClampToEdge", "BOOLValue"}] & 1) == 0 && objc_msgSend(objc_msgSend(a10, "objectForKey:", @"CIImageEdgeRepeat"), "BOOLValue"))
    {
      NSLog(&cfstr_CiimageKciimag.isa);
    }

    if ([a10 objectForKey:@"CIImageNearestSampling"])
    {
      [objc_msgSend(a10 objectForKey:{@"CIImageNearestSampling", "BOOLValue"}];
    }

    if ([a10 objectForKey:@"kCIImageCacheHint"])
    {
      [objc_msgSend(a10 objectForKey:{@"kCIImageCacheHint", "BOOLValue"}];
    }

    if (a8 && [MEMORY[0x1E695DFB0] null] != a8)
    {
      CI_NO_CM();
    }

    [a10 objectForKey:@"CIImageProperties"];
    if (a5 <= 0x3FF)
    {
      v24 = a5;
    }

    else
    {
      v24 = 512;
    }

    if (a6 <= 0x3FF)
    {
      v25 = a6;
    }

    else
    {
      v25 = 512;
    }

    if ([a10 objectForKey:@"kCIImageProviderName"])
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }

    v118 = 0uLL;
    v119 = 0;
    v26 = [a10 objectForKey:@"tile_size"];
    v27 = a6;
    v28 = a5;
    if (v26)
    {
      if ([v26 isEqual:@"kCIImageProviderMaximumTileSize"])
      {
        if (max_safe_tile_size(void)::onceToken != -1)
        {
          [CIImage(CIImageProvider) _initWithImageProvider::width:height:format:colorSpace:surfaceCache:options:];
        }

        if (max_safe_tile_size(void)::max_size >= a5)
        {
          v28 = a5;
        }

        else
        {
          v28 = max_safe_tile_size(void)::max_size;
        }

        if (max_safe_tile_size(void)::max_size >= a6)
        {
          v27 = a6;
        }

        else
        {
          v27 = max_safe_tile_size(void)::max_size;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v25;
          v28 = v24;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [objc_msgSend(v26 objectAtIndex:{0), "intValue"}];
            v30 = [objc_msgSend(v26 objectAtIndex:{1), "intValue"}];
            if (v29 >= 1)
            {
              v28 = v29;
            }

            else
            {
              v28 = v24;
            }

            if (v30 >= 1)
            {
              v27 = v30;
            }

            else
            {
              v27 = v25;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              LODWORD(v28) = [v26 intValue];
              v31 = v28;
              v32 = v28 < 1;
              if (v28 >= 1)
              {
                v28 = v28;
              }

              else
              {
                v28 = v24;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v91 = ci_logger_api();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                {
                  [CIImage(CIImageProvider) _initWithImageProvider:v91 width:v92 height:v93 format:v94 colorSpace:v95 surfaceCache:v96 options:v97];
                }

                goto LABEL_133;
              }

              [v26 X];
              v34 = v33;
              [v26 Y];
              v36 = v35;
              if (v34 >= 1)
              {
                v28 = v34;
              }

              else
              {
                v28 = v24;
              }

              v31 = v36;
              v32 = v36 < 1;
            }

            if (v32)
            {
              v27 = v25;
            }

            else
            {
              v27 = v31;
            }
          }
        }
      }
    }

    if (v28 && v27 && (v28 < a5 || v27 < a6))
    {
      CI::Tileable::TileRectGridMakeEqualSizedTilesWithImageSize(v28, v27, a5, a6, __p);
      std::vector<std::vector<IRect>>::__vdeallocate(&v118);
      v118 = *__p;
      v119 = v101;
      __p[1] = 0;
      v101 = 0;
      __p[0] = 0;
      v115 = __p;
      std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v115);
    }

    v37 = [a10 objectForKey:@"kCIImageProviderTileWidthArray"];
    v38 = [a10 objectForKey:@"kCIImageProviderTileHeightArray"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_121:
        if (!getContentDigestFromOptions(a10, &cfstr_Kciimageconten_1.isa))
        {
          getContentDigestFromOptions(a10, &cfstr_Kciimageprovid_1.isa);
        }

        if ([a10 objectForKey:@"kCIImageContentHeadroom"])
        {
          [objc_msgSend(a10 objectForKey:{@"kCIImageContentHeadroom", "floatValue"}];
        }

        if ([a10 objectForKey:@"kCIImageContentAverageLightLevel"])
        {
          [objc_msgSend(a10 objectForKey:{@"kCIImageContentAverageLightLevel", "floatValue"}];
        }

        if (a4)
        {
          v102 = MEMORY[0x1E69E9820];
          v103 = 3221225472;
          v104 = __104__CIImage_CIImageProvider___initWithImageProvider::width_height_format_colorSpace_surfaceCache_options___block_invoke;
          v105 = &unk_1E75C3240;
          v106 = a4;
        }

        operator new();
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    v101 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = 0;
      v40 = 0;
      while (v39 < [v37 count])
      {
        [v37 objectAtIndexedSubscript:v39];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v59 = ci_logger_api();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            [CIImage(CIImageProvider) _initWithImageProvider:v59 width:v60 height:v61 format:v62 colorSpace:v63 surfaceCache:v64 options:v65];
          }

          goto LABEL_110;
        }

        if ([objc_msgSend(v37 objectAtIndexedSubscript:{v39), "intValue"}] <= 0)
        {
          v67 = ci_logger_api();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            [CIImage(CIImageProvider) _initWithImageProvider:v67 width:v68 height:v69 format:v70 colorSpace:v71 surfaceCache:v72 options:v73];
          }

          goto LABEL_110;
        }

        v115 = [objc_msgSend(v37 objectAtIndexedSubscript:{v39), "intValue"}];
        std::vector<unsigned long>::push_back[abi:nn200100](__p, &v115);
        v40 += [objc_msgSend(v37 objectAtIndexedSubscript:{v39++), "intValue"}];
      }
    }

    else
    {
      if (v37)
      {
        v41 = ci_logger_api();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [CIImage(CIImageProvider) _initWithImageProvider:v41 width:v42 height:v43 format:v44 colorSpace:v45 surfaceCache:v46 options:v47];
        }

LABEL_110:

        v58 = 0;
LABEL_118:
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v58)
        {
          goto LABEL_121;
        }

LABEL_133:
        __p[0] = &v118;
        std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](__p);
        return 0;
      }

      v40 = 0;
    }

    while (v40 < a5)
    {
      v40 += *(__p[1] - 1);
      std::vector<unsigned long>::push_back[abi:nn200100](__p, __p[1] - 1);
    }

    v115 = 0;
    v116 = 0;
    v117 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = 0;
      for (i = 0; i < [v38 count]; ++i)
      {
        [v38 objectAtIndexedSubscript:i];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v75 = ci_logger_api();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            [CIImage(CIImageProvider) _initWithImageProvider:v75 width:v76 height:v77 format:v78 colorSpace:v79 surfaceCache:v80 options:v81];
          }

          goto LABEL_115;
        }

        if ([objc_msgSend(v38 objectAtIndexedSubscript:{i), "intValue"}] <= 0)
        {
          v83 = ci_logger_api();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            [CIImage(CIImageProvider) _initWithImageProvider:v83 width:v84 height:v85 format:v86 colorSpace:v87 surfaceCache:v88 options:v89];
          }

          goto LABEL_115;
        }

        *&v113 = [objc_msgSend(v38 objectAtIndexedSubscript:{i), "intValue"}];
        std::vector<unsigned long>::push_back[abi:nn200100](&v115, &v113);
        v37 += [objc_msgSend(v38 objectAtIndexedSubscript:{i), "intValue"}];
      }
    }

    else if (v37)
    {
      v50 = ci_logger_api();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [CIImage(CIImageProvider) _initWithImageProvider:v50 width:v51 height:v52 format:v53 colorSpace:v54 surfaceCache:v55 options:v56];
      }

LABEL_115:

      v58 = 0;
      goto LABEL_116;
    }

    while (v37 < a6)
    {
      v37 = &v37[*(v116 - 1)];
      std::vector<unsigned long>::push_back[abi:nn200100](&v115, v116 - 1);
    }

    v111 = 0;
    v112 = 0;
    v110 = 0;
    if (__p[1] != __p[0])
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](&v110, (__p[1] - __p[0]) >> 3);
    }

    v107 = 0;
    v108 = 0;
    v109 = 0;
    if (v116 != v115)
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](&v107, v116 - v115);
    }

    CI::Tileable::TileRectGridMakeFromWidthAndHeightArrays(&v110, &v107, &v113);
    std::vector<std::vector<IRect>>::__vdeallocate(&v118);
    v118 = v113;
    v119 = v114;
    v114 = 0;
    v113 = 0uLL;
    v120 = &v113;
    std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v120);
    if (v107)
    {
      v108 = v107;
      operator delete(v107);
    }

    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }

    v58 = 1;
LABEL_116:
    if (v115)
    {
      v116 = v115;
      operator delete(v115);
    }

    goto LABEL_118;
  }

LABEL_8:

  return 0;
}

uint64_t __104__CIImage_CIImageProvider___initWithImageProvider::width_height_format_colorSpace_surfaceCache_options___block_invoke(uint64_t a1, CI *this, void *a3)
{
  v6 = CI::format_from_IOSurface(this, this);
  v7 = CIMetalFormatForFormat(v6, 0);
  v8 = CIMetalTextureCreateFromIOSurface("CIImageProcessor::TextureProvider", [a3 device], this, 0, v7, 2);
  v9 = [a3 commandBuffer];
  (*(*(a1 + 32) + 16))();

  return [v9 commit];
}

uint64_t __104__CIImage_CIImageProvider___initWithImageProvider::width_height_format_colorSpace_surfaceCache_options___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

+ (CIImage)imageWithYCCImage:(id)a3 matrix:(int)a4 fullRange:(BOOL)a5 precision:(int)a6 colorSpace:(CGColorSpace *)a7
{
  v16[3] = *MEMORY[0x1E69E9840];
  ycc_to_rgb_bias_matrix = get_ycc_to_rgb_bias_matrix(a4, a5, a6, &v15, v14, &v13, v16);
  v11 = v10;
  result = 0;
  if (a3 && v11)
  {
    [a3 extent];
    if (CGRectIsEmpty(v17))
    {
      return a3;
    }

    else
    {
      result = applyColorMatrix(a3, v15.f64, v14, v13.f64, v16);
      if (a7)
      {
        return [(CIImage *)result imageByColorMatchingColorSpaceToWorkingSpace:a7];
      }
    }
  }

  return result;
}

+ (CIImage)imageWithYImage:(id)a3 CrCbImage:(id)a4 CrCbScale:(int)a5 matrix:(int)a6 fullRange:(BOOL)a7 precision:(int)a8 colorSpace:(CGColorSpace *)a9
{
  v9 = *&a8;
  v10 = a7;
  v11 = *&a6;
  v24[2] = *MEMORY[0x1E69E9840];
  v15 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_yccCombiner];
  v16 = [a4 imageByClampingToExtent];
  CGAffineTransformMakeScale(&v23, a5, a5);
  v17 = [v16 imageByApplyingTransform:&v23];
  [a3 extent];
  v24[0] = a3;
  v24[1] = v17;
  return +[CIImage imageWithYCCImage:matrix:fullRange:precision:colorSpace:](CIImage, "imageWithYCCImage:matrix:fullRange:precision:colorSpace:", -[CIColorKernel applyWithExtent:arguments:](v15, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2], v18, v19, v20, v21), v11, v10, v9, a9);
}

+ (id)imageYCC444:(id)a3 matrix:(int)a4 fullRange:(BOOL)a5 precision:(int)a6 colorSpace:(CGColorSpace *)a7
{
  v14[3] = *MEMORY[0x1E69E9840];
  rgb_to_ycc_matrix = get_rgb_to_ycc_matrix(a4, a5, a6, v14, v13, v12, v11);
  result = 0;
  if (a3 && rgb_to_ycc_matrix)
  {
    [a3 extent];
    if (CGRectIsEmpty(v15))
    {
      return a3;
    }

    else
    {
      if (a7)
      {
        a3 = [a3 imageByColorMatchingWorkingSpaceToColorSpace:a7];
      }

      if (([a3 isOpaque] & 1) == 0)
      {
        [a3 extent];
        a3 = [a3 imageBySettingAlphaOneInExtent:?];
      }

      return applyColorMatrix(a3, v13, v12, v11, v14);
    }
  }

  return result;
}

- (id)localLightStatisticsWithProxy:(BOOL)a3
{
  v3 = (MEMORY[0x1EEE9AC00])(self, a2, a3);
  v86 = v4;
  v5 = v3;
  v104[256] = *MEMORY[0x1E69E9840];
  v18 = [CIContext _cachedContext:@"CILocalLight-stats" options:0];
  [(CIImage *)v5 extent];
  v106 = CGRectIntegral(v105);
  x = v106.origin.x;
  y = v106.origin.y;
  width = v106.size.width;
  height = v106.size.height;
  [(CIImage *)v5 extent];
  v11 = v10;
  [(CIImage *)v5 extent];
  v13 = v12;
  v14 = [MEMORY[0x1E695DF88] dataWithLength:4 * v11 * v12];
  v15 = [v14 bytes];
  v84 = v18;
  v85 = v5;
  [v18 render:v5 toBitmap:objc_msgSend(v14 rowBytes:"mutableBytes") bounds:4 * v11 format:264 colorSpace:{0, x, y, width, height}];
  v16 = 0;
  v17 = 0;
  LODWORD(v18) = 0;
  v19 = llroundf(v13 / 31.0);
  v94 = llroundf(v11 / 31.0);
  v90 = v13;
  v88 = v13 - 1;
  v20 = v15 + 2;
  v87 = 4 * v11 * v19;
  v89 = v19;
  do
  {
    v21 = 0;
    v92 = v17;
    v93 = v16;
    v22 = v17 * v19;
    if (v17 * v19 + v19 <= v88)
    {
      v23 = v17 * v19 + v19;
    }

    else
    {
      v23 = v90;
    }

    v18 = v18;
    v24 = v23 + v16;
    v91 = v20;
    do
    {
      v95 = v21;
      v96 = v18;
      v25 = v21 * v94;
      bzero(v104, 0x800uLL);
      v29 = v25 + v94;
      if (v25 + v94 > v11 - 1)
      {
        v29 = v11;
      }

      if (v29 > v25)
      {
        v30 = v20;
        do
        {
          v31 = v30;
          v32 = v24;
          if (v23 > v22)
          {
            do
            {
              LOBYTE(v26) = *(v31 - 2);
              LOBYTE(v27) = *(v31 - 1);
              LOBYTE(v28) = *v31;
              v28 = *&v28 / 255.0;
              v33 = (*&v26 / 255.0 + v27 / 255.0 + v28) / 3.0;
              v27 = 0x4070000000000000;
              v34 = v33 * 256.0;
              v35 = vcvtmd_s64_f64(v34);
              if (floor(v34) >= 255.0)
              {
                v35 = 255;
              }

              v26 = 1.0 / (v29 * v23) + *&v104[v35];
              *&v104[v35] = v26;
              v31 += 4 * v11;
              --v32;
            }

            while (v32);
          }

          ++v25;
          v30 += 4;
        }

        while (v25 != v29);
      }

      v18 = v96 + 1;
      v21 = v95 + 1;
      v20 += 4 * v94;
    }

    while (v95 != 30);
    v17 = v92 + 1;
    v19 = v89;
    v16 = v93 - v89;
    v20 = v91 + v87;
  }

  while (v92 != 30);
  v36 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:1922];
  v37 = ([v36 mutableBytes] + 1);
  v38 = v103;
  v39 = 961;
  do
  {
    v40 = *(v38 - 1) * 2.44125725 + -1.0619469;
    v41 = *v38;
    *(v37 - 1) = llround((v40 + 1.2) * 0.29412 * 255.0);
    *v37 = llroundf(v41 * 255.0);
    v37 += 2;
    v38 += 10;
    --v39;
  }

  while (v39);
  v42 = v36;
  v43 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:2];
  v44 = [v43 mutableBytes];
  v45 = v103;
  v46 = 0.0;
  v47 = 961;
  v48 = 0.0;
  do
  {
    v49 = *(v45 - 1) * 2.44125725 + -1.0619469;
    v50 = *v45;
    v48 = v48 + v49;
    v46 = v46 + v50;
    v45 += 10;
    --v47;
  }

  while (v47);
  *v44 = llround(((v48 / 961.0) + 1.2) * 0.29412 * 255.0);
  v44[1] = llroundf((v46 / 961.0) * 255.0);
  v51 = v43;
  v52 = v51;
  v53 = 0.0;
  v54 = 961;
  v55 = 7;
  v56 = 0.0;
  do
  {
    v57 = *&v102[v55 + 5];
    if (v57 > v56)
    {
      v56 = *&v102[v55 + 5];
    }

    v53 = v53 + v57;
    v55 += 10;
    --v54;
  }

  while (v54);
  if (v56 + v53 / -961.0 <= 0.5)
  {
    v58 = v56;
  }

  else
  {
    v58 = v56 * 0.45;
  }

  v59 = fabs(v58);
  if (!v86 || v59 < 1.0e-10)
  {
    v101[0] = @"lightMap";
    v101[1] = @"lightMapWidth";
    v102[0] = v42;
    v102[1] = &unk_1F1081EF0;
    v101[2] = @"lightMapHeight";
    v101[3] = @"lightMapAvg";
    v102[2] = &unk_1F1081EF0;
    v102[3] = v51;
    v101[4] = @"localAutoValue";
    v68 = v59 < 1.0e-10;
    v69 = 0.0;
    if (!v68)
    {
      v69 = v58;
    }

    v102[4] = [MEMORY[0x1E696AD98] numberWithDouble:v69];
    v65 = MEMORY[0x1E695DF20];
    v66 = v102;
    v67 = v101;
    goto LABEL_37;
  }

  v60 = _lightMapImageFromData(v42, &unk_1F1081EF0, &unk_1F1081EF0);
  v61 = _scaledLightMapImage(v60, v85);
  if (!v61 || (v62 = v61, [(CIImage *)v61 extent], v63 < 31.0) || ([(CIImage *)v62 extent], v64 < 31.0))
  {
    v99[0] = @"lightMap";
    v99[1] = @"lightMapWidth";
    v100[0] = v42;
    v100[1] = &unk_1F1081EF0;
    v99[2] = @"lightMapHeight";
    v99[3] = @"lightMapAvg";
    v100[2] = &unk_1F1081EF0;
    v100[3] = v52;
    v99[4] = @"localAutoValue";
    v100[4] = [MEMORY[0x1E696AD98] numberWithDouble:v58];
    v65 = MEMORY[0x1E695DF20];
    v66 = v100;
    v67 = v99;
LABEL_37:
    v70 = 5;
    return [v65 dictionaryWithObjects:v66 forKeys:v67 count:v70];
  }

  [(CIImage *)v62 extent];
  v73 = v72;
  [(CIImage *)v62 extent];
  v75 = v74;
  v76 = 2 * ((v73 & 1) + v73);
  v77 = [MEMORY[0x1E695DF88] dataWithLength:v76 * v74];
  v78 = [v77 mutableBytes];
  [(CIImage *)v62 extent];
  [v84 render:v62 toBitmap:v78 rowBytes:v76 bounds:262 format:0 colorSpace:?];
  if (v73)
  {
    v79 = 2 * v73;
    v80 = [v77 mutableBytes];
    if (v75 >= 2)
    {
      v81 = v75 - 1;
      v82 = (v80 + v79 + 2);
      v83 = (v80 + v79);
      do
      {
        memcpy(v83, v82, 2 * v73);
        v82 += v79 + 2;
        v83 += v79;
        --v81;
      }

      while (v81);
    }

    [v77 setLength:v79 * v75];
  }

  v97[0] = @"lightMap";
  v97[1] = @"lightMapWidth";
  v98[0] = v42;
  v98[1] = &unk_1F1081EF0;
  v97[2] = @"lightMapHeight";
  v97[3] = @"lightMapAvg";
  v98[2] = &unk_1F1081EF0;
  v98[3] = v52;
  v97[4] = @"localAutoValue";
  v98[4] = [MEMORY[0x1E696AD98] numberWithDouble:v58];
  v98[5] = v77;
  v97[5] = @"proxyLightMap";
  v97[6] = @"proxyLightMapWidth";
  v98[6] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v73];
  v97[7] = @"proxyLightMapHeight";
  v98[7] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v75];
  v65 = MEMORY[0x1E695DF20];
  v66 = v98;
  v67 = v97;
  v70 = 8;
  return [v65 dictionaryWithObjects:v66 forKeys:v67 count:v70];
}

- (id)autoPerspectiveFilterWithOptions:(id)a3
{
  v5 = CIPerspectiveAutoCalcDefaultImpl();
  v6 = [a3 valueForKey:@"version"];
  if (v6)
  {
    v7 = v6;
    if ([v6 isEqual:@"v1"])
    {
      v5 = objc_opt_class();
    }

    if ([v7 isEqual:@"v2"])
    {
      v5 = objc_opt_class();
    }
  }

  v8 = [a3 valueForKey:{@"focalLength", 0x403C000000000000, 0x3FD0C152382D7365, 0x3FC657184AE74487, 0x3FE0C152382D7365, vdupq_n_s64(0x3FE0C152382D7365uLL), 0}];
  if (v8)
  {
    [v8 doubleValue];
    v26[0] = v9;
  }

  v10 = [a3 valueForKey:{@"lineSearchRangeV", *&v26[0]}];
  if (v10)
  {
    [v10 doubleValue];
    v26[1] = v11;
  }

  v12 = [a3 valueForKey:@"lineSearchRangeH"];
  if (v12)
  {
    [v12 doubleValue];
    v26[2] = v13;
  }

  v14 = [a3 valueForKey:@"pitchLimit"];
  if (v14)
  {
    [v14 doubleValue];
    v26[3] = v15;
  }

  v16 = [a3 valueForKey:@"yawLimit"];
  if (v16)
  {
    [v16 doubleValue];
    v26[4] = v17;
  }

  v18 = [a3 valueForKey:@"rollLimit"];
  if (v18)
  {
    [v18 doubleValue];
    v26[5] = v19;
  }

  *&v26[6] = [a3 objectForKeyedSubscript:@"saliencyHeatMap"];
  v20 = [[v5 alloc] initWithContext:objc_msgSend(a3 image:"objectForKeyedSubscript:" config:{@"context", self, v26}];
  if ([v20 isMemberOfClass:objc_opt_class()])
  {
    if ([a3 valueForKey:@"minimumPitchCorrectionArea"])
    {
      [objc_msgSend(a3 objectForKeyedSubscript:{@"minimumPitchCorrectionArea", "doubleValue"}];
      [v20 setMinimumPitchCorrectionAreaCoverage:?];
    }

    if ([a3 valueForKey:@"minimumYawCorrectionArea"])
    {
      [objc_msgSend(a3 objectForKeyedSubscript:{@"minimumYawCorrectionArea", "doubleValue"}];
      [v20 setMinimumYawCorrectionAreaCoverage:?];
    }
  }

  if (v20 && ([v20 compute] & 1) != 0)
  {
    v21 = [CIFilter filterWithName:@"CIPerspectiveRotate"];
    [(CIFilter *)v21 setValue:self forKey:@"inputImage"];
    -[CIFilter setValue:forKey:](v21, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v26[0]], @"inputFocalLength");
    v22 = MEMORY[0x1E696AD98];
    [v20 pitch];
    -[CIFilter setValue:forKey:](v21, "setValue:forKey:", [v22 numberWithDouble:?], @"inputPitch");
    v23 = MEMORY[0x1E696AD98];
    [v20 yaw];
    -[CIFilter setValue:forKey:](v21, "setValue:forKey:", [v23 numberWithDouble:?], @"inputYaw");
    v24 = MEMORY[0x1E696AD98];
    [v20 roll];
    -[CIFilter setValue:forKey:](v21, "setValue:forKey:", [v24 numberWithDouble:?], @"inputRoll");
  }

  else
  {

    return 0;
  }

  return v21;
}

- (id)autoPerspectiveResultWithOptions:(id)a3
{
  v5 = CIPerspectiveAutoCalcDefaultImpl();
  v6 = [a3 valueForKey:@"version"];
  if (v6)
  {
    v7 = v6;
    if ([v6 isEqual:@"v1"])
    {
      v5 = objc_opt_class();
    }

    if ([v7 isEqual:@"v2"])
    {
      v5 = objc_opt_class();
    }
  }

  v8 = [a3 valueForKey:{@"focalLength", 0x403C000000000000, 0x3FD0C152382D7365, 0x3FC657184AE74487, 0x3FE0C152382D7365, vdupq_n_s64(0x3FE0C152382D7365uLL), 0}];
  if (v8)
  {
    [v8 doubleValue];
    v34[0] = v9;
  }

  v10 = [a3 valueForKey:{@"lineSearchRangeV", *&v34[0]}];
  if (v10)
  {
    [v10 doubleValue];
    v34[1] = v11;
  }

  v12 = [a3 valueForKey:@"lineSearchRangeH"];
  if (v12)
  {
    [v12 doubleValue];
    v34[2] = v13;
  }

  v14 = [a3 valueForKey:@"pitchLimit"];
  if (v14)
  {
    [v14 doubleValue];
    v34[3] = v15;
  }

  v16 = [a3 valueForKey:@"yawLimit"];
  if (v16)
  {
    [v16 doubleValue];
    v34[4] = v17;
  }

  v18 = [a3 valueForKey:@"rollLimit"];
  if (v18)
  {
    [v18 doubleValue];
    v34[5] = v19;
  }

  *&v34[6] = [a3 objectForKeyedSubscript:@"saliencyHeatMap"];
  v20 = [[v5 alloc] initWithContext:objc_msgSend(a3 image:"objectForKeyedSubscript:" config:{@"context", self, v34}];
  v21 = [objc_msgSend(a3 valueForKey:{@"generateDebugImage", "BOOLValue"}];
  [v20 setGenerateDebugImage:v21];
  if ([v20 isMemberOfClass:objc_opt_class()])
  {
    if ([a3 valueForKey:@"minimumPitchCorrectionArea"])
    {
      [objc_msgSend(a3 objectForKeyedSubscript:{@"minimumPitchCorrectionArea", "doubleValue"}];
      [v20 setMinimumPitchCorrectionAreaCoverage:?];
    }

    if ([a3 valueForKey:@"minimumYawCorrectionArea"])
    {
      [objc_msgSend(a3 objectForKeyedSubscript:{@"minimumYawCorrectionArea", "doubleValue"}];
      [v20 setMinimumYawCorrectionAreaCoverage:?];
    }
  }

  [v20 isMemberOfClass:objc_opt_class()];
  if (v20 && ([v20 compute] & 1) != 0)
  {
    v22 = [CIFilter filterWithName:@"CIPerspectiveRotate"];
    [(CIFilter *)v22 setValue:self forKey:@"inputImage"];
    -[CIFilter setValue:forKey:](v22, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v34[0]], @"inputFocalLength");
    v23 = MEMORY[0x1E696AD98];
    [v20 pitch];
    -[CIFilter setValue:forKey:](v22, "setValue:forKey:", [v23 numberWithDouble:?], @"inputPitch");
    v24 = MEMORY[0x1E696AD98];
    [v20 yaw];
    -[CIFilter setValue:forKey:](v22, "setValue:forKey:", [v24 numberWithDouble:?], @"inputYaw");
    v25 = MEMORY[0x1E696AD98];
    [v20 roll];
    -[CIFilter setValue:forKey:](v22, "setValue:forKey:", [v25 numberWithDouble:?], @"inputRoll");
    v26 = [MEMORY[0x1E695DF90] dictionary];
    [v26 setObject:v22 forKeyedSubscript:@"filter"];
    v27 = MEMORY[0x1E696AD98];
    [v20 confidence];
    [v26 setObject:objc_msgSend(v27 forKeyedSubscript:{"numberWithDouble:"), @"confidence"}];
    if (v21)
    {
      [v26 setObject:objc_msgSend(v20 forKeyedSubscript:{"debugImage"), @"debugImage"}];
    }

    if ([v20 isMemberOfClass:objc_opt_class()])
    {
      [v26 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(v20, "pitchFailureReason")), @"pitchFailureReason"}];
      [v26 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(v20, "yawFailureReason")), @"yawFailureReason"}];
      v28 = MEMORY[0x1E696AD98];
      [v20 pitchCorrectionAreaCoverage];
      [v26 setObject:objc_msgSend(v28 forKeyedSubscript:{"numberWithFloat:"), @"pitchCorrectionAreaCoverage"}];
      v29 = MEMORY[0x1E696AD98];
      [v20 yawCorrectionAreaCoverage];
      [v26 setObject:objc_msgSend(v29 forKeyedSubscript:{"numberWithFloat:"), @"yawCorrectionAreaCoverage"}];
    }

    if ([v20 isMemberOfClass:objc_opt_class()])
    {
      [v26 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(v20, "pitchFailureReason")), @"pitchFailureReason"}];
      [v26 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(v20, "yawFailureReason")), @"yawFailureReason"}];
      v30 = MEMORY[0x1E696AD98];
      [v20 unlimitedPitch];
      [v26 setObject:objc_msgSend(v30 forKeyedSubscript:{"numberWithDouble:"), @"unlimitedPitch"}];
      v31 = MEMORY[0x1E696AD98];
      [v20 unlimitedYaw];
      [v26 setObject:objc_msgSend(v31 forKeyedSubscript:{"numberWithDouble:"), @"unlimitedYaw"}];
      v32 = MEMORY[0x1E696AD98];
      [v20 unlimitedRoll];
      [v26 setObject:objc_msgSend(v32 forKeyedSubscript:{"numberWithDouble:"), @"unlimitedRoll"}];
    }

    return [v26 copy];
  }

  else
  {

    return 0;
  }
}

- (id)smartBlackAndWhiteStatistics
{
  if ([CIImage(PrivateSmartBlackAndWhite) smartBlackAndWhiteStatistics]::onceToken != -1)
  {
    [CIImage(PrivateSmartBlackAndWhite) smartBlackAndWhiteStatistics];
  }

  return MEMORY[0x1E695E0F8];
}

- (id)smartBlackAndWhiteAdjustmentsForValue:(double)a3 andStatistics:(id)a4
{
  v7[7] = *MEMORY[0x1E69E9840];
  if ([CIImage(PrivateSmartBlackAndWhite) smartBlackAndWhiteAdjustmentsForValue:andStatistics:]::onceToken != -1)
  {
    [CIImage(PrivateSmartBlackAndWhite) smartBlackAndWhiteAdjustmentsForValue:andStatistics:];
  }

  v6[0] = @"inputStrength";
  v6[1] = @"inputNeutralGamma";
  v7[0] = &unk_1F1084AB8;
  v7[1] = &unk_1F1084A98;
  v7[2] = &unk_1F1084A98;
  v6[2] = @"inputTone";
  v6[3] = @"inputHue";
  v7[3] = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v7[4] = &unk_1F1084A98;
  v6[4] = @"inputGrain";
  v6[5] = @"inputSeed";
  v6[6] = @"inputScaleFactor";
  v7[5] = &unk_1F1084A98;
  v7[6] = &unk_1F1084A98;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:7];
}

- (id)smartToneStatistics
{
  v2 = (MEMORY[0x1EEE9AC00])(self, a2);
  v38[1] = *MEMORY[0x1E69E9840];
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  if (![v2 properties])
  {
    NSLog(&cfstr_WarningSmartto.isa);
  }

  v3 = [v2 properties];
  v4 = [v3 valueForKey:*MEMORY[0x1E696D9B0]];
  v5 = [v4 valueForKey:*MEMORY[0x1E696D9F0]];
  v6 = 1.0;
  if (v5)
  {
    if ([v5 intValue])
    {
      v6 = 0.6;
    }

    else
    {
      v6 = 1.0;
    }
  }

  context = objc_autoreleasePoolPush();
  v37 = @"working_format";
  v38[0] = [MEMORY[0x1E696AD98] numberWithInt:2056];
  v7 = +[CIContext _cachedContext:options:](CIContext, "_cachedContext:options:", @"CISmartTone-histogram", [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1]);
  [v2 extent];
  v40 = CGRectIntegral(v39);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  v12 = v40.size.width;
  v13 = v40.size.height;
  v14 = 4 * v40.size.width;
  v15 = [MEMORY[0x1E695DF88] dataWithLength:v14 * v40.size.height];
  v16 = [v15 bytes];
  v35[0] = @"inputRVector";
  v36[0] = [CIVector vectorWithX:0.333333343 Y:0.333333343 Z:0.333333343 W:0.0];
  v35[1] = @"inputGVector";
  v36[1] = [CIVector vectorWithX:0.166666672 Y:0.166666672 Z:0.166666672 W:0.0];
  v35[2] = @"inputBVector";
  v36[2] = [CIVector vectorWithX:-1.0 Y:-1.0 Z:-1.0 W:0.0];
  v35[3] = @"inputAVector";
  v36[3] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
  v35[4] = @"inputBiasVector";
  v36[4] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  [v7 render:objc_msgSend(v2 toBitmap:"imageByApplyingFilter:withInputParameters:" rowBytes:@"CIColorMatrix" bounds:objc_msgSend(MEMORY[0x1E695DF20] format:"dictionaryWithObjects:forKeys:count:" colorSpace:{v36, v35, 5)), objc_msgSend(v15, "mutableBytes"), v14, 264, 0, x, y, width, height}];
  bzero(v34, 0x1000uLL);
  if (v13 >= 1)
  {
    v17 = 0;
    v18 = 1.0 / (v13 * v12);
    v19 = (v16 + 2);
    while (1)
    {
      v20 = v19;
      v21 = v12 & 0x7FFFFFFF;
      if (v12 >= 1)
      {
        break;
      }

LABEL_17:
      ++v17;
      v19 += v14;
      if (v17 == (v13 & 0x7FFFFFFF))
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      v22 = *v20;
      v23 = *(v20 - 1);
      v34[*(v20 - 2)] = v18 + v34[*(v20 - 2)];
      if (v23 < 0)
      {
        break;
      }

      if (v22)
      {
        goto LABEL_15;
      }

LABEL_16:
      v20 += 4;
      if (!--v21)
      {
        goto LABEL_17;
      }
    }

    v34[2 * v23] = v18 + v34[2 * v23];
    if (!v22)
    {
      goto LABEL_16;
    }

LABEL_15:
    v34[v22 + 255] = v18 + v34[v22 + 255];
    goto LABEL_16;
  }

LABEL_18:
  objc_autoreleasePoolPop(context);
  v32[0] = @"tonalRange";
  v33[0] = [MEMORY[0x1E696AD98] numberWithDouble:*&v26];
  v32[1] = @"highKey";
  v33[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v26 + 1)];
  v32[2] = @"p02";
  v33[2] = [MEMORY[0x1E696AD98] numberWithDouble:*&v27];
  v32[3] = @"p10";
  v33[3] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v27 + 1)];
  v32[4] = @"p25";
  v33[4] = [MEMORY[0x1E696AD98] numberWithDouble:*&v28];
  v32[5] = @"p50";
  v33[5] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v28 + 1)];
  v32[6] = @"p98";
  v33[6] = [MEMORY[0x1E696AD98] numberWithDouble:*&v29];
  v32[7] = @"autoValue";
  v33[7] = [MEMORY[0x1E696AD98] numberWithDouble:v6 * *(&v29 + 1)];
  v32[8] = @"blackPoint";
  v33[8] = [MEMORY[0x1E696AD98] numberWithDouble:*&v30];
  v32[9] = @"whitePoint";
  v33[9] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v30 + 1)];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:10];
}

- (id)smartColorStatistics
{
  v2 = (MEMORY[0x1EEE9AC00])(self, a2);
  v73 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v69 = @"working_format";
  v70 = [MEMORY[0x1E696AD98] numberWithInt:2056];
  v3 = +[CIContext _cachedContext:options:](CIContext, "_cachedContext:options:", @"CISmartColor-histogram", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1]);
  [v2 extent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v8;
  v13 = v10;
  v14 = 4 * v8;
  v15 = [MEMORY[0x1E695DF88] dataWithLength:v14 * v10];
  v61 = [v15 bytes];
  [v3 render:v2 toBitmap:objc_msgSend(v15 rowBytes:"mutableBytes") bounds:v14 format:264 colorSpace:{0, v5, v7, v9, v11}];
  bzero(v66, 0x400uLL);
  bzero(v65, 0x400uLL);
  bzero(v72, 0x400uLL);
  bzero(v71, 0x400uLL);
  bzero(v68, 0x400uLL);
  bzero(v67, 0x400uLL);
  if (v13 > 0)
  {
    v19 = 0;
    v20 = 1.0 / (v13 * v12);
    v21 = (v61 + 2);
    do
    {
      v22 = v21;
      v23 = v12 & 0x7FFFFFFF;
      if (v12 >= 1)
      {
        do
        {
          LOBYTE(v16) = *(v22 - 2);
          LOBYTE(v17) = *(v22 - 1);
          v24 = *&v16 / 255.0;
          v25 = *&v17 / 255.0;
          LOBYTE(v18) = *v22;
          v26 = *&v18 / 255.0;
          v27 = (v24 + v25 + v26) / 3.0;
          v16 = v24 * 255.0;
          v28 = llround(v16);
          v17 = v25 * 255.0;
          v29 = llround(v17);
          *&v17 = *&v71[4 * v29] + v20;
          v30 = llround(v26 * 255.0);
          *&v72[4 * v28] = *&v72[4 * v28] + v20;
          *&v16 = v68[v30] + v20;
          v18 = v27 * 255.0;
          *&v71[4 * v29] = LODWORD(v17);
          v31 = llround(v27 * 255.0);
          *&v17 = v67[v31];
          v68[v30] = *&v16;
          *&v16 = *&v17 + v20;
          v67[v31] = *&v17 + v20;
          v22 += 4;
          --v23;
        }

        while (v23);
      }

      ++v19;
      v21 += v14;
    }

    while (v19 != (v13 & 0x7FFFFFFF));
  }

  v32 = 0;
  __asm { FMOV            V1.2D, #1.0 }

  do
  {
    v38 = *&v67[v32];
    v39 = vabdq_f32(*&v71[v32 * 4], v38);
    v40 = vmaxnmq_f32(vaddq_f32(vaddq_f32(vabdq_f32(*&v72[v32 * 4], v38), v39), vabdq_f32(*&v68[v32], v38)), 0);
    *&v66[v32 * 4] = vcvt_hight_f32_f64(vcvt_f32_f64(vminnmq_f64(vcvtq_f64_f32(*v40.f32), _Q1)), vminnmq_f64(vcvt_hight_f64_f32(v40), _Q1));
    *&v65[v32 * 4] = v39;
    v32 += 4;
  }

  while (v32 != 256);
  objc_autoreleasePoolPop(context);
  v41 = 0;
  v42 = 71362;
  v43 = 71362;
  do
  {
    *&v42 = *&v42 + *&v66[v41];
    *&v43 = *&v43 + *&v65[v41];
    v41 += 4;
  }

  while (v41 != 1024);
  v44 = 0;
  v45 = 0.0;
  v46 = 0.0;
  do
  {
    v46 = v46 + *&v66[v44];
    *&v72[v44] = v46 / *&v42;
    v45 = v45 + *&v65[v44];
    *&v71[v44] = v45 / *&v43;
    v44 += 4;
  }

  while (v44 != 1024);
  v47 = 0;
  v48 = 0.0;
  v49 = 0.0;
  do
  {
    v50 = *&v72[4 * v47];
    if (v50 >= 0.75 && v48 == 0.0)
    {
      v48 = v47 / 255.0;
    }

    if (v50 >= 0.98 && v49 == 0.0)
    {
      v49 = v47 / 255.0;
    }

    ++v47;
  }

  while (v47 != 256);
  v51 = 0;
  v52 = 0.0;
  do
  {
    if (*&v71[4 * v51] >= 0.98 && v52 == 0.0)
    {
      v52 = v51 / 255.0;
    }

    ++v51;
  }

  while (v51 != 256);
  v53 = 1.0;
  v54 = fmax(fmin(1.0 - v49, 1.0), 0.0);
  if (v49 >= 0.99)
  {
    v55 = vabdd_f64(0.5, v48);
    if (v48 < 0.9)
    {
      v54 = v55;
    }
  }

  if (v52 >= v49)
  {
    v53 = 2.0;
  }

  v56 = fmin(v53 * v54, 0.2);
  v63[0] = @"satPercentile75";
  v64[0] = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v63[1] = @"satPercentile98";
  *&v57 = v49;
  v64[1] = [MEMORY[0x1E696AD98] numberWithFloat:v57];
  v63[2] = @"satPercentileG98";
  *&v58 = v52;
  v64[2] = [MEMORY[0x1E696AD98] numberWithFloat:v58];
  v63[3] = @"satAutoValue";
  *&v59 = v56;
  v64[3] = [MEMORY[0x1E696AD98] numberWithFloat:v59];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:4];
}

+ (id)smartToneAdjustmentsForValue:(double)a3 andStatistics:(id)a4
{
  v17[6] = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = fmax(fmin(*(&v11 + 1), 2.0), -2.0);
  v6 = fmax(fmin(*&v12, 2.0), -2.0);
  v7 = fmax(fmin(*(&v12 + 1), 2.0), -2.0);
  v8 = fmax(fmin(*&v13, 2.0), -2.0);
  v9 = fmax(fmin(*(&v13 + 1), 2.0), -2.0);
  v16[0] = @"inputExposure";
  v17[0] = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(fmin(*&v11, 2.0), -2.0)}];
  v16[1] = @"inputContrast";
  v17[1] = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v16[2] = @"inputBrightness";
  v17[2] = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v16[3] = @"inputShadows";
  v17[3] = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v16[4] = @"inputHighlights";
  v17[4] = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v16[5] = @"inputBlack";
  v17[5] = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];
}

+ (id)smartToneAdjustmentsForValue:(double)a3 localLightAutoValue:(double)a4 andStatistics:(id)a5
{
  v13[8] = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v12[0] = @"inputExposure";
  v13[0] = [MEMORY[0x1E696AD98] numberWithDouble:*&v7];
  v12[1] = @"inputContrast";
  v13[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v7 + 1)];
  v12[2] = @"inputBrightness";
  v13[2] = [MEMORY[0x1E696AD98] numberWithDouble:*&v8];
  v12[3] = @"inputShadows";
  v13[3] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v8 + 1)];
  v12[4] = @"inputHighlights";
  v13[4] = [MEMORY[0x1E696AD98] numberWithDouble:*&v9];
  v12[5] = @"inputBlack";
  v13[5] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v9 + 1)];
  v12[6] = @"inputLocalLight";
  v13[6] = [MEMORY[0x1E696AD98] numberWithDouble:*&v10];
  v12[7] = @"inputRawHighlights";
  v13[7] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v10 + 1)];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:8];
}

+ (id)smartColorAdjustmentsForValue:(double)a3 andStatistics:(id)a4
{
  v27[3] = *MEMORY[0x1E69E9840];
  [objc_msgSend(a4 objectForKey:{@"satPercentile75", "floatValue"}];
  v7 = v6;
  [objc_msgSend(a4 objectForKey:{@"satPercentile98", "floatValue"}];
  v9 = v8;
  [objc_msgSend(a4 objectForKey:{@"satPercentileG98", "floatValue"}];
  v11 = v10;
  [objc_msgSend(a4 objectForKey:{@"satAutoValue", "floatValue"}];
  v12 = a3;
  v13 = v9;
  if (v12 == 0.0 || (v14 = 0.0, v15 = 0.0, v13 >= 0.01))
  {
    v16 = v12;
    v17 = (1.0 - v9);
    if (v16 + v16 <= v17)
    {
      v19 = 0.0;
    }

    else
    {
      v18 = -(v17 - v12 * 2.0) * 0.75;
      v19 = v18;
    }

    v20 = v12 / 3.0;
    v21 = v16 / (fmaxf(v7, 0.5) * 3.0);
    if (v7 > 0.0)
    {
      v20 = v21;
    }

    if (v12 < 0.0)
    {
      v20 = v12;
    }

    v22 = fminf(fmaxf(v20, -1.0), 1.0);
    if (v11 > 0.75)
    {
      v24 = v13 > 0.9 && v7 > 0.5;
      if (v24 && v7 < 0.65)
      {
        v19 = -v19;
      }
    }

    v14 = v22;
    v15 = fminf(fmaxf(v19 * 0.5, -1.0), 1.0);
  }

  v26[0] = @"inputVibrancy";
  v27[0] = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  v26[1] = @"inputContrast";
  v27[1] = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v26[2] = @"inputCast";
  v27[2] = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
}

- (id)metalImageByApplyingFilter:(id)a3 withInputParameters:(id)a4
{
  result = [CIFilter metalFilterWithName:a3 withInputParameters:a4];
  if (result)
  {
    v6 = result;
    [result setValue:self forKey:@"inputImage"];

    return [v6 outputImage];
  }

  return result;
}

- (id)metalImageByApplyingFilter:(id)a3
{
  result = [CIFilter metalFilterWithName:a3];
  if (result)
  {
    v5 = result;
    [result setValue:self forKey:@"inputImage"];

    return [v5 outputImage];
  }

  return result;
}

- (void)_initWithIOSurface:options:owner:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_initWithIOSurface:options:owner:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_initNaiveWithCGImage:options:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithBitmapData:bytesPerRow:size:format:options:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithBitmapData:bytesPerRow:size:format:options:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithTexture:size:options:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_initWithCVImageBuffer:options:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_initWithCVImageBuffer:options:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)imageBySettingContentHeadroom:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)imageBySettingContentAverageLightLevel:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setValue:forKeyPath:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end