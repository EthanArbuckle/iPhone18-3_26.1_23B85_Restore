@interface VNGenerateInstanceMaskDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (void)fullyPopulateConfigurationOptions:(id)options;
+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary;
- (BOOL)_createLowResMaskFromLowResImage:(__CVBuffer *)image outMaskPixelBuffer:(__CVBuffer *)buffer outInstanceMaskPixelBuffer:(__CVBuffer *)pixelBuffer outNumComponents:(unint64_t *)components outConfidenceScore:(float *)score error:(id *)error;
- (BOOL)_filterUsingConnectedComponentsFromSegmentation:(id *)segmentation outInstanceMask:(__CVBuffer *)mask numComponents:(unint64_t *)components;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNGenerateInstanceMaskDetector

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allGPUAndNeuralEngineComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___VNGenerateInstanceMaskDetector;
  objc_msgSendSuper2(&v5, sel_recordDefaultConfigurationOptionsInDictionary_, dictionaryCopy);
  [dictionaryCopy setObject:&unk_1F19C1F48 forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_InputBlobNames"];
  [dictionaryCopy setObject:&unk_1F19C1F60 forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_OutputBlobNames"];
}

+ (void)fullyPopulateConfigurationOptions:(id)options
{
  optionsCopy = options;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___VNGenerateInstanceMaskDetector;
  objc_msgSendSuper2(&v7, sel_fullyPopulateConfigurationOptions_, optionsCopy);
  v5 = [optionsCopy objectForKeyedSubscript:@"VNGenerateInstanceMaskDetectorCreationOptionGatingOnly"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    [optionsCopy setObject:&unk_1F19C1F30 forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_OutputBlobNames"];
  }
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__VNGenerateInstanceMaskDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNGenerateInstanceMaskDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNGenerateInstanceMaskDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNGenerateInstanceMaskDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __71__VNGenerateInstanceMaskDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNGenerateInstanceMaskDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNGenerateInstanceMaskDetectorCreationOptionGatingOnly"];
  v3 = [v2 copy];
  v4 = +[VNGenerateInstanceMaskDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNGenerateInstanceMaskDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v51[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __132__VNGenerateInstanceMaskDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
  aBlock[3] = &unk_1E77B2808;
  aBlock[4] = self;
  aBlock[5] = &v47;
  aBlock[6] = &v43;
  aBlock[7] = &v39;
  aBlock[8] = &v35;
  aBlock[9] = buffer;
  v21 = _Block_copy(aBlock);
  if (VNExecuteBlock(v21, error))
  {
    if (!self->_gatingOnly && (v36[6] < 0.16 || v40[3] < 2))
    {
      v23 = 0;
      v29 = 0;
      v28 = 0;
      v25 = 0;
      v30 = MEMORY[0x1E695E0F0];
      goto LABEL_15;
    }

    v22 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
    v23 = v22 != 0;
    if (v22)
    {
      if (self->_gatingOnly)
      {
        v24 = [VNClassificationObservation alloc];
        v25 = 0;
        *&v26 = v36[6];
        height = [(VNClassificationObservation *)v24 initWithOriginatingRequestSpecifier:v22 identifier:@"VNGenerateInstanceMaskGate" confidence:v26];
        v28 = height;
      }

      else
      {
        v31 = [VNInstanceMaskObservation alloc];
        height = [(VNInstanceMaskObservation *)v31 initWithOriginatingRequestSpecifier:v22 lowResMask:v48[3] instanceMask:v44[3] numComponents:v40[3] regionOfInterest:x, y, width, height];
        *&v32 = v36[6];
        [(VNObservation *)height setConfidence:v32];
        v28 = 0;
        v25 = height;
      }

      v29 = height;
    }

    else
    {
      v29 = 0;
      v28 = 0;
      v25 = 0;
    }
  }

  else
  {
    v23 = 0;
    v29 = 0;
    v28 = 0;
    v25 = 0;
  }

  v30 = 0;
LABEL_15:
  CVPixelBufferRelease(v48[3]);
  v48[3] = 0;
  CVPixelBufferRelease(v44[3]);
  v44[3] = 0;
  if (v23)
  {
    v51[0] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  return v30;
}

- (BOOL)_createLowResMaskFromLowResImage:(__CVBuffer *)image outMaskPixelBuffer:(__CVBuffer *)buffer outInstanceMaskPixelBuffer:(__CVBuffer *)pixelBuffer outNumComponents:(unint64_t *)components outConfidenceScore:(float *)score error:(id *)error
{
  LODWORD(v14) = [(VNEspressoModelFileBasedDetector *)self bindLockedPixelBuffer:image toNetworkInputBlobName:@"input_image" error:error];
  if (v14)
  {
    LODWORD(v14) = [(VNEspressoModelFileBasedDetector *)self executePlanAndReturnError:error];
    if (v14)
    {
      v15 = *self->_outputConfidenceEspressoBuffer.data;
      *score = v15;
      if (v15 < 0.16 || self->_gatingOnly || (LODWORD(v14) = [(VNGenerateInstanceMaskDetector *)self _filterUsingConnectedComponentsFromSegmentation:&self->_outputMaskEspressoBuffer outInstanceMask:pixelBuffer numComponents:components], v14) && (*components < 2 || (v14 = [VNEspressoHelpers createCVPixelBufferWithPixelFormat:1278226534 fromImageInEspressoBuffer:&self->_outputMaskEspressoBuffer error:error], (*buffer = v14) != 0)))
      {
        LOBYTE(v14) = 1;
      }
    }
  }

  return v14;
}

- (BOOL)_filterUsingConnectedComponentsFromSegmentation:(id *)segmentation outInstanceMask:(__CVBuffer *)mask numComponents:(unint64_t *)components
{
  v5 = 0;
  if (!mask)
  {
    return v5;
  }

  if (!components)
  {
    return v5;
  }

  pixelBuffer = 0;
  v9 = VNCVPixelBufferCreateUsingIOSurface(segmentation->var4, segmentation->var5, 0x4C303038u, 0, &pixelBuffer);
  v5 = v9 == 0;
  if (v9)
  {
    return v5;
  }

  maskCopy = mask;
  componentsCopy = components;
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (Width != segmentation->var4 || Height != segmentation->var5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1AC556740](exception, "Image and label dimensions must match.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v14 = BytesPerRow;
  var0 = segmentation->var0;
  v16 = 4 * segmentation->var10;
  bzero(BaseAddress, BytesPerRow * Height);
  v81 = 0;
  v82 = 0;
  v83 = 0;
  if (Height)
  {
    v17 = 0;
    v18 = 0;
    if (Width <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = Width;
    }

    v20 = 1;
    v21 = Width;
    v60 = v19;
    do
    {
      *&v64 = v18;
      if (v21)
      {
        v22 = 0;
        v23 = &BaseAddress[v18 * v14];
        v59 = v18;
        v24 = &var0[v18 * v16];
        v61 = v23;
        v62 = v24;
        while (1)
        {
          *(&v64 + 1) = v22;
          if (!v23[v22] && *&v24[4 * v22] >= 0.4)
          {
            v23[v22] = v20;
            std::vector<apple::vision::connected_components::RowCol>::push_back[abi:ne200100](&v81, &v64);
            while (1)
            {
              v17 = v81;
              if (v81 == v82)
              {
                break;
              }

              v25 = *(v82 - 2);
              v26 = *(v82 - 1);
              v82 -= 16;
              __p = (v25 - 1);
              v66 = (v26 - 1);
              v67 = v25 - 1;
              v68 = v26;
              v69 = v25 - 1;
              v70 = v26 + 1;
              v71 = v25;
              v72 = v26 - 1;
              v73 = v25;
              v74 = v26 - 1;
              v75 = v25 + 1;
              v76 = v26 - 1;
              v77 = v25 + 1;
              v78 = v26;
              p_p = &__p;
              v28 = 128;
              v79 = v25 + 1;
              v80 = v26 + 1;
              do
              {
                v29 = *p_p;
                if ((*p_p & 0x8000000000000000) == 0 && v29 < Height)
                {
                  v30 = p_p[1];
                  if ((v30 & 0x8000000000000000) == 0 && v30 < Width)
                  {
                    v31 = &BaseAddress[v29 * v14];
                    if (!v31[v30] && *&var0[4 * v30 + v29 * v16] > 0.4)
                    {
                      v31[v30] = v20;
                      std::vector<apple::vision::connected_components::RowCol>::push_back[abi:ne200100](&v81, p_p);
                    }
                  }
                }

                p_p += 2;
                v28 -= 16;
              }

              while (v28);
            }

            v19 = v60;
            v24 = v62;
            if (v20 == 255)
            {
              v32 = 256;
              goto LABEL_34;
            }

            ++v20;
            v23 = v61;
          }

          if (++v22 == v19)
          {
            v21 = Width;
            v18 = v59;
            break;
          }
        }
      }

      ++v18;
    }

    while (v18 != Height);
    v32 = v20;
LABEL_34:
    if (v17)
    {
      v82 = v17;
      operator delete(v17);
    }
  }

  else
  {
    v32 = 1;
  }

  std::vector<unsigned long>::vector[abi:ne200100](&__p, v32);
  v33 = Width * Height;
  if (Width * Height)
  {
    v34 = __p;
    v35 = BaseAddress;
    do
    {
      v36 = *v35++;
      ++v34[v36];
      --v33;
    }

    while (v33);
  }

  std::vector<unsigned char>::vector[abi:ne200100](&v81, v32);
  if (v32 >= 2)
  {
    v38 = (__p + 8);
    v37 = *(__p + 1);
    v39 = (__p + 16);
    if (__p + 8 != v66 && v39 != v66)
    {
      v41 = (__p + 16);
      do
      {
        v43 = *v41++;
        v42 = v43;
        v44 = v37 >= v43;
        if (v37 <= v43)
        {
          v37 = v42;
        }

        if (!v44)
        {
          v38 = v39;
        }

        v39 = v41;
      }

      while (v41 != v66);
      v37 = *v38;
    }

    v45 = (v37 * 0.3);
    v46 = 1;
    v47 = 1;
    v48 = 1;
    do
    {
      if (*(__p + v46) >= v45)
      {
        v81[v46] = v47++;
        ++v48;
      }

      ++v46;
    }

    while (v32 != v46);
    if (!Height)
    {
      goto LABEL_66;
    }

    goto LABEL_59;
  }

  v48 = 1;
  if (Height)
  {
LABEL_59:
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        v50 = &var0[i * v16];
        v51 = Width;
        do
        {
          v52 = *BaseAddress;
          v53 = v81;
          v54 = v81[v52];
          if (!v54)
          {
            *v50 = 0;
            v54 = v53[v52];
          }

          *BaseAddress++ = v54;
          v50 += 4;
          --v51;
        }

        while (v51);
      }
    }
  }

LABEL_66:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  *maskCopy = pixelBuffer;
  *componentsCopy = v48;
  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (__p)
  {
    v66 = __p;
    operator delete(__p);
  }

  return 1;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  v13 = *&class;
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
  v23.receiver = self;
  v23.super_class = VNGenerateInstanceMaskDetector;
  LOBYTE(error) = [(VNEspressoModelFileBasedDetector *)&v23 createRegionOfInterestCrop:optionsCopy options:v13 qosClass:recorderCopy warningRecorder:buffer pixelBuffer:error error:handlerCopy progressHandler:x, y, width, height];

  return error;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v10.receiver = self;
  v10.super_class = VNGenerateInstanceMaskDetector;
  if (![(VNEspressoModelFileBasedDetector *)&v10 completeInitializationForSession:session error:?])
  {
    return 0;
  }

  configurationOptions = [(VNDetector *)self configurationOptions];
  v7 = [configurationOptions objectForKeyedSubscript:@"VNGenerateInstanceMaskDetectorCreationOptionGatingOnly"];
  self->_gatingOnly = [v7 BOOLValue];

  v8 = (self->_gatingOnly || [(VNEspressoModelFileBasedDetector *)self bindBuffer:&self->_outputMaskEspressoBuffer toNetworkOutputBlobName:@"saliency" error:error]) && [(VNEspressoModelFileBasedDetector *)self bindBuffer:&self->_outputConfidenceEspressoBuffer toNetworkOutputBlobName:@"gating_confidence" error:error];
  return v8;
}

@end