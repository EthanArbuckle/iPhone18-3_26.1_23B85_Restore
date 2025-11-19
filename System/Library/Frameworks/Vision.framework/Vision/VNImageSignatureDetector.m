@interface VNImageSignatureDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
- (shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)_calculateImageSignatureHashDescriptorFrom:(const void *)a3 options:(id)a4 error:(id *)a5;
- (shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)_calculateImageSignatureprintDescriptorFromOptions:(id)a3 error:(id *)a4;
@end

@implementation VNImageSignatureDetector

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VNImageSignatureDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNImageSignatureDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNImageSignatureDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNImageSignatureDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __65__VNImageSignatureDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNImageSignatureDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNImageSignatureDetectorInitOption_ImageSignatureprintType"];
  [v2 addObject:@"VNImageSignatureDetectorInitOption_ImageSignatureHashType"];
  v3 = [v2 copy];
  v4 = +[VNImageSignatureDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNImageSignatureDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)_calculateImageSignatureHashDescriptorFrom:(const void *)a3 options:(id)a4 error:(id *)a5
{
  v9 = v5;
  v10 = a4;
  v16 = 0;
  if (![VNValidationUtilities getNSUIntegerValue:&v16 forKey:@"VNImageSignatureDetectorInitOption_ImageSignatureHashType" inOptions:v10 error:a5])
  {
LABEL_7:
    *v9 = 0;
    v9[1] = 0;
    goto LABEL_8;
  }

  v11 = v16;
  if (v11 != [(VNImageSignatureDetector *)self imageSignatureHashType])
  {
    if (a5)
    {
      *a5 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Mismatch in signature hash type"];
    }

    goto LABEL_7;
  }

  (*(*self->_hyperplaneLSHProcessor.__ptr_ + 64))(&v15);
  v12 = (*(*self->_hyperplaneLSHProcessor.__ptr_ + 160))(self->_hyperplaneLSHProcessor.__ptr_, *a3, v15);
  if (v12 == 128)
  {
    *v9 = v15;
  }

  else
  {
    if (a5)
    {
      *a5 = VNErrorForCVMLStatus(v12);
    }

    *v9 = 0;
    v9[1] = 0;
    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
    }
  }

LABEL_8:

  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)_calculateImageSignatureprintDescriptorFromOptions:(id)a3 error:(id *)a4
{
  v7 = v4;
  v8 = a3;
  v16 = 0;
  v9 = [VNValidationUtilities getOptionalObject:&v16 ofClass:objc_opt_class() forKey:@"VNImageSignatureDetectorProcessOption_ImageSignatureprintInput" inOptions:v8 error:a4];
  v10 = v16;
  if (v9)
  {
    v15 = 0;
    if ([VNValidationUtilities getNSUIntegerValue:&v15 forKey:@"VNImageSignatureDetectorInitOption_ImageSignatureprintType" inOptions:v8 error:a4])
    {
      v11 = v15;
      if (v11 == [(VNImageSignatureDetector *)self imageSignatureprintType])
      {
        if (v15 == 3)
        {
          [v10 descriptorData];
          [objc_claimAutoreleasedReturnValue() bytes];
          [v10 elementCount];
          operator new();
        }

        if (a4)
        {
          v12 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Unknown signature print type"];
          goto LABEL_10;
        }
      }

      else if (a4)
      {
        v12 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Mismatch in signature print type"];
LABEL_10:
        *a4 = v12;
      }
    }
  }

  *v7 = 0;
  v7[1] = 0;

  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  v30[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = a8;
  v15 = [VNValidationUtilities originatingRequestSpecifierInOptions:v12 error:a7];
  if (v15)
  {
    v16 = [(VNDetector *)self computeDeviceForComputeStage:@"VNComputeStageMain" processingOptions:v12 error:a7];
    if (v16)
    {
      [(VNImageSignatureDetector *)self _calculateImageSignatureprintDescriptorFromOptions:v12 error:a7];
      if (v28)
      {
        v17 = (*(*v28 + 104))(v28);
        v18 = [VN6Ac6Cyl5O5oK19HboyMBR alloc];
        v19 = [(VN6Ac6Cyl5O5oK19HboyMBR *)v18 initWithData:v28[7] elementCount:v17 >> 2 elementType:1 lengthInBytes:v17 imageSignatureprintType:[(VNImageSignatureDetector *)self imageSignatureprintType] originatingRequestSpecifier:v15];
        [(VNImageSignatureDetector *)self _calculateImageSignatureHashDescriptorFrom:&v28 options:v12 error:a7];
        if (v26)
        {
          v20 = (*(*v26 + 104))();
          v21 = [[VN6B8mkraBUpwUqskMYPtS3 alloc] initWithData:v26[7] elementCount:v20 >> 2 elementType:1 lengthInBytes:v20 imageSignatureHashType:[(VNImageSignatureDetector *)self imageSignatureHashType] requestRevision:1];
          v22 = [[VN3XKGTKNBvy6h4RFtpxLyW alloc] initWithOriginatingRequestSpecifier:v15 imageSignatureprint:v19 imageSignatureHash:v21];
          v23 = v22;
          if (v22)
          {
            v30[0] = v22;
            v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
          }

          else if (a7)
          {
            [VNError errorForInternalErrorWithLocalizedDescription:@"Unknown error creating VNObservation object"];
            *a7 = v24 = 0;
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }
      }

      else
      {
        v24 = 0;
      }

      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v11.receiver = self;
  v11.super_class = VNImageSignatureDetector;
  if ([(VNDetector *)&v11 completeInitializationForSession:a3 error:?])
  {
    v6 = [(VNDetector *)self configurationOptions];
    if ([VNValidationUtilities getNSUIntegerValue:&self->_imageSignatureprintType forKey:@"VNImageSignatureDetectorInitOption_ImageSignatureprintType" inOptions:v6 error:a4]&& [VNValidationUtilities getNSUIntegerValue:&self->_imageSignatureHashType forKey:@"VNImageSignatureDetectorInitOption_ImageSignatureHashType" inOptions:v6 error:a4])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__VNImageSignatureDetector_completeInitializationForSession_error___block_invoke;
      aBlock[3] = &unk_1E77B6320;
      aBlock[4] = self;
      v7 = _Block_copy(aBlock);
      if ([(VNImageSignatureDetector *)self imageSignatureprintType]== 3)
      {
        LOBYTE(a4) = v7[2](v7, @"neuralhash_128x96_seed1", a4);
      }

      else if (a4)
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown signature print type: %lu", -[VNImageSignatureDetector imageSignatureprintType](self, "imageSignatureprintType")];
        *a4 = [VNError errorForInvalidArgumentWithLocalizedDescription:v8];

        LOBYTE(a4) = 0;
      }
    }

    else
    {
      LOBYTE(a4) = 0;
    }
  }

  else
  {
    LOBYTE(a4) = 0;
  }

  return a4;
}

BOOL __67__VNImageSignatureDetector_completeInitializationForSession_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(*(a1 + 32) + 72);
  if (v7 == 1)
  {
    v8 = v5;
    v9 = VNFrameworkBundle();
    v10 = [v9 pathForResource:v8 ofType:@"dat"];
    if (v10)
    {

      [v10 UTF8String];
      operator new();
    }

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Model file %@.dat is missing", v8];
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:@"Loading Resource Error" reason:v13 userInfo:0];
    objc_exception_throw(v14);
  }

  if (a3)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown signature hash type: %lu", objc_msgSend(*(a1 + 32), "imageSignatureHashType")];
    *a3 = [VNError errorForInvalidArgumentWithLocalizedDescription:v11];
  }

  return v7 == 1;
}

@end