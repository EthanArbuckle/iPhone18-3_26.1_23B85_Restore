@interface VNImageAnalyzerMultiDetector
+ (BOOL)_getAssociatedBoundingBoxGeneratorClass:(Class *)class options:(id *)options forConfigurationOptions:(id)configurationOptions error:(id *)error;
+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error;
+ (id)_inferenceDescriptorForOptions:(id)options error:(id *)error;
+ (id)_newInferenceDescriptorForModel:(unint64_t)model configuredWithOptions:(id)options error:(id *)error;
+ (id)_newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:(id)options;
+ (id)_saliencyHeatmapBoundingBoxGeneratorTypeForOriginatingRequestSpecifier:(id)specifier;
+ (id)computeStagesToBindForConfigurationOptions:(id)options;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)disallowedListForModel:(unint64_t)model;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error;
+ (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)createHierarchicalModelForInferenceDescriptor:(id)descriptor error:(id *)error;
+ (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)createHierarchicalModelForMultiDetectorModel:(unint64_t)model error:(id *)error;
+ (unint64_t)modelForRequestClass:(Class)class revision:(unint64_t)revision;
+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary;
- (BOOL)canBehaveAsDetectorOfClass:(Class)class withConfiguration:(id)configuration;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (BOOL)hasObjDetNet;
- (BOOL)shouldBeReplacedByDetectorOfClass:(Class)class withConfiguration:(id)configuration;
- (BOOL)warmUpSession:(id)session withOptions:(id)options error:(id *)error;
- (VNImageAnalyzerMultiDetector)initWithConfigurationOptions:(id)options;
- (id).cxx_construct;
- (id)_observationsForScenes:(void *)scenes entityNet:(void *)net junk:(void *)junk VNVYvzEtX1JlUdu8xx5qhDI:(void *)i landmark:(void *)landmark sceneprints:(void *)sceneprints compressedSceneprint:(double)sceneprint fingerprints:(double)self0 aesthetics:(double)self1 saliencyA:(double)self2 saliencyO:(double)self3 recognizeObjects:(double)self4 VN5kJNH3eYuyaLxNpZr5Z7zi:(void *)self5 VNdGg5skzXHSAENO6T3enHE:(void *)self6 cityNatureGating:(void *)self7 photosAdjustments:(void *)self8 pixelBuffer:(void *)self9 withOptions:(void *)options originalImageSize:(void *)size regionOfInterest:(void *)interest qosClass:(void *)class warningRecorder:(uint64_t)recorder error:(void *)error;
- (id)_processFullImagePixelBuffer:(const __CVBuffer *)buffer options:(id)options regionOfInterest:(CGRect)interest qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (id)_processLastAnalysisForCityNatureConfiguration:(void *)configuration error:;
- (id)_processLastAnalysisForPhotosAdjustmentsConfiguration:(void *)configuration error:;
- (id)_processLastAnalysisForRecognizeObjectsConfiguration:(uint64_t)configuration error:(void *)error;
- (id)_processLastAnalysisForSaliencyOConfiguration:(void *)configuration regionOfInterest:(uint64_t)interest originalImageSize:(void *)size options:(void *)options qosClass:(double)class warningRecorder:(double)recorder error:(double)error;
- (id)_processLastAnalysisForSignificantEventConfiguration:(void *)configuration error:;
- (id)_processLastAnalysisForVN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:(void *)configuration error:;
- (id)_processSaliencyTensor:(double)tensor regionOfInterest:(double)interest originalImageSize:(double)size options:(double)options saliencyConfiguration:(uint64_t)configuration saliencyGeneratorType:(int8x16_t *)type startCode:(void *)code finishCode:(void *)self0 qosClass:(void *)self1 warningRecorder:(uint64_t)self2 error:(uint64_t)self3;
- (id)allCityNatureIdentifiersWithOptions:(id)options error:(id *)error;
- (id)allJunkIdentifiersForOptions:(id)options error:(id *)error;
- (id)allRecognizedObjectsIdentifiersWithOptions:(id)options error:(id *)error;
- (id)allSceneIdentifiersWithOptions:(id)options error:(id *)error;
- (id)allSignificantEventIdentifiersWithOptions:(id)options error:(id *)error;
- (id)allVN5kJNH3eYuyaLxNpZr5Z7ziIdentifiersWithOptions:(id)options error:(id *)error;
- (id)description;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (id)sceneLabelOperationPointsForOriginatingRequestSpecifier:(id)specifier error:(id *)error;
- (uint64_t)_analysisTypeForScenes:(void *)scenes entityNet:(void *)net junk:(void *)junk VNVYvzEtX1JlUdu8xx5qhDI:(void *)i landmark:(void *)landmark sceneprints:(void *)sceneprints compressedSceneprint:(void *)sceneprint fingerprints:(void *)fingerprints aesthetics:(void *)aesthetics saliencyA:(void *)scenes0 saliencyO:(void *)scenes1 recognizeObjects:(void *)scenes2 VN5kJNH3eYuyaLxNpZr5Z7zi:(void *)scenes3 VNdGg5skzXHSAENO6T3enHE:(void *)scenes4 cityNatureGating:(void *)scenes5 photosAdjustments:(void *)scenes6;
- (uint64_t)_performAnalysis:(uint64_t)analysis pixelBuffer:(uint64_t)buffer error:;
- (uint64_t)_populateLeafSceneObservations:(void *)observations hierarchySceneObservations:(void *)sceneObservations fromLastAnalysisForSceneConfiguration:(void *)configuration error:;
- (uint64_t)_processSceneIdentifier:(void *)identifier withConfidence:(void *)confidence disallowedList:(void *)list operationPoints:(void *)points originatingRequestSpecifier:(unint64_t *)specifier observationsArray:(uint64_t)array optionalTopN:(float)n error:;
- (void)_VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierAndReturnError:(void *)error;
- (void)_VNVYvzEtX1JlUdu8xx5qhDICustomClassifierAndReturnError:(void *)error;
- (void)_VNdGg5skzXHSAENO6T3enHECustomClassifierForOriginatingRequestSpecifier:(void *)specifier;
- (void)_cityNatureCustomClassifierAndReturnError:(void *)error;
- (void)_configureSlidersAdjustmentsInImageAnalyzerOptions:(uint64_t)options forConfigurationOptions:(uint64_t)configurationOptions;
- (void)_getImageCropAndScaleOption:(int32x2_t *)option networkRequiredInputImageSize:(void *)size forOptions:;
- (void)_isNotConfiguredWithBooleanOptionNamed:(void *)named butRequiredByOptions:;
- (void)_junkCustomClassifiersAndReturnError:(void *)error;
- (void)_lastAnalysisSceneClassifications;
- (void)_loadCustomClassifierWithDescriptor:(void *)descriptor error:(void *)error;
- (void)_potentialLandmarksCustomClassifierAndReturnError:(void *)error;
@end

@implementation VNImageAnalyzerMultiDetector

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 16) = 0;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 27) = 0;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 30) = 0;
  *(self + 31) = 0;
  *(self + 32) = 0;
  *(self + 34) = 0;
  *(self + 35) = 0;
  return self;
}

- (id)allCityNatureIdentifiersWithOptions:(id)options error:(id *)error
{
  [(VNImageAnalyzerMultiDetector *)&v6 _cityNatureCustomClassifierAndReturnError:error];
  if (v6)
  {
    v4 = _knownIdentifiersForCustomClassifier(*(v6 + 312), *(v6 + 320));
  }

  else
  {
    v4 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

- (void)_cityNatureCustomClassifierAndReturnError:(void *)error
{
  if (!a2)
  {
    *self = 0;
    self[1] = 0;
    return;
  }

  v5 = *(a2 + 248);
  if (v5)
  {
    goto LABEL_12;
  }

  cityNatureCustomClassifierDescriptor = [*(a2 + 80) cityNatureCustomClassifierDescriptor];
  [(VNImageAnalyzerMultiDetector *)&v12 _loadCustomClassifierWithDescriptor:a2 error:cityNatureCustomClassifierDescriptor, error];

  v8 = v12;
  if (v12)
  {
    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(a2 + 256);
    *(a2 + 248) = v8;
    *(a2 + 256) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *self = 0;
    self[1] = 0;
    v9 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_10:
  if (!v8)
  {
    return;
  }

  v5 = *(a2 + 248);
LABEL_12:
  v11 = *(a2 + 256);
  *self = v5;
  self[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }
}

- (void)_loadCustomClassifierWithDescriptor:(void *)descriptor error:(void *)error
{
  v112[20] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    v87 = descriptorCopy;
    modelFileURL = [descriptorCopy modelFileURL];
    v8 = [modelFileURL VisionCoreFileSystemPathAndReturnError:error];

    if (!v8)
    {
      *self = 0;
      self[1] = 0;
LABEL_206:

      descriptorCopy = v87;
      goto LABEL_207;
    }

    labelsFileURL = [v87 labelsFileURL];
    v10 = [labelsFileURL VisionCoreFileSystemPathAndReturnError:error];

    if (!v10)
    {
      *self = 0;
      self[1] = 0;
LABEL_205:

      goto LABEL_206;
    }

    v79 = v10;
    [v87 inputBlobName];
    v78 = v84 = error;
    outputBlobName = [v87 outputBlobName];
    v12 = *(a2 + 64);
    v13 = *(a2 + 68);
    v14 = v8;
    v15 = v10;
    v16 = v78;
    v82 = outputBlobName;
    v83 = v14;
    v80 = v15;
    v81 = v16;
    lastPathComponent = [v14 lastPathComponent];
    std::string::basic_string[abi:ne200100]<0>(&v96, [v14 UTF8String]);
    v17 = v16;
    std::string::basic_string[abi:ne200100]<0>(&v95, [v16 UTF8String]);
    v18 = v82;
    std::string::basic_string[abi:ne200100]<0>(&v94, [v82 UTF8String]);
    v19 = v15;
    std::string::basic_string[abi:ne200100]<0>(&v93, [v15 UTF8String]);
    v20 = lastPathComponent;
    std::string::basic_string[abi:ne200100]<0>(&v92, [lastPathComponent UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(&v91, "");
    std::string::basic_string[abi:ne200100]<0>(&v90, "");
    memset(__p, 0, sizeof(__p));
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v98, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
    }

    else
    {
      v98 = v96;
    }

    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v99, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
    }

    else
    {
      v99 = v95;
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v100, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
    }

    else
    {
      v100 = v94;
    }

    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v101, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
    }

    else
    {
      v101 = v93;
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v102, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
    }

    else
    {
      v102 = v91;
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v103, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
    }

    else
    {
      v103 = v92;
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v104, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
    }

    else
    {
      v104 = v90;
    }

    *(&v105 + 4) = 0x1001000000000;
    LODWORD(v105) = v12;
    HIDWORD(v105) = v13;
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v107, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
    }

    else
    {
      v107 = v98;
    }

    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v106, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
    }

    else
    {
      v106 = v102;
    }

    size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
    if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v106.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::basic_string[abi:ne200100]<0>(&v108, ":");
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v107;
      }

      else
      {
        v22 = v107.__r_.__value_.__r.__words[0];
      }

      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v107.__r_.__value_.__l.__size_;
      }

      v24 = std::string::insert(&v108, 0, v22, v23);
      v25 = v8;
      v26 = *&v24->__r_.__value_.__l.__data_;
      v110.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v110.__r_.__value_.__l.__data_ = v26;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v106;
      }

      else
      {
        v27 = v106.__r_.__value_.__r.__words[0];
      }

      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v106.__r_.__value_.__l.__size_;
      }

      v29 = std::string::append(&v110, v27, v28);
      v30 = v29->__r_.__value_.__s.__data_[0];
      *v109 = *(&v29->__r_.__value_.__l.__data_ + 1);
      *&v109[14] = *(&v29->__r_.__value_.__r.__words[1] + 7);
      v31 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v25 = v8;
      v30 = v107.__r_.__value_.__s.__data_[0];
      *v109 = *(&v107.__r_.__value_.__l.__data_ + 1);
      *&v109[14] = *(&v107.__r_.__value_.__r.__words[1] + 7);
      v31 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
      memset(&v107, 0, sizeof(v107));
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    LOBYTE(__p[0]) = v30;
    *(__p + 1) = *v109;
    *(&__p[1] + 7) = *&v109[14];
    HIBYTE(__p[2]) = v31;
    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    v8 = v25;
    v10 = v79;
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    v32 = operator new(0x2A0uLL, MEMORY[0x1E69E5398]);
    if (!v32)
    {
      *v109 = 0;
      v34 = 8571;
      goto LABEL_201;
    }

    v33 = v32;
    if (SHIBYTE(__p[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v32, __p[0], __p[1]);
    }

    else
    {
      *&v32->__r_.__value_.__l.__data_ = *__p;
      v32->__r_.__value_.__r.__words[2] = __p[2];
    }

    v88 = v33;
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v33 + 1, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
    }

    else
    {
      v33[1] = v98;
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v33 + 2, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
    }

    else
    {
      v33[2] = v99;
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v33 + 3, v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_);
    }

    else
    {
      v33[3] = v100;
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v33 + 4, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
    }

    else
    {
      v33[4] = v101;
    }

    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v33 + 5, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
    }

    else
    {
      v33[5] = v102;
    }

    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v33 + 6, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
    }

    else
    {
      v33[6] = v103;
    }

    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v33 + 7, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
    }

    else
    {
      v33[7] = v104;
    }

    *&v33[8].__r_.__value_.__l.__data_ = v105;
    v33[8].__r_.__value_.__r.__words[2] = 0;
    LODWORD(v33[9].__r_.__value_.__l.__data_) = 0;
    v33[9].__r_.__value_.__l.__size_ = 0;
    p_size = &v33[9].__r_.__value_.__l.__size_;
    *&v33[10].__r_.__value_.__r.__words[1] = 0u;
    v33[9].__r_.__value_.__r.__words[2] = 0;
    v33[10].__r_.__value_.__s.__data_[0] = 0;
    v33[27].__r_.__value_.__r.__words[2] = 0;
    *&v33[11].__r_.__value_.__l.__data_ = 0u;
    *&v33[11].__r_.__value_.__r.__words[2] = 0u;
    *&v33[12].__r_.__value_.__r.__words[1] = 0u;
    *&v33[13].__r_.__value_.__l.__data_ = 0u;
    *&v33[13].__r_.__value_.__r.__words[2] = 0u;
    *&v33[14].__r_.__value_.__r.__words[1] = 0u;
    *&v33[15].__r_.__value_.__l.__data_ = 0u;
    *&v33[15].__r_.__value_.__r.__words[2] = 0u;
    *&v33[16].__r_.__value_.__r.__words[1] = 0u;
    *&v33[17].__r_.__value_.__l.__data_ = 0u;
    *&v33[17].__r_.__value_.__r.__words[2] = 0u;
    *&v33[18].__r_.__value_.__r.__words[1] = 0u;
    *&v33[19].__r_.__value_.__l.__data_ = 0u;
    *&v33[19].__r_.__value_.__r.__words[2] = 0u;
    *&v33[20].__r_.__value_.__r.__words[1] = 0u;
    *&v33[21].__r_.__value_.__l.__data_ = 0u;
    *&v33[21].__r_.__value_.__r.__words[2] = 0u;
    *&v33[22].__r_.__value_.__r.__words[1] = 0u;
    *&v33[23].__r_.__value_.__l.__data_ = 0u;
    *&v33[23].__r_.__value_.__r.__words[2] = 0u;
    *&v33[24].__r_.__value_.__r.__words[1] = 0u;
    *&v33[25].__r_.__value_.__l.__data_ = 0u;
    *&v33[25].__r_.__value_.__r.__words[2] = 0u;
    *&v33[26].__r_.__value_.__r.__words[1] = 0u;
    *&v33[27].__r_.__value_.__l.__data_ = 0u;
    *v109 = v33;
    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v107, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
    }

    else
    {
      v107 = v101;
    }

    v35 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v107.__r_.__value_.__l.__size_;
    }

    if (!v35)
    {
      goto LABEL_146;
    }

    memset(&v108, 0, sizeof(v108));
    v112[6] = 0;
    v36 = MEMORY[0x1E69E5528] + 64;
    v112[0] = MEMORY[0x1E69E5528] + 64;
    v37 = *(MEMORY[0x1E69E54C8] + 16);
    v110.__r_.__value_.__r.__words[0] = *(MEMORY[0x1E69E54C8] + 8);
    *(v110.__r_.__value_.__r.__words + *(v110.__r_.__value_.__r.__words[0] - 24)) = v37;
    v110.__r_.__value_.__l.__size_ = 0;
    v38 = (&v110 + *(v110.__r_.__value_.__r.__words[0] - 24));
    v77 = v8;
    std::ios_base::init(v38, &v110.__r_.__value_.__r.__words[2]);
    v39 = MEMORY[0x1E69E5528] + 24;
    v38[1].__vftable = 0;
    v38[1].__fmtflags_ = -1;
    v110.__r_.__value_.__r.__words[0] = v39;
    v112[0] = v36;
    MEMORY[0x1AC556850](&v110.__r_.__value_.__r.__words[2]);
    if (!std::filebuf::open())
    {
      std::ios_base::clear((&v110 + *(v110.__r_.__value_.__r.__words[0] - 24)), *&v111[*(v110.__r_.__value_.__r.__words[0] - 24)] | 4);
    }

    v40 = MEMORY[0x1E69E5318];
    v41 = MEMORY[0x1E69E9830];
    while (1)
    {
      std::ios_base::getloc((&v110 + *(v110.__r_.__value_.__r.__words[0] - 24)));
      v42 = std::locale::use_facet(&v106, v40);
      v43 = (v42->__vftable[2].~facet_0)(v42, 10);
      std::locale::~locale(&v106);
      std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v110, &v108, v43);
      if ((v111[*(v110.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        break;
      }

      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v108;
      }

      else
      {
        v44 = v108.__r_.__value_.__r.__words[0];
      }

      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v108.__r_.__value_.__l.__size_;
      }

      v46 = (v44 + v45);
      if (v45)
      {
        while (1)
        {
          v47 = v44->__r_.__value_.__s.__data_[0];
          if (v47 < 0 ? __maskrune(v44->__r_.__value_.__s.__data_[0], 0x4000uLL) : *(v41 + 4 * v47 + 60) & 0x4000)
          {
            break;
          }

          v44 = (v44 + 1);
          if (!--v45)
          {
            goto LABEL_136;
          }
        }

        if (v44 == v46 || (&v44->__r_.__value_.__l.__data_ + 1) == v46)
        {
          v46 = v44;
        }

        else
        {
          v49 = 1;
          v46 = v44;
          do
          {
            v50 = v44->__r_.__value_.__s.__data_[v49];
            if (v50 < 0)
            {
              v51 = __maskrune(v44->__r_.__value_.__s.__data_[v49], 0x4000uLL);
            }

            else
            {
              v51 = *(v41 + 4 * v50 + 60) & 0x4000;
            }

            if (!v51)
            {
              v46->__r_.__value_.__s.__data_[0] = v44->__r_.__value_.__s.__data_[v49];
              v46 = (v46 + 1);
            }

            ++v49;
          }

          while (v45 != v49);
        }
      }

LABEL_136:
      v52 = &v108 + HIBYTE(v108.__r_.__value_.__r.__words[2]);
      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v108;
      }

      else
      {
        v52 = (v108.__r_.__value_.__r.__words[0] + v108.__r_.__value_.__l.__size_);
        v53 = v108.__r_.__value_.__r.__words[0];
      }

      std::string::erase(&v108, v46 - v53, v52 - v46);
      v54 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = v108.__r_.__value_.__l.__size_;
      }

      v33 = v88;
      if (v54)
      {
        std::vector<std::string>::push_back[abi:ne200100](&v88[13], &v108);
      }
    }

    data = v33[13].__r_.__value_.__l.__data_;
    v55 = v33[13].__r_.__value_.__l.__size_;
    v110.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54C8];
    *(v110.__r_.__value_.__r.__words + *(v110.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
    MEMORY[0x1AC556860](&v110.__r_.__value_.__r.__words[2]);
    std::istream::~istream();
    MEMORY[0x1AC556A40](v112);
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }

    v8 = v77;
    v10 = v79;
    if (v55 == data)
    {
      v34 = 8565;
    }

    else
    {
LABEL_146:
      v34 = 8576;
    }

    v58 = v82;
    v57 = v83;
    v60 = v80;
    v59 = v81;
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if ((v34 & 0xF5) != 0x80)
    {
      goto LABEL_202;
    }

    if (SHIBYTE(v33->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v110, v33->__r_.__value_.__l.__data_, v33->__r_.__value_.__l.__size_);
    }

    else
    {
      v110 = *v33;
    }

    v61 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
    v62 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v61 = v110.__r_.__value_.__l.__size_;
    }

    if (!v61)
    {
      v34 = 8568;
      v59 = v81;
      v58 = v82;
      v60 = v80;
      goto LABEL_185;
    }

    if (SHIBYTE(v33[2].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v108, v33[2].__r_.__value_.__l.__data_, v33[2].__r_.__value_.__l.__size_);
    }

    else
    {
      v108 = v33[2];
    }

    v59 = v81;
    v58 = v82;
    v60 = v80;
    if (SHIBYTE(v33[3].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v107, v33[3].__r_.__value_.__l.__data_, v33[3].__r_.__value_.__l.__size_);
    }

    else
    {
      v107 = v33[3];
    }

    v63 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
    if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v63 = v108.__r_.__value_.__l.__size_;
    }

    if (!v63)
    {
      goto LABEL_174;
    }

    v64 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v64 = v107.__r_.__value_.__l.__size_;
    }

    if (v64)
    {
      context = espresso_create_context();
      *p_size = context;
      if (context)
      {
        plan = espresso_create_plan();
        v33[9].__r_.__value_.__r.__words[2] = plan;
        if (plan)
        {
          if (!espresso_plan_add_network() && !espresso_network_declare_input() && !espresso_network_declare_output() && !espresso_plan_build())
          {
            v67 = &CVML_status_ok;
            goto LABEL_180;
          }

          espresso_plan_get_error_info();
        }
      }

      v67 = &CVML_status_EspressoError;
    }

    else
    {
LABEL_174:
      v67 = &CVML_status_missingOption;
    }

LABEL_180:
    v68 = *v67;
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }

    v62 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
    v34 = (v68 + 128) | 0x2100;
LABEL_185:
    v57 = v83;
    if (v62 < 0)
    {
      operator delete(v110.__r_.__value_.__l.__data_);
    }

    if (v34 != 128)
    {
      goto LABEL_202;
    }

    if (SHIBYTE(v33[2].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v110, v33[2].__r_.__value_.__l.__data_, v33[2].__r_.__value_.__l.__size_);
    }

    else
    {
      v110 = v33[2];
    }

    blob_dimensions = espresso_network_query_blob_dimensions();
    if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v110.__r_.__value_.__l.__data_);
    }

    if (blob_dimensions)
    {
      goto LABEL_200;
    }

    if (SHIBYTE(v33[3].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v110, v33[3].__r_.__value_.__l.__data_, v33[3].__r_.__value_.__l.__size_);
    }

    else
    {
      v110 = v33[3];
    }

    v70 = espresso_network_query_blob_dimensions();
    if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v110.__r_.__value_.__l.__data_);
    }

    if (v70)
    {
LABEL_200:
      espresso_plan_get_error_info();
      v34 = 8539;
    }

    else
    {
      v71 = v33[11].__r_.__value_.__r.__words[2];
      if (v71 <= v33[12].__r_.__value_.__l.__size_)
      {
        v71 = v33[12].__r_.__value_.__l.__size_;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v33[13].__r_.__value_.__l.__size_ - v33[13].__r_.__value_.__r.__words[0]) >> 3) == v71)
      {
        if (SHIBYTE(v33[2].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v110, v33[2].__r_.__value_.__l.__data_, v33[2].__r_.__value_.__l.__size_);
        }

        else
        {
          v110 = v33[2];
        }

        v72 = espresso_network_bind_buffer();
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        if (v72)
        {
          goto LABEL_226;
        }

        if (SHIBYTE(v33[3].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v110, v33[3].__r_.__value_.__l.__data_, v33[3].__r_.__value_.__l.__size_);
        }

        else
        {
          v110 = v33[3];
        }

        v73 = espresso_network_bind_buffer();
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        if (v73)
        {
LABEL_226:
          espresso_plan_get_error_info();
          v74 = &CVML_status_EspressoError;
        }

        else
        {
          v74 = &CVML_status_ok;
        }

        v75 = *v74 + 128;
        if (v75 == 128)
        {
          v34 = 8576;
        }

        else
        {
          v34 = v75 | 0x2100;
        }

        v58 = v82;
        v57 = v83;
        v60 = v80;
        v59 = v81;
        if (v34 == 128)
        {
          *v109 = 0;
          v89 = v33;
          std::unique_ptr<vision::mod::ImageAnalyzer_CustomClassifier>::~unique_ptr[abi:ne200100](v109);
          *self = v33;
          operator new();
        }

        goto LABEL_202;
      }

      v34 = 8574;
    }

LABEL_201:
    v58 = v82;
    v57 = v83;
    v60 = v80;
    v59 = v81;
LABEL_202:
    v89 = 0;
    std::unique_ptr<vision::mod::ImageAnalyzer_CustomClassifier>::~unique_ptr[abi:ne200100](v109);
    if (v84)
    {
      *v84 = VNErrorForCVMLStatus(v34);
    }

    *self = 0;
    self[1] = 0;
    std::unique_ptr<vision::mod::ImageAnalyzer_CustomClassifier>::~unique_ptr[abi:ne200100](&v89);
    vision::mod::ImageAnalyzer_CustomClassifierOptions::~ImageAnalyzer_CustomClassifierOptions(__p);

    goto LABEL_205;
  }

  if (error)
  {
    *error = [VNError errorForInvalidModelWithLocalizedDescription:@"custom classifier descriptor not provided"];
    descriptorCopy = 0;
  }

  *self = 0;
  self[1] = 0;
LABEL_207:
}

- (id)allSignificantEventIdentifiersWithOptions:(id)options error:(id *)error
{
  [(VNImageAnalyzerMultiDetector *)&v6 _VNdGg5skzXHSAENO6T3enHECustomClassifierForOriginatingRequestSpecifier:error];
  if (v6)
  {
    v4 = _knownIdentifiersForCustomClassifier(*(v6 + 312), *(v6 + 320));
  }

  else
  {
    v4 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

- (void)_VNdGg5skzXHSAENO6T3enHECustomClassifierForOriginatingRequestSpecifier:(void *)specifier
{
  if (!a2)
  {
    *self = 0;
    self[1] = 0;
    return;
  }

  v5 = *(a2 + 232);
  if (v5)
  {
    goto LABEL_12;
  }

  vNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor = [*(a2 + 80) VNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor];
  [(VNImageAnalyzerMultiDetector *)&v12 _loadCustomClassifierWithDescriptor:a2 error:vNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor, specifier];

  v8 = v12;
  if (v12)
  {
    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(a2 + 240);
    *(a2 + 232) = v8;
    *(a2 + 240) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *self = 0;
    self[1] = 0;
    v9 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_10:
  if (!v8)
  {
    return;
  }

  v5 = *(a2 + 232);
LABEL_12:
  v11 = *(a2 + 240);
  *self = v5;
  self[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }
}

- (id)allVN5kJNH3eYuyaLxNpZr5Z7ziIdentifiersWithOptions:(id)options error:(id *)error
{
  [(VNImageAnalyzerMultiDetector *)&v6 _VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierAndReturnError:error];
  if (v6)
  {
    v4 = _knownIdentifiersForCustomClassifier(*(v6 + 312), *(v6 + 320));
  }

  else
  {
    v4 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

- (void)_VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierAndReturnError:(void *)error
{
  if (!a2)
  {
    *self = 0;
    self[1] = 0;
    return;
  }

  v5 = *(a2 + 216);
  if (v5)
  {
    goto LABEL_12;
  }

  vN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor = [*(a2 + 80) VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor];
  [(VNImageAnalyzerMultiDetector *)&v12 _loadCustomClassifierWithDescriptor:a2 error:vN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor, error];

  v8 = v12;
  if (v12)
  {
    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(a2 + 224);
    *(a2 + 216) = v8;
    *(a2 + 224) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *self = 0;
    self[1] = 0;
    v9 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_10:
  if (!v8)
  {
    return;
  }

  v5 = *(a2 + 216);
LABEL_12:
  v11 = *(a2 + 224);
  *self = v5;
  self[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }
}

- (id)allRecognizedObjectsIdentifiersWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNImageAnalyzerMultiDetectorOption_RecognizeObjectsConfiguration" inOptions:optionsCopy error:error];
  v8 = v7;
  if (v7)
  {
    observationsRecipient = [v7 observationsRecipient];
    originatingRequestSpecifier = [observationsRecipient originatingRequestSpecifier];

    v11 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(self->_imageAnalyzer.__ptr_ + 108, [v8 labelsListType]);
    if (!v11)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v33, v11[3], v11[4], 0xAAAAAAAAAAAAAAABLL * ((v11[4] - v11[3]) >> 3));
    if ([originatingRequestSpecifier specifiesRequestClass:objc_opt_class() withAnyRevision:{1, 3737841667, 0}])
    {
      v12 = v33;
      v13 = v34;
      v14 = v33;
      if (v33 != v34)
      {
        v14 = v33;
        while (1)
        {
          v15 = *(v14 + 23);
          if (v15 < 0)
          {
            if (v14[1] != 5)
            {
              goto LABEL_15;
            }

            v16 = *v14;
          }

          else
          {
            v16 = v14;
            if (v15 != 5)
            {
              goto LABEL_15;
            }
          }

          v17 = *v16;
          v18 = *(v16 + 4);
          if (v17 == 1769304678 && v18 == 116)
          {
            break;
          }

LABEL_15:
          v14 += 3;
          if (v14 == v34)
          {
            goto LABEL_22;
          }
        }
      }

      if (v14 != v34)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "vegetables");
        std::vector<std::string>::push_back[abi:ne200100](&v33, __p);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        v12 = v33;
        v13 = v34;
      }

LABEL_22:
      if (v12 == v13)
      {
        goto LABEL_30;
      }

      do
      {
        v21 = *(v12 + 23);
        if (v21 < 0)
        {
          if (v12[1] != 4)
          {
            goto LABEL_29;
          }

          v22 = *v12;
        }

        else
        {
          v22 = v12;
          if (v21 != 4)
          {
            goto LABEL_29;
          }
        }

        if (*v22 == 1752394086)
        {
          if (v12 != v13)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "seafood");
            std::vector<std::string>::push_back[abi:ne200100](&v33, __p);
            if (v32 < 0)
            {
              operator delete(__p[0]);
            }
          }

          break;
        }

LABEL_29:
        v12 += 3;
      }

      while (v12 != v13);
    }

LABEL_30:
    disallowedList = [v8 disallowedList];
    v24 = objc_alloc(MEMORY[0x1E695DF70]);
    v20 = [v24 initWithCapacity:0xAAAAAAAAAAAAAAABLL * (v34 - v33)];
    v25 = v33;
    for (i = v34; v25 != i; v25 += 3)
    {
      v27 = objc_alloc(MEMORY[0x1E696AEC0]);
      v28 = v25;
      if (*(v25 + 23) < 0)
      {
        v28 = *v25;
      }

      v29 = [v27 initWithUTF8String:v28];
      if (_isAcceptableClassificationIdentifier(v29, disallowedList))
      {
        [v20 addObject:v29];
      }
    }

    __p[0] = &v33;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)allJunkIdentifiersForOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  [(VNImageAnalyzerMultiDetector *)&v15 _junkCustomClassifiersAndReturnError:error];
  v7 = v15;
  if (v15)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = *v7;
    v10 = v7[1];
    if (*v7 != v10)
    {
      do
      {
        v11 = *v9;
        v12 = v9[1];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = _knownIdentifiersForCustomClassifier(*(v11 + 312), *(v11 + 320));
        [v8 addObjectsFromArray:v13];

        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v9 += 2;
      }

      while (v9 != v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return v8;
}

- (void)_junkCustomClassifiersAndReturnError:(void *)error
{
  if (!a2)
  {
    *self = 0;
    self[1] = 0;
    return;
  }

  v5 = *(a2 + 160);
  if (v5)
  {
    goto LABEL_13;
  }

  junkLeafCustomClassifierDescriptor = [*(a2 + 80) junkLeafCustomClassifierDescriptor];
  [(VNImageAnalyzerMultiDetector *)&v13 _loadCustomClassifierWithDescriptor:a2 error:junkLeafCustomClassifierDescriptor, error];

  if (v13)
  {
    junkHierarchicalCustomClassifierDescriptor = [*(a2 + 80) junkHierarchicalCustomClassifierDescriptor];
    [(VNImageAnalyzerMultiDetector *)&v11 _loadCustomClassifierWithDescriptor:a2 error:junkHierarchicalCustomClassifierDescriptor, error];

    v9 = v11 != 0;
    if (v11)
    {
      operator new();
    }

    *self = 0;
    self[1] = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    v9 = 0;
    *self = 0;
    self[1] = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v9)
  {
    v5 = *(a2 + 160);
LABEL_13:
    v10 = *(a2 + 168);
    *self = v5;
    self[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

- (id)sceneLabelOperationPointsForOriginatingRequestSpecifier:(id)specifier error:(id *)error
{
  v4 = [(_VNImageAnalyzerMultiDetectorSceneOperationPointsCache *)self->_operationPointsCache sceneLabelOperationPointsForOriginatingRequestSpecifier:specifier error:error];

  return v4;
}

- (id)allSceneIdentifiersWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__27407;
  v60 = __Block_byref_object_dispose__27408;
  v61 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__VNImageAnalyzerMultiDetector_allSceneIdentifiersWithOptions_error___block_invoke;
  aBlock[3] = &unk_1E77B5360;
  v55 = &v56;
  v8 = v7;
  v54 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneConfigurations"];
  v11 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_EntityNetConfiguration"];
  v12 = v11;
  if (v10)
  {
    if (![VNValidationUtilities validateArray:v10 named:@"VNImageAnalyzerMultiDetectorOption_SceneConfigurations" hasElementsOfClass:objc_opt_class() requiredMinimumCount:1 allowedMaximumCount:1 error:error])
    {
      v44 = 0;
      goto LABEL_52;
    }

    v49 = v12;
    firstObject = [v10 firstObject];
    disallowedList = [firstObject disallowedList];
    v14 = v57[5];
    v57[5] = disallowedList;

    labelsListType = [firstObject labelsListType];
    ptr = self->_defaultSceneClassificationHierarchicalModel.__ptr_;
    *__p = 0u;
    v51 = 0u;
    v52 = 1065353216;
    for (i = *(ptr->var0 + 2); i; i = *i)
    {
      if (*(i + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, i[2], i[3]);
      }

      else
      {
        v62 = *(i + 2);
      }

      v17 = i[5];
      v63 = v17;
      if (*(v17 + 84) != 1 && *(v17 + 64) != *(v17 + 56))
      {
        size = SHIBYTE(v62.__r_.__value_.__r.__words[2]);
        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v62;
        }

        else
        {
          v19 = v62.__r_.__value_.__r.__words[0];
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v62.__r_.__value_.__l.__size_;
        }

        if (size >= 13)
        {
          v20 = v19 + size;
          v21 = v19;
          do
          {
            v22 = memchr(v21, 67, size - 12);
            if (!v22)
            {
              break;
            }

            if (v22->__r_.__value_.__r.__words[0] == 0x4B4E555F4C4D5643 && *(v22->__r_.__value_.__r.__words + 5) == 0x5F4E574F4E4B4E55)
            {
              if (v22 == v19)
              {
                goto LABEL_25;
              }

              break;
            }

            v21 = (&v22->__r_.__value_.__l.__data_ + 1);
            size = v20 - v21;
          }

          while (v20 - v21 >= 13);
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__p, &v62);
      }

LABEL_25:
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }
    }

    v24 = self->_imageAnalyzer.__ptr_;
    v25 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(v24 + 108, labelsListType);
    if (!v25)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v26 = v25;
    DisallowedLabels = vision::mod::ImageAnalyzer::getDisallowedLabels(v24, labelsListType);
    v29 = v26[3];
    v28 = v26[4];
    if (v29 != v28)
    {
      v30 = DisallowedLabels;
      do
      {
        if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v30, v29))
        {
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__p, v29);
        }

        v29 += 3;
      }

      while (v29 != v28);
    }

    v31 = v51;
    if (v51)
    {
      do
      {
        v32 = objc_alloc(MEMORY[0x1E696AEC0]);
        v33 = v31 + 2;
        if (*(v31 + 39) < 0)
        {
          v33 = *v33;
        }

        v34 = [v32 initWithUTF8String:v33];
        v9[2](v9, v34);

        v31 = *v31;
      }

      while (v31);
      v35 = v51;
    }

    else
    {
      v35 = 0;
    }

    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v35);
    v45 = __p[0];
    __p[0] = 0;
    if (v45)
    {
      operator delete(v45);
    }
  }

  else
  {
    v49 = v11;
    if (v11)
    {
      disallowedList2 = [v11 disallowedList];
      v37 = v57[5];
      v57[5] = disallowedList2;

      v38 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(self->_imageAnalyzer.__ptr_ + 108, [v49 labelsListType]);
      if (!v38)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v39 = v38[3];
      for (j = v38[4]; v39 != j; v39 += 24)
      {
        v41 = objc_alloc(MEMORY[0x1E696AEC0]);
        v42 = v39;
        if (*(v39 + 23) < 0)
        {
          v42 = *v39;
        }

        v43 = [v41 initWithUTF8String:v42];
        v9[2](v9, v43);
      }
    }
  }

  v12 = v49;
  [v8 sortUsingSelector:sel_compare_];
  v44 = v8;
LABEL_52:

  _Block_object_dispose(&v56, 8);

  return v44;
}

void __69__VNImageAnalyzerMultiDetector_allSceneIdentifiersWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_isAcceptableClassificationIdentifier(v3, *(*(*(a1 + 40) + 8) + 40)))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)hasObjDetNet
{
  ptr = self->_imageAnalyzer.__ptr_;
  v3 = *(ptr + 415);
  if (v3 < 0)
  {
    v3 = *(ptr + 50);
  }

  return v3 != 0;
}

- (id)_processFullImagePixelBuffer:(const __CVBuffer *)buffer options:(id)options regionOfInterest:(CGRect)interest qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v55 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  optionsCopy = options;
  recorderCopy = recorder;
  v48 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v48)
  {
    v38 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneConfigurations"];
    v37 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_EntityNetConfiguration"];
    v36 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneprintConfigurations"];
    v35 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_CompressedSceneprintConfiguration"];
    v34 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_AestheticsConfiguration"];
    v39 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SaliencyAConfiguration"];
    v40 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SaliencyOConfiguration"];
    v41 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_RecognizeObjectsConfiguration"];
    v42 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VN1JC7R3k4455fKQz0dY1VhQConfiguration"];
    v43 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_ImageFingerprintsConfiguration"];
    v44 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_JunkConfiguration"];
    v45 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VNVYvzEtX1JlUdu8xx5qhDIConfiguration"];
    v46 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_PotentialLandmarkConfiguration"];
    v18 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration"];
    v19 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VN6Mb1ME89lyW3HpahkEygIGConfiguration"];
    v20 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_CityNatureGatingConfiguration"];
    v21 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorProcessingOption_TilingIsRequired"];
    bOOLValue = [v21 BOOLValue];

    width = [v48 width];
    height = [v48 height];
    if (bOOLValue)
    {
      v25 = 0;
    }

    else
    {
      v25 = v38;
    }

    error = [(VNImageAnalyzerMultiDetector *)self _observationsForScenes:v25 entityNet:v37 junk:v44 VNVYvzEtX1JlUdu8xx5qhDI:v45 landmark:v46 sceneprints:v36 compressedSceneprint:v35 fingerprints:width aesthetics:height saliencyA:x saliencyO:y recognizeObjects:width VN5kJNH3eYuyaLxNpZr5Z7zi:height VNdGg5skzXHSAENO6T3enHE:v43 cityNatureGating:v34 photosAdjustments:v39 pixelBuffer:v40 withOptions:v41 originalImageSize:v18 regionOfInterest:v19 qosClass:v20 warningRecorder:v42 error:&bufferCopy, optionsCopy, class, recorderCopy, error];
    v27 = error;
    if (error)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v28 = error;
      v29 = [v28 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v29)
      {
        v30 = *v50;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v50 != v30)
            {
              objc_enumerationMutation(v28);
            }

            [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:optionsCopy toObservation:*(*(&v49 + 1) + 8 * i)];
          }

          v29 = [v28 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v29);
      }

      v32 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (id)_observationsForScenes:(void *)scenes entityNet:(void *)net junk:(void *)junk VNVYvzEtX1JlUdu8xx5qhDI:(void *)i landmark:(void *)landmark sceneprints:(void *)sceneprints compressedSceneprint:(double)sceneprint fingerprints:(double)self0 aesthetics:(double)self1 saliencyA:(double)self2 saliencyO:(double)self3 recognizeObjects:(double)self4 VN5kJNH3eYuyaLxNpZr5Z7zi:(void *)self5 VNdGg5skzXHSAENO6T3enHE:(void *)self6 cityNatureGating:(void *)self7 photosAdjustments:(void *)self8 pixelBuffer:(void *)self9 withOptions:(void *)options originalImageSize:(void *)size regionOfInterest:(void *)interest qosClass:(void *)class warningRecorder:(uint64_t)recorder error:(void *)error
{
  v321 = *MEMORY[0x1E69E9840];
  v261 = a2;
  scenesCopy = scenes;
  netCopy = net;
  junkCopy = junk;
  iCopy = i;
  landmarkCopy = landmark;
  sceneprintsCopy = sceneprints;
  z7ziCopy = z7zi;
  eCopy = e;
  gatingCopy = gating;
  adjustmentsCopy = adjustments;
  bufferCopy = buffer;
  optionsCopy = options;
  sizeCopy = size;
  interestCopy = interest;
  classCopy = class;
  errorCopy = error;
  v247 = a27;
  v248 = adjustmentsCopy;
  v255 = z7ziCopy;
  v256 = sceneprintsCopy;
  v249 = gatingCopy;
  v250 = eCopy;
  v245 = optionsCopy;
  v246 = bufferCopy;
  v243 = interestCopy;
  v244 = sizeCopy;
  v242 = classCopy;
  if (!self)
  {
    goto LABEL_55;
  }

  v44 = [VNImageAnalyzerMultiDetector _analysisTypeForScenes:v261 entityNet:scenesCopy junk:netCopy VNVYvzEtX1JlUdu8xx5qhDI:junkCopy landmark:iCopy sceneprints:landmarkCopy compressedSceneprint:sceneprintsCopy fingerprints:z7ziCopy aesthetics:eCopy saliencyA:gatingCopy saliencyO:adjustmentsCopy recognizeObjects:bufferCopy VN5kJNH3eYuyaLxNpZr5Z7zi:optionsCopy VNdGg5skzXHSAENO6T3enHE:sizeCopy cityNatureGating:interestCopy photosAdjustments:classCopy];
  if (!v44)
  {
    fingerprints = MEMORY[0x1E695E0F0];
    goto LABEL_291;
  }

  if (![(VNImageAnalyzerMultiDetector *)self _performAnalysis:v44 pixelBuffer:recorder error:a28])
  {
LABEL_55:
    fingerprints = 0;
    goto LABEL_291;
  }

  v232 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = [landmarkCopy count];
  if (!sceneprintsCopy && !v45)
  {
    goto LABEL_63;
  }

  v46 = landmarkCopy;
  v224 = sceneprintsCopy;
  v222 = errorCopy;
  v251 = objc_alloc_init(MEMORY[0x1E695DF70]);
  vision::mod::ImageAnalyzer::getSceneRepresentation(&v317, *(self + 112));
  vision::mod::ImageAnalyzer_Tensor1D<float>::getVectorFromTensor(&__p, &v317);
  vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(&v317);
  memset(v312, 0, sizeof(v312));
  v313 = 0u;
  v314 = 0u;
  obj = v46;
  v47 = [obj countByEnumeratingWithState:v312 objects:&v317 count:16];
  if (v47)
  {
    v238 = *v312[2];
    while (2)
    {
      v235 = v47;
      for (i = 0; i != v235; ++i)
      {
        if (*v312[2] != v238)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(v312[1] + 8 * i);
        observationsRecipient = [v49 observationsRecipient];
        originatingRequestSpecifier = [observationsRecipient originatingRequestSpecifier];
        [originatingRequestSpecifier requestClassCode];
        [originatingRequestSpecifier requestRevision];
        kdebug_trace();
        v50 = v302;
        v51 = __p;
        v52 = objc_alloc(MEMORY[0x1E695DEF0]);
        v53 = [v52 initWithBytes:__p length:v50 - v51];
        if (!v53)
        {
          goto LABEL_57;
        }

        v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([v53 length])
        {
          includeLabelsAndConfidences = [v49 includeLabelsAndConfidences];
          v56 = MEMORY[0x1E695E0F8];
          if (includeLabelsAndConfidences)
          {
            [(VNImageAnalyzerMultiDetector *)&v308 _lastAnalysisSceneClassifications];
            v57 = objc_alloc(MEMORY[0x1E695DF90]);
            begin = v308.__begin_;
            v59 = [v57 initWithCapacity:(*(v308.__begin_ + 1) - *v308.__begin_) >> 5];
            v61 = *begin;
            v60 = *(begin + 1);
            while (v61 != v60)
            {
              if (*(v61 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v309, *v61, *(v61 + 1));
              }

              else
              {
                v62 = *v61;
                v309.__r_.__value_.__r.__words[2] = *(v61 + 2);
                *&v309.__r_.__value_.__l.__data_ = v62;
              }

              v310 = *(v61 + 6);
              v311 = *(v61 + 28);
              v63 = objc_alloc(MEMORY[0x1E696AEC0]);
              if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v64 = &v309;
              }

              else
              {
                v64 = v309.__r_.__value_.__r.__words[0];
              }

              v65 = [v63 initWithUTF8String:v64];
              LODWORD(v66) = v310;
              v67 = [MEMORY[0x1E696AD98] numberWithFloat:v66];
              [v59 setObject:v67 forKeyedSubscript:v65];

              if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v309.__r_.__value_.__l.__data_);
              }

              v61 += 2;
            }

            v56 = [v59 copy];

            if (v308.__end_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v308.__end_);
            }
          }

          v68 = [*(self + 80) VNSceneprintFromData:v53 labelsAndConfidences:v56 originatingRequestSpecifier:originatingRequestSpecifier error:a28];
          if (!v68)
          {

LABEL_57:
            goto LABEL_58;
          }

          v69 = [VNSceneObservation alloc];
          v315[0] = v68;
          v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v315 count:1];
          v71 = [(VNSceneObservation *)v69 initWithOriginatingRequestSpecifier:originatingRequestSpecifier sceneprints:v70];

          [v54 addObject:v71];
        }

        kdebug_trace();
        [observationsRecipient receiveObservations:v54];
        [v251 addObjectsFromArray:v54];
      }

      v47 = [obj countByEnumeratingWithState:v312 objects:&v317 count:16];
      if (v47)
      {
        continue;
      }

      break;
    }
  }

  if (v224)
  {
    observationsRecipient2 = [v224 observationsRecipient];
    originatingRequestSpecifier2 = [observationsRecipient2 originatingRequestSpecifier];
    [originatingRequestSpecifier2 requestClassCode];
    requestRevision = [originatingRequestSpecifier2 requestRevision];
    kdebug_trace();
    if (requestRevision != 3737841666)
    {
      if (a28)
      {
        *a28 = [VNError errorForUnsupportedRevision:requestRevision ofRequestClass:objc_opt_class()];
      }

      goto LABEL_322;
    }

    v75 = *(self + 176);
    if (v75)
    {
LABEL_317:
      if ((v302 - __p) >> 2 == *(v75 + 24))
      {
        operator new();
      }

      if (a28)
      {
        *a28 = VNErrorForCVMLStatus(0x217C);
      }

      goto LABEL_322;
    }

    pca256FileURL = [*(self + 80) pca256FileURL];
    v77 = [pca256FileURL VisionCoreFileSystemPathAndReturnError:0];
    v78 = v77;
    if (!v77)
    {
      if (a28)
      {
        v208 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to locate %@", @"pca256"];
        *a28 = [VNError errorForInvalidOperationWithLocalizedDescription:v208];
      }

      v81 = 0;
LABEL_314:

      v210 = *(self + 176);
      *(self + 176) = v81;
      if (v210)
      {
        std::default_delete<vision::mod::ImageAnalyzer_PCA>::operator()[abi:ne200100](v210);
      }

      v75 = *(self + 176);
      if (v75)
      {
        goto LABEL_317;
      }

LABEL_322:

LABEL_58:
      fingerprints = 0;
      goto LABEL_59;
    }

    v79 = v77;
    std::string::basic_string[abi:ne200100]<0>(v306, [v78 UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(v304, [@"pca256" UTF8String]);
    memset(&v308, 0, sizeof(v308));
    if (v307 >= 0)
    {
      v80 = v306;
    }

    else
    {
      v80 = v306[0];
    }

    v81 = fopen(v80, "rb");
    if (!v81)
    {
      v82 = 8565;
LABEL_305:
      if (v308.__begin_)
      {
        operator delete(v308.__begin_);
      }

      if (v305 < 0)
      {
        operator delete(v304[0]);
      }

      if (v307 < 0)
      {
        operator delete(v306[0]);
      }

      if (!v81 && a28)
      {
        *a28 = VNErrorForCVMLStatus(v82);
      }

      goto LABEL_314;
    }

    LODWORD(v299[0]) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v309, "origDim");
    v82 = vision::mod::_readBinSerializerBlob(v81, &v309, v299, 1);
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v309.__r_.__value_.__l.__data_);
    }

    if (v82 == 128)
    {
      v83 = *v299;
      if (!*v299)
      {
        goto LABEL_303;
      }

      std::string::basic_string[abi:ne200100]<0>(&v309, "pcaDim");
      v82 = vision::mod::_readBinSerializerBlob(v81, &v309, v299, 1);
      if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v309.__r_.__value_.__l.__data_);
      }

      if (v82 == 128)
      {
        v84 = *v299;
        if (*v299 - 1 < v83)
        {
          std::vector<float>::resize(&v308, v84 * v83);
          if (v305 >= 0)
          {
            v85 = v304;
          }

          else
          {
            v85 = v304[0];
          }

          std::string::basic_string[abi:ne200100]<0>(&v309, v85);
          v82 = vision::mod::_readBinSerializerBlob(v81, &v309, v308.__begin_, v84 * v83);
          if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v309.__r_.__value_.__l.__data_);
          }

          if (v82 == 128)
          {
            fclose(v81);
            v82 = 8576;
            goto LABEL_301;
          }

          std::vector<float>::resize(&v308, 0);
          goto LABEL_300;
        }

LABEL_303:
        v82 = 8564;
        fclose(v81);
LABEL_304:
        v81 = 0;
        goto LABEL_305;
      }
    }

    else
    {
      v83 = 0;
    }

    v84 = 0;
LABEL_300:
    fclose(v81);
    if (v82 == 128)
    {
LABEL_301:
      v209 = operator new(0x28uLL, MEMORY[0x1E69E5398]);
      v81 = v209;
      if (v209)
      {
        v209->_p = 0;
        *&v209->_r = 0;
        *&v209->_flags = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v209, v308.__begin_, v308.__end_, v308.__end_ - v308.__begin_);
        v81->_bf._base = v83;
        *&v81->_bf._size = v84;
      }

      else
      {
        v82 = 8571;
      }

      goto LABEL_305;
    }

    goto LABEL_304;
  }

  fingerprints = v251;
LABEL_59:
  if (__p)
  {
    v302 = __p;
    operator delete(__p);
  }

  if (!fingerprints)
  {
    goto LABEL_290;
  }

  [v232 addObjectsFromArray:fingerprints];

LABEL_63:
  if (v255)
  {
    [v255 observationsRecipient];
    originatingRequestSpecifier3 = [objc_claimAutoreleasedReturnValue() originatingRequestSpecifier];
    [originatingRequestSpecifier3 requestClassCode];
    [originatingRequestSpecifier3 requestRevision];
    kdebug_trace();
    memset(&v308, 0, sizeof(v308));
    v87 = *(self + 112);
    LODWORD(v306[0]) = 1024;
    v312[0] = v306;
    if (*(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v87 + 824), 0x400u) + 20))
    {
      LODWORD(v306[0]) = 1024;
      v312[0] = v306;
      v88 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v87 + 784), 0x400u);
      vision::mod::ImageAnalyzer_Tensor1D<float>::ImageAnalyzer_Tensor1D(&v317, (v88 + 3), 1);
      vision::mod::ImageAnalyzer_Tensor1D<float>::getVectorFromTensor(v312, &v317);
      v306[0] = 0;
      std::vector<long long>::vector[abi:ne200100](&v309, 1uLL);
      operator new();
    }

    exception = __cxa_allocate_exception(8uLL);
    *exception = 8574;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  if (v261)
  {
    v89 = v261;
    memset(v312, 0, sizeof(v312));
    v313 = 0u;
    v314 = 0u;
    v265 = v89;
    v90 = 0;
    v91 = [v265 countByEnumeratingWithState:v312 objects:&v317 count:16];
    if (v91)
    {
      v269 = *v312[2];
      while (2)
      {
        for (j = 0; j != v91; ++j)
        {
          if (*v312[2] != v269)
          {
            objc_enumerationMutation(v265);
          }

          v93 = *(v312[1] + 8 * j);
          observationsRecipient3 = [v93 observationsRecipient];
          originatingRequestSpecifier4 = [observationsRecipient3 originatingRequestSpecifier];
          [originatingRequestSpecifier4 requestClassCode];
          [originatingRequestSpecifier4 requestRevision];
          kdebug_trace();
          v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (([(VNImageAnalyzerMultiDetector *)self _populateLeafSceneObservations:v96 hierarchySceneObservations:v96 fromLastAnalysisForSceneConfiguration:v93 error:a28]& 1) == 0)
          {

            v100 = 0;
            goto LABEL_80;
          }

          v97 = &__block_literal_global_128;
          [v96 sortWithOptions:16 usingComparator:&__block_literal_global_128];

          kdebug_trace();
          observationsRecipient4 = [v93 observationsRecipient];
          [observationsRecipient4 receiveObservations:v96];

          if (v90)
          {
            v99 = [v90 arrayByAddingObjectsFromArray:v96];

            v90 = v99;
          }

          else
          {
            v90 = v96;
          }
        }

        v91 = [v265 countByEnumeratingWithState:v312 objects:&v317 count:16];
        if (v91)
        {
          continue;
        }

        break;
      }
    }

    v90 = v90;
    v100 = v90;
LABEL_80:

    if (!v100)
    {
      goto LABEL_289;
    }

    [v232 addObjectsFromArray:v100];
  }

  if (scenesCopy)
  {
    v101 = scenesCopy;
    observationsRecipient5 = [v101 observationsRecipient];
    originatingRequestSpecifier5 = [observationsRecipient5 originatingRequestSpecifier];
    [originatingRequestSpecifier5 requestClassCode];
    [originatingRequestSpecifier5 requestRevision];
    kdebug_trace();
    v102 = originatingRequestSpecifier5;
    v103 = [self sceneLabelOperationPointsForOriginatingRequestSpecifier:originatingRequestSpecifier5 error:a28];
    if (v103)
    {
      disallowedList = [v101 disallowedList];
      v239 = v101;
      [v101 minimumConfidence];
      v105 = v104;
      maximumLabels = [v101 maximumLabels];
      v107 = *(self + 112);
      v306[0] = maximumLabels;
      memset(v312, 0, sizeof(v312));
      LODWORD(v313) = 1065353216;
      LODWORD(v309.__r_.__value_.__l.__data_) = 4096;
      v317.i64[0] = &v309;
      if (*(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v107 + 103, 0x1000u) + 20) != 1)
      {
        v212 = __cxa_allocate_exception(8uLL);
        *v212 = 8574;
        __cxa_throw(v212, MEMORY[0x1E69E54B0], 0);
      }

      LODWORD(v304[0]) = 4096;
      v308.__begin_ = v304;
      v108 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v107 + 98, 0x1000u);
      vision::mod::ImageAnalyzer_Tensor1D<float>::ImageAnalyzer_Tensor1D(&v317, (v108 + 3), 1);
      vision::mod::ImageAnalyzer_Tensor1D<float>::getVectorFromTensor(&v309, &v317);
      vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(&v317);
      v317 = 0uLL;
      v318 = 0;
      v109 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(v107 + 93, 0x1000u);
      if (v109)
      {
        LODWORD(v304[0]) = 4096;
        v308.__begin_ = v304;
        v110 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v107 + 93, 0x1000u);
        vision::mod::ImageAnalyzer_PostProcessor::process(v110 + 3, &v309, &v317);
      }

      v111 = *(self + 128);
      for (k = *(self + 136); v111 != k; ++v111)
      {
        v113 = *v111;
        if (v109)
        {
          v114 = &v317;
        }

        else
        {
          v114 = &v309;
        }

        v115 = *(v114->__r_.__value_.__r.__words[0] + 4 * v113);
        if (fabsf(v115) >= v105)
        {
          LODWORD(v304[0]) = 4096;
          v308.__begin_ = v304;
          v308.__begin_ = (std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v107 + 108, 0x1000u)[3] + 24 * v113);
          *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v312, v308.__begin_) + 10) = v115;
        }
      }

      if (v317.i64[0])
      {
        v317.i64[1] = v317.i64[0];
        operator delete(v317.i64[0]);
      }

      v101 = v239;
      v102 = originatingRequestSpecifier5;
      if (v309.__r_.__value_.__r.__words[0])
      {
        v309.__r_.__value_.__l.__size_ = v309.__r_.__value_.__r.__words[0];
        operator delete(v309.__r_.__value_.__l.__data_);
      }

      v116 = objc_alloc(MEMORY[0x1E695DF70]);
      v117 = [v116 initWithCapacity:v312[3]];
      v118 = v312[2];
      if (v312[2])
      {
        while (1)
        {
          v119 = *(v118 + 10);
          v120 = objc_alloc(MEMORY[0x1E696AEC0]);
          v121 = v118 + 2;
          if (*(v118 + 39) < 0)
          {
            v121 = *v121;
          }

          v122 = [v120 initWithUTF8String:v121];
          v123 = v306[0] == 0x7FFFFFFFFFFFFFFFLL ? 0 : v306;
          v124 = [(VNImageAnalyzerMultiDetector *)self _processSceneIdentifier:v122 withConfidence:disallowedList disallowedList:v103 operationPoints:originatingRequestSpecifier5 originatingRequestSpecifier:v117 observationsArray:v123 optionalTopN:a28 error:v119];

          if (!v124)
          {
            break;
          }

          v118 = *v118;
          if (!v118)
          {
            goto LABEL_106;
          }
        }

        v126 = 0;
      }

      else
      {
LABEL_106:
        v125 = &__block_literal_global_128;
        [v117 sortWithOptions:16 usingComparator:&__block_literal_global_128];

        kdebug_trace();
        [observationsRecipient5 receiveObservations:v117];
        v126 = v117;
      }

      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v312[2]);
      v127 = v312[0];
      v312[0] = 0;
      if (v127)
      {
        operator delete(v127);
      }
    }

    else
    {
      v126 = 0;
    }

    if (!v126)
    {
      goto LABEL_289;
    }

    [v232 addObjectsFromArray:v126];
  }

  if (netCopy)
  {
    v236 = netCopy;
    observationsRecipient6 = [v236 observationsRecipient];
    originatingRequestSpecifier6 = [observationsRecipient6 originatingRequestSpecifier];
    [originatingRequestSpecifier6 requestClassCode];
    [originatingRequestSpecifier6 requestRevision];
    kdebug_trace();
    [(VNImageAnalyzerMultiDetector *)&v309 _junkCustomClassifiersAndReturnError:self, a28];
    v129 = v309.__r_.__value_.__r.__words[0];
    if (v309.__r_.__value_.__r.__words[0])
    {
      vision::mod::ImageAnalyzer::getSceneRepresentation(&v317, *(self + 112));
      v130 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (*v129 != v129[1])
      {
        v131 = *(*v129 + 8);
        if (v131)
        {
          atomic_fetch_add_explicit((v131 + 8), 1uLL, memory_order_relaxed);
        }

        v308.__begin_ = 0;
        vision::mod::ImageAnalyzer_CustomClassifier::performInference();
      }

      v132 = &__block_literal_global_128;
      [v130 sortWithOptions:16 usingComparator:&__block_literal_global_128];

      kdebug_trace();
      [observationsRecipient6 receiveObservations:v130];
      v133 = v130;

      vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(&v317);
    }

    else
    {
      v133 = 0;
    }

    if (v309.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v309.__r_.__value_.__l.__size_);
    }

    if (!v133)
    {
      goto LABEL_289;
    }

    [v232 addObjectsFromArray:v133];
  }

  if (junkCopy)
  {
    v134 = junkCopy;
    [(VNImageAnalyzerMultiDetector *)v312 _VNVYvzEtX1JlUdu8xx5qhDICustomClassifierAndReturnError:self, a28];
    if (v312[0])
    {
      vision::mod::ImageAnalyzer::getSceneRepresentation(&v317, *(self + 112));
      v309.__r_.__value_.__r.__words[0] = 0;
      vision::mod::ImageAnalyzer_CustomClassifier::performInference();
    }

    if (v312[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v312[1]);
    }

LABEL_134:

LABEL_289:
    fingerprints = 0;
    goto LABEL_290;
  }

  if (iCopy)
  {
    v134 = iCopy;
    [(VNImageAnalyzerMultiDetector *)&v309 _potentialLandmarksCustomClassifierAndReturnError:self, a28];
    if (v309.__r_.__value_.__r.__words[0])
    {
      vision::mod::ImageAnalyzer::getSceneRepresentation(&v317, *(self + 112));
      v308.__begin_ = 0;
      vision::mod::ImageAnalyzer_CustomClassifier::performInference();
    }

    if (v309.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v309.__r_.__value_.__l.__size_);
    }

    goto LABEL_134;
  }

  if (v250)
  {
    v271 = v250;
    observationsRecipient7 = [v271 observationsRecipient];
    originatingRequestSpecifier7 = [observationsRecipient7 originatingRequestSpecifier];
    [originatingRequestSpecifier7 requestClassCode];
    [originatingRequestSpecifier7 requestRevision];
    kdebug_trace();
    v137 = *(self + 112);
    LODWORD(v312[0]) = 8;
    v317.i64[0] = v312;
    if (*(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v137 + 824), 8u) + 20) != 1)
    {
      v213 = __cxa_allocate_exception(8uLL);
      *v213 = 8574;
      __cxa_throw(v213, MEMORY[0x1E69E54B0], 0);
    }

    LODWORD(v309.__r_.__value_.__l.__data_) = 8;
    v312[0] = &v309;
    v138 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v137 + 784), 8u);
    vision::mod::ImageAnalyzer_Tensor1D<float>::ImageAnalyzer_Tensor1D(&v317, (v138 + 3), 0);
    v140 = vision::mod::ImageAnalyzer_Tensor1D<float>::operator[](&v317, 0, v139);
    vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(&v317);
    v141 = *(self + 112);
    memset(v312, 0, sizeof(v312));
    LODWORD(v313) = 1065353216;
    LODWORD(v309.__r_.__value_.__l.__data_) = 4;
    v317.i64[0] = &v309;
    if (*(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v141 + 103, 4u) + 20) != 1)
    {
      v214 = __cxa_allocate_exception(8uLL);
      *v214 = 8574;
      __cxa_throw(v214, MEMORY[0x1E69E54B0], 0);
    }

    LODWORD(v306[0]) = 4;
    v308.__begin_ = v306;
    v142 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v141 + 98, 4u);
    vision::mod::ImageAnalyzer_Tensor1D<float>::ImageAnalyzer_Tensor1D(&v317, (v142 + 3), 1);
    vision::mod::ImageAnalyzer_Tensor1D<float>::getVectorFromTensor(&v309, &v317);
    vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(&v317);
    v317 = 0uLL;
    v318 = 0;
    v143 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(v141 + 93, 4u);
    if (v143)
    {
      LODWORD(v306[0]) = 4;
      v308.__begin_ = v306;
      v144 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v141 + 93, 4u);
      vision::mod::ImageAnalyzer_PostProcessor::process(v144 + 3, &v309, &v317);
    }

    v145 = v309.__r_.__value_.__r.__words[0];
    if (v309.__r_.__value_.__l.__size_ != v309.__r_.__value_.__r.__words[0])
    {
      v146 = 0;
      v147 = 0;
      do
      {
        v148 = v317.i64[0];
        if (!v143)
        {
          v148 = v145;
        }

        v149 = *(v148 + 4 * v147);
        LODWORD(v306[0]) = 4;
        v308.__begin_ = v306;
        v308.__begin_ = (std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v141 + 108, 4u)[3] + v146);
        *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v312, v308.__begin_) + 10) = v149;
        v145 = v309.__r_.__value_.__r.__words[0];
        ++v147;
        v146 += 24;
      }

      while (v147 < (v309.__r_.__value_.__l.__size_ - v309.__r_.__value_.__r.__words[0]) >> 2);
    }

    if (v317.i64[0])
    {
      v317.i64[1] = v317.i64[0];
      operator delete(v317.i64[0]);
      v145 = v309.__r_.__value_.__r.__words[0];
    }

    if (v145)
    {
      v309.__r_.__value_.__l.__size_ = v145;
      operator delete(v145);
    }

    std::string::basic_string[abi:ne200100]<0>(&v317, "subject_framing");
    v150 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, &v317);
    if (v150)
    {
      v151 = *(v150 + 10);
    }

    else
    {
      v151 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&v309, "background");
    v152 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, &v309);
    if (v152)
    {
      v153 = *(v152 + 10);
    }

    else
    {
      v153 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&v308, "blur");
    v154 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, &v308);
    if (v154)
    {
      v155 = *(v154 + 10);
    }

    else
    {
      v155 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v306, "subject_sharpness");
    v156 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v306);
    if (v156)
    {
      v157 = *(v156 + 10);
    }

    else
    {
      v157 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v304, "timing");
    v158 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v304);
    if (v158)
    {
      v159 = *(v158 + 10);
    }

    else
    {
      v159 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "lightning");
    v160 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, &__p);
    if (v160)
    {
      v161 = *(v160 + 10);
    }

    else
    {
      v161 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v315, "reflections");
    v162 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v315);
    if (v162)
    {
      v163 = *(v162 + 10);
    }

    else
    {
      v163 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v299, "color_harmony");
    v164 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v299);
    if (v164)
    {
      v165 = *(v164 + 10);
    }

    else
    {
      v165 = 0;
    }

    v267 = v165;
    std::string::basic_string[abi:ne200100]<0>(v297, "color_brightness");
    v166 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v297);
    if (v166)
    {
      v167 = *(v166 + 10);
    }

    else
    {
      v167 = 0;
    }

    v253 = v167;
    std::string::basic_string[abi:ne200100]<0>(v295, "symmetry");
    v168 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v295);
    if (v168)
    {
      v169 = *(v168 + 10);
    }

    else
    {
      v169 = 0;
    }

    v241 = v169;
    std::string::basic_string[abi:ne200100]<0>(v293, "repetition");
    v170 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v293);
    if (v170)
    {
      v171 = *(v170 + 10);
    }

    else
    {
      v171 = 0;
    }

    v237 = v171;
    std::string::basic_string[abi:ne200100]<0>(v291, "immersive_feeling");
    v172 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v291);
    if (v172)
    {
      v173 = *(v172 + 10);
    }

    else
    {
      v173 = 0;
    }

    obja = v173;
    std::string::basic_string[abi:ne200100]<0>(v289, "perspective");
    v174 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v289);
    if (v174)
    {
      v175 = *(v174 + 10);
    }

    else
    {
      v175 = 0;
    }

    v225 = v175;
    std::string::basic_string[abi:ne200100]<0>(v287, "post_processing");
    v176 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v287);
    if (v176)
    {
      v177 = *(v176 + 10);
    }

    else
    {
      v177 = 0;
    }

    v223 = v177;
    std::string::basic_string[abi:ne200100]<0>(v285, "noise");
    v178 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v285);
    if (v178)
    {
      v179 = *(v178 + 10);
    }

    else
    {
      v179 = 0;
    }

    v221 = v179;
    std::string::basic_string[abi:ne200100]<0>(v283, "failure");
    v180 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v283);
    if (v180)
    {
      v181 = *(v180 + 10);
    }

    else
    {
      v181 = 0;
    }

    v220 = v181;
    std::string::basic_string[abi:ne200100]<0>(v281, "composition");
    v182 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v281);
    if (v182)
    {
      v183 = *(v182 + 10);
    }

    else
    {
      v183 = 0;
    }

    v219 = v183;
    std::string::basic_string[abi:ne200100]<0>(v279, "interestingness");
    v184 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v279);
    if (v184)
    {
      v185 = *(v184 + 10);
    }

    else
    {
      v185 = 0;
    }

    v218 = v185;
    std::string::basic_string[abi:ne200100]<0>(v277, "object_intrusion");
    v217 = v140;
    v186 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v277);
    if (v186)
    {
      v187 = *(v186 + 10);
    }

    else
    {
      v187 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v275, "tilt");
    v216 = v163;
    v188 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v275);
    if (v188)
    {
      v189 = *(v188 + 10);
    }

    else
    {
      v189 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v273, "low_light");
    v190 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v312, v273);
    if (v190)
    {
      LODWORD(v191) = *(v190 + 10);
    }

    else
    {
      v191 = 0.0;
    }

    v215 = __PAIR64__(LODWORD(v191), v189);
    LODWORD(v198) = v216;
    *&v191 = v217;
    LODWORD(v192) = v151;
    LODWORD(v193) = v153;
    LODWORD(v194) = v155;
    LODWORD(v195) = v157;
    LODWORD(v196) = v159;
    LODWORD(v197) = v161;
    v199 = [VNImageAestheticsObservation observationForOriginatingRequestSpecifier:originatingRequestSpecifier7 overallAestheticScore:a28 wellFramedSubjectScore:v191 wellChosenBackgroundScore:v192 tastefullyBlurredScore:v193 sharplyFocusedSubjectScore:v194 wellTimedShotScore:v195 pleasantLightingScore:v196 pleasantReflectionsScore:v197 harmoniousColorScore:v198 livelyColorScore:__PAIR64__(v253 pleasantSymmetryScore:v267) pleasantPatternScore:__PAIR64__(v237 immersivenessScore:v241) pleasantPerspectiveScore:__PAIR64__(v225 pleasantPostProcessingScore:obja) noiseScore:__PAIR64__(v221 failureScore:v223) pleasantCompositionScore:__PAIR64__(v219 interestingSubjectScore:v220) intrusiveObjectPresenceScore:__PAIR64__(v187 pleasantCameraTiltScore:v218) lowKeyLightingScore:v215 error:?];
    if (v274 < 0)
    {
      operator delete(v273[0]);
    }

    if (v276 < 0)
    {
      operator delete(v275[0]);
    }

    if (v278 < 0)
    {
      operator delete(v277[0]);
    }

    if (v280 < 0)
    {
      operator delete(v279[0]);
    }

    if (v282 < 0)
    {
      operator delete(v281[0]);
    }

    if (v284 < 0)
    {
      operator delete(v283[0]);
    }

    if (v286 < 0)
    {
      operator delete(v285[0]);
    }

    if (v288 < 0)
    {
      operator delete(v287[0]);
    }

    if (v290 < 0)
    {
      operator delete(v289[0]);
    }

    if (v292 < 0)
    {
      operator delete(v291[0]);
    }

    if (v294 < 0)
    {
      operator delete(v293[0]);
    }

    if (v296 < 0)
    {
      operator delete(v295[0]);
    }

    if (v298 < 0)
    {
      operator delete(v297[0]);
    }

    if (v300 < 0)
    {
      operator delete(v299[0]);
    }

    if (v316 < 0)
    {
      operator delete(v315[0]);
    }

    if (v303 < 0)
    {
      operator delete(__p);
    }

    if (v305 < 0)
    {
      operator delete(v304[0]);
    }

    if (v307 < 0)
    {
      operator delete(v306[0]);
    }

    if (SHIBYTE(v308.__end_cap_.__value_) < 0)
    {
      operator delete(v308.__begin_);
    }

    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v309.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v318) < 0)
    {
      operator delete(v317.i64[0]);
    }

    if (v199)
    {
      kdebug_trace();
      v317.i64[0] = v199;
      v200 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v317 count:1];
      [observationsRecipient7 receiveObservations:v200];
      v201 = v200;
    }

    else
    {
      v201 = 0;
    }

    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v312[2]);
    v202 = v312[0];
    v312[0] = 0;
    if (v202)
    {
      operator delete(v202);
    }

    if (!v201)
    {
      goto LABEL_289;
    }

    [v232 addObjectsFromArray:v201];
  }

  if (v249)
  {
    v203 = v249;
    v204 = errorCopy;
    v205 = v247;
    vision::mod::ImageAnalyzer::getSceneSaliency(&v317, *(self + 112));
    v206 = [(VNImageAnalyzerMultiDetector *)aesthetics _processSaliencyTensor:a regionOfInterest:o originalImageSize:objects options:sceneprint saliencyConfiguration:fingerprints saliencyGeneratorType:self startCode:&v317 finishCode:v204 qosClass:v203 warningRecorder:@"VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType" error:723845552, 723845556, a26, v205, a28];
    free(v319);
    free(v320);

    if (!v206)
    {
      goto LABEL_289;
    }

    [v232 addObjectsFromArray:v206];
  }

  if (v248)
  {
    fingerprints = [(VNImageAnalyzerMultiDetector *)self _processLastAnalysisForSaliencyOConfiguration:v248 regionOfInterest:errorCopy originalImageSize:a26 options:v247 qosClass:a28 warningRecorder:aesthetics error:a, o, objects, sceneprint, fingerprints];
    if (!fingerprints)
    {
      goto LABEL_290;
    }

    [v232 addObjectsFromArray:fingerprints];
  }

  if (v246)
  {
    fingerprints = [VNImageAnalyzerMultiDetector _processLastAnalysisForRecognizeObjectsConfiguration:self error:v246];
    if (!fingerprints)
    {
      goto LABEL_290;
    }

    [v232 addObjectsFromArray:fingerprints];
  }

  if (v245)
  {
    fingerprints = [(VNImageAnalyzerMultiDetector *)self _processLastAnalysisForVN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:v245 error:a28];
    if (!fingerprints)
    {
      goto LABEL_290;
    }

    [v232 addObjectsFromArray:fingerprints];
  }

  if (v244)
  {
    fingerprints = [(VNImageAnalyzerMultiDetector *)self _processLastAnalysisForSignificantEventConfiguration:v244 error:a28];
    if (!fingerprints)
    {
      goto LABEL_290;
    }

    [v232 addObjectsFromArray:fingerprints];
  }

  if (v243)
  {
    fingerprints = [(VNImageAnalyzerMultiDetector *)self _processLastAnalysisForCityNatureConfiguration:v243 error:a28];
    if (!fingerprints)
    {
      goto LABEL_290;
    }

    [v232 addObjectsFromArray:fingerprints];
  }

  if (!v242)
  {
LABEL_288:
    fingerprints = v232;
    goto LABEL_290;
  }

  fingerprints = [(VNImageAnalyzerMultiDetector *)self _processLastAnalysisForPhotosAdjustmentsConfiguration:v242 error:a28];
  if (fingerprints)
  {
    [v232 addObjectsFromArray:fingerprints];

    goto LABEL_288;
  }

LABEL_290:

LABEL_291:

  return fingerprints;
}

- (uint64_t)_analysisTypeForScenes:(void *)scenes entityNet:(void *)net junk:(void *)junk VNVYvzEtX1JlUdu8xx5qhDI:(void *)i landmark:(void *)landmark sceneprints:(void *)sceneprints compressedSceneprint:(void *)sceneprint fingerprints:(void *)fingerprints aesthetics:(void *)aesthetics saliencyA:(void *)scenes0 saliencyO:(void *)scenes1 recognizeObjects:(void *)scenes2 VN5kJNH3eYuyaLxNpZr5Z7zi:(void *)scenes3 VNdGg5skzXHSAENO6T3enHE:(void *)scenes4 cityNatureGating:(void *)scenes5 photosAdjustments:(void *)scenes6
{
  v59 = *MEMORY[0x1E69E9840];
  scenesCopy = scenes;
  netCopy = net;
  junkCopy = junk;
  iCopy = i;
  landmarkCopy = landmark;
  sceneprintsCopy = sceneprints;
  sceneprintCopy = sceneprint;
  fingerprintsCopy = fingerprints;
  aestheticsCopy = aesthetics;
  aCopy = a;
  oCopy = o;
  objectsCopy = objects;
  z7ziCopy = z7zi;
  eCopy = e;
  gatingCopy = gating;
  adjustmentsCopy = adjustments;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v27 = scenesCopy;
  v28 = 0;
  v29 = [v27 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v29)
  {
    v30 = *v54;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v54 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v28 = [*(*(&v53 + 1) + 8 * i) analysisTypes] | v28;
      }

      v29 = [v27 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v29);
  }

  if (junkCopy)
  {
    v28 = [junkCopy analysisTypes] | v28;
  }

  if (iCopy)
  {
    v28 = [iCopy analysisTypes] | v28;
  }

  if (landmarkCopy)
  {
    v28 = [landmarkCopy analysisTypes] | v28;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v32 = sceneprintsCopy;
  v33 = [v32 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v33)
  {
    v34 = *v50;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v28 = [*(*(&v49 + 1) + 8 * j) analysisTypes] | v28;
      }

      v33 = [v32 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v33);
  }

  if (sceneprintCopy)
  {
    v28 = [sceneprintCopy analysisTypes] | v28;
  }

  if (z7ziCopy)
  {
    v28 = [z7ziCopy analysisTypes] | v28;
  }

  if (eCopy)
  {
    v28 = [eCopy analysisTypes] | v28;
  }

  if (gatingCopy)
  {
    v28 = [gatingCopy analysisTypes] | v28;
  }

  if (netCopy)
  {
    v28 = [netCopy analysisTypes] | v28;
  }

  if (fingerprintsCopy)
  {
    v28 = [fingerprintsCopy analysisTypes] | v28;
  }

  if (aestheticsCopy)
  {
    v28 = [aestheticsCopy analysisTypes] | v28;
  }

  if (aCopy)
  {
    v28 = [aCopy analysisTypes] | v28;
  }

  if (oCopy)
  {
    v28 = [oCopy analysisTypes] | v28;
  }

  if (objectsCopy)
  {
    v28 = [objectsCopy analysisTypes] | v28;
  }

  if (adjustmentsCopy)
  {
    v28 = [adjustmentsCopy analysisTypes] | v28;
  }

  return v28;
}

- (uint64_t)_performAnalysis:(uint64_t)analysis pixelBuffer:(uint64_t)buffer error:
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__VNImageAnalyzerMultiDetector__performAnalysis_pixelBuffer_error___block_invoke;
  aBlock[3] = &unk_1E77B5158;
  v9 = a2;
  aBlock[4] = self;
  aBlock[5] = analysis;
  v5 = _Block_copy(aBlock);
  kdebug_trace();
  v6 = VNExecuteBlock(v5, buffer);
  if (v6)
  {
    kdebug_trace();
  }

  return v6;
}

- (id)_processLastAnalysisForSaliencyOConfiguration:(void *)configuration regionOfInterest:(uint64_t)interest originalImageSize:(void *)size options:(void *)options qosClass:(double)class warningRecorder:(double)recorder error:(double)error
{
  v23 = a2;
  configurationCopy = configuration;
  sizeCopy = size;
  v26 = *(self + 112);
  v34 = 128;
  v35 = &v34;
  if (*(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v26 + 824), 0x80u) + 20) != 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8574;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v34 = 128;
  v35 = &v34;
  v27 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v26 + 784), 0x80u);
  vision::mod::ImageAnalyzer_Tensor2D::ImageAnalyzer_Tensor2D(v31, (v27 + 3));
  options = [(VNImageAnalyzerMultiDetector *)class _processSaliencyTensor:recorder regionOfInterest:error originalImageSize:a10 options:a11 saliencyConfiguration:a12 saliencyGeneratorType:self startCode:v31 finishCode:configurationCopy qosClass:v23 warningRecorder:@"VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType" error:723845584, 723845588, interest, sizeCopy, options];
  free(v32);
  free(v33);

  return options;
}

- (id)_processLastAnalysisForRecognizeObjectsConfiguration:(uint64_t)configuration error:(void *)error
{
  v205[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  observationsRecipient = [errorCopy observationsRecipient];
  originatingRequestSpecifier = [observationsRecipient originatingRequestSpecifier];
  [originatingRequestSpecifier requestClassCode];
  requestRevision = [originatingRequestSpecifier requestRevision];
  kdebug_trace();
  kdebug_trace();
  v164 = requestRevision;
  v3 = *(configuration + 112);
  [errorCopy minimumDetectionConfidence];
  v5 = v4;
  [errorCopy nonMaximumSuppressionThreshold];
  v183 = 0u;
  v184 = 0u;
  v185 = 1065353216;
  v6 = v3[104];
  if (!*&v6)
  {
    goto LABEL_17;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 64;
    if (*&v6 <= 0x40uLL)
    {
      v8 = 0x40u % v6.i32[0];
    }
  }

  else
  {
    v8 = (v6.i8[0] - 1) & 0x40;
  }

  v9 = *(v3[103] + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_17:
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8574;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == 64)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (*(v10 + 4) != 64)
  {
    goto LABEL_16;
  }

  v169 = v3;
  v13 = v3 + 108;
  if (*(v3 + 461) != 1)
  {
    v63 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(v13, 0x40u);
    if (!v63)
    {
LABEL_217:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v202 = 0uLL;
    v203 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v202, v63[3], v63[4], 0xAAAAAAAAAAAAAAABLL * ((v63[4] - v63[3]) >> 3));
    v65 = *(&v202 + 1);
    for (i = v202; i != v65; i = (i + 24))
    {
      if (*(i + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v193, *i, *(i + 1));
      }

      else
      {
        v66 = *i;
        v193.__r_.__value_.__r.__words[2] = *(i + 2);
        *&v193.__r_.__value_.__l.__data_ = v66;
      }

      v192[0] = &v193;
      v67 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v183, &v193);
      std::vector<std::tuple<float,_Geometry2D_rect2D_>>::reserve(v67 + 5);
      if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v193.__r_.__value_.__l.__data_);
      }
    }

    if (*(v3 + 113) < v5)
    {
      v5 = *(v3 + 113);
    }

    v201 = v5;
    v68 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(v3 + 108, 0x40u);
    if (!v68)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v69 = -1431655765 * ((v68[4] - v68[3]) >> 3);
    std::vector<float>::vector[abi:ne200100](&v200, v69);
    if (v69 >= 2)
    {
      v70 = 0;
      v71 = v69 & 0x7FFFFFFF;
      v72 = 1;
      do
      {
        v73 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(v3 + 108, 0x40u);
        if (!v73)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v74 = v73[3] + v70;
        if (*(v74 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v193, *(v74 + 24), *(v74 + 32));
        }

        else
        {
          v193 = *(v74 + 24);
        }

        v75 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>((v3 + 70), &v193);
        if (v3 + 71 != v75)
        {
          v76 = *(v75 + 56);
          if (v5 >= v76)
          {
            v76 = v5;
          }

          *(v200 + 4 * v72) = v76;
        }

        if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v193.__r_.__value_.__l.__data_);
        }

        ++v72;
        v70 += 24;
      }

      while (v71 != v72);
    }

    if (!v3[54])
    {
      goto LABEL_167;
    }

    v77 = 0;
    while (1)
    {
      v78 = (v3[118] + 24 * v77);
      vision::mod::ImageAnalyzer_Tensor3D::ImageAnalyzer_Tensor3D(&v193, (*v78 + 168));
      vision::mod::ImageAnalyzer_Tensor3D::ImageAnalyzer_Tensor3D(v192, *v78);
      v167 = v77;
      memset(&v191, 0, sizeof(v191));
      memset(&v190, 0, sizeof(v190));
      memset(&v189, 0, sizeof(v189));
      memset(&v188, 0, sizeof(v188));
      memset(&v187, 0, sizeof(v187));
      v79 = v201;
      v80 = v200;
      v81 = v193.__r_.__value_.__r.__words[0];
      v172 = v194;
      v168 = v195;
      v82 = v196;
      std::vector<int>::reserve(&v191, 0x3E8uLL);
      std::vector<int>::reserve(&v190, 0x3E8uLL);
      std::vector<int>::reserve(&v189, 0x3E8uLL);
      std::vector<int>::reserve(&v188, 0x3E8uLL);
      std::vector<int>::reserve(&v187, 0x3E8uLL);
      if (v168)
      {
        v175 = 0;
        v83 = ((*(&v80 + 1) - v80) >> 2);
        __p = v82 / v83;
        v179 = (v82 / v83);
        do
        {
          if (v172)
          {
            for (j = 0; j != v172; ++j)
            {
              if (__p >= 1)
              {
                v85 = 0;
                v86 = 0;
                end = v189.__end_;
                value = v189.__end_cap_.__value_;
                begin = v189.__begin_;
                do
                {
                  v90 = v195 * v194;
                  v91 = *(v81 + 4 * &j[v195 * v194 * v86 * v83]);
                  LODWORD(v186[0]) = -8388609;
                  if (v91 < (1.0 - v79) && v83 >= 2)
                  {
                    v93 = 0;
                    v94 = (1.0 - v91) * 0.5;
                    v95 = 4 * v90;
                    v96 = (v81 + 4 * v90 + 4 * &j[v90 * v85]);
                    v97 = -3.4028e38;
                    v98 = 1;
                    while (1)
                    {
                      v99 = *v96;
                      if (*v96 > v94)
                      {
                        break;
                      }

                      if (v99 > v79 && v99 > v97)
                      {
                        *v186 = *v96;
                        v93 = v98;
                        v97 = v99;
                      }

                      ++v98;
                      v96 = (v96 + v95);
                      if (v83 == v98)
                      {
                        if (!v93)
                        {
                          goto LABEL_137;
                        }

                        goto LABEL_122;
                      }
                    }

                    v93 = v98;
                    *v186 = *v96;
                    v97 = v99;
                    if (!v98)
                    {
                      goto LABEL_137;
                    }

LABEL_122:
                    if (v97 > *(v200 + 4 * v93))
                    {
                      LODWORD(v204) = v175;
                      std::vector<int>::push_back[abi:ne200100](&v191, &v204);
                      LODWORD(v204) = j;
                      std::vector<int>::push_back[abi:ne200100](&v190, &v204);
                      if (end >= value)
                      {
                        v101 = end - begin;
                        v102 = end - begin;
                        v103 = v102 + 1;
                        if ((v102 + 1) >> 62)
                        {
                          v189.__begin_ = begin;
                          std::vector<float>::__throw_length_error[abi:ne200100]();
                        }

                        if ((value - begin) >> 1 > v103)
                        {
                          v103 = (value - begin) >> 1;
                        }

                        if ((value - begin) >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v104 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v104 = v103;
                        }

                        if (v104)
                        {
                          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v104);
                        }

                        *(4 * v102) = v86;
                        memcpy(0, begin, v101);
                        if (begin)
                        {
                          operator delete(begin);
                        }

                        begin = 0;
                        value = 0;
                        end = (4 * v102 + 4);
                      }

                      else
                      {
                        *end++ = v86;
                      }

                      LODWORD(v204) = v93;
                      std::vector<int>::push_back[abi:ne200100](&v188, &v204);
                      std::vector<float>::push_back[abi:ne200100](&v187, v186);
                    }
                  }

LABEL_137:
                  ++v86;
                  v85 += v83;
                }

                while (v86 < v179);
                v189.__end_ = end;
                v189.__end_cap_.__value_ = value;
                v189.__begin_ = begin;
              }
            }
          }

          v81 += 4 * v198;
          ++v175;
        }

        while (v175 != v168);
      }

      v105 = v191.__begin_;
      v106 = v187.__begin_;
      __pa = v187.__begin_;
      v173 = v191.__begin_;
      if (((v191.__end_ - v191.__begin_) >> 2) > 0)
      {
        break;
      }

      if (v187.__begin_)
      {
        goto LABEL_147;
      }

LABEL_148:
      if (v188.__begin_)
      {
        operator delete(v188.__begin_);
      }

      v3 = v169;
      if (v189.__begin_)
      {
        operator delete(v189.__begin_);
      }

      if (v190.__begin_)
      {
        operator delete(v190.__begin_);
      }

      if (v173)
      {
        operator delete(v173);
      }

      vision::mod::ImageAnalyzer_Tensor3D::~ImageAnalyzer_Tensor3D(v192);
      vision::mod::ImageAnalyzer_Tensor3D::~ImageAnalyzer_Tensor3D(&v193);
      v77 = v167 + 1;
      if ((v167 + 1) >= v169[54])
      {
        goto LABEL_167;
      }
    }

    v107 = ((v191.__end_ - v191.__begin_) >> 2) & 0x7FFFFFFF;
    v108 = v190.__begin_;
    v109 = v189.__begin_;
    v110 = v188.__begin_;
    do
    {
      v112 = *v108++;
      v111 = v112;
      v114 = *v105++;
      v113 = v114;
      v116 = *v109++;
      v115 = v116;
      LODWORD(v116) = *v110++;
      v117 = v116;
      v118 = *v106;
      v119 = **(*(v169[67] + 24 * v167) + 24 * v115);
      v120 = 4 * v115;
      v180 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(v192, v113, v111, 4 * v115);
      v176 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(v192, v113, v111, v120 | 1);
      v174 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(v192, v113, v111, v120 | 2);
      v121 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(v192, v113, v111, v120 | 3);
      v122 = v169[58];
      v123 = vmla_f32(vmul_n_f32(vadd_f32(vcvt_f32_s32(__PAIR64__(v113, v111)), 0x3F0000003F000000), 1.0 / v168), *v122, vmul_f32(v119, __PAIR64__(LODWORD(v176), LODWORD(v180))));
      v124 = vmul_f32(__PAIR64__(LODWORD(v121), LODWORD(v174)), v122[1]);
      v177 = v124.f32[0];
      v181 = expf(v124.f32[1]);
      v125.f32[0] = expf(v177);
      v125.f32[1] = v181;
      v126 = vmul_f32(v119, v125);
      LODWORD(v186[0]) = v118;
      *(v186 + 4) = vadd_f32(v123, vmul_f32(v126, 0xBF000000BF000000));
      *(&v186[1] + 4) = vrev64_s32(v126);
      v127 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(v169 + 108, 0x40u);
      if (!v127)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v204 = (v127[3] + 24 * v117);
      v128 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v183, v204);
      std::vector<std::tuple<float,_Geometry2D_rect2D_>>::push_back[abi:ne200100]((v128 + 5), v186);
      ++v106;
      --v107;
    }

    while (v107);
LABEL_147:
    operator delete(__pa);
    goto LABEL_148;
  }

  v14 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(v13, 0x40u);
  if (!v14)
  {
    goto LABEL_217;
  }

  v202 = 0uLL;
  v203 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v202, v14[3], v14[4], 0xAAAAAAAAAAAAAAABLL * ((v14[4] - v14[3]) >> 3));
  v16 = *(&v202 + 1);
  for (k = v202; k != v16; k = (k + 24))
  {
    if (*(k + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v193, *k, *(k + 1));
    }

    else
    {
      v17 = *k;
      v193.__r_.__value_.__r.__words[2] = *(k + 2);
      *&v193.__r_.__value_.__l.__data_ = v17;
    }

    v192[0] = &v193;
    v18 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v183, &v193);
    std::vector<std::tuple<float,_Geometry2D_rect2D_>>::reserve(v18 + 5);
    if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v193.__r_.__value_.__l.__data_);
    }
  }

  if (*(v3 + 113) < v5)
  {
    v5 = *(v3 + 113);
  }

  *&v204 = v5;
  v19 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(v3 + 108, 0x40u);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v20 = -1431655765 * ((v19[4] - v19[3]) >> 3);
  std::vector<float>::vector[abi:ne200100](&v200, v20);
  if (v20 >= 2)
  {
    v21 = 0;
    v22 = v20 & 0x7FFFFFFF;
    v23 = 1;
    do
    {
      v24 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(v3 + 108, 0x40u);
      if (!v24)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v25 = v24[3] + v21;
      if (*(v25 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v193, *(v25 + 24), *(v25 + 32));
      }

      else
      {
        v193 = *(v25 + 24);
      }

      v26 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>((v3 + 70), &v193);
      if (v3 + 71 != v26)
      {
        v27 = *(v26 + 56);
        if (v5 >= v27)
        {
          v27 = v5;
        }

        *(v200 + 4 * v23) = v27;
      }

      if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v193.__r_.__value_.__l.__data_);
      }

      ++v23;
      v21 += 24;
    }

    while (v22 != v23);
  }

  v28 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v3 + 121, v3 + 27);
  if (!v28)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  vision::mod::ImageAnalyzer_Tensor3D::ImageAnalyzer_Tensor3D(&v193, (v28 + 5));
  v29 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v3 + 121, v3 + 30);
  if (!v29)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  vision::mod::ImageAnalyzer_Tensor3D::ImageAnalyzer_Tensor3D(v192, (v29 + 5));
  memset(&v191, 0, sizeof(v191));
  memset(&v190, 0, sizeof(v190));
  memset(&v189, 0, sizeof(v189));
  memset(&v188, 0, sizeof(v188));
  v30 = v200;
  v31 = v195;
  v32 = v193.__r_.__value_.__r.__words[0];
  v33 = v194;
  std::vector<int>::reserve(&v191, 0x3E8uLL);
  std::vector<int>::reserve(&v190, 0x3E8uLL);
  std::vector<int>::reserve(&v189, 0x3E8uLL);
  std::vector<int>::reserve(&v188, 0x3E8uLL);
  if (v31)
  {
    v34 = 0;
    v35 = ((*(&v30 + 1) - v30) >> 2);
    do
    {
      if (v33)
      {
        v36 = 0;
        for (m = 0; m != v33; m = m + 1)
        {
          v38 = *(v32 + 4 * v197 * m);
          LODWORD(v187.__begin_) = -8388609;
          if (v38 < (1.0 - v5) && v35 >= 2)
          {
            v40 = 0;
            v41 = (1.0 - v38) * 0.5;
            v42 = (v32 + v197 * v36 + 4 * v199);
            v43 = -3.4028e38;
            v44 = 1;
            while (1)
            {
              v45 = *v42;
              if (*v42 > v41)
              {
                break;
              }

              if (v45 > v5 && v45 > v43)
              {
                *&v187.__begin_ = *v42;
                v40 = v44;
                v43 = v45;
              }

              ++v44;
              v42 += v199;
              if (v35 == v44)
              {
                if (!v40)
                {
                  goto LABEL_67;
                }

                goto LABEL_65;
              }
            }

            v40 = v44;
            *&v187.__begin_ = *v42;
            v43 = v45;
            if (!v44)
            {
              goto LABEL_67;
            }

LABEL_65:
            if (v43 > *(v200 + 4 * v40))
            {
              LODWORD(v186[0]) = v34;
              std::vector<int>::push_back[abi:ne200100](&v191, v186);
              LODWORD(v186[0]) = m;
              std::vector<int>::push_back[abi:ne200100](&v190, v186);
              LODWORD(v186[0]) = v40;
              std::vector<int>::push_back[abi:ne200100](&v189, v186);
              std::vector<float>::push_back[abi:ne200100](&v188, &v187);
            }
          }

LABEL_67:
          v36 += 4;
        }
      }

      v32 += 4 * v198;
      ++v34;
    }

    while (v34 != v31);
  }

  v47 = v191.__begin_;
  v48 = v188.__begin_;
  if (((v191.__end_ - v191.__begin_) >> 2) <= 0)
  {
    if (v188.__begin_)
    {
      goto LABEL_159;
    }
  }

  else
  {
    v49 = 0;
    v50 = ((v191.__end_ - v191.__begin_) >> 2) & 0x7FFFFFFF;
    v51 = v190.__begin_;
    v52 = v189.__begin_;
    do
    {
      v53 = v51[v49];
      v54 = v47[v49];
      v55 = v52[v49];
      v56 = v48[v49];
      v57 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(v192, v54, v53, 0);
      v58 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(v192, v54, v53, 1);
      v59 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(v192, v54, v53, 2);
      v60 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(v192, v54, v53, 3);
      v187.__begin_ = __PAIR64__(LODWORD(v58), v56);
      *&v187.__end_ = v57;
      *(&v187.__end_ + 1) = v59 - v57;
      *&v187.__end_cap_.__value_ = v60 - v58;
      v61 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(v169 + 108, 0x40u);
      if (!v61)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v186[0] = (v61[3] + 24 * v55);
      v62 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v183, v186[0]);
      std::vector<std::tuple<float,_Geometry2D_rect2D_>>::push_back[abi:ne200100]((v62 + 5), &v187);
      ++v49;
    }

    while (v50 != v49);
LABEL_159:
    operator delete(v48);
  }

  if (v189.__begin_)
  {
    operator delete(v189.__begin_);
  }

  v3 = v169;
  if (v190.__begin_)
  {
    operator delete(v190.__begin_);
  }

  if (v47)
  {
    operator delete(v47);
  }

  vision::mod::ImageAnalyzer_Tensor3D::~ImageAnalyzer_Tensor3D(v192);
  vision::mod::ImageAnalyzer_Tensor3D::~ImageAnalyzer_Tensor3D(&v193);
LABEL_167:
  if (v200)
  {
    *(&v200 + 1) = v200;
    operator delete(v200);
  }

  v193.__r_.__value_.__r.__words[0] = &v202;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v193);
  if (*(v3 + 460) == 1)
  {
    for (n = v184; n; n = *n)
    {
      v130 = n[5];
      v131 = n[6];
      if (v131 != v130)
      {
        v193.__r_.__value_.__r.__words[0] = vision::mod::sortDetectionsByConfidence;
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,false>(v130, v131, &v193, 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v131 - v130) >> 2)), 1);
        v133 = n[5];
        v132 = n[6];
        memset(&v193, 0, sizeof(v193));
        v134 = v132 - v133;
        if (v134)
        {
          std::vector<BOOL>::__vallocate[abi:ne200100](&v193, 0xCCCCCCCCCCCCCCCDLL * (v134 >> 2));
        }

        memset(v192, 0, 24);
        n[6] = n[5];
        std::vector<std::tuple<float,_Geometry2D_rect2D_>>::__assign_with_size[abi:ne200100]<std::tuple<float,_Geometry2D_rect2D_>*,std::tuple<float,_Geometry2D_rect2D_>*>((n + 5), 0, 0, 0);
        if (v192[0])
        {
          operator delete(v192[0]);
        }

        if (v193.__r_.__value_.__r.__words[0])
        {
          operator delete(v193.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v135 = *(&v184 + 1);
  kdebug_trace();
  v182 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v135];
  if (v135)
  {
    if (v164 == 1 || v164 == 3737841667)
    {
      std::string::basic_string[abi:ne200100]<0>(&v193, "fruit");
      v136 = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>(&v183, &v193);
      v137 = v136;
      if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v193.__r_.__value_.__l.__data_);
        if (!v137)
        {
          goto LABEL_190;
        }
      }

      else if (!v136)
      {
        goto LABEL_190;
      }

      std::string::basic_string[abi:ne200100]<0>(&v193, "vegetable");
      v192[0] = &v193;
      v138 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v183, &v193);
      if (v138 != v137)
      {
        std::vector<std::tuple<float,_Geometry2D_rect2D_>>::__assign_with_size[abi:ne200100]<std::tuple<float,_Geometry2D_rect2D_>*,std::tuple<float,_Geometry2D_rect2D_>*>((v138 + 5), v137[5], v137[6], 0xCCCCCCCCCCCCCCCDLL * ((v137[6] - v137[5]) >> 2));
      }

      if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v193.__r_.__value_.__l.__data_);
      }

LABEL_190:
      std::string::basic_string[abi:ne200100]<0>(&v193, "fish");
      v139 = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>(&v183, &v193);
      v140 = v139;
      if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v193.__r_.__value_.__l.__data_);
        if (!v140)
        {
          goto LABEL_198;
        }
      }

      else if (!v139)
      {
        goto LABEL_198;
      }

      std::string::basic_string[abi:ne200100]<0>(&v193, "seafood");
      v192[0] = &v193;
      v141 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v183, &v193);
      if (v141 != v140)
      {
        std::vector<std::tuple<float,_Geometry2D_rect2D_>>::__assign_with_size[abi:ne200100]<std::tuple<float,_Geometry2D_rect2D_>*,std::tuple<float,_Geometry2D_rect2D_>*>((v141 + 5), v140[5], v140[6], 0xCCCCCCCCCCCCCCCDLL * ((v140[6] - v140[5]) >> 2));
      }

      if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v193.__r_.__value_.__l.__data_);
      }
    }

LABEL_198:
    disallowedList = [errorCopy disallowedList];
    for (ii = v184; ii; ii = *ii)
    {
      if (ii[6] != ii[5])
      {
        v143 = objc_alloc(MEMORY[0x1E696AEC0]);
        v144 = ii + 2;
        if (*(ii + 39) < 0)
        {
          v144 = *v144;
        }

        v145 = [v143 initWithUTF8String:v144];
        if (_isAcceptableClassificationIdentifier(v145, disallowedList))
        {
          v147 = ii[5];
          v146 = ii[6];
          while (v147 != v146)
          {
            v207.origin.x = v147[1];
            v207.size.height = v147[3];
            v207.size.width = v147[4];
            v207.origin.y = 1.0 - (v147[2] + v207.size.height);
            v209.origin.x = 0.0;
            v209.origin.y = 0.0;
            v209.size.width = 1.0;
            v209.size.height = 1.0;
            v208 = CGRectIntersection(v207, v209);
            x = v208.origin.x;
            y = v208.origin.y;
            width = v208.size.width;
            height = v208.size.height;
            v152 = *v147;
            v153 = [VNClassificationObservation alloc];
            *&v154 = v152;
            v155 = [(VNClassificationObservation *)v153 initWithOriginatingRequestSpecifier:originatingRequestSpecifier identifier:v145 confidence:v154];
            v156 = [VNRecognizedObjectObservation alloc];
            v205[0] = v155;
            v157 = [MEMORY[0x1E695DEC8] arrayWithObjects:v205 count:1];
            *&v158 = v152;
            v158 = [(VNRecognizedObjectObservation *)v156 initWithOriginatingRequestSpecifier:originatingRequestSpecifier boundingBox:v157 confidence:0 labels:0 segmentationMask:x groupId:y, width, height, v158];

            [v182 addObject:v158];
            v147 += 5;
          }
        }
      }
    }

    v160 = &__block_literal_global_133;
    [v182 sortWithOptions:16 usingComparator:&__block_literal_global_133];
  }

  kdebug_trace();
  [observationsRecipient receiveObservations:v182];
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(&v183);

  return v182;
}

- (id)_processLastAnalysisForVN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:(void *)configuration error:
{
  v5 = a2;
  observationsRecipient = [v5 observationsRecipient];
  originatingRequestSpecifier = [observationsRecipient originatingRequestSpecifier];
  [originatingRequestSpecifier requestClassCode];
  [originatingRequestSpecifier requestRevision];
  kdebug_trace();
  [(VNImageAnalyzerMultiDetector *)&v11 _VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierAndReturnError:self, configuration];
  v8 = v11;
  if (v11)
  {
    vision::mod::ImageAnalyzer::getSceneRepresentation(v10, *(self + 112));
    vision::mod::ImageAnalyzer_CustomClassifier::performInference();
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v8;
}

- (id)_processLastAnalysisForSignificantEventConfiguration:(void *)configuration error:
{
  v5 = a2;
  observationsRecipient = [v5 observationsRecipient];
  originatingRequestSpecifier = [observationsRecipient originatingRequestSpecifier];
  [originatingRequestSpecifier requestClassCode];
  [originatingRequestSpecifier requestRevision];
  kdebug_trace();
  [(VNImageAnalyzerMultiDetector *)&v11 _VNdGg5skzXHSAENO6T3enHECustomClassifierForOriginatingRequestSpecifier:self, configuration];
  v8 = v11;
  if (v11)
  {
    vision::mod::ImageAnalyzer::getSceneRepresentation(v10, *(self + 112));
    vision::mod::ImageAnalyzer_CustomClassifier::performInference();
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v8;
}

- (id)_processLastAnalysisForCityNatureConfiguration:(void *)configuration error:
{
  v5 = a2;
  observationsRecipient = [v5 observationsRecipient];
  originatingRequestSpecifier = [observationsRecipient originatingRequestSpecifier];
  [originatingRequestSpecifier requestClassCode];
  [originatingRequestSpecifier requestRevision];
  kdebug_trace();
  [(VNImageAnalyzerMultiDetector *)&v11 _cityNatureCustomClassifierAndReturnError:self, configuration];
  v8 = v11;
  if (v11)
  {
    vision::mod::ImageAnalyzer::getSceneRepresentation(v10, *(self + 112));
    vision::mod::ImageAnalyzer_CustomClassifier::performInference();
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v8;
}

- (id)_processLastAnalysisForPhotosAdjustmentsConfiguration:(void *)configuration error:
{
  v42[1] = *MEMORY[0x1E69E9840];
  v34 = a2;
  sliderNetBlobNamePrefix = [*(self + 80) sliderNetBlobNamePrefix];
  if (sliderNetBlobNamePrefix)
  {
    v6 = sliderNetBlobNamePrefix;
    v33 = sliderNetBlobNamePrefix;
    v35 = [sliderNetBlobNamePrefix length];
    std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
    vision::mod::ImageAnalyzer::getSlidersAdjustments(v37, *(self + 112));
    v7 = objc_alloc(MEMORY[0x1E695DF90]);
    v36 = [v7 initWithCapacity:v39];
    for (i = v38; i; i = *i)
    {
      v9 = i + 2;
      v10 = *(i + 39);
      if (v10 < 0)
      {
        v11 = i[2];
        v12 = i[3];
      }

      else
      {
        v11 = (i + 2);
        v12 = *(i + 39);
      }

      if ((v41 & 0x80u) == 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if ((v41 & 0x80u) == 0)
      {
        v14 = v41;
      }

      else
      {
        v14 = __p[1];
      }

      v15 = v35;
      if (v14)
      {
        if (v12 >= v14)
        {
          v22 = &v11[v12];
          v23 = *v13;
          v24 = v11;
          do
          {
            v25 = v12 - v14;
            if (v25 == -1)
            {
              break;
            }

            v26 = memchr(v24, v23, v25 + 1);
            if (!v26)
            {
              break;
            }

            v27 = v26;
            if (!memcmp(v26, v13, v14))
            {
              if (v27 != v22)
              {
                v15 = v35;
                if (v27 - v11 != -1)
                {
                  goto LABEL_15;
                }
              }

              break;
            }

            v24 = v27 + 1;
            v12 = v22 - (v27 + 1);
          }

          while (v12 >= v14);
        }

        v15 = 0;
      }

LABEL_15:
      if ((v10 & 0x80000000) != 0)
      {
        v9 = *v9;
      }

      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v9 + v15];
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(i[6] - i[5]) >> 2];
      v19 = i[5];
      v20 = i[6];
      while (v19 != v20)
      {
        LODWORD(v18) = *v19;
        v21 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
        [v17 addObject:v21];

        ++v19;
      }

      [v36 setObject:v17 forKey:v16];
    }

    observationsRecipient = [v34 observationsRecipient];
    originatingRequestSpecifier = [observationsRecipient originatingRequestSpecifier];
    v30 = [[VN1vLyVSh30UQ26TGBoV8MHv alloc] initWithOriginatingRequestSpecifier:originatingRequestSpecifier adjustments:v36];
    v42[0] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [observationsRecipient receiveObservations:v31];

    std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(v37);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_35;
  }

  if (configuration)
  {
    v33 = 0;
    [VNError errorForDataUnavailableWithLocalizedDescription:@"adjustments prefix is not available"];
    *configuration = v31 = 0;
LABEL_35:
    sliderNetBlobNamePrefix = v33;
    goto LABEL_36;
  }

  v31 = 0;
LABEL_36:

  return v31;
}

- (id)_processSaliencyTensor:(double)tensor regionOfInterest:(double)interest originalImageSize:(double)size options:(double)options saliencyConfiguration:(uint64_t)configuration saliencyGeneratorType:(int8x16_t *)type startCode:(void *)code finishCode:(void *)self0 qosClass:(void *)self1 warningRecorder:(uint64_t)self2 error:(uint64_t)self3
{
  v50[1] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  finishCodeCopy = finishCode;
  classCopy = class;
  v41 = finishCodeCopy;
  v42 = a15;
  observationsRecipient = [finishCodeCopy observationsRecipient];
  originatingRequestSpecifier = [observationsRecipient originatingRequestSpecifier];
  [originatingRequestSpecifier requestClassCode];
  [originatingRequestSpecifier requestRevision];
  kdebug_trace();
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  vision::mod::ImageAnalyzer_Tensor2D::getVImageBufferFromTensor(v47, type, &v48);
  v46 = 0;
  DeepCopyCVPixelBufferFromVImageBuffer = ImageProcessing_createDeepCopyCVPixelBufferFromVImageBuffer(v47, v48, &v46);
  if (DeepCopyCVPixelBufferFromVImageBuffer)
  {
    v28 = DeepCopyCVPixelBufferFromVImageBuffer;
    v29 = [VNValidationUtilities requiredSessionInOptions:codeCopy error:a16];
    if (v29)
    {
      v30 = [objc_opt_class() _newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:codeCopy];
      v40 = [v29 detectorOfType:classCopy configuredWithOptions:v30 error:a16];
      if (v40)
      {
        v31 = [VNImageBuffer alloc];
        v39 = [(VNImageBuffer *)v31 initWithCVPixelBuffer:v28 orientation:1 options:MEMORY[0x1E695E0F8] session:v29];
        v50[0] = v39;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
        [v30 setObject:v32 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

        [v30 setObject:originatingRequestSpecifier forKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
        if ([originatingRequestSpecifier observationProvidesBoundsNormalizedToROI])
        {
          selfCopy = 0.0;
        }

        else
        {
          selfCopy = self;
        }

        v35 = [v40 processUsingQualityOfServiceClass:a14 options:v30 regionOfInterest:0 warningRecorder:a16 error:0 progressHandler:selfCopy];
        if (v35)
        {
          options = [[VNSaliencyImageObservation alloc] initWithOriginatingRequestSpecifier:originatingRequestSpecifier rawSaliencyImage:v28 originalImageSize:v35 salientObjectBoundingBoxes:tensor * size, interest * options];
          kdebug_trace();
          v49 = options;
          v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
          [observationsRecipient receiveObservations:v37];
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }

    CVPixelBufferRelease(v28);
  }

  else if (a16)
  {
    [VNError errorForOSStatus:v46 localizedDescription:@"failed to create saliency heat map image"];
    *a16 = v37 = 0;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (void)_potentialLandmarksCustomClassifierAndReturnError:(void *)error
{
  if (!a2)
  {
    *self = 0;
    self[1] = 0;
    return;
  }

  v5 = *(a2 + 200);
  if (v5)
  {
    goto LABEL_12;
  }

  potentialLandmarksCustomClassifierDescriptor = [*(a2 + 80) potentialLandmarksCustomClassifierDescriptor];
  [(VNImageAnalyzerMultiDetector *)&v12 _loadCustomClassifierWithDescriptor:a2 error:potentialLandmarksCustomClassifierDescriptor, error];

  v8 = v12;
  if (v12)
  {
    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(a2 + 208);
    *(a2 + 200) = v8;
    *(a2 + 208) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *self = 0;
    self[1] = 0;
    v9 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_10:
  if (!v8)
  {
    return;
  }

  v5 = *(a2 + 200);
LABEL_12:
  v11 = *(a2 + 208);
  *self = v5;
  self[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }
}

- (void)_VNVYvzEtX1JlUdu8xx5qhDICustomClassifierAndReturnError:(void *)error
{
  if (!a2)
  {
    *self = 0;
    self[1] = 0;
    return;
  }

  v5 = *(a2 + 184);
  if (v5)
  {
    goto LABEL_12;
  }

  vNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor = [*(a2 + 80) VNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor];
  [(VNImageAnalyzerMultiDetector *)&v12 _loadCustomClassifierWithDescriptor:a2 error:vNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor, error];

  v8 = v12;
  if (v12)
  {
    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(a2 + 192);
    *(a2 + 184) = v8;
    *(a2 + 192) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *self = 0;
    self[1] = 0;
    v9 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_10:
  if (!v8)
  {
    return;
  }

  v5 = *(a2 + 184);
LABEL_12:
  v11 = *(a2 + 192);
  *self = v5;
  self[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }
}

- (uint64_t)_processSceneIdentifier:(void *)identifier withConfidence:(void *)confidence disallowedList:(void *)list operationPoints:(void *)points originatingRequestSpecifier:(unint64_t *)specifier observationsArray:(uint64_t)array optionalTopN:(float)n error:
{
  v17 = a2;
  identifierCopy = identifier;
  confidenceCopy = confidence;
  listCopy = list;
  pointsCopy = points;
  if (!self)
  {
    v29 = 0;
    goto LABEL_36;
  }

  if (_isAcceptableClassificationIdentifier(v17, identifierCopy))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __167__VNImageAnalyzerMultiDetector__processSceneIdentifier_withConfidence_disallowedList_operationPoints_originatingRequestSpecifier_observationsArray_optionalTopN_error___block_invoke;
    aBlock[3] = &unk_1E77B5180;
    v46 = confidenceCopy;
    v47 = v17;
    v48 = listCopy;
    nCopy = n;
    v22 = _Block_copy(aBlock);
    if (specifier)
    {
      v43 = *specifier;
      v44 = v22;
      v23 = [pointsCopy count];
      v24 = v44;
      if (v23)
      {
        lastObject = [pointsCopy lastObject];
        [lastObject confidence];
        if (v26 < n)
        {
          firstObject = [pointsCopy firstObject];
          if (v23 >= 3 && ([firstObject confidence], v27 >= n))
          {
            v40 = listCopy;
            v41 = confidenceCopy;
            v31 = flsl(v23);
            v32 = 0;
            v33 = 0;
            v34 = 2 << v31;
            do
            {
              v28 = v32 + v34 / 2;
              if (v28 < v23)
              {
                v35 = [pointsCopy objectAtIndex:v32 + v34 / 2];
                [v35 confidence];
                v37 = v36;

                if (v37 >= n)
                {
                  if (v37 <= n)
                  {
                    goto LABEL_32;
                  }

                  v33 = -1;
                  v32 += v34 / 2;
                }

                else
                {
                  v33 = 1;
                }
              }

              v38 = v34 <= 1;
              v34 /= 2;
            }

            while (!v38);
            v28 = v32 + (v33 >> 31);
LABEL_32:
            listCopy = v40;
            confidenceCopy = v41;
            v24 = v44;
            if (v28 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v28 = 0;
          }

          v29 = v24[2](v24, array);
          if (!v29)
          {
LABEL_34:

            goto LABEL_35;
          }

          [pointsCopy insertObject:v29 atIndex:v28];
          if (v23 + 1 > v43)
          {
            [pointsCopy removeObjectAtIndex:v23];
          }

LABEL_33:
          v29 = 1;
          goto LABEL_34;
        }

        if (v23 < v43)
        {
          v30 = (*(v44 + 2))(v44, array);
          if (v30)
          {
            firstObject = v30;
            [pointsCopy addObject:?];
            goto LABEL_33;
          }

          goto LABEL_22;
        }

LABEL_21:
        v29 = 1;
LABEL_35:

        goto LABEL_36;
      }

      lastObject = (*(v44 + 2))(v44, array);
      if (lastObject)
      {
LABEL_15:
        [pointsCopy addObject:lastObject];
        goto LABEL_21;
      }
    }

    else
    {
      v24 = v22;
      lastObject = (*(v22 + 2))(v22, array);
      if (lastObject)
      {
        goto LABEL_15;
      }
    }

LABEL_22:
    v29 = 0;
    goto LABEL_35;
  }

  v29 = 1;
LABEL_36:

  return v29;
}

VNClassificationObservation *__167__VNImageAnalyzerMultiDetector__processSceneIdentifier_withConfidence_disallowedList_operationPoints_originatingRequestSpecifier_observationsArray_optionalTopN_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v10 = 0;
  v4 = [v3 getClassificationMetrics:&v10 forClassificationIdentifier:*(a1 + 40) error:a2];
  v5 = v10;
  v6 = 0;
  if (v4)
  {
LABEL_5:
    v7 = [VNClassificationObservation alloc];
    LODWORD(v8) = *(a1 + 56);
    v6 = [(VNClassificationObservation *)v7 initWithOriginatingRequestSpecifier:*(a1 + 48) identifier:*(a1 + 40) confidence:v5 classificationMetrics:v8];
  }

  return v6;
}

- (uint64_t)_populateLeafSceneObservations:(void *)observations hierarchySceneObservations:(void *)sceneObservations fromLastAnalysisForSceneConfiguration:(void *)configuration error:
{
  v8 = a2;
  observationsCopy = observations;
  sceneObservationsCopy = sceneObservations;
  observationsRecipient = [sceneObservationsCopy observationsRecipient];
  originatingRequestSpecifier = [observationsRecipient originatingRequestSpecifier];

  [originatingRequestSpecifier requestClassCode];
  requestRevision = [originatingRequestSpecifier requestRevision];
  kdebug_trace();
  [sceneObservationsCopy minimumConfidence];
  v15 = v14;
  maximumLeafLabels = [sceneObservationsCopy maximumLeafLabels];
  v17 = maximumLeafLabels & 0x7FFFFFFFFFFFFFFFLL;
  if ((maximumLeafLabels & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = -1;
  }

  else
  {
    v18 = maximumLeafLabels;
  }

  v64 = v18;
  v19 = [[_VNImageAnalyzerMultiDetectorSceneOperationPointsProvider alloc] initWithOperationPointsCache:self[19] originatingRequestSpecifier:originatingRequestSpecifier];
  v20 = [(_VNImageAnalyzerMultiDetectorSceneOperationPointsProvider *)v19 operationPointsAndReturnError:configuration];
  if (v20)
  {
    v46 = requestRevision;
    v48 = v19;
    v49 = originatingRequestSpecifier;
    v50 = observationsCopy;
    v51 = v8;
    v47 = v20;
    disallowedList = [sceneObservationsCopy disallowedList];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = 0;
    }

    else
    {
      v22 = &v64;
    }

    v52 = disallowedList;
    v23 = originatingRequestSpecifier;
    v24 = v20;
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(VNImageAnalyzerMultiDetector *)&v66 _lastAnalysisSceneClassifications];
    v27 = *v66;
    v26 = v66[1];
    if (*v66 == v26)
    {
LABEL_15:
      v33 = v25;
    }

    else
    {
      while (1)
      {
        if ((v27[7] & 1) == 0)
        {
          v28 = v27[6];
          if (v28 >= v15)
          {
            v29 = objc_alloc(MEMORY[0x1E696AEC0]);
            v30 = v27;
            if (*(v27 + 23) < 0)
            {
              v30 = *v27;
            }

            v31 = [v29 initWithUTF8String:v30];
            v32 = [(VNImageAnalyzerMultiDetector *)self _processSceneIdentifier:v31 withConfidence:v52 disallowedList:v24 operationPoints:v23 originatingRequestSpecifier:v25 observationsArray:v22 optionalTopN:configuration error:v28];

            if ((v32 & 1) == 0)
            {
              break;
            }
          }
        }

        v27 += 8;
        if (v27 == v26)
        {
          goto LABEL_15;
        }
      }

      v33 = 0;
    }

    observationsCopy = v50;
    v8 = v51;
    if (v67)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
    }

    if (v33)
    {
      [v51 addObjectsFromArray:v33];
      v34 = self[12];
      v35 = self[13];
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      customHierarchy = [sceneObservationsCopy customHierarchy];
      v37 = customHierarchy;
      if (!customHierarchy)
      {
LABEL_27:

        maximumHierarchicalLabels = [sceneObservationsCopy maximumHierarchicalLabels];
        v40 = 0x7FFFFFFFLL;
        if (maximumHierarchicalLabels <= 0x7FFFFFFE)
        {
          v40 = maximumHierarchicalLabels;
        }

        if (!v40)
        {
          goto LABEL_37;
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3321888768;
        aBlock[2] = __134__VNImageAnalyzerMultiDetector__populateLeafSceneObservations_hierarchySceneObservations_fromLastAnalysisForSceneConfiguration_error___block_invoke;
        aBlock[3] = &unk_1F1974780;
        aBlock[4] = self;
        v59 = v34;
        v60 = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v63 = maximumHierarchicalLabels > 0x7FFFFFFE;
        v61 = v40;
        v62 = v15;
        v55 = v52;
        v56 = v23;
        v57 = v24;
        v58 = v50;
        v41 = _Block_copy(aBlock);
        v42 = VNExecuteBlock(v41, configuration);
        if ((v42 & 1) == 0)
        {
          v65 = 0;
        }

        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }

        if (v42)
        {
LABEL_37:
          kdebug_trace();
          v42 = 1;
          v65 = 1;
        }

        if (!v35)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      if ([customHierarchy requestRevision] == v46)
      {
        v45 = v33;
        [v37 hierarchicalModelAndReturnError:configuration];
        v34 = v66;
        v38 = v67;
        v66 = 0;
        v67 = 0;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          if (v67)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v67);
          }
        }

        v35 = v38;
        v33 = v45;
        if (v34)
        {
          goto LABEL_27;
        }
      }

      else if (configuration)
      {
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"custom hierarchy created for revision %lu cannot be used with a detector for revision %lu", objc_msgSend(v37, "requestRevision"), v46];
        *configuration = [VNError errorForInvalidOperationWithLocalizedDescription:v43];
      }

      v65 = 0;

      v42 = 0;
      if (v35)
      {
LABEL_45:
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        v42 = v65;
      }
    }

    else
    {
      v42 = 0;
    }

LABEL_46:

    v19 = v48;
    originatingRequestSpecifier = v49;
    v20 = v47;
    goto LABEL_47;
  }

  v42 = 0;
LABEL_47:

  return v42;
}

BOOL __134__VNImageAnalyzerMultiDetector__populateLeafSceneObservations_hierarchySceneObservations_fromLastAnalysisForSceneConfiguration_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  [(VNImageAnalyzerMultiDetector *)&v31 _lastAnalysisSceneClassifications];
  *v28 = 0u;
  *v29 = 0u;
  v30 = 1065353216;
  v3 = *v31;
  v4 = *(v31 + 8);
  while (v3 != v4)
  {
    v5 = v3[6];
    __p = v3;
    *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v28, v3) + 10) = v5;
    v3 += 8;
  }

  vision::mod::ImageClassifier_HierarchicalModel::infer(&__p, *(a1 + 72), v28, 0);
  if (*(a1 + 100))
  {
    v6 = 0;
  }

  else
  {
    v6 = (a1 + 88);
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = v9;
  v13 = v10;
  if (v8)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = v27;
    if (v27)
    {
      while (1)
      {
        v16 = *(v15 + 10);
        if (v16 >= v7)
        {
          v17 = objc_alloc(MEMORY[0x1E696AEC0]);
          v18 = v15 + 16;
          if (v15[39] < 0)
          {
            v18 = *v18;
          }

          v19 = [v17 initWithUTF8String:{v18, v25}];
          v20 = [(VNImageAnalyzerMultiDetector *)v8 _processSceneIdentifier:v19 withConfidence:v11 disallowedList:v13 operationPoints:v12 originatingRequestSpecifier:v14 observationsArray:v6 optionalTopN:v25 error:v16];

          if ((v20 & 1) == 0)
          {
            break;
          }
        }

        v15 = *v15;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      v21 = 0;
    }

    else
    {
LABEL_14:
      v21 = v14;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    [*(a1 + 64) addObjectsFromArray:v21];
  }

  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v27);
  v22 = __p;
  __p = 0;
  if (v22)
  {
    operator delete(v22);
  }

  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v29[0]);
  v23 = v28[0];
  v28[0] = 0;
  if (v23)
  {
    operator delete(v23);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  return v21 != 0;
}

- (void)_lastAnalysisSceneClassifications
{
  if (a2)
  {
    os_unfair_lock_lock((a2 + 264));
    v4 = *(a2 + 272);
    if (!v4)
    {
      v5 = *(a2 + 112);
      v37 = 0;
      v36 = 0uLL;
      if (*(v5 + 384) != 1)
      {
        LODWORD(v38.__r_.__value_.__l.__data_) = 2;
        __p = &v38;
        v6 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v5 + 784), 2u);
        vision::mod::ImageAnalyzer_Tensor1D<float>::ImageAnalyzer_Tensor1D(&v44, (v6 + 3), 0);
        vision::mod::ImageAnalyzer_Tensor1D<float>::getVectorFromTensor(&v49, &v44);
        vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(&v44);
        __p = 0;
        v42 = 0;
        v43 = 0;
        v7 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>((v5 + 744), 2u);
        if (v7)
        {
          LODWORD(v38.__r_.__value_.__l.__data_) = 2;
          v44 = &v38;
          v8 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v5 + 744), 2u);
          vision::mod::ImageAnalyzer_PostProcessor::process(v8 + 3, &v49, &__p);
        }

        DisallowedLabels = vision::mod::ImageAnalyzer::getDisallowedLabels(v5, 2u);
        v11 = v49;
        v10 = v50;
        LODWORD(v38.__r_.__value_.__l.__data_) = 2;
        v44 = &v38;
        v12 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v5 + 864), 2u);
        if (v10 != v11)
        {
          v13 = v12;
          v14 = 0;
          v15 = 0;
          if (((v10 - v11) >> 2) <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = (v10 - v11) >> 2;
          }

          do
          {
            v17 = v13[3] + v14;
            p_p = &__p;
            if (!v7)
            {
              p_p = &v49;
            }

            v19 = *(*p_p + v15);
            v20 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(DisallowedLabels, (v13[3] + v14)) != 0;
            if (*(v17 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v38, *v17, *(v17 + 8));
            }

            else
            {
              v38 = *v17;
            }

            v39 = v19;
            v40 = v20;
            v21 = *(&v36 + 1);
            if (*(&v36 + 1) >= v37)
            {
              v23 = (*(&v36 + 1) - v36) >> 5;
              if ((v23 + 1) >> 59)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v24 = (v37 - v36) >> 4;
              if (v24 <= v23 + 1)
              {
                v24 = v23 + 1;
              }

              if (v37 - v36 >= 0x7FFFFFFFFFFFFFE0)
              {
                v25 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v24;
              }

              v48 = &v36;
              if (v25)
              {
                if (!(v25 >> 59))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v27 = 32 * v23;
              v44 = 0;
              v45 = v27;
              v46 = v27;
              v47 = 0;
              if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(v27, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
                v28 = v39;
                v20 = v40;
                v29 = v45;
                v30 = v46;
              }

              else
              {
                v28 = v19;
                *v27 = v38;
                v29 = v27;
                v30 = v27;
              }

              *(v27 + 24) = v28;
              *(v27 + 28) = v20;
              v26 = v30 + 32;
              v31 = (v29 - (*(&v36 + 1) - v36));
              memcpy(v31, v36, *(&v36 + 1) - v36);
              v32 = v36;
              v33 = v37;
              *&v36 = v31;
              *(&v36 + 1) = v26;
              v37 = v47;
              v46 = v32;
              v47 = v33;
              v44 = v32;
              v45 = v32;
              std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(&v44);
              v22 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v22 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
              if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(*(&v36 + 1), v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
              }

              else
              {
                **(&v36 + 1) = *&v38.__r_.__value_.__l.__data_;
                *(v21 + 16) = *(&v38.__r_.__value_.__l + 2);
              }

              *(v21 + 24) = v19;
              *(v21 + 28) = v20;
              v26 = v21 + 32;
            }

            *(&v36 + 1) = v26;
            if (v22 < 0)
            {
              operator delete(v38.__r_.__value_.__l.__data_);
            }

            ++v15;
            v14 += 24;
          }

          while (v16 != v15);
        }

        if (__p)
        {
          v42 = __p;
          operator delete(__p);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        operator new();
      }

      exception = __cxa_allocate_exception(8uLL);
      *exception = 8575;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    v34 = *(a2 + 280);
    *self = v4;
    self[1] = v34;
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a2 + 264));
  }

  else
  {
    *self = 0;
    self[1] = 0;
  }
}

uint64_t __67__VNImageAnalyzerMultiDetector__performAnalysis_pixelBuffer_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock((v2 + 264));
  v3 = *(v2 + 280);
  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  os_unfair_lock_unlock((v2 + 264));
  vision::mod::ImageAnalyzer::analyzeUsingCVPixelBuffer(*(*(a1 + 32) + 112), *(a1 + 48), **(a1 + 40));
  return 1;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__27407;
  v49 = __Block_byref_object_dispose__27408;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__27407;
  v43 = __Block_byref_object_dispose__27408;
  v44 = 0;
  synchronizationQueue = [(VNDetector *)self synchronizationQueue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __130__VNImageAnalyzerMultiDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
  v28[3] = &unk_1E77B5310;
  v32 = &v45;
  v28[4] = self;
  classCopy = class;
  v22 = optionsCopy;
  v29 = v22;
  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  v23 = recorderCopy;
  v30 = v23;
  v33 = &v39;
  v24 = handlerCopy;
  v31 = v24;
  [synchronizationQueue dispatchSyncByPreservingQueueCapacity:v28];
  v25 = v46[5];
  if (v25)
  {
    v26 = v25;
  }

  else if (error)
  {
    *error = v40[5];
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  return v25;
}

void __130__VNImageAnalyzerMultiDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(*(a1 + 72) + 8);
  obj = *(v10 + 40);
  v11 = [v3 internalProcessUsingQualityOfServiceClass:v2 options:v4 regionOfInterest:v5 warningRecorder:&obj error:*(a1 + 56) progressHandler:{v6, v7, v8, v9}];
  objc_storeStrong((v10 + 40), obj);
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (!v17)
  {
    LOBYTE(v27) = 0;
    goto LABEL_21;
  }

  v39 = 2;
  v38 = vneg_f32(0x3F0000003FLL);
  [(VNImageAnalyzerMultiDetector *)self _getImageCropAndScaleOption:&v38 networkRequiredInputImageSize:optionsCopy forOptions:?];
  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  v42.size.width = 1.0;
  v42.size.height = 1.0;
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v18 = CGRectEqualToRect(v41, v42);
  v19 = v18;
  bufferCopy = buffer;
  if (v18)
  {
    v20 = &v37;
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v37 = 0;
  }

  v21 = v39;
  v22 = v38;
  v36 = v17;
  v23 = optionsCopy;
  v24 = v23;
  if (self)
  {
    v25 = [v23 objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorProcessingOption_SkipInputImageScaling"];
    bOOLValue = [v25 BOOLValue];

    if (!bOOLValue)
    {
      v29 = [v24 mutableCopy];
      [v29 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
      cachedInferenceImagePixelFormatType = self->_cachedInferenceImagePixelFormatType;
      v40 = 0;
      v34 = v20;
      v28 = v36;
      v27 = [v36 cropAndScaleBufferWithWidth:*&v22.i32[1] height:*v22.i32 cropRect:cachedInferenceImagePixelFormatType format:v21 imageCropAndScaleOption:v29 options:&v40 error:x calculatedNormalizedOriginOffset:y calculatedScaleX:width calculatedScaleY:height pixelBufferRepsCacheKey:{0, 0, 0, v34}];
      v31 = v40;
      if (error && !v27)
      {
        *error = [VNError errorWithCode:9 message:@"Failed to scale the input image" underlyingError:v31];
      }

      goto LABEL_16;
    }

    v27 = [v36 croppedBufferWithWidth:width height:height format:self->_cachedInferenceImagePixelFormatType cropRect:v24 options:error error:v20 pixelBufferRepsCacheKey:{x, y, width, height}];
  }

  else
  {
    v27 = 0;
  }

  v28 = v36;
LABEL_16:

  if (v19)
  {
    v32 = v37;
    *bufferCopy = v27;
    if (v27)
    {
      [(VNDetector *)self recordImageCropQuickLookInfoToOptions:v24 cacheKey:v32 imageBuffer:v28];
      LOBYTE(v27) = 1;
    }
  }

  else
  {
    v32 = 0;
    *bufferCopy = v27;
    LOBYTE(v27) = v27 != 0;
  }

LABEL_21:
  return v27;
}

- (void)_getImageCropAndScaleOption:(int32x2_t *)option networkRequiredInputImageSize:(void *)size forOptions:
{
  sizeCopy = size;
  if (self)
  {
    v8 = *(self + 112);
    v9 = v8[24].u8[1];
    *option = vrev64_s32(vcvt_f32_f64(vcvtq_f64_u64(v8[42])));
    v15 = sizeCopy;
    v10 = [sizeCopy objectForKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];
    v11 = v10;
    if (v10)
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 2;
    }

    if (unsignedIntegerValue == 2)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = unsignedIntegerValue;
    }

    else
    {
      v14 = 0;
    }

    *a2 = v14;

    sizeCopy = v15;
  }
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v302 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  val = self;
  v204 = optionsCopy;
  errorCopy = error;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v177 = v17;
  if (!v17)
  {
    v25 = 0;
    goto LABEL_90;
  }

  v297 = 2;
  v296 = vneg_f32(0x3F0000003FLL);
  [(VNImageAnalyzerMultiDetector *)self _getImageCropAndScaleOption:&v296 networkRequiredInputImageSize:optionsCopy forOptions:?];
  v202 = x;
  width = [v17 width];
  height = [v17 height];
  v195 = width;
  v20 = height;
  v191 = height;
  v21 = height * v191;
  v22 = v296.f32[1];
  v23 = v296.f32[0];
  if (v296.f32[1] >= v296.f32[0])
  {
    v24 = v296.i32[0];
  }

  else
  {
    v24 = v296.i32[1];
  }

  v197 = v21;
  v199 = width * v195;
  if (width * v195 < v21)
  {
    v21 = width * v195;
  }

  if (v21 < 1.0)
  {
    v25 = MEMORY[0x1E695E0F0];
    goto LABEL_90;
  }

  v187 = width;
  v26 = v21;
  if (*&v24 > v26)
  {
    if (v187 >= v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = v187;
    }

    v28 = *&v24;
    if (v27 > 0.0)
    {
      v28 = *&v24 / v27;
    }

    VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, v28);
  }

  v29 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneConfigurations"];
  v173 = v29;
  if (*&v24 > v26 || v29 == 0)
  {
    v36 = 0;
    tiles = 0;
    v32 = v20;
    v35 = v202;
  }

  else
  {
    v31 = (v22 / v23);
    v32 = v20;
    v33 = [VNRegionOfInterestTiling tilingForRegionOfInterest:width inPixelWidth:height height:self->_inputImageTilingOptions tileAspectRatio:v202 options:y, v187, v20, v31];
    tileCount = [v33 tileCount];
    v35 = v202;
    v36 = tileCount > 1;
    if (tileCount < 2)
    {
      tiles = 0;
    }

    else
    {
      tiles = [v33 tiles];
      tileColumnsCount = [v33 tileColumnsCount];
      tileRowsCount = [v33 tileRowsCount];
      v295 = 0u;
      v294 = 0u;
      v293 = 0u;
      v292 = 0u;
      v39 = [v204 objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorProcessingOption_TilingWarningRecorders"];
      v40 = [v39 countByEnumeratingWithState:&v292 objects:v301 count:16];
      if (v40)
      {
        v41 = *v293;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v293 != v41)
            {
              objc_enumerationMutation(v39);
            }

            VNRecordImageTilingWarning(*(*(&v292 + 1) + 8 * i), tileColumnsCount, tileRowsCount);
          }

          v40 = [v39 countByEnumeratingWithState:&v292 objects:v301 count:16];
        }

        while (v40);
      }
    }
  }

  v43 = [MEMORY[0x1E696AD98] numberWithBool:v36];
  [v204 setObject:v43 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorProcessingOption_TilingIsRequired"];

  v172 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v286 = 0;
  v287 = &v286;
  v288 = 0x3032000000;
  v289 = __Block_byref_object_copy__27407;
  v290 = __Block_byref_object_dispose__27408;
  v291 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v284[0] = 0;
  v284[1] = v284;
  v284[2] = 0x3812000000;
  v284[3] = __Block_byref_object_copy__405;
  v284[4] = __Block_byref_object_dispose__406;
  v284[5] = "";
  v285 = 0;
  objc_initWeak(&location, val);
  v44 = objc_opt_class();
  vNClassCode = [v44 VNClassCode];
  detectorCropCreationAsyncTasksQueue = [v44 detectorCropCreationAsyncTasksQueue];
  v201 = dispatch_group_create();
  detectorCropProcessingAsyncTasksQueue = [v44 detectorCropProcessingAsyncTasksQueue];
  v169 = dispatch_group_create();
  v281[0] = 0;
  v281[1] = v281;
  v281[2] = 0x3032000000;
  v281[3] = __Block_byref_object_copy__27407;
  v281[4] = __Block_byref_object_dispose__27408;
  v282 = 0;
  v279[0] = 0;
  v279[1] = v279;
  v279[2] = 0x3032000000;
  v279[3] = __Block_byref_object_copy__27407;
  v279[4] = __Block_byref_object_dispose__27408;
  v280 = 0;
  v278[0] = 0;
  v278[1] = v278;
  v278[2] = 0x2020000000;
  v278[3] = 0;
  v46 = [v204 mutableCopy];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke;
  block[3] = &unk_1E77B51D0;
  objc_copyWeak(v274, &location);
  v272 = v281;
  v275 = vNClassCode;
  v47 = v169;
  v267 = v47;
  classCopy = class;
  *&v274[1] = v35 * v195;
  *&v274[2] = y * v191;
  v274[3] = *&v199;
  v274[4] = *&v197;
  v48 = v46;
  v268 = v48;
  v49 = recorderCopy;
  v269 = v49;
  v273 = v278;
  v50 = handlerCopy;
  v271 = v50;
  v277 = v36;
  v200 = detectorCropCreationAsyncTasksQueue;
  v270 = v200;
  v51 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, class, 0, block);
  v249[0] = MEMORY[0x1E69E9820];
  v249[1] = 3221225472;
  v249[2] = __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_3;
  v249[3] = &unk_1E77B5248;
  objc_copyWeak(v262, &location);
  v257 = v281;
  classCopy2 = class;
  v174 = v51;
  v255 = v174;
  v189 = vNClassCode;
  v264 = vNClassCode;
  v203 = v47;
  v250 = v203;
  v258 = v279;
  v259 = v278;
  v168 = v48;
  v251 = v168;
  v262[1] = *&v35;
  v262[2] = *&y;
  v262[3] = *&v187;
  v262[4] = *&v32;
  obj = v49;
  v252 = obj;
  v182 = v50;
  v256 = v182;
  v260 = v284;
  v261 = &v286;
  v196 = v172;
  v253 = v196;
  v265 = v36;
  v198 = detectorCropProcessingAsyncTasksQueue;
  v254 = v198;
  v175 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, class, 0, v249);
  if (!v36)
  {
    VNValidatedLog(1, @"Performing createScaledFullImageForProcessingBlock; %@", v52, v53, v54, v55, v56, v57, val);
    v174[2]();
    VNValidatedLog(1, @"Performing processScaledFullImagePixelBufferBlock; %@", v150, v151, v152, v153, v154, v155, val);
    v175[2]();
    VNValidatedLog(1, @"Finish processing createScaledFullImageForProcessingBlock and processScaledFullImagePixelBufferBlock. currentDetector: %@", v156, v157, v158, v159, v160, v161, val);
    if ([VNValidationUtilities validateAsyncStatusResults:v196 error:errorCopy])
    {
      v25 = v287[5];
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_89;
  }

  VNValidatedLog(1, @"Scheduling createScaledFullImageForProcessingBlock; %@", v52, v53, v54, v55, v56, v57, val);
  [v200 dispatchGroupAsyncByPreservingQueueCapacity:v201 block:v174];
  VNValidatedLog(1, @"Scheduling processScaledFullImagePixelBufferBlock; %@", v58, v59, v60, v61, v62, v63, val);
  [v198 dispatchGroupAsyncByPreservingQueueCapacity:v203 block:v175];
  v64 = [_VNImageAnalyzerMultiDetectorTilingSceneConfiguration alloc];
  firstObject = [v173 firstObject];
  observationsRecipient = [firstObject observationsRecipient];
  v181 = [(_VNImageAnalyzerMultiDetectorTilingSceneConfiguration *)v64 initWithObservationsRecipient:observationsRecipient];

  v186 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v188 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v192 = [tiles count];
  kdebug_trace();
  VNValidatedLog(1, @"Start processing chunksProcessingGroup. currentDetector: %@", v67, v68, v69, v70, v71, v72, val);
  if (v192)
  {
    for (j = 0; j != v192; ++j)
    {
      v80 = [tiles objectAtIndexedSubscript:j];
      [v80 pixelCropRect];
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v88 = v87;

      v247[0] = 0;
      v247[1] = v247;
      v247[2] = 0x3032000000;
      v247[3] = __Block_byref_object_copy__27407;
      v247[4] = __Block_byref_object_dispose__27408;
      v248 = 0;
      v246[0] = 0;
      v246[1] = v246;
      v246[2] = 0x2020000000;
      v246[3] = 0;
      v89 = [v204 mutableCopy];
      v235[0] = MEMORY[0x1E69E9820];
      v235[1] = 3221225472;
      v235[2] = __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_6;
      v235[3] = &unk_1E77B5270;
      objc_copyWeak(v243, &location);
      v244 = vNClassCode;
      v241 = v247;
      v243[1] = j;
      v90 = v201;
      v236 = v90;
      classCopy3 = class;
      v243[2] = v82;
      v243[3] = v84;
      v243[4] = v86;
      v243[5] = v88;
      v91 = v89;
      v237 = v91;
      v238 = obj;
      v242 = v246;
      v240 = v182;
      v92 = v200;
      v239 = v92;
      v93 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, class, 0, v235);
      v220[0] = MEMORY[0x1E69E9820];
      v220[1] = 3221225472;
      v220[2] = __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_8;
      v220[3] = &unk_1E77B52E8;
      objc_copyWeak(v232, &location);
      v229 = v247;
      classCopy4 = class;
      v94 = v93;
      v234 = vNClassCode;
      v228 = v94;
      v232[1] = j;
      v95 = v203;
      v221 = v95;
      v222 = val;
      v230 = v246;
      v223 = v181;
      v231 = v284;
      v224 = v186;
      v225 = v188;
      v226 = v196;
      v96 = v198;
      v227 = v96;
      v97 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, class, 0, v220);
      VNValidatedLog(1, @"Scheduling createTileCropForProcessingBlock. currentDetector: %@", v98, v99, v100, v101, v102, v103, val);
      [v92 dispatchGroupAsyncByPreservingQueueCapacity:v90 block:v94];
      VNValidatedLog(1, @"Scheduling processTileBlock. currentDetector: %@", v104, v105, v106, v107, v108, v109, val);
      [v96 dispatchGroupAsyncByPreservingQueueCapacity:v95 block:v97];

      vNClassCode = v189;
      objc_destroyWeak(v232);

      objc_destroyWeak(v243);
      _Block_object_dispose(v246, 8);
      _Block_object_dispose(v247, 8);
    }
  }

  VNValidatedLog(1, @"Waiting for cropCreationGroup. currentDetector: %@; group: %@", v73, v74, v75, v76, v77, v78, val);
  if (([v200 dispatchGroupWait:v201 error:errorCopy] & 1) == 0)
  {
    v162 = @"Timed out waiting for image analyzer cropCreationGroup when processing full image and %lu tiles. currentDetector: %@; group: %@";
LABEL_86:
    VNValidatedLog(4, v162, v110, v111, v112, v113, v114, v115, v192);
    goto LABEL_87;
  }

  VNValidatedLog(1, @"Waiting for cropProcessingGroup. currentDetector: %@; group: %@", v110, v111, v112, v113, v114, v115, val);
  if (([v198 dispatchGroupWait:v203 error:errorCopy] & 1) == 0)
  {
    v162 = @"Timed out waiting for image analyzer cropProcessingGroup when processing full image and %lu tiles. currentDetector: %@; group: %@";
    goto LABEL_86;
  }

  VNValidatedLog(1, @"Finish processing cropCreationGroup and cropCreationGroup. currentDetector: %@; cropCreationGroup: %@; cropProcessingGroup: %@", v110, v111, v112, v113, v114, v115, val);
  kdebug_trace();
  if ([VNValidationUtilities validateAsyncStatusResults:v196 error:errorCopy])
  {
    allValues = [v186 allValues];
    allValues2 = [v188 allValues];
    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    obja = v173;
    v116 = [obja countByEnumeratingWithState:&v216 objects:v300 count:16];
    if (v116)
    {
      v166 = *v217;
LABEL_43:
      v183 = 0;
      v165 = v116;
      while (1)
      {
        if (*v217 != v166)
        {
          objc_enumerationMutation(obja);
        }

        v117 = *(*(&v216 + 1) + 8 * v183);
        observationsRecipient2 = [v117 observationsRecipient];
        originatingRequestSpecifier = [observationsRecipient2 originatingRequestSpecifier];
        v206 = originatingRequestSpecifier;
        v119 = [(VNImageAnalyzerMultiDetector *)val sceneLabelOperationPointsForOriginatingRequestSpecifier:originatingRequestSpecifier error:errorCopy];
        if (!v119)
        {
          goto LABEL_94;
        }

        disallowedList = [v117 disallowedList];
        [v117 minimumConfidence];
        v122 = v121;
        v193 = objc_alloc_init(MEMORY[0x1E695DF70]);
        maximumLeafLabels = [v117 maximumLeafLabels];
        v124 = maximumLeafLabels & 0x7FFFFFFFFFFFFFFFLL;
        if ((maximumLeafLabels & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v125 = -1;
        }

        else
        {
          v125 = maximumLeafLabels;
        }

        v247[0] = v125;
        if (v125)
        {
          v126 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v127 = allValues;
          v128 = [v127 countByEnumeratingWithState:&v212 objects:v299 count:16];
          v164 = v117;
          if (v128)
          {
            v129 = *v213;
            if (v124 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v130 = 0;
            }

            else
            {
              v130 = v247;
            }

LABEL_55:
            v131 = 0;
            while (1)
            {
              if (*v213 != v129)
              {
                objc_enumerationMutation(v127);
              }

              v132 = *(*(&v212 + 1) + 8 * v131);
              [v132 confidence];
              v134 = v133;
              if (v133 >= v122)
              {
                identifier = [v132 identifier];
                v136 = [(VNImageAnalyzerMultiDetector *)val _processSceneIdentifier:identifier withConfidence:disallowedList disallowedList:v119 operationPoints:v206 originatingRequestSpecifier:v126 observationsArray:v130 optionalTopN:errorCopy error:v134];

                if ((v136 & 1) == 0)
                {
                  goto LABEL_93;
                }
              }

              if (v128 == ++v131)
              {
                v128 = [v127 countByEnumeratingWithState:&v212 objects:v299 count:16];
                if (v128)
                {
                  goto LABEL_55;
                }

                break;
              }
            }
          }

          [v193 addObjectsFromArray:v126];
          v117 = v164;
        }

        maximumHierarchicalLabels = [v117 maximumHierarchicalLabels];
        v138 = maximumHierarchicalLabels;
        v139 = 0x7FFFFFFFLL;
        if (maximumHierarchicalLabels <= 0x7FFFFFFE)
        {
          v139 = maximumHierarchicalLabels;
        }

        v246[0] = v139;
        if (v139)
        {
          v126 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v210 = 0u;
          v211 = 0u;
          v208 = 0u;
          v209 = 0u;
          v127 = allValues2;
          v140 = [v127 countByEnumeratingWithState:&v208 objects:v298 count:16];
          if (v140)
          {
            v141 = *v209;
            if (v138 <= 0x7FFFFFFE)
            {
              v142 = v246;
            }

            else
            {
              v142 = 0;
            }

LABEL_70:
            v143 = 0;
            while (1)
            {
              if (*v209 != v141)
              {
                objc_enumerationMutation(v127);
              }

              v144 = *(*(&v208 + 1) + 8 * v143);
              [v144 confidence];
              v146 = v145;
              if (v145 >= v122)
              {
                identifier2 = [v144 identifier];
                v148 = [(VNImageAnalyzerMultiDetector *)val _processSceneIdentifier:identifier2 withConfidence:disallowedList disallowedList:v119 operationPoints:v206 originatingRequestSpecifier:v126 observationsArray:v142 optionalTopN:errorCopy error:v146];

                if ((v148 & 1) == 0)
                {
                  break;
                }
              }

              if (v140 == ++v143)
              {
                v140 = [v127 countByEnumeratingWithState:&v208 objects:v298 count:16];
                if (v140)
                {
                  goto LABEL_70;
                }

                goto LABEL_77;
              }
            }

LABEL_93:

            originatingRequestSpecifier = v206;
LABEL_94:

            v25 = 0;
            goto LABEL_95;
          }

LABEL_77:

          [v193 addObjectsFromArray:v126];
        }

        v149 = &__block_literal_global_128;
        [v193 sortWithOptions:16 usingComparator:&__block_literal_global_128];

        [observationsRecipient2 receiveObservations:v193];
        [v287[5] addObjectsFromArray:v193];

        if (++v183 == v165)
        {
          v116 = [obja countByEnumeratingWithState:&v216 objects:v300 count:16];
          if (v116)
          {
            goto LABEL_43;
          }

          break;
        }
      }
    }

    v25 = v287[5];
LABEL_95:

    goto LABEL_88;
  }

LABEL_87:
  v25 = 0;
LABEL_88:

LABEL_89:
  objc_destroyWeak(v262);

  objc_destroyWeak(v274);
  _Block_object_dispose(v278, 8);
  _Block_object_dispose(v279, 8);

  _Block_object_dispose(v281, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose(v284, 8);
  _Block_object_dispose(&v286, 8);

LABEL_90:

  return v25;
}

void __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    kdebug_trace();
    VNValidatedLog(1, @"createScaledFullImageForProcessingBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_2;
    aBlock[3] = &unk_1E77B65B0;
    v42 = *(a1 + 132);
    v9 = WeakRetained;
    v35 = v9;
    v10 = *(a1 + 112);
    v40 = *(a1 + 96);
    v41 = v10;
    v36 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 80);
    v37 = v11;
    v39 = v12;
    v38 = *(a1 + 64);
    v13 = _Block_copy(aBlock);
    v14 = *(a1 + 96);
    v15 = *(a1 + 104);
    v16 = *(a1 + 112);
    v17 = *(a1 + 120);
    v33 = 0;
    v18 = v13[2](v13, &v33, v14, v15, v16, v17);
    v19 = v33;
    v20 = [[VNAsyncStatus alloc] initWithStatus:v18 error:v19];
    v21 = *(*(a1 + 72) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    VNValidatedLog(1, @"createScaledFullImageForProcessingBlock: finish processing; currentDetector: %@", v23, v24, v25, v26, v27, v28, v9);
    kdebug_trace();
    if (*(a1 + 136) == 1)
    {
      [*(a1 + 56) dispatchReportBlockCompletion];
    }
  }

  else
  {
    v29 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v30 = [[VNAsyncStatus alloc] initWithStatus:0 error:v29];
    v31 = *(*(a1 + 72) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;
  }
}

void __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 128));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    VNValidatedLog(1, @"processScaledFullImagePixelBufferBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_4;
    aBlock[3] = &unk_1E77B5220;
    v33 = *(a1 + 72);
    v10 = v9;
    v29 = v10;
    v39 = *(a1 + 172);
    v30 = *(a1 + 32);
    v40 = *(a1 + 168);
    v35 = *(a1 + 88);
    v36 = *(a1 + 104);
    v31 = *(a1 + 40);
    v37 = *(a1 + 136);
    v38 = *(a1 + 152);
    v32 = *(a1 + 48);
    v34 = *(a1 + 80);
    v11 = _Block_copy(aBlock);
    v27 = 0;
    v12 = VNExecuteBlock(v11, &v27);
    v13 = v27;
    v14 = [[VNAsyncStatus alloc] initWithStatus:v12 error:v13];
    v15 = *(*(a1 + 88) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    os_unfair_lock_lock((*(*(a1 + 112) + 8) + 48));
    [*(*(*(a1 + 120) + 8) + 40) addObjectsFromArray:*(*(*(a1 + 96) + 8) + 40)];
    [*(a1 + 56) addObject:*(*(*(a1 + 88) + 8) + 40)];
    os_unfair_lock_unlock((*(*(a1 + 112) + 8) + 48));
    VNValidatedLog(1, @"processScaledFullImagePixelBufferBlock: finish processing; currentDetector: %@", v17, v18, v19, v20, v21, v22, v10);
    kdebug_trace();
    if (*(a1 + 176) == 1)
    {
      [*(a1 + 64) dispatchReportBlockCompletion];
    }
  }

  else
  {
    v23 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v24 = [[VNAsyncStatus alloc] initWithStatus:0 error:v23];
    v25 = *(*(a1 + 88) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  CVPixelBufferRelease(*(*(*(a1 + 104) + 8) + 24));
  *(*(*(a1 + 104) + 8) + 24) = 0;
}

void __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    kdebug_trace();
    VNValidatedLog(1, @"createRegionOfInterestCropForProcessingBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_7;
    aBlock[3] = &unk_1E77B65B0;
    v41 = *(a1 + 140);
    v9 = WeakRetained;
    v34 = v9;
    v39 = *(a1 + 104);
    v40 = *(a1 + 120);
    v35 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 80);
    v36 = v10;
    v38 = v11;
    v37 = *(a1 + 64);
    v12 = _Block_copy(aBlock);
    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    v15 = *(a1 + 120);
    v16 = *(a1 + 128);
    v32 = 0;
    v17 = v12[2](v12, &v32, v13, v14, v15, v16);
    v18 = v32;
    v19 = [[VNAsyncStatus alloc] initWithStatus:v17 error:v18];
    v20 = *(*(a1 + 72) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    VNValidatedLog(1, @"createRegionOfInterestCropForProcessingBlock: finish processing; currentDetector: %@", v22, v23, v24, v25, v26, v27, v9);
    kdebug_trace();
    [*(a1 + 56) dispatchReportBlockCompletion];
  }

  else
  {
    v28 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v29 = [[VNAsyncStatus alloc] initWithStatus:0 error:v28];
    v30 = *(*(a1 + 72) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;
  }
}

void __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    VNValidatedLog(1, @"processRegionOfInterestBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_9;
    aBlock[3] = &unk_1E77B52C0;
    v40 = *(a1 + 88);
    v10 = v9;
    v44 = *(a1 + 140);
    v11 = *(a1 + 128);
    v36 = v10;
    v43 = v11;
    v12 = *(a1 + 32);
    v45 = *(a1 + 136);
    v41 = *(a1 + 96);
    *&v13 = v12;
    *(&v13 + 1) = *(a1 + 40);
    v33 = v13;
    v14 = *(a1 + 48);
    v42 = *(a1 + 112);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    v37 = v33;
    v38 = v16;
    v39 = *(a1 + 64);
    v17 = _Block_copy(aBlock);
    v34 = 0;
    v18 = VNExecuteBlock(v17, &v34);
    v19 = v34;
    v20 = [[VNAsyncStatus alloc] initWithStatus:v18 error:v19];
    v21 = *(*(a1 + 96) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    os_unfair_lock_lock((*(*(a1 + 112) + 8) + 48));
    [*(a1 + 72) addObject:*(*(*(a1 + 96) + 8) + 40)];
    os_unfair_lock_unlock((*(*(a1 + 112) + 8) + 48));
    VNValidatedLog(1, @"processRegionOfInterestBlock: finish processing; currentDetector: %@", v23, v24, v25, v26, v27, v28, v10);
    kdebug_trace();
    [*(a1 + 80) dispatchReportBlockCompletion];
  }

  else
  {
    v29 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v30 = [[VNAsyncStatus alloc] initWithStatus:0 error:v29];
    v31 = *(*(a1 + 96) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;
  }

  CVPixelBufferRelease(*(*(*(a1 + 104) + 8) + 24));
  *(*(*(a1 + 104) + 8) + 24) = 0;
}

uint64_t __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_9(uint64_t a1, void *a2)
{
  if (dispatch_block_wait(*(a1 + 80), 0xFFFFFFFFFFFFFFFFLL))
  {
    if (a2)
    {
      v4 = [VNError errorForExecutionTimeoutWithLocalizedDescription:@"Timed out waiting for dependent task execution"];
LABEL_8:
      v17 = 0;
      *a2 = v4;
      return v17 & 1;
    }

    goto LABEL_9;
  }

  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterestBlock: start processing (crop is ready); currentDetector: %@", v5, v6, v7, v8, v9, v10, *(a1 + 32));
  if (([*(*(*(a1 + 88) + 8) + 40) completed] & 1) == 0)
  {
    if (a2)
    {
      v4 = [*(*(*(a1 + 88) + 8) + 40) error];
      goto LABEL_8;
    }

LABEL_9:
    v17 = 0;
    return v17 & 1;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_10;
  aBlock[3] = &unk_1E77B5298;
  v11 = *(a1 + 32);
  v28 = *(a1 + 120);
  v12 = *(a1 + 40);
  v29 = *(a1 + 124);
  v13 = *(a1 + 96);
  v25 = &v30;
  v26 = v13;
  v19 = *(a1 + 48);
  v14 = *(&v19 + 1);
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v21 = v15;
  v22 = v19;
  v27 = *(a1 + 104);
  v23 = *(a1 + 64);
  v24 = *(a1 + 72);
  v16 = _Block_copy(aBlock);
  CVPixelBufferLockBaseAddress(*(*(*(a1 + 96) + 8) + 24), 1uLL);
  [objc_opt_class() runSuccessReportingBlockSynchronously:v16 detector:*(a1 + 32) qosClass:*(a1 + 124) error:a2];
  CVPixelBufferUnlockBaseAddress(*(*(*(a1 + 96) + 8) + 24), 1uLL);
  v17 = *(v31 + 24);

  _Block_object_dispose(&v30, 8);
  return v17 & 1;
}

uint64_t __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_10(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterest Netto: start processing; currentDetector: %@", v4, v5, v6, v7, v8, v9, *(a1 + 32));
  v10 = *(*(a1 + 88) + 8);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = v12;
  if (v11)
  {
    v32[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v15 = [VNImageAnalyzerMultiDetector _analysisTypeForScenes:v14 entityNet:0 junk:0 VNVYvzEtX1JlUdu8xx5qhDI:0 landmark:0 sceneprints:0 compressedSceneprint:0 fingerprints:0 aesthetics:0 saliencyA:0 saliencyO:0 recognizeObjects:0 VN5kJNH3eYuyaLxNpZr5Z7zi:0 VNdGg5skzXHSAENO6T3enHE:0 cityNatureGating:0 photosAdjustments:0];

    if (([(VNImageAnalyzerMultiDetector *)v11 _performAnalysis:v15 pixelBuffer:v10 + 24 error:a2]& 1) != 0)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      LOBYTE(v11) = [(VNImageAnalyzerMultiDetector *)v11 _populateLeafSceneObservations:v16 hierarchySceneObservations:v17 fromLastAnalysisForSceneConfiguration:v13 error:a2];
      if (v11)
      {
        v18 = v16;
        v19 = v17;
        v20 = v16;
        v21 = v17;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v22 = v20;
  v23 = v21;
  *(*(*(a1 + 80) + 8) + 24) = v11;
  VNValidatedLog(1, @"processRegionOfInterest Netto: finish processing; currentDetector: %@", v24, v25, v26, v27, v28, v29, *(a1 + 32));
  kdebug_trace();
  v30 = *(*(*(a1 + 80) + 8) + 24);
  if (v30)
  {
    os_unfair_lock_lock((*(*(a1 + 96) + 8) + 48));
    _recordBestClassificationObservations(*(a1 + 64), v22);
    _recordBestClassificationObservations(*(a1 + 72), v23);
    os_unfair_lock_unlock((*(*(a1 + 96) + 8) + 48));
  }

  return v30;
}

BOOL __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_4(uint64_t a1, void *a2)
{
  if (dispatch_block_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL))
  {
    if (a2)
    {
      v4 = [VNError errorForExecutionTimeoutWithLocalizedDescription:@"Timed out waiting for dependent task execution"];
LABEL_8:
      v18 = 0;
      *a2 = v4;
      return v18;
    }

    return 0;
  }

  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterestBlock: start processing (crop is ready); currentDetector: %@", v5, v6, v7, v8, v9, v10, *(a1 + 32));
  if (([*(*(*(a1 + 80) + 8) + 40) completed] & 1) == 0)
  {
    if (a2)
    {
      v4 = [*(*(*(a1 + 80) + 8) + 40) error];
      goto LABEL_8;
    }

    return 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_5;
  aBlock[3] = &unk_1E77B51F8;
  v11 = *(a1 + 32);
  v27 = *(a1 + 136);
  v12 = *(a1 + 40);
  v28 = *(a1 + 140);
  v24 = *(a1 + 88);
  v13 = *(a1 + 48);
  v25 = *(a1 + 104);
  v26 = *(a1 + 120);
  v14 = *(a1 + 56);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v21 = v16;
  v22 = v15;
  v23 = *(a1 + 72);
  v17 = _Block_copy(aBlock);
  CVPixelBufferLockBaseAddress(*(*(*(a1 + 96) + 8) + 24), 1uLL);
  [objc_opt_class() runSuccessReportingBlockSynchronously:v17 detector:*(a1 + 32) qosClass:*(a1 + 140) error:a2];
  CVPixelBufferUnlockBaseAddress(*(*(*(a1 + 96) + 8) + 24), 1uLL);
  v18 = *(*(*(a1 + 88) + 8) + 40) != 0;

  return v18;
}

BOOL __137__VNImageAnalyzerMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterest Netto: start processing; currentDetector: %@", v4, v5, v6, v7, v8, v9, *(a1 + 32));
  v10 = [*(a1 + 32) _processFullImagePixelBuffer:*(*(*(a1 + 80) + 8) + 24) options:*(a1 + 48) regionOfInterest:*(a1 + 124) qosClass:*(a1 + 56) warningRecorder:a2 error:*(a1 + 64) progressHandler:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  VNValidatedLog(1, @"processRegionOfInterest Netto: finish processing; currentDetector: %@", v13, v14, v15, v16, v17, v18, *(a1 + 32));
  kdebug_trace();
  return *(*(*(a1 + 72) + 8) + 40) != 0;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v88.receiver = self;
  v88.super_class = VNImageAnalyzerMultiDetector;
  if ([(VNDetector *)&v88 completeInitializationForSession:sessionCopy error:error])
  {
    v7 = objc_alloc_init(VNRegionOfInterestTilingOptions);
    inputImageTilingOptions = self->_inputImageTilingOptions;
    self->_inputImageTilingOptions = v7;

    [(VNRegionOfInterestTilingOptions *)self->_inputImageTilingOptions setTileOverflowCount:16];
    [(VNRegionOfInterestTilingOptions *)self->_inputImageTilingOptions setTileOverlapPercentage:0.5];
    [(VNRegionOfInterestTilingOptions *)self->_inputImageTilingOptions setRegionOfInterestAspectRatioThreshold:2.0];
    v66 = +[VNComputeDeviceUtilities mostPerformantCPUComputeDevice];
    self->_customClassifierEspressoEngine = [VNEspressoHelpers espressoEngineForComputeDevice:v66];
    self->_customClassifierEspressoDeviceID = [VNEspressoHelpers espressoDeviceIDForComputeDevice:v66];
    [(VNDetector *)self configurationOptions];
    v67 = __str.__r_.__value_.__r.__words[0] = 0;
    if (![VNValidationUtilities getNSUIntegerValue:"getNSUIntegerValue:forKey:inOptions:error:" forKey:&__str inOptions:@"VNImageAnalyzerMultiDetectorInitializationOption_Model" error:?])
    {
      goto LABEL_63;
    }

    self->_model = __str.__r_.__value_.__r.__words[0];
    v65 = objc_opt_class();
    v9 = [v65 _newInferenceDescriptorForModel:self->_model configuredWithOptions:v67 error:error];
    inferenceDescriptor = self->_inferenceDescriptor;
    self->_inferenceDescriptor = v9;

    v11 = self->_inferenceDescriptor;
    if (!v11)
    {
      goto LABEL_63;
    }

    onlyInputImage = [(VisionCoreSceneNetInferenceNetworkDescriptor *)v11 onlyInputImage];
    self->_cachedInferenceImagePixelFormatType = [onlyInputImage pixelFormatType];

    v13 = [[_VNImageAnalyzerMultiDetectorSceneOperationPointsCache alloc] initWithInferenceNetworkDescriptor:self->_inferenceDescriptor];
    operationPointsCache = self->_operationPointsCache;
    self->_operationPointsCache = v13;

    v15 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:error];
    if (!v15)
    {
LABEL_62:

LABEL_63:
      goto LABEL_64;
    }

    v64 = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor modelPathForComputeDevice:v15 error:error];
    if (!v64)
    {
      v20 = 0;
LABEL_61:

      goto LABEL_62;
    }

    vision::mod::ImageAnalyzer_Options::ImageAnalyzer_Options(&__str);
    analyzerName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor analyzerName];
    std::string::__assign_external(&__str, [analyzerName UTF8String]);

    v74 = [VNEspressoHelpers espressoDeviceIDForComputeDevice:v15];
    v73 = [VNEspressoHelpers espressoStorageTypeForComputeDevice:v15];
    v71 = [VNEspressoHelpers espressoEngineForComputeDevice:v15];
    v72 = 0;
    inputImageBlobName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor inputImageBlobName];
    std::string::__assign_external(&v76, [inputImageBlobName UTF8String]);

    cachedInferenceImagePixelFormatType = self->_cachedInferenceImagePixelFormatType;
    if (cachedInferenceImagePixelFormatType <= 1094862673)
    {
      if (cachedInferenceImagePixelFormatType == 8)
      {
        v19 = 1;
        goto LABEL_22;
      }

      if (cachedInferenceImagePixelFormatType == 32)
      {
        v19 = 8;
        goto LABEL_22;
      }
    }

    else
    {
      switch(cachedInferenceImagePixelFormatType)
      {
        case 1380401729:
          v19 = 2;
          goto LABEL_22;
        case 1111970369:
          v19 = 4;
          goto LABEL_22;
        case 1094862674:
          v19 = 16;
          goto LABEL_22;
      }
    }

    v19 = 0;
LABEL_22:
    v75 = v19;
    v85 = 256;
    v21 = [v67 objectForKeyedSubscript:@"VNDetectorInitOption_MemoryPoolId"];
    unsignedLongLongValue = [v21 unsignedLongLongValue];

    shouldInitializeAdditionalModelHeads = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor shouldInitializeAdditionalModelHeads];
    sceneRepresentationBlobName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor sceneRepresentationBlobName];
    v24 = sceneRepresentationBlobName;
    if (sceneRepresentationBlobName)
    {
      std::string::__assign_external(&v77, [sceneRepresentationBlobName UTF8String]);
    }

    sceneLabelsFileURL = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor sceneLabelsFileURL];
    v26 = [sceneLabelsFileURL VisionCoreFileSystemPathAndReturnError:0];

    v63 = v26;
    if (v26)
    {
      sceneClassificationLabelsBlobName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor sceneClassificationLabelsBlobName];
      std::string::__assign_external(&v79, [sceneClassificationLabelsBlobName UTF8String]);
    }

    aestheticsLabelsFileURL = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor aestheticsLabelsFileURL];
    v29 = [aestheticsLabelsFileURL VisionCoreFileSystemPathAndReturnError:0];

    v61 = v29;
    if (v29)
    {
      aestheticsScoresBlobName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor aestheticsScoresBlobName];
      std::string::__assign_external(&v81, [aestheticsScoresBlobName UTF8String]);

      aestheticsAttributesBlobName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor aestheticsAttributesBlobName];
      std::string::__assign_external(&v80, [aestheticsAttributesBlobName UTF8String]);
    }

    v58 = shouldInitializeAdditionalModelHeads;
    saliencyAHeatMapBlobName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor saliencyAHeatMapBlobName];
    v62 = saliencyAHeatMapBlobName;
    if (saliencyAHeatMapBlobName)
    {
      std::string::__assign_external(v82, [saliencyAHeatMapBlobName UTF8String]);
      v33 = [objc_opt_class() _newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:v67];
      v34 = [sessionCopy detectorOfType:@"VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType" configuredWithOptions:v33 error:error];

      v35 = v62;
      if (!v34)
      {
        v20 = v64;
        v43 = v63;
        v44 = v61;
LABEL_60:

        vision::mod::ImageAnalyzer_Options::~ImageAnalyzer_Options(&__str);
        goto LABEL_61;
      }
    }

    saliencyOHeatMapBlobName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor saliencyOHeatMapBlobName];
    v60 = saliencyOHeatMapBlobName;
    if (saliencyOHeatMapBlobName)
    {
      std::string::__assign_external(v83, [saliencyOHeatMapBlobName UTF8String]);
      v37 = [objc_opt_class() _newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:v67];
      v38 = [sessionCopy detectorOfType:@"VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType" configuredWithOptions:v37 error:error];

      v39 = v60;
      if (!v38)
      {
        v20 = v64;
        v43 = v63;
        v44 = v61;
LABEL_59:

        v35 = v62;
        goto LABEL_60;
      }
    }

    entityNetLabelsFileURL = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor entityNetLabelsFileURL];
    v57 = entityNetLabelsFileURL;
    if (entityNetLabelsFileURL)
    {
      v41 = [entityNetLabelsFileURL VisionCoreFileSystemPathAndReturnError:error];
      if (!v41)
      {
        goto LABEL_58;
      }

      v56 = v41;
      entityNetLabelsBlobName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor entityNetLabelsBlobName];
      std::string::__assign_external(&v84, [entityNetLabelsBlobName UTF8String]);
    }

    else
    {
      v56 = 0;
    }

    if (v58)
    {
      objectDetectorLabelsFileURL = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor objectDetectorLabelsFileURL];
      v46 = [objectDetectorLabelsFileURL VisionCoreFileSystemPathAndReturnError:error];

      v59 = v46;
      if (!v46)
      {
        v54 = 0;
LABEL_57:

LABEL_58:
        v20 = v64;
        v43 = v63;
        v44 = v61;

        v39 = v60;
        goto LABEL_59;
      }

      if (self->_model == 1)
      {
        objectDetectorOutputBlobBaseName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor objectDetectorOutputBlobBaseName];
        std::string::__assign_external(v86, [objectDetectorOutputBlobBaseName UTF8String]);

        _configureImageAnalyzerOptionsForSceneNetV3ObjDetNet(&__str);
      }
    }

    else
    {
      v59 = 0;
      if (!v63)
      {
        goto LABEL_53;
      }
    }

    if (v65)
    {
      [v65 createHierarchicalModelForInferenceDescriptor:self->_inferenceDescriptor error:error];
      v48 = *__p;
    }

    else
    {
      v48 = 0;
    }

    __p[0] = 0;
    __p[1] = 0;
    cntrl = self->_defaultSceneClassificationHierarchicalModel.__cntrl_;
    self->_defaultSceneClassificationHierarchicalModel = v48;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
      }

      ptr = self->_defaultSceneClassificationHierarchicalModel.__ptr_;
    }

    else
    {
      ptr = v48.__ptr_;
    }

    if (ptr)
    {
LABEL_53:
      fingerprintsHasherFileURL = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor fingerprintsHasherFileURL];
      v52 = [fingerprintsHasherFileURL VisionCoreFileSystemPathAndReturnError:0];

      if (v52)
      {
        fingerprintsOutputBlobName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self->_inferenceDescriptor fingerprintsOutputBlobName];
        std::string::__assign_external(&v78, [fingerprintsOutputBlobName UTF8String]);
      }

      v69 = 8576;
      vision::mod::ImageAnalyzer::createImageAnalyzer(__p, &v69, [v64 UTF8String], objc_msgSend(v63, "UTF8String"), objc_msgSend(v61, "UTF8String"), 0, objc_msgSend(v59, "UTF8String"), objc_msgSend(v56, "UTF8String"), &__str, v15, sessionCopy);
    }

    v54 = v59;
    goto LABEL_57;
  }

LABEL_64:

  return 0;
}

- (void)_configureSlidersAdjustmentsInImageAnalyzerOptions:(uint64_t)options forConfigurationOptions:(uint64_t)configurationOptions
{
  v21 = *MEMORY[0x1E69E9840];
  if (options)
  {
    std::vector<std::string>::clear[abi:ne200100]((configurationOptions + 336));
    sliderNetBlobNamePrefix = [*(options + 80) sliderNetBlobNamePrefix];
    v5 = sliderNetBlobNamePrefix;
    if (sliderNetBlobNamePrefix)
    {
      std::string::basic_string[abi:ne200100]<0>(&v19, [sliderNetBlobNamePrefix UTF8String]);
      [objc_opt_class() allPhotosAdjustmentKeys];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v6 = v16 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v7)
      {
        v8 = *v16;
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v15 + 1) + 8 * v9);
            if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = v19;
            }

            v11 = v10;
            uTF8String = [v10 UTF8String];
            v13 = strlen(uTF8String);
            std::string::append(&__p, uTF8String, v13);
            std::vector<std::string>::push_back[abi:ne200100](configurationOptions + 336, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v7);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }
  }
}

- (VNImageAnalyzerMultiDetector)initWithConfigurationOptions:(id)options
{
  v4.receiver = self;
  v4.super_class = VNImageAnalyzerMultiDetector;
  result = [(VNDetector *)&v4 initWithConfigurationOptions:options];
  if (result)
  {
    result->_cachedAllSceneClassificationsFromLastAnalysisAccessLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BOOL)warmUpSession:(id)session withOptions:(id)options error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  optionsCopy = options;
  v51.receiver = self;
  v51.super_class = VNImageAnalyzerMultiDetector;
  if (![(VNDetector *)&v51 warmUpSession:sessionCopy withOptions:optionsCopy error:error])
  {
    goto LABEL_39;
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_JunkConfiguration"];
  v11 = v10 == 0;

  if (v11)
  {
    goto LABEL_6;
  }

  [(VNImageAnalyzerMultiDetector *)&v49 _junkCustomClassifiersAndReturnError:error];
  v12 = v49;
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v12)
  {
LABEL_6:
    [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneConfigurations"];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v13 = v46 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v14)
    {
      v15 = *v46;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(v13);
          }

          observationsRecipient = [*(*(&v45 + 1) + 8 * i) observationsRecipient];
          originatingRequestSpecifier = [observationsRecipient originatingRequestSpecifier];

          v19 = [(VNImageAnalyzerMultiDetector *)self sceneLabelOperationPointsForOriginatingRequestSpecifier:originatingRequestSpecifier error:error];
          LOBYTE(observationsRecipient) = v19 == 0;

          if (observationsRecipient)
          {

            LOBYTE(v40) = 0;
            goto LABEL_43;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__VNImageAnalyzerMultiDetector_warmUpSession_withOptions_error___block_invoke;
    aBlock[3] = &unk_1E77B51A8;
    aBlock[4] = self;
    v20 = optionsCopy;
    v43 = v20;
    v44 = sessionCopy;
    v21 = _Block_copy(aBlock);
    v22 = [v20 objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SaliencyAConfiguration"];
    v23 = v22 == 0;

    if (!v23 && (v21[2](v21, @"VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType", error) & 1) == 0)
    {
      goto LABEL_41;
    }

    v24 = [v20 objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SaliencyOConfiguration"];
    v25 = v24 == 0;

    if (!v25 && !v21[2](v21, @"VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType", error))
    {
      goto LABEL_41;
    }

    v26 = [v20 objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VNVYvzEtX1JlUdu8xx5qhDIConfiguration"];
    v27 = v26 == 0;

    if (!v27)
    {
      [(VNImageAnalyzerMultiDetector *)&v49 _VNVYvzEtX1JlUdu8xx5qhDICustomClassifierAndReturnError:error];
      v28 = v49;
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (!v28)
      {
        goto LABEL_41;
      }
    }

    v29 = [v20 objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_PotentialLandmarkConfiguration"];
    v30 = v29 == 0;

    if (!v30)
    {
      [(VNImageAnalyzerMultiDetector *)&v49 _potentialLandmarksCustomClassifierAndReturnError:error];
      v31 = v49;
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (!v31)
      {
        goto LABEL_41;
      }
    }

    v32 = [v20 objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration"];
    v33 = v32 == 0;

    if (!v33)
    {
      [(VNImageAnalyzerMultiDetector *)&v49 _VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierAndReturnError:error];
      v34 = v49;
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (!v34)
      {
        goto LABEL_41;
      }
    }

    v35 = [v20 objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VN6Mb1ME89lyW3HpahkEygIGConfiguration"];
    v36 = v35 == 0;

    if (v36)
    {
      goto LABEL_34;
    }

    [(VNImageAnalyzerMultiDetector *)&v49 _VNdGg5skzXHSAENO6T3enHECustomClassifierForOriginatingRequestSpecifier:error];
    v37 = v49;
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    if (v37)
    {
LABEL_34:
      v38 = [v20 objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_CityNatureGatingConfiguration"];
      v39 = v38 == 0;

      if (v39)
      {
        goto LABEL_38;
      }

      [(VNImageAnalyzerMultiDetector *)&v49 _cityNatureCustomClassifierAndReturnError:error];
      v40 = v49;
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (v40)
      {
LABEL_38:
        LOBYTE(v40) = 1;
      }
    }

    else
    {
LABEL_41:
      LOBYTE(v40) = 0;
    }

LABEL_43:
  }

  else
  {
LABEL_39:
    LOBYTE(v40) = 0;
  }

  return v40;
}

uint64_t __64__VNImageAnalyzerMultiDetector_warmUpSession_withOptions_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [objc_opt_class() _newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:*(a1 + 40)];
  v7 = [*(a1 + 48) detectorOfType:v5 configuredWithOptions:v6 error:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 warmUpSession:*(a1 + 48) withOptions:*(a1 + 40) error:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldBeReplacedByDetectorOfClass:(Class)class withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_opt_class() == class)
  {
    if (([(VNImageAnalyzerMultiDetector *)self _isNotConfiguredWithBooleanOptionNamed:configurationCopy butRequiredByOptions:?]& 1) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(VNImageAnalyzerMultiDetector *)self _isNotConfiguredWithBooleanOptionNamed:configurationCopy butRequiredByOptions:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_isNotConfiguredWithBooleanOptionNamed:(void *)named butRequiredByOptions:
{
  v5 = a2;
  namedCopy = named;
  v7 = namedCopy;
  if (self)
  {
    v8 = [namedCopy objectForKey:v5];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      configurationOptions = [self configurationOptions];
      v11 = [configurationOptions objectForKey:v5];
      bOOLValue2 = [v11 BOOLValue];

      self = (bOOLValue2 ^ 1u);
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (BOOL)canBehaveAsDetectorOfClass:(Class)class withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_opt_class() != class || ([(VNImageAnalyzerMultiDetector *)self _isNotConfiguredWithBooleanOptionNamed:configurationCopy butRequiredByOptions:?]& 1) != 0 || ([(VNImageAnalyzerMultiDetector *)self _isNotConfiguredWithBooleanOptionNamed:configurationCopy butRequiredByOptions:?]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VNImageAnalyzerMultiDetector;
    v7 = [(VNDetector *)&v9 canBehaveAsDetectorOfClass:class withConfiguration:configurationCopy];
  }

  return v7;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = VNImageAnalyzerMultiDetector;
  v2 = [(VNDetector *)&v6 description];
  v3 = NSStringFromVisionCoreSceneNetInferenceNetworkModel();
  v4 = [v2 stringByAppendingFormat:@" %@", v3];

  return v4;
}

+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error
{
  v6 = [self _inferenceDescriptorForOptions:options error:?];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 URL];
    v9 = [v8 VisionCoreFileSystemPathAndReturnError:error];

    if (v9)
    {
      inputImageBlobName = [v7 inputImageBlobName];
      onlyInputImage = [v7 onlyInputImage];
      v12 = [self supportedImageSizeSetForEspressoModelAtPath:v9 inputImageBlobName:inputImageBlobName analysisPixelFormatType:objc_msgSend(onlyInputImage error:{"pixelFormatType"), error}];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)createHierarchicalModelForMultiDetectorModel:(unint64_t)model error:(id *)error
{
  v8 = v4;
  v12 = [self fullyPopulatedConfigurationOptionsWithOverridingOptions:MEMORY[0x1E695E0F8] populateComputeDevice:1];
  v9 = [self _newInferenceDescriptorForModel:model configuredWithOptions:? error:?];
  if (v9)
  {
    [self createHierarchicalModelForInferenceDescriptor:v9 error:error];
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
  }

  result.__cntrl_ = v11;
  result.__ptr_ = v10;
  return result;
}

+ (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)createHierarchicalModelForInferenceDescriptor:(id)descriptor error:(id *)error
{
  v6 = v4;
  descriptorCopy = descriptor;
  sceneLabelsFileURL = [descriptorCopy sceneLabelsFileURL];
  v9 = [sceneLabelsFileURL VisionCoreFileSystemPathAndReturnError:error];

  if (v9)
  {
    sceneLabelRelationshipsFileURL = [descriptorCopy sceneLabelRelationshipsFileURL];
    v11 = [sceneLabelRelationshipsFileURL VisionCoreFileSystemPathAndReturnError:error];

    if (v11)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x4012000000;
      v23 = __Block_byref_object_copy__510;
      v24 = __Block_byref_object_dispose__511;
      v25 = "";
      v26 = 0;
      v27 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __84__VNImageAnalyzerMultiDetector_createHierarchicalModelForInferenceDescriptor_error___block_invoke;
      aBlock[3] = &unk_1E77B5338;
      v17 = v9;
      v19 = &v20;
      v18 = v11;
      v12 = _Block_copy(aBlock);
      if (VNExecuteBlock(v12, error))
      {
        v13 = v21[7];
        *v6 = v21[6];
        v6[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        *v6 = 0;
        v6[1] = 0;
      }

      _Block_object_dispose(&v20, 8);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    else
    {
      *v6 = 0;
      v6[1] = 0;
    }
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
  }

  result.__cntrl_ = v15;
  result.__ptr_ = v14;
  return result;
}

void __84__VNImageAnalyzerMultiDetector_createHierarchicalModelForInferenceDescriptor_error___block_invoke(uint64_t a1)
{
  ImageClassifier_loadLabelsAndBooleanFlags(v18, [*(a1 + 32) UTF8String]);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v2 = *v18;
  v3 = v19;
  if (*v18 != v19)
  {
    v4 = 0;
    do
    {
      if (*(v2 + 32) < 2uLL)
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        v5 = (**(v2 + 24) >> 1) & 1;
      }

      if (*(v2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *v2, *(v2 + 8));
        v4 = v16;
      }

      else
      {
        v14 = *v2;
      }

      if (v4 >= v17)
      {
        v7 = (v4 - v15) >> 5;
        if ((v7 + 1) >> 59)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v8 = (v17 - v15) >> 4;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v17 - v15 >= 0x7FFFFFFFFFFFFFE0)
        {
          v9 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v20[4] = &v15;
        if (v9)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,BOOL>>>(v9);
        }

        v10 = (32 * v7);
        *v10 = v14;
        memset(&v14, 0, sizeof(v14));
        v10[1].__r_.__value_.__s.__data_[0] = v5;
        v4 = 32 * v7 + 32;
        v11 = v10 - (v16 - v15);
        memcpy(v11, v15, v16 - v15);
        v12 = v15;
        v13 = v17;
        v15 = v11;
        v16 = v4;
        v17 = 0;
        v20[2] = v12;
        v20[3] = v13;
        v20[0] = v12;
        v20[1] = v12;
        std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(v20);
      }

      else
      {
        v6 = *&v14.__r_.__value_.__l.__data_;
        *(v4 + 16) = *(&v14.__r_.__value_.__l + 2);
        *v4 = v6;
        *(v4 + 24) = v5;
        v4 += 32;
      }

      v16 = v4;
      v2 += 48;
    }

    while (v2 != v3);
  }

  v14.__r_.__value_.__r.__words[0] = [*(a1 + 40) UTF8String];
  std::allocate_shared[abi:ne200100]<vision::mod::ImageClassifier_HierarchicalModel,std::allocator<vision::mod::ImageClassifier_HierarchicalModel>,char const*,decltype(nullptr),std::vector<std::pair<std::string,BOOL>> &,0>();
}

+ (id)disallowedListForModel:(unint64_t)model
{
  if (model == 1)
  {
    v5 = +[VNDisallowedList sceneNetV3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)modelForRequestClass:(Class)class revision:(unint64_t)revision
{
  if (+[VNImageAnalyzerMultiDetector modelForRequestClass:revision:]::onceToken != -1)
  {
    dispatch_once(&+[VNImageAnalyzerMultiDetector modelForRequestClass:revision:]::onceToken, &__block_literal_global_27572);
  }

  v6 = +[VNImageAnalyzerMultiDetector modelForRequestClass:revision:]::ourModelMap;
  v7 = VNRequestClassFromClientSubclass(class);
  v10 = *(v6 + 8);
  v9 = (v6 + 8);
  v8 = v10;
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v9;
  do
  {
    v12 = v8[4];
    if (v7 == v12)
    {
      v13 = v8[5] < revision;
    }

    else
    {
      v13 = v12 < v7;
    }

    v14 = !v13;
    v15 = v13;
    if (v14)
    {
      v11 = v8;
    }

    v8 = v8[v15];
  }

  while (v8);
  if (v11 == v9 || ((v16 = v11[4], v16 != v7) ? (v17 = v7 < v16) : (v17 = v11[5] > revision), v17))
  {
LABEL_20:
    v11 = v9;
  }

  if ((+[VNImageAnalyzerMultiDetector modelForRequestClass:revision:]::ourModelMap + 8) == v11)
  {
    return 0;
  }

  else
  {
    return v11[6];
  }
}

+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  allKeys = [optionsCopy allKeys];
  v9 = [v7 initWithArray:allKeys];

  configurationOptionKeysForDetectorKey = [self configurationOptionKeysForDetectorKey];
  if ([configurationOptionKeysForDetectorKey isSubsetOfSet:v9])
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___VNImageAnalyzerMultiDetector;
    error = objc_msgSendSuper2(&v14, sel_detectorClassForConfigurationOptions_error_, optionsCopy, error);
  }

  else if (error)
  {
    v11 = [configurationOptionKeysForDetectorKey mutableCopy];
    [v11 minusSet:v9];
    anyObject = [v11 anyObject];
    *error = [VNError errorForMissingOptionNamed:anyObject];

    error = 0;
  }

  return error;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__VNImageAnalyzerMultiDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNImageAnalyzerMultiDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNImageAnalyzerMultiDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNImageAnalyzerMultiDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __69__VNImageAnalyzerMultiDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNImageAnalyzerMultiDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];
  v3 = [v2 copy];
  v4 = +[VNImageAnalyzerMultiDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNImageAnalyzerMultiDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___VNImageAnalyzerMultiDetector;
  objc_msgSendSuper2(&v5, sel_recordDefaultConfigurationOptionsInDictionary_, dictionaryCopy);
  [dictionaryCopy setObject:&unk_1F19C1978 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = +[VNComputeDeviceUtilities espressoV1ModelComputeDevices];
    [v8 setObject:v9 forKeyedSubscript:@"VNComputeStageMain"];

    v16 = 0;
    v17 = 0;
    LOBYTE(v9) = [self _getAssociatedBoundingBoxGeneratorClass:&v17 options:&v16 forConfigurationOptions:optionsCopy error:error];
    v10 = v16;
    if (v9)
    {
      if (!v17)
      {
LABEL_6:
        v14 = v8;
LABEL_8:

        goto LABEL_10;
      }

      v11 = [v17 supportedComputeStageDevicesForOptions:optionsCopy error:error];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 objectForKeyedSubscript:@"VNComputeStageMain"];
        [v8 setObject:v13 forKeyedSubscript:@"VNComputeStagePostProcessing"];

        goto LABEL_6;
      }
    }

    v14 = 0;
    goto LABEL_8;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

+ (id)computeStagesToBindForConfigurationOptions:(id)options
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"VNComputeStageMain";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (BOOL)_getAssociatedBoundingBoxGeneratorClass:(Class *)class options:(id *)options forConfigurationOptions:(id)configurationOptions error:(id *)error
{
  configurationOptionsCopy = configurationOptions;
  v11 = [VNValidationUtilities originatingRequestSpecifierInOptions:configurationOptionsCopy error:error];
  if (v11)
  {
    v12 = [self _saliencyHeatmapBoundingBoxGeneratorTypeForOriginatingRequestSpecifier:v11];
    if (v12)
    {
      v19 = 0;
      v13 = [self _newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:configurationOptionsCopy];
      v14 = [VNDetector detectorClassAndConfigurationOptions:&v19 forDetectorType:v12 options:v13 error:error];
      v15 = v19;

      v16 = v14 != 0;
      if (v14)
      {
        *class = v14;
        if (options)
        {
          v17 = v15;
          *options = v15;
        }
      }
    }

    else
    {
      *class = 0;
      if (options)
      {
        *options = 0;
      }

      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy mutableCopy];
  v5 = [optionsCopy objectForKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];
  if ([v5 count])
  {
    v6 = objc_alloc(MEMORY[0x1E695DF20]);
    v7 = [v5 objectForKeyedSubscript:@"VNComputeStagePostProcessing"];
    v8 = [v6 initWithObjectsAndKeys:{v7, @"VNComputeStageMain", 0}];

    [v4 setObject:v8 forKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];
  }

  return v4;
}

+ (id)_saliencyHeatmapBoundingBoxGeneratorTypeForOriginatingRequestSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if ([specifierCopy specifiesRequestClass:objc_opt_class()])
  {
    v4 = VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType;
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([specifierCopy specifiesRequestClass:objc_opt_class()])
  {
    v4 = VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)_inferenceDescriptorForOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = [v7 requestClassAndReturnError:error];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = [self modelForRequestClass:v9 revision:{objc_msgSend(v8, "requestRevision")}];
  if (v10)
  {
    v11 = [self _newInferenceDescriptorForModel:v10 configuredWithOptions:optionsCopy error:error];
    goto LABEL_8;
  }

  if (error)
  {
    [VNError errorForUnsupportedRequestSpecifier:v8];
    *error = v11 = 0;
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

LABEL_8:

  return v11;
}

+ (id)_newInferenceDescriptorForModel:(unint64_t)model configuredWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v8 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_RequireObjDetNet"];
  bOOLValue = [v8 BOOLValue];

  v10 = [optionsCopy objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_RequireSliderNet"];
  bOOLValue2 = [v10 BOOLValue];

  v12 = [MEMORY[0x1E69DF978] descriptorForModel:model requireObjDetNet:bOOLValue requireSliderNet:bOOLValue2 error:error];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  return v13;
}

@end