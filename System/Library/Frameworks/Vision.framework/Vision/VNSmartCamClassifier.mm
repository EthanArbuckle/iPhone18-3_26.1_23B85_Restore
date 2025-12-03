@interface VNSmartCamClassifier
+ (id)classifierResourceTypesToNamesForOriginatingRequestSpecifier:(id)specifier;
+ (id)createObservationWithDescriptors:(id)descriptors forOriginatingRequestSpecifier:(id)specifier;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (shared_ptr<vision::mod::ImageClassifierAbstract>)createClassifierWithDescriptor:(shared_ptr<vision:(const char *)descriptor :(int)a5 mod:(int)mod :(const char *)a7 ImageDescriptorProcessorAbstract>)a3 classifierAbsolutePath:(Options *)path computePlatform:computePath:labelsFilename:options:;
+ (shared_ptr<vision::mod::ImageDescriptorProcessorAbstract>)createDescriprorProcessorWithModelPath:(const char *)path nBatch:(int)batch computePlatform:(int)platform computePath:(int)computePath options:(Options *)options;
+ (void)initDumpDebugIntermediates:(id *)intermediates debugInfo:(id *)info;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
@end

@implementation VNSmartCamClassifier

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v5.receiver = self;
  v5.super_class = VNSmartCamClassifier;
  return [(VNEspressoModelClassifier *)&v5 completeInitializationForSession:session error:error];
}

+ (void)initDumpDebugIntermediates:(id *)intermediates debugInfo:(id *)info
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"VN_DEBUG_DUMP_SMARTCAM_INTERMEDIATES"];
  if (intermediates)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (info && (v7 & 1) != 0)
  {
    v8 = NSTemporaryDirectory();
    v13 = [v8 stringByAppendingString:@"VN_smartcam_classifier_debug_intermediates/"];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
    v11 = [defaultManager createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:0];

    if (v11)
    {
      *intermediates = v13;
    }

    *info = objc_alloc_init(MEMORY[0x1E695DF90]);
  }
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allGPUComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)createObservationWithDescriptors:(id)descriptors forOriginatingRequestSpecifier:(id)specifier
{
  descriptorsCopy = descriptors;
  specifierCopy = specifier;
  v7 = [[VNSmartCamObservation alloc] initWithOriginatingRequestSpecifier:specifierCopy smartCamprints:descriptorsCopy];

  return v7;
}

+ (id)classifierResourceTypesToNamesForOriginatingRequestSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (+[VNSmartCamClassifier classifierResourceTypesToNamesForOriginatingRequestSpecifier:]::onceToken != -1)
  {
    dispatch_once(&+[VNSmartCamClassifier classifierResourceTypesToNamesForOriginatingRequestSpecifier:]::onceToken, &__block_literal_global_8267);
  }

  v4 = [+[VNSmartCamClassifier classifierResourceTypesToNamesForOriginatingRequestSpecifier:]::classifierResourceTypesToNames objectForKeyedSubscript:specifierCopy];

  return v4;
}

void __85__VNSmartCamClassifier_classifierResourceTypesToNamesForOriginatingRequestSpecifier___block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"espresso-descriptor";
  v6[1] = @"espresso-classifier";
  v7[0] = @"smartcam-descriptor";
  v7[1] = @"smartcam-classifier";
  v6[2] = @"espresso-classifier-labels";
  v6[3] = @"espresso-classifier-relationships";
  v7[2] = @"smartcam-classifier-labels";
  v7[3] = @"smartcam-classifier-relationships";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v1 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v4 = v1;
  v5 = v0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = +[VNSmartCamClassifier classifierResourceTypesToNamesForOriginatingRequestSpecifier:]::classifierResourceTypesToNames;
  +[VNSmartCamClassifier classifierResourceTypesToNamesForOriginatingRequestSpecifier:]::classifierResourceTypesToNames = v2;
}

+ (shared_ptr<vision::mod::ImageDescriptorProcessorAbstract>)createDescriprorProcessorWithModelPath:(const char *)path nBatch:(int)batch computePlatform:(int)platform computePath:(int)computePath options:(Options *)options
{
  options->var2;
  options->var3;
  operator new();
}

+ (shared_ptr<vision::mod::ImageClassifierAbstract>)createClassifierWithDescriptor:(shared_ptr<vision:(const char *)descriptor :(int)a5 mod:(int)mod :(const char *)a7 ImageDescriptorProcessorAbstract>)a3 classifierAbsolutePath:(Options *)path computePlatform:computePath:labelsFilename:options:
{
  var0 = a3.__ptr_[1].var0;
  if (var0)
  {
    atomic_fetch_add_explicit(var0 + 1, 1uLL, memory_order_relaxed);
  }

  *(a7 + 2);
  *(a7 + 3);
  operator new();
}

@end