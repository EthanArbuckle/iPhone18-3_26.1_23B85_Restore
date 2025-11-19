@interface VNFaceGeometryEstimator
+ (const)allLandmarksPointsIndexes;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)_buildCalibrationMatrix:(id)a3 calibrationMatrix:(float *)a4 error:(id *)a5;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNFaceGeometryEstimator

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (const)allLandmarksPointsIndexes
{
  if (+[VNFaceGeometryEstimator allLandmarksPointsIndexes]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceGeometryEstimator allLandmarksPointsIndexes]::onceToken, &__block_literal_global_14654);
  }

  return +[VNFaceGeometryEstimator allLandmarksPointsIndexes]::allLandmarksPointsIndexes;
}

- (BOOL)_buildCalibrationMatrix:(id)a3 calibrationMatrix:(float *)a4 error:(id *)a5
{
  v7 = a3;
  v18 = 0;
  LODWORD(v8) = 1161527296;
  if ([VNValidationUtilities getFloatValue:&v18 forKey:@"VNFaceGeometryEstimatorInitOption_CameraFocalLength" inOptions:v7 withDefaultValue:a5 error:v8])
  {
    v17 = 0;
    v9 = [VNValidationUtilities getOptionalObject:&v17 ofClass:objc_opt_class() forKey:@"VNFaceGeometryEstimatorInitOption_ImageSize" inOptions:v7 error:a5];
    v10 = v17;
    v11 = v10;
    if (v9)
    {
      if (!v10)
      {
        v12 = 0x4400000044000000;
        if (!a4)
        {
LABEL_10:
          v13 = 1;
LABEL_14:

          goto LABEL_15;
        }

LABEL_9:
        v14 = v18;
        *a4 = v18;
        *(a4 + 1) = 0;
        a4[1] = 0.0;
        *(a4 + 4) = v14;
        a4[5] = 0.0;
        *(a4 + 3) = vrev64_s32(v12);
        a4[8] = 1.0;
        goto LABEL_10;
      }

      v16 = *MEMORY[0x1E695F060];
      if (CGSizeMakeWithDictionaryRepresentation(v10, &v16))
      {
        v12 = vrev64_s32(vmul_f32(vcvt_f32_f64(v16), 0x3F0000003F000000));
        if (!a4)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (a5)
      {
        *a5 = [VNError errorForInvalidOption:v11 named:@"VNFaceGeometryEstimatorInitOption_ImageSize"];
      }
    }

    v13 = 0;
    goto LABEL_14;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v72[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = [(VNDetector *)self validatedImageBufferFromOptions:v11 error:a8];
  if (v12)
  {
    v13 = VNCloneFaceObservationFromOptions(v11, a8);
    if (v13)
    {
      v48 = [VNValidationUtilities originatingRequestSpecifierInOptions:v11 error:a8];
      if (v48)
      {
        v14 = [v11 objectForKey:@"VNFaceGeometryEstimatorProcessOption_EstimatePoseOnly"];
        v47 = v14;
        if (v14)
        {
          v15 = [v14 BOOLValue];
        }

        else
        {
          v15 = 0;
        }

        v17 = [v12 width];
        v18 = [v12 height];
        v65 = 0;
        v66 = &v65;
        v67 = 0x4812000000;
        v68 = __Block_byref_object_copy__14665;
        v69 = __Block_byref_object_dispose__14666;
        v70 = "";
        std::vector<_Geometry2D_point2D_>::vector[abi:ne200100](__p, 0x3FuLL);
        v19 = [v13 landmarkPoints];
        [v13 alignedBoundingBox];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v56 = 0;
        v57 = &v56;
        v58 = 0x6012000000;
        v59 = __Block_byref_object_copy__37;
        v60 = __Block_byref_object_dispose__38;
        v61 = "";
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v28 = v66[6];
        v29 = v19;
        memcpy(v28, [v19 bytes], 0x1F8uLL);
        for (i = 0; i != 504; i += 8)
        {
          v31 = v66[6];
          v32 = v17 * v27 * *(v31 + i);
          *(v31 + i) = v32;
          v33 = v66[6] + i;
          v34 = v18 * v25 * *(v33 + 4);
          *(v33 + 4) = v34;
          v35 = v66[6];
          v36 = v17 * v21 + *(v35 + i);
          *(v35 + i) = v36;
          v37 = v66[6] + i;
          v38 = v18 * v23 + *(v37 + 4);
          *(v37 + 4) = v38;
          v39 = v66[6] + i;
          v40 = v18 - *(v39 + 4);
          *(v39 + 4) = v40;
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __125__VNFaceGeometryEstimator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
        aBlock[3] = &unk_1E77B3CA0;
        aBlock[4] = self;
        v55 = v15;
        v50 = v11;
        v53 = &v65;
        v54 = &v56;
        v41 = v13;
        v51 = v41;
        v42 = v48;
        v52 = v42;
        v43 = _Block_copy(aBlock);
        if (VNExecuteBlock(v43, a8))
        {
          v44 = objc_alloc(MEMORY[0x1E695DEF0]);
          v45 = [v44 initWithBytes:v57 + 6 length:48];
          [v41 setPoseData:v45 originatingRequestSpecifier:v42];
          v72[0] = v41;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
        }

        else
        {
          v16 = 0;
        }

        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(&v65, 8);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
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
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __125__VNFaceGeometryEstimator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if ([*(a1 + 32) _buildCalibrationMatrix:*(a1 + 40) calibrationMatrix:v19 error:a2])
  {
    v3 = VNBinModelFilePathFromModelNameAndThrow(@"eigenshape");
    v4 = +[VNModelFilesCache sharedInstance];
    v5 = [v4 load:v3];
    if (v5)
    {
      v6 = [v5 ptrFile];
      memset(v21, 0, sizeof(v21));
      v22 = 1065353216;
      vision::mod::readBinSerializedModelValues(v6, 0, vision::mod::Face3D::modelFileInfo(void)::tempInfo, v21);
      std::string::basic_string[abi:ne200100]<0>(__p, "mu");
      v7 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v21, __p);
      v8 = v7;
      if (v7)
      {
        if (*(v7 + 10) == 2)
        {
          v9 = v7[7];
          if (v9)
          {
            atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
          }

          v10 = v7[8] / 3uLL;
          v8 = 1;
        }

        else
        {
          LODWORD(v10) = 0;
          v8 = 0;
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (SHIBYTE(v18[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v8)
      {
        goto LABEL_30;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "S");
      v11 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v21, __p);
      if (v11 && *(v11 + 10) == 2)
      {
        v12 = v11[7];
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      if (SHIBYTE(v18[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v13)
      {
        if (v10 == 63)
        {
          operator new[]();
        }

        v15 = 892;
      }

      else
      {
LABEL_30:
        v15 = 888;
      }

      exception = __cxa_allocate_exception(8uLL);
      *exception = v15;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    if (a2)
    {
      *a2 = [VNError errorWithCode:9 message:@"Could not read face geometry estimator model data"];
    }
  }

  return 0;
}

@end