@interface CIBarcodeDetector
+ (id)messageStringFromDescriptor:(id)a3;
- (CIBarcodeDetector)initWithContext:(id)a3 options:(id)a4;
- (id)featuresInImage:(id)a3 options:(id)a4;
- (void)dealloc;
@end

@implementation CIBarcodeDetector

- (CIBarcodeDetector)initWithContext:(id)a3 options:(id)a4
{
  v10.receiver = self;
  v10.super_class = CIBarcodeDetector;
  v6 = [(CIDetector *)&v10 init];
  if (v6)
  {
    if (!a3)
    {
      a3 = +[CIContext _singletonContext];
    }

    [(CIBarcodeDetector *)v6 setContext:a3];
    if (!v6->featureOptions)
    {
      v6->featureOptions = [MEMORY[0x1E695DF90] dictionary];
    }

    v7 = [a4 objectForKey:@"CIDetectorAccuracy"];
    if ([v7 isEqual:@"CIDetectorAccuracyHigh"])
    {
      [(NSMutableDictionary *)v6->featureOptions setObject:@"CIDetectorAccuracyHigh" forKey:@"CIDetectorAccuracy"];
    }

    else if (v7)
    {
      if (([v7 isEqual:@"CIDetectorAccuracyLow"] & 1) == 0)
      {
        v8 = ci_logger_api();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [CIBarcodeDetector initWithContext:v8 options:?];
        }
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  [(CIBarcodeDetector *)self setContext:0];
  featureOptions = self->featureOptions;
  if (featureOptions)
  {
  }

  v4.receiver = self;
  v4.super_class = CIBarcodeDetector;
  [(CIBarcodeDetector *)&v4 dealloc];
}

- (id)featuresInImage:(id)a3 options:(id)a4
{
  values[1] = *MEMORY[0x1E69E9840];
  v6 = ci_signpost_log_detector();
  if (&self->super.super.isa + 1 >= 2)
  {
    v38 = v6;
    if (os_signpost_enabled(v6))
    {
      LOWORD(v112.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v38, OS_SIGNPOST_INTERVAL_BEGIN, self, "CIBarcodeDetector", &unk_19CFBCBAE, &v112, 2u);
    }
  }

  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v122 = __45__CIBarcodeDetector_featuresInImage_options___block_invoke;
  v123 = &__block_descriptor_40_e5_v8__0l;
  v124 = self;
  if (!QuaggaLibraryCore(0))
  {
    v37 = ci_logger_api();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [CIBarcodeDetector featuresInImage:v37 options:?];
    }

    goto LABEL_23;
  }

  v125 = 0;
  v126 = &v125;
  v127 = 0x2020000000;
  v7 = getACBSConfigCreateSymbolLoc(void)::ptr;
  v128 = getACBSConfigCreateSymbolLoc(void)::ptr;
  if (!getACBSConfigCreateSymbolLoc(void)::ptr)
  {
    *&v112.a = MEMORY[0x1E69E9820];
    *&v112.b = 3221225472;
    *&v112.c = ___ZL28getACBSConfigCreateSymbolLocv_block_invoke;
    *&v112.d = &unk_1E75C1E10;
    *&v112.tx = &v125;
    v8 = QuaggaLibrary();
    v9 = dlsym(v8, "ACBSConfigCreate");
    *(*(*&v112.tx + 8) + 24) = v9;
    getACBSConfigCreateSymbolLoc(void)::ptr = *(*(*&v112.tx + 8) + 24);
    v7 = v126[3];
  }

  _Block_object_dispose(&v125, 8);
  if (!v7)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_94;
  }

  v10 = v7();
  if (!v10)
  {
LABEL_23:
    v107 = MEMORY[0x1E695E0F0];
    goto LABEL_86;
  }

  v106 = v10;
  pixelBufferOut = 0;
  values[0] = @"QR";
  v11 = *MEMORY[0x1E695E480];
  cf = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
  if (!cf)
  {
    __assert_rtn("[CIBarcodeDetector featuresInImage:options:]", "CIBarcodeDetector.mm", 159, "NULL != symbologies");
  }

  v107 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [a3 extent];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  CGAffineTransformMakeTranslation(&v112, -v12, -v14);
  v20 = [a3 imageByApplyingTransform:&v112];
  v132.origin.x = v13;
  v132.origin.y = v15;
  v132.size.width = v17;
  v132.size.height = v19;
  self->_width = CGRectGetWidth(v132);
  v133.origin.x = v13;
  v133.origin.y = v15;
  v133.size.width = v17;
  v133.size.height = v19;
  self->_height = CGRectGetHeight(v133);
  v129 = *MEMORY[0x1E69660D8];
  v130 = MEMORY[0x1E695E0F8];
  CVPixelBufferCreate(0, self->_width, self->_height, 0x34323066u, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1], &pixelBufferOut);
  CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FC8], kCVAttachmentMode_ShouldPropagate);
  if (!pixelBufferOut)
  {
    theDict = 0;
LABEL_80:
    v125 = 0;
    v126 = &v125;
    v127 = 0x2020000000;
    v100 = getACBSConfigFreeSymbolLoc(void)::ptr;
    v128 = getACBSConfigFreeSymbolLoc(void)::ptr;
    if (!getACBSConfigFreeSymbolLoc(void)::ptr)
    {
      *&v112.a = MEMORY[0x1E69E9820];
      *&v112.b = 3221225472;
      *&v112.c = ___ZL26getACBSConfigFreeSymbolLocv_block_invoke;
      *&v112.d = &unk_1E75C1E10;
      *&v112.tx = &v125;
      v101 = QuaggaLibrary();
      v102 = dlsym(v101, "ACBSConfigFree");
      *(*(*&v112.tx + 8) + 24) = v102;
      getACBSConfigFreeSymbolLoc(void)::ptr = *(*(*&v112.tx + 8) + 24);
      v100 = v126[3];
    }

    _Block_object_dispose(&v125, 8);
    if (v100)
    {
      v100(v106);
      if (theDict)
      {
        CFRelease(theDict);
      }

      CFRelease(cf);
      goto LABEL_86;
    }

    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
LABEL_94:
    __break(1u);
LABEL_95:
    __assert_rtn("[CIBarcodeDetector featuresInImage:options:]", "CIBarcodeDetector.mm", 254, "0 && unreachable");
  }

  v21 = [(CIBarcodeDetector *)self context];
  [(CIContext *)v21 render:v20 toCVPixelBuffer:pixelBufferOut];
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  Width = CVPixelBufferGetWidth(pixelBufferOut);
  Height = CVPixelBufferGetHeight(pixelBufferOut);
  v125 = 0;
  v126 = &v125;
  v127 = 0x2020000000;
  v24 = getACBSConfigSetSymbologiesEnabledSymbolLoc(void)::ptr;
  v128 = getACBSConfigSetSymbologiesEnabledSymbolLoc(void)::ptr;
  if (!getACBSConfigSetSymbologiesEnabledSymbolLoc(void)::ptr)
  {
    *&v112.a = MEMORY[0x1E69E9820];
    *&v112.b = 3221225472;
    *&v112.c = ___ZL43getACBSConfigSetSymbologiesEnabledSymbolLocv_block_invoke;
    *&v112.d = &unk_1E75C1E10;
    *&v112.tx = &v125;
    v25 = QuaggaLibrary();
    v26 = dlsym(v25, "ACBSConfigSetSymbologiesEnabled");
    *(*(*&v112.tx + 8) + 24) = v26;
    getACBSConfigSetSymbologiesEnabledSymbolLoc(void)::ptr = *(*(*&v112.tx + 8) + 24);
    v24 = v126[3];
  }

  _Block_object_dispose(&v125, 8);
  if (!v24)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_94;
  }

  v24(v106, cf);
  v125 = 0;
  v126 = &v125;
  v127 = 0x2020000000;
  v27 = getACBSConfigSetMaxQRModuleSamplesSymbolLoc(void)::ptr;
  v128 = getACBSConfigSetMaxQRModuleSamplesSymbolLoc(void)::ptr;
  if (!getACBSConfigSetMaxQRModuleSamplesSymbolLoc(void)::ptr)
  {
    *&v112.a = MEMORY[0x1E69E9820];
    *&v112.b = 3221225472;
    *&v112.c = ___ZL43getACBSConfigSetMaxQRModuleSamplesSymbolLocv_block_invoke;
    *&v112.d = &unk_1E75C1E10;
    *&v112.tx = &v125;
    v28 = QuaggaLibrary();
    v29 = dlsym(v28, "ACBSConfigSetMaxQRModuleSamples");
    *(*(*&v112.tx + 8) + 24) = v29;
    getACBSConfigSetMaxQRModuleSamplesSymbolLoc(void)::ptr = *(*(*&v112.tx + 8) + 24);
    v27 = v126[3];
  }

  _Block_object_dispose(&v125, 8);
  if (!v27)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_94;
  }

  v27(v106, 5000);
  v30 = pixelBufferOut;
  v125 = 0;
  v126 = &v125;
  v127 = 0x2020000000;
  v31 = getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLoc(void)::ptr;
  v128 = getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLoc(void)::ptr;
  if (!getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLoc(void)::ptr)
  {
    *&v112.a = MEMORY[0x1E69E9820];
    *&v112.b = 3221225472;
    *&v112.c = ___ZL68getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLocv_block_invoke;
    *&v112.d = &unk_1E75C1E10;
    *&v112.tx = &v125;
    v32 = QuaggaLibrary();
    v33 = dlsym(v32, "ACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBuffer");
    *(*(*&v112.tx + 8) + 24) = v33;
    getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLoc(void)::ptr = *(*(*&v112.tx + 8) + 24);
    v31 = v126[3];
  }

  _Block_object_dispose(&v125, 8);
  if (!v31)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_94;
  }

  theDict = v31(v106, v30, 0, 0.0, 0.0, Width, Height);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"SymbolDescriptionArray");
    v35 = Value;
    if (Value)
    {
      Count = CFArrayGetCount(Value);
      goto LABEL_29;
    }
  }

  else
  {
    v35 = 0;
  }

  Count = 0;
LABEL_29:
  Mutable = CFArrayCreateMutable(v11, 4, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    v40 = 0;
    v41 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v35, v40);
      v43 = CFDictionaryGetValue(ValueAtIndex, @"BarcodeType");
      if (CFEqual(v43, @"QR"))
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      ++v40;
    }

    while (v41 != v40);
  }

  if (!Mutable)
  {
    goto LABEL_79;
  }

  v44 = CFArrayGetCount(Mutable);
  if (v44 < 1)
  {
LABEL_78:
    CFRelease(Mutable);
LABEL_79:
    CVPixelBufferRelease(pixelBufferOut);
    goto LABEL_80;
  }

  v45 = 0;
  v46 = v44 & 0x7FFFFFFF;
  while (1)
  {
    v47 = CFArrayGetValueAtIndex(Mutable, v45);
    v48 = CFDictionaryGetValue(v47, @"CodeLocation");
    v49 = [v48 objectAtIndex:0];
    [objc_msgSend(v49 objectForKey:{@"X", "floatValue"}];
    v51 = v50;
    [objc_msgSend(v49 objectForKey:{@"Y", "floatValue"}];
    v53 = v52;
    v54 = [v48 objectAtIndex:1];
    [objc_msgSend(v54 objectForKey:{@"X", "floatValue"}];
    v56 = v55;
    [objc_msgSend(v54 objectForKey:{@"Y", "floatValue"}];
    v58 = v57;
    v59 = [v48 objectAtIndex:2];
    [objc_msgSend(v59 objectForKey:{@"X", "floatValue"}];
    v61 = v60;
    [objc_msgSend(v59 objectForKey:{@"Y", "floatValue"}];
    v63 = v62;
    v64 = [v48 objectAtIndex:3];
    [objc_msgSend(v64 objectForKey:{@"X", "floatValue"}];
    v66 = v65;
    [objc_msgSend(v64 objectForKey:{@"Y", "floatValue"}];
    v67 = v51;
    v68 = v56;
    v69 = v63;
    v70 = v66;
    v72 = self->_height;
    v73 = v72 - v53;
    v74 = v56;
    v75 = v72 - v58;
    v76 = v51;
    v77 = v72 - v69;
    v78 = v72 - v71;
    if (v61 >= v66)
    {
      v79 = v66;
    }

    else
    {
      v79 = v61;
    }

    v110 = v61;
    v111 = v68;
    if (v61 <= v66)
    {
      v80 = v66;
    }

    else
    {
      v80 = v61;
    }

    v81 = v76 <= v74;
    if (v76 >= v74)
    {
      v82 = v68;
    }

    else
    {
      v82 = v67;
    }

    if (v81)
    {
      v83 = v68;
    }

    else
    {
      v83 = v67;
    }

    if (v82 >= v79)
    {
      v84 = v79;
    }

    else
    {
      v84 = v82;
    }

    if (v83 <= v80)
    {
      v85 = v80;
    }

    else
    {
      v85 = v83;
    }

    if (v77 >= v78)
    {
      v86 = v78;
    }

    else
    {
      v86 = v77;
    }

    if (v77 <= v78)
    {
      v87 = v78;
    }

    else
    {
      v87 = v77;
    }

    if (v73 >= v75)
    {
      v88 = v75;
    }

    else
    {
      v88 = v73;
    }

    if (v73 <= v75)
    {
      v89 = v75;
    }

    else
    {
      v89 = v73;
    }

    if (v88 >= v86)
    {
      v90 = v86;
    }

    else
    {
      v90 = v88;
    }

    if (v89 <= v87)
    {
      v91 = v87;
    }

    else
    {
      v91 = v89;
    }

    v108 = v91;
    v109 = v85;
    v92 = CFDictionaryGetValue(v47, @"CodeProperties");
    v93 = [CFDictionaryGetValue(v92 @"ErrorCorrectionLevel")];
    if (v93 >= 4)
    {
      goto LABEL_95;
    }

    v94 = qword_19CF231C0[v93];
    v95 = [CFDictionaryGetValue(v92 @"SymbolVersion")];
    v96 = [CFDictionaryGetValue(v92 @"QRMASK")];
    v97 = CFDictionaryGetValue(v47, @"BarcodeRawData");
    if (!v97)
    {
      break;
    }

    v98 = [CIQRCodeDescriptor descriptorWithPayload:v97 symbolVersion:v95 maskPattern:v96 errorCorrectionLevel:v94];
    v112.a = v84;
    v112.b = v90;
    v112.c = v109 - v84;
    v112.d = v108 - v90;
    v112.tx = v67;
    v112.ty = v73;
    v113 = v70;
    v114 = v78;
    v115 = v111;
    v116 = v75;
    v117 = v110;
    v118 = v77;
    v119 = v98;
    v99 = [[CIQRCodeFeature alloc] initWithInternalRepresentation:&v112];

    if (v99)
    {
      [v107 addObject:v99];
    }

    if (v46 == ++v45)
    {
      goto LABEL_78;
    }
  }

  v107 = 0;
LABEL_86:
  v122(v121);
  return v107;
}

void __45__CIBarcodeDetector_featuresInImage_options___block_invoke(uint64_t a1)
{
  v2 = ci_signpost_log_detector();
  v3 = *(a1 + 32);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "CIBarcodeDetector", &unk_19CFBCBAE, v5, 2u);
    }
  }
}

+ (id)messageStringFromDescriptor:(id)a3
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (QuaggaLibraryCore(0))
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", objc_msgSend(a3, "errorCorrectionLevel")];
    v19[0] = @"QR";
    v18[0] = @"BarcodeType";
    v18[1] = @"BarcodeRawData";
    v19[1] = [a3 errorCorrectedPayload];
    v18[2] = @"CodeProperties";
    v17[0] = v4;
    v16[0] = @"ErrorCorrectionLevel";
    v16[1] = @"QRMASK";
    v17[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(a3, "maskPattern")}];
    v16[2] = @"SymbolVersion";
    v17[2] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "symbolVersion")}];
    v19[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v6 = getACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncodingSymbolLoc(void)::ptr;
    v15 = getACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncodingSymbolLoc(void)::ptr;
    if (!getACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncodingSymbolLoc(void)::ptr)
    {
      v7 = QuaggaLibrary();
      v13[3] = dlsym(v7, "ACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncoding");
      getACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncodingSymbolLoc(void)::ptr = v13[3];
      v6 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v6)
    {
      +[CIBarcodeDetector messageStringFromDescriptor:];
    }

    v8 = v6(v5, 0);
    v9 = CFDictionaryGetValue(v8, @"BarcodeString");
    CFRelease(v8);
    return v9;
  }

  else
  {
    v11 = ci_logger_api();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CIBarcodeDetector messageStringFromDescriptor:v11];
    }

    return 0;
  }
}

- (void)featuresInImage:(os_log_t)log options:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CIBarcodeDetector featuresInImage:options:]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s Unable to load Quagga.framework.", &v1, 0xCu);
}

+ (void)messageStringFromDescriptor:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "+[CIBarcodeDetector messageStringFromDescriptor:]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s Unable to load Quagga.framework.", &v1, 0xCu);
}

@end