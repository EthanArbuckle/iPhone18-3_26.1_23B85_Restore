@interface CIContext
+ (BOOL)loadArchive:(id)archive;
+ (BOOL)loadArchiveWithName:(id)name fromURL:(id)l;
+ (BOOL)loadArchiveWithURL:(id)l;
+ (CGColorSpace)defaultGrayColorSpace;
+ (CGColorSpace)defaultRGBColorSpace;
+ (CGColorSpace)defaultWorkingColorSpace;
+ (CIContext)contextWithCGContext:(CGContextRef)cgctx options:(NSDictionary *)options;
+ (CIContext)contextWithEAGLContext:(EAGLContext *)eaglContext;
+ (CIContext)contextWithEAGLContext:(EAGLContext *)eaglContext options:(NSDictionary *)options;
+ (CIContext)contextWithMTLCommandQueue:(id)commandQueue options:(NSDictionary *)options;
+ (CIContext)contextWithMTLDevice:(id)device;
+ (CIContext)contextWithMTLDevice:(id)device options:(NSDictionary *)options;
+ (CIContext)contextWithOptions:(NSDictionary *)options;
+ (id)_cachedContext:(id)context options:(id)options;
+ (id)_namedCache;
+ (id)_singletonContext;
+ (int)_crashed_because_nonaddressable_memory_was_passed_to_render:(id)_crashed_because_nonaddressable_memory_was_passed_to_render toBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format colorSpace:(CGColorSpace *)space;
+ (void)clearArchives;
+ (void)internalContextWithEAGLContext:(id)context options:(id)options;
+ (void)internalContextWithMTLCommandQueue:(id)queue options:(id)options;
+ (void)internalContextWithMTLDevice:(id)device options:(id)options;
+ (void)internalSWContextWithOptions:(id)options;
+ (void)purgeArchive:(id)archive;
- (BOOL)_isCGBackedContext;
- (BOOL)_isGLBackedContext;
- (BOOL)isMetalBased;
- (BOOL)isOpenCLBased;
- (BOOL)isOpenGLBased;
- (BOOL)loadArchive:(id)archive;
- (BOOL)loadArchiveWithName:(id)name fromURL:(id)l;
- (BOOL)loadArchiveWithURL:(id)l;
- (BOOL)measureRequirementsOf:(id)of query:(int)query :(id *)a5 results:(CGRect *)results;
- (BOOL)prepareRender:(CIImage *)image fromRect:(CGRect)fromRect toDestination:(CIRenderDestination *)destination atPoint:(CGPoint)atPoint error:(NSError *)error;
- (BOOL)writeHEIF10RepresentationOfImage:(CIImage *)image toURL:(NSURL *)url colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (BOOL)writeHEIFRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (BOOL)writeJPEGRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (BOOL)writeOpenEXRRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)errorPtr;
- (BOOL)writePNGRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (BOOL)writeTIFFRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (CGAffineTransform)CTM;
- (CGColorSpace)_outputColorSpace;
- (CGColorSpaceRef)workingColorSpace;
- (CGImage)_createCGImage:(id)image fromRect:(CGRect)rect format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space deferred:(Trilean)deferred renderCallback:(id)callback;
- (CGImage)calculateHDRStatsForCGImage:(CGImage *)image;
- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format;
- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format colorSpace:(CGColorSpace *)space deferred:(BOOL)deferred calculateHDRStats:(BOOL)stats;
- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space deferred:(BOOL)deferred renderCallback:(id)callback;
- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect;
- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace;
- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace deferred:(BOOL)deferred;
- (CGLayerRef)createCGLayerWithSize:(CGSize)size info:(CFDictionaryRef)info;
- (CGRect)bounds;
- (CGSize)inputImageMaximumSize;
- (CGSize)outputImageMaximumSize;
- (CIContext)initWithCGContext:(CGContext *)context options:(id)options;
- (CIContext)initWithEAGLContext:(id)context options:(id)options;
- (CIContext)initWithMTLCommandQueue:(id)queue options:(id)options;
- (CIContext)initWithMTLDevice:(id)device options:(id)options;
- (CIContext)initWithOptions:(NSDictionary *)options;
- (CIFilter)depthBlurEffectFilterForImage:(CIImage *)image disparityImage:(CIImage *)disparityImage portraitEffectsMatte:(CIImage *)portraitEffectsMatte hairSemanticSegmentation:(CIImage *)hairSemanticSegmentation glassesMatte:(CIImage *)glassesMatte gainMap:(CIImage *)gainMap orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (CIFilter)depthBlurEffectFilterForImageData:(NSData *)data options:(NSDictionary *)options;
- (CIFilter)depthBlurEffectFilterForImageURL:(NSURL *)url options:(NSDictionary *)options;
- (CIFormat)workingFormat;
- (CIRenderTask)startTaskToClear:(CIRenderDestination *)destination error:(NSError *)error;
- (CIRenderTask)startTaskToRender:(CIImage *)image fromRect:(CGRect)fromRect toDestination:(CIRenderDestination *)destination atPoint:(CGPoint)atPoint error:(NSError *)error;
- (NSData)HEIF10RepresentationOfImage:(CIImage *)image colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (NSData)OpenEXRRepresentationOfImage:(CIImage *)image options:(NSDictionary *)options error:(NSError *)errorPtr;
- (__IOSurface)createIOSurface:(id)surface;
- (__IOSurface)createIOSurface:(id)surface fromRect:(CGRect)rect;
- (id)_CMPhotoRepresentationOfImage:(id)image depth:(int)depth allowAlpha:(BOOL)alpha containerFormat:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error;
- (id)_HEIFRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error;
- (id)_JPEGRepresentationOfImage:(id)image colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error;
- (id)_PNGRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error;
- (id)_TIFFRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error;
- (id)_createClone;
- (id)_dataRepresentationOfImage:(id)image UTIType:(id)type format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space options:(id)options addAuxData:(BOOL)data keysToMerge:(id)self0 error:(id *)self1;
- (id)_initWithInternalRepresentation:(void *)representation;
- (id)_startTaskToRender:(id)render toDestination:(id)destination forPrepareRender:(BOOL)prepareRender forClear:(BOOL)clear error:(id *)error;
- (id)addAuxOptionsForSDR:(id)r HDR:(id)dR colorSpace:(CGColorSpace *)space rgbGainmap:(BOOL)gainmap;
- (id)calculateHDRStatsForImage:(id)image;
- (id)clientCommandQueue;
- (id)createColorCubeDataForFilters:(id)filters dimension:(int)dimension colorSpace:(CGColorSpace *)space;
- (id)description;
- (id)device;
- (id)flatten:(id)flatten fromRect:(CGRect)rect format:(int)format colorSpace:(CGColorSpace *)space;
- (id)gainMapImageForSDR:(id)r HDR:(id)dR colorSpace:(CGColorSpace *)space rgbGainmap:(BOOL)gainmap;
- (id)internalCommandQueue;
- (id)objectForKey:(id)key;
- (unint64_t)identifier;
- (unint64_t)maximumInputImageSize;
- (unint64_t)maximumOutputImageSize;
- (void)_addDepthMap:(id)map session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options;
- (void)_addGainMap:(id)map session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle containerFormat:(int)format options:(id)options orientation:(id)orientation;
- (void)_addPortraitMatte:(id)matte session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options;
- (void)_addSemanticImages:(id)images session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options;
- (void)_gpuContextCheck;
- (void)_insertEventMarker:(const char *)marker;
- (void)_internalContext;
- (void)_performFaceDetection:(id)detection image:(id)image orientation:(int)orientation filter:(id)filter;
- (void)abort;
- (void)calculateHDRStatsForCVPixelBuffer:(__CVBuffer *)buffer;
- (void)calculateHDRStatsForIOSurface:(__IOSurface *)surface;
- (void)clearCaches;
- (void)dealloc;
- (void)drawImage:(CIImage *)image atPoint:(CGPoint)atPoint fromRect:(CGRect)fromRect;
- (void)drawImage:(CIImage *)image inRect:(CGRect)inRect fromRect:(CGRect)fromRect;
- (void)lock;
- (void)render:(CIImage *)image toBitmap:(void *)data rowBytes:(ptrdiff_t)rowBytes bounds:(CGRect)bounds format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace;
- (void)render:(CIImage *)image toCVPixelBuffer:(CVPixelBufferRef)buffer;
- (void)render:(CIImage *)image toCVPixelBuffer:(CVPixelBufferRef)buffer bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace;
- (void)render:(CIImage *)image toIOSurface:(IOSurfaceRef)surface bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace;
- (void)render:(CIImage *)image toMTLTexture:(id)texture commandBuffer:(id)commandBuffer bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace;
- (void)render:(id)render;
- (void)render:(id)render toTexture:(unsigned int)texture target:(unsigned int)target bounds:(CGRect)bounds colorSpace:(CGColorSpace *)space;
- (void)setBounds:(CGRect)bounds;
- (void)setCTM:(CGAffineTransform *)m;
- (void)setObject:(id)object forKey:(id)key;
- (void)unlock;
@end

@implementation CIContext

- (void)calculateHDRStatsForIOSurface:(__IOSurface *)surface
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"kCIImageApplyCleanAperture";
  v8[0] = MEMORY[0x1E695E118];
  v4 = -[CIContext calculateHDRStatsForImage:](self, "calculateHDRStatsForImage:", +[CIImage imageWithIOSurface:options:](CIImage, "imageWithIOSurface:options:", surface, [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1]));
  [v4 contentHeadroom];
  [v4 contentAverageLightLevel];
  IOSurfaceSetBulkAttachments2();
  v5 = *MEMORY[0x1E696CEF0];
  v6 = MEMORY[0x1E696AD98];
  [v4 contentHeadroom];
  IOSurfaceSetValue(surface, v5, [v6 numberWithFloat:?]);
}

- (void)calculateHDRStatsForCVPixelBuffer:(__CVBuffer *)buffer
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"kCIImageApplyCleanAperture";
  v12[0] = MEMORY[0x1E695E118];
  v4 = -[CIContext calculateHDRStatsForImage:](self, "calculateHDRStatsForImage:", +[CIImage imageWithCVPixelBuffer:options:](CIImage, "imageWithCVPixelBuffer:options:", buffer, [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1]));
  [v4 contentHeadroom];
  v6 = fminf((v5 * 203.0) + 0.5, 65535.0);
  [v4 contentAverageLightLevel];
  *bytes = __rev16(v6);
  v10 = __rev16(fminf((v7 * 203.0) + 0.5, 65535.0));
  v8 = CFDataCreate(0, bytes, 4);
  CVBufferSetAttachment(buffer, *MEMORY[0x1E6965DE0], v8, kCVAttachmentMode_ShouldPropagate);
  CFRelease(v8);
}

- (CGImage)calculateHDRStatsForCGImage:(CGImage *)image
{
  [-[CIContext calculateHDRStatsForImage:](self calculateHDRStatsForImage:{+[CIImage imageWithCGImage:](CIImage, "imageWithCGImage:")), "contentHeadroom"}];

  return MEMORY[0x1EEDBA020](image);
}

- (id)calculateHDRStatsForImage:(id)image
{
  v42 = *MEMORY[0x1E69E9840];
  [image extent];
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  if (CGRectIsEmpty(v43) || (v44.origin.x = x, v44.origin.y = y, v44.size.width = width, v44.size.height = height, CGRectIsInfinite(v44)))
  {
    v9 = ci_logger_api();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CalculateHDRStats) calculateHDRStatsForImage:v9];
    }

    return 0;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F100]);
    v13 = [image imageByColorMatchingWorkingSpaceToColorSpace:v12];
    CGColorSpaceRelease(v12);
    v14 = [v13 imageByApplyingFilter:@"CIMaximumComponent"];
    memset(&v41, 0, sizeof(v41));
    CGAffineTransformMakeScale(&v41, 0.125, 0.125);
    v38 = v41;
    [objc_msgSend(v14 imageByApplyingTransform:{&v38), "extent"}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    imageByClampingToExtent = [v14 imageByClampingToExtent];
    v38 = v41;
    v24 = [objc_msgSend(imageByClampingToExtent imageByApplyingTransform:&v38 highQualityDownsample:{1), "imageByCroppingToRect:", v16, v18, v20, v22}];
    v39 = @"inputExtent";
    [v24 extent];
    v40 = [CIVector vectorWithCGRect:?];
    v25 = [v24 imageByApplyingFilter:@"CIAreaAverageMaximumRed" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v40, &v39, 1)}];
    v41.a = 0.0;
    v41.b = 0.0;
    v26 = [[CIRenderDestination alloc] initWithBitmapData:&v41 width:1 height:1 bytesPerRow:16 format:2056];
    v27 = v26;
    [(CIRenderDestination *)v26 setColorSpace:0];
    [(CIRenderTask *)[(CIContext *)self startTaskToRender:v25 fromRect:v26 toDestination:0 atPoint:0.0 error:0.0 waitUntilCompletedAndReturnError:1.0, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)], "waitUntilCompletedAndReturnError:", 0];
    _H0 = LOWORD(v41.a);
    __asm { FCVT            D0, H0 }

    *&v16 = fmax(_D0, 1.0);
    LOWORD(_D0) = WORD1(v41.a);
    __asm { FCVT            D0, H0 }

    *&v18 = fmax(_D0, 0.0);
    objc_autoreleasePoolPop(v11);
    LODWORD(v35) = LODWORD(v16);
    v36 = [image imageBySettingContentHeadroom:v35];
    LODWORD(v37) = LODWORD(v18);
    return [v36 imageBySettingContentAverageLightLevel:v37];
  }
}

- (void)dealloc
{
  if (self->_priv)
  {
    _internalContext = [(CIContext *)self _internalContext];
    if (_internalContext)
    {
      CI::Object::unref(_internalContext);
    }

    pthread_mutex_destroy((self->_priv + 8));
    free(self->_priv);
    self->_priv = 0;
  }

  v4.receiver = self;
  v4.super_class = CIContext;
  [(CIContext *)&v4 dealloc];
}

- (id)device
{
  _internalContext = [(CIContext *)self _internalContext];
  if ((*(*_internalContext + 2))(_internalContext) != 85)
  {
    return 0;
  }

  return CI::MetalContext::device(_internalContext);
}

- (id)internalCommandQueue
{
  _internalContext = [(CIContext *)self _internalContext];
  if ((*(*_internalContext + 16))(_internalContext) != 85)
  {
    return 0;
  }

  return CI::MetalContext::queue(_internalContext);
}

- (id)clientCommandQueue
{
  if (*(self->_priv + 72) == 1)
  {
    return [(CIContext *)self internalCommandQueue];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)identifier
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    return (*(*result + 280))(result);
  }

  return result;
}

- (void)lock
{
  v9 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((self->_priv + 8));
  _internalContext = [(CIContext *)self _internalContext];
  v4 = _internalContext[19] + 1;
  if (CI_KDEBUG())
  {
    (*(*_internalContext + 280))(_internalContext);
    kdebug_trace();
  }

  v5 = ci_signpost_log_render();
  v6 = (*(*_internalContext + 280))(_internalContext) << 32;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = 134217984;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "render_lock", "frame %lu", &v7, 0xCu);
  }

  if (CI_PRINT_TIME() >= 2)
  {
    _internalContext[41] = 0;
    *(_internalContext + 42) = CFAbsoluteTimeGetCurrent();
  }

  if (CI_ENABLE_METAL_CAPTURE())
  {
    [objc_msgSend(objc_msgSend(MEMORY[0x1E6974000] "sharedCaptureManager")];
  }
}

- (void)unlock
{
  v9 = *MEMORY[0x1E69E9840];
  _internalContext = [(CIContext *)self _internalContext];
  if (CI_KDEBUG())
  {
    (*(*_internalContext + 280))(_internalContext);
    kdebug_trace();
  }

  v4 = ci_signpost_log_render();
  v5 = (*(*_internalContext + 280))(_internalContext) << 32;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = _internalContext[19];
    v7 = 134217984;
    v8 = v6;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v5, "render_lock", "frame %lu", &v7, 0xCu);
  }

  CI::Context::endFrame(_internalContext);
  if (CI_ENABLE_METAL_CAPTURE())
  {
    [objc_msgSend(objc_msgSend(MEMORY[0x1E6974000] "sharedCaptureManager")];
  }

  pthread_mutex_unlock((self->_priv + 8));
}

- (BOOL)loadArchiveWithURL:(id)l
{
  _internalContext = [(CIContext *)self _internalContext];
  if (((*_internalContext)[2])(_internalContext) == 85)
  {
    v5 = [CIContext loadArchiveWithURL:l];
    if (v5)
    {
      CI::MetalContext::add_archive(_internalContext, [objc_msgSend(objc_msgSend(l "absoluteString")]);
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)loadArchiveWithName:(id)name fromURL:(id)l
{
  if (l)
  {
    _internalContext = [(CIContext *)self _internalContext];
    if (((*_internalContext)[2])(_internalContext) == 85)
    {
      v7 = [CIContext loadArchiveWithName:name fromURL:l];
      if (v7)
      {
        CI::MetalContext::add_archive(_internalContext, [name stringByAppendingString:@"_bin"]);
        LOBYTE(v7) = 1;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)loadArchive:(id)archive
{
  _internalContext = [(CIContext *)self _internalContext];
  if (((*_internalContext)[2])(_internalContext) == 85)
  {
    v5 = [CIContext loadArchive:archive];
    if (v5)
    {
      CI::MetalContext::add_archive(_internalContext, [archive stringByAppendingString:@"_bin"]);
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)loadArchiveWithURL:(id)l
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = CI_ARCHIVE_USAGE_MODE();
  if (v4)
  {
    if ((CI_DISABLE_LOADING_ARCHIVES() & 1) == 0)
    {
      v5 = [objc_msgSend(objc_msgSend(l "absoluteString")];
      v6 = CI_DISABLE_LOADING_ARCHIVES_BY_NAME();
      if (!v6 || (v6 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithCString:CI_DISABLE_LOADING_ARCHIVES_BY_NAME() encoding:{1), "containsString:", v5}], (v6 & 1) == 0))
      {
        v7 = CI::MetalContext::binaryArchiveCache(v6);
        objc_sync_enter(v7);
        v8 = [v7 objectForKey:v5];
        if (!v8)
        {
          v9 = CILoadBinaryArchive(l);
          if (!v9)
          {
            v11 = ci_logger_api();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              +[CIContext loadArchiveWithURL:];
            }

            [v7 setObject:MEMORY[0x1E695E0F8] forKey:v5];
            objc_sync_exit(v7);
            goto LABEL_14;
          }

          v17 = @"bin";
          v18[0] = v9;
          v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
          [v7 setObject:v8 forKey:v5];
          v10 = ci_logger_api();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v13 = 136446466;
            v14 = "+[CIContext loadArchiveWithURL:]";
            v15 = 2114;
            lCopy = l;
            _os_log_impl(&dword_19CC36000, v10, OS_LOG_TYPE_INFO, "%{public}s Loaded CoreImage stitched libraries binary archive from url %{public}@", &v13, 0x16u);
          }
        }

        objc_sync_exit(v7);
        if (v8)
        {
          LOBYTE(v4) = [v8 count] != 0;
          return v4;
        }
      }
    }

LABEL_14:
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)loadArchiveWithName:(id)name fromURL:(id)l
{
  if (!l || CI_DISABLE_LOADING_ARCHIVES_BY_NAME() && ([objc_msgSend(MEMORY[0x1E696AEC0] stringWithCString:CI_DISABLE_LOADING_ARCHIVES_BY_NAME() encoding:{1), "containsString:", name}] & 1) != 0)
  {
    return 0;
  }

  v7 = [l URLByAppendingPathComponent:{objc_msgSend(name, "stringByAppendingString:", @"_bin.metallib"}];

  return [CIContext loadArchiveWithURL:v7];
}

+ (BOOL)loadArchive:(id)archive
{
  v4 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "bundleURL"}];
  if (([archive isEqualToString:@"portrait_filters_archive"] & 1) != 0 || objc_msgSend(archive, "isEqualToString:", @"portrait_filters_fullsize_archive"))
  {
    [CIFilter filterWithName:@"CIPortraitEffectLightV2"];
    v4 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "bundleURL"}];
  }

  return [CIContext loadArchiveWithName:archive fromURL:v4];
}

+ (void)clearArchives
{
  v2 = CI::MetalContext::binaryArchiveCache(self);
  objc_sync_enter(v2);
  [v2 removeAllObjects];

  objc_sync_exit(v2);
}

+ (void)purgeArchive:(id)archive
{
  v4 = CI::MetalContext::binaryArchiveCache(self);
  objc_sync_enter(v4);
  [v4 removeObjectForKey:archive];

  objc_sync_exit(v4);
}

+ (id)_singletonContext
{
  v4[2] = *MEMORY[0x1E69E9840];
  {
    v3[0] = @"kCIContextName";
    v3[1] = @"kCIContextCacheIntermediates";
    v4[0] = @"CISingletonContext";
    v4[1] = MEMORY[0x1E695E110];
    +[CIContext _singletonContext]::context = +[CIContext contextWithOptions:](CIContext, "contextWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2]);
  }

  return +[CIContext _singletonContext]::context;
}

- (void)setObject:(id)object forKey:(id)key
{
  _internalContext = [(CIContext *)self _internalContext];
  if (!_internalContext)
  {
    return;
  }

  v7 = _internalContext;
  (*(*_internalContext + 336))(_internalContext);
  if ([key isEqual:@"output_color_space"])
  {
    if (CI::ColorSpace_is_RGB_or_Gray_and_supports_output(object, v8))
    {

      CI::Context::updateColorSpace(v7, object);
      return;
    }

    v10 = ci_logger_api();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_26:
    [CIContext setObject:forKey:];
    return;
  }

  if ([key isEqual:@"working_color_space"])
  {
    if (!CI::ColorSpace_is_RGB_or_Gray_and_supports_output(object, v9))
    {
      v11 = ci_logger_api();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_26;
    }

    CI::Context::updateWorkingSpace(v7, object);
    return;
  }

  if ([key isEqual:@"kCIContextName"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = ci_logger_api();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_26;
    }

    CI::Context::set_client_name(v7, key);
    return;
  }

  if ([key isEqual:@"quality"])
  {
    [object floatValue];
    v12 = *(*v7 + 200);

    v12(v7);
    return;
  }

  if ([key isEqual:@"high_quality_downsample"])
  {
    if (object == MEMORY[0x1E695E118])
    {
      v14 = *(*v7 + 216);
      v15 = v7;
      v16 = 1;
    }

    else
    {
      if (object != MEMORY[0x1E695E110])
      {
        return;
      }

      v14 = *(*v7 + 216);
      v15 = v7;
      v16 = 0;
    }

    goto LABEL_62;
  }

  if ([key isEqual:@"kCIContextAllowClampToAlpha"])
  {
    if (object == MEMORY[0x1E695E118])
    {
      *(v7 + 41) = 1;
    }

    else if (object == MEMORY[0x1E695E110])
    {
      *(v7 + 41) = 0;
    }

    return;
  }

  if (![key isEqual:@"kCIContextHLGOpticalScale"])
  {
    if (![key isEqual:@"kCIContextLossyCompressedIntermediates"])
    {
      v20 = ci_logger_api();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CIContext setObject:forKey:];
      }

      return;
    }

    if (object == MEMORY[0x1E695E118])
    {
      v14 = *(*v7 + 168);
      v15 = v7;
      v16 = 1;
    }

    else
    {
      if (object != MEMORY[0x1E695E110])
      {
        v19 = ci_logger_api();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_26;
      }

      v14 = *(*v7 + 168);
      v15 = v7;
      v16 = 0;
    }

LABEL_62:
    v14(v15, v16);
    return;
  }

  if (key)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = ci_logger_api();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_26;
    }

    [key floatValue];
    v18 = *(*v7 + 152);
  }

  else
  {
    v18 = *(*v7 + 152);
    v17.n128_u64[0] = 0;
  }

  v18(v7, v17);
}

- (id)objectForKey:(id)key
{
  result = [(CIContext *)self _internalContext];
  if (!result)
  {
    return result;
  }

  v5 = result;
  if ([key isEqual:@"output_color_space"])
  {
    v6 = *(v5 + 2);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_10:
    v8 = MEMORY[0x1E695DFB0];

    return [v8 null];
  }

  if ([key isEqual:@"working_color_space"])
  {
    v6 = *(v5 + 3);
    if (v6)
    {
LABEL_4:
      v7 = dyld_program_sdk_at_least();
      result = CGColorSpaceRetain(v6);
      if (v7)
      {

        return result;
      }

      return result;
    }

    goto LABEL_10;
  }

  if ([key isEqual:@"quality"])
  {
    if ((*(*v5 + 208))(v5) == 0.0)
    {
      return &unk_1F1083138;
    }

    v9 = MEMORY[0x1E696AD98];
    goto LABEL_28;
  }

  if ([key isEqual:@"high_quality_downsample"])
  {
    if ((*(*v5 + 224))(v5))
    {
      return MEMORY[0x1E695E118];
    }

    else
    {
      return MEMORY[0x1E695E110];
    }
  }

  if ([key isEqual:@"kCIContextAllowClampToAlpha"])
  {
    if (*(v5 + 41))
    {
      return MEMORY[0x1E695E118];
    }

    else
    {
      return MEMORY[0x1E695E110];
    }
  }

  if ([key isEqual:@"kCIContextHLGOpticalScale"])
  {
    v10 = MEMORY[0x1E696AD98];
    (*(*v5 + 160))(v5);
    v9 = v10;
LABEL_28:

    return [v9 numberWithFloat:?];
  }

  if ([key isEqual:@"kCIContextLossyCompressedIntermediates"])
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = (*(*v5 + 176))(v5);

    return [v11 numberWithBool:v12];
  }

  else
  {
    v13 = ci_logger_api();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CIContext objectForKey:];
    }

    return 0;
  }
}

- (void)abort
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v3 = *(*_internalContext + 248);

    v3();
  }
}

+ (CIContext)contextWithOptions:(NSDictionary *)options
{
  v3 = [[CIContext alloc] initWithOptions:options];

  return v3;
}

- (CIContext)initWithOptions:(NSDictionary *)options
{
  v5 = objc_autoreleasePoolPush();
  v26.receiver = self;
  v26.super_class = CIContext;
  v6 = [(CIContext *)&v26 init];
  if (!v6)
  {
    goto LABEL_48;
  }

  [-[NSDictionary valueForKey:](options valueForKey:{@"CoreUI", "BOOLValue"}];
  v7 = [-[NSDictionary objectForKey:](options objectForKey:{@"software_renderer", "intValue"}];
  if ((isWidget() & 1) == 0 && v7 != 2)
  {
    if (can_use_metal() & 1) != 0 || +[CIContext isOpenCLAvailable]|| !CIGLIsUsable() || (can_use_metal())
    {
      if (options)
      {
        v8 = [(NSDictionary *)options objectForKey:@"software_renderer"];
      }

      else
      {
        v8 = 0;
      }

      v11 = MEMORY[0x1E695E118];
      v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
      [v12 removeObjectForKey:@"software_renderer"];
      if (v8 == v11 || v8 == &unk_1F10819B0)
      {
        [v12 setValue:MEMORY[0x1E695E118] forKey:@"priority_request_low"];
      }

      v13 = [(NSDictionary *)options objectForKeyedSubscript:@"kCIContextUseMetalRenderer"];
      if (v13)
      {
        v14 = [v13 BOOLValue] ^ 1;
        v15 = v14;
      }

      else
      {
        v15 = 0;
        LOBYTE(v14) = 1;
      }

      v16 = CI_ENABLE_METAL_GPU();
      v17 = 0;
      if ((v15 & 1) == 0 && v16)
      {
        if (options)
        {
          [(NSDictionary *)options objectForKey:@"kCIContextAllowLowPower"];
        }

        v18 = CIMetalCopyDefaultDevice();
        if (v18)
        {
          v20 = v18;
          if (CIMetalDeviceIsSupported(v18, v19))
          {
            v17 = [CIContext internalContextWithMTLDevice:v20 options:v12];
          }

          else
          {
            v17 = 0;
          }

          CFRelease(v20);
        }

        else
        {
          v17 = 0;
        }
      }

      if (v17)
      {
        v21 = 1;
      }

      else
      {
        v21 = v14;
      }

      if ((v21 & 1) != 0 && (v17 || (v17 = [CIContext internalGLContextWithOptions:v12]) != 0))
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __29__CIContext_initWithOptions___block_invoke;
        v25[3] = &__block_descriptor_40_e8_v12__0B8l;
        v25[4] = v17;
        OptionIsTrueOrFalse(options, @"kCIContextEnableBlending", v25);
        v6 = [(CIContext *)v6 _initWithInternalRepresentation:v17];
        if (CI_ENABLE_METAL_GPU())
        {
          v22 = v15;
        }

        else
        {
          v22 = 1;
        }

        if ((v22 & 1) == 0 && [-[NSDictionary valueForKey:](options valueForKey:{@"CoreUI", "BOOLValue"}])
        {
          [(CIContext *)v6 loadArchive:@"coreui_archive"];
        }

        v10 = v17;
        goto LABEL_42;
      }
    }

    else
    {
      v23 = ci_logger_api();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [CIContext initWithOptions:];
      }
    }

    v6 = 0;
    goto LABEL_48;
  }

  v9 = [CIContext internalSWContextWithOptions:options];
  v6 = [(CIContext *)v6 _initWithInternalRepresentation:v9];
  if (!v9)
  {
    goto LABEL_43;
  }

  v10 = v9;
LABEL_42:
  CI::Object::unref(v10);
LABEL_43:
  if (v6)
  {
    CoreAnalytics(&cfstr_Initwithoption.isa, v6);
  }

LABEL_48:
  objc_autoreleasePoolPop(v5);
  return v6;
}

+ (CIContext)contextWithCGContext:(CGContextRef)cgctx options:(NSDictionary *)options
{
  v4 = [[CIContext alloc] initWithCGContext:cgctx options:options];

  return v4;
}

- (CIContext)initWithCGContext:(CGContext *)context options:(id)options
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  if (!context)
  {
    v10 = [(CIContext *)self initWithOptions:options];
    goto LABEL_20;
  }

  Type = CGContextGetType();
  switch(Type)
  {
    case 10:
      ColorSpace = CGMetalContextGetColorSpace();
      break;
    case 8:
      ColorSpace = CGIOSurfaceContextGetColorSpace();
      break;
    case 4:
      ColorSpace = CGBitmapContextGetColorSpace(context);
      break;
    default:
      goto LABEL_10;
  }

  Property = ColorSpace;
  if (ColorSpace)
  {
    goto LABEL_11;
  }

LABEL_10:
  Property = CGContextGetProperty();
  if (Property)
  {
LABEL_11:
    if (options)
    {
      if (![options objectForKey:@"output_color_space"])
      {
        options = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
        [options setValue:Property forKey:@"output_color_space"];
      }
    }

    else
    {
      v18 = @"output_color_space";
      v19[0] = Property;
      options = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    }
  }

  [options objectForKey:@"default_CGImage_format"];
  v12 = [(CIContext *)self initWithOptions:options];
  v10 = v12;
  if (v12)
  {
    _internalContext = [(CIContext *)v12 _internalContext];
    if (_internalContext)
    {
      v14 = _internalContext;
      CI::Context::set_cgcontext(_internalContext, context);
      if (CGContextGetType() == 4)
      {
        Width = CGBitmapContextGetWidth(context);
        Height = CGBitmapContextGetHeight(context);
        (*(*v14 + 184))(v14, 0.0, 0.0, Width, Height);
      }
    }

    CoreAnalytics(&cfstr_Contextwithcgc.isa, v10);
  }

LABEL_20:
  objc_autoreleasePoolPop(v7);
  return v10;
}

+ (CIContext)contextWithEAGLContext:(EAGLContext *)eaglContext
{
  v3 = [[CIContext alloc] initWithEAGLContext:eaglContext];

  return v3;
}

+ (CIContext)contextWithEAGLContext:(EAGLContext *)eaglContext options:(NSDictionary *)options
{
  v4 = [[CIContext alloc] initWithEAGLContext:eaglContext options:options];

  return v4;
}

- (CIContext)initWithEAGLContext:(id)context options:(id)options
{
  v7 = objc_autoreleasePoolPush();
  if (CIEAGLContextGetAPI(context) - 4 <= 0xFFFFFFFD)
  {
    v8 = ci_logger_api();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CIContext initWithEAGLContext:options:];
    }

    goto LABEL_10;
  }

  v14.receiver = self;
  v14.super_class = CIContext;
  v9 = [(CIContext *)&v14 init];
  if (!v9)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [CIContext internalContextWithEAGLContext:context options:options];
  v12 = [(CIContext *)v10 _initWithInternalRepresentation:v11];
  if (v11)
  {
    CI::Object::unref(v11);
  }

  if (v12)
  {
    CoreAnalytics(&cfstr_Contextwitheag.isa, v12);
  }

LABEL_11:
  objc_autoreleasePoolPop(v7);
  return v12;
}

+ (CIContext)contextWithMTLDevice:(id)device
{
  v3 = [[CIContext alloc] initWithMTLDevice:device options:0];

  return v3;
}

+ (CIContext)contextWithMTLDevice:(id)device options:(NSDictionary *)options
{
  v4 = [[CIContext alloc] initWithMTLDevice:device options:options];

  return v4;
}

- (CIContext)initWithMTLDevice:(id)device options:(id)options
{
  v7 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = CIContext;
  v8 = [(CIContext *)&v13 init];
  if (v8)
  {
    v9 = v8;
    v10 = [CIContext internalContextWithMTLDevice:device options:options];
    v11 = [(CIContext *)v9 _initWithInternalRepresentation:v10];
    if (v10)
    {
      CI::Object::unref(v10);
    }

    if (v11)
    {
      CoreAnalytics(&cfstr_Contextwithmtl.isa, v11);
    }
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

- (CIContext)initWithMTLCommandQueue:(id)queue options:(id)options
{
  v7 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = CIContext;
  v8 = [(CIContext *)&v13 init];
  if (v8)
  {
    v9 = v8;
    v10 = [CIContext internalContextWithMTLCommandQueue:queue options:options];
    v11 = [(CIContext *)v9 _initWithInternalRepresentation:v10];
    if (v10)
    {
      CI::Object::unref(v10);
    }

    *(v9->_priv + 72) = 1;
    *(v9->_priv + 10) = [objc_msgSend(options objectForKeyedSubscript:{@"kCIContextIOSurfaceMemoryPoolID", "unsignedIntValue"}];
    if (v11)
    {
      CoreAnalytics(&cfstr_Contextwithmtl_0.isa, v11);
    }
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

+ (CIContext)contextWithMTLCommandQueue:(id)commandQueue options:(NSDictionary *)options
{
  v4 = [[CIContext alloc] initWithMTLCommandQueue:commandQueue options:options];

  return v4;
}

+ (int)_crashed_because_nonaddressable_memory_was_passed_to_render:(id)_crashed_because_nonaddressable_memory_was_passed_to_render toBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format colorSpace:(CGColorSpace *)space
{
  height = bounds.size.height;
  width = bounds.size.width;
  v12 = CI::format_bits_per_pixel(format);
  bytesCopy2 = (v12 * vcvtmd_u64_f64(width)) >> 3;
  if (v12 == 12)
  {
    bytesCopy2 = bytes;
  }

  if (!v12)
  {
    bytesCopy2 = bytes;
  }

  return *(bitmap + (vcvtmd_u64_f64(height) - 1) * bytes + bytesCopy2 - 1) + *bitmap;
}

- (void)render:(CIImage *)image toBitmap:(void *)data rowBytes:(ptrdiff_t)rowBytes bounds:(CGRect)bounds format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace
{
  v9 = *&format;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v18 = objc_autoreleasePoolPush();
  [(CIContext *)self _gpuContextCheck];
  _internalContext = [(CIContext *)self _internalContext];
  if (!data)
  {
    goto LABEL_43;
  }

  if (!image)
  {
    goto LABEL_43;
  }

  v20 = _internalContext;
  if (!_internalContext)
  {
    goto LABEL_43;
  }

  [(CIImage *)image extent];
  v73.origin.x = v21;
  v73.origin.y = v22;
  v73.size.width = v23;
  v73.size.height = v24;
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  v66 = CGRectIntersection(v65, v73);
  if (CGRectIsEmpty(v66))
  {
    goto LABEL_43;
  }

  v26 = CI::format_modernize(v9, "[CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:]", v25);
  if (v26 == 258)
  {
    v27 = 259;
  }

  else
  {
    v27 = v26;
  }

  if (v27 == 1794)
  {
    v28 = 1795;
  }

  else
  {
    v28 = v27;
  }

  if ((*(*v20 + 16))(v20) == 84 && CI::format_is_not_supported_as_destination_on_gles(v28))
  {
    v29 = ci_logger_api();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [CIContext render:v28 toBitmap:? rowBytes:? bounds:? format:? colorSpace:?];
    }

    goto LABEL_43;
  }

  if (CI::format_is_supported_render_to_bitmap(v28))
  {
    if (!colorSpace)
    {
      goto LABEL_26;
    }

    TypeID = CGColorSpaceGetTypeID();
    if (TypeID == CFGetTypeID(colorSpace) && CGColorSpaceSupportsOutput(colorSpace))
    {
      is_luminance = CI::format_is_luminance(v28);
      Model = CGColorSpaceGetModel(colorSpace);
      if (is_luminance)
      {
        if (Model)
        {
          goto LABEL_21;
        }

        goto LABEL_26;
      }

      if (Model == kCGColorSpaceModelRGB)
      {
LABEL_26:
        if (rowBytes % CI::format_destination_rowbytes_requirement(v28))
        {
          v35 = ci_logger_api();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:];
          }
        }

        else
        {
          v67.origin.x = x;
          v67.origin.y = y;
          v67.size.width = width;
          v67.size.height = height;
          v68 = CGRectStandardize(v67);
          v36 = v68.size.width;
          v37 = v68.size.height;
          v38 = floor(v68.origin.x);
          v39 = floor(v68.origin.y);
          v40 = floor(v68.size.width);
          v41 = floor(v68.size.height);
          [CIContext _crashed_because_nonaddressable_memory_was_passed_to_render:image toBitmap:data rowBytes:rowBytes bounds:v28 format:colorSpace colorSpace:v38, v39, v40, v41];
          v42 = vcvtmd_u64_f64(v36);
          v43 = vcvtmd_u64_f64(v37);
          if (rowBytes >= 0)
          {
            v44 = rowBytes;
          }

          else
          {
            v44 = -rowBytes;
          }

          v63 = v44;
          v64 = v42;
          if (rowBytes < 0)
          {
            v45 = (v43 - 1) * rowBytes;
          }

          else
          {
            v45 = 0;
          }

          v46 = [[CIRenderDestination alloc] initWithBitmapData:data + v45 width:v42 height:v43 bytesPerRow:v44 format:v28];
          [(CIRenderDestination *)v46 setColorSpace:colorSpace];
          [(CIRenderDestination *)v46 setFlipped:rowBytes >= 0];
          if ((v20[40] & 1) == 0)
          {
            [(CIRenderDestination *)v46 setAlphaMode:2];
          }

          if ((v20[41] & 1) == 0)
          {
            [(CIRenderDestination *)v46 setClamped:0];
          }

          [(CIImage *)image extent:v63];
          v74.origin.x = v47;
          v74.origin.y = v48;
          v74.size.width = v49;
          v74.size.height = v50;
          v69.origin.x = v38;
          v69.origin.y = v39;
          v69.size.width = v40;
          v69.size.height = v41;
          v70 = CGRectUnion(v69, v74);
          v51 = v70.origin.x;
          v52 = v70.origin.y;
          v53 = v70.size.width;
          v54 = v70.size.height;
          [(CIImage *)image extent];
          v75.origin.x = v55;
          v75.origin.y = v56;
          v75.size.width = v57;
          v75.size.height = v58;
          v71.origin.x = v51;
          v71.origin.y = v52;
          v71.size.width = v53;
          v71.size.height = v54;
          if (CGRectContainsRect(v71, v75))
          {
            [(CIImage *)image extent];
            v76.origin.x = v59;
            v76.origin.y = v60;
            v76.size.width = v61;
            v76.size.height = v62;
            v72.origin.x = v51;
            v72.origin.y = v52;
            v72.size.width = v53;
            v72.size.height = v54;
            if (!CGRectEqualToRect(v72, v76))
            {
              image = [(CIImage *)image imageByCompositingOverImage:+[CIImage clearImage]];
            }
          }

          [(CIRenderTask *)[(CIContext *)self startTaskToRender:image fromRect:v46 toDestination:0 atPoint:v38 error:v39 waitUntilCompletedAndReturnError:v40, v41, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)], "waitUntilCompletedAndReturnError:", 0];
        }

        goto LABEL_43;
      }
    }

LABEL_21:
    v33 = ci_logger_api();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:];
    }

    goto LABEL_43;
  }

  v34 = ci_logger_api();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [CIContext render:v28 toBitmap:? rowBytes:? bounds:? format:? colorSpace:?];
  }

LABEL_43:
  objc_autoreleasePoolPop(v18);
}

- (void)render:(CIImage *)image toCVPixelBuffer:(CVPixelBufferRef)buffer
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v9 = CVImageBufferCopyColorSpace(buffer);
  [(CIContext *)self render:image toCVPixelBuffer:buffer bounds:v9 colorSpace:0.0, 0.0, Width, Height];

  CGColorSpaceRelease(v9);
}

- (void)render:(CIImage *)image toCVPixelBuffer:(CVPixelBufferRef)buffer bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14 = objc_autoreleasePoolPush();
  [(CIContext *)self _gpuContextCheck];
  _internalContext = [(CIContext *)self _internalContext];
  if (image)
  {
    if (buffer)
    {
      v16 = _internalContext;
      if (_internalContext)
      {
        v17 = [[CIRenderDestination alloc] initWithPixelBuffer:buffer];
        [(CIRenderDestination *)v17 setColorSpace:colorSpace];
        if ((v16[40] & 1) == 0)
        {
          [(CIRenderDestination *)v17 setAlphaMode:2];
        }

        if ((v16[41] & 1) == 0)
        {
          [(CIRenderDestination *)v17 setClamped:0];
        }

        v18 = [(CIContext *)self startTaskToRender:image fromRect:v17 toDestination:0 atPoint:x error:y, width, height, x, y];

        if (v18)
        {
          [(CIRenderTask *)v18 waitUntilCompletedAndReturnError:0];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v14);
}

- (BOOL)isMetalBased
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    LOBYTE(_internalContext) = (*(*_internalContext + 16))(_internalContext) == 85;
  }

  return _internalContext;
}

- (BOOL)isOpenGLBased
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    LOBYTE(_internalContext) = (*(*_internalContext + 16))(_internalContext) == 84;
  }

  return _internalContext;
}

- (BOOL)isOpenCLBased
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    LOBYTE(_internalContext) = (*(*_internalContext + 16))(_internalContext) == 82;
  }

  return _internalContext;
}

- (BOOL)_isGLBackedContext
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v3 = _internalContext;
    LOBYTE(_internalContext) = (*(*_internalContext + 16))(_internalContext) == 84 && v3[50] != 0;
  }

  return _internalContext;
}

- (BOOL)_isCGBackedContext
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    LOBYTE(_internalContext) = _internalContext[6] != 0;
  }

  return _internalContext;
}

- (void)_insertEventMarker:(const char *)marker
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v5 = _internalContext;
    if ((*(*_internalContext + 2))(_internalContext) == 84)
    {

      CI::GLContext::insert_event_marker(v5, marker);
    }
  }
}

- (void)render:(id)render
{
  v5 = objc_autoreleasePoolPush();
  if (!render)
  {
    goto LABEL_10;
  }

  [render extent];
  if (CGRectIsEmpty(v33))
  {
    goto LABEL_10;
  }

  [(CIContext *)self bounds];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  if (!CGRectIsInfinite(v34))
  {
    selfCopy2 = self;
    renderCopy2 = render;
    v13 = x;
    v14 = y;
    v15 = width;
    v16 = height;
    v17 = x;
    v18 = y;
    v19 = width;
    v20 = height;
LABEL_9:
    [(CIContext *)selfCopy2 drawImage:renderCopy2 inRect:v13 fromRect:v14, v15, v16, v17, v18, v19, v20];
    goto LABEL_10;
  }

  [render extent];
  if (!CGRectIsInfinite(v35))
  {
    [render extent];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [render extent];
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    selfCopy2 = self;
    renderCopy2 = render;
    v13 = v22;
    v14 = v24;
    v15 = v26;
    v16 = v28;
    goto LABEL_9;
  }

  v10 = ci_logger_api();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CIContext render:];
  }

LABEL_10:
  objc_autoreleasePoolPop(v5);
}

- (void)drawImage:(CIImage *)image atPoint:(CGPoint)atPoint fromRect:(CGRect)fromRect
{
  if (image)
  {
    height = fromRect.size.height;
    width = fromRect.size.width;
    y = fromRect.origin.y;
    x = fromRect.origin.x;
    v9 = atPoint.y;
    v10 = atPoint.x;
    [(CIImage *)image extent];
    if (!CGRectIsEmpty(v14))
    {
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      v16 = CGRectStandardize(v15);

      [(CIContext *)self drawImage:image inRect:v10 fromRect:v9, v16.size.width, v16.size.height, v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
    }
  }
}

- (void)drawImage:(CIImage *)image inRect:(CGRect)inRect fromRect:(CGRect)fromRect
{
  height = fromRect.size.height;
  width = fromRect.size.width;
  y = fromRect.origin.y;
  x = fromRect.origin.x;
  v9 = inRect.size.height;
  v10 = inRect.size.width;
  v11 = inRect.origin.y;
  v12 = inRect.origin.x;
  v15 = objc_autoreleasePoolPush();
  if ([(CIContext *)self _isGLBackedContext]|| [(CIContext *)self _isCGBackedContext])
  {
    [(CIContext *)self _gpuContextCheck];
    _internalContext = [(CIContext *)self _internalContext];
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v51 = CGRectStandardize(v50);
    v17 = v51.origin.x;
    v18 = v51.origin.y;
    v19 = v51.size.width;
    v20 = v51.size.height;
    v51.origin.x = v12;
    v51.origin.y = v11;
    v51.size.width = v10;
    v51.size.height = v9;
    v52 = CGRectStandardize(v51);
    if (image)
    {
      if (_internalContext)
      {
        v21 = v52.origin.x;
        v22 = v52.origin.y;
        v23 = v52.size.width;
        v24 = v52.size.height;
        if (!CGRectIsEmpty(v52))
        {
          [(CIImage *)image extent];
          v57.origin.x = v25;
          v57.origin.y = v26;
          v57.size.width = v27;
          v57.size.height = v28;
          v53.origin.x = v17;
          v53.origin.y = v18;
          v53.size.width = v19;
          v53.size.height = v20;
          v54 = CGRectIntersection(v53, v57);
          if (!CGRectIsEmpty(v54))
          {
            v55.origin.x = v17;
            v55.origin.y = v18;
            v55.size.width = v19;
            v55.size.height = v20;
            if (CGRectIsInfinite(v55) || (v56.origin.x = v21, v56.origin.y = v22, v56.size.width = v23, v56.size.height = v24, CGRectIsInfinite(v56)))
            {
              v29 = ci_logger_api();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                [CIContext drawImage:inRect:fromRect:];
              }
            }

            else if ([(CIContext *)self _isCGBackedContext])
            {
              v31 = *(_internalContext + 6);
              if (CGContextGetType() == 4 && CGBitmapContextGetColorSpace(v31))
              {
                ColorSpace = CGBitmapContextGetColorSpace(v31);
                BitsPerComponent = CGBitmapContextGetBitsPerComponent(v31);
                BitmapInfo = CGBitmapContextGetBitmapInfo(v31);
                if ((BitmapInfo & 0x100) != 0)
                {
                  if ((BitmapInfo & 0x7000) == 0x1000)
                  {
                    v42 = &kCIFormatRGBAh;
                  }

                  else
                  {
                    v42 = &kCIFormatRGBAf;
                  }

                  Model = CGColorSpaceGetModel(ColorSpace);
                  v35 = &kCIFormatLAf;
                  if (Model)
                  {
                    v35 = v42;
                  }
                }

                else if (CGColorSpaceGetModel(ColorSpace))
                {
                  v35 = &kCIFormatRGBA8;
                }

                else
                {
                  v35 = &kCIFormatLA16;
                  if (BitsPerComponent <= 8)
                  {
                    v35 = &kCIFormatLA8;
                  }
                }
              }

              else
              {
                colorSpace = [(CIImage *)image colorSpace];
                if (!colorSpace || (ColorSpace = colorSpace, CGColorSpaceGetModel(colorSpace) != kCGColorSpaceModelRGB) || !CGColorSpaceSupportsOutput(ColorSpace))
                {
                  ColorSpace = [(CIContext *)self _outputColorSpace];
                }

                v40 = CGColorSpaceUsesExtendedRange(ColorSpace);
                if (CGColorSpaceUsesITUR_2100TF(ColorSpace) || v40)
                {
                  v35 = &kCIFormatRGBAh;
                }

                else
                {
                  v35 = &kCIFormatRGBA8;
                }
              }

              v41 = [(CIContext *)self createCGImage:image fromRect:*v35 format:ColorSpace colorSpace:v17, v18, v19, v20];
              CGContextDrawImageFromRect();
              CGImageRelease(v41);
            }

            else
            {
              v44 = v23 / v19;
              v45 = v23 / v19 * 0.0;
              v46 = v24 / v20 * 0.0;
              v47 = v24 / v20;
              v48 = v21 - v23 / v19 * v17 - v46 * v18;
              v49 = v22 - v45 * v17 - v24 / v20 * v18;
              v36 = [(CIImage *)image imageByApplyingTransform:&v44];
              v37 = *(_internalContext + 2);
              if ((*(*_internalContext + 16))(_internalContext) == 84 && CI::GLContext::is_user_destination_srgb(_internalContext))
              {
                v37 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
                CFAutorelease(v37);
              }

              _internalRepresentation = [[(CIImage *)v36 imageByColorMatchingWorkingSpaceToColorSpace:v37] _internalRepresentation];
              [(CIContext *)self lock];
              ++*(_internalContext + 19);
              *(_internalContext + 24) = 0;
              *(_internalContext + 20) = v21;
              *(_internalContext + 21) = v22;
              *(_internalContext + 22) = v23;
              *(_internalContext + 23) = v24;
              (*(*_internalContext + 248))(_internalContext, 0);
              CI::image_render_to_display(_internalContext, _internalRepresentation, 264, v21, v22, v23, v24);
              [(CIContext *)self unlock];
            }
          }
        }
      }
    }
  }

  else
  {
    v30 = ci_logger_api();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CIContext drawImage:inRect:fromRect:];
    }
  }

  objc_autoreleasePoolPop(v15);
}

- (void)render:(id)render toTexture:(unsigned int)texture target:(unsigned int)target bounds:(CGRect)bounds colorSpace:(CGColorSpace *)space
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13 = *&texture;
  v16 = objc_autoreleasePoolPush();
  if (target == 3553)
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v30 = CGRectStandardize(v29);
    if (render)
    {
      v17 = v30.origin.x;
      v18 = v30.origin.y;
      v19 = v30.size.width;
      v20 = v30.size.height;
      if ([(CIContext *)self _internalContext])
      {
        [render extent];
        v33.origin.x = v21;
        v33.origin.y = v22;
        v33.size.width = v23;
        v33.size.height = v24;
        v31.origin.x = v17;
        v31.origin.y = v18;
        v31.size.width = v19;
        v31.size.height = v20;
        v32 = CGRectIntersection(v31, v33);
        if (!CGRectIsEmpty(v32))
        {
          [(CIContext *)self _gpuContextCheck];
          _internalContext = [(CIContext *)self _internalContext];
          if ((*(*_internalContext + 16))(_internalContext) == 84 || (*(*_internalContext + 16))(_internalContext) == 82)
          {
            v26 = [[CIRenderDestination alloc] initWithGLTexture:v13 target:3553 width:v19 height:v20];
            [(CIRenderDestination *)v26 setColorSpace:space];
            [(CIRenderDestination *)v26 setFlipped:0];
            if ((_internalContext[40] & 1) == 0)
            {
              [(CIRenderDestination *)v26 setAlphaMode:2];
            }

            if ((_internalContext[41] & 1) == 0)
            {
              [(CIRenderDestination *)v26 setClamped:0];
            }

            [(CIContext *)self startTaskToRender:render fromRect:v26 toDestination:0 atPoint:v17 error:v18, v19, v20, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
          }

          else
          {
            v28 = ci_logger_api();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [CIContext render:toTexture:target:bounds:colorSpace:];
            }
          }
        }
      }
    }
  }

  else
  {
    v27 = ci_logger_api();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CIContext render:toTexture:target:bounds:colorSpace:];
    }
  }

  objc_autoreleasePoolPop(v16);
}

- (void)render:(CIImage *)image toMTLTexture:(id)texture commandBuffer:(id)commandBuffer bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v16 = objc_autoreleasePoolPush();
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v31 = CGRectStandardize(v30);
  if (image)
  {
    v17 = v31.origin.x;
    v18 = v31.origin.y;
    v19 = v31.size.width;
    v20 = v31.size.height;
    if ([(CIContext *)self _internalContext])
    {
      [(CIImage *)image extent];
      v34.origin.x = v21;
      v34.origin.y = v22;
      v34.size.width = v23;
      v34.size.height = v24;
      v32.origin.x = v17;
      v32.origin.y = v18;
      v32.size.width = v19;
      v32.size.height = v20;
      v33 = CGRectIntersection(v32, v34);
      if (!CGRectIsEmpty(v33))
      {
        _internalContext = [(CIContext *)self _internalContext];
        if ([texture textureType] == 2)
        {
          if ((*(*_internalContext + 16))(_internalContext) == 85)
          {
            v26 = [[CIRenderDestination alloc] initWithMTLTexture:texture commandBuffer:commandBuffer];
            [(CIRenderDestination *)v26 setColorSpace:colorSpace];
            if ((_internalContext[40] & 1) == 0)
            {
              [(CIRenderDestination *)v26 setAlphaMode:2];
            }

            if ((_internalContext[41] & 1) == 0)
            {
              [(CIRenderDestination *)v26 setClamped:0];
            }

            if ((dyld_program_sdk_at_least() & 1) == 0 && (dyld_program_sdk_at_least() & 1) == 0)
            {
              [(CIRenderDestination *)v26 setFlipped:0];
            }

            [(CIContext *)self startTaskToRender:image fromRect:v26 toDestination:0 atPoint:v17 error:v18, v19, v20, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
          }

          else if (commandBuffer || (v29 = [texture iosurface]) == 0)
          {
            v28 = ci_logger_api();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [CIContext render:toMTLTexture:commandBuffer:bounds:colorSpace:];
            }
          }

          else
          {
            [(CIContext *)self render:image toIOSurface:v29 bounds:colorSpace colorSpace:v17, v18, v19, v20];
          }
        }

        else
        {
          v27 = ci_logger_api();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [CIContext render:toMTLTexture:commandBuffer:bounds:colorSpace:];
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v16);
}

- (__IOSurface)createIOSurface:(id)surface
{
  [surface extent];

  return [(CIContext *)self createIOSurface:surface fromRect:?];
}

- (__IOSurface)createIOSurface:(id)surface fromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_autoreleasePoolPush();
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectStandardize(v23);
  if (surface && (v11 = v24.origin.x, v12 = v24.origin.y, v13 = v24.size.width, v14 = v24.size.height, -[CIContext _internalContext](self, "_internalContext")) && (v25.origin.x = v11, v25.origin.y = v12, v25.size.width = v13, v25.size.height = v14, !CGRectIsInfinite(v25)) && ([surface extent], v27.origin.x = v15, v27.origin.y = v16, v27.size.width = v17, v27.size.height = v18, v26.origin.x = v11, v26.origin.y = v12, v26.size.width = v13, v26.size.height = v14, CGRectIntersectsRect(v26, v27)))
  {
    _internalContext = [(CIContext *)self _internalContext];
    v20 = (*(*_internalContext + 552))(_internalContext, 266);
    Surface = CreateSurface(vcvtpd_u64_f64(v13), vcvtpd_u64_f64(v14), v20, 1111970369, 1);
    if (Surface)
    {
      [(CIContext *)self render:surface toIOSurface:Surface bounds:[(CIContext *)self _outputColorSpace] colorSpace:v11, v12, v13, v14];
    }
  }

  else
  {
    Surface = 0;
  }

  objc_autoreleasePoolPop(v10);
  return Surface;
}

- (void)render:(CIImage *)image toIOSurface:(IOSurfaceRef)surface bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14 = objc_autoreleasePoolPush();
  [(CIContext *)self _gpuContextCheck];
  _internalContext = [(CIContext *)self _internalContext];
  if (image)
  {
    if (surface)
    {
      v16 = _internalContext;
      if (_internalContext)
      {
        v17 = [[CIRenderDestination alloc] initWithIOSurface:surface];
        [(CIRenderDestination *)v17 setColorSpace:colorSpace];
        if ((v16[40] & 1) == 0)
        {
          [(CIRenderDestination *)v17 setAlphaMode:2];
        }

        if ((v16[41] & 1) == 0)
        {
          [(CIRenderDestination *)v17 setClamped:0];
        }

        v18 = [(CIContext *)self startTaskToRender:image fromRect:v17 toDestination:0 atPoint:x error:y, width, height, x, y];

        if (v18)
        {
          [(CIRenderTask *)v18 waitUntilCompletedAndReturnError:0];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v14);
}

- (CGLayerRef)createCGLayerWithSize:(CGSize)size info:(CFDictionaryRef)info
{
  height = size.height;
  width = size.width;
  v7 = CGColorSpaceRetain([(CIContext *)self workingColorSpace]);
  if (!v7)
  {
    v7 = +[CIContext defaultRGBColorSpace];
  }

  v8 = CGBitmapContextCreate(0, 1uLL, 1uLL, 8uLL, 0, v7, 2u);
  CGColorSpaceRelease(v7);
  if (!v8)
  {
    return 0;
  }

  v11.width = width;
  v11.height = height;
  v9 = CGLayerCreateWithContext(v8, v11, info);
  CGContextRelease(v8);
  return v9;
}

- (unint64_t)maximumInputImageSize
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    v3 = *(*result + 456);

    return v3();
  }

  return result;
}

- (unint64_t)maximumOutputImageSize
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    v3 = *(*result + 464);

    return v3();
  }

  return result;
}

- (CGSize)inputImageMaximumSize
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v3 = (*(*_internalContext + 456))(_internalContext);
  }

  else
  {
    v3 = 0.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)outputImageMaximumSize
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v3 = (*(*_internalContext + 464))(_internalContext);
  }

  else
  {
    v3 = 0.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGColorSpace)_outputColorSpace
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    return *(result + 2);
  }

  return result;
}

- (CGColorSpaceRef)workingColorSpace
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (CIFormat)workingFormat
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    LODWORD(_internalContext) = _internalContext[8];
  }

  return _internalContext;
}

+ (CGColorSpace)defaultWorkingColorSpace
{
  v2 = CI::Context::defaultWorkingSpace(self);

  return CGColorSpaceRetain(v2);
}

+ (CGColorSpace)defaultRGBColorSpace
{
  {
    if (v4)
    {
      +[CIContext defaultRGBColorSpace]::space = CI::Context::defaultOutputRGBSpace(v4);
    }
  }

  v2 = +[CIContext defaultRGBColorSpace]::space;

  return CGColorSpaceRetain(v2);
}

+ (CGColorSpace)defaultGrayColorSpace
{
  {
    if (v4)
    {
      +[CIContext defaultGrayColorSpace]::space = CI::Context::defaultOutputGraySpace(v4);
    }
  }

  v2 = +[CIContext defaultGrayColorSpace]::space;

  return CGColorSpaceRetain(v2);
}

- (void)clearCaches
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v3 = *(*_internalContext + 616);

    v3();
  }
}

- (id)flatten:(id)flatten fromRect:(CGRect)rect format:(int)format colorSpace:(CGColorSpace *)space
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = ci_logger_api();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136446210;
    v10 = "[CIContext flatten:fromRect:format:colorSpace:]";
    _os_log_impl(&dword_19CC36000, v7, OS_LOG_TYPE_INFO, "%{public}s was called but ignored.", &v9, 0xCu);
  }

  return flatten;
}

- (BOOL)measureRequirementsOf:(id)of query:(int)query :(id *)a5 results:(CGRect *)results
{
  if (of)
  {
    v6 = query == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || results == 0 || a5 == 0;
  v9 = !v8;
  if (!v8)
  {
    v11 = a5;
    LODWORD(v12) = query;
    [(CIContext *)self bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    memset(&v35, 0, sizeof(v35));
    if (self)
    {
      [(CIContext *)self CTM];
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
    }

    CGAffineTransformInvert(&v35, &v34);
    v34 = v35;
    v36.origin.x = v16;
    v36.origin.y = v18;
    v36.size.width = v20;
    v36.size.height = v22;
    v37 = CGRectApplyAffineTransform(v36, &v34);
    if (v12 >= 1)
    {
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;
      v12 = v12;
      p_size = &results->size;
      do
      {
        v28 = *v11++;
        [of regionOfInterestForImage:v28 inRect:{x, y, width, height}];
        p_size[-1].width = v29;
        p_size[-1].height = v30;
        p_size->width = v31;
        p_size->height = v32;
        p_size += 2;
        --v12;
      }

      while (v12);
    }
  }

  return v9;
}

- (void)setCTM:(CGAffineTransform *)m
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v5 = *&m->c;
    v6[0] = *&m->a;
    v6[1] = v5;
    v6[2] = *&m->tx;
    (*(*_internalContext + 136))(_internalContext, v6);
  }
}

- (CGAffineTransform)CTM
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    v5 = *(*&result->a + 144);

    return v5();
  }

  else
  {
    v6 = MEMORY[0x1E695EFD0];
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v7;
    *&retstr->tx = *(v6 + 32);
  }

  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v12 = *(*_internalContext + 184);
    v8.n128_f64[0] = x;
    v9.n128_f64[0] = y;
    v10.n128_f64[0] = width;
    v11.n128_f64[0] = height;

    v12(v8, v9, v10, v11);
  }
}

- (CGRect)bounds
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    (*(*_internalContext + 192))(_internalContext);
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)description
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __24__CIContext_description__block_invoke;
    v5[3] = &unk_1E75C20D0;
    v5[4] = self;
    v5[5] = _internalContext;
    return stream_to_string(v5);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CIContext;
    return [(CIContext *)&v6 description];
  }
}

uint64_t __24__CIContext_description__block_invoke(uint64_t a1, FILE *a2)
{
  v4 = [objc_msgSend(objc_opt_class() "description")];
  fprintf(a2, "<%s: %p", v4, *(a1 + 32));
  v5 = (*(**(a1 + 40) + 312))();
  v6 = (*(**(a1 + 40) + 280))();
  fprintf(a2, " (%s %d)", v5, v6);
  if ([*(a1 + 32) isMetalBased])
  {
    v7 = CI::MetalContext::device(*(a1 + 40));
    fprintf(a2, " MTLDevice=%p", v7);
  }

  [*(a1 + 32) bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  if (!CGRectIsInfinite(v24))
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    if (CGRectIsEmpty(v25))
    {
      fwrite(" bounds=[empty]", 0xFuLL, 1uLL, a2);
    }

    else
    {
      fprintf(a2, " bounds=[%g %g %g %g]", x, y, width, height);
    }
  }

  fwrite(">\n", 2uLL, 1uLL, a2);
  v12 = [*(a1 + 32) clientCommandQueue];
  if (v12)
  {
    fprintf(a2, "    withMTLCommandQueue: %p\n", v12);
  }

  if ([*(a1 + 32) _isCGBackedContext])
  {
    fprintf(a2, "    withCGContext: %p\n", *(*(a1 + 40) + 48));
  }

  if ([*(a1 + 32) _isGLBackedContext])
  {
    fprintf(a2, "    withGLContext: %p\n", *(*(a1 + 40) + 392));
  }

  v13 = *(a1 + 40);
  if (v13[236])
  {
    fprintf(a2, "    name: %s\n", v13 + 236);
    v13 = *(a1 + 40);
  }

  v14 = (*(*v13 + 240))(v13);
  v15 = "yes";
  if (v14 == -1)
  {
    v15 = "no";
  }

  fprintf(a2, "    cacheIntermediates: %s\n", v15);
  v16 = (*(**(a1 + 40) + 272))();
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = "    priority: media\n";
      v18 = 20;
    }

    else
    {
      if (v16 != 3)
      {
        goto LABEL_27;
      }

      v17 = "    priority: high\n";
      v18 = 19;
    }
  }

  else if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_27;
    }

    v17 = "    priority: low\n";
    v18 = 18;
  }

  else
  {
    v17 = "    priority: default\n";
    v18 = 22;
  }

  fwrite(v17, v18, 1uLL, a2);
LABEL_27:
  fwrite("    workingSpace: ", 0x12uLL, 1uLL, a2);
  CI::fprintf_cs(a2, *(*(a1 + 40) + 24), 1);
  fputc(10, a2);
  v19 = CI::name_for_format(*(*(a1 + 40) + 32));
  fprintf(a2, "    workingFormat: %s\n", v19);
  if ((*(**(a1 + 40) + 176))(*(a1 + 40)))
  {
    fwrite("    lossyIntermediates: true\n", 0x1DuLL, 1uLL, a2);
  }

  v20 = (*(**(a1 + 40) + 224))(*(a1 + 40));
  v21 = "Low";
  if (v20)
  {
    v21 = "High";
  }

  fprintf(a2, "    downsampleQuality: %s\n", v21);
  v22 = (*(**(a1 + 40) + 496))();
  result = fprintf(a2, "    maxRenderLoad: %ld MB", v22 >> 20);
  if (*(*(a1 + 40) + 368))
  {
    return fprintf(a2, "    memoryLimit: %ld MB", *(*(a1 + 40) + 368));
  }

  return result;
}

- (id)createColorCubeDataForFilters:(id)filters dimension:(int)dimension colorSpace:(CGColorSpace *)space
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = 4 * dimension;
  v10 = dimension * dimension;
  v11 = dimension * dimension * 4 * dimension;
  v12 = [MEMORY[0x1E695DF88] dataWithLength:v11];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  mutableBytes = [v12 mutableBytes];
  if (dimension >= 1)
  {
    v15 = 0;
    v16 = (dimension - 1);
    do
    {
      v17 = 0;
      do
      {
        v18 = 0;
        do
        {
          *mutableBytes = (v18 * 255.0 / v16);
          mutableBytes[1] = (v17 * 255.0 / v16);
          mutableBytes[2] = (v15 * 255.0 / v16);
          mutableBytes[3] = -1;
          mutableBytes += 4;
          ++v18;
        }

        while (dimension != v18);
        ++v17;
      }

      while (v17 != dimension);
      ++v15;
    }

    while (v15 != dimension);
  }

  selfCopy = self;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v20 = DeviceRGB;
  if (space)
  {
    spaceCopy = space;
  }

  else
  {
    spaceCopy = DeviceRGB;
  }

  dimensionCopy = dimension;
  v23 = v10;
  v35 = spaceCopy;
  outputImage = [CIImage imageWithBitmapData:v13 bytesPerRow:dimension size:v10 format:v9 colorSpace:?];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = [filters countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(filters);
        }

        v29 = *(*(&v37 + 1) + 8 * i);
        v30 = [v29 valueForKey:@"inputImage"];
        [v29 setValue:outputImage forKey:@"inputImage"];
        outputImage = [v29 outputImage];
        [v29 setValue:v30 forKey:@"inputImage"];
      }

      v26 = [filters countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v26);
  }

  v31 = [MEMORY[0x1E695DF88] dataWithLength:v11];
  v32 = v31;
  if (v31)
  {
    -[CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:](selfCopy, "render:toBitmap:rowBytes:bounds:format:colorSpace:", outputImage, [v31 mutableBytes], v34, 264, v35, 0.0, 0.0, dimensionCopy, v23);
  }

  CGColorSpaceRelease(v20);
  return v32;
}

- (void)_internalContext
{
  priv = self->_priv;
  if (priv)
  {
    return *priv;
  }

  else
  {
    return 0;
  }
}

+ (void)internalContextWithEAGLContext:(id)context options:(id)options
{
  if (CIGLIsUsable() && (!context || ContextIsUsable(context)))
  {
    v17 = 0;
    GetOutputColorSpaceFromOptions(options, &v17);
    if (v17)
    {
      GetWorkingColorSpaceFromOptions(options, &v17);
      if (v17)
      {
        v6 = [options valueForKey:@"working_format"];
        v8 = v6;
        if (v6)
        {
          intValue = [v6 intValue];
        }

        else
        {
          intValue = 0;
        }

        v11 = CI::format_modernize(intValue, "+[CIContext(Internal) internalContextWithEAGLContext:options:]", v7);
        if (v8 && v11 != 266 && v11 != 264 && v11 != 2056)
        {
          v12 = CI::name_for_format(v11);
          v13 = ci_logger_api();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
          if (v12)
          {
            if (v14)
            {
              +[CIContext(Internal) internalContextWithEAGLContext:options:];
              if (!options)
              {
LABEL_22:
                v15 = [options objectForKey:@"kCIContextIntermediateMemoryTarget"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v15 intValue];
                }

                else if (defaultIntermediateMemoryTarget(void)::onceToken != -1)
                {
                  +[CIContext(Internal) internalContextWithEAGLContext:options:];
                }

                v16 = [options objectForKey:@"kCIContextMemoryLimit"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v16 intValue];
                }

                [options valueForKey:@"CoreUI"];
                operator new();
              }

LABEL_20:
              [options objectForKey:@"output_premultiplied"];
              goto LABEL_22;
            }
          }

          else if (v14)
          {
            +[CIContext(Internal) internalContextWithEAGLContext:options:];
            if (!options)
            {
              goto LABEL_22;
            }

            goto LABEL_20;
          }
        }

        if (!options)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }
  }

  return 0;
}

+ (void)internalContextWithMTLDevice:(id)device options:(id)options
{
  if (!device)
  {
    return 0;
  }

  v6 = [options valueForKey:@"CoreUI"] ? "com.apple.CoreImage-Internal" : "com.apple.CoreImage";
  v7 = CIMetalCommandQueueCreate(v6, device);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  CFAutorelease(v7);

  return [CIContext internalContextWithMTLCommandQueue:v8 options:options];
}

+ (void)internalContextWithMTLCommandQueue:(id)queue options:(id)options
{
  if (queue)
  {
    v22[0] = 0;
    GetOutputColorSpaceFromOptions(options, v22);
    if (v22[0])
    {
      GetWorkingColorSpaceFromOptions(options, v22);
      if (v22[0])
      {
        v5 = [options valueForKey:@"working_format"];
        v7 = v5;
        if (v5)
        {
          intValue = [v5 intValue];
        }

        else
        {
          intValue = 0;
        }

        v10 = CI::format_modernize(intValue, "+[CIContext(Internal) internalContextWithMTLCommandQueue:options:]", v6);
        if (v7)
        {
          v11 = v10 == 266 || v10 == 264;
          v12 = v11 || v10 == 2056;
          if (!v12 && v10 != 2312)
          {
            v14 = CI::name_for_format(v10);
            v15 = ci_logger_api();
            v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
            if (v14)
            {
              if (v16)
              {
                +[CIContext(Internal) internalContextWithMTLCommandQueue:options:];
              }
            }

            else if (v16)
            {
              +[CIContext(Internal) internalContextWithMTLCommandQueue:options:];
            }
          }
        }

        if (options)
        {
          [options objectForKey:@"output_premultiplied"];
          [options objectForKey:@"kCIContextAllowHalfPrecision"];
        }

        v17 = [options objectForKey:@"kCIContextIntermediateMemoryTarget"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v17 intValue];
        }

        else if (defaultIntermediateMemoryTarget(void)::onceToken != -1)
        {
          +[CIContext(Internal) internalContextWithEAGLContext:options:];
        }

        v18 = [options objectForKey:@"kCIContextMemoryLimit"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 intValue];
        }

        [objc_msgSend(options objectForKeyedSubscript:{@"kCIContextIOSurfaceMemoryPoolID", "unsignedIntValue"}];
        [options objectForKeyedSubscript:@"kCIContextIntermediateAllocator"];
        v19 = [options objectForKeyedSubscript:@"kCIContextCVMetalTextureCache"];
        if (v19)
        {
          v20 = CFGetTypeID(v19);
          if (v20 != CVMetalTextureCacheGetTypeID())
          {
            v21 = ci_logger_api();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              +[CIContext(Internal) internalContextWithMTLCommandQueue:options:];
            }
          }
        }

        operator new();
      }
    }
  }

  return 0;
}

uint64_t __66__CIContext_Internal__internalContextWithMTLCommandQueue_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newCaptureScopeWithDevice:{objc_msgSend(*(a1 + 40), "device")}];
  [v2 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CoreImage <%@>", objc_msgSend(objc_msgSend(*(a1 + 40), "device"), "name"))}];
  v3 = *(a1 + 32);

  return [v3 setDefaultCaptureScope:v2];
}

+ (void)internalSWContextWithOptions:(id)options
{
  v18 = 0;
  GetOutputColorSpaceFromOptions(options, &v18);
  if (v18)
  {
    GetWorkingColorSpaceFromOptions(options, &v18);
    if (v18)
    {
      v4 = [options valueForKey:@"working_format"];
      v6 = v4;
      if (v4)
      {
        intValue = [v4 intValue];
      }

      else
      {
        intValue = 0;
      }

      v8 = CI::format_modernize(intValue, "+[CIContext(Internal) internalSWContextWithOptions:]", v5);
      if (v6)
      {
        v9 = v8 == 266 || v8 == 264;
        v10 = v9 || v8 == 2056;
        if (!v10 && v8 != 2312)
        {
          v12 = CI::name_for_format(v8);
          v13 = ci_logger_api();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
          if (v12)
          {
            if (v14)
            {
              +[CIContext(Internal) internalContextWithMTLCommandQueue:options:];
              if (!options)
              {
LABEL_26:
                v15 = [options objectForKey:@"kCIContextIntermediateMemoryTarget"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v15 intValue];
                }

                else if (defaultIntermediateMemoryTarget(void)::onceToken != -1)
                {
                  +[CIContext(Internal) internalContextWithEAGLContext:options:];
                }

                v16 = [options objectForKey:@"kCIContextMemoryLimit"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v16 intValue];
                }

                operator new();
              }

LABEL_24:
              [options objectForKey:@"output_premultiplied"];
              goto LABEL_26;
            }
          }

          else if (v14)
          {
            +[CIContext(Internal) internalContextWithMTLCommandQueue:options:];
            if (!options)
            {
              goto LABEL_26;
            }

            goto LABEL_24;
          }
        }
      }

      if (!options)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  return 0;
}

- (id)_initWithInternalRepresentation:(void *)representation
{
  v38 = *MEMORY[0x1E69E9840];
  if (representation)
  {
    v24.receiver = self;
    v24.super_class = CIContext;
    v4 = [(CIContext *)&v24 init];
    if (v4)
    {
      if ((v4->_priv = malloc_type_calloc(1uLL, 0x58uLL, 0x1020040347FB3B5uLL), *v4->_priv = CI::Object::ref(representation), pthread_mutex_init((v4->_priv + 8), 0), CI_PRINT_TREE()) && (v5 = (*(*representation + 280))(representation), CI_PRINT_TREE_context(v5, representation + 236)) || CI_PRINT_TIME() && (v6 = (*(*representation + 280))(representation), CI_PRINT_TIME_context(v6, representation + 236)))
      {
        {
          log_context_creation(CI::Context *)::isInternalBuild = os_variant_has_internal_content();
        }

        if (log_context_creation(CI::Context *)::isInternalBuild == 1)
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v27 = 0u;
          memset(buf, 0, sizeof(buf));
          v7 = backtrace(buf, 32);
          if (dladdr(*buf, &v25))
          {
            dli_fbase = v25.dli_fbase;
          }

          else
          {
            dli_fbase = 0;
          }

          if (v7 >= 2)
          {
            v9 = 8 * v7;
            v10 = 8;
            while (dladdr(*&buf[v10], &v25))
            {
              if (v25.dli_fbase != dli_fbase)
              {
                if (v25.dli_fname)
                {
                  v11 = strrchr(v25.dli_fname, 47);
                }

                else
                {
                  v11 = 0;
                }

                if (v25.dli_sname)
                {
                  dli_sname = v25.dli_sname;
                }

                else
                {
                  dli_sname = "";
                }

                v13 = "from";
                goto LABEL_20;
              }

              v10 += 8;
              if (v9 == v10)
              {
                break;
              }
            }
          }

          v11 = 0;
          dli_sname = "";
          v13 = "";
        }

        else
        {
          v11 = 0;
          dli_sname = "";
          v13 = "";
        }

LABEL_20:
        v14 = ci_logger_api();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = (*(*representation + 312))(representation);
          v16 = (*(*representation + 280))(representation);
          v18 = *(representation + 236);
          v17 = representation + 236;
          v19 = v18 == 0;
          *buf = 136447746;
          if (v18)
          {
            v20 = ":";
          }

          else
          {
            v20 = "";
          }

          if (v19)
          {
            v21 = "";
          }

          else
          {
            v21 = v17;
          }

          *&buf[4] = v15;
          *&buf[12] = 1026;
          if (v11)
          {
            v22 = v11 + 1;
          }

          else
          {
            v22 = "";
          }

          *&buf[14] = v16;
          *&buf[18] = 2082;
          *&buf[20] = v20;
          *&buf[28] = 2082;
          *&buf[30] = v21;
          *&buf[38] = 2082;
          *&buf[40] = v13;
          *&buf[48] = 2082;
          *&buf[50] = v22;
          *&buf[58] = 2082;
          *&buf[60] = dli_sname;
          _os_log_impl(&dword_19CC36000, v14, OS_LOG_TYPE_INFO, "Created CIContext (%{public}s context %{public}d%{public}s%{public}s) %{public}s %{public}s %{public}s", buf, 0x44u);
        }
      }
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)_gpuContextCheck
{
  v2 = *self->_priv;
  if (v2)
  {
    (*(*v2 + 16))();
  }
}

- (id)_createClone
{
  _internalContext = [(CIContext *)self _internalContext];
  v3 = (*(*_internalContext + 16))(_internalContext);
  switch(v3)
  {
    case 'S':
      operator new();
    case 'U':
      operator new();
    case 'T':
      operator new();
  }

  return 0;
}

+ (id)_namedCache
{
  if (+[CIContext(_createCached) _namedCache]::onceToken != -1)
  {
    +[CIContext(_createCached) _namedCache];
  }

  return +[CIContext(_createCached) _namedCache]::cache;
}

uint64_t __39__CIContext__createCached___namedCache__block_invoke()
{
  +[CIContext(_createCached) _namedCache]::cache = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [+[CIContext(_createCached) _namedCache]::cache setName:@"com.apple.coreimage.nscache.CIContext"];
  [+[CIContext(_createCached) _namedCache]::cache setCountLimit:256];
  v0 = +[CIContext(_createCached) _namedCache]::cache;

  return [v0 setEvictsObjectsWhenApplicationEntersBackground:1];
}

+ (id)_cachedContext:(id)context options:(id)options
{
  _namedCache = [self _namedCache];
  v7 = [_namedCache objectForKey:context];
  if (v7)
  {
    v8 = v7;

    return v8;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary addEntriesFromDictionary:options];
    [dictionary setObject:context forKeyedSubscript:@"kCIContextName"];
    [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"kCIContextCacheIntermediates"];
    v11 = [CIContext contextWithOptions:dictionary];
    [_namedCache setObject:v11 forKey:context];
    return v11;
  }
}

- (CGImage)_createCGImage:(id)image fromRect:(CGRect)rect format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space deferred:(Trilean)deferred renderCallback:(id)callback
{
  premultipliedCopy = premultiplied;
  v13 = *&format;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v183 = *MEMORY[0x1E69E9840];
  v20 = objc_autoreleasePoolPush();
  imageCopy = image;
  imageCopy2 = image;
  [(CIContext *)self _gpuContextCheck];
  v184.origin.x = x;
  v184.origin.y = y;
  v184.size.width = width;
  v184.size.height = height;
  v185 = CGRectStandardize(v184);
  if (!image || (v23 = v185.origin.x, v24 = v185.origin.y, v25 = v185.size.width, v26 = v185.size.height, CGRectIsInfinite(v185)) || ([image extent], v202.origin.x = v27, v202.origin.y = v28, v202.size.width = v29, v202.size.height = v30, v186.origin.x = v23, v186.origin.y = v24, v186.size.width = v25, v186.size.height = v26, v187 = CGRectIntersection(v186, v202), CGRectIsEmpty(v187)))
  {
LABEL_4:
    v32 = 0;
    goto LABEL_5;
  }

  v34 = CI::format_modernize(v13, "[CIContext(_createCGImageInternal) _createCGImage:fromRect:format:premultiplied:colorSpace:deferred:renderCallback:]", v31);
  if (CI::format_CGBitmapInfo(v34, 1) == -1)
  {
    v35 = ci_logger_api();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [CIContext(_createCGImageInternal) _createCGImage:v34 fromRect:? format:? premultiplied:? colorSpace:? deferred:? renderCallback:?];
    }

    goto LABEL_4;
  }

  _internalContext = [(CIContext *)self _internalContext];
  if ((*(*_internalContext + 16))(_internalContext) == 84 && CI::format_is_not_supported_as_destination_on_gles(v34))
  {
    v37 = ci_logger_api();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [CIContext(_createCGImageInternal) _createCGImage:v34 fromRect:? format:? premultiplied:? colorSpace:? deferred:? renderCallback:?];
    }

    goto LABEL_4;
  }

  v162 = v34;
  if (!space)
  {
    goto LABEL_21;
  }

  TypeID = CGColorSpaceGetTypeID();
  if (TypeID != CFGetTypeID(space) || !CGColorSpaceSupportsOutput(space))
  {
LABEL_18:
    v41 = ci_logger_api();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(_createCGImageInternal) *)v41 _createCGImage:v42 fromRect:v43 format:v44 premultiplied:v45 colorSpace:v46 deferred:v47 renderCallback:v48];
    }

    goto LABEL_4;
  }

  is_luminance = CI::format_is_luminance(v34);
  Model = CGColorSpaceGetModel(space);
  if (!is_luminance)
  {
    if (Model == kCGColorSpaceModelRGB)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (Model)
  {
    goto LABEL_18;
  }

LABEL_21:
  v188.origin.x = v23;
  v188.origin.y = v24;
  v188.size.width = v25;
  v188.size.height = v26;
  MidY = CGRectGetMidY(v188);
  *&buf[8] = 0;
  *v168 = 0;
  *buf = 0x3FF0000000000000;
  *&v168[8] = xmmword_19CF25100;
  *&v168[24] = MidY + MidY;
  v161 = [image imageByApplyingTransform:buf];
  _internalContext2 = [(CIContext *)self _internalContext];
  v51 = _internalContext2;
  callbackCopy = &__block_literal_global_15;
  if (callback)
  {
    callbackCopy = callback;
  }

  v155 = callbackCopy;
  if ((*(*_internalContext2 + 560))(_internalContext2))
  {
    var0 = deferred.var0;
  }

  else
  {
    var0 = -1;
  }

  if (v34 == 784 || v34 == 785)
  {
    v55 = -1;
  }

  else
  {
    v55 = var0;
  }

  v178 = 0;
  v179 = &v178;
  v180 = 0x2020000000;
  v181 = 0;
  v189.origin.x = v23;
  v189.origin.y = v24;
  v189.size.width = v25;
  v189.size.height = v26;
  v157 = v55;
  if (CGRectIsNull(v189))
  {
    v56 = 0;
    v57 = 0;
    v58 = 0x7FFFFFFF;
    v59 = 0x7FFFFFFF;
  }

  else
  {
    v190.origin.x = v23;
    v190.origin.y = v24;
    v190.size.width = v25;
    v190.size.height = v26;
    if (CGRectIsInfinite(v190))
    {
      v58 = -2147483647;
      v56 = 0xFFFFFFFFLL;
      v59 = -2147483647;
      v57 = 0xFFFFFFFFLL;
    }

    else
    {
      v191.origin.x = v23;
      v191.origin.y = v24;
      v191.size.width = v25;
      v191.size.height = v26;
      v192 = CGRectInset(v191, 0.000001, 0.000001);
      v193 = CGRectIntegral(v192);
      v58 = v193.origin.x;
      v59 = v193.origin.y;
      v56 = v193.size.width;
      v57 = v193.size.height;
    }
  }

  _internalRepresentation = [v161 _internalRepresentation];
  if ((*(*_internalRepresentation + 128))(_internalRepresentation))
  {
    [v161 extent];
    v203.origin.x = v23;
    v203.origin.y = v24;
    v203.size.width = v25;
    v203.size.height = v26;
    if (CGRectContainsRect(v194, v203))
    {
      if (v162 == 264)
      {
        v61 = 268;
      }

      else
      {
        v61 = v162;
      }

      if (v61 == 266)
      {
        v61 = 270;
      }

      if (v61 == 265)
      {
        v61 = 269;
      }

      if (v61 == 267)
      {
        v61 = 271;
      }

      if (v61 == 784)
      {
        v61 = 775;
      }

      if (v61 == 1800)
      {
        v61 = 1804;
      }

      if (v61 == 2056)
      {
        v61 = 2060;
      }

      if (v61 == 2312)
      {
        v61 = 2316;
      }

      if (v61 == 260)
      {
        v61 = 259;
      }

      if (v61 == 1796)
      {
        v61 = 1795;
      }

      if (v61 == 2052)
      {
        v61 = 2051;
      }

      if (v61 == 2308)
      {
        v61 = 2307;
      }

      v162 = v61;
    }
  }

  if (premultipliedCopy)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  if (CI::format_has_unpremul_alpha(v162))
  {
    v63 = 2;
  }

  else if (CI::format_has_alpha(v162))
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  v156 = v63;
  *buf = v58;
  *&buf[4] = v59;
  *&buf[8] = v56;
  *v168 = v57;
  v64 = v162;
  CI::Context::swizzler_for_output(v51, v162, buf, 0, v177);
  v159 = vcvtpd_u64_f64(v26);
  v160 = vcvtpd_u64_f64(v25);
  v176[0] = 0x3FF0000000000000;
  v176[1] = 0;
  v176[2] = 0;
  v176[3] = 0x3FF0000000000000;
  *&v176[4] = -v23;
  *&v176[5] = -v24;
  v174 = v177[0];
  v175 = 0;
  v65 = strcmp((v51 + 236), "CoreUI");
  if (*(_internalRepresentation + 113))
  {
    v66 = v65;
    [(CIContext *)self lock];
    ++*(v51 + 152);
    *(v51 + 192) = 0;
    *(v51 + 160) = v23;
    *(v51 + 168) = v24;
    *(v51 + 176) = v25;
    *(v51 + 184) = v26;
    (*(*v51 + 248))(v51, 0);
    v195.origin.x = (*(*_internalRepresentation + 88))(_internalRepresentation);
    v196 = CGRectIntegral(v195);
    v204.origin.x = v23;
    v204.origin.y = v24;
    v204.size.width = v25;
    v204.size.height = v26;
    if (!CGRectContainsRect(v196, v204))
    {
LABEL_86:
      [(CIContext *)self unlock];
      goto LABEL_87;
    }

    v67 = ci_signpost_log_render();
    v68 = (*(*v51 + 280))(v51) << 32;
    if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v67, OS_SIGNPOST_INTERVAL_BEGIN, v68, "create_cgimage_check", &unk_19CFBCBAE, buf, 2u);
    }

    v69 = (*(*v51 + 280))(v51);
    TimerBase::TimerBase(v182, v69, 0, "create_cgimage_check", 0);
    v197.origin.x = v23;
    v197.origin.y = v24;
    v197.size.width = v160;
    v197.size.height = v159;
    v70 = CI::Affine::applyToRect(v176, v197);
    v153 = v71;
    v154 = v72;
    v73 = v70;
    v75 = v74;
    *buf = v177[0];
    *v168 = v177[1];
    *&v168[16] = v177[2];
    v76 = CI::prepare_initial_graph(v51, "create_cgimage_check", _internalRepresentation, 0, space, v162, buf, v176, v23, v24, v160, v159, 1u, &v174);
    v78 = v76;
    if (!v66 && v157 == -1)
    {
LABEL_80:
      v79 = v179[3];
      if (v79)
      {
        CGImageGetColorSpace(v79);
        if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
        {
          CFAutorelease(v179[3]);
          CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v179[3], space);
          v179[3] = CopyWithColorSpace;
        }
      }

      CI::traverse_releasing_resources(v78, v77);
      if (v78)
      {
        CI::Object::unref(v78);
      }

      CI::create_cgimage(CIContext *,CIImage *,CGRect,CGColorSpace *,int,BOOL,CI::Trilean,void({block_pointer})(CGRect,NSError *))::SignpostTimer::~SignpostTimer(v182);
      goto LABEL_86;
    }

    if ((*(*v76 + 16))(v76) == 34)
    {
      if (v78[7] != 1.0 || v78[8] != 0.0 || v78[9] != 0.0 || v78[10] != 1.0 || vabdd_f64(v78[11], round(v78[11])) >= 1.0e-10 || vabdd_f64(v78[12], round(v78[12])) >= 1.0e-10)
      {
        goto LABEL_80;
      }

      CI::Affine::inverse((v78 + 7), buf);
      v198.origin.x = v73;
      v198.origin.y = v75;
      v198.size.width = v153;
      v198.size.height = v154;
      v90 = CI::Affine::applyToRect(buf, v198);
      v153 = v91;
      v154 = v92;
      v73 = v90;
      v75 = v93;
      v94 = (*(*v78 + 48))(v78, 0);
      v64 = v162;
    }

    else
    {
      v94 = v78;
    }

    if ((*(*v94 + 16))(v94) == 37 || (*(*v94 + 16))(v94) == 38)
    {
      v94 = (*(*v94 + 48))(v94, 0);
    }

    if ((*(*v94 + 16))(v94) == 55)
    {
      v98 = (*(*v94 + 424))(v94);
      if (v98 > 0xF || ((1 << v98) & 0xFC2B) == 0)
      {
        goto LABEL_80;
      }

      v94 = (*(*v94 + 48))(v94, 0);
    }

    if ((*(*v94 + 16))(v94) == 35)
    {
      v99 = *(v94 + 13);
      v100 = (*(*v94 + 176))(v94);
      v164 = v101;
      rect1 = v102;
      v103 = v100;
      v105 = v104;
      v107 = CI::format_from_CGImage(v99, v106);
      if (CI::format_has_alpha(v107))
      {
        has_alpha = CI::format_has_alpha(v64);
      }

      else
      {
        has_alpha = 1;
      }

      if (CI::format_is_rgb(v107) && (CI::format_is_rgb(v64) & 1) != 0)
      {
        v152 = 1;
      }

      else if (CI::format_is_luminance(v107))
      {
        v152 = CI::format_is_luminance(v64);
      }

      else
      {
        v152 = 0;
      }

      v120 = CI::format_bits_per_component(v107);
      v121 = CI::format_bits_per_component(v64);
      if (CGImageGetProperty() != *MEMORY[0x1E695E4D0] || v157 != -1)
      {
        v199.origin.x = v103;
        v199.origin.y = v105;
        v199.size.width = v164;
        v199.size.height = rect1;
        v205.origin.x = v73;
        v205.origin.y = v75;
        v205.size.width = v153;
        v205.size.height = v154;
        if ((CGRectContainsRect(v199, v205) & has_alpha & v152) == 1 && v120 == v121)
        {
          v200.origin.x = v73;
          v200.origin.y = v75;
          v200.size.width = v153;
          v200.size.height = v154;
          v122 = CGImageCreateWithImageInRect(v99, v200);
          v179[3] = v122;
        }
      }
    }

    else if ((*(*v94 + 16))(v94) == 54)
    {
      v151 = *(v94 + 7);
      v109 = (*(*v94 + 176))(v94);
      v149 = v111;
      v150 = v110;
      v112 = v109;
      v114 = v113;
      v144 = (*(*v94 + 432))(v94) != 2;
      v116 = CI::format_from_IOSurface(v151, v115);
      v145 = CI::format_CGBitmapInfo(v116, v144);
      v165 = v116;
      v117 = CI::format_has_alpha(v116) ? CI::format_has_alpha(v64) : 1;
      v148 = v117;
      if (CI::format_is_rgb(v165) && (CI::format_is_rgb(v64) & 1) != 0)
      {
        v147 = 1;
      }

      else
      {
        v147 = CI::format_is_luminance(v165) ? CI::format_is_luminance(v64) : 0;
      }

      v146 = CI::format_bits_per_component(v165);
      v135 = CI::format_bits_per_component(v64);
      v201.origin.x = v112;
      v201.origin.y = v114;
      v201.size.height = v149;
      v201.size.width = v150;
      v206.origin.x = v73;
      v206.origin.y = v75;
      v206.size.width = v153;
      v206.size.height = v154;
      if ((CGRectEqualToRect(v201, v206) & v148 & v147) == 1 && v146 == v135 && v145 != -1)
      {
        if (((*(*v94 + 432))(v94) || (CI::format_has_alpha(v64) & 1) == 0) && (CI::format_has_alpha(v165) & 1) != 0 || (v136 = CGImageCreateFromIOSurface(), (v179[3] = v136) == 0))
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *v168 = ___ZN2CIL14create_cgimageEP9CIContextP7CIImage6CGRectP12CGColorSpaceibNS_7TrileanEU13block_pointerFvS4_P7NSErrorE_block_invoke;
          *&v168[8] = &unk_1E75C2168;
          v171 = v165;
          v172 = v64;
          v173 = v144;
          v169 = v51;
          spaceCopy = space;
          *&v168[16] = &v178;
          *&v168[24] = v94;
          if (SurfaceApplyPlaneReadOnlyBlock(v151, buf))
          {
            v137 = ci_logger_render();
            if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
            {
              [(CIContext(_createCGImageInternal) *)v137 _createCGImage:v77 fromRect:v138 format:v139 premultiplied:v140 colorSpace:v141 deferred:v142 renderCallback:v143];
            }
          }
        }
      }
    }

    goto LABEL_80;
  }

LABEL_87:
  if (v157 != 1)
  {
    v81 = v159;
    if (v160 > v159)
    {
      v81 = v160;
    }

    if (v157 == -1 || v81 <= 0x1000)
    {
      if (v179[3])
      {
        if (!CGImageGetImageProvider())
        {
          goto LABEL_227;
        }

        CGImageRelease(v179[3]);
      }

      valuePtr = 0;
      _internalContext3 = [(CIContext *)self _internalContext];
      v87 = CI_IOSURFACE_WRAPPING(2u);
      v88 = *_internalContext3;
      if (v87)
      {
        v89 = (v88 + 552);
      }

      else
      {
        v89 = (v88 + 536);
      }

      (*v89)(_internalContext3, v64);
      CI::format_bytes_per_pixel(v64);
      v95 = ci_signpost_log_render();
      v96 = (*(*_internalContext3 + 280))(_internalContext3) << 32;
      if (v96 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
      {
        *v182 = 134218240;
        *&v182[4] = v160;
        *&v182[12] = 2048;
        *&v182[14] = v159;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v95, OS_SIGNPOST_INTERVAL_BEGIN, v96, "new_bitmap", "[%zu %zu]", v182, 0x16u);
      }

      v97 = (*(*_internalContext3 + 280))(_internalContext3);
      TimerBase::TimerBase(v182, v97, 0, "new_bitmap", 0);
      operator new();
    }
  }

  if (v179[3])
  {
    goto LABEL_227;
  }

  _createClone = [(CIContext *)self _createClone];
  _internalContext4 = [_createClone _internalContext];
  v83 = 0;
  if (v64 > 1799)
  {
    if (v64 > 2059)
    {
      v85 = v64;
      if (v64 <= 2311)
      {
        if (v64 <= 2307)
        {
          if (v64 == 2060)
          {
            goto LABEL_199;
          }

          if (v64 != 2307)
          {
            goto LABEL_183;
          }

          goto LABEL_166;
        }

        if (v64 == 2308)
        {
          goto LABEL_199;
        }

        if (v64 != 2311)
        {
          goto LABEL_183;
        }
      }

      else
      {
        if (v64 <= 2315)
        {
          if (v64 == 2312)
          {
            goto LABEL_199;
          }

          if (v64 == 2313)
          {
            v83 = 0;
            v85 = 2312;
            goto LABEL_199;
          }

          goto LABEL_183;
        }

        if (v64 == 2316)
        {
          goto LABEL_199;
        }

        if (v64 != 2317)
        {
          if (v64 != 3331)
          {
            goto LABEL_183;
          }

          goto LABEL_165;
        }
      }

      v83 = 0;
      v85 = 2316;
      goto LABEL_199;
    }

    if (v64 > 2050)
    {
      if (v64 > 2054)
      {
        if (v64 == 2055)
        {
          v83 = 0;
          v85 = 2060;
          goto LABEL_199;
        }

        v85 = v64;
        if (v64 != 2056)
        {
          goto LABEL_183;
        }

        goto LABEL_199;
      }

      if (v64 != 2051)
      {
        v85 = v64;
        if (v64 != 2052)
        {
          goto LABEL_183;
        }

        goto LABEL_199;
      }

      goto LABEL_166;
    }

    v85 = v64;
    if (v64 <= 1803)
    {
      if (v64 != 1800)
      {
        if (v64 != 1801)
        {
          goto LABEL_183;
        }

        v83 = 0;
        v85 = 1800;
      }

      goto LABEL_199;
    }

    if (v64 == 1804)
    {
      goto LABEL_199;
    }

    if (v64 != 1805)
    {
      goto LABEL_183;
    }

    goto LABEL_180;
  }

  if (v64 > 770)
  {
    if (v64 <= 784)
    {
      if (v64 != 771)
      {
        if (v64 != 775)
        {
          v85 = v64;
          if (v64 != 784)
          {
            goto LABEL_183;
          }

          goto LABEL_199;
        }

LABEL_167:
        v85 = v64;
        goto LABEL_199;
      }

LABEL_165:
      v85 = 1795;
      v83 = 1;
      goto LABEL_199;
    }

    if (v64 <= 1795)
    {
      if (v64 == 785)
      {
        v83 = 0;
        v85 = 784;
        goto LABEL_199;
      }

      if (v64 != 1795)
      {
        goto LABEL_183;
      }

      goto LABEL_165;
    }

    v85 = v64;
    if (v64 == 1796)
    {
      goto LABEL_199;
    }

    if (v64 != 1799)
    {
      goto LABEL_183;
    }

LABEL_180:
    v83 = 0;
    v85 = 1804;
    goto LABEL_199;
  }

  if (v64 > 263)
  {
    if ((v64 - 264) <= 7)
    {
      v84 = 1 << (v64 - 8);
      if ((v84 & 0xE) != 0)
      {
        v83 = 0;
        v85 = 264;
        goto LABEL_199;
      }

      v85 = v64;
      if ((v84 & 0xE0) == 0)
      {
        goto LABEL_199;
      }

      goto LABEL_164;
    }

    goto LABEL_183;
  }

  if (v64 == 259)
  {
LABEL_166:
    v83 = 1;
    goto LABEL_167;
  }

  v85 = v64;
  if (v64 != 260)
  {
    if (v64 == 263)
    {
LABEL_164:
      v83 = 0;
      v85 = 268;
      goto LABEL_199;
    }

LABEL_183:
    v118 = ci_logger_render();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      v119 = CI::name_for_format(v64);
      [CIContext(_createCGImageInternal) _createCGImage:v119 fromRect:v182 format:v118 premultiplied:? colorSpace:? deferred:? renderCallback:?];
    }

    goto LABEL_225;
  }

LABEL_199:
  if ((CI::format_is_half_float(v64) & 1) == 0 && (CI::format_is_full_float(v64) & 1) == 0 && v85 != 775 && v85 != 784)
  {
    CI::format_is_deep(v64);
  }

  Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (CI::format_has_alpha(v64))
  {
    if (v156 == 1)
    {
      v125 = MEMORY[0x1E695F2C8];
      goto LABEL_211;
    }

    if (v156 == 2)
    {
      v125 = MEMORY[0x1E695F2B8];
LABEL_211:
      __CFDictionary::setValue(Mutable, *v125, 1, v124);
    }
  }

  else if ((v83 & 1) == 0)
  {
    v125 = MEMORY[0x1E695F2C0];
    goto LABEL_211;
  }

  *v182 = xmmword_1F10308D0;
  *&v182[16] = *&off_1F10308E0;
  v126 = malloc_type_calloc(1uLL, 0x50uLL, 0x108004010BCB57AuLL);
  *v126 = _createClone;
  v126[1] = v161;
  *(v126 + 4) = v85;
  v126[3] = v156;
  *(v126 + 4) = v23;
  *(v126 + 5) = v24;
  *(v126 + 6) = v25;
  *(v126 + 7) = v26;
  v126[9] = _Block_copy(v155);
  v127 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v126[8] = dispatch_queue_create("CI_CGImageProviderCallbackQueue", v127);
  if (CGImageProviderCreate())
  {
    CGImageProviderSetProperty();
    v129 = CI::format_bytes_per_row(v64, v160);
    if (v129)
    {
      v130 = (*(*_internalContext4 + 496))(_internalContext4) / (2 * v129);
      if (v130 >= (0x4000000 / v129))
      {
        LODWORD(v130) = 0x4000000 / v129;
      }

      if (v130 >= v159)
      {
        LODWORD(v130) = v159;
      }

      LODWORD(valuePtr) = v130;
      v131 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CGImageProviderSetProperty();
      if (v131)
      {
        CFRelease(v131);
      }
    }

    v132 = CGImageCreateWithImageProvider();
    CGImageProviderRelease();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v132)
    {
      CGImageSetProperty();
    }

    goto LABEL_226;
  }

  CI::_providerInfoReleaseCallback(v126, v128);
LABEL_225:
  v132 = 0;
LABEL_226:
  v179[3] = v132;

LABEL_227:
  [v161 contentHeadroom];
  v134 = v133;
  if (!CGColorSpaceIsPQBased(space) && !CGColorSpaceUsesITUR_2100TF(space) && CGColorSpaceUsesExtendedRange(space))
  {
    CI::format_is_float(v64);
  }

  if (v134 >= 1.0)
  {
    CGImageSetHeadroom();
  }

  v32 = v179[3];
  _Block_object_dispose(&v178, 8);
LABEL_5:
  objc_autoreleasePoolPop(v20);
  return v32;
}

- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space deferred:(BOOL)deferred renderCallback:(id)callback
{
  deferredCopy = deferred;
  premultipliedCopy = premultiplied;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19 = CI::format_modernize(*&format, "[CIContext(createCGImageInternal) createCGImage:fromRect:format:premultiplied:colorSpace:deferred:renderCallback:]", image);
  if (deferredCopy)
  {
    v20 = 1;
  }

  else
  {
    v20 = 255;
  }

  return [(CIContext *)self _createCGImage:image fromRect:v19 format:premultipliedCopy premultiplied:space colorSpace:v20 deferred:callback renderCallback:x, y, width, height];
}

- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect
{
  height = fromRect.size.height;
  width = fromRect.size.width;
  y = fromRect.origin.y;
  x = fromRect.origin.x;
  v10 = CGColorSpaceRetain([(CIContext *)self _outputColorSpace]);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_5;
  }

  Model = CGColorSpaceGetModel(v10);
  if (Model != kCGColorSpaceModelRGB)
  {
    if (Model == kCGColorSpaceModelMonochrome)
    {
      v13 = &kCIFormatLA8;
      goto LABEL_9;
    }

LABEL_5:
    CGColorSpaceRelease(v11);
    v11 = +[CIContext defaultRGBColorSpace];
    v13 = &kCIFormatRGBA8;
    goto LABEL_9;
  }

  v14 = CGColorSpaceUsesExtendedRange(v11);
  if (CGColorSpaceUsesITUR_2100TF(v11) || v14)
  {
    v13 = &kCIFormatRGBAh;
  }

  else
  {
    v13 = &kCIFormatRGBA8;
  }

LABEL_9:
  height = [(CIContext *)self createCGImage:image fromRect:*v13 format:v11 colorSpace:x, y, width, height];
  CGColorSpaceRelease(v11);
  return height;
}

- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format
{
  v5 = *&format;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _outputColorSpace = [(CIContext *)self _outputColorSpace];
  v14 = CI::format_modernize(v5, "[CIContext(createCGImage) createCGImage:fromRect:format:]", v13);
  TypeID = CGColorSpaceGetTypeID();
  if (TypeID == CFGetTypeID(_outputColorSpace) && CGColorSpaceSupportsOutput(_outputColorSpace))
  {
    is_luminance = CI::format_is_luminance(v14);
    Model = CGColorSpaceGetModel(_outputColorSpace);
    if (is_luminance)
    {
      if (Model)
      {
        goto LABEL_5;
      }
    }

    else if (Model != kCGColorSpaceModelRGB)
    {
      goto LABEL_5;
    }

    CGColorSpaceRetain(_outputColorSpace);
    goto LABEL_9;
  }

LABEL_5:
  if (CI::format_is_luminance(v14))
  {
    v18 = +[CIContext defaultGrayColorSpace];
  }

  else
  {
    v18 = +[CIContext defaultRGBColorSpace];
  }

  _outputColorSpace = v18;
LABEL_9:
  height = [(CIContext *)self createCGImage:image fromRect:v14 format:_outputColorSpace colorSpace:x, y, width, height];
  CGColorSpaceRelease(_outputColorSpace);
  return height;
}

- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace
{
  height = fromRect.size.height;
  width = fromRect.size.width;
  y = fromRect.origin.y;
  x = fromRect.origin.x;
  v13 = CI::format_modernize(*&format, "[CIContext(createCGImage) createCGImage:fromRect:format:colorSpace:]", image);
  v14 = *([(CIContext *)self _internalContext]+ 40);

  return [(CIContext *)self _createCGImage:image fromRect:v13 format:v14 premultiplied:colorSpace colorSpace:0 deferred:0 renderCallback:x, y, width, height];
}

- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace deferred:(BOOL)deferred
{
  v7 = deferred;
  height = fromRect.size.height;
  width = fromRect.size.width;
  y = fromRect.origin.y;
  x = fromRect.origin.x;
  v15 = CI::format_modernize(*&format, "[CIContext(createCGImage) createCGImage:fromRect:format:colorSpace:deferred:]", image);
  v16 = *([(CIContext *)self _internalContext]+ 40);
  if (v7)
  {
    v17 = 1;
  }

  else
  {
    v17 = 255;
  }

  return [(CIContext *)self _createCGImage:image fromRect:v15 format:v16 premultiplied:colorSpace colorSpace:v17 deferred:0 renderCallback:x, y, width, height];
}

- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format colorSpace:(CGColorSpace *)space deferred:(BOOL)deferred calculateHDRStats:(BOOL)stats
{
  statsCopy = stats;
  result = [(CIContext *)self createCGImage:image fromRect:*&format format:space colorSpace:deferred deferred:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v11 = result;
  if (statsCopy)
  {
    if (result)
    {
      v12 = [(CIContext *)self calculateHDRStatsForCGImage:result];
      CGImageRelease(v11);
      return v12;
    }
  }

  return result;
}

- (id)gainMapImageForSDR:(id)r HDR:(id)dR colorSpace:(CGColorSpace *)space rgbGainmap:(BOOL)gainmap
{
  v119 = *MEMORY[0x1E69E9840];
  if (!dR)
  {
    return 0;
  }

  gainmapCopy = gainmap;
  [dR extent];
  if (CGRectIsEmpty(v120))
  {
    return 0;
  }

  [dR extent];
  if (CGRectIsInfinite(v121))
  {
    return 0;
  }

  [dR contentHeadroom];
  v12 = v11;
  ExtendedLinearized = CGColorSpaceCreateExtendedLinearized(space);
  if (!ExtendedLinearized)
  {
    ExtendedLinearized = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  }

  v14 = [r imageByColorMatchingWorkingSpaceToColorSpace:ExtendedLinearized];
  v15 = [dR imageByColorMatchingWorkingSpaceToColorSpace:ExtendedLinearized];
  CGColorSpaceRelease(ExtendedLinearized);
  _imageByClampingAlpha = [v14 _imageByClampingAlpha];
  [v15 extent];
  v18 = -v17;
  [v15 extent];
  CGAffineTransformMakeTranslation(&v103, v18, -v19);
  v118 = v103;
  v20 = [v15 imageByApplyingTransform:&v118 highQualityDownsample:0];
  [_imageByClampingAlpha extent];
  v22 = -v21;
  [_imageByClampingAlpha extent];
  CGAffineTransformMakeTranslation(&v118, v22, -v23);
  v103 = v118;
  v24 = [_imageByClampingAlpha imageByApplyingTransform:&v118 highQualityDownsample:0];
  [(CIImage *)v24 extent];
  v26 = v25;
  [(CIImage *)v20 extent];
  *&v26 = v26 / v27;
  [(CIImage *)v24 extent];
  v29 = v28;
  [(CIImage *)v20 extent];
  v31 = v29 / v30;
  v32 = downScale(v20, *&v26, v31);
  [(CIImage *)v32 extent];
  v34 = v33;
  [(CIImage *)v24 extent];
  *&v34 = v34 / v35;
  [(CIImage *)v32 extent];
  v37 = v36;
  [(CIImage *)v24 extent];
  v39 = v37 / v38;
  v40 = downScale(v24, *&v34, v39);
  v118.a = 0.0;
  v118.b = 0.0;
  v41 = [[CIRenderDestination alloc] initWithBitmapData:&v118 width:1 height:1 bytesPerRow:16 format:?];
  v42 = v41;
  [(CIRenderDestination *)v41 setColorSpace:0];
  v43 = MEMORY[0x1E695EFF8];
  if (v12 == 0.0)
  {
    v44 = downScale([(CIImage *)v32 imageByApplyingFilter:@"CIMaximumComponent"], 0.125, 0.125);
    v116 = @"inputExtent";
    [(CIImage *)v44 extent];
    v117 = [CIVector vectorWithCGRect:?];
    -[CIRenderTask waitUntilCompletedAndReturnError:](-[CIContext startTaskToRender:fromRect:toDestination:atPoint:error:](self, "startTaskToRender:fromRect:toDestination:atPoint:error:", -[CIImage imageByApplyingFilter:withInputParameters:](v44, "imageByApplyingFilter:withInputParameters:", @"CIAreaMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1]), v41, 0, 0.0, 0.0, 1.0, 1.0, *v43, v43[1]), "waitUntilCompletedAndReturnError:", 0);
    _H0 = LOWORD(v118.a);
    __asm { FCVT            D0, H0 }

    v51 = fmax(_D0, 1.0);
  }

  else
  {
    v51 = v12;
  }

  v52 = v51;
  v53 = log2f(v52);
  if (v51 <= 1.0)
  {
    return 0;
  }

  v54 = v53;
  v55 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_flexMapLinGain];
  v102 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_flexMapLinGainRGB];
  [(CIImage *)v32 extent];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v115[0] = v32;
  v115[1] = v40;
  v115[2] = &unk_1F10852A8;
  v115[3] = &unk_1F10852A8;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:4];
  v113 = @"kCIKernelOutputFormat";
  v114 = [MEMORY[0x1E696AD98] numberWithInt:2053];
  v65 = -[CIColorKernel applyWithExtent:arguments:options:](v55, "applyWithExtent:arguments:options:", v64, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1], v57, v59, v61, v63);
  [(CIImage *)v32 extent];
  _D9 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v112[0] = v32;
  v112[1] = v40;
  v112[2] = &unk_1F10852A8;
  v112[3] = &unk_1F10852A8;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:4];
  v110 = @"kCIKernelOutputFormat";
  v111 = [MEMORY[0x1E696AD98] numberWithInt:2056];
  v75 = -[CIColorKernel applyWithExtent:arguments:options:](v102, "applyWithExtent:arguments:options:", v74, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1], _D9, v69, v71, v73);
  v76 = downScale([v65 imageByApplyingFilter:@"CIMedianFilter"], 0.125, 0.125);
  v108 = @"inputExtent";
  [(CIImage *)v76 extent];
  v109 = [CIVector vectorWithCGRect:?];
  v77 = -[CIImage imageByApplyingFilter:withInputParameters:](v76, "imageByApplyingFilter:withInputParameters:", @"CIAreaMinMaxRed", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1]);
  [(CIRenderTask *)[(CIContext *)self startTaskToRender:v77 fromRect:v41 toDestination:0 atPoint:0.0 error:0.0 waitUntilCompletedAndReturnError:1.0, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)], "waitUntilCompletedAndReturnError:", 0];
  _H0 = LOWORD(v118.a);
  __asm { FCVT            S0, H0; float }

  _H1 = WORD1(v118.a);
  __asm { FCVT            S9, H1 }

  v81 = log2f(_S0);
  v82 = log2f(*&_D9);
  if (v81 > -0.01 && v81 <= 0.0)
  {
    v81 = 0.0;
  }

  if (gainmapCopy)
  {
    v84 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_flexMapImageRGB];
    [v75 extent];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v107 = v75;
    v93 = &v107;
  }

  else
  {
    v84 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_flexMapImage];
    [v65 extent];
    v86 = v85;
    v88 = v95;
    v90 = v96;
    v92 = v97;
    v106 = v65;
    v93 = &v106;
  }

  *&v85 = v81;
  v93[1] = [MEMORY[0x1E696AD98] numberWithFloat:v85];
  *&v98 = v82;
  v93[2] = [MEMORY[0x1E696AD98] numberWithFloat:v98];
  v99 = -[CIColorKernel applyWithExtent:arguments:](v84, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:3], v86, v88, v90, v92);
  v104[0] = @"kCIImageRepresentationISOGainMapAlternateHeadroom";
  v105[0] = [MEMORY[0x1E696AD98] numberWithDouble:v54];
  v105[1] = &unk_1F1083148;
  v104[1] = @"kCIImageRepresentationISOGainMapBaseHeadroom";
  v104[2] = @"kCIImageRepresentationISOGainMapMin";
  *&v100 = v81;
  v105[2] = [MEMORY[0x1E696AD98] numberWithFloat:v100];
  v104[3] = @"kCIImageRepresentationISOGainMapMax";
  *&v101 = v82;
  v105[3] = [MEMORY[0x1E696AD98] numberWithFloat:v101];
  v105[4] = &unk_1F10852A8;
  v104[4] = @"kCIImageRepresentationISOGainMapOffset";
  v104[5] = @"kCIImageRepresentationISOGainMapGamma";
  v105[5] = &unk_1F1083158;
  v104[6] = @"kCIImageRepresentationHDRGainMapAsRGB";
  v105[6] = [MEMORY[0x1E696AD98] numberWithBool:gainmapCopy];
  return -[CIImage imageBySettingProperties:](v99, "imageBySettingProperties:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:7]);
}

- (id)addAuxOptionsForSDR:(id)r HDR:(id)dR colorSpace:(CGColorSpace *)space rgbGainmap:(BOOL)gainmap
{
  v10[8] = *MEMORY[0x1E69E9840];
  result = [(CIContext *)self gainMapImageForSDR:r HDR:dR colorSpace:space rgbGainmap:gainmap];
  if (result)
  {
    v7 = result;
    result = [result properties];
    if (result)
    {
      v8 = result;
      v9[0] = @"kCIImageRepresentationISOGainMapAlternateHeadroom";
      v10[0] = [result objectForKeyedSubscript:?];
      v9[1] = @"kCIImageRepresentationISOGainMapBaseHeadroom";
      v10[1] = [v8 objectForKeyedSubscript:?];
      v9[2] = @"kCIImageRepresentationISOGainMapMin";
      v10[2] = [v8 objectForKeyedSubscript:?];
      v9[3] = @"kCIImageRepresentationISOGainMapMax";
      v10[3] = [v8 objectForKeyedSubscript:?];
      v9[4] = @"kCIImageRepresentationISOGainMapOffset";
      v10[4] = [v8 objectForKeyedSubscript:?];
      v9[5] = @"kCIImageRepresentationISOGainMapGamma";
      v10[5] = [v8 objectForKeyedSubscript:?];
      v9[6] = @"kCIImageRepresentationHDRGainMapAsRGB";
      v9[7] = @"kCIImageRepresentationISOGainMapImage";
      v10[6] = [v8 objectForKeyedSubscript:?];
      v10[7] = v7;
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:8];
    }
  }

  return result;
}

- (id)_dataRepresentationOfImage:(id)image UTIType:(id)type format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space options:(id)options addAuxData:(BOOL)data keysToMerge:(id)self0 error:(id *)self1
{
  premultipliedCopy = premultiplied;
  v13 = *&format;
  v230 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v197 = 0;
  v198 = &v197;
  v199 = 0x5012000000;
  v200 = __Block_byref_object_copy__1;
  v201 = __Block_byref_object_dispose__1;
  v202 = &unk_19D0E11CF;
  v17 = *(MEMORY[0x1E695F050] + 16);
  v203 = *MEMORY[0x1E695F050];
  v204 = v17;
  v191 = 0;
  v192 = &v191;
  v193 = 0x3052000000;
  v194 = __Block_byref_object_copy__58;
  v195 = __Block_byref_object_dispose__59;
  v196 = 0;
  if (([type isEqual:@"public.jpeg"] & 1) == 0)
  {
    [type isEqual:@"public.heic"];
  }

  [image extent];
  v190[0] = MEMORY[0x1E69E9820];
  v190[1] = 3221225472;
  v190[2] = __138__CIContext_ImageRepresentation___dataRepresentationOfImage_UTIType_format_premultiplied_colorSpace_options_addAuxData_keysToMerge_error___block_invoke;
  v190[3] = &unk_1E75C2238;
  v190[4] = &v197;
  v190[5] = &v191;
  v18 = [(CIContext *)self createCGImage:image fromRect:v13 format:premultipliedCopy premultiplied:space colorSpace:1 deferred:v190 renderCallback:?];
  v19 = v18;
  if (!v18)
  {
    *&v212 = @"CINonLocalizedDescriptionKey";
    *&buf = @"failed to create data representation.";
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v212 count:1];
    v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v34];
    v36 = v35;
LABEL_183:
    data = 0;
    goto LABEL_184;
  }

  CFAutorelease(v18);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary addEntriesFromDictionary:{objc_msgSend(image, "properties")}];
  v21 = *MEMORY[0x1E696DD50];
  v208[0] = *MEMORY[0x1E696D890];
  v208[1] = v21;
  v22 = *MEMORY[0x1E696DEF0];
  v208[2] = *MEMORY[0x1E696D448];
  v208[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v208 count:4];
  selfCopy = self;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v186 objects:v207 count:16];
  if (v24)
  {
    v25 = *v187;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v187 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [dictionary removeObjectForKey:*(*(&v186 + 1) + 8 * i)];
      }

      v24 = [v23 countByEnumeratingWithState:&v186 objects:v207 count:16];
    }

    while (v24);
  }

  imageCopy = image;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v27 = [merge countByEnumeratingWithState:&v182 objects:v206 count:16];
  if (v27)
  {
    v28 = *v183;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v183 != v28)
        {
          objc_enumerationMutation(merge);
        }

        v30 = *(*(&v182 + 1) + 8 * j);
        if ([options objectForKey:v30])
        {
          [dictionary setObject:objc_msgSend(options forKey:{"objectForKey:", v30), v30}];
        }
      }

      v27 = [merge countByEnumeratingWithState:&v182 objects:v206 count:16];
    }

    while (v27);
  }

  v31 = imageCopy;
  if ([type isEqual:@"public.tiff"])
  {
    v32 = *MEMORY[0x1E696DF28];
    dictionary2 = [objc_msgSend(dictionary objectForKey:{*MEMORY[0x1E696DF28]), "mutableCopy"}];
    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    if (CI::format_is_deep(v13))
    {
      [dictionary2 removeObjectForKey:*MEMORY[0x1E696DF10]];
    }

    else
    {
      [dictionary2 setObject:&unk_1F10819C8 forKey:*MEMORY[0x1E696DF10]];
    }

    [dictionary setObject:dictionary2 forKeyedSubscript:v32];
  }

  data = objc_alloc_init(MEMORY[0x1E695DF88]);
  v37 = CGImageDestinationCreateWithData(data, type, 1uLL, 0);
  v38 = v37;
  if (!v37)
  {

    *&v212 = @"CINonLocalizedDescriptionKey";
    *&buf = @"failed to create data representation.";
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v212 count:1];
    v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v45];
    v46 = v35;
    goto LABEL_183;
  }

  CFAutorelease(v37);
  CGImageDestinationAddImage(v38, v19, dictionary);
  if (!data)
  {
    goto LABEL_174;
  }

  v39 = -[CIContext addAuxOptionsForSDR:HDR:colorSpace:rgbGainmap:](selfCopy, "addAuxOptionsForSDR:HDR:colorSpace:rgbGainmap:", imageCopy, [options objectForKeyedSubscript:@"kCIImageRepresentationHDRImage"], space, objc_msgSend(objc_msgSend(options, "objectForKeyedSubscript:", @"kCIImageRepresentationHDRGainMapAsRGB"), "BOOLValue"));
  if (v39)
  {
    optionsCopy = v39;
  }

  else
  {
    optionsCopy = options;
  }

  v41 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationHDRGainMapImage"];
  v42 = v41;
  if (v41)
  {
    v43 = *MEMORY[0x1E696D270];
    v44 = v41;
  }

  else
  {
    v44 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapImage"];
    if (!v44)
    {
      goto LABEL_89;
    }

    v43 = @"kCGImageAuxiliaryDataTypeISOGainMap";
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v44 extent];
    x = v231.origin.x;
    y = v231.origin.y;
    width = v231.size.width;
    height = v231.size.height;
    if (CGRectIsInfinite(v231) || (v232.origin.x = x, v232.origin.y = y, v232.size.width = width, v232.size.height = height, CGRectIsEmpty(v232)))
    {
      v51 = ci_logger_api();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [CIContext(ImageRepresentation) _dataRepresentationOfImage:UTIType:format:premultiplied:colorSpace:options:addAuxData:keysToMerge:error:];
      }

      goto LABEL_89;
    }

    metadataa = CGImageMetadataCreateMutable();
    if (!v42)
    {
      v55 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapBaseHeadroom"];
      v56 = &unk_1F1083148;
      if (v55)
      {
        v56 = v55;
      }

      v173 = v56;
      v57 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapAlternateHeadroom"];
      v58 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapMin"];
      if (v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v173;
      }

      v60 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapMax"];
      if (v60)
      {
        v61 = v60;
      }

      else
      {
        v61 = v57;
      }

      v62 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapOffset"];
      if (v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = &unk_1F1083168;
      }

      v64 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapGamma"];
      if (v64)
      {
        v65 = v64;
      }

      else
      {
        v65 = &unk_1F1083158;
      }

      v66 = [objc_msgSend(optionsCopy objectForKeyedSubscript:{@"kCIImageRepresentationHDRGainMapAsRGB", "BOOLValue"}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & (v57 != 0)) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(__CFString *)v173 floatValue];
                v68 = v67;
                [v57 floatValue];
                v70 = v69;
                CGImageMetadataRegisterNamespaceForPrefix(metadataa, @"http://ns.apple.com/HDRToneMap/1.0/", @"HDRToneMap", 0);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:Version", @"1");
                LODWORD(v71) = v68;
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:BaseHeadroom", [MEMORY[0x1E696AD98] numberWithFloat:v71]);
                LODWORD(v72) = v70;
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:AlternateHeadroom", [MEMORY[0x1E696AD98] numberWithFloat:v72]);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:BaseColorIsWorkingColor", @"True");
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:ChannelMetadata[0].BaseOffset", v63);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:ChannelMetadata[0].AlternateOffset", v63);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:ChannelMetadata[0].GainMapMin", v59);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:ChannelMetadata[0].GainMapMax", v61);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:ChannelMetadata[0].Gamma", v65);
              }
            }
          }
        }
      }

      if (v66)
      {
        v73 = 1;
        v74 = 1380401729;
        v75 = 2;
      }

      else
      {
        v73 = 0;
        v75 = 0;
        v74 = 1278226488;
      }

      goto LABEL_85;
    }

    v53 = CGImageMetadataCopyTagWithPath([objc_msgSend(v44 "properties")], 0, @"HDRGainMap:HDRGainMapHeadroom");
    if (v53)
    {
      v54 = 0.0;
      CFRelease(v53);
    }

    else
    {
      [imageCopy _makernoteMeteorHeadroom];
      v54 = v76;
    }

    v77 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationHDRGainMapHeadroom"];
    if (v77 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v77 floatValue];
      v54 = v78;
    }

    else if (v54 <= 0.0)
    {
      goto LABEL_81;
    }

    if (v54 > 0.0)
    {
      if (v54 <= 1.0)
      {
        v79 = 0x10000;
      }

      else
      {
        v79 = 0x20000;
      }

      MetadataAddVersion(metadataa, @"HDRGainMap", @"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMapVersion", v79);
      v74 = 1278226488;
      if (v54 > 1.0)
      {
        *&v80 = v54;
        CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRGainMap:HDRGainMapHeadroom", [MEMORY[0x1E696AD98] numberWithFloat:v80]);
      }

      goto LABEL_83;
    }

LABEL_81:
    v81 = [objc_msgSend(v44 "properties")];
    v74 = 1278226488;
    if (v81)
    {
      CFRelease(metadataa);
      v82 = v81;
      v73 = 0;
      v75 = 0;
      metadataa = v81;
LABEL_85:
      v83 = vcvtmd_u64_f64(width);
      v84 = vcvtmd_u64_f64(height);
      v85 = ((v83 << v75) + 15) & 0xFFFFFFFFFFFFFFF0;
      v86 = [MEMORY[0x1E695DF88] dataWithLength:v85 * v84];
      mutableBytes = [(__CFString *)v86 mutableBytes];
      v88 = &kCIFormatRGBX8;
      if (!v73)
      {
        v88 = &kCIFormatL8;
      }

      [(CIContext *)selfCopy render:v44 toBitmap:mutableBytes rowBytes:v85 bounds:*v88 format:0 colorSpace:0.0, 0.0, v83, v84];
      v89 = *MEMORY[0x1E696D228];
      v220 = *MEMORY[0x1E696D218];
      v221 = v89;
      v225 = v86;
      v226 = metadataa;
      v222 = *MEMORY[0x1E696D220];
      *&v212 = @"BytesPerRow";
      *&buf = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v85];
      *(&v212 + 1) = @"Height";
      *(&buf + 1) = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v84];
      *&v213 = @"Width";
      v210 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v83];
      *(&v213 + 1) = @"PixelFormat";
      v211 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v74];
      v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v212 count:4];
      v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v220 count:3];
      CFRelease(metadataa);
      if (v90)
      {
        CGImageDestinationAddAuxiliaryDataInfo(v38, v43, v90);
      }

      goto LABEL_89;
    }

LABEL_83:
    v73 = 0;
    v75 = 0;
    goto LABEL_85;
  }

  v52 = ci_logger_api();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    [CIContext(ImageRepresentation) _dataRepresentationOfImage:UTIType:format:premultiplied:colorSpace:options:addAuxData:keysToMerge:error:];
  }

LABEL_89:
  v91 = [options objectForKey:@"kCIImageRepresentationAVPortraitEffectsMatte"];
  v92 = [options objectForKey:@"kCIImageRepresentationPortraitEffectsMatteImage"];
  auxiliaryImageDataType[0] = *MEMORY[0x1E696D288];
  if (v92)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v92 = 0;
    }
  }

  [v92 extent];
  v93 = v233.origin.x;
  v94 = v233.origin.y;
  v95 = v233.size.width;
  v96 = v233.size.height;
  if (CGRectIsInfinite(v233) || (v234.origin.x = v93, v234.origin.y = v94, v234.size.width = v95, v234.size.height = v96, CGRectIsEmpty(v234)))
  {
    v92 = 0;
  }

  if (isKind_AVPortraitEffectsMatteClass(v91))
  {
    v97 = v91;
  }

  else
  {
    v97 = 0;
  }

  if (v92 || !v97)
  {
    if (!v92)
    {
      goto LABEL_106;
    }

    v99 = vcvtmd_u64_f64(v95);
    v100 = vcvtmd_u64_f64(v96);
    v100 = [MEMORY[0x1E695DF88] dataWithLength:((v99 + 15) & 0xFFFFFFFFFFFFFFF0) * v100];
    [(CIContext *)selfCopy render:v92 toBitmap:[(__CFString *)v100 mutableBytes] rowBytes:(v99 + 15) & 0xFFFFFFFFFFFFFFF0 bounds:259 format:0 colorSpace:0.0, 0.0, v99, v100];
    Mutable = CGImageMetadataCreateMutable();
    MetadataAddVersion(Mutable, @"portraitEffectsMatte", @"http://ns.apple.com/portraitEffectsMatte/1.0/", @"PortraitEffectsMatteVersion", 0x10000);
    v225 = v100;
    v220 = @"kCGImageAuxiliaryDataInfoData";
    v221 = @"kCGImageAuxiliaryDataInfoDataDescription";
    *&v212 = @"BytesPerRow";
    *&buf = [MEMORY[0x1E696AD98] numberWithUnsignedLong:(v99 + 15) & 0xFFFFFFFFFFFFFFF0];
    *(&v212 + 1) = @"Height";
    *(&buf + 1) = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v100];
    *&v213 = @"Width";
    v210 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v99];
    *(&v213 + 1) = @"PixelFormat";
    v211 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1278226488];
    v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v212 count:4];
    v222 = @"kCGImageAuxiliaryDataInfoMetadata";
    v226 = v103;
    v227 = Mutable;
    v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v220 count:3];
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v98 = AVPortraitEffectsMatteDictionaryRepresentation(v97, auxiliaryImageDataType);
  }

  if (v98)
  {
    CGImageDestinationAddAuxiliaryDataInfo(v38, auxiliaryImageDataType[0], v98);
  }

LABEL_106:
  v225 = @"kCIImageRepresentationSemanticSegmentationSkinMatteImage";
  v226 = @"kCIImageRepresentationSemanticSegmentationHairMatteImage";
  v227 = @"kCIImageRepresentationSemanticSegmentationTeethMatteImage";
  v228 = @"kCIImageRepresentationSemanticSegmentationGlassesMatteImage";
  v229 = @"kCIImageRepresentationSemanticSegmentationSkyMatteImage";
  v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v225 count:5];
  v105 = *MEMORY[0x1E696D298];
  v220 = *MEMORY[0x1E696D2A0];
  v221 = v105;
  v106 = *MEMORY[0x1E696D290];
  v222 = *MEMORY[0x1E696D2B0];
  v223 = v106;
  v224 = *MEMORY[0x1E696D2A8];
  metadatab = [MEMORY[0x1E695DEC8] arrayWithObjects:&v220 count:5];
  if ([v104 count])
  {
    v108 = 0;
    v172 = *MEMORY[0x1E696D218];
    v170 = *MEMORY[0x1E696D220];
    v171 = *MEMORY[0x1E696D228];
    *&v107 = 138543362;
    v169 = v107;
    do
    {
      v109 = [v104 objectAtIndexedSubscript:{v108, v169}];
      v110 = [options objectForKey:v109];
      if (v110)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v110 extent];
          v111 = v235.origin.x;
          v112 = v235.origin.y;
          v113 = v235.size.width;
          v114 = v235.size.height;
          if (!CGRectIsInfinite(v235))
          {
            v236.origin.x = v111;
            v236.origin.y = v112;
            v236.size.width = v113;
            v236.size.height = v114;
            if (!CGRectIsEmpty(v236))
            {
              v174 = [(CGImageMetadata *)metadatab objectAtIndexedSubscript:v108];
              v119 = CGImageMetadataCreateMutable();
              MetadataAddVersion(v119, @"semanticSegmentationMatte", @"http://ns.apple.com/semanticSegmentationMatte/1.0/", @"SemanticSegmentationMatteVersion", 0x10000);
              v120 = vcvtmd_u64_f64(v113);
              v121 = vcvtmd_u64_f64(v114);
              v121 = [MEMORY[0x1E695DF88] dataWithLength:((v120 + 15) & 0xFFFFFFFFFFFFFFF0) * v121];
              -[CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:](selfCopy, "render:toBitmap:rowBytes:bounds:format:colorSpace:", v110, [v121 mutableBytes], (v120 + 15) & 0xFFFFFFFFFFFFFFF0, 259, 0, 0.0, 0.0, v120, v121);
              v218[0] = v172;
              v218[1] = v171;
              v219[0] = v121;
              v219[1] = v119;
              v218[2] = v170;
              v216[0] = @"BytesPerRow";
              auxiliaryImageDataType[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:(v120 + 15) & 0xFFFFFFFFFFFFFFF0];
              v216[1] = @"Height";
              auxiliaryImageDataType[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v121];
              v216[2] = @"Width";
              auxiliaryImageDataType[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v120];
              v216[3] = @"PixelFormat";
              auxiliaryImageDataType[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1278226488];
              v219[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:auxiliaryImageDataType forKeys:v216 count:4];
              v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v219 forKeys:v218 count:3];
              CFRelease(v119);
              if (v123)
              {
                CGImageDestinationAddAuxiliaryDataInfo(v38, v174, v123);
              }

              goto LABEL_115;
            }
          }

          v115 = ci_logger_api();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = v169;
            *(&buf + 4) = v109;
            v116 = v115;
            v117 = "Saving %{public}@ option requires an image with a finite non-empty extent.";
LABEL_120:
            _os_log_error_impl(&dword_19CC36000, v116, OS_LOG_TYPE_ERROR, v117, &buf, 0xCu);
          }
        }

        else
        {
          v118 = ci_logger_api();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = v169;
            *(&buf + 4) = v109;
            v116 = v118;
            v117 = "Saving %{public}@ option requires a CIImage object.";
            goto LABEL_120;
          }
        }
      }

LABEL_115:
      ++v108;
    }

    while ([v104 count] > v108);
  }

  v124 = [options objectForKey:@"kCIImageRepresentationAVSemanticSegmentationMattes"];
  if (v124)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v125 = [v124 countByEnumeratingWithState:&v212 objects:&buf count:16];
      if (v125)
      {
        v126 = *v213;
        do
        {
          for (k = 0; k != v125; ++k)
          {
            if (*v213 != v126)
            {
              objc_enumerationMutation(v124);
            }

            v128 = *(*(&v212 + 1) + 8 * k);
            if (isKind_AVSemanticSegmentationMatteClass(v128))
            {
              v205 = 0;
              v129 = AVSemanticSegmentationMatteDictionaryRepresentationForAuxiliaryType(v128, &v205);
              if (v129)
              {
                CGImageDestinationAddAuxiliaryDataInfo(v38, v205, v129);
              }
            }
          }

          v125 = [v124 countByEnumeratingWithState:&v212 objects:&buf count:16];
        }

        while (v125);
      }
    }
  }

  v130 = [options objectForKey:@"kCIImageRepresentationAVDepthData"];
  v131 = [options objectForKey:@"kCIImageRepresentationDepthImage"];
  v132 = [options objectForKey:@"kCIImageRepresentationDisparityImage"];
  v133 = v132;
  if (v132)
  {
    v134 = v132;
  }

  else
  {
    v134 = v131;
  }

  depthData = [v134 depthData];
  auxiliaryImageDataType[0] = 0;
  if (v134)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v136 = v134;
    }

    else
    {
      v136 = 0;
    }
  }

  else
  {
    v136 = 0;
  }

  [v136 extent];
  v137 = v237.origin.x;
  v138 = v237.origin.y;
  v139 = v237.size.width;
  v140 = v237.size.height;
  if (CGRectIsInfinite(v237) || (v238.origin.x = v137, v238.origin.y = v138, v238.size.width = v139, v238.size.height = v140, CGRectIsEmpty(v238)))
  {
    v136 = 0;
  }

  if (isKind_AVDepthDataClass(v130))
  {
    v141 = v130;
  }

  else
  {
    v141 = 0;
  }

  if (!v136 && v141)
  {
    v142 = AVFDepthDataDictionaryRepresentation(v141, auxiliaryImageDataType);
LABEL_171:
    if (v142)
    {
      CGImageDestinationAddAuxiliaryDataInfo(v38, auxiliaryImageDataType[0], v142);
    }

    goto LABEL_173;
  }

  v143 = vcvtmd_u64_f64(v139);
  v144 = vcvtmd_u64_f64(v140);
  if (v136 && depthData)
  {
    v145 = MEMORY[0x1E696D260];
    if (!v133)
    {
      v145 = MEMORY[0x1E696D258];
    }

    auxiliaryImageDataType[0] = *v145;
    *&buf = 0;
    v225 = *MEMORY[0x1E69660D8];
    *&v212 = MEMORY[0x1E695E0F8];
    v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v212 forKeys:&v225 count:1];
    if (v133)
    {
      v147 = 1751411059;
    }

    else
    {
      v147 = 1751410032;
    }

    CVPixelBufferCreate(0, v143, v144, v147, v146, &buf);
    if (buf)
    {
      [(CIContext *)selfCopy render:v136 toCVPixelBuffer:buf bounds:0 colorSpace:v137, v138, v139, v140];
      v148 = AVFDepthDataByReplacingDepthDataMapWithPixelBuffer(depthData, buf);
      v142 = AVFDepthDataDictionaryRepresentation(v148, auxiliaryImageDataType);
      CFRelease(buf);
    }

    else
    {
      v142 = 0;
    }

    goto LABEL_171;
  }

  if (v136)
  {
    v149 = MEMORY[0x1E696D260];
    if (!v133)
    {
      v149 = MEMORY[0x1E696D258];
    }

    auxiliaryImageDataType[0] = *v149;
    if (v133)
    {
      v150 = 1751411059;
    }

    else
    {
      v150 = 1717856627;
    }

    v144 = [MEMORY[0x1E695DF88] dataWithLength:2 * v143 * v144];
    [(CIContext *)selfCopy render:v134 toBitmap:[(__CFString *)v144 mutableBytes] rowBytes:2 * v143 bounds:2051 format:0 colorSpace:0.0, 0.0, v143, v144];
    if ([v134 properties])
    {
      properties = [v134 properties];
      v153 = [properties objectForKeyedSubscript:*MEMORY[0x1E696D228]];
    }

    else
    {
      v153 = 0;
    }

    v225 = v144;
    v220 = @"kCGImageAuxiliaryDataInfoData";
    v221 = @"kCGImageAuxiliaryDataInfoDataDescription";
    *&v212 = @"BytesPerRow";
    *&buf = [MEMORY[0x1E696AD98] numberWithUnsignedLong:2 * v143];
    *(&v212 + 1) = @"Height";
    *(&buf + 1) = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v144];
    *&v213 = @"Width";
    v210 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v143];
    *(&v213 + 1) = @"PixelFormat";
    v211 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v150];
    v226 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v212 count:4];
    v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v220 count:2];
    if (v153)
    {
      v142 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v142];
      [(__CFDictionary *)v142 setObject:v153 forKeyedSubscript:*MEMORY[0x1E696D228]];
    }

    goto LABEL_171;
  }

LABEL_173:
  v31 = imageCopy;
LABEL_174:
  v154 = CGImageDestinationFinalize(v38);
  if (v192[5])
  {
    v155 = v198[6];
    v156 = v198[7];
    v157 = v198[8];
    v158 = v198[9];
    [v31 extent];
    v240.origin.x = v159;
    v240.origin.y = v160;
    v240.size.width = v161;
    v240.size.height = v162;
    v239.origin.x = v155;
    v239.origin.y = v156;
    v239.size.width = v157;
    v239.size.height = v158;
    v163 = CGRectContainsRect(v239, v240);
  }

  else
  {
    v163 = 1;
  }

  if (!v154 || !v163)
  {

    v164 = v192[5];
    if (v164)
    {
      *&v212 = *MEMORY[0x1E696AA08];
      *(&v212 + 1) = @"CINonLocalizedDescriptionKey";
      *&buf = v164;
      *(&buf + 1) = @"failed to create data representation.";
      v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v212 count:2];
    }

    else
    {
      *&v212 = @"CINonLocalizedDescriptionKey";
      *&buf = @"failed to create data representation.";
      v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v212 count:1];
    }

    v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v165];
    v166 = v35;
    goto LABEL_183;
  }

  v35 = 0;
LABEL_184:
  _Block_object_dispose(&v191, 8);
  _Block_object_dispose(&v197, 8);
  objc_autoreleasePoolPop(context);
  if (error && v35)
  {
    *error = v35;
  }

  v167 = v35;
  return data;
}

void __138__CIContext_ImageRepresentation___dataRepresentationOfImage_UTIType_format_premultiplied_colorSpace_options_addAuxData_keysToMerge_error___block_invoke(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2)
  {

    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  else
  {
    v8.size.height = a6;
    v8.size.width = a5;
    v8.origin.y = a4;
    v8.origin.x = a3;
    *(*(*(a1 + 32) + 8) + 48) = CGRectUnion(*(*(*(a1 + 32) + 8) + 48), v8);
  }
}

- (id)_TIFFRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error
{
  v12 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) _TIFFRepresentationOfImage:format:colorSpace:options:error:]", image);
  if (!canCreateDataRepresentation(image, space, v12, error))
  {
    return 0;
  }

  LOBYTE(v14) = 0;
  return [(CIContext *)self _dataRepresentationOfImage:image UTIType:@"public.tiff" format:v12 premultiplied:1 colorSpace:space options:options addAuxData:v14 keysToMerge:0 error:error];
}

- (id)_PNGRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error
{
  v12 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) _PNGRepresentationOfImage:format:colorSpace:options:error:]", image);
  if (!canCreateDataRepresentation(image, space, v12, error))
  {
    return 0;
  }

  LOBYTE(v14) = 0;
  return [(CIContext *)self _dataRepresentationOfImage:image UTIType:@"public.png" format:v12 premultiplied:0 colorSpace:space options:options addAuxData:v14 keysToMerge:0 error:error];
}

- (void)_addSemanticImages:(id)images session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options
{
  v89 = *MEMORY[0x1E69E9840];
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  *&v80 = 0;
  *(&v80 + 1) = &v80;
  *&v81 = 0x2020000000;
  v7 = getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLoc(void)::ptr;
  *(&v81 + 1) = getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLoc(void)::ptr;
  if (!getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLoc(void)::ptr)
  {
    *&v86 = MEMORY[0x1E69E9820];
    *(&v86 + 1) = 3221225472;
    *&v87 = ___ZL59getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLocv_block_invoke;
    *(&v87 + 1) = &unk_1E75C1E10;
    v88 = &v80;
    v8 = CMPhotoLibrary();
    v9 = dlsym(v8, "kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte");
    *(*(v88 + 1) + 24) = v9;
    getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLoc(void)::ptr = *(*(v88 + 1) + 24);
    v7 = *(*(&v80 + 1) + 24);
  }

  _Block_object_dispose(&v80, 8);
  if (!v7)
  {
    [CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:];
  }

  *&v83 = *v7;
  *&v80 = 0;
  *(&v80 + 1) = &v80;
  *&v81 = 0x2020000000;
  v10 = getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLoc(void)::ptr;
  *(&v81 + 1) = getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLoc(void)::ptr;
  if (!getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLoc(void)::ptr)
  {
    *&v86 = MEMORY[0x1E69E9820];
    *(&v86 + 1) = 3221225472;
    *&v87 = ___ZL59getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLocv_block_invoke;
    *(&v87 + 1) = &unk_1E75C1E10;
    v88 = &v80;
    v11 = CMPhotoLibrary();
    v12 = dlsym(v11, "kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte");
    *(*(v88 + 1) + 24) = v12;
    getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLoc(void)::ptr = *(*(v88 + 1) + 24);
    v10 = *(*(&v80 + 1) + 24);
  }

  _Block_object_dispose(&v80, 8);
  if (!v10)
  {
    [CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:];
  }

  *(&v83 + 1) = *v10;
  *&v80 = 0;
  *(&v80 + 1) = &v80;
  *&v81 = 0x2020000000;
  v13 = getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLoc(void)::ptr;
  *(&v81 + 1) = getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLoc(void)::ptr;
  if (!getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLoc(void)::ptr)
  {
    *&v86 = MEMORY[0x1E69E9820];
    *(&v86 + 1) = 3221225472;
    *&v87 = ___ZL60getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLocv_block_invoke;
    *(&v87 + 1) = &unk_1E75C1E10;
    v88 = &v80;
    v14 = CMPhotoLibrary();
    v15 = dlsym(v14, "kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte");
    *(*(v88 + 1) + 24) = v15;
    getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLoc(void)::ptr = *(*(v88 + 1) + 24);
    v13 = *(*(&v80 + 1) + 24);
  }

  _Block_object_dispose(&v80, 8);
  if (!v13)
  {
    [CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:];
  }

  *&v84 = *v13;
  *&v80 = 0;
  *(&v80 + 1) = &v80;
  *&v81 = 0x2020000000;
  v16 = getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLoc(void)::ptr;
  *(&v81 + 1) = getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLoc(void)::ptr;
  if (!getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLoc(void)::ptr)
  {
    *&v86 = MEMORY[0x1E69E9820];
    *(&v86 + 1) = 3221225472;
    *&v87 = ___ZL62getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLocv_block_invoke;
    *(&v87 + 1) = &unk_1E75C1E10;
    v88 = &v80;
    v17 = CMPhotoLibrary();
    v18 = dlsym(v17, "kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte");
    *(*(v88 + 1) + 24) = v18;
    getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLoc(void)::ptr = *(*(v88 + 1) + 24);
    v16 = *(*(&v80 + 1) + 24);
  }

  _Block_object_dispose(&v80, 8);
  if (!v16)
  {
    [CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:];
  }

  *(&v84 + 1) = *v16;
  *&v80 = 0;
  *(&v80 + 1) = &v80;
  *&v81 = 0x2020000000;
  v19 = getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLoc(void)::ptr;
  *(&v81 + 1) = getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLoc(void)::ptr;
  if (!getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLoc(void)::ptr)
  {
    *&v86 = MEMORY[0x1E69E9820];
    *(&v86 + 1) = 3221225472;
    *&v87 = ___ZL58getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLocv_block_invoke;
    *(&v87 + 1) = &unk_1E75C1E10;
    v88 = &v80;
    v20 = CMPhotoLibrary();
    v21 = dlsym(v20, "kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte");
    *(*(v88 + 1) + 24) = v21;
    getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLoc(void)::ptr = *(*(v88 + 1) + 24);
    v19 = *(*(&v80 + 1) + 24);
  }

  _Block_object_dispose(&v80, 8);
  if (!v19)
  {
    [CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:];
  }

  v22 = 0;
  v85 = *v19;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v58 = 0x8420102uLL;
  do
  {
    v23 = off_1E75C22B0[v22];
    v24 = [options objectForKeyedSubscript:{v23, v58}];
    if (!v24)
    {
      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v24 extent];
      if (!CGRectIsInfinite(v90))
      {
        [v24 extent];
        if (!CGRectIsEmpty(v91))
        {
          goto LABEL_25;
        }
      }

      v25 = ci_logger_api();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = v58;
        *&buf[4] = v23;
        v26 = v25;
        v27 = "Saving %{public}@ option requires an image with a finite non-empty extent.";
LABEL_29:
        _os_log_error_impl(&dword_19CC36000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
      }
    }

    else
    {
      v28 = ci_logger_api();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = v58;
        *&buf[4] = v23;
        v26 = v28;
        v27 = "Saving %{public}@ option requires a CIImage object.";
        goto LABEL_29;
      }
    }

    v24 = 0;
LABEL_25:
    *(&v86 + v22 * 8) = v24;
LABEL_26:
    ++v22;
  }

  while (v22 != 5);
  v29 = [options objectForKeyedSubscript:@"kCIImageRepresentationAVSemanticSegmentationMattes"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v31 = [v29 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v31)
    {
      v32 = *v64;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v64 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v63 + 1) + 8 * i);
          if (isKind_AVSemanticSegmentationMatteClass(v34))
          {
            *buf = 0;
            v35 = AVSemanticSegmentationMatteDictionaryRepresentationForAuxiliaryType(v34, buf);
            if ([*buf hasSuffix:@"SkinMatte"])
            {
              v37 = &v80;
              v38 = &v77;
LABEL_43:
              *v37 = AVSemanticSegmentationMatteImage(v34, v36);
              *v38 = [v35 objectForKeyedSubscript:@"kCGImageAuxiliaryDataInfoMetadata"];
              continue;
            }

            v38 = (&v77 + 8);
            v37 = &v80 + 1;
            if ([*buf hasSuffix:@"HairMatte"])
            {
              goto LABEL_43;
            }

            v37 = &v81;
            v38 = &v78;
            if ([*buf hasSuffix:@"TeethMatte"])
            {
              goto LABEL_43;
            }

            v37 = &v81 + 1;
            v38 = (&v78 + 8);
            if ([*buf hasSuffix:@"GlassesMatte"])
            {
              goto LABEL_43;
            }

            v37 = &v82;
            v38 = &v79;
            if ([*buf hasSuffix:@"SkyMatte"])
            {
              goto LABEL_43;
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v31);
    }
  }

  v39 = 0;
  v62 = *MEMORY[0x1E69660D8];
  while (2)
  {
    v40 = getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN();
    v41 = *(&v83 + v39);
    v74 = v40;
    v75 = v41;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v43 = *(&v80 + v39);
    if (v43)
    {
      v44 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(session, handle, 4, *(&v77 + v39), v42, v43);
      goto LABEL_49;
    }

    v48 = *(&v86 + v39);
    if (v48)
    {
      [*(&v86 + v39) extent];
      v50 = v49;
      v52 = v51;
      v53 = [objc_msgSend(v48 "properties")];
      Mutable = CGImageMetadataCreateMutable();
      MetadataAddVersion(Mutable, @"semanticSegmentationMatte", @"http://ns.apple.com/semanticSegmentationMatte/1.0/", @"SemanticSegmentationMatteVersion", 0x10000);
      *buf = 0;
      v72 = v62;
      v73 = MEMORY[0x1E695E0F8];
      v55 = vcvtmd_u64_f64(v50);
      v56 = vcvtmd_u64_f64(v52);
      v44 = CVPixelBufferCreate(0, v55, v56, 0x4C303038u, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1], buf);
      if (!v44)
      {
        [(CIContext *)self render:v48 toCVPixelBuffer:*buf bounds:0 colorSpace:0.0, 0.0, v55, v56];
        if (v53)
        {
          v57 = v53;
        }

        else
        {
          v57 = Mutable;
        }

        v44 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(session, handle, 4, v57, v42, *buf);
        CFRelease(*buf);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

LABEL_49:
      if (v44)
      {
        v45 = ci_logger_api();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = off_1E75C22B0[v39 / 8];
          v47 = FigErrorString(v44);
          *buf = 136446722;
          *&buf[4] = "[CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:]";
          v68 = 2114;
          v69 = v46;
          v70 = 2082;
          v71 = v47;
          _os_log_error_impl(&dword_19CC36000, v45, OS_LOG_TYPE_ERROR, "%{public}s failed to add %{public}@ to the PhotoCompressionSession. (%{public}s)", buf, 0x20u);
        }
      }
    }

    v39 += 8;
    if (v39 != 40)
    {
      continue;
    }

    break;
  }
}

- (void)_addPortraitMatte:(id)matte session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options
{
  v43[1] = *MEMORY[0x1E69E9840];
  v10 = [options objectForKeyedSubscript:@"kCIImageRepresentationPortraitEffectsMatteImage"];
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = ci_logger_api();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CIContext(ImageRepresentation) *)v11 _addPortraitMatte:v12 session:v13 imageHandle:v14 options:v15, v16, v17, v18];
      }

      v10 = 0;
    }

    [v10 extent];
    if (CGRectIsInfinite(v44) || ([v10 extent], CGRectIsEmpty(v45)))
    {
      v19 = ci_logger_api();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(CIContext(ImageRepresentation) *)v19 _addPortraitMatte:v20 session:v21 imageHandle:v22 options:v23, v24, v25, v26];
      }

      v10 = 0;
    }
  }

  v27 = [options objectForKeyedSubscript:@"kCIImageRepresentationAVPortraitEffectsMatte"];
  if (isKind_AVPortraitEffectsMatteClass(v27) && (cf = 0, v28 = AVPortraitEffectsMatteDictionaryRepresentation(v27, &cf), v30 = AVFPortraitEffectsMatteImage(v27, v29), v31 = [v28 objectForKeyedSubscript:@"kCGImageAuxiliaryDataInfoMetadata"], v30))
  {
    v32 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(session, handle, 5, v31, 0, v30);
  }

  else
  {
    if (!v10)
    {
      return;
    }

    v33 = [objc_msgSend(v10 "properties")];
    [v10 extent];
    v35 = vcvtmd_u64_f64(v34);
    [v10 extent];
    v37 = vcvtmd_u64_f64(v36);
    Mutable = CGImageMetadataCreateMutable();
    MetadataAddVersion(Mutable, @"portraitEffectsMatte", @"http://ns.apple.com/portraitEffectsMatte/1.0/", @"PortraitEffectsMatteVersion", 0x10000);
    cf = 0;
    v42 = *MEMORY[0x1E69660D8];
    v43[0] = MEMORY[0x1E695E0F8];
    v32 = CVPixelBufferCreate(0, v35, v37, 0x4C303038u, [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1], &cf);
    if (!v32)
    {
      [(CIContext *)self render:v10 toCVPixelBuffer:cf bounds:0 colorSpace:0.0, 0.0, v35, v37];
      if (v33)
      {
        v39 = v33;
      }

      else
      {
        v39 = Mutable;
      }

      v32 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(session, handle, 5, v39, 0, cf);
      CFRelease(cf);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v32)
  {
    v40 = ci_logger_api();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _addPortraitMatte:v32 session:? imageHandle:? options:?];
    }
  }
}

- (void)_addGainMap:(id)map session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle containerFormat:(int)format options:(id)options orientation:(id)orientation
{
  v132[1] = *MEMORY[0x1E69E9840];
  v15 = @"kCIImageRepresentationHDRGainMapImage";
  v16 = [options objectForKeyedSubscript:@"kCIImageRepresentationHDRGainMapImage"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v15 = @"kCIImageRepresentationISOGainMapImage";
    v19 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapImage"];
    if (!v19)
    {
      return;
    }

    v18 = v19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v18 extent];
    x = v133.origin.x;
    y = v133.origin.y;
    width = v133.size.width;
    height = v133.size.height;
    if (CGRectIsInfinite(v133) || (v134.origin.x = x, v134.origin.y = y, v134.size.width = width, v134.size.height = height, CGRectIsEmpty(v134)))
    {
      v24 = ci_logger_api();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [CIContext(ImageRepresentation) _dataRepresentationOfImage:UTIType:format:premultiplied:colorSpace:options:addAuxData:keysToMerge:error:];
      }
    }

    else
    {
      handleCopy = handle;
      v26 = v17 == 0;
      v27 = [objc_msgSend(v18 "properties")];
      v131 = *MEMORY[0x1E69660D8];
      v132[0] = MEMORY[0x1E695E0F8];
      pixelBufferAttributes = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:&v131 count:1];
      v80 = vcvtmd_u64_f64(width);
      pixelBufferOut[0] = 0;
      v79 = vcvtmd_u64_f64(height);
      if (v26)
      {
        v38 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapBaseHeadroom"];
        if (v38)
        {
          v39 = v38;
        }

        else
        {
          v39 = &unk_1F1083148;
        }

        v40 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapAlternateHeadroom"];
        v41 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapMin"];
        if (v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = v39;
        }

        v75 = v42;
        v43 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapMax"];
        if (v43)
        {
          v44 = v43;
        }

        else
        {
          v44 = v40;
        }

        v73 = v44;
        v45 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapOffset"];
        v46 = &unk_1F1083168;
        if (v45)
        {
          v46 = v45;
        }

        v74 = v46;
        v47 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapGamma"];
        v48 = &unk_1F1083158;
        if (v47)
        {
          v48 = v47;
        }

        v72 = v48;
        v76 = [objc_msgSend(options objectForKeyedSubscript:{@"kCIImageRepresentationHDRGainMapAsRGB", "BOOLValue"}];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & (v40 != 0)) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
        {
          v126 = &unk_1F10819E0;
          v125[0] = @"TonemapVersion";
          v125[1] = @"TonemapBaseHDRHeadroom";
          v127 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(isKindOfClass, v39);
          v125[2] = @"TonemapAlternateHDRHeadroom";
          v128 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v127, v40);
          v129 = MEMORY[0x1E695E118];
          v125[3] = @"TonemapBaseColorIsWorkingColor";
          v125[4] = @"TonemapChannelMetadata";
          v118[0] = @"BaseOffset";
          v119 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v128, v74);
          v118[1] = @"AlternateOffset";
          v120 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v119, v74);
          v118[2] = @"GainMapMin";
          v121 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v120, v75);
          v118[3] = @"GainMapMax";
          v122 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v121, v73);
          v118[4] = @"Gamma";
          v123 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v122, v72);
          v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:v118 count:5];
          v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:v125 count:5];
          v51 = v50;
          if (v76)
          {
            v113 = &unk_1F10819E0;
            v112[0] = @"TonemapVersion";
            v112[1] = @"TonemapBaseHDRHeadroom";
            v114 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v50, v39);
            v112[2] = @"TonemapAlternateHDRHeadroom";
            v115 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v114, v40);
            v116 = MEMORY[0x1E695E118];
            v112[3] = @"TonemapBaseColorIsWorkingColor";
            v112[4] = @"TonemapChannelMetadata";
            v103[0] = @"BaseOffset";
            v104 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v115, v74);
            v103[1] = @"AlternateOffset";
            v105 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v104, v74);
            v103[2] = @"GainMapMin";
            v106 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v105, v75);
            v103[3] = @"GainMapMax";
            v107 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v106, v73);
            v103[4] = @"Gamma";
            v108 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v107, v72);
            v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:v103 count:5];
            v97[0] = @"BaseOffset";
            v98 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v109, v74);
            v97[1] = @"AlternateOffset";
            v99 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v98, v74);
            v97[2] = @"GainMapMin";
            v100 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v99, v75);
            v97[3] = @"GainMapMax";
            v101 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v100, v73);
            v97[4] = @"Gamma";
            v102 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v101, v72);
            v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:v97 count:5];
            v91[0] = @"BaseOffset";
            v92 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v110, v74);
            v91[1] = @"AlternateOffset";
            v93 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v92, v74);
            v91[2] = @"GainMapMin";
            v94 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v93, v75);
            v91[3] = @"GainMapMax";
            v95 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v94, v73);
            v91[4] = @"Gamma";
            v96 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v95, v72);
            v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:v91 count:5];
            v117 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:3];
            v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:v112 count:5];
          }
        }

        else
        {
          v51 = 0;
        }

        if (v76)
        {
          v52 = 1111970369;
        }

        else
        {
          v52 = 1278226488;
        }

        v53 = CVPixelBufferCreate(0, v80, v79, v52, pixelBufferAttributes, pixelBufferOut);
        if (!v53)
        {
          [(CIContext *)self render:v18 toCVPixelBuffer:pixelBufferOut[0] bounds:0 colorSpace:0.0, 0.0, v80, v79];
          if (format)
          {
            v54 = 0;
          }

          else
          {
            v54 = 1752589105;
          }

          if (format == 1)
          {
            v55 = 1785750887;
          }

          else
          {
            v55 = v54;
          }

          v56 = [options objectForKeyedSubscript:*MEMORY[0x1E696D338]];
          objc_opt_class();
          v57 = objc_opt_isKindOfClass();
          v58 = 0.0;
          if (v57)
          {
            [v56 floatValue];
          }

          v59 = fminf(fmaxf(v58, 0.9), 1.0);
          if (v59 > 0.9944)
          {
            v60 = 1;
          }

          else
          {
            v60 = 5;
          }

          if (v76)
          {
            v61 = v60;
          }

          else
          {
            v61 = 6;
          }

          dictionary = [MEMORY[0x1E695DF90] dictionary];
          [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:getkCMPhotoCompressionOption_ApplyTransform()];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v55), getkCMPhotoCompressionOption_CodecType()}];
          [dictionary setObject:&unk_1F10819F8 forKeyedSubscript:getkCMPhotoCompressionOption_QualityControllerType()];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v61), getkCMPhotoCompressionOption_Subsampling()}];
          [dictionary setObject:&unk_1F1081A10 forKeyedSubscript:getkCMPhotoCompressionOption_BitDepth()];
          v89 = getkCMPhotoQualityControllerParameter_QualityValue();
          *&v63 = v59;
          v90 = [MEMORY[0x1E696AD98] numberWithFloat:v63];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v90, &v89, 1), getkCMPhotoCompressionOption_QualityControllerParameters()}];
          if (!format)
          {
            if (orientation)
            {
              orientationCopy = orientation;
            }

            else
            {
              orientationCopy = &unk_1F1081A28;
            }

            [dictionary setObject:orientationCopy forKeyedSubscript:getkCMPhotoCompressionOption_ImageOrientation()];
          }

          v65 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F178]);
          v87 = getkCMPhotoCompressionOption_ColorSpace();
          v88 = v65;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          CGColorSpaceRelease(v65);
          v53 = soft_CMPhotoCompressionSessionAddTmapImageOneShot(session, handleCopy, dictionary, v66, pixelBufferOut[0], v51, v67, v68, v71);
        }
      }

      else
      {
        v28 = v27;
        selfCopy = self;
        sessionCopy = session;
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v83 = 0;
        v84 = &v83;
        v85 = 0x2020000000;
        v32 = getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLoc(void)::ptr;
        v86 = getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLoc(void)::ptr;
        if (!getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLoc(void)::ptr)
        {
          pixelBufferOut[1] = MEMORY[0x1E69E9820];
          pixelBufferOut[2] = 3221225472;
          pixelBufferOut[3] = ___ZL52getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLocv_block_invoke;
          pixelBufferOut[4] = &unk_1E75C1E10;
          v82 = &v83;
          v33 = CMPhotoLibrary();
          v84[3] = dlsym(v33, "kCMPhotoAuxiliaryImageTypeURN_HDRGainMap");
          getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLoc(void)::ptr = *(v82[1] + 24);
          v32 = v84[3];
        }

        _Block_object_dispose(&v83, 8);
        if (!v32)
        {
          [CIContext(ImageRepresentation) _addGainMap:session:imageHandle:containerFormat:options:orientation:];
        }

        [dictionary2 setObject:*v32 forKeyedSubscript:getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN()];
        Mutable = CGImageMetadataCreateMutable();
        MetadataAddVersion(Mutable, @"HDRGainMap", @"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMapVersion", 0x20000);
        v35 = [options objectForKeyedSubscript:@"kCIImageRepresentationHDRGainMapHeadroom"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 floatValue], v36 > 1.0))
        {
          v37 = MEMORY[0x1E696AD98];
          [v35 floatValue];
          CGImageMetadataSetValueWithPath(Mutable, 0, @"HDRGainMap:HDRGainMapHeadroom", [v37 numberWithFloat:?]);
        }

        else if (v28)
        {
          CFRelease(Mutable);
          CFRetain(v28);
          Mutable = v28;
        }

        else
        {
          [map _makernoteMeteorHeadroom];
          if (v69 > 1.0)
          {
            CGImageMetadataSetValueWithPath(Mutable, 0, @"HDRGainMap:HDRGainMapHeadroom", [MEMORY[0x1E696AD98] numberWithFloat:?]);
          }
        }

        v53 = CVPixelBufferCreate(0, v80, v79, 0x4C303038u, pixelBufferAttributes, pixelBufferOut);
        if (!v53)
        {
          [(CIContext *)selfCopy render:v18 toCVPixelBuffer:pixelBufferOut[0] bounds:0 colorSpace:0.0, 0.0, v80, v79];
          v53 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(sessionCopy, handleCopy, 4, Mutable, dictionary2, pixelBufferOut[0]);
        }

        CFRelease(Mutable);
      }

      if (pixelBufferOut[0])
      {
        CFRelease(pixelBufferOut[0]);
      }

      if (v53)
      {
        v70 = ci_logger_api();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [CIContext(ImageRepresentation) _addGainMap:v15 session:v53 imageHandle:? containerFormat:? options:? orientation:?];
        }
      }
    }
  }

  else
  {
    v25 = ci_logger_api();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _dataRepresentationOfImage:UTIType:format:premultiplied:colorSpace:options:addAuxData:keysToMerge:error:];
    }
  }
}

- (void)_addDepthMap:(id)map session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options
{
  v47[1] = *MEMORY[0x1E69E9840];
  v10 = [options objectForKeyedSubscript:@"kCIImageRepresentationAVDepthData"];
  v11 = [options objectForKeyedSubscript:@"kCIImageRepresentationDepthImage"];
  v12 = [options objectForKeyedSubscript:@"kCIImageRepresentationDisparityImage"];
  v13 = v12;
  pixelBufferOut = 0;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  depthData = [v14 depthData];
  v42 = 0;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  [v16 extent];
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  if (CGRectIsInfinite(v48) || (v49.origin.x = x, v49.origin.y = y, v49.size.width = width, v49.size.height = height, CGRectIsEmpty(v49)))
  {
    v16 = 0;
  }

  if (!isKind_AVDepthDataClass(v10))
  {
    v10 = 0;
  }

  if (v16 || !v10)
  {
    v28 = vcvtmd_u64_f64(width);
    v29 = vcvtmd_u64_f64(height);
    if (v16 && depthData)
    {
      v30 = MEMORY[0x1E696D260];
      if (!v13)
      {
        v30 = MEMORY[0x1E696D258];
      }

      v42 = *v30;
      if (v13)
      {
        v31 = 1751411059;
      }

      else
      {
        v31 = 1751410032;
      }

      v46 = *MEMORY[0x1E69660D8];
      v47[0] = MEMORY[0x1E695E0F8];
      CVPixelBufferCreate(0, v28, v29, v31, [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1], &pixelBufferOut);
      if (!pixelBufferOut)
      {
        goto LABEL_52;
      }

      if (v13)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      [(CIContext *)self render:v16 toCVPixelBuffer:x bounds:y colorSpace:width, height];
      v32 = AVFDepthDataByReplacingDepthDataMapWithPixelBuffer(depthData, pixelBufferOut);
      properties = AVFDepthDataDictionaryRepresentation(v32, &v42);
    }

    else
    {
      if (!v16)
      {
        goto LABEL_52;
      }

      v34 = MEMORY[0x1E696D260];
      v35 = v13 == 0;
      if (!v13)
      {
        v34 = MEMORY[0x1E696D258];
      }

      v42 = *v34;
      if (v13)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v35)
      {
        v36 = 1751410032;
      }

      else
      {
        v36 = 1751411059;
      }

      v44 = *MEMORY[0x1E69660D8];
      v45 = MEMORY[0x1E695E0F8];
      CVPixelBufferCreate(0, v28, v29, v36, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1], &pixelBufferOut);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __75__CIContext_ImageRepresentation___addDepthMap_session_imageHandle_options___block_invoke;
      v41[3] = &unk_1E75C22E0;
      v41[4] = self;
      v41[5] = v14;
      PixelBufferApplyPlaneBlock(pixelBufferOut, v41);
      properties = [v14 properties];
    }

    v23 = [properties objectForKeyedSubscript:@"kCGImageAuxiliaryDataInfoMetadata"];
  }

  else
  {
    v22 = AVFDepthDataMap(v10, v21);
    pixelBufferOut = v22;
    if (v22)
    {
      CFRetain(v22);
    }

    v23 = [AVFDepthDataDictionaryRepresentation(v10 &v42)];
    v25 = AVFDepthDataType(v10, v24);
    if (v25 == 1717856627 || v25 == 1751411059)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }
  }

  v37 = pixelBufferOut;
  if (!pixelBufferOut || !v23)
  {
    goto LABEL_53;
  }

  v38 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(session, handle, v27, v23, 0, pixelBufferOut);
  if (v38)
  {
    v39 = v38;
    v40 = ci_logger_api();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _addDepthMap:v39 session:? imageHandle:? options:?];
    }
  }

LABEL_52:
  v37 = pixelBufferOut;
LABEL_53:
  if (v37)
  {
    CFRelease(v37);
  }
}

- (id)_CMPhotoRepresentationOfImage:(id)image depth:(int)depth allowAlpha:(BOOL)alpha containerFormat:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error
{
  v11 = *&format;
  alphaCopy = alpha;
  v190 = *MEMORY[0x1E69E9840];
  v174 = 0;
  v16 = objc_autoreleasePoolPush();
  [image extent];
  v192 = CGRectInset(v191, 0.00100000005, 0.00100000005);
  v193 = CGRectIntegral(v192);
  x = v193.origin.x;
  y = v193.origin.y;
  width = v193.size.width;
  height = v193.size.height;
  if (CGRectIsEmpty(v193) || (v194.origin.x = x, v194.origin.y = y, v194.size.width = width, v194.size.height = height, CGRectIsInfinite(v194)))
  {
    v21 = ci_logger_api();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(ImageRepresentation) *)v21 _CMPhotoRepresentationOfImage:v22 depth:v23 allowAlpha:v24 containerFormat:v25 colorSpace:v26 options:v27 error:v28];
    }

    v186 = @"CINonLocalizedDescriptionKey";
    *bytes = @"requires an image with a finite non-empty extent.";
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:bytes forKeys:&v186 count:1];
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:4 userInfo:v29];
LABEL_17:
    v44 = v30;
    v45 = v30;
    goto LABEL_18;
  }

  if (!space || (TypeID = CGColorSpaceGetTypeID(), TypeID != CFGetTypeID(space)) || !CGColorSpaceSupportsOutput(space) || CGColorSpaceGetModel(space) && CGColorSpaceGetModel(space) != kCGColorSpaceModelRGB)
  {
    v35 = ci_logger_api();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(ImageRepresentation) *)v35 _CMPhotoRepresentationOfImage:v36 depth:v37 allowAlpha:v38 containerFormat:v39 colorSpace:v40 options:v41 error:v42];
    }

    v186 = @"CINonLocalizedDescriptionKey";
    *bytes = @"unsupported colorspace.";
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:bytes forKeys:&v186 count:1];
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:5 userInfo:v43];
    goto LABEL_17;
  }

  pixelBufferOut = 0;
  Model = CGColorSpaceGetModel(space);
  isOpaque = [image isOpaque];
  cGImage = [image CGImage];
  if (cGImage && (v34 = cGImage, ![image _originalIOSurface]))
  {
    CGImageGetColorSpace(v34);
    if (CGColorSpaceEqualToColorSpace())
    {
      v48 = v34;
    }

    else
    {
      v48 = 0;
    }

    v167 = v48;
  }

  else
  {
    v167 = 0;
  }

  v179 = *MEMORY[0x1E69660D8];
  v180 = MEMORY[0x1E695E0F8];
  pixelBufferAttributes = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
  v161 = alphaCopy & (isOpaque ^ 1);
  if (v167)
  {
    v49 = 1;
  }

  else
  {
    v49 = alphaCopy & (isOpaque ^ 1);
  }

  if (depth == 8)
  {
    if (Model)
    {
      v50 = 875704422;
    }

    else
    {
      v50 = 1278226488;
    }

    v51 = 1279340600;
    if (Model)
    {
      v51 = 1111970369;
    }
  }

  else
  {
    v50 = 1278226736;
    if (Model)
    {
      v50 = 2019963440;
      v51 = 1815491698;
    }

    else
    {
      v51 = 1279340854;
    }
  }

  if (v49)
  {
    v52 = v51;
  }

  else
  {
    v52 = v50;
  }

  v163 = v52;
  v165 = [options objectForKeyedSubscript:*MEMORY[0x1E696D338]];
  v53 = [options objectForKeyedSubscript:*MEMORY[0x1E696DE20]];
  v54 = *MEMORY[0x1E696DE10];
  v55 = [options objectForKeyedSubscript:*MEMORY[0x1E696DE10]];
  if (!v55)
  {
    v55 = [v53 objectForKeyedSubscript:v54];
  }

  v56 = *MEMORY[0x1E696DE18];
  v57 = [options objectForKeyedSubscript:*MEMORY[0x1E696DE18]];
  if (!v57)
  {
    v57 = [v53 objectForKeyedSubscript:v56];
  }

  if ([v55 intValue] >= 1 && objc_msgSend(v55, "intValue") > 1)
  {
    intValue = 2;
  }

  else if ([v55 intValue] < 1)
  {
    intValue = 0;
  }

  else
  {
    intValue = [v55 intValue];
  }

  if ([v57 intValue] >= 1 && objc_msgSend(v57, "intValue") > 1)
  {
    intValue2 = 2;
  }

  else if ([v57 intValue] < 1)
  {
    intValue2 = 0;
  }

  else
  {
    intValue2 = [v57 intValue];
  }

  [v165 floatValue];
  v61 = v11 == 1 && v60 > 0.9944;
  if (v61)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  if (intValue)
  {
    v62 = intValue;
  }

  if (intValue2)
  {
    v61 = intValue2 == 1;
  }

  if (v62 == 1 && v61)
  {
    v63 = 1;
  }

  else
  {
    v63 = 5;
  }

  v64 = v62 == 2 && v61;
  if (v64)
  {
    v65 = 3;
  }

  else
  {
    v65 = v63;
  }

  v66 = v163 != 1278226488;
  if (v163 == 1278226488)
  {
    v65 = 6;
  }

  v160 = v65;
  v67 = v65 == 1;
  if (v65 == 1)
  {
    v68 = 875836518;
  }

  else
  {
    v68 = 875704422;
  }

  if (v67)
  {
    v69 = 2019963956;
  }

  else
  {
    v69 = 2019963440;
  }

  v70 = (v66 & v64) == 0;
  if ((v66 & v64) != 0)
  {
    v71 = 875704934;
  }

  else
  {
    v71 = v68;
  }

  v72 = 2019963442;
  if (v70)
  {
    v72 = v69;
  }

  if (v163 != 875704422)
  {
    v71 = v163;
  }

  if (v71 == 2019963440)
  {
    v73 = v72;
  }

  else
  {
    v73 = v71;
  }

  [image extent];
  v75 = v74;
  [image extent];
  if (CVPixelBufferCreate(0, v75, v76, v73, pixelBufferAttributes, &pixelBufferOut) || !pixelBufferOut)
  {
    v80 = ci_logger_api();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(ImageRepresentation) *)v80 _CMPhotoRepresentationOfImage:v81 depth:v82 allowAlpha:v83 containerFormat:v84 colorSpace:v85 options:v86 error:v87];
    }

    v186 = @"CINonLocalizedDescriptionKey";
    *bytes = @"failed to create a CVPixelBuffer.";
    v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:bytes forKeys:&v186 count:1];
    v44 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:6 userInfo:v88];
    v89 = v44;
    goto LABEL_18;
  }

  CFAutorelease(pixelBufferOut);
  IsHLGBased = CGColorSpaceIsHLGBased(space);
  IsPQBased = CGColorSpaceIsPQBased(space);
  v79 = -[CIContext addAuxOptionsForSDR:HDR:colorSpace:rgbGainmap:](self, "addAuxOptionsForSDR:HDR:colorSpace:rgbGainmap:", image, [options objectForKeyedSubscript:@"kCIImageRepresentationHDRImage"], space, objc_msgSend(objc_msgSend(options, "objectForKeyedSubscript:", @"kCIImageRepresentationHDRGainMapAsRGB"), "BOOLValue"));
  if (v79)
  {
    optionsCopy = [MEMORY[0x1E695DF90] dictionary];
    [optionsCopy addEntriesFromDictionary:options];
    [optionsCopy addEntriesFromDictionary:v79];
  }

  else
  {
    optionsCopy = options;
  }

  v90 = equivalent_uncompressed_format(v73);
  v91 = equivalent_uncompressed_format(v90);
  if (v91 > 1936077359)
  {
    if (v91 > 1953903151)
    {
      if (v91 <= 2016686641)
      {
        if (v91 <= 1953903667)
        {
          if (v91 == 1953903152)
          {
            goto LABEL_152;
          }

          v92 = 1953903154;
          goto LABEL_151;
        }

        if (v91 == 1953903668)
        {
          goto LABEL_152;
        }

        v96 = 12848;
      }

      else
      {
        if (v91 > 2019963439)
        {
          if (v91 == 2019963440 || v91 == 2019963956)
          {
            goto LABEL_152;
          }

          v92 = 2019963442;
          goto LABEL_151;
        }

        if (v91 == 2016686642)
        {
          goto LABEL_152;
        }

        v96 = 13364;
      }

      v92 = v96 | 0x78340000;
      goto LABEL_151;
    }

    if (v91 <= 1937125937)
    {
      if (v91 <= 1936077875)
      {
        if (v91 == 1936077360)
        {
          goto LABEL_152;
        }

        v92 = 1936077362;
        goto LABEL_151;
      }

      if (v91 == 1936077876)
      {
        goto LABEL_152;
      }

      v94 = 12848;
    }

    else
    {
      if (v91 > 1952854575)
      {
        if (v91 == 1952854576 || v91 == 1952854578)
        {
          goto LABEL_152;
        }

        v92 = 1952855092;
        goto LABEL_151;
      }

      if (v91 == 1937125938)
      {
        goto LABEL_152;
      }

      v94 = 13364;
    }

    v92 = v94 | 0x73760000;
    goto LABEL_151;
  }

  if (v91 > 1751527983)
  {
    if (v91 <= 1882468913)
    {
      if (v91 <= 1751528499)
      {
        if (v91 == 1751527984)
        {
          goto LABEL_152;
        }

        v92 = 1751527986;
        goto LABEL_151;
      }

      if (v91 == 1751528500)
      {
        goto LABEL_152;
      }

      v95 = 12848;
    }

    else
    {
      if (v91 > 1885745711)
      {
        if (v91 == 1885745712 || v91 == 1885745714)
        {
          goto LABEL_152;
        }

        v92 = 1885746228;
        goto LABEL_151;
      }

      if (v91 == 1882468914)
      {
        goto LABEL_152;
      }

      v95 = 13364;
    }

    v92 = v95 | 0x70340000;
    goto LABEL_151;
  }

  if (v91 <= 875836517)
  {
    if (v91 > 875704933)
    {
      if (v91 == 875704934)
      {
        goto LABEL_152;
      }

      v93 = 12918;
    }

    else
    {
      if (v91 == 875704422)
      {
        goto LABEL_152;
      }

      v93 = 12406;
    }

    v92 = v93 | 0x34320000;
LABEL_151:
    if (v91 != v92)
    {
      goto LABEL_159;
    }

    goto LABEL_152;
  }

  if (v91 <= 1647534391)
  {
    if (v91 == 875836518)
    {
      goto LABEL_152;
    }

    v92 = 875836534;
    goto LABEL_151;
  }

  if (v91 != 1647534392 && v91 != 1667838776)
  {
    v92 = 1714643256;
    goto LABEL_151;
  }

LABEL_152:
  v97 = *MEMORY[0x1E6965FC8];
  if (Model == kCGColorSpaceModelMonochrome)
  {
    v97 = 0;
  }

  if (IsHLGBased || IsPQBased)
  {
    v98 = *MEMORY[0x1E6965FB0];
  }

  else
  {
    v98 = v97;
  }

  if (v98)
  {
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F98], v98, kCVAttachmentMode_ShouldPropagate);
  }

LABEL_159:
  ColorAttributesForColorSpace = CreateColorAttributesForColorSpace();
  if (ColorAttributesForColorSpace)
  {
    CVBufferSetAttachments(pixelBufferOut, ColorAttributesForColorSpace, kCVAttachmentMode_ShouldPropagate);
    CFRelease(ColorAttributesForColorSpace);
  }

  CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965CE8], space, kCVAttachmentMode_ShouldPropagate);
  if (v161)
  {
    v100 = MEMORY[0x1E6965CD0];
    if (v167)
    {
      v100 = MEMORY[0x1E6965CC8];
    }

    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965CC0], *v100, kCVAttachmentMode_ShouldPropagate);
  }

  [image contentHeadroom];
  if (v101 > 1.0)
  {
    *bytes = __rev16(fminf((v101 * 203.0) + 0.5, 65535.0));
    [image contentAverageLightLevel];
    if (v102 != 0.0)
    {
      *&bytes[2] = __rev16(fminf((v102 * 203.0) + 0.5, 65535.0));
    }

    v103 = CFDataCreate(0, bytes, 4);
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965DE0], v103, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v103);
  }

  if (!v167)
  {
    *bytes = 0;
    v125 = [CIRenderDestination alloc];
    v126 = [(CIRenderDestination *)v125 initWithPixelBuffer:pixelBufferOut];
    [(CIRenderDestination *)v126 setColorSpace:space];
    v127 = [(CIContext *)self startTaskToRender:image fromRect:v126 toDestination:bytes atPoint:x error:y, width, height, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    if (v127)
    {
      if ([(CIRenderTask *)v127 waitUntilCompletedAndReturnError:bytes])
      {
        goto LABEL_171;
      }

      v128 = ci_logger_api();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_212;
      }
    }

    else
    {
      v128 = ci_logger_api();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
LABEL_212:
        [(CIContext(ImageRepresentation) *)v128 _CMPhotoRepresentationOfImage:v129 depth:v130 allowAlpha:v131 containerFormat:v132 colorSpace:v133 options:v134 error:v135];
      }
    }

    v44 = imageRepError(7, &cfstr_FailedToRender.isa, *bytes);
    v152 = v44;
    goto LABEL_18;
  }

  v171[0] = MEMORY[0x1E69E9820];
  v171[1] = 3221225472;
  v171[2] = __122__CIContext_ImageRepresentation___CMPhotoRepresentationOfImage_depth_allowAlpha_containerFormat_colorSpace_options_error___block_invoke;
  v171[3] = &__block_descriptor_52_e21_v48__0_v8Q16Q24Q32Q40l;
  v172 = v73;
  v171[4] = space;
  v171[5] = v167;
  PixelBufferApplyPlaneBlock(pixelBufferOut, v171);
LABEL_171:
  arg = 0;
  v186 = 0;
  v187 = &v186;
  v188 = 0x2020000000;
  v104 = getCMPhotoCompressionSessionCreateSymbolLoc(void)::ptr;
  v189 = getCMPhotoCompressionSessionCreateSymbolLoc(void)::ptr;
  if (!getCMPhotoCompressionSessionCreateSymbolLoc(void)::ptr)
  {
    *bytes = MEMORY[0x1E69E9820];
    v182 = 3221225472;
    v183 = ___ZL43getCMPhotoCompressionSessionCreateSymbolLocv_block_invoke;
    v184 = &unk_1E75C1E10;
    v185 = &v186;
    v105 = CMPhotoLibrary();
    v106 = dlsym(v105, "CMPhotoCompressionSessionCreate");
    *(v185[1] + 24) = v106;
    getCMPhotoCompressionSessionCreateSymbolLoc(void)::ptr = *(v185[1] + 24);
    v104 = v187[3];
  }

  _Block_object_dispose(&v186, 8);
  if (!v104)
  {
    [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:];
  }

  (v104)(0, 0, &arg);
  CFAutorelease(arg);
  if (!arg)
  {
    v136 = ci_logger_api();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(ImageRepresentation) *)v136 _CMPhotoRepresentationOfImage:v137 depth:v138 allowAlpha:v139 containerFormat:v140 colorSpace:v141 options:v142 error:v143];
    }

    v124 = imageRepError(8, &cfstr_FailedToCreate_1.isa);
    goto LABEL_198;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary addEntriesFromDictionary:{objc_msgSend(image, "properties")}];
  v186 = 0;
  v187 = &v186;
  v188 = 0x2020000000;
  v108 = getkCMPhotoCompressionContainerOption_FormatSymbolLoc(void)::ptr;
  v189 = getkCMPhotoCompressionContainerOption_FormatSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionContainerOption_FormatSymbolLoc(void)::ptr)
  {
    *bytes = MEMORY[0x1E69E9820];
    v182 = 3221225472;
    v183 = ___ZL53getkCMPhotoCompressionContainerOption_FormatSymbolLocv_block_invoke;
    v184 = &unk_1E75C1E10;
    v185 = &v186;
    v109 = CMPhotoLibrary();
    v110 = dlsym(v109, "kCMPhotoCompressionContainerOption_Format");
    *(v185[1] + 24) = v110;
    getkCMPhotoCompressionContainerOption_FormatSymbolLoc(void)::ptr = *(v185[1] + 24);
    v108 = v187[3];
  }

  _Block_object_dispose(&v186, 8);
  if (!v108)
  {
    [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:];
  }

  v177[0] = *v108;
  v178[0] = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v186 = 0;
  v187 = &v186;
  v188 = 0x2020000000;
  v111 = getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLoc(void)::ptr;
  v189 = getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLoc(void)::ptr)
  {
    *bytes = MEMORY[0x1E69E9820];
    v182 = 3221225472;
    v183 = ___ZL61getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLocv_block_invoke;
    v184 = &unk_1E75C1E10;
    v185 = &v186;
    v112 = CMPhotoLibrary();
    v113 = dlsym(v112, "kCMPhotoCompressionContainerOption_ImageCountHint");
    *(v185[1] + 24) = v113;
    getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLoc(void)::ptr = *(v185[1] + 24);
    v111 = v187[3];
  }

  _Block_object_dispose(&v186, 8);
  if (!v111)
  {
    [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:];
  }

  v177[1] = *v111;
  v178[1] = &unk_1F1081A28;
  v186 = 0;
  v187 = &v186;
  v188 = 0x2020000000;
  v114 = getkCMPhotoCompressionContainerOption_BackingTypeSymbolLoc(void)::ptr;
  v189 = getkCMPhotoCompressionContainerOption_BackingTypeSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionContainerOption_BackingTypeSymbolLoc(void)::ptr)
  {
    *bytes = MEMORY[0x1E69E9820];
    v182 = 3221225472;
    v183 = ___ZL58getkCMPhotoCompressionContainerOption_BackingTypeSymbolLocv_block_invoke;
    v184 = &unk_1E75C1E10;
    v185 = &v186;
    v115 = CMPhotoLibrary();
    v116 = dlsym(v115, "kCMPhotoCompressionContainerOption_BackingType");
    *(v185[1] + 24) = v116;
    getkCMPhotoCompressionContainerOption_BackingTypeSymbolLoc(void)::ptr = *(v185[1] + 24);
    v114 = v187[3];
  }

  _Block_object_dispose(&v186, 8);
  if (!v114)
  {
    [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:];
  }

  v177[2] = *v114;
  v178[2] = &unk_1F1081A40;
  v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v178 forKeys:v177 count:3];
  v118 = arg;
  v186 = 0;
  v187 = &v186;
  v188 = 0x2020000000;
  v119 = getCMPhotoCompressionSessionOpenEmptyContainerSymbolLoc(void)::ptr;
  v189 = getCMPhotoCompressionSessionOpenEmptyContainerSymbolLoc(void)::ptr;
  if (!getCMPhotoCompressionSessionOpenEmptyContainerSymbolLoc(void)::ptr)
  {
    *bytes = MEMORY[0x1E69E9820];
    v182 = 3221225472;
    v183 = ___ZL55getCMPhotoCompressionSessionOpenEmptyContainerSymbolLocv_block_invoke;
    v184 = &unk_1E75C1E10;
    v185 = &v186;
    v120 = CMPhotoLibrary();
    v121 = dlsym(v120, "CMPhotoCompressionSessionOpenEmptyContainer");
    *(v185[1] + 24) = v121;
    getCMPhotoCompressionSessionOpenEmptyContainerSymbolLoc(void)::ptr = *(v185[1] + 24);
    v119 = v187[3];
  }

  _Block_object_dispose(&v186, 8);
  if (!v119)
  {
    [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:];
  }

  v122 = v119(v118, v117);
  if (v122)
  {
    v123 = ci_logger_api();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:v122 depth:? allowAlpha:? containerFormat:? colorSpace:? options:? error:?];
    }

    v124 = imageRepError(9, &cfstr_FailedToOpenTh.isa);
LABEL_198:
    v44 = v124;
    v144 = v124;
    goto LABEL_18;
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v146 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  v147 = v146;
  if (!v11 && v146)
  {
    [dictionary2 setObject:v146 forKeyedSubscript:getkCMPhotoCompressionOption_ImageOrientation()];
  }

  [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v160), getkCMPhotoCompressionOption_Subsampling()}];
  if (v165)
  {
    [dictionary2 setObject:&unk_1F10819F8 forKeyedSubscript:getkCMPhotoCompressionOption_QualityControllerType()];
    v175 = getkCMPhotoQualityControllerParameter_QualityValue();
    v176 = v165;
    [dictionary2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v176, &v175, 1), getkCMPhotoCompressionOption_QualityControllerParameters()}];
  }

  v186 = 0;
  if (pixelBufferOut)
  {
    v148 = pixelBufferOut;
  }

  else
  {
    v148 = v167;
  }

  v149 = soft_CMPhotoCompressionSessionAddImage(arg, dictionary2, v148, &v186);
  if (v149)
  {
    v150 = ci_logger_api();
    if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:v149 depth:? allowAlpha:? containerFormat:? colorSpace:? options:? error:?];
    }

    v151 = imageRepError(10, &cfstr_FailedToAddIma.isa);
LABEL_229:
    v44 = v151;
    v159 = v151;
    goto LABEL_18;
  }

  if (pixelBufferOut)
  {
    v153 = v161;
  }

  else
  {
    v153 = 0;
  }

  if (v153 == 1)
  {
    *bytes = 0;
    v182 = bytes;
    v183 = 0x2020000000;
    LOBYTE(v184) = 1;
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = __122__CIContext_ImageRepresentation___CMPhotoRepresentationOfImage_depth_allowAlpha_containerFormat_colorSpace_options_error___block_invoke_228;
    v168[3] = &unk_1E75C2328;
    v169 = v73;
    v168[4] = bytes;
    PixelBufferApplyPlaneReadOnlyBlock(pixelBufferOut, v168);
    if ((*(v182 + 24) & 1) == 0)
    {
      v154 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(arg, v186, 3, 0, 0, pixelBufferOut);
      if (v154)
      {
        v155 = ci_logger_api();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
        {
          [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:v154 depth:? allowAlpha:? containerFormat:? colorSpace:? options:? error:?];
        }
      }
    }

    _Block_object_dispose(bytes, 8);
  }

  [(CIContext *)self _addSemanticImages:image session:arg imageHandle:v186 options:optionsCopy];
  [(CIContext *)self _addPortraitMatte:image session:arg imageHandle:v186 options:optionsCopy];
  [(CIContext *)self _addGainMap:image session:arg imageHandle:v186 containerFormat:v11 options:optionsCopy orientation:v147];
  [(CIContext *)self _addDepthMap:image session:arg imageHandle:v186 options:optionsCopy];
  if (dictionary)
  {
    soft_CMPhotoCompressionSessionAddMetadataFromImageProperties(arg, v186, dictionary, v156);
  }

  v157 = soft_CMPhotoCompressionSessionCloseContainerAndCopyBacking(arg, &v174);
  if (v157)
  {
    v158 = ci_logger_api();
    if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:v157 depth:? allowAlpha:? containerFormat:? colorSpace:? options:? error:?];
    }

    v151 = imageRepError(11, &cfstr_FailedToCloseT.isa);
    goto LABEL_229;
  }

  v44 = 0;
LABEL_18:
  objc_autoreleasePoolPop(v16);
  v46 = v44;
  if (error)
  {
    *error = v44;
  }

  return v174;
}

void __122__CIContext_ImageRepresentation___CMPhotoRepresentationOfImage_depth_allowAlpha_containerFormat_colorSpace_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, size_t a4, size_t a5, size_t a6)
{
  v11 = *(a1 + 48);
  if (v11 == 1111970369 || v11 == 1279340600)
  {
    v13 = 8;
  }

  else
  {
    v13 = 16;
  }

  v14 = CI::format_from_PixelFormatType(v11);
  v15 = CI::format_CGBitmapInfo(v14, 1);
  v16 = CGBitmapContextCreate(a2, a4, a5, v13, a6, *(a1 + 32), v15);
  v18.size.width = a4;
  v18.size.height = a5;
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  CGContextDrawImage(v16, v18, *(a1 + 40));

  CGContextRelease(v16);
}

uint64_t __122__CIContext_ImageRepresentation___CMPhotoRepresentationOfImage_depth_allowAlpha_containerFormat_colorSpace_options_error___block_invoke_228(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v6 = 0;
    v7 = *(result + 40);
    if (v7 == 1380401729 || v7 == 1815491698)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    do
    {
      if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
      {
        break;
      }

      if (v7 == 1279340854 || v7 == 1815491698)
      {
        if (a4)
        {
          v10 = (4 * (((v9 - 2) >> 1) & 0x7FFFFFFF)) | 2;
          v11 = a4;
          do
          {
            v12 = *(*(result + 32) + 8);
            if (*(v12 + 24) != 1)
            {
              break;
            }

            if (*(a2 + v10) != -1)
            {
              *(v12 + 24) = 0;
            }

            v10 += 2 * v9;
            --v11;
          }

          while (v11);
        }
      }

      else
      {
        v13 = (v9 - 1);
        for (i = a4; i; --i)
        {
          v15 = *(*(result + 32) + 8);
          if (*(v15 + 24) != 1)
          {
            break;
          }

          if (*(a2 + v13) != 255)
          {
            *(v15 + 24) = 0;
          }

          v13 += v9;
        }
      }

      ++v6;
      a2 += a6;
    }

    while (v6 != a5);
  }

  return result;
}

- (id)_JPEGRepresentationOfImage:(id)image colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error
{
  if (canCreateDataRepresentation(image, space, error))
  {
    return [(CIContext *)self _CMPhotoRepresentationOfImage:image depth:8 allowAlpha:0 containerFormat:1 colorSpace:space options:options error:error];
  }

  else
  {
    return 0;
  }
}

- (NSData)OpenEXRRepresentationOfImage:(CIImage *)image options:(NSDictionary *)options error:(NSError *)errorPtr
{
  if (!canCreateDataRepresentation(image, errorPtr))
  {
    return 0;
  }

  v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  CFAutorelease(v9);
  LOBYTE(v11) = 0;
  return [(CIContext *)self _dataRepresentationOfImage:image UTIType:@"com.ilm.openexr-image" format:2056 premultiplied:0 colorSpace:v9 options:options addAuxData:v11 keysToMerge:0 error:errorPtr];
}

- (id)_HEIFRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error
{
  v12 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) _HEIFRepresentationOfImage:format:colorSpace:options:error:]", image);
  if (canCreateDataRepresentation(image, space, v12, error))
  {
    return [(CIContext *)self _CMPhotoRepresentationOfImage:image depth:8 allowAlpha:CI::format_has_alpha(v12) containerFormat:0 colorSpace:space options:options error:error];
  }

  else
  {
    return 0;
  }
}

- (NSData)HEIF10RepresentationOfImage:(CIImage *)image colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  if (canCreateDataRepresentation(image, colorSpace, errorPtr))
  {
    return [(CIContext *)self _CMPhotoRepresentationOfImage:image depth:10 allowAlpha:1 containerFormat:0 colorSpace:colorSpace options:options error:errorPtr];
  }

  else
  {
    return 0;
  }
}

- (BOOL)writeTIFFRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v23[2] = *MEMORY[0x1E69E9840];
  v14 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) writeTIFFRepresentationOfImage:toURL:format:colorSpace:options:error:]", image);
  if (!canCreateDataRepresentation(image, colorSpace, v14, errorPtr))
  {
    return 0;
  }

  v21 = 0;
  v15 = [(CIContext *)self _TIFFRepresentationOfImage:image format:v14 colorSpace:colorSpace options:options error:&v21];
  if (v15)
  {
    v16 = [v15 writeToURL:url options:1 error:&v21];
    if (!errorPtr)
    {
      return v16;
    }
  }

  else
  {
    v16 = 0;
    if (!errorPtr)
    {
      return v16;
    }
  }

  if ((v16 & 1) == 0)
  {
    if (v21)
    {
      v22[0] = *MEMORY[0x1E696AA08];
      v22[1] = @"CINonLocalizedDescriptionKey";
      v23[0] = v21;
      v23[1] = @"failed to write TIFF data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 2;
    }

    else
    {
      v22[0] = @"CINonLocalizedDescriptionKey";
      v23[0] = @"failed to write TIFF data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 1;
    }

    v19 = [v17 dictionaryWithObjects:v23 forKeys:v22 count:v18];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v19];
  }

  return v16;
}

- (BOOL)writePNGRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v23[2] = *MEMORY[0x1E69E9840];
  v14 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) writePNGRepresentationOfImage:toURL:format:colorSpace:options:error:]", image);
  if (!canCreateDataRepresentation(image, colorSpace, v14, errorPtr))
  {
    return 0;
  }

  v21 = 0;
  v15 = [(CIContext *)self _PNGRepresentationOfImage:image format:v14 colorSpace:colorSpace options:options error:&v21];
  if (v15)
  {
    v16 = [v15 writeToURL:url options:1 error:&v21];
    if (!errorPtr)
    {
      return v16;
    }
  }

  else
  {
    v16 = 0;
    if (!errorPtr)
    {
      return v16;
    }
  }

  if ((v16 & 1) == 0)
  {
    if (v21)
    {
      v22[0] = *MEMORY[0x1E696AA08];
      v22[1] = @"CINonLocalizedDescriptionKey";
      v23[0] = v21;
      v23[1] = @"failed to write PNG data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 2;
    }

    else
    {
      v22[0] = @"CINonLocalizedDescriptionKey";
      v23[0] = @"failed to write PNG data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 1;
    }

    v19 = [v17 dictionaryWithObjects:v23 forKeys:v22 count:v18];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v19];
  }

  return v16;
}

- (BOOL)writeJPEGRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (!canCreateDataRepresentation(image, colorSpace, errorPtr))
  {
    return 0;
  }

  v19 = 0;
  v13 = [(CIContext *)self _JPEGRepresentationOfImage:image colorSpace:colorSpace options:options error:&v19];
  if (v13)
  {
    v14 = [v13 writeToURL:url options:1 error:&v19];
    if (!errorPtr)
    {
      return v14;
    }
  }

  else
  {
    v14 = 0;
    if (!errorPtr)
    {
      return v14;
    }
  }

  if ((v14 & 1) == 0)
  {
    if (v19)
    {
      v20[0] = *MEMORY[0x1E696AA08];
      v20[1] = @"CINonLocalizedDescriptionKey";
      v21[0] = v19;
      v21[1] = @"failed to write JPEG data to file.";
      v15 = MEMORY[0x1E695DF20];
      v16 = 2;
    }

    else
    {
      v20[0] = @"CINonLocalizedDescriptionKey";
      v21[0] = @"failed to write JPEG data to file.";
      v15 = MEMORY[0x1E695DF20];
      v16 = 1;
    }

    v17 = [v15 dictionaryWithObjects:v21 forKeys:v20 count:v16];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v17];
  }

  return v14;
}

- (BOOL)writeHEIFRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v23[2] = *MEMORY[0x1E69E9840];
  v14 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) writeHEIFRepresentationOfImage:toURL:format:colorSpace:options:error:]", image);
  if (!canCreateDataRepresentation(image, colorSpace, v14, errorPtr))
  {
    return 0;
  }

  v21 = 0;
  v15 = [(CIContext *)self _HEIFRepresentationOfImage:image format:v14 colorSpace:colorSpace options:options error:&v21];
  if (v15)
  {
    v16 = [v15 writeToURL:url options:1 error:&v21];
    if (!errorPtr)
    {
      return v16;
    }
  }

  else
  {
    v16 = 0;
    if (!errorPtr)
    {
      return v16;
    }
  }

  if ((v16 & 1) == 0)
  {
    if (v21)
    {
      v22[0] = *MEMORY[0x1E696AA08];
      v22[1] = @"CINonLocalizedDescriptionKey";
      v23[0] = v21;
      v23[1] = @"failed to write HEIC data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 2;
    }

    else
    {
      v22[0] = @"CINonLocalizedDescriptionKey";
      v23[0] = @"failed to write HEIC data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 1;
    }

    v19 = [v17 dictionaryWithObjects:v23 forKeys:v22 count:v18];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v19];
  }

  return v16;
}

- (BOOL)writeHEIF10RepresentationOfImage:(CIImage *)image toURL:(NSURL *)url colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (!canCreateDataRepresentation(image, colorSpace, errorPtr))
  {
    return 0;
  }

  v19 = 0;
  v13 = [(CIContext *)self HEIF10RepresentationOfImage:image colorSpace:colorSpace options:options error:&v19];
  if (v13)
  {
    v14 = [(NSData *)v13 writeToURL:url options:1 error:&v19];
    if (!errorPtr)
    {
      return v14;
    }
  }

  else
  {
    v14 = 0;
    if (!errorPtr)
    {
      return v14;
    }
  }

  if (!v14)
  {
    if (v19)
    {
      v20[0] = *MEMORY[0x1E696AA08];
      v20[1] = @"CINonLocalizedDescriptionKey";
      v21[0] = v19;
      v21[1] = @"failed to write HEIC data to file.";
      v15 = MEMORY[0x1E695DF20];
      v16 = 2;
    }

    else
    {
      v20[0] = @"CINonLocalizedDescriptionKey";
      v21[0] = @"failed to write HEIC data to file.";
      v15 = MEMORY[0x1E695DF20];
      v16 = 1;
    }

    v17 = [v15 dictionaryWithObjects:v21 forKeys:v20 count:v16];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v17];
  }

  return v14;
}

- (BOOL)writeOpenEXRRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (!canCreateDataRepresentation(image, errorPtr))
  {
    return 0;
  }

  v17 = 0;
  v11 = [(CIContext *)self OpenEXRRepresentationOfImage:image options:options error:&v17];
  if (v11)
  {
    v12 = [(NSData *)v11 writeToURL:url options:1 error:&v17];
    if (!errorPtr)
    {
      return v12;
    }
  }

  else
  {
    v12 = 0;
    if (!errorPtr)
    {
      return v12;
    }
  }

  if (!v12)
  {
    if (v17)
    {
      v18[0] = *MEMORY[0x1E696AA08];
      v18[1] = @"CINonLocalizedDescriptionKey";
      v19[0] = v17;
      v19[1] = @"failed to write OpenEXR data to file.";
      v13 = MEMORY[0x1E695DF20];
      v14 = 2;
    }

    else
    {
      v18[0] = @"CINonLocalizedDescriptionKey";
      v19[0] = @"failed to write OpenEXR data to file.";
      v13 = MEMORY[0x1E695DF20];
      v14 = 1;
    }

    v15 = [v13 dictionaryWithObjects:v19 forKeys:v18 count:v14];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v15];
  }

  return v12;
}

- (CIFilter)depthBlurEffectFilterForImageData:(NSData *)data options:(NSDictionary *)options
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = [CIImage imageWithData:?];
  v43 = @"kCIImageAuxiliaryDisparity";
  v44[0] = &unk_1F1081A58;
  v7 = +[CIImage imageWithData:options:](CIImage, "imageWithData:options:", data, [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1]);
  v41 = @"kCIImageAuxiliaryPortraitEffectsMatte";
  v42 = &unk_1F1081A58;
  v8 = +[CIImage imageWithData:options:](CIImage, "imageWithData:options:", data, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1]);
  v39 = @"kCIImageAuxiliarySemanticSegmentationHairMatte";
  v40 = &unk_1F1081A58;
  v9 = +[CIImage imageWithData:options:](CIImage, "imageWithData:options:", data, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1]);
  v37 = @"kCIImageAuxiliarySemanticSegmentationGlassesMatte";
  v38 = &unk_1F1081A58;
  v10 = +[CIImage imageWithData:options:](CIImage, "imageWithData:options:", data, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1]);
  v35 = @"kCIImageAuxiliaryHDRGainMap";
  v36 = &unk_1F1081A58;
  v11 = +[CIImage imageWithData:options:](CIImage, "imageWithData:options:", data, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1]);
  if (!v6)
  {
    v16 = ci_logger_api();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIDepthBlurEffect) *)v16 depthBlurEffectFilterForImageData:v17 options:v18, v19, v20, v21, v22, v23];
    }

    return 0;
  }

  if (!v7)
  {
    v24 = ci_logger_api();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIDepthBlurEffect) *)v24 depthBlurEffectFilterForImageData:v25 options:v26, v27, v28, v29, v30, v31];
    }

    return 0;
  }

  v12 = v11;
  properties = [(CIImage *)v6 properties];
  if (properties)
  {
    v14 = [-[NSDictionary objectForKey:](properties objectForKey:{@"Orientation", "intValue"}];
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 8)
    {
      v15 = 8;
    }
  }

  else
  {
    v15 = 1;
  }

  LODWORD(v33) = v15;
  return [(CIContext *)self depthBlurEffectFilterForImage:v6 disparityImage:v7 portraitEffectsMatte:v8 hairSemanticSegmentation:v9 glassesMatte:v10 gainMap:v12 orientation:v33 options:options];
}

- (CIFilter)depthBlurEffectFilterForImageURL:(NSURL *)url options:(NSDictionary *)options
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = [CIImage imageWithContentsOfURL:?];
  v43 = @"kCIImageAuxiliaryDisparity";
  v44[0] = &unk_1F1081A58;
  v7 = +[CIImage imageWithContentsOfURL:options:](CIImage, "imageWithContentsOfURL:options:", url, [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1]);
  v41 = @"kCIImageAuxiliaryPortraitEffectsMatte";
  v42 = &unk_1F1081A58;
  v8 = +[CIImage imageWithContentsOfURL:options:](CIImage, "imageWithContentsOfURL:options:", url, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1]);
  v39 = @"kCIImageAuxiliarySemanticSegmentationHairMatte";
  v40 = &unk_1F1081A58;
  v9 = +[CIImage imageWithContentsOfURL:options:](CIImage, "imageWithContentsOfURL:options:", url, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1]);
  v37 = @"kCIImageAuxiliarySemanticSegmentationGlassesMatte";
  v38 = &unk_1F1081A58;
  v10 = +[CIImage imageWithContentsOfURL:options:](CIImage, "imageWithContentsOfURL:options:", url, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1]);
  v35 = @"kCIImageAuxiliaryHDRGainMap";
  v36 = &unk_1F1081A58;
  v11 = +[CIImage imageWithContentsOfURL:options:](CIImage, "imageWithContentsOfURL:options:", url, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1]);
  if (!v6)
  {
    v16 = ci_logger_api();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIDepthBlurEffect) *)v16 depthBlurEffectFilterForImageURL:v17 options:v18, v19, v20, v21, v22, v23];
    }

    return 0;
  }

  if (!v7)
  {
    v24 = ci_logger_api();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIDepthBlurEffect) *)v24 depthBlurEffectFilterForImageURL:v25 options:v26, v27, v28, v29, v30, v31];
    }

    return 0;
  }

  v12 = v11;
  properties = [(CIImage *)v6 properties];
  if (properties)
  {
    v14 = [-[NSDictionary objectForKey:](properties objectForKey:{@"Orientation", "intValue"}];
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 8)
    {
      v15 = 8;
    }
  }

  else
  {
    v15 = 1;
  }

  LODWORD(v33) = v15;
  return [(CIContext *)self depthBlurEffectFilterForImage:v6 disparityImage:v7 portraitEffectsMatte:v8 hairSemanticSegmentation:v9 glassesMatte:v10 gainMap:v12 orientation:v33 options:options];
}

- (void)_performFaceDetection:(id)detection image:(id)image orientation:(int)orientation filter:(id)filter
{
  v7 = *&orientation;
  v88[1] = *MEMORY[0x1E69E9840];
  v9 = [CIDetector detectorOfType:@"CIDetectorTypeFace" context:self options:MEMORY[0x1E695E0F8]];
  CGAffineTransformMakeScale(&v85, 0.25, 0.25);
  v10 = [image imageByApplyingTransform:&v85 highQualityDownsample:0];
  [v10 extent];
  if (v11 < 1024.0 || ([v10 extent], v12 < 1024.0))
  {
    [image extent];
    v75 = v13;
    [image extent];
    v14.f64[0] = v75;
    v14.f64[1] = v15;
    v16 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(v14, vdupq_n_s64(0x3F50000000000000uLL))));
    __asm { FMOV            V1.2D, #1.0 }

    v21 = vdivq_f64(_Q1, v16);
    if (v21.f64[0] >= v21.f64[1])
    {
      v21.f64[0] = v21.f64[1];
    }

    v22 = v21.f64[0];
    CGAffineTransformMakeScale(&v85, v22, v22);
    v10 = [image imageByApplyingTransform:&v85 highQualityDownsample:0];
  }

  v87 = @"CIDetectorImageOrientation";
  v88[0] = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v23 = -[CIDetector featuresInImage:options:](v9, "featuresInImage:options:", v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1]);
  if (v23)
  {
    v24 = v23;
    if ([(NSArray *)v23 count]<= 4)
    {
      v25 = [(NSArray *)v24 count];
      if (!v25)
      {
        return;
      }
    }

    else
    {
      v25 = 4;
    }

    v26 = malloc_type_calloc(8 * v25, 8uLL, 0x100004000313F17uLL);
    if (v26)
    {
      v27 = v26;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v28 = [(NSArray *)v24 countByEnumeratingWithState:&v77 objects:v86 count:16];
      if (v28)
      {
        v29 = v28;
        v74 = v10;
        v69 = v7;
        v30 = 0;
        v71 = &v27[2 * v25];
        v72 = &v27[4 * v25];
        v73 = &v27[6 * v25];
        v31 = *v78;
        v76 = v27;
LABEL_13:
        v32 = 0;
        while (1)
        {
          if (*v78 != v31)
          {
            objc_enumerationMutation(v24);
          }

          if (v30 > 3)
          {
            break;
          }

          v33 = *(*(&v77 + 1) + 8 * v32);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v33 hasLeftEyePosition])
            {
              if ([v33 hasRightEyePosition])
              {
                landmarks = [v33 landmarks];
                if (landmarks)
                {
                  v35 = landmarks;
                  if ([landmarks objectForKeyedSubscript:@"nose"])
                  {
                    v36 = [v35 objectForKeyedSubscript:@"faceContour"];
                    v37 = 0.0;
                    if ([v33 hasFaceAngle])
                    {
                      [v33 faceAngle];
                      v37 = v38 * 3.14159265;
                    }

                    if (v36 && [v36 count])
                    {
                      [objc_msgSend(v36 objectAtIndexedSubscript:{0), "CGPointValue"}];
                      v40 = v39;
                      memset(&v85, 0, sizeof(v85));
                      if (v74)
                      {
                        [v74 imageTransformForOrientation:v69];
                      }

                      filterCopy = filter;
                      memset(&v84, 0, sizeof(v84));
                      CGAffineTransformMakeRotation(&v84, v37 / 180.0);
                      t1 = v85;
                      memset(&v83, 0, sizeof(v83));
                      t2 = v84;
                      CGAffineTransformConcat(&v83, &t1, &t2);
                      v41 = 0;
                      if ([v36 count])
                      {
                        v42 = 0;
                        do
                        {
                          [objc_msgSend(v36 objectAtIndexedSubscript:{v42), "CGPointValue"}];
                          v45 = v83.ty + v43 * v83.d + v83.b * v44;
                          if (v45 < v40 || v42 == 0)
                          {
                            v41 = v42;
                            v40 = v45;
                          }

                          ++v42;
                        }

                        while (v42 < [v36 count]);
                      }

                      [objc_msgSend(v36 objectAtIndexedSubscript:{v41), "CGPointValue"}];
                      v48 = v47;
                      v50 = v49;
                      v51 = *MEMORY[0x1E695EFF8];
                      v52 = *(MEMORY[0x1E695EFF8] + 8);
                      filter = filterCopy;
                    }

                    else
                    {
                      v51 = *MEMORY[0x1E695EFF8];
                      v52 = *(MEMORY[0x1E695EFF8] + 8);
                      v48 = *MEMORY[0x1E695EFF8];
                      v50 = v52;
                    }

                    v53 = v48 == v51 && v50 == v52;
                    v27 = v76;
                    if (!v53)
                    {
                      v54 = CIVNAverage([v35 objectForKeyedSubscript:@"nose"]);
                      v56 = v55;
                      [v33 leftEyePosition];
                      v76[2 * v30] = v57;
                      [v33 leftEyePosition];
                      v58 = (16 * v30) | 8;
                      *(v76 + v58) = v59;
                      [v33 rightEyePosition];
                      v71[2 * v30] = v60;
                      [v33 rightEyePosition];
                      *(v71 + v58) = v61;
                      v27 = v76;
                      v73[2 * v30] = v48;
                      *(v73 + v58) = v50;
                      v72[2 * v30++] = v54;
                      *(v72 + v58) = v56;
                    }
                  }
                }
              }
            }
          }

          if (++v32 == v29)
          {
            v29 = [(NSArray *)v24 countByEnumeratingWithState:&v77 objects:v86 count:16];
            if (v29)
            {
              goto LABEL_13;
            }

            break;
          }
        }

        if (v30 >= 5)
        {
          [CIContext(CIDepthBlurEffect) _performFaceDetection:image:orientation:filter:];
        }

        if (v30)
        {
          [v74 extent];
          v70 = v62;
          [v74 extent];
          v63 = 4 * v30;
          v64 = vdupq_lane_s64(v70, 0);
          v66 = vdupq_lane_s64(v65, 0);
          v67 = v27;
          do
          {
            v89 = vld2q_f64(v67);
            v90.val[0] = vdivq_f64(v89.val[0], v64);
            v90.val[1] = vdivq_f64(v89.val[1], v66);
            vst2q_f64(v67, v90);
            v67 += 4;
            v63 -= 2;
          }

          while (v63);
          [filter setValue:+[CIVector vectorWithValues:count:](CIVector forKey:{"vectorWithValues:count:", v27, 2 * v30), @"inputLeftEyePositions"}];
          [filter setValue:+[CIVector vectorWithValues:count:](CIVector forKey:{"vectorWithValues:count:", v71, 2 * v30), @"inputRightEyePositions"}];
          [filter setValue:+[CIVector vectorWithValues:count:](CIVector forKey:{"vectorWithValues:count:", v72, 2 * v30), @"inputNosePositions"}];
          [filter setValue:+[CIVector vectorWithValues:count:](CIVector forKey:{"vectorWithValues:count:", v73, 2 * v30), @"inputChinPositions"}];
        }
      }

      free(v27);
    }
  }
}

- (CIFilter)depthBlurEffectFilterForImage:(CIImage *)image disparityImage:(CIImage *)disparityImage portraitEffectsMatte:(CIImage *)portraitEffectsMatte hairSemanticSegmentation:(CIImage *)hairSemanticSegmentation glassesMatte:(CIImage *)glassesMatte gainMap:(CIImage *)gainMap orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v80 = *MEMORY[0x1E69E9840];
  if (!image || !disparityImage)
  {
    v29 = ci_logger_api();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImage:v29 disparityImage:v30 portraitEffectsMatte:v31 hairSemanticSegmentation:v32 glassesMatte:v33 gainMap:v34 orientation:v35 options:v36];
    }

    return 0;
  }

  [(CIImage *)image extent];
  x = v81.origin.x;
  y = v81.origin.y;
  width = v81.size.width;
  height = v81.size.height;
  if (CGRectIsEmpty(v81) || (v82.origin.x = x, v82.origin.y = y, v82.size.width = width, v82.size.height = height, CGRectIsInfinite(v82)))
  {
    v21 = ci_logger_api();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImage:v21 disparityImage:v22 portraitEffectsMatte:v23 hairSemanticSegmentation:v24 glassesMatte:v25 gainMap:v26 orientation:v27 options:v28];
    }

    return 0;
  }

  v39 = orientation;
  if (orientation - 9 <= 0xFFFFFFF7)
  {
    v40 = ci_logger_api();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImage:v40 disparityImage:v41 portraitEffectsMatte:v42 hairSemanticSegmentation:v43 glassesMatte:v44 gainMap:v45 orientation:v46 options:v47];
    }

    return 0;
  }

  v37 = [CIFilter filterWithName:@"CIDepthBlurEffect"];
  [(CIFilter *)v37 setDefaults];
  [(CIFilter *)v37 setValue:image forKey:@"inputImage"];
  [(CIFilter *)v37 setValue:disparityImage forKey:@"inputDisparityImage"];
  if (portraitEffectsMatte)
  {
    [(CIFilter *)v37 setValue:portraitEffectsMatte forKey:@"inputMatteImage"];
  }

  if (hairSemanticSegmentation)
  {
    [(CIFilter *)v37 setValue:hairSemanticSegmentation forKey:@"inputHairImage"];
  }

  if (glassesMatte)
  {
    [(CIFilter *)v37 setValue:glassesMatte forKey:@"inputGlassesImage"];
  }

  if (gainMap)
  {
    [(CIFilter *)v37 setValue:gainMap forKey:@"inputGainMap"];
  }

  properties = [(CIImage *)disparityImage properties];
  if (properties)
  {
    v49 = [(NSDictionary *)properties objectForKeyedSubscript:*MEMORY[0x1E696D228]];
    if (v49)
    {
      v50 = v49;
      [(CIFilter *)v37 setValue:v49 forKey:@"inputAuxDataMetadata"];
      v51 = CGImageMetadataCopyTagWithPath(v50, 0, @"depthBlurEffect:SimulatedAperture");
      if (v51)
      {
        v52 = v51;
        [CGImageMetadataTagCopyValue(v51) floatValue];
        -[CIFilter setValue:forKey:](v37, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:?], @"inputAperture");
        CFRelease(v52);
      }
    }
  }

  depthData = [(CIImage *)disparityImage depthData];
  v55 = AVFDepthCameraCalibrationData(depthData, v54);
  if (v55)
  {
    [(CIFilter *)v37 setValue:v55 forKey:@"inputCalibrationData"];
  }

  v56 = options;
  if ([(CIImage *)image properties])
  {
    properties2 = [(CIImage *)image properties];
    Value = CFDictionaryGetValue(properties2, *MEMORY[0x1E696DE30]);
    if (Value)
    {
      v59 = CFDictionaryGetValue(Value, @"29");
      if (v59)
      {
        [(CIFilter *)v37 setValue:v59 forKey:@"inputLumaNoiseScale"];
      }
    }
  }

  properties3 = [(CIImage *)image properties];
  if (properties3)
  {
    v61 = [(NSDictionary *)properties3 objectForKey:*MEMORY[0x1E696D8B0]];
    if (v61)
    {
      v62 = [v61 objectForKey:@"Regions"];
      if (v62)
      {
        v63 = [v62 objectForKey:*MEMORY[0x1E696D930]];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v64 = [v63 countByEnumeratingWithState:&v75 objects:v79 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v76;
          v67 = *MEMORY[0x1E696D938];
          v68 = *MEMORY[0x1E696D920];
          v73 = options;
          while (2)
          {
            for (i = 0; i != v65; ++i)
            {
              if (*v76 != v66)
              {
                objc_enumerationMutation(v63);
              }

              v70 = *(*(&v75 + 1) + 8 * i);
              v71 = [v70 objectForKey:{v67, v73}];
              if (v71 && [v71 isEqualToString:v68] && CGRectMakeWithDictionaryRepresentation(v70, &rect))
              {
                rect.origin.x = rect.origin.x - rect.size.width * 0.5;
                rect.origin.y = 1.0 - rect.origin.y - rect.size.height * 0.5;
                v72 = [CIVector vectorWithCGRect:?];
                v39 = orientation;
                v56 = v73;
                if (v72)
                {
                  [(CIFilter *)v37 setValue:v72 forKey:@"inputFocusRect"];
                }

                goto LABEL_48;
              }
            }

            v65 = [v63 countByEnumeratingWithState:&v75 objects:v79 count:16];
            v39 = orientation;
            v56 = v73;
            if (v65)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

LABEL_48:
  [(CIContext *)self _performFaceDetection:v56 image:image orientation:v39 filter:v37];
  return v37;
}

- (CIRenderTask)startTaskToRender:(CIImage *)image fromRect:(CGRect)fromRect toDestination:(CIRenderDestination *)destination atPoint:(CGPoint)atPoint error:(NSError *)error
{
  y = atPoint.y;
  x = atPoint.x;
  v11 = fromRect.origin.y;
  v12 = fromRect.origin.x;
  v14 = [(CIImage *)image imageByCroppingToRect:fromRect.origin.x, fromRect.origin.y, fromRect.size.width, fromRect.size.height];
  CGAffineTransformMakeTranslation(&v16, x - v12, y - v11);
  return [(CIContext *)self startTaskToRender:[(CIImage *)v14 imageByApplyingTransform:&v16] toDestination:destination error:error];
}

- (id)_startTaskToRender:(id)render toDestination:(id)destination forPrepareRender:(BOOL)prepareRender forClear:(BOOL)clear error:(id *)error
{
  prepareRenderCopy = prepareRender;
  v131[4] = *MEMORY[0x1E69E9840];
  [(CIContext *)self _gpuContextCheck];
  _internalContext = [(CIContext *)self _internalContext];
  if (!_internalContext)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:1 userInfo:&unk_1F1082640];
    }

    v32 = ci_logger_api();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIRenderDestination) *)v32 _startTaskToRender:v33 toDestination:v34 forPrepareRender:v35 forClear:v36 error:v37, v38, v39];
    }

    return 0;
  }

  if (!destination)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:2 userInfo:&unk_1F1082668];
    }

    v48 = ci_logger_api();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIRenderDestination) *)v48 _startTaskToRender:v49 toDestination:v50 forPrepareRender:v51 forClear:v52 error:v53, v54, v55];
    }

    return 0;
  }

  v14 = _internalContext;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![destination _internalRepresentation])
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:3 userInfo:&unk_1F1082690];
    }

    v40 = ci_logger_api();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIRenderDestination) *)v40 _startTaskToRender:v41 toDestination:v42 forPrepareRender:v43 forClear:v44 error:v45, v46, v47];
    }

    return 0;
  }

  [render extent];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  width = [destination width];
  v134.size.height = [destination height];
  v134.origin.x = 0.0;
  v134.origin.y = 0.0;
  v132.origin.x = v16;
  v132.origin.y = v18;
  v132.size.width = v20;
  v132.size.height = v22;
  v134.size.width = width;
  v133 = CGRectIntersection(v132, v134);
  if (CGRectIsEmpty(v133))
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:4 userInfo:&unk_1F10826B8];
    }

    v24 = ci_logger_api();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIRenderDestination) *)v24 _startTaskToRender:v25 toDestination:v26 forPrepareRender:v27 forClear:v28 error:v29, v30, v31];
    }

    return 0;
  }

  format = [destination format];
  _internalContext2 = [(CIContext *)self _internalContext];
  if ((*(*_internalContext2 + 16))(_internalContext2) == 84 && CI::format_is_not_supported_as_destination_on_gles(format))
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:5 userInfo:&unk_1F10826E0];
    }

    v59 = ci_logger_api();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CIRenderDestination) _startTaskToRender:format toDestination:? forPrepareRender:? forClear:? error:?];
    }

    return 0;
  }

  if ([destination blendKernel] && objc_msgSend(destination, "alphaMode") == 3)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:6 userInfo:&unk_1F1082708];
    }

    v60 = ci_logger_api();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIRenderDestination) *)v60 _startTaskToRender:v61 toDestination:v62 forPrepareRender:v63 forClear:v64 error:v65, v66, v67];
    }

    return 0;
  }

  colorSpace = [destination colorSpace];
  alphaMode = [destination alphaMode];
  format2 = [destination format];
  if (!CI_NO_CM() && CI::format_only_alpha(format2))
  {
    colorSpace = 0;
  }

  context = objc_autoreleasePoolPush();
  if (!CI_NO_CM())
  {
    baseColorSpace = [render baseColorSpace];
    if (CI::ColorSpace_is_HDR(baseColorSpace, v100))
    {
      if (colorSpace && (CI::ColorSpace_is_HDR(colorSpace, v101) & 1) == 0 && !CGColorSpaceUsesExtendedRange(colorSpace))
      {
        render = [objc_msgSend(render imageByColorMatchingWorkingSpaceToColorSpace:{baseColorSpace), "imageByToneMappingColorSpaceToWorkingSpace:", baseColorSpace}];
      }
    }
  }

  if ([destination blendKernel] && (v71 = objc_msgSend(destination, "imageRepresentation")) != 0)
  {
    v72 = v71;
    if ([objc_msgSend(destination "blendKernel")])
    {
      [render extent];
      v72 = [v72 imageByCroppingToRect:?];
    }

    if ((*(*v14 + 16))(v14) == 84 || [destination isCompressed])
    {
      v72 = [v72 imageByInsertingIntermediate:0];
    }

    v73 = [destination blendsInDestinationColorSpace] ^ 1;
    if ((v73 & 1) == 0 && colorSpace && !CI_NO_CM())
    {
      render = [render imageByColorMatchingWorkingSpaceToRGBorGrayColorSpace:colorSpace];
      v72 = [v72 imageByColorMatchingWorkingSpaceToRGBorGrayColorSpace:colorSpace];
    }

    render = [objc_msgSend(destination "blendKernel")];
  }

  else
  {
    v73 = 1;
  }

  if (v73 && colorSpace && !CI_NO_CM())
  {
    render = [render imageByColorMatchingWorkingSpaceToRGBorGrayColorSpace:colorSpace];
  }

  v74 = [render imageByCroppingToRect:{0.0, 0.0, objc_msgSend(destination, "width"), objc_msgSend(destination, "height")}];
  _imageByClampingAlpha = v74;
  if (!alphaMode)
  {
    [(CIImage *)v74 extent];
    _imageByClampingAlpha = [(CIImage *)_imageByClampingAlpha imageBySettingAlphaOneInExtent:?];
  }

  if ([destination isClamped])
  {
    _imageByClampingAlpha = [(CIImage *)_imageByClampingAlpha _imageByClampingAlpha];
  }

  _internalRepresentation = [destination _internalRepresentation];
  if (*(_internalRepresentation + 28))
  {
    v77 = *(_internalRepresentation + 32);
    v78 = *(_internalRepresentation + 40);
    v79 = *(_internalRepresentation + 48);
    v80 = *(_internalRepresentation + 56);
    v81 = *(_internalRepresentation + 64);
    v82 = *(_internalRepresentation + 72);
    v83 = *(_internalRepresentation + 80);
    v84 = *(_internalRepresentation + 88);
    v85 = *(_internalRepresentation + 96);
    v86 = *(_internalRepresentation + 104);
    v87 = *(_internalRepresentation + 112);
    v130[0] = @"inputRVector";
    v131[0] = [CIVector vectorWithX:v77 Y:v78 Z:v79];
    v130[1] = @"inputGVector";
    v131[1] = [CIVector vectorWithX:v80 Y:v81 Z:v82];
    v130[2] = @"inputBVector";
    v131[2] = [CIVector vectorWithX:v83 Y:v84 Z:v85];
    v130[3] = @"inputBiasVector";
    v131[3] = [CIVector vectorWithX:v86 Y:v87 Z:v87];
    _imageByClampingAlpha = -[CIImage imageByApplyingFilter:withInputParameters:](_imageByClampingAlpha, "imageByApplyingFilter:withInputParameters:", @"CIColorMatrix", [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:4]);
  }

  if ([destination isDithered])
  {
    _imageByClampingAlpha = ditherImage(_imageByClampingAlpha, [destination ditherDepth], objc_msgSend(destination, "colorSpace"));
  }

  if (alphaMode == 2)
  {
    _imageByClampingAlpha = [(CIImage *)_imageByClampingAlpha imageByUnpremultiplyingAlpha];
  }

  if ([destination isFlipped])
  {
    v127 = 0;
    buf = 0x3FF0000000000000uLL;
    v128 = xmmword_19CF25100;
    height = [destination height];
    _imageByClampingAlpha = [(CIImage *)_imageByClampingAlpha imageByApplyingTransform:&buf];
  }

  captureTraceURL = [destination captureTraceURL];
  v89 = 0;
  if (clear)
  {
    v91 = 0;
    mEMORY[0x1E6974000] = 0;
    goto LABEL_90;
  }

  v90 = captureTraceURL;
  v91 = 0;
  mEMORY[0x1E6974000] = 0;
  if (!captureTraceURL)
  {
    goto LABEL_90;
  }

  if (![(CIContext *)self device])
  {
    goto LABEL_89;
  }

  if (![v90 isFileURL] || !objc_msgSend(objc_msgSend(v90, "path"), "hasSuffix:", @".gputrace"))
  {
    v102 = ci_logger_api();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CIRenderDestination) _startTaskToRender:toDestination:forPrepareRender:forClear:error:];
    }

LABEL_89:
    v89 = 0;
    v91 = 0;
    mEMORY[0x1E6974000] = 0;
    goto LABEL_90;
  }

  v123 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:objc_msgSend(v90 isDirectory:{"path"), 0}])
  {
    if (([defaultManager removeItemAtPath:objc_msgSend(v90 error:{"path"), &v123}] & 1) == 0)
    {
      v94 = ci_logger_api();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        [CIContext(CIRenderDestination) _startTaskToRender:toDestination:forPrepareRender:forClear:error:];
      }
    }
  }

  mEMORY[0x1E6974000] = [MEMORY[0x1E6974000] sharedCaptureManager];
  v91 = objc_alloc_init(MEMORY[0x1E6973FF8]);
  [v91 setCaptureObject:{-[CIContext internalCommandQueue](self, "internalCommandQueue")}];
  [v91 setDestination:2];
  [v91 setOutputURL:v90];
  v89 = [mEMORY[0x1E6974000] newCaptureScopeWithDevice:{-[CIContext device](self, "device")}];
  [v89 setLabel:@"Capture Scope"];
  v95 = [mEMORY[0x1E6974000] startCaptureWithDescriptor:v91 error:&v123];
  v96 = ci_logger_render();
  if (v95)
  {
    v97 = v96;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
    {
      v98 = [objc_msgSend(v91 "outputURL")];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v98;
      _os_log_impl(&dword_19CC36000, v97, OS_LOG_TYPE_INFO, "CIRenderDestination.captureTraceURL: %{public}@\n", &buf, 0xCu);
    }

    [v89 beginScope];
  }

  else
  {
    v113 = v96;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIRenderDestination) *)&v123 _startTaskToRender:v113 toDestination:v114 forPrepareRender:v115 forClear:v116 error:v117, v118, v119];
    }

    v120 = ci_logger_render();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CIRenderDestination) _startTaskToRender:toDestination:forPrepareRender:forClear:error:];
    }
  }

LABEL_90:
  [(CIContext *)self lock];
  _internalContext3 = [(CIContext *)self _internalContext];
  v104 = _internalContext3;
  if (prepareRenderCopy)
  {
    _internalContext3[86] = 1;
  }

  if ([destination blendKernel] || clear)
  {
    v106 = (*(*v104 + 296))(v104);
    (*(*v104 + 288))(v104, 0);
    v105 = [destination _render:_imageByClampingAlpha withContext:self];
    if (v106)
    {
      (*(*v104 + 288))(v104, 1);
    }
  }

  else
  {
    v105 = [destination _render:_imageByClampingAlpha withContext:self];
  }

  if (prepareRenderCopy)
  {
    v104[86] = 0;
  }

  if (![(CIContext *)self clientCommandQueue])
  {
    CI::RenderTask::waitUntilScheduled(v105);
  }

  [(CIContext *)self unlock];
  [v89 endScope];
  [mEMORY[0x1E6974000] stopCapture];

  v107 = *(v105 + 16);
  if (v107)
  {
    v108 = CFRetain(v107);
    if (v108)
    {
      v109 = v108;
      CI::Object::unref(v105);
      objc_autoreleasePoolPop(contexta);
      v110 = ci_logger_api();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        [CIContext(CIRenderDestination) _startTaskToRender:v109 toDestination:? forPrepareRender:? forClear:? error:?];
        if (error)
        {
          goto LABEL_105;
        }
      }

      else if (error)
      {
LABEL_105:
        v124 = @"CINonLocalizedDescriptionKey";
        v125 = v109;
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextRenderDestination" code:5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v125, &v124, 1)}];
LABEL_113:
        CFRelease(v109);
        return 0;
      }

      CI::Context::AbortIfUnhandledError(v109, v111);
      goto LABEL_113;
    }
  }

  v112 = [[CIRenderTask alloc] initWithInternalTask:v105];
  CI::Object::unref(v105);
  objc_autoreleasePoolPop(contexta);
  return v112;
}

- (BOOL)prepareRender:(CIImage *)image fromRect:(CGRect)fromRect toDestination:(CIRenderDestination *)destination atPoint:(CGPoint)atPoint error:(NSError *)error
{
  y = atPoint.y;
  x = atPoint.x;
  v11 = fromRect.origin.y;
  v12 = fromRect.origin.x;
  v14 = [(CIImage *)image imageByCroppingToRect:fromRect.origin.x, fromRect.origin.y, fromRect.size.width, fromRect.size.height];
  CGAffineTransformMakeTranslation(&v16, x - v12, y - v11);
  return [(CIContext *)self _startTaskToRender:[(CIImage *)v14 imageByApplyingTransform:&v16] toDestination:destination forPrepareRender:1 forClear:0 error:error]!= 0;
}

- (CIRenderTask)startTaskToClear:(CIRenderDestination *)destination error:(NSError *)error
{
  blendKernel = [(CIRenderDestination *)destination blendKernel];
  v8 = blendKernel;
  if (blendKernel)
  {
    v9 = blendKernel;
    [(CIRenderDestination *)destination setBlendKernel:0];
  }

  error = [(CIContext *)self _startTaskToRender:+[CIImage imageWithColor:](CIImage toDestination:"imageWithColor:" forPrepareRender:+[CIColor forClear:"clearColor"]) error:destination, 0, 1, error];
  if (v8)
  {
    [(CIRenderDestination *)destination setBlendKernel:v8];
  }

  return error;
}

+ (void)loadArchiveWithURL:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setObject:forKey:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setObject:forKey:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)objectForKey:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)render:(int)a1 toBitmap:rowBytes:bounds:format:colorSpace:.cold.1(int a1)
{
  CI::name_for_format(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s format %{public}s is unsupported.", v3, v4, v5, v6, 2u);
}

- (void)render:(int)a1 toBitmap:rowBytes:bounds:format:colorSpace:.cold.4(int a1)
{
  CI::name_for_format(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s format %{public}s is not supported on GLES.", v3, v4, v5, v6, 2u);
}

@end