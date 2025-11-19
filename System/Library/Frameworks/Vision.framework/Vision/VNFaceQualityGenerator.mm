@interface VNFaceQualityGenerator
+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4;
+ (basic_string_view<char,)modelVersionIDForConfigurationOptions:(id)a3;
+ (id)keyForDetectorWithConfigurationOptions:(id)a3;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNFaceQualityGenerator

+ (basic_string_view<char,)modelVersionIDForConfigurationOptions:(id)a3
{
  [VNError VNAssertClass:objc_opt_class() needsToOverrideMethod:a2];
  v3 = "";
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 error:a4];
  if (!v6)
  {
    goto LABEL_7;
  }

  if (([v6 specifiesRequestClass:objc_opt_class()] & 1) != 0 && (objc_msgSend(v6, "requestRevision") - 1) <= 2)
  {
    v7 = objc_opt_class();
    goto LABEL_8;
  }

  if (a4)
  {
    [VNError errorForUnsupportedRequestSpecifier:v6];
    *a4 = v7 = 0;
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

LABEL_8:

  return v7;
}

+ (id)keyForDetectorWithConfigurationOptions:(id)a3
{
  v4 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___VNFaceQualityGenerator;
  v5 = objc_msgSendSuper2(&v10, sel_keyForDetectorWithConfigurationOptions_, v4);
  v6 = MEMORY[0x1E696AEC0];
  v7 = [a1 espressoModelFileNameForConfigurationOptions:v4];
  v8 = [v6 stringWithFormat:@"%@:%@", v5, v7];

  return v8;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v29[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = VNCloneFaceObservationFromOptions(v12, a8);
  if (!v13)
  {
    a8 = 0;
    goto LABEL_15;
  }

  v14 = [VNValidationUtilities originatingRequestSpecifierInOptions:v12 specifyingRequestClass:objc_opt_class() error:a8];
  if (!v14)
  {
    goto LABEL_13;
  }

  ptr = self->_mFaceQualityPredictor.__ptr_;
  v17 = *(ptr + 14);
  v16 = *(ptr + 15);
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  CVPixelBufferImageType = ImageProcessing_getCVPixelBufferImageType(a4);
  if (Width == v17 && Height == v16)
  {
    if (CVPixelBufferImageType == 4)
    {
      if (espresso_network_bind_input_cvpixelbuffer())
      {
        syslog(5, "ERROR: Could not bind the image to the input blob");
      }

      else
      {
        if (!espresso_plan_execute_sync())
        {
          v26 = *(ptr + 111);
          if (v26 < 0)
          {
            v27 = *(ptr + 11);
            v26 = *(ptr + 12);
          }

          else
          {
            v27 = (ptr + 88);
          }

          v28 = fminf(**(ptr + 44) * 0.25, 1.0);
          if (v26 == 2 && *v27 == 12918)
          {
            v28 = 1.0 / (exp(v28 * -3.78 + 2.0) + 1.0);
          }

          if (v28 <= 1.0 && v28 >= 0.0)
          {
            [v13 setFaceCaptureQuality:v14 originatingRequestSpecifier:?];
            v29[0] = v13;
            a8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
            goto LABEL_14;
          }

          if (!a8)
          {
            goto LABEL_14;
          }

          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"face quality of %f is out of range", v28];
          v23 = [VNError errorForInternalErrorWithLocalizedDescription:v22];
          goto LABEL_12;
        }

        espresso_plan_get_error_info();
        syslog(5, "ERROR: Could not execute plan: %s", v25);
      }

      v21 = 9307;
      if (!a8)
      {
        goto LABEL_14;
      }

LABEL_11:
      v22 = VNErrorForCVMLStatus(v21);
      v23 = [VNError errorForInternalErrorWithLocalizedDescription:@"Could not run network" underlyingError:v22];
LABEL_12:
      *a8 = v23;

LABEL_13:
      a8 = 0;
      goto LABEL_14;
    }

    syslog(5, "ERROR: Unexpected input image buffer format");
  }

  else
  {
    syslog(5, "ERROR: Unexpected input image buffer dimensions");
  }

  v21 = 9331;
  if (a8)
  {
    goto LABEL_11;
  }

LABEL_14:

LABEL_15:

  return a8;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  v12 = a4;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:v12 error:a8];
  if (v13)
  {
    v14 = [VNValidationUtilities requiredFaceObservationInOptions:v12 error:a8];
    if (!v14)
    {
      goto LABEL_18;
    }

    [v13 orientation];
    if ((VNSetFaceOrientationInOptionsDictionary(v14, v12, a8) & 1) == 0)
    {
      goto LABEL_18;
    }

    [v14 unalignedBoundingBox];
    v37 = v16;
    v38 = v15;
    v39 = v18;
    v40 = v17;
    ptr = self->_mFaceQualityPredictor.__ptr_;
    v20 = *(ptr + 14);
    v21 = *(ptr + 15);
    v22 = [v14 requestRevision];
    v42 = 0.3825;
    if ((v22 - 3737841664) <= 6)
    {
      if (((1 << v22) & 0x75) != 0)
      {
        goto LABEL_10;
      }

      if (v22 == 3737841667)
      {
LABEL_9:
        v42 = 0.0;
        goto LABEL_10;
      }
    }

    if ((v22 - 1) >= 3)
    {
      if (!v22)
      {
        goto LABEL_9;
      }

      if (a8)
      {
        +[VNError errorForUnsupportedRevision:ofRequestClass:](VNError, "errorForUnsupportedRevision:ofRequestClass:", [v14 requestRevision], objc_opt_class());
        *a8 = v34 = 0;
LABEL_19:

        goto LABEL_20;
      }

LABEL_18:
      v34 = 0;
      goto LABEL_19;
    }

LABEL_10:
    v23 = [v13 width];
    v24 = [v13 height];
    v25.i64[0] = v23;
    v25.i64[1] = v24;
    v26.f64[0] = v38;
    v26.f64[1] = v37;
    v27 = vcvtq_f64_u64(v25);
    v28 = vmulq_f64(v26, v27);
    v29.f64[0] = v40;
    v29.f64[1] = v39;
    *&v27.f64[0] = vcvt_f32_f64(vmulq_f64(v29, v27));
    *&v29.f64[0] = vmul_n_f32(*&v27.f64[0], v42);
    *&v28.f64[0] = vsub_f32(vcvt_f32_f64(v28), *&v29.f64[0]);
    *&v27.f64[0] = vmla_f32(*&v27.f64[0], 0x4000000040000000, *&v29.f64[0]);
    v30 = vrndm_f32(*&v28.f64[0]);
    v31 = vrndp_f32(vsub_f32(vadd_f32(*&v28.f64[0], *&v27.f64[0]), v30));
    v32 = v31.f32[1];
    v41 = v30.f32[0];
    v43 = v31.f32[0];
    v33 = v30.f32[1];
    if (v31.f32[0] != v31.f32[1])
    {
      if (v31.f32[0] <= v31.f32[1])
      {
        v41 = v30.f32[0] + (vabds_f32(v31.f32[0], v31.f32[1]) * -0.5);
        v43 = v31.f32[1];
      }

      else
      {
        v33 = v30.f32[1] + (vabds_f32(v31.f32[1], v31.f32[0]) * -0.5);
        v32 = v31.f32[0];
      }
    }

    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
    v35 = [v13 croppedBufferWithWidth:v20 height:v21 format:1111970369 cropRect:v12 options:a8 error:{v41, v33, v43, v32}];
    *a7 = v35;
    v34 = v35 != 0;
    goto LABEL_19;
  }

  v34 = 0;
LABEL_20:

  return v34;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v21.receiver = self;
  v21.super_class = VNFaceQualityGenerator;
  v18 = a3;
  if ([VNEspressoModelFileBasedDetector completeInitializationForSession:sel_completeInitializationForSession_error_ error:?])
  {
    v16 = [(VNDetector *)self configurationOptions];
    v17 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
    v6 = [objc_opt_class() modelVersionIDForConfigurationOptions:v16];
    v8 = v7;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v20 = v7;
    if (v7)
    {
      memmove(__dst, v6, v7);
    }

    *(__dst + v8) = 0;
    [v17 network];
    [v17 plan];
    if ((v20 & 0x80u) == 0)
    {
      v10 = v20;
    }

    else
    {
      v10 = __dst[1];
    }

    v11 = __dst;
    if ((v20 & 0x80u) != 0)
    {
      v11 = __dst[0];
    }

    if (v10 == 8)
    {
      if (*v11 == 0x32706F72645F3376 || *v11 == 0x33706F72645F3376 || *v11 == 0x34706F72645F3376)
      {
LABEL_24:
        operator new();
      }
    }

    else if (v10 == 2 && (*v11 == 12662 || *v11 == 12918 || *v11 == 13174))
    {
      goto LABEL_24;
    }

    syslog(5, "[Error] Version %s is not supported", v11);
    p_mFaceQualityPredictor = &self->_mFaceQualityPredictor;
    cntrl = self->_mFaceQualityPredictor.__cntrl_;
    self->_mFaceQualityPredictor = 0uLL;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    if (v20 < 0)
    {
      operator delete(__dst[0]);
    }

    v9 = p_mFaceQualityPredictor->__ptr_ != 0;
    if (a4 && !p_mFaceQualityPredictor->__ptr_)
    {
      v14 = VNErrorForCVMLStatus(0x247C);
      *a4 = [VNError errorForInternalErrorWithLocalizedDescription:@"Failure to create face quality predictor" underlyingError:v14];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end