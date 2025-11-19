@interface VNSaliencyHeatmapBoundingBoxGenerator
+ (id)calculateSaliencyBoundingBoxesForDetectorType:(id)a3 pixelBuffer:(__CVBuffer *)a4 configurationOptions:(id)a5 originatingRequestSpecifier:(id)a6 regionOfInterest:(CGRect)a7 qosClass:(unsigned int)a8 warningRecorder:(id)a9 error:(id *)a10;
+ (id)configurationOptionKeysForDetectorKey;
+ (void)recordDefaultConfigurationOptionsInDictionary:(id)a3;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (BOOL)warmUpSession:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (__CVBuffer)_createPixelBufferOfWidth:(unint64_t)a3 height:(unint64_t)a4 fromImageBuffer:(id)a5 options:(id)a6 error:(id *)a7;
- (id)_observationsForOneComponent32FloatPixelBuffer:(__CVBuffer *)a3 options:(id)a4 regionOfInterest:(CGRect)a5 error:(id *)a6;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNSaliencyHeatmapBoundingBoxGenerator

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__VNSaliencyHeatmapBoundingBoxGenerator_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNSaliencyHeatmapBoundingBoxGenerator configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNSaliencyHeatmapBoundingBoxGenerator configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNSaliencyHeatmapBoundingBoxGenerator configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __78__VNSaliencyHeatmapBoundingBoxGenerator_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNSaliencyHeatmapBoundingBoxGenerator;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 removeObject:@"VNDetectorOption_OriginatingRequestSpecifier"];
  [v2 removeObject:@"VNDetectorOption_PreferBackgroundProcessing"];
  v3 = [v2 copy];
  v4 = +[VNSaliencyHeatmapBoundingBoxGenerator configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNSaliencyHeatmapBoundingBoxGenerator configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (void)recordDefaultConfigurationOptionsInDictionary:(id)a3
{
  v4 = a3;
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___VNSaliencyHeatmapBoundingBoxGenerator;
  objc_msgSendSuper2(&v5, sel_recordDefaultConfigurationOptionsInDictionary_, v4);
  [v4 setObject:&unk_1F19C21B8 forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_InputBlobNames"];
  [v4 setObject:&unk_1F19C21D0 forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_OutputBlobNames"];
}

+ (id)calculateSaliencyBoundingBoxesForDetectorType:(id)a3 pixelBuffer:(__CVBuffer *)a4 configurationOptions:(id)a5 originatingRequestSpecifier:(id)a6 regionOfInterest:(CGRect)a7 qosClass:(unsigned int)a8 warningRecorder:(id)a9 error:(id *)a10
{
  v11 = *&a8;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v31[1] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a5;
  v21 = a6;
  v22 = a9;
  v23 = [VNValidationUtilities requiredSessionInOptions:v20 error:a10];
  v24 = v23;
  if (!v23)
  {
    v29 = 0;
    goto LABEL_10;
  }

  v25 = [v23 detectorOfType:v19 configuredWithOptions:v20 error:a10];
  if (!v25)
  {
    goto LABEL_8;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a10)
    {
      [VNError errorForInvalidArgument:v19 named:@"detectorType"];
      *a10 = v29 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v29 = 0;
    goto LABEL_9;
  }

  v26 = [VNImageBuffer alloc];
  v27 = [(VNImageBuffer *)v26 initWithCVPixelBuffer:a4 orientation:1 options:MEMORY[0x1E695E0F8] session:v24];
  v31[0] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v20 setObject:v28 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

  [v20 setObject:v21 forKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
  v29 = [v25 processUsingQualityOfServiceClass:v11 options:v20 regionOfInterest:v22 warningRecorder:a10 error:0 progressHandler:{x, y, width, height}];

LABEL_9:
LABEL_10:

  return v29;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v9 = [(VNSaliencyHeatmapBoundingBoxGenerator *)self _observationsForOneComponent32FloatPixelBuffer:a4 options:a5 regionOfInterest:a8 error:a7, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return v9;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  v13 = a4;
  v14 = a6;
  v15 = [(VNDetector *)self validatedImageBufferFromOptions:v13 error:a8];
  if (v15)
  {
    v16 = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageWidth];
    v17 = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageHeight];
    if ([v15 width] < v16 || objc_msgSend(v15, "height") < v17)
    {
      [v14 recordWarning:@"VNRequestWarningImageTooSmall" value:MEMORY[0x1E695E118]];
    }

    v18 = [(VNSaliencyHeatmapBoundingBoxGenerator *)self _createPixelBufferOfWidth:v16 height:v17 fromImageBuffer:v15 options:v13 error:a8];
    *a7 = v18;
    v19 = v18 != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)warmUpSession:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v22.receiver = self;
  v22.super_class = VNSaliencyHeatmapBoundingBoxGenerator;
  if (-[VNDetector warmUpSession:withOptions:error:](&v22, sel_warmUpSession_withOptions_error_, v8, v9, a5) && (v10 = -[VNEspressoModelFileBasedDetector networkRequiredInputImageWidth](self, "networkRequiredInputImageWidth"), v11 = -[VNEspressoModelFileBasedDetector networkRequiredInputImageHeight](self, "networkRequiredInputImageHeight"), v12 = [objc_opt_class() networkRequiredInputImagePixelFormatForConfigurationOptions:v9], (v13 = +[VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:height:pixelFormatType:error:](VNCVPixelBufferHelper, 8 * v10, 8 * v11, v12, a5)) != 0))
  {
    v14 = [[VNImageBuffer alloc] initWithCVPixelBuffer:v13 orientation:1 options:0 session:v8];
    v15 = [v9 mutableCopy];
    v23[0] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v15 setObject:v16 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    v17 = qos_class_self();
    v18 = objc_alloc_init(VNWarningRecorder);
    v19 = [(VNDetector *)self processUsingQualityOfServiceClass:v17 options:v15 regionOfInterest:v18 warningRecorder:a5 error:0 progressHandler:0.0, 0.0, 1.0, 1.0];

    v20 = v19 != 0;
    CVPixelBufferRelease(v13);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (__CVBuffer)_createPixelBufferOfWidth:(unint64_t)a3 height:(unint64_t)a4 fromImageBuffer:(id)a5 options:(id)a6 error:(id *)a7
{
  v11 = a5;
  v12 = a6;
  v13 = [objc_opt_class() networkRequiredInputImagePixelFormatForConfigurationOptions:v12];
  v23 = 0;
  v14 = [v11 bufferWithWidth:a3 height:a4 format:v13 options:v12 error:&v23];
  v15 = v23;
  if (!v14)
  {
    v16 = [v11 originalPixelBuffer];
    if (v16)
    {
      v17 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v16];
      v18 = [VNValidationUtilities requiredSessionInOptions:v12 error:a7];
      if (v18)
      {
        v22 = v17;
        v19 = [[VNImageBuffer alloc] initWithCIImage:v17 orientation:1 options:v12 session:v18];
        v14 = [(VNImageBuffer *)v19 bufferWithWidth:a3 height:a4 format:v13 options:0 error:a7];

        v17 = v22;
      }

      else
      {
        v14 = 0;
      }
    }

    else if (a7)
    {
      v20 = v15;
      v14 = 0;
      *a7 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)_observationsForOneComponent32FloatPixelBuffer:(__CVBuffer *)a3 options:(id)a4 regionOfInterest:(CGRect)a5 error:(id *)a6
{
  v8 = a4;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:v8 error:a6];
  if (v13)
  {
    v9 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    if (!v9)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      Width = CVPixelBufferGetWidth(a3);
      CVPixelBufferGetHeight(a3);
      CVPixelBufferGetBytesPerRow(a3);
      __C = 1.0;
      __B = 0.0;
      v15 = 1132396544;
      v11 = malloc_type_malloc(4 * Width, 0x100004052888210uLL);
      std::shared_ptr<float>::shared_ptr[abi:ne200100]<float,void (*)(void *),0>(&__D, v11);
    }

    if (a6)
    {
      *a6 = [VNError errorForCVReturnCode:v9 localizedDescription:@"unable to lock base address of pixelBuffer"];
    }
  }

  return 0;
}

@end