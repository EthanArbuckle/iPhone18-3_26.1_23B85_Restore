@interface VNSaliencyHeatmapBoundingBoxGenerator
+ (id)calculateSaliencyBoundingBoxesForDetectorType:(id)type pixelBuffer:(__CVBuffer *)buffer configurationOptions:(id)options originatingRequestSpecifier:(id)specifier regionOfInterest:(CGRect)interest qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)self0;
+ (id)configurationOptionKeysForDetectorKey;
+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (BOOL)warmUpSession:(id)session withOptions:(id)options error:(id *)error;
- (__CVBuffer)_createPixelBufferOfWidth:(unint64_t)width height:(unint64_t)height fromImageBuffer:(id)buffer options:(id)options error:(id *)error;
- (id)_observationsForOneComponent32FloatPixelBuffer:(__CVBuffer *)buffer options:(id)options regionOfInterest:(CGRect)interest error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNSaliencyHeatmapBoundingBoxGenerator

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__VNSaliencyHeatmapBoundingBoxGenerator_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___VNSaliencyHeatmapBoundingBoxGenerator;
  objc_msgSendSuper2(&v5, sel_recordDefaultConfigurationOptionsInDictionary_, dictionaryCopy);
  [dictionaryCopy setObject:&unk_1F19C21B8 forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_InputBlobNames"];
  [dictionaryCopy setObject:&unk_1F19C21D0 forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_OutputBlobNames"];
}

+ (id)calculateSaliencyBoundingBoxesForDetectorType:(id)type pixelBuffer:(__CVBuffer *)buffer configurationOptions:(id)options originatingRequestSpecifier:(id)specifier regionOfInterest:(CGRect)interest qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)self0
{
  v11 = *&class;
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v31[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  optionsCopy = options;
  specifierCopy = specifier;
  recorderCopy = recorder;
  v23 = [VNValidationUtilities requiredSessionInOptions:optionsCopy error:error];
  v24 = v23;
  if (!v23)
  {
    v29 = 0;
    goto LABEL_10;
  }

  v25 = [v23 detectorOfType:typeCopy configuredWithOptions:optionsCopy error:error];
  if (!v25)
  {
    goto LABEL_8;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      [VNError errorForInvalidArgument:typeCopy named:@"detectorType"];
      *error = v29 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v29 = 0;
    goto LABEL_9;
  }

  v26 = [VNImageBuffer alloc];
  v27 = [(VNImageBuffer *)v26 initWithCVPixelBuffer:buffer orientation:1 options:MEMORY[0x1E695E0F8] session:v24];
  v31[0] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [optionsCopy setObject:v28 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

  [optionsCopy setObject:specifierCopy forKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
  v29 = [v25 processUsingQualityOfServiceClass:v11 options:optionsCopy regionOfInterest:recorderCopy warningRecorder:error error:0 progressHandler:{x, y, width, height}];

LABEL_9:
LABEL_10:

  return v29;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v9 = [(VNSaliencyHeatmapBoundingBoxGenerator *)self _observationsForOneComponent32FloatPixelBuffer:buffer options:options regionOfInterest:error error:recorder, interest.origin.x, interest.origin.y, interest.size.width, interest.size.height];

  return v9;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  recorderCopy = recorder;
  v15 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v15)
  {
    networkRequiredInputImageWidth = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageWidth];
    networkRequiredInputImageHeight = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageHeight];
    if ([v15 width] < networkRequiredInputImageWidth || objc_msgSend(v15, "height") < networkRequiredInputImageHeight)
    {
      [recorderCopy recordWarning:@"VNRequestWarningImageTooSmall" value:MEMORY[0x1E695E118]];
    }

    v18 = [(VNSaliencyHeatmapBoundingBoxGenerator *)self _createPixelBufferOfWidth:networkRequiredInputImageWidth height:networkRequiredInputImageHeight fromImageBuffer:v15 options:optionsCopy error:error];
    *buffer = v18;
    v19 = v18 != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)warmUpSession:(id)session withOptions:(id)options error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  optionsCopy = options;
  v22.receiver = self;
  v22.super_class = VNSaliencyHeatmapBoundingBoxGenerator;
  if (-[VNDetector warmUpSession:withOptions:error:](&v22, sel_warmUpSession_withOptions_error_, sessionCopy, optionsCopy, error) && (v10 = -[VNEspressoModelFileBasedDetector networkRequiredInputImageWidth](self, "networkRequiredInputImageWidth"), v11 = -[VNEspressoModelFileBasedDetector networkRequiredInputImageHeight](self, "networkRequiredInputImageHeight"), v12 = [objc_opt_class() networkRequiredInputImagePixelFormatForConfigurationOptions:optionsCopy], (v13 = +[VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:height:pixelFormatType:error:](VNCVPixelBufferHelper, 8 * v10, 8 * v11, v12, error)) != 0))
  {
    v14 = [[VNImageBuffer alloc] initWithCVPixelBuffer:v13 orientation:1 options:0 session:sessionCopy];
    v15 = [optionsCopy mutableCopy];
    v23[0] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v15 setObject:v16 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    v17 = qos_class_self();
    v18 = objc_alloc_init(VNWarningRecorder);
    v19 = [(VNDetector *)self processUsingQualityOfServiceClass:v17 options:v15 regionOfInterest:v18 warningRecorder:error error:0 progressHandler:0.0, 0.0, 1.0, 1.0];

    v20 = v19 != 0;
    CVPixelBufferRelease(v13);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (__CVBuffer)_createPixelBufferOfWidth:(unint64_t)width height:(unint64_t)height fromImageBuffer:(id)buffer options:(id)options error:(id *)error
{
  bufferCopy = buffer;
  optionsCopy = options;
  v13 = [objc_opt_class() networkRequiredInputImagePixelFormatForConfigurationOptions:optionsCopy];
  v23 = 0;
  v14 = [bufferCopy bufferWithWidth:width height:height format:v13 options:optionsCopy error:&v23];
  v15 = v23;
  if (!v14)
  {
    originalPixelBuffer = [bufferCopy originalPixelBuffer];
    if (originalPixelBuffer)
    {
      v17 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:originalPixelBuffer];
      v18 = [VNValidationUtilities requiredSessionInOptions:optionsCopy error:error];
      if (v18)
      {
        v22 = v17;
        v19 = [[VNImageBuffer alloc] initWithCIImage:v17 orientation:1 options:optionsCopy session:v18];
        v14 = [(VNImageBuffer *)v19 bufferWithWidth:width height:height format:v13 options:0 error:error];

        v17 = v22;
      }

      else
      {
        v14 = 0;
      }
    }

    else if (error)
    {
      v20 = v15;
      v14 = 0;
      *error = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)_observationsForOneComponent32FloatPixelBuffer:(__CVBuffer *)buffer options:(id)options regionOfInterest:(CGRect)interest error:(id *)error
{
  optionsCopy = options;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (v13)
  {
    v9 = CVPixelBufferLockBaseAddress(buffer, 1uLL);
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
      Width = CVPixelBufferGetWidth(buffer);
      CVPixelBufferGetHeight(buffer);
      CVPixelBufferGetBytesPerRow(buffer);
      __C = 1.0;
      __B = 0.0;
      v15 = 1132396544;
      v11 = malloc_type_malloc(4 * Width, 0x100004052888210uLL);
      std::shared_ptr<float>::shared_ptr[abi:ne200100]<float,void (*)(void *),0>(&__D, v11);
    }

    if (error)
    {
      *error = [VNError errorForCVReturnCode:v9 localizedDescription:@"unable to lock base address of pixelBuffer"];
    }
  }

  return 0;
}

@end