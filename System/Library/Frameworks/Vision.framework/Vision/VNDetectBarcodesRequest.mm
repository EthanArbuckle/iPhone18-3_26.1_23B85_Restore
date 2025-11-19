@interface VNDetectBarcodesRequest
+ (NSArray)availableLocateModes;
+ (NSArray)supportedSymbologies;
+ (__CFString)MRCSymbologyForBarcodeSymbology:(id)a3;
+ (id)ACBSBarcodeTypeForBarcodeSymbology:(id)a3;
+ (id)_allBarcodeSymbologiesRev1;
+ (id)_allBarcodeSymbologiesRev2;
+ (id)_allBarcodeSymbologiesRev2Private;
+ (id)_allBarcodeSymbologiesRev3;
+ (id)_allBarcodeSymbologiesRev3Private;
+ (id)_allBarcodeSymbologiesRev4;
+ (id)_allBarcodeSymbologiesRev4Private;
+ (id)_ourACBSBarcodeTypeToBarcodeSymbologyMap;
+ (id)_ourBarcodeSymbologyToACBSBarcodeTypeMap;
+ (id)_ourBarcodeSymbologyToMRCSymbologyMap;
+ (id)_ourBarcodeSymbologyToMRCSymbologyMapPrivate;
+ (id)_ourBarcodeSymbologyToMRCSymbologyMapRev3;
+ (id)_ourBarcodeSymbologyToMRCSymbologyMapRev3Private;
+ (id)_ourBarcodeSymbologyToMRCSymbologyMapRev4;
+ (id)_ourBarcodeSymbologyToMRCSymbologyMapRev4Private;
+ (id)_ourMRCSymbologyToBarcodeSymbologyMap;
+ (id)_ourMRCSymbologyToBarcodeSymbologyMapPrivate;
+ (id)_ourMRCSymbologyToBarcodeSymbologyMapRev3;
+ (id)_ourMRCSymbologyToBarcodeSymbologyMapRev3Private;
+ (id)_ourMRCSymbologyToBarcodeSymbologyMapRev4;
+ (id)_ourMRCSymbologyToBarcodeSymbologyMapRev4Private;
+ (id)availableLocateModesRev1;
+ (id)availableLocateModesRev2;
+ (id)barcodeSymbologyForACBSBarcodeType:(id)a3;
+ (id)barcodeSymbologyForMRCSymbology:(__CFString *)a3;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
+ (id)supportedSymbologiesRev1;
+ (id)supportedSymbologiesRev2;
+ (id)supportedSymbologiesRev2Private;
+ (id)supportedSymbologiesRev3;
+ (id)supportedSymbologiesRev3Private;
+ (id)supportedSymbologiesRev4;
+ (id)supportedSymbologiesRev4Private;
- (ACBSConfig)_createACBSConfigAndReturnError:(id *)a3;
- (BOOL)_getCornerPointsFromCodeLocationPoints:(id)a3 bottomLeft:(CGPoint *)a4 topLeft:(CGPoint *)a5 topRight:(CGPoint *)a6 bottomRight:(CGPoint *)a7;
- (BOOL)coalesceCompositeSymbologies;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)stopAtFirstPyramidWith2DCode;
- (BOOL)useMLDetector;
- (BOOL)warmUpSession:(id)a3 error:(id *)a4;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (NSArray)supportedSymbologiesAndReturnError:(NSError *)error;
- (NSArray)symbologies;
- (NSString)locateMode;
- (id)_barcodesDetectedInImageBuffer:(id)a3 usingACBSConfig:(ACBSConfig *)a4 originatingRequestSpecifier:(id)a5 error:(id *)a6;
- (id)_createMRCDecoderOptionsForRevision:(unint64_t)a3 error:(id *)a4;
- (id)_machineReadableCodesDetectedInImageBuffer:(id)a3 originatingRequestSpecifier:(id)a4 inContext:(id)a5 mrcDetector:(id)a6 error:(id *)a7;
- (id)_newVNBarcodeSymbologyAztecDescriptorForACBSBarcodeInfo:(id)a3;
- (id)_newVNBarcodeSymbologyAztecDescriptorForMRCDescriptor:(__MRCDescriptor *)a3 error:(id *)a4;
- (id)_newVNBarcodeSymbologyPDF417DescriptorForACBSBarcodeInfo:(id)a3;
- (id)_newVNBarcodeSymbologyPDF417DescriptorForMRCDescriptor:(__MRCDescriptor *)a3 error:(id *)a4;
- (id)_newVNBarcodeSymbologyQRDescriptorForACBSBarcodeInfo:(id)a3;
- (id)_newVNBarcodeSymbologyQRDescriptorForMRCDescriptor:(__MRCDescriptor *)a3 error:(id *)a4;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)availableLocateModesAndReturnError:(id *)a3;
- (id)newBarcodeObservationForACBSBarcodeInfo:(id)a3 imageWidth:(unint64_t)a4 imageHeight:(unint64_t)a5 roiCroppingPixelRect:(CGRect)a6 originatingRequestSpecifier:(id)a7 error:(id *)a8;
- (id)newBarcodeObservationForMRCDescriptor:(__MRCDescriptor *)a3 roiCroppingPixelRect:(CGRect)a4 originatingRequestSpecifier:(id)a5 error:(id *)a6;
- (id)supportedComputeStageDevicesAndReturnError:(id *)a3;
- (int)_ACBarcodeRecognizerLocateMode;
- (int64_t)_MRCLocateMode;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)a3;
- (void)setCoalesceCompositeSymbologies:(BOOL)coalesceCompositeSymbologies;
- (void)setLocateMode:(id)a3;
- (void)setStopAtFirstPyramidWith2DCode:(BOOL)a3;
- (void)setSymbologies:(NSArray *)symbologies;
- (void)setUseMLDetector:(BOOL)a3;
@end

@implementation VNDetectBarcodesRequest

- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = VNDetectBarcodesRequest;
  [(VNRequest *)&v5 resolvedRevisionDidChangeFromRevision:a3];
  v4 = [(VNRequest *)self configuration];
  [v4 setDefaultSymbologiesForRevision:{-[VNRequest resolvedRevision](self, "resolvedRevision")}];
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v7.receiver = self;
    v7.super_class = VNDetectBarcodesRequest;
    [(VNImageBasedRequest *)&v7 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VNDetectBarcodesRequest *)v4 symbologies];
      [(VNDetectBarcodesRequest *)self setSymbologies:v5];

      v6 = [(VNDetectBarcodesRequest *)v4 locateMode];
      [(VNDetectBarcodesRequest *)self setLocateMode:v6];

      [(VNDetectBarcodesRequest *)self setStopAtFirstPyramidWith2DCode:[(VNDetectBarcodesRequest *)v4 stopAtFirstPyramidWith2DCode]];
      [(VNDetectBarcodesRequest *)self setUseMLDetector:[(VNDetectBarcodesRequest *)v4 useMLDetector]];
    }
  }
}

- (BOOL)warmUpSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = VNDetectBarcodesRequest;
  if ([(VNRequest *)&v16 warmUpSession:v6 error:a4])
  {
    v7 = [(VNRequest *)self resolvedRevision];
    v8 = [(VNDetectBarcodesRequest *)self applicableDetectorTypeForRevision:v7 error:a4];
    v9 = v8;
    if (v8)
    {
      if ([v8 isEqualToString:&stru_1F1976900])
      {
LABEL_6:
        v14 = 1;
LABEL_10:

        goto LABEL_11;
      }

      v10 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:v7 session:v6];
      v11 = [v6 detectorOfType:v9 configuredWithOptions:v10 error:a4];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 warmUpSession:v6 withOptions:v10 error:a4];

        if (v13)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }
    }

    v14 = 0;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNDetectBarcodesRequest *)self locateMode];
  v6 = [v4 locateMode];

  if (v5 == v6 && (v7 = -[VNDetectBarcodesRequest stopAtFirstPyramidWith2DCode](self, "stopAtFirstPyramidWith2DCode"), v7 == [v4 stopAtFirstPyramidWith2DCode]) && (v8 = -[VNDetectBarcodesRequest useMLDetector](self, "useMLDetector"), v8 == objc_msgSend(v4, "useMLDetector")) && (v9 = -[VNDetectBarcodesRequest coalesceCompositeSymbologies](self, "coalesceCompositeSymbologies"), v9 == objc_msgSend(v4, "coalesceCompositeSymbologies")) && (-[VNDetectBarcodesRequest symbologies](self, "symbologies"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "symbologies"), v11 = objc_claimAutoreleasedReturnValue(), v12 = VisionCoreEquivalentOrNilUnorderedArrays(), v11, v10, (v12 & 1) != 0))
  {
    v15.receiver = self;
    v15.super_class = VNDetectBarcodesRequest;
    v13 = [(VNImageBasedRequest *)&v15 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = [(VNRequest *)self resolvedRevision];
  if (v5 > 3737841663)
  {
    if ((v5 - 3737841665) < 2)
    {
LABEL_6:
      v6 = [(VNDetectBarcodesRequest *)self _createMRCDecoderOptionsForRevision:v5 error:a3];
      if (v6)
      {
        v7 = MRCContextCopySupportedComputeDevicesForDecoderUsingOptions();
        v8 = v7;
        if (v7)
        {
          v15 = @"VNComputeStageMain";
          v16 = v7;
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

LABEL_17:
          goto LABEL_18;
        }

        if (a3)
        {
          v11 = objc_alloc(MEMORY[0x1E696AEC0]);
          v12 = CFErrorCopyDescription(0);
          v13 = [v11 initWithFormat:@"No compute devices found: %@", v12];

          *a3 = [VNError errorForDataUnavailableWithLocalizedDescription:v13];
        }

        CFRelease(0);
      }

      v9 = 0;
      goto LABEL_17;
    }

    if (v5 != 3737841664)
    {
      goto LABEL_11;
    }

LABEL_10:
    v17 = @"VNComputeStageMain";
    v10 = +[VNComputeDeviceUtilities allCPUComputeDevices];
    v18[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    goto LABEL_18;
  }

  if ((v5 - 1) < 2)
  {
    goto LABEL_10;
  }

  if ((v5 - 3) < 2)
  {
    goto LABEL_6;
  }

LABEL_11:
  if (a3)
  {
    [VNError errorForUnsupportedRevision:v5 ofRequest:self];
    *a3 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_18:

  return v9;
}

- (void)setCoalesceCompositeSymbologies:(BOOL)coalesceCompositeSymbologies
{
  v3 = coalesceCompositeSymbologies;
  v4 = [(VNRequest *)self configuration];
  [v4 setCoalesceCompositeSymbologies:v3];
}

- (BOOL)coalesceCompositeSymbologies
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 coalesceCompositeSymbologies];

  return v3;
}

- (void)setUseMLDetector:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setUseMLDetector:v3];
}

- (BOOL)useMLDetector
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 useMLDetector];

  return v3;
}

- (void)setStopAtFirstPyramidWith2DCode:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setStopAtFirstPyramidWith2DCode:v3];
}

- (BOOL)stopAtFirstPyramidWith2DCode
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 stopAtFirstPyramidWith2DCode];

  return v3;
}

- (void)setLocateMode:(id)a3
{
  v5 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setLocateMode:v5];
}

- (NSString)locateMode
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 locateMode];

  return v3;
}

- (void)setSymbologies:(NSArray *)symbologies
{
  v5 = symbologies;
  if ([(NSArray *)v5 count])
  {
    v4 = [(VNRequest *)self configuration];
    [v4 setSymbologies:v5];
  }
}

- (NSArray)supportedSymbologiesAndReturnError:(NSError *)error
{
  v5 = [(VNRequest *)self revision];
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        v6 = +[VNDetectBarcodesRequest supportedSymbologiesRev1];
        goto LABEL_20;
      case 2:
        v6 = +[VNDetectBarcodesRequest supportedSymbologiesRev2];
        goto LABEL_20;
      case 3:
        v6 = +[VNDetectBarcodesRequest supportedSymbologiesRev3];
        goto LABEL_20;
    }
  }

  else if (v5 > 3737841664)
  {
    if (v5 == 3737841665)
    {
      v6 = +[VNDetectBarcodesRequest supportedSymbologiesRev3Private];
      goto LABEL_20;
    }

    if (v5 == 3737841666)
    {
      v6 = +[VNDetectBarcodesRequest supportedSymbologiesRev4Private];
      goto LABEL_20;
    }
  }

  else
  {
    if (v5 == 4)
    {
      v6 = +[VNDetectBarcodesRequest supportedSymbologiesRev4];
      goto LABEL_20;
    }

    if (v5 == 3737841664)
    {
      v6 = +[VNDetectBarcodesRequest supportedSymbologiesRev2Private];
      goto LABEL_20;
    }
  }

  if (error)
  {
    v7 = [VNError errorForUnsupportedRevision:[(VNRequest *)self revision] ofRequest:self];
    v8 = v7;
    v6 = 0;
    *error = v7;
  }

  else
  {
    v6 = 0;
  }

LABEL_20:

  return v6;
}

- (NSArray)symbologies
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 symbologies];

  return v3;
}

- (id)availableLocateModesAndReturnError:(id *)a3
{
  v5 = [(VNRequest *)self revision];
  if (v5 - 2 >= 3 && v5 - 3737841664u >= 3)
  {
    if (v5 == 1)
    {
      v7 = +[VNDetectBarcodesRequest availableLocateModesRev1];
    }

    else if (a3)
    {
      v9 = [VNError errorForUnsupportedRevision:[(VNRequest *)self revision] ofRequest:self];
      v10 = v9;
      v7 = 0;
      *a3 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = +[VNDetectBarcodesRequest availableLocateModesRev2];
  }

  return v7;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9 && [(VNRequest *)self validateImageBuffer:v9 ofNonZeroWidth:0 andHeight:0 error:a5])
  {
    v10 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:a3 error:a5];
    if (!v10)
    {
      v15 = 0;
LABEL_23:

      goto LABEL_24;
    }

    if (a3 - 2 >= 3 && a3 - 3737841664u >= 3)
    {
      if (a3 == 1)
      {
        v16 = [(VNDetectBarcodesRequest *)self _createACBSConfigAndReturnError:a5];
        if (v16)
        {
          v14 = [(VNDetectBarcodesRequest *)self _barcodesDetectedInImageBuffer:v9 usingACBSConfig:v16 originatingRequestSpecifier:v10 error:a5];
          ACBSConfigFree();
          if (v14)
          {
LABEL_20:
            v17 = &__block_literal_global_125;
            v18 = [v14 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_125];

            v14 = v18;
LABEL_21:
            [(VNRequest *)self setResults:v14];
            v15 = 1;
            goto LABEL_22;
          }

LABEL_16:
          v15 = 0;
LABEL_22:

          goto LABEL_23;
        }
      }

      else if (a5)
      {
        [VNError errorForUnsupportedRevision:a3 ofRequest:self];
        v14 = 0;
        *a5 = v15 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v11 = [v8 session];
      v12 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:a3 session:v11];
      v13 = [v11 detectorOfType:@"VNMRCDetectorType" configuredWithOptions:v12 error:a5];

      if (v13)
      {
        v14 = [(VNDetectBarcodesRequest *)self _machineReadableCodesDetectedInImageBuffer:v9 originatingRequestSpecifier:v10 inContext:v8 mrcDetector:v13 error:a5];

        if (v14)
        {
          if (a3 - 3737841664u >= 3 && a3 - 2 > 2 || [(VisionCoreRuntimeUtilities *)VNRuntimeUtilities linkTimeOrRunTimeAtLeastVersion:393216])
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }

    v14 = 0;
    goto LABEL_16;
  }

  v15 = 0;
LABEL_24:

  return v15;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 - 2 < 3 || a3 - 3737841664u < 3)
  {
    v4 = @"VNMRCDetectorType";
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = &stru_1F1976900;
    goto LABEL_4;
  }

  if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

LABEL_5:

  return v4;
}

- (id)_barcodesDetectedInImageBuffer:(id)a3 usingACBSConfig:(ACBSConfig *)a4 originatingRequestSpecifier:(id)a5 error:(id *)a6
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v40 = a5;
  v10 = [v9 width];
  v11 = [v9 height];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __108__VNDetectBarcodesRequest__barcodesDetectedInImageBuffer_usingACBSConfig_originatingRequestSpecifier_error___block_invoke;
  v46[3] = &unk_1E77B6810;
  v46[4] = self;
  if (![VNValidationUtilities validateNonZeroImageWidth:v10 height:v11 componentNameProvidingBlock:v46 error:a6])
  {
    v20 = 0;
    goto LABEL_27;
  }

  [(VNImageBasedRequest *)self regionOfInterestPixelRectForWidth:v10 height:v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v45 = 0;
  v20 = [v9 croppedBufferWithWidth:v16 height:v18 format:875704422 cropRect:0 options:a6 error:&v45 pixelBufferRepsCacheKey:?];
  v37 = v45;
  if (v20)
  {
    v38 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [v38 addPointer:v37];
    v39 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [v39 addPointer:v9];
    [v9 orientation];
    v21 = ACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBuffer();
    v22 = v21 != 0;
    v36 = v21;
    if (a6 && !v21)
    {
      [VNError errorWithCode:9 message:@"failed to analyze image"];
      v36 = 0;
      *a6 = v22 = 0;
    }

    CVPixelBufferRelease(v20);
    if (!v22)
    {
      v20 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v23 = *MEMORY[0x1E69C6980];
    v24 = [v36 objectForKeyedSubscript:*MEMORY[0x1E69C6980]];
    v25 = [v24 integerValue];

    if (v25)
    {
      v26 = [v36 objectForKeyedSubscript:v23];
      [(VNRequest *)self recordWarning:v23 value:v26];
    }

    else
    {
      v26 = [v36 objectForKeyedSubscript:*MEMORY[0x1E69C6988]];
      v27 = [v26 count];
      if (v27)
      {
        v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v27];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        obj = v26;
        v29 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v29)
        {
          v30 = *v42;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v42 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v32 = [(VNDetectBarcodesRequest *)self newBarcodeObservationForACBSBarcodeInfo:*(*(&v41 + 1) + 8 * i) imageWidth:v10 imageHeight:v11 roiCroppingPixelRect:v40 originatingRequestSpecifier:a6 error:v13, v15, v17, v19];
              v33 = v32;
              if (!v32)
              {

                v20 = 0;
                goto LABEL_23;
              }

              [v32 setRequestImageBuffers:v39];
              [v33 setRequestImageBuffersCacheKeys:v38];
              [v28 addObject:v33];
            }

            v29 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        v20 = v28;
LABEL_23:

        v26 = obj;
        goto LABEL_24;
      }
    }

    v20 = MEMORY[0x1E695E0F0];
LABEL_24:

    goto LABEL_25;
  }

LABEL_26:

LABEL_27:

  return v20;
}

NSString *__108__VNDetectBarcodesRequest__barcodesDetectedInImageBuffer_usingACBSConfig_originatingRequestSpecifier_error___block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (id)newBarcodeObservationForACBSBarcodeInfo:(id)a3 imageWidth:(unint64_t)a4 imageHeight:(unint64_t)a5 roiCroppingPixelRect:(CGRect)a6 originatingRequestSpecifier:(id)a7 error:(id *)a8
{
  height = a6.size.height;
  y = a6.origin.y;
  x = a6.origin.x;
  v16 = a3;
  v17 = a7;
  v18 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69C69A8]];
  if (v18)
  {
    v19 = [VNDetectBarcodesRequest barcodeSymbologyForACBSBarcodeType:v18];
    if (!v19)
    {
      if (a8)
      {
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown barcode type of '%@'", v18];
        *a8 = [VNError errorForInternalErrorWithLocalizedDescription:v31];
      }

      v24 = 0;
      goto LABEL_27;
    }

    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_new%@DescriptorForACBSBarcodeInfo:", v19];
    v21 = NSSelectorFromString(v20);
    if (v21 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v22 = ([(VNDetectBarcodesRequest *)self methodForSelector:v21])(self, v21, v16);
      if (v22)
      {
LABEL_11:

        v35 = *MEMORY[0x1E695EFF8];
        v36 = v35;
        v33 = v35;
        v34 = v35;
        v25 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69C6990]];
        v26 = [(VNDetectBarcodesRequest *)self _getCornerPointsFromCodeLocationPoints:v25 bottomLeft:&v36 topLeft:&v35 topRight:&v34 bottomRight:&v33];

        if (v26)
        {
          *&v36 = (x + *&v36) / a4;
          *(&v36 + 1) = (y + height - *(&v36 + 1)) / a5;
          *&v35 = (x + *&v35) / a4;
          *(&v35 + 1) = (y + height - *(&v35 + 1)) / a5;
          *&v34 = (x + *&v34) / a4;
          *(&v34 + 1) = (y + height - *(&v34 + 1)) / a5;
          *&v33 = (x + *&v33) / a4;
          *(&v33 + 1) = (y + height - *(&v33 + 1)) / a5;
          v27 = [VNBarcodeObservation alloc];
          v24 = [(VNBarcodeObservation *)v27 initWithOriginatingRequestSpecifier:v17 symbology:v19 descriptor:v22 topLeft:v36 topRight:v33 bottomRight:v34 bottomLeft:v35];
          if (v24)
          {
            v28 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69C69B0]];
            v29 = v28;
            if (v28)
            {
              [v28 floatValue];
              [(VNObservation *)v24 setConfidence:?];
            }

            [(VNBarcodeObservation *)v24 setACBSBarcodeInfo:v16];
            v30 = v24;
          }

          else if (a8)
          {
            *a8 = +[VNError errorForMemoryAllocationFailure];
          }
        }

        else if (a8)
        {
          [VNError errorForInternalErrorWithLocalizedDescription:@"barcode location is not available"];
          *a8 = v24 = 0;
        }

        else
        {
          v24 = 0;
        }

LABEL_27:
        goto LABEL_28;
      }

      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to create a barcode descriptor for %@", v19];
      [(VNRequest *)self recordWarning:@"VNDetectBarcodesRequest" value:v23];
    }

    else
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"creation of a barcode descriptor for %@ is not supported", v19];
      [(VNRequest *)self recordWarning:@"VNDetectBarcodesRequest" value:v23];
    }

    v22 = 0;
    goto LABEL_11;
  }

  if (a8)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"barcode type is not available"];
    *a8 = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

LABEL_28:

  return v24;
}

- (BOOL)_getCornerPointsFromCodeLocationPoints:(id)a3 bottomLeft:(CGPoint *)a4 topLeft:(CGPoint *)a5 topRight:(CGPoint *)a6 bottomRight:(CGPoint *)a7
{
  v11 = a3;
  v12 = v11;
  if (v11 && [v11 count] == 4)
  {
    v13 = [v12 objectAtIndexedSubscript:0];
    if (CGPointMakeWithDictionaryRepresentation(v13, a4))
    {
      v14 = [v12 objectAtIndexedSubscript:1];
      if (CGPointMakeWithDictionaryRepresentation(v14, a5))
      {
        v15 = [v12 objectAtIndexedSubscript:2];
        if (CGPointMakeWithDictionaryRepresentation(v15, a6))
        {
          v16 = [v12 objectAtIndexedSubscript:3];
          v17 = CGPointMakeWithDictionaryRepresentation(v16, a7);
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_machineReadableCodesDetectedInImageBuffer:(id)a3 originatingRequestSpecifier:(id)a4 inContext:(id)a5 mrcDetector:(id)a6 error:(id *)a7
{
  v87[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v78 = a4;
  v77 = a5;
  v76 = a6;
  v13 = [(VNDetectBarcodesRequest *)self _createMRCDecoderOptionsForRevision:[(VNRequest *)self revision] error:a7];
  if (!v13 || (v14 = [v12 width], v15 = objc_msgSend(v12, "height"), v84[0] = MEMORY[0x1E69E9820], v84[1] = 3221225472, v84[2] = __126__VNDetectBarcodesRequest__machineReadableCodesDetectedInImageBuffer_originatingRequestSpecifier_inContext_mrcDetector_error___block_invoke, v84[3] = &unk_1E77B6810, v84[4] = self, !+[VNValidationUtilities validateNonZeroImageWidth:height:componentNameProvidingBlock:error:](VNValidationUtilities, "validateNonZeroImageWidth:height:componentNameProvidingBlock:error:", v14, v15, v84, a7)))
  {
    v30 = 0;
    goto LABEL_53;
  }

  [(VNImageBasedRequest *)self regionOfInterestPixelRectForWidth:v14 height:v15];
  v19 = v18;
  v21 = v20;
  v22 = v16;
  v23 = v17;
  if (v16 >= v17)
  {
    v24 = v16;
  }

  else
  {
    v24 = v17;
  }

  v25 = [(VNRequest *)self maximumProcessingDimensionOnTheLongSide];
  v26 = 1.0;
  if (v25)
  {
    v27 = v25;
    height = v23;
    width = v22;
    x = v19;
    y = v21;
    if (v24 > v25)
    {
      v26 = v27 / v24;
      v89.origin.x = v19 * (v27 / v24);
      v89.origin.y = v21 * v26;
      v89.size.width = v22 * v26;
      v89.size.height = v23 * v26;
      v90 = CGRectIntegral(v89);
      x = v90.origin.x;
      y = v90.origin.y;
      width = v90.size.width;
      height = v90.size.height;
    }
  }

  else
  {
    height = v23;
    width = v22;
    x = v19;
    y = v21;
  }

  v83 = 0;
  v31 = [v12 croppedBufferWithWidth:width height:height format:875704422 cropRect:0 options:a7 error:&v83 pixelBufferRepsCacheKey:{v19, v21, v22, v23}];
  v74 = v83;
  pixelBuffer = v31;
  if (v31)
  {
    v69 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [v69 addPointer:v74];
    v68 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [v68 addPointer:v12];
    v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
    CVPixelBufferGetWidth(v31);
    CVPixelBufferGetHeight(v31);
    cf = MRCSampleCreateWithCVPixelBuffer();
    if (!cf)
    {
      if (a7)
      {
        [VNError errorForDataUnavailableWithLocalizedDescription:@"Failed to create MRCSample"];
        *a7 = v30 = 0;
LABEL_51:

        CVPixelBufferRelease(pixelBuffer);
        goto LABEL_52;
      }

LABEL_50:
      v30 = 0;
      goto LABEL_51;
    }

    v65 = [v77 session];
    v32 = 0x1E695D000;
    if ([(VNDetectBarcodesRequest *)self useSegmentationPregating]&& ![(VNDetectBarcodesRequest *)self useMLDetector])
    {
      v33 = [VNImageRequestHandler alloc];
      v75 = [(VNImageRequestHandler *)v33 initWithCVPixelBuffer:pixelBuffer options:MEMORY[0x1E695E0F8] session:v65];
      v64 = objc_alloc_init(VNRecognizeDocumentElementsRequest);
      [(VNImageBasedRequest *)v64 applyConfigurationOfRequest:self];
      [(VNRequest *)v64 setRevision:1];
      v34 = [(VNRecognizeDocumentElementsRequest *)v64 machineReadableCodeElements];
      [v34 setRecognize:1];

      v35 = [(VNRecognizeDocumentElementsRequest *)v64 machineReadableCodeElements];
      [v35 setGenerateSegmentationMask:1];

      v87[0] = v64;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:1];
      v37 = [(VNImageRequestHandler *)v75 performRequests:v36 error:0];

      if (v37)
      {
        v38 = [(VNRequest *)v64 results];
        v62 = [v38 firstObject];

        v39 = [v62 segmentationMask];
        texture = CVPixelBufferRetain([v39 pixelBuffer]);

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v40 = [v62 labels];
        v41 = [v40 countByEnumeratingWithState:&v79 objects:v86 count:16];
        if (v41)
        {
          v42 = *v80;
          obj = v40;
          while (2)
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v80 != v42)
              {
                objc_enumerationMutation(obj);
              }

              v44 = *(*(&v79 + 1) + 8 * i);
              v45 = [v44 identifier];
              if ([v45 isEqualToString:@"VNRecognizeDocumentElementIdentifierAppCode"])
              {

LABEL_32:
                goto LABEL_33;
              }

              v46 = [v44 identifier];
              v47 = [v46 isEqualToString:@"VNRecognizeDocumentElementIdentifierQRCode"];

              if (v47)
              {
                goto LABEL_32;
              }
            }

            v40 = obj;
            v41 = [obj countByEnumeratingWithState:&v79 objects:v86 count:16];
            if (v41)
            {
              continue;
            }

            break;
          }
        }

        v48 = v64;
        goto LABEL_46;
      }

      texture = 0;
LABEL_33:

      v32 = 0x1E695D000uLL;
    }

    else
    {
      texture = 0;
    }

    v75 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:[(VNRequest *)self resolvedRevision] session:v65];
    v85 = v12;
    v49 = [*(v32 + 3784) arrayWithObjects:&v85 count:1];
    [(VNImageRequestHandler *)v75 setObject:v49 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    [(VNImageRequestHandler *)v75 setObject:v13 forKeyedSubscript:@"VNMRCDetectorProcessOption_MRCDecoderOptions"];
    [(VNImageRequestHandler *)v75 setObject:cf forKeyedSubscript:@"VNMRCDetectorProcessOption_MRCSample"];
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectBarcodesRequest useMLDetector](self, "useMLDetector")}];
    [(VNImageRequestHandler *)v75 setObject:v50 forKeyedSubscript:@"VNMRCDetectorProcessOption_UseMLBasedDetector"];

    if (texture)
    {
      [(VNImageRequestHandler *)v75 setObject:texture forKeyedSubscript:@"VNMRCDetectorProcessOption_SegmentationMask"];
    }

    if (v26 != 1.0)
    {
      v51 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
      [(VNImageRequestHandler *)v75 setObject:v51 forKeyedSubscript:@"VNMRCDetectorProcessOption_MaxDimensionSideScale"];
    }

    v52 = [v77 qosClass];
    [(VNImageBasedRequest *)self regionOfInterest];
    v53 = [v76 processUsingQualityOfServiceClass:v52 options:v75 regionOfInterest:self warningRecorder:a7 error:0 progressHandler:?];
    v48 = v53;
    if (v53 && [(VNRecognizeDocumentElementsRequest *)v53 count])
    {
      v54 = [(VNRecognizeDocumentElementsRequest *)v48 objectAtIndexedSubscript:0];

      if (v54)
      {
        DescriptorCount = MRCDecoderResultGetDescriptorCount();
        if (DescriptorCount < 1)
        {
LABEL_45:
          v59 = 1;
        }

        else
        {
          v56 = 0;
          while (1)
          {
            v57 = [(VNDetectBarcodesRequest *)self newBarcodeObservationForMRCDescriptor:MRCDecoderResultGetDescriptorAtIndex() roiCroppingPixelRect:v78 originatingRequestSpecifier:a7 error:x, y, width, height];
            v58 = v57;
            v59 = v57 != 0;
            if (!v57)
            {
              break;
            }

            [v57 setRequestImageBuffers:v68];
            [v58 setRequestImageBuffersCacheKeys:v69];
            [v70 addObject:v58];

            if (DescriptorCount == ++v56)
            {
              goto LABEL_45;
            }
          }
        }

        CFRelease(v54);
        if (!v59)
        {
          v60 = 0;
LABEL_48:

          CVPixelBufferRelease(texture);
          CFRelease(cf);
          if (v60)
          {
            v30 = v70;
            goto LABEL_51;
          }

          goto LABEL_50;
        }
      }

LABEL_47:
      v60 = 1;
      goto LABEL_48;
    }

LABEL_46:

    goto LABEL_47;
  }

  v30 = 0;
LABEL_52:

LABEL_53:

  return v30;
}

NSString *__126__VNDetectBarcodesRequest__machineReadableCodesDetectedInImageBuffer_originatingRequestSpecifier_inContext_mrcDetector_error___block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (id)newBarcodeObservationForMRCDescriptor:(__MRCDescriptor *)a3 roiCroppingPixelRect:(CGRect)a4 originatingRequestSpecifier:(id)a5 error:(id *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  v11 = a5;
  v12 = MRCDescriptorCopyAttribute();
  if (v12)
  {
    v13 = [VNDetectBarcodesRequest barcodeSymbologyForMRCSymbology:v12];
    CFRelease(v12);
    if (!v13)
    {
      if (a6)
      {
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown barcode type of '%@'", v12];
        *a6 = [VNError errorForInternalErrorWithLocalizedDescription:v25];
      }

      v17 = 0;
      goto LABEL_31;
    }

    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_new%@DescriptorForMRCDescriptor:error:", v13];
    v15 = NSSelectorFromString(v14);
    if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = ([(VNDetectBarcodesRequest *)self methodForSelector:v15])(self, v15, a3, a6);
    }

    else
    {
      v16 = 0;
    }

    v35 = *MEMORY[0x1E695EFF8];
    point = v35;
    v33 = v35;
    v34 = v35;
    v18 = MRCDescriptorCopyAttribute();
    v19 = v18;
    if (v18)
    {
      if (CFArrayGetCount(v18) == 4)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
        CGPointMakeWithDictionaryRepresentation(ValueAtIndex, &point);
        v21 = CFArrayGetValueAtIndex(v19, 1);
        CGPointMakeWithDictionaryRepresentation(v21, &v35);
        v22 = CFArrayGetValueAtIndex(v19, 2);
        CGPointMakeWithDictionaryRepresentation(v22, &v34);
        v23 = CFArrayGetValueAtIndex(v19, 3);
        CGPointMakeWithDictionaryRepresentation(v23, &v33);
        v24 = 1;
      }

      else if (a6)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"invalid barcode location information"];
        *a6 = v24 = 0;
      }

      else
      {
        v24 = 0;
      }

      CFRelease(v19);
      if (v24)
      {
        point.x = point.x / width;
        point.y = (height - point.y) / height;
        v35.x = v35.x / width;
        v35.y = (height - v35.y) / height;
        v34.x = v34.x / width;
        v34.y = (height - v34.y) / height;
        v33.x = v33.x / width;
        v33.y = (height - v33.y) / height;
        v26 = [VNBarcodeObservation alloc];
        v17 = [(VNBarcodeObservation *)v26 initWithOriginatingRequestSpecifier:v11 symbology:v13 descriptor:v16 mrcDescriptor:a3 topLeft:point.x topRight:point.y bottomRight:v33.x bottomLeft:v33.y, v34.x, v34.y, v35.x, v35.y];
        if (v17)
        {
          v27 = MRCDescriptorCopyAttribute();
          v28 = v27;
          if (v27)
          {
            valuePtr = 0;
            CFNumberGetValue(v27, kCFNumberFloatType, &valuePtr);
            LODWORD(v29) = valuePtr;
            [(VNObservation *)v17 setConfidence:v29];
            CFRelease(v28);
          }

          v30 = v17;
        }

        else if (a6)
        {
          *a6 = +[VNError errorForMemoryAllocationFailure];
        }

        goto LABEL_30;
      }
    }

    else if (a6)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"barcode location is not available"];
      *a6 = v17 = 0;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    v17 = 0;
    goto LABEL_30;
  }

  if (a6)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"barcode type is not available"];
    *a6 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_32:

  return v17;
}

- (id)_createMRCDecoderOptionsForRevision:(unint64_t)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v7)
  {
    if (a4)
    {
      +[VNError errorForMemoryAllocationFailure];
      *a4 = v8 = 0;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v8 = v7;
  v9 = [MEMORY[0x1E696AD98] numberWithLong:{-[VNDetectBarcodesRequest _MRCLocateMode](self, "_MRCLocateMode")}];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69C67A8]];

  [v8 setObject:&unk_1F19C1468 forKeyedSubscript:*MEMORY[0x1E69C6790]];
  if ([(VNDetectBarcodesRequest *)self coalesceCompositeSymbologies])
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69C67B0]];
  }

  v26 = [(VNDetectBarcodesRequest *)self symbologies];
  if (!v26 || ![v26 count])
  {
    if (a4)
    {
      *a4 = [VNError errorWithCode:5 message:@"barcode detection requires at least one element in the symbologies property"];
    }

    goto LABEL_41;
  }

  v24 = a4;
  v10 = [v26 count];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v10, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    if (a4)
    {
      *a4 = +[VNError errorForMemoryAllocationFailure];
    }

LABEL_41:

LABEL_42:
    v8 = 0;
    goto LABEL_43;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v26;
  v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = *v28;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        if (a3 > 3737841663)
        {
          switch(a3)
          {
            case 0xDECAF000uLL:
              v16 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapPrivate];
              v17 = [v16 objectForKeyedSubscript:v15];
              break;
            case 0xDECAF001uLL:
              v16 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3Private];
              v17 = [v16 objectForKeyedSubscript:v15];
              break;
            case 0xDECAF002uLL:
              v16 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4Private];
              v17 = [v16 objectForKeyedSubscript:v15];
              break;
            default:
              goto LABEL_36;
          }
        }

        else
        {
          switch(a3)
          {
            case 2uLL:
              v16 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMap];
              v17 = [v16 objectForKeyedSubscript:v15];
              break;
            case 3uLL:
              v16 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3];
              v17 = [v16 objectForKeyedSubscript:v15];
              break;
            case 4uLL:
              v16 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4];
              v17 = [v16 objectForKeyedSubscript:v15];
              break;
            default:
              goto LABEL_36;
          }
        }

        v18 = v17;

        if (!v18)
        {
LABEL_36:
          if (v24)
          {
            v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ is not a supported barcode symbology", v15];
            *v24 = [VNError errorWithCode:5 message:v21];
          }

          CFRelease(Mutable);

          goto LABEL_41;
        }

        CFArrayAppendValue(Mutable, v18);
      }

      v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  [v8 setObject:Mutable forKeyedSubscript:*MEMORY[0x1E69C67C0]];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectBarcodesRequest stopAtFirstPyramidWith2DCode](self, "stopAtFirstPyramidWith2DCode")}];
  [v8 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69C67B8]];

  v20 = 0x20000;
  if (a3 <= 3737841664)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

LABEL_49:
    v20 = 196608;
    goto LABEL_50;
  }

  if (a3 == 3737841665)
  {
    goto LABEL_49;
  }

  if (a3 == 3737841666)
  {
LABEL_48:
    v20 = 0x40000;
  }

LABEL_50:
  v23 = [MEMORY[0x1E696AD98] numberWithLong:v20];
  [v8 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69C6798]];

LABEL_43:

  return v8;
}

- (int64_t)_MRCLocateMode
{
  v3 = [(VNDetectBarcodesRequest *)self locateMode];
  if (!v3)
  {
    v4 = [(VNRequest *)self detectionLevel];
    if (v4 > 2)
    {
      v3 = 0;
LABEL_9:
      v5 = 9;
      goto LABEL_10;
    }

    v3 = off_1E77B39E8[v4];
  }

  if ([VNDetectBarcodesRequest _MRCLocateMode]::onceToken != -1)
  {
    dispatch_once(&[VNDetectBarcodesRequest _MRCLocateMode]::onceToken, &__block_literal_global_169);
  }

  value = 0;
  if (!NSMapMember([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, v3, 0, &value))
  {
    goto LABEL_9;
  }

  v5 = value;
LABEL_10:

  return v5;
}

void __41__VNDetectBarcodesRequest__MRCLocateMode__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:1282 capacity:10];
  v1 = [VNDetectBarcodesRequest _MRCLocateMode]::mapTable;
  [VNDetectBarcodesRequest _MRCLocateMode]::mapTable = v0;

  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterOneVertical", 2);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterOneVerticalThick", 3);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeVertical", 4);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeVerticalCrossed", 5);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterOneHorizontal", 6);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterOneHorizontalThick", 7);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeHorizontal", 8);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeHorizontalCrossed", 9);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterOneEachDirection", 0xA);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeEachDirection", 0xB);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterFiveEachDirection", 0xC);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeEachDirectionAndCoverageAndDiagonals", 0xD);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeVerticalAndCoverageAndDiagonals", 0xE);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeHorizontalAndCoverageAndDiagonals", 0xF);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _MRCLocateMode]::mapTable, @"VNDetectBarcodesLocateModeRegularIntervalHorizontal", 0x11);
  v2 = [VNDetectBarcodesRequest _MRCLocateMode]::mapTable;

  NSMapInsertKnownAbsent(v2, @"VNDetectBarcodesLocateModeRegularIntervalVertical", 0x12);
}

- (ACBSConfig)_createACBSConfigAndReturnError:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = ACBSConfigCreate();
  if (!v5)
  {
    if (a3)
    {
      +[VNError errorForMemoryAllocationFailure];
      *a3 = v6 = 0;
      return v6;
    }

    return 0;
  }

  v6 = v5;
  [(VNDetectBarcodesRequest *)self _ACBarcodeRecognizerLocateMode];
  ACBSConfigSetLocateMode();
  ACBSConfigSetMaxQRModuleSamples();
  ACBSConfigSetFailedLocationsEnabled();
  v19 = [(VNDetectBarcodesRequest *)self symbologies];
  if (!v19 || ![v19 count])
  {
    if (a3)
    {
      *a3 = [VNError errorWithCode:5 message:@"barcode detection requires at least one element in the symbologies property"];
    }

LABEL_21:
    ACBSConfigFree();
    return 0;
  }

  v17 = self;
  v18 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v19;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToACBSBarcodeTypeMap];
        v14 = [v13 objectForKeyedSubscript:v12];

        if (!v14)
        {
          if (v18)
          {
            v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ is not a supported barcode symbology", v12];
            *v18 = [VNError errorWithCode:5 message:v15];
          }

          goto LABEL_21;
        }

        [v7 addObject:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  ACBSConfigSetSymbologiesEnabled();
  [(VNDetectBarcodesRequest *)v17 stopAtFirstPyramidWith2DCode];
  ACBSConfigSetStopsAtFirstPyramidWith2DCode();

  return v6;
}

- (int)_ACBarcodeRecognizerLocateMode
{
  v3 = [(VNDetectBarcodesRequest *)self locateMode];
  if (!v3)
  {
    v4 = [(VNRequest *)self detectionLevel];
    if (v4 > 2)
    {
      v3 = 0;
LABEL_9:
      v5 = 9;
      goto LABEL_10;
    }

    v3 = off_1E77B39E8[v4];
  }

  if ([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::onceToken != -1)
  {
    dispatch_once(&[VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::onceToken, &__block_literal_global_158_12431);
  }

  value = 0;
  if (!NSMapMember([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, v3, 0, &value))
  {
    goto LABEL_9;
  }

  v5 = value;
LABEL_10:

  return v5;
}

void __57__VNDetectBarcodesRequest__ACBarcodeRecognizerLocateMode__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:1282 capacity:10];
  v1 = [VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable;
  [VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable = v0;

  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterOneVertical", 2);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterOneVerticalThick", 3);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeVertical", 4);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeVerticalCrossed", 5);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterOneHorizontal", 6);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterOneHorizontalThick", 7);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeHorizontal", 8);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeHorizontalCrossed", 9);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterOneEachDirection", 0xA);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeEachDirection", 0xB);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterFiveEachDirection", 0xC);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeEachDirectionAndCoverageAndDiagonals", 0xD);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeVerticalAndCoverageAndDiagonals", 0xE);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeCenterThreeHorizontalAndCoverageAndDiagonals", 0xF);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeFastSearch", 0x10);
  NSMapInsertKnownAbsent([VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable, @"VNDetectBarcodesLocateModeRegularIntervalHorizontal", 0x11);
  v2 = [VNDetectBarcodesRequest _ACBarcodeRecognizerLocateMode]::mapTable;

  NSMapInsertKnownAbsent(v2, @"VNDetectBarcodesLocateModeRegularIntervalVertical", 0x12);
}

- (id)_newVNBarcodeSymbologyPDF417DescriptorForMRCDescriptor:(__MRCDescriptor *)a3 error:(id *)a4
{
  v5 = MRCDescriptorCopyAttribute();
  if (v5)
  {
    v6 = v5;
    v7 = MRCDescriptorCopyAttribute();
    v8 = v7;
    if (v7)
    {
      CFRelease(v7);
      v9 = MRCDescriptorCopyAttribute();
      v10 = v9;
      if (v9)
      {
        valuePtr = 0;
        CFNumberGetValue(v9, kCFNumberNSIntegerType, &valuePtr);
        CFRelease(v10);
        v11 = MRCDescriptorCopyAttribute();
        v12 = v11;
        if (v11)
        {
          v17 = 0;
          CFNumberGetValue(v11, kCFNumberNSIntegerType, &v17);
          CFRelease(v12);
          v13 = objc_alloc(MEMORY[0x1E695F668]);
          v14 = [v13 initWithPayload:v6 isCompact:v8 == *MEMORY[0x1E695E4D0] rowCount:valuePtr columnCount:v17];
LABEL_17:

          return v14;
        }

        if (a4)
        {
          v15 = [VNError errorWithCode:17 message:@"ColumnCount data is missing"];
          goto LABEL_15;
        }

LABEL_16:
        v14 = 0;
        goto LABEL_17;
      }

      if (!a4)
      {
        goto LABEL_16;
      }

      v15 = [VNError errorWithCode:17 message:@"RowCount data is missing"];
    }

    else
    {
      if (!a4)
      {
        goto LABEL_16;
      }

      v15 = [VNError errorWithCode:17 message:@"IsCompact data is missing"];
    }

LABEL_15:
    v14 = 0;
    *a4 = v15;
    goto LABEL_17;
  }

  if (!a4)
  {
    return 0;
  }

  [VNError errorWithCode:17 message:@"Payload data is missing"];
  *a4 = v14 = 0;
  return v14;
}

- (id)_newVNBarcodeSymbologyAztecDescriptorForMRCDescriptor:(__MRCDescriptor *)a3 error:(id *)a4
{
  v5 = MRCDescriptorCopyAttribute();
  if (v5)
  {
    v6 = v5;
    v7 = MRCDescriptorCopyAttribute();
    v8 = v7;
    if (v7)
    {
      CFRelease(v7);
      v9 = MRCDescriptorCopyAttribute();
      v10 = v9;
      if (v9)
      {
        valuePtr = 0;
        CFNumberGetValue(v9, kCFNumberNSIntegerType, &valuePtr);
        CFRelease(v10);
        v11 = MRCDescriptorCopyAttribute();
        v12 = v11;
        if (v11)
        {
          v17 = 0;
          CFNumberGetValue(v11, kCFNumberNSIntegerType, &v17);
          CFRelease(v12);
          v13 = objc_alloc(MEMORY[0x1E695F5F8]);
          v14 = [v13 initWithPayload:v6 isCompact:v8 == *MEMORY[0x1E695E4D0] layerCount:valuePtr dataCodewordCount:v17];
LABEL_17:

          return v14;
        }

        if (a4)
        {
          v15 = [VNError errorWithCode:17 message:@"CodewordCount data is missing"];
          goto LABEL_15;
        }

LABEL_16:
        v14 = 0;
        goto LABEL_17;
      }

      if (!a4)
      {
        goto LABEL_16;
      }

      v15 = [VNError errorWithCode:17 message:@"LayerCount data is missing"];
    }

    else
    {
      if (!a4)
      {
        goto LABEL_16;
      }

      v15 = [VNError errorWithCode:17 message:@"IsCompact data is missing"];
    }

LABEL_15:
    v14 = 0;
    *a4 = v15;
    goto LABEL_17;
  }

  if (!a4)
  {
    return 0;
  }

  [VNError errorWithCode:17 message:@"Payload data is missing"];
  *a4 = v14 = 0;
  return v14;
}

- (id)_newVNBarcodeSymbologyQRDescriptorForMRCDescriptor:(__MRCDescriptor *)a3 error:(id *)a4
{
  v5 = MRCDescriptorCopyAttribute();
  if (v5)
  {
    v6 = v5;
    v7 = MRCDescriptorCopyAttribute();
    v8 = v7;
    if (v7)
    {
      valuePtr = 0;
      CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
      CFRelease(v8);
      if (valuePtr < 4)
      {
        v11 = kErrorCorrectionLevels[valuePtr];
        v12 = MRCDescriptorCopyAttribute();
        v13 = v12;
        if (v12)
        {
          v19 = 0;
          CFNumberGetValue(v12, kCFNumberNSIntegerType, &v19);
          CFRelease(v13);
          v14 = MRCDescriptorCopyAttribute();
          v15 = v14;
          if (v14)
          {
            v18 = 0;
            CFNumberGetValue(v14, kCFNumberCharType, &v18);
            CFRelease(v15);
            v16 = objc_alloc(MEMORY[0x1E695F670]);
            v10 = [v16 initWithPayload:v6 symbolVersion:v19 maskPattern:v18 errorCorrectionLevel:v11];
LABEL_20:

            return v10;
          }

          if (a4)
          {
            v9 = [VNError errorWithCode:17 message:@"QRMaskPattern data is missing"];
            goto LABEL_18;
          }
        }

        else if (a4)
        {
          v9 = [VNError errorWithCode:17 message:@"QRSymbolVersion data is missing"];
          goto LABEL_18;
        }
      }

      else if (a4)
      {
        v9 = [VNError errorWithCode:2 message:@"QRErrorCorrectionLevel data is invalid"];
LABEL_18:
        v10 = 0;
        *a4 = v9;
        goto LABEL_20;
      }
    }

    else if (a4)
    {
      v9 = [VNError errorWithCode:17 message:@"QRErrorCorrectionLevel data is missing"];
      goto LABEL_18;
    }

    v10 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
    return 0;
  }

  [VNError errorWithCode:17 message:@"Payload data is missing"];
  *a4 = v10 = 0;
  return v10;
}

- (id)_newVNBarcodeSymbologyPDF417DescriptorForACBSBarcodeInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:*MEMORY[0x1E69C6998]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 objectForKey:*MEMORY[0x1E69C6960]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKey:*MEMORY[0x1E69C6978]];
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v10 = 0;
      }

      else
      {
        v7 = [v6 BOOLValue];
        v8 = [v5 objectForKey:*MEMORY[0x1E69C6968]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v5 objectForKey:*MEMORY[0x1E69C6970]];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [objc_alloc(MEMORY[0x1E695F668]) initWithPayload:v4 isCompact:v7 rowCount:objc_msgSend(v8 columnCount:{"integerValue"), objc_msgSend(v9, "integerValue")}];
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_newVNBarcodeSymbologyAztecDescriptorForACBSBarcodeInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:*MEMORY[0x1E69C6998]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 objectForKey:*MEMORY[0x1E69C6960]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKey:*MEMORY[0x1E69C6958]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v5 objectForKey:*MEMORY[0x1E69C6950]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v5 objectForKey:*MEMORY[0x1E69C6948]];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [objc_alloc(MEMORY[0x1E695F5F8]) initWithPayload:v4 isCompact:objc_msgSend(v6 layerCount:"BOOLValue") dataCodewordCount:{objc_msgSend(v7, "integerValue"), objc_msgSend(v8, "integerValue")}];
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_newVNBarcodeSymbologyQRDescriptorForACBSBarcodeInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:*MEMORY[0x1E69C6998]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 objectForKey:*MEMORY[0x1E69C6960]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKey:*MEMORY[0x1E69C69B8]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [v6 intValue], v7 <= 3))
      {
        v9 = kErrorCorrectionLevels[v7];
        v10 = [v5 objectForKey:*MEMORY[0x1E69C69C8]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v5 objectForKey:*MEMORY[0x1E69C69C0]];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [objc_alloc(MEMORY[0x1E695F670]) initWithPayload:v4 symbolVersion:objc_msgSend(v10 maskPattern:"integerValue") errorCorrectionLevel:{objc_msgSend(v11, "unsignedCharValue"), v9}];
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (NSArray)availableLocateModes
{
  v2 = +[(VNRequest *)VNDetectBarcodesRequest];
  if (v2 - 2 >= 3 && v2 - 3737841664u >= 3)
  {
    if (v2 == 1)
    {
      v10 = +[VNDetectBarcodesRequest availableLocateModesRev1];
    }

    else
    {
      VNValidatedLog(4, @"Unable to obtain the supported barcode symbologies", v3, v4, v5, v6, v7, v8, v12);
      v10 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v10 = +[VNDetectBarcodesRequest availableLocateModesRev2];
  }

  return v10;
}

+ (id)availableLocateModesRev2
{
  if (+[VNDetectBarcodesRequest availableLocateModesRev2]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest availableLocateModesRev2]::onceToken, &__block_literal_global_216);
  }

  v3 = +[VNDetectBarcodesRequest availableLocateModesRev2]::ourAvailableLocateModesRev2;

  return v3;
}

void __51__VNDetectBarcodesRequest_availableLocateModesRev2__block_invoke()
{
  v2[16] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNDetectBarcodesLocateModeCenterOneVertical";
  v2[1] = @"VNDetectBarcodesLocateModeCenterOneVerticalThick";
  v2[2] = @"VNDetectBarcodesLocateModeCenterThreeVertical";
  v2[3] = @"VNDetectBarcodesLocateModeCenterThreeVerticalCrossed";
  v2[4] = @"VNDetectBarcodesLocateModeCenterOneHorizontal";
  v2[5] = @"VNDetectBarcodesLocateModeCenterOneHorizontalThick";
  v2[6] = @"VNDetectBarcodesLocateModeCenterThreeHorizontal";
  v2[7] = @"VNDetectBarcodesLocateModeCenterThreeHorizontalCrossed";
  v2[8] = @"VNDetectBarcodesLocateModeCenterOneEachDirection";
  v2[9] = @"VNDetectBarcodesLocateModeCenterThreeEachDirection";
  v2[10] = @"VNDetectBarcodesLocateModeCenterFiveEachDirection";
  v2[11] = @"VNDetectBarcodesLocateModeCenterThreeEachDirectionAndCoverageAndDiagonals";
  v2[12] = @"VNDetectBarcodesLocateModeCenterThreeVerticalAndCoverageAndDiagonals";
  v2[13] = @"VNDetectBarcodesLocateModeCenterThreeHorizontalAndCoverageAndDiagonals";
  v2[14] = @"VNDetectBarcodesLocateModeRegularIntervalHorizontal";
  v2[15] = @"VNDetectBarcodesLocateModeRegularIntervalVertical";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:16];
  v1 = +[VNDetectBarcodesRequest availableLocateModesRev2]::ourAvailableLocateModesRev2;
  +[VNDetectBarcodesRequest availableLocateModesRev2]::ourAvailableLocateModesRev2 = v0;
}

+ (id)availableLocateModesRev1
{
  if (+[VNDetectBarcodesRequest availableLocateModesRev1]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest availableLocateModesRev1]::onceToken, &__block_literal_global_214_12508);
  }

  v3 = +[VNDetectBarcodesRequest availableLocateModesRev1]::ourAvailableLocateModesRev1;

  return v3;
}

void __51__VNDetectBarcodesRequest_availableLocateModesRev1__block_invoke()
{
  v2[17] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNDetectBarcodesLocateModeCenterOneVertical";
  v2[1] = @"VNDetectBarcodesLocateModeCenterOneVerticalThick";
  v2[2] = @"VNDetectBarcodesLocateModeCenterThreeVertical";
  v2[3] = @"VNDetectBarcodesLocateModeCenterThreeVerticalCrossed";
  v2[4] = @"VNDetectBarcodesLocateModeCenterOneHorizontal";
  v2[5] = @"VNDetectBarcodesLocateModeCenterOneHorizontalThick";
  v2[6] = @"VNDetectBarcodesLocateModeCenterThreeHorizontal";
  v2[7] = @"VNDetectBarcodesLocateModeCenterThreeHorizontalCrossed";
  v2[8] = @"VNDetectBarcodesLocateModeCenterOneEachDirection";
  v2[9] = @"VNDetectBarcodesLocateModeCenterThreeEachDirection";
  v2[10] = @"VNDetectBarcodesLocateModeCenterFiveEachDirection";
  v2[11] = @"VNDetectBarcodesLocateModeCenterThreeEachDirectionAndCoverageAndDiagonals";
  v2[12] = @"VNDetectBarcodesLocateModeCenterThreeVerticalAndCoverageAndDiagonals";
  v2[13] = @"VNDetectBarcodesLocateModeCenterThreeHorizontalAndCoverageAndDiagonals";
  v2[14] = @"VNDetectBarcodesLocateModeFastSearch";
  v2[15] = @"VNDetectBarcodesLocateModeRegularIntervalHorizontal";
  v2[16] = @"VNDetectBarcodesLocateModeRegularIntervalVertical";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:17];
  v1 = +[VNDetectBarcodesRequest availableLocateModesRev1]::ourAvailableLocateModesRev1;
  +[VNDetectBarcodesRequest availableLocateModesRev1]::ourAvailableLocateModesRev1 = v0;
}

+ (NSArray)supportedSymbologies
{
  v2 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev1];
  v9 = v2;
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    VNValidatedLog(4, @"Unable to obtain the supported barcode symbologies", v3, v4, v5, v6, v7, v8, v12);
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

+ (id)supportedSymbologiesRev4Private
{
  v2 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4Private];
  v9 = v2;
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    VNValidatedLog(4, @"Unable to obtain the supported barcode symbologies", v3, v4, v5, v6, v7, v8, v12);
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

+ (id)_allBarcodeSymbologiesRev4Private
{
  if (+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4Private]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4Private]::onceToken, &__block_literal_global_69);
  }

  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4Private]::_allBarcodeSymbologiesRev4Private;

  return v3;
}

void __60__VNDetectBarcodesRequest__allBarcodeSymbologiesRev4Private__block_invoke()
{
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4Private];
  v0 = [v4 allKeys];
  v1 = [v0 sortedArrayUsingSelector:sel_compare_];
  v2 = [v1 copy];
  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4Private]::_allBarcodeSymbologiesRev4Private;
  +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4Private]::_allBarcodeSymbologiesRev4Private = v2;
}

+ (id)_ourBarcodeSymbologyToMRCSymbologyMapRev4Private
{
  v2 = MEMORY[0x1E695DF90];
  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4Private];
  v4 = [v2 dictionaryWithCapacity:{objc_msgSend(v3, "count")}];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev4Private__block_invoke;
  block[3] = &unk_1E77B3BE0;
  v11 = v4;
  v5 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4Private]::onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4Private]::onceToken, block);
  }

  v7 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4Private]::ourBarcodeSymbologyToMRCSymbologyMapRev4Private;
  v8 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4Private]::ourBarcodeSymbologyToMRCSymbologyMapRev4Private;

  return v7;
}

void __75__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev4Private__block_invoke(uint64_t a1)
{
  v2 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4Private];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev4Private__block_invoke_2;
  v5[3] = &unk_1E77B38E8;
  v6 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = [*(a1 + 32) copy];
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4Private]::ourBarcodeSymbologyToMRCSymbologyMapRev4Private;
  +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4Private]::ourBarcodeSymbologyToMRCSymbologyMapRev4Private = v3;
}

+ (id)_ourMRCSymbologyToBarcodeSymbologyMapRev4Private
{
  if (+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4Private]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4Private]::onceToken, &__block_literal_global_67);
  }

  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4Private]::ourMRCSymbologyToBarcodeSymbologyMapRev4Private;

  return v3;
}

void __75__VNDetectBarcodesRequest__ourMRCSymbologyToBarcodeSymbologyMapRev4Private__block_invoke()
{
  v15[25] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C6880];
  v14[0] = *MEMORY[0x1E69C6868];
  v14[1] = v0;
  v15[0] = @"VNBarcodeSymbologyAztec";
  v15[1] = @"VNBarcodeSymbologyCode39";
  v1 = *MEMORY[0x1E69C6890];
  v14[2] = *MEMORY[0x1E69C6888];
  v14[3] = v1;
  v15[2] = @"VNBarcodeSymbologyCode39Checksum";
  v15[3] = @"VNBarcodeSymbologyCode39FullASCII";
  v2 = *MEMORY[0x1E69C68A0];
  v14[4] = *MEMORY[0x1E69C6898];
  v14[5] = v2;
  v15[4] = @"VNBarcodeSymbologyCode39FullASCIIChecksum";
  v15[5] = @"VNBarcodeSymbologyCode93";
  v3 = *MEMORY[0x1E69C6878];
  v14[6] = *MEMORY[0x1E69C68A8];
  v14[7] = v3;
  v15[6] = @"VNBarcodeSymbologyCode93i";
  v15[7] = @"VNBarcodeSymbologyCode128";
  v4 = *MEMORY[0x1E69C68C0];
  v14[8] = *MEMORY[0x1E69C68B0];
  v14[9] = v4;
  v15[8] = @"VNBarcodeSymbologyDataMatrix";
  v15[9] = @"VNBarcodeSymbologyEAN8";
  v5 = *MEMORY[0x1E69C68E0];
  v14[10] = *MEMORY[0x1E69C68B8];
  v14[11] = v5;
  v15[10] = @"VNBarcodeSymbologyEAN13";
  v15[11] = @"VNBarcodeSymbologyI2of5";
  v6 = *MEMORY[0x1E69C68F0];
  v14[12] = *MEMORY[0x1E69C68E8];
  v14[13] = v6;
  v15[12] = @"VNBarcodeSymbologyI2of5Checksum";
  v15[13] = @"VNBarcodeSymbologyITF14";
  v7 = *MEMORY[0x1E69C6938];
  v14[14] = *MEMORY[0x1E69C6910];
  v14[15] = v7;
  v15[14] = @"VNBarcodeSymbologyPDF417";
  v15[15] = @"VNBarcodeSymbologyQR";
  v8 = *MEMORY[0x1E69C6860];
  v14[16] = *MEMORY[0x1E69C6940];
  v14[17] = v8;
  v15[16] = @"VNBarcodeSymbologyUPCE";
  v15[17] = @"VNBarcodeSymbologyAppClipCode";
  v9 = *MEMORY[0x1E69C68C8];
  v14[18] = *MEMORY[0x1E69C6870];
  v14[19] = v9;
  v15[18] = @"VNBarcodeSymbologyCodabar";
  v15[19] = @"VNBarcodeSymbologyGS1DataBar";
  v10 = *MEMORY[0x1E69C68D8];
  v14[20] = *MEMORY[0x1E69C68D0];
  v14[21] = v10;
  v15[20] = @"VNBarcodeSymbologyGS1DataBarExpanded";
  v15[21] = @"VNBarcodeSymbologyGS1DataBarLimited";
  v11 = *MEMORY[0x1E69C6908];
  v14[22] = *MEMORY[0x1E69C6900];
  v14[23] = v11;
  v15[22] = @"VNBarcodeSymbologyMicroPDF417";
  v15[23] = @"VNBarcodeSymbologyMicroQR";
  v14[24] = *MEMORY[0x1E69C68F8];
  v15[24] = @"VNBarcodeSymbologyMSIPlessey";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:25];
  v13 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4Private]::ourMRCSymbologyToBarcodeSymbologyMapRev4Private;
  +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4Private]::ourMRCSymbologyToBarcodeSymbologyMapRev4Private = v12;
}

+ (id)supportedSymbologiesRev4
{
  v2 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4];
  v9 = v2;
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    VNValidatedLog(4, @"Unable to obtain the supported barcode symbologies", v3, v4, v5, v6, v7, v8, v12);
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

+ (id)_allBarcodeSymbologiesRev4
{
  if (+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4]::onceToken, &__block_literal_global_65_12513);
  }

  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4]::_allBarcodeSymbologiesRev4;

  return v3;
}

void __53__VNDetectBarcodesRequest__allBarcodeSymbologiesRev4__block_invoke()
{
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4];
  v0 = [v4 allKeys];
  v1 = [v0 sortedArrayUsingSelector:sel_compare_];
  v2 = [v1 copy];
  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4]::_allBarcodeSymbologiesRev4;
  +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4]::_allBarcodeSymbologiesRev4 = v2;
}

+ (id)_ourBarcodeSymbologyToMRCSymbologyMapRev4
{
  v2 = MEMORY[0x1E695DF90];
  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4];
  v4 = [v2 dictionaryWithCapacity:{objc_msgSend(v3, "count")}];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev4__block_invoke;
  block[3] = &unk_1E77B3BE0;
  v11 = v4;
  v5 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4]::onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4]::onceToken, block);
  }

  v7 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4]::ourBarcodeSymbologyToMRCSymbologyMapRev4;
  v8 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4]::ourBarcodeSymbologyToMRCSymbologyMapRev4;

  return v7;
}

void __68__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev4__block_invoke(uint64_t a1)
{
  v2 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev4__block_invoke_2;
  v5[3] = &unk_1E77B38E8;
  v6 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = [*(a1 + 32) copy];
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4]::ourBarcodeSymbologyToMRCSymbologyMapRev4;
  +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4]::ourBarcodeSymbologyToMRCSymbologyMapRev4 = v3;
}

+ (id)_ourMRCSymbologyToBarcodeSymbologyMapRev4
{
  if (+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4]::onceToken, &__block_literal_global_63);
  }

  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4]::ourMRCSymbologyToBarcodeSymbologyMapRev4;

  return v3;
}

void __68__VNDetectBarcodesRequest__ourMRCSymbologyToBarcodeSymbologyMapRev4__block_invoke()
{
  v15[24] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C6880];
  v14[0] = *MEMORY[0x1E69C6868];
  v14[1] = v0;
  v15[0] = @"VNBarcodeSymbologyAztec";
  v15[1] = @"VNBarcodeSymbologyCode39";
  v1 = *MEMORY[0x1E69C6890];
  v14[2] = *MEMORY[0x1E69C6888];
  v14[3] = v1;
  v15[2] = @"VNBarcodeSymbologyCode39Checksum";
  v15[3] = @"VNBarcodeSymbologyCode39FullASCII";
  v2 = *MEMORY[0x1E69C68A0];
  v14[4] = *MEMORY[0x1E69C6898];
  v14[5] = v2;
  v15[4] = @"VNBarcodeSymbologyCode39FullASCIIChecksum";
  v15[5] = @"VNBarcodeSymbologyCode93";
  v3 = *MEMORY[0x1E69C6878];
  v14[6] = *MEMORY[0x1E69C68A8];
  v14[7] = v3;
  v15[6] = @"VNBarcodeSymbologyCode93i";
  v15[7] = @"VNBarcodeSymbologyCode128";
  v4 = *MEMORY[0x1E69C68C0];
  v14[8] = *MEMORY[0x1E69C68B0];
  v14[9] = v4;
  v15[8] = @"VNBarcodeSymbologyDataMatrix";
  v15[9] = @"VNBarcodeSymbologyEAN8";
  v5 = *MEMORY[0x1E69C68E0];
  v14[10] = *MEMORY[0x1E69C68B8];
  v14[11] = v5;
  v15[10] = @"VNBarcodeSymbologyEAN13";
  v15[11] = @"VNBarcodeSymbologyI2of5";
  v6 = *MEMORY[0x1E69C68F0];
  v14[12] = *MEMORY[0x1E69C68E8];
  v14[13] = v6;
  v15[12] = @"VNBarcodeSymbologyI2of5Checksum";
  v15[13] = @"VNBarcodeSymbologyITF14";
  v7 = *MEMORY[0x1E69C6938];
  v14[14] = *MEMORY[0x1E69C6910];
  v14[15] = v7;
  v15[14] = @"VNBarcodeSymbologyPDF417";
  v15[15] = @"VNBarcodeSymbologyQR";
  v8 = *MEMORY[0x1E69C6870];
  v14[16] = *MEMORY[0x1E69C6940];
  v14[17] = v8;
  v15[16] = @"VNBarcodeSymbologyUPCE";
  v15[17] = @"VNBarcodeSymbologyCodabar";
  v9 = *MEMORY[0x1E69C68D0];
  v14[18] = *MEMORY[0x1E69C68C8];
  v14[19] = v9;
  v15[18] = @"VNBarcodeSymbologyGS1DataBar";
  v15[19] = @"VNBarcodeSymbologyGS1DataBarExpanded";
  v10 = *MEMORY[0x1E69C6900];
  v14[20] = *MEMORY[0x1E69C68D8];
  v14[21] = v10;
  v15[20] = @"VNBarcodeSymbologyGS1DataBarLimited";
  v15[21] = @"VNBarcodeSymbologyMicroPDF417";
  v11 = *MEMORY[0x1E69C68F8];
  v14[22] = *MEMORY[0x1E69C6908];
  v14[23] = v11;
  v15[22] = @"VNBarcodeSymbologyMicroQR";
  v15[23] = @"VNBarcodeSymbologyMSIPlessey";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:24];
  v13 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4]::ourMRCSymbologyToBarcodeSymbologyMapRev4;
  +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4]::ourMRCSymbologyToBarcodeSymbologyMapRev4 = v12;
}

+ (id)supportedSymbologiesRev3Private
{
  v2 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3Private];
  v9 = v2;
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    VNValidatedLog(4, @"Unable to obtain the supported barcode symbologies", v3, v4, v5, v6, v7, v8, v12);
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

+ (id)_allBarcodeSymbologiesRev3Private
{
  if (+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3Private]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3Private]::onceToken, &__block_literal_global_61);
  }

  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3Private]::_allBarcodeSymbologiesRev3;

  return v3;
}

void __60__VNDetectBarcodesRequest__allBarcodeSymbologiesRev3Private__block_invoke()
{
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3Private];
  v0 = [v4 allKeys];
  v1 = [v0 sortedArrayUsingSelector:sel_compare_];
  v2 = [v1 copy];
  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3Private]::_allBarcodeSymbologiesRev3;
  +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3Private]::_allBarcodeSymbologiesRev3 = v2;
}

+ (id)_ourBarcodeSymbologyToMRCSymbologyMapRev3Private
{
  v2 = MEMORY[0x1E695DF90];
  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3Private];
  v4 = [v2 dictionaryWithCapacity:{objc_msgSend(v3, "count")}];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev3Private__block_invoke;
  block[3] = &unk_1E77B3BE0;
  v11 = v4;
  v5 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3Private]::onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3Private]::onceToken, block);
  }

  v7 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3Private]::ourBarcodeSymbologyToMRCSymbologyMapRevision3Private;
  v8 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3Private]::ourBarcodeSymbologyToMRCSymbologyMapRevision3Private;

  return v7;
}

void __75__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev3Private__block_invoke(uint64_t a1)
{
  v2 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3Private];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev3Private__block_invoke_2;
  v5[3] = &unk_1E77B38E8;
  v6 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = [*(a1 + 32) copy];
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3Private]::ourBarcodeSymbologyToMRCSymbologyMapRevision3Private;
  +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3Private]::ourBarcodeSymbologyToMRCSymbologyMapRevision3Private = v3;
}

+ (id)_ourMRCSymbologyToBarcodeSymbologyMapRev3Private
{
  if (+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3Private]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3Private]::onceToken, &__block_literal_global_59);
  }

  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3Private]::ourMRCSymbologyToBarcodeSymbologyMapRev3Private;

  return v3;
}

void __75__VNDetectBarcodesRequest__ourMRCSymbologyToBarcodeSymbologyMapRev3Private__block_invoke()
{
  v15[24] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C6868];
  v14[0] = *MEMORY[0x1E69C6860];
  v14[1] = v0;
  v15[0] = @"VNBarcodeSymbologyAppClipCode";
  v15[1] = @"VNBarcodeSymbologyAztec";
  v1 = *MEMORY[0x1E69C6888];
  v14[2] = *MEMORY[0x1E69C6880];
  v14[3] = v1;
  v15[2] = @"VNBarcodeSymbologyCode39";
  v15[3] = @"VNBarcodeSymbologyCode39Checksum";
  v2 = *MEMORY[0x1E69C6898];
  v14[4] = *MEMORY[0x1E69C6890];
  v14[5] = v2;
  v15[4] = @"VNBarcodeSymbologyCode39FullASCII";
  v15[5] = @"VNBarcodeSymbologyCode39FullASCIIChecksum";
  v3 = *MEMORY[0x1E69C68A8];
  v14[6] = *MEMORY[0x1E69C68A0];
  v14[7] = v3;
  v15[6] = @"VNBarcodeSymbologyCode93";
  v15[7] = @"VNBarcodeSymbologyCode93i";
  v4 = *MEMORY[0x1E69C68B0];
  v14[8] = *MEMORY[0x1E69C6878];
  v14[9] = v4;
  v15[8] = @"VNBarcodeSymbologyCode128";
  v15[9] = @"VNBarcodeSymbologyDataMatrix";
  v5 = *MEMORY[0x1E69C68B8];
  v14[10] = *MEMORY[0x1E69C68C0];
  v14[11] = v5;
  v15[10] = @"VNBarcodeSymbologyEAN8";
  v15[11] = @"VNBarcodeSymbologyEAN13";
  v6 = *MEMORY[0x1E69C68E8];
  v14[12] = *MEMORY[0x1E69C68E0];
  v14[13] = v6;
  v15[12] = @"VNBarcodeSymbologyI2of5";
  v15[13] = @"VNBarcodeSymbologyI2of5Checksum";
  v7 = *MEMORY[0x1E69C6910];
  v14[14] = *MEMORY[0x1E69C68F0];
  v14[15] = v7;
  v15[14] = @"VNBarcodeSymbologyITF14";
  v15[15] = @"VNBarcodeSymbologyPDF417";
  v8 = *MEMORY[0x1E69C6940];
  v14[16] = *MEMORY[0x1E69C6938];
  v14[17] = v8;
  v15[16] = @"VNBarcodeSymbologyQR";
  v15[17] = @"VNBarcodeSymbologyUPCE";
  v9 = *MEMORY[0x1E69C68C8];
  v14[18] = *MEMORY[0x1E69C6870];
  v14[19] = v9;
  v15[18] = @"VNBarcodeSymbologyCodabar";
  v15[19] = @"VNBarcodeSymbologyGS1DataBar";
  v10 = *MEMORY[0x1E69C68D8];
  v14[20] = *MEMORY[0x1E69C68D0];
  v14[21] = v10;
  v15[20] = @"VNBarcodeSymbologyGS1DataBarExpanded";
  v15[21] = @"VNBarcodeSymbologyGS1DataBarLimited";
  v11 = *MEMORY[0x1E69C6908];
  v14[22] = *MEMORY[0x1E69C6900];
  v14[23] = v11;
  v15[22] = @"VNBarcodeSymbologyMicroPDF417";
  v15[23] = @"VNBarcodeSymbologyMicroQR";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:24];
  v13 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3Private]::ourMRCSymbologyToBarcodeSymbologyMapRev3Private;
  +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3Private]::ourMRCSymbologyToBarcodeSymbologyMapRev3Private = v12;
}

+ (id)supportedSymbologiesRev3
{
  v2 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3];
  v9 = v2;
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    VNValidatedLog(4, @"Unable to obtain the supported barcode symbologies", v3, v4, v5, v6, v7, v8, v12);
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

+ (id)_allBarcodeSymbologiesRev3
{
  if (+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3]::onceToken, &__block_literal_global_57);
  }

  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3]::_allBarcodeSymbologiesRev3;

  return v3;
}

void __53__VNDetectBarcodesRequest__allBarcodeSymbologiesRev3__block_invoke()
{
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3];
  v0 = [v4 allKeys];
  v1 = [v0 sortedArrayUsingSelector:sel_compare_];
  v2 = [v1 copy];
  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3]::_allBarcodeSymbologiesRev3;
  +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3]::_allBarcodeSymbologiesRev3 = v2;
}

+ (id)_ourBarcodeSymbologyToMRCSymbologyMapRev3
{
  v2 = MEMORY[0x1E695DF90];
  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3];
  v4 = [v2 dictionaryWithCapacity:{objc_msgSend(v3, "count")}];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev3__block_invoke;
  block[3] = &unk_1E77B3BE0;
  v11 = v4;
  v5 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3]::onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3]::onceToken, block);
  }

  v7 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3]::ourBarcodeSymbologyToMRCSymbologyMapRevision3;
  v8 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3]::ourBarcodeSymbologyToMRCSymbologyMapRevision3;

  return v7;
}

void __68__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev3__block_invoke(uint64_t a1)
{
  v2 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapRev3__block_invoke_2;
  v5[3] = &unk_1E77B38E8;
  v6 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = [*(a1 + 32) copy];
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3]::ourBarcodeSymbologyToMRCSymbologyMapRevision3;
  +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev3]::ourBarcodeSymbologyToMRCSymbologyMapRevision3 = v3;
}

+ (id)_ourMRCSymbologyToBarcodeSymbologyMapRev3
{
  if (+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3]::onceToken, &__block_literal_global_55_12515);
  }

  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3]::ourMRCSymbologyToBarcodeSymbologyMapRev3;

  return v3;
}

void __68__VNDetectBarcodesRequest__ourMRCSymbologyToBarcodeSymbologyMapRev3__block_invoke()
{
  v14[23] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C6880];
  v13[0] = *MEMORY[0x1E69C6868];
  v13[1] = v0;
  v14[0] = @"VNBarcodeSymbologyAztec";
  v14[1] = @"VNBarcodeSymbologyCode39";
  v1 = *MEMORY[0x1E69C6890];
  v13[2] = *MEMORY[0x1E69C6888];
  v13[3] = v1;
  v14[2] = @"VNBarcodeSymbologyCode39Checksum";
  v14[3] = @"VNBarcodeSymbologyCode39FullASCII";
  v2 = *MEMORY[0x1E69C68A0];
  v13[4] = *MEMORY[0x1E69C6898];
  v13[5] = v2;
  v14[4] = @"VNBarcodeSymbologyCode39FullASCIIChecksum";
  v14[5] = @"VNBarcodeSymbologyCode93";
  v3 = *MEMORY[0x1E69C6878];
  v13[6] = *MEMORY[0x1E69C68A8];
  v13[7] = v3;
  v14[6] = @"VNBarcodeSymbologyCode93i";
  v14[7] = @"VNBarcodeSymbologyCode128";
  v4 = *MEMORY[0x1E69C68C0];
  v13[8] = *MEMORY[0x1E69C68B0];
  v13[9] = v4;
  v14[8] = @"VNBarcodeSymbologyDataMatrix";
  v14[9] = @"VNBarcodeSymbologyEAN8";
  v5 = *MEMORY[0x1E69C68E0];
  v13[10] = *MEMORY[0x1E69C68B8];
  v13[11] = v5;
  v14[10] = @"VNBarcodeSymbologyEAN13";
  v14[11] = @"VNBarcodeSymbologyI2of5";
  v6 = *MEMORY[0x1E69C68F0];
  v13[12] = *MEMORY[0x1E69C68E8];
  v13[13] = v6;
  v14[12] = @"VNBarcodeSymbologyI2of5Checksum";
  v14[13] = @"VNBarcodeSymbologyITF14";
  v7 = *MEMORY[0x1E69C6938];
  v13[14] = *MEMORY[0x1E69C6910];
  v13[15] = v7;
  v14[14] = @"VNBarcodeSymbologyPDF417";
  v14[15] = @"VNBarcodeSymbologyQR";
  v8 = *MEMORY[0x1E69C6870];
  v13[16] = *MEMORY[0x1E69C6940];
  v13[17] = v8;
  v14[16] = @"VNBarcodeSymbologyUPCE";
  v14[17] = @"VNBarcodeSymbologyCodabar";
  v9 = *MEMORY[0x1E69C68D0];
  v13[18] = *MEMORY[0x1E69C68C8];
  v13[19] = v9;
  v14[18] = @"VNBarcodeSymbologyGS1DataBar";
  v14[19] = @"VNBarcodeSymbologyGS1DataBarExpanded";
  v10 = *MEMORY[0x1E69C6900];
  v13[20] = *MEMORY[0x1E69C68D8];
  v13[21] = v10;
  v14[20] = @"VNBarcodeSymbologyGS1DataBarLimited";
  v14[21] = @"VNBarcodeSymbologyMicroPDF417";
  v13[22] = *MEMORY[0x1E69C6908];
  v14[22] = @"VNBarcodeSymbologyMicroQR";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:23];
  v12 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3]::ourMRCSymbologyToBarcodeSymbologyMapRev3;
  +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev3]::ourMRCSymbologyToBarcodeSymbologyMapRev3 = v11;
}

+ (id)supportedSymbologiesRev2Private
{
  v2 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2Private];
  v9 = v2;
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    VNValidatedLog(4, @"Unable to obtain the supported barcode symbologies", v3, v4, v5, v6, v7, v8, v12);
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

+ (id)_allBarcodeSymbologiesRev2Private
{
  if (+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2Private]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2Private]::onceToken, &__block_literal_global_53);
  }

  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2Private]::_allBarcodeSymbologiesRev2Private;

  return v3;
}

void __60__VNDetectBarcodesRequest__allBarcodeSymbologiesRev2Private__block_invoke()
{
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapPrivate];
  v0 = [v4 allKeys];
  v1 = [v0 sortedArrayUsingSelector:sel_compare_];
  v2 = [v1 copy];
  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2Private]::_allBarcodeSymbologiesRev2Private;
  +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2Private]::_allBarcodeSymbologiesRev2Private = v2;
}

+ (id)_ourBarcodeSymbologyToMRCSymbologyMapPrivate
{
  v2 = MEMORY[0x1E695DF90];
  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapPrivate];
  v4 = [v2 dictionaryWithCapacity:{objc_msgSend(v3, "count")}];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapPrivate__block_invoke;
  block[3] = &unk_1E77B3BE0;
  v11 = v4;
  v5 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapPrivate]::onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapPrivate]::onceToken, block);
  }

  v7 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapPrivate]::ourBarcodeSymbologyToMRCSymbologyMapPrivate;
  v8 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapPrivate]::ourBarcodeSymbologyToMRCSymbologyMapPrivate;

  return v7;
}

void __71__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapPrivate__block_invoke(uint64_t a1)
{
  v2 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapPrivate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMapPrivate__block_invoke_2;
  v5[3] = &unk_1E77B38E8;
  v6 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = [*(a1 + 32) copy];
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapPrivate]::ourBarcodeSymbologyToMRCSymbologyMapPrivate;
  +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapPrivate]::ourBarcodeSymbologyToMRCSymbologyMapPrivate = v3;
}

+ (id)_ourMRCSymbologyToBarcodeSymbologyMapPrivate
{
  if (+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapPrivate]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapPrivate]::onceToken, &__block_literal_global_51_12517);
  }

  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapPrivate]::ourMRCSymbologyToBarcodeSymbologyMapPrivate;

  return v3;
}

void __71__VNDetectBarcodesRequest__ourMRCSymbologyToBarcodeSymbologyMapPrivate__block_invoke()
{
  v15[24] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C6880];
  v14[0] = *MEMORY[0x1E69C6868];
  v14[1] = v0;
  v15[0] = @"VNBarcodeSymbologyAztec";
  v15[1] = @"VNBarcodeSymbologyCode39";
  v1 = *MEMORY[0x1E69C6890];
  v14[2] = *MEMORY[0x1E69C6888];
  v14[3] = v1;
  v15[2] = @"VNBarcodeSymbologyCode39Checksum";
  v15[3] = @"VNBarcodeSymbologyCode39FullASCII";
  v2 = *MEMORY[0x1E69C68A0];
  v14[4] = *MEMORY[0x1E69C6898];
  v14[5] = v2;
  v15[4] = @"VNBarcodeSymbologyCode39FullASCIIChecksum";
  v15[5] = @"VNBarcodeSymbologyCode93";
  v3 = *MEMORY[0x1E69C6878];
  v14[6] = *MEMORY[0x1E69C68A8];
  v14[7] = v3;
  v15[6] = @"VNBarcodeSymbologyCode93i";
  v15[7] = @"VNBarcodeSymbologyCode128";
  v4 = *MEMORY[0x1E69C68C0];
  v14[8] = *MEMORY[0x1E69C68B0];
  v14[9] = v4;
  v15[8] = @"VNBarcodeSymbologyDataMatrix";
  v15[9] = @"VNBarcodeSymbologyEAN8";
  v5 = *MEMORY[0x1E69C68E0];
  v14[10] = *MEMORY[0x1E69C68B8];
  v14[11] = v5;
  v15[10] = @"VNBarcodeSymbologyEAN13";
  v15[11] = @"VNBarcodeSymbologyI2of5";
  v6 = *MEMORY[0x1E69C68F0];
  v14[12] = *MEMORY[0x1E69C68E8];
  v14[13] = v6;
  v15[12] = @"VNBarcodeSymbologyI2of5Checksum";
  v15[13] = @"VNBarcodeSymbologyITF14";
  v7 = *MEMORY[0x1E69C6938];
  v14[14] = *MEMORY[0x1E69C6910];
  v14[15] = v7;
  v15[14] = @"VNBarcodeSymbologyPDF417";
  v15[15] = @"VNBarcodeSymbologyQR";
  v8 = *MEMORY[0x1E69C6860];
  v14[16] = *MEMORY[0x1E69C6940];
  v14[17] = v8;
  v15[16] = @"VNBarcodeSymbologyUPCE";
  v15[17] = @"VNBarcodeSymbologyAppClipCode";
  v9 = *MEMORY[0x1E69C68C8];
  v14[18] = *MEMORY[0x1E69C6870];
  v14[19] = v9;
  v15[18] = @"VNBarcodeSymbologyCodabar";
  v15[19] = @"VNBarcodeSymbologyGS1DataBar";
  v10 = *MEMORY[0x1E69C68D8];
  v14[20] = *MEMORY[0x1E69C68D0];
  v14[21] = v10;
  v15[20] = @"VNBarcodeSymbologyGS1DataBarExpanded";
  v15[21] = @"VNBarcodeSymbologyGS1DataBarLimited";
  v11 = *MEMORY[0x1E69C6908];
  v14[22] = *MEMORY[0x1E69C6900];
  v14[23] = v11;
  v15[22] = @"VNBarcodeSymbologyMicroPDF417";
  v15[23] = @"VNBarcodeSymbologyMicroQR";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:24];
  v13 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapPrivate]::ourMRCSymbologyToBarcodeSymbologyMapPrivate;
  +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapPrivate]::ourMRCSymbologyToBarcodeSymbologyMapPrivate = v12;
}

+ (id)supportedSymbologiesRev2
{
  v2 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2];
  v9 = v2;
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    VNValidatedLog(4, @"Unable to obtain the supported barcode symbologies", v3, v4, v5, v6, v7, v8, v12);
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

+ (id)_allBarcodeSymbologiesRev2
{
  if (+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2]::onceToken, &__block_literal_global_49);
  }

  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2]::_allBarcodeSymbologiesRev2;

  return v3;
}

void __53__VNDetectBarcodesRequest__allBarcodeSymbologiesRev2__block_invoke()
{
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMap];
  v0 = [v4 allKeys];
  v1 = [v0 sortedArrayUsingSelector:sel_compare_];
  v2 = [v1 copy];
  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2]::_allBarcodeSymbologiesRev2;
  +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2]::_allBarcodeSymbologiesRev2 = v2;
}

+ (id)_ourBarcodeSymbologyToMRCSymbologyMap
{
  v2 = MEMORY[0x1E695DF90];
  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMap];
  v4 = [v2 dictionaryWithCapacity:{objc_msgSend(v3, "count")}];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMap__block_invoke;
  block[3] = &unk_1E77B3BE0;
  v11 = v4;
  v5 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMap]::onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMap]::onceToken, block);
  }

  v7 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMap]::ourBarcodeSymbologyToMRCSymbologyMap;
  v8 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMap]::ourBarcodeSymbologyToMRCSymbologyMap;

  return v7;
}

void __64__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMap__block_invoke(uint64_t a1)
{
  v2 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMap];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__VNDetectBarcodesRequest__ourBarcodeSymbologyToMRCSymbologyMap__block_invoke_2;
  v5[3] = &unk_1E77B38E8;
  v6 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = [*(a1 + 32) copy];
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMap]::ourBarcodeSymbologyToMRCSymbologyMap;
  +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMap]::ourBarcodeSymbologyToMRCSymbologyMap = v3;
}

+ (id)_ourMRCSymbologyToBarcodeSymbologyMap
{
  if (+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMap]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMap]::onceToken, &__block_literal_global_47);
  }

  v3 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMap]::ourMRCSymbologyToBarcodeSymbologyMap;

  return v3;
}

void __64__VNDetectBarcodesRequest__ourMRCSymbologyToBarcodeSymbologyMap__block_invoke()
{
  v14[23] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C6880];
  v13[0] = *MEMORY[0x1E69C6868];
  v13[1] = v0;
  v14[0] = @"VNBarcodeSymbologyAztec";
  v14[1] = @"VNBarcodeSymbologyCode39";
  v1 = *MEMORY[0x1E69C6890];
  v13[2] = *MEMORY[0x1E69C6888];
  v13[3] = v1;
  v14[2] = @"VNBarcodeSymbologyCode39Checksum";
  v14[3] = @"VNBarcodeSymbologyCode39FullASCII";
  v2 = *MEMORY[0x1E69C68A0];
  v13[4] = *MEMORY[0x1E69C6898];
  v13[5] = v2;
  v14[4] = @"VNBarcodeSymbologyCode39FullASCIIChecksum";
  v14[5] = @"VNBarcodeSymbologyCode93";
  v3 = *MEMORY[0x1E69C6878];
  v13[6] = *MEMORY[0x1E69C68A8];
  v13[7] = v3;
  v14[6] = @"VNBarcodeSymbologyCode93i";
  v14[7] = @"VNBarcodeSymbologyCode128";
  v4 = *MEMORY[0x1E69C68C0];
  v13[8] = *MEMORY[0x1E69C68B0];
  v13[9] = v4;
  v14[8] = @"VNBarcodeSymbologyDataMatrix";
  v14[9] = @"VNBarcodeSymbologyEAN8";
  v5 = *MEMORY[0x1E69C68E0];
  v13[10] = *MEMORY[0x1E69C68B8];
  v13[11] = v5;
  v14[10] = @"VNBarcodeSymbologyEAN13";
  v14[11] = @"VNBarcodeSymbologyI2of5";
  v6 = *MEMORY[0x1E69C68F0];
  v13[12] = *MEMORY[0x1E69C68E8];
  v13[13] = v6;
  v14[12] = @"VNBarcodeSymbologyI2of5Checksum";
  v14[13] = @"VNBarcodeSymbologyITF14";
  v7 = *MEMORY[0x1E69C6938];
  v13[14] = *MEMORY[0x1E69C6910];
  v13[15] = v7;
  v14[14] = @"VNBarcodeSymbologyPDF417";
  v14[15] = @"VNBarcodeSymbologyQR";
  v8 = *MEMORY[0x1E69C6870];
  v13[16] = *MEMORY[0x1E69C6940];
  v13[17] = v8;
  v14[16] = @"VNBarcodeSymbologyUPCE";
  v14[17] = @"VNBarcodeSymbologyCodabar";
  v9 = *MEMORY[0x1E69C68D0];
  v13[18] = *MEMORY[0x1E69C68C8];
  v13[19] = v9;
  v14[18] = @"VNBarcodeSymbologyGS1DataBar";
  v14[19] = @"VNBarcodeSymbologyGS1DataBarExpanded";
  v10 = *MEMORY[0x1E69C6900];
  v13[20] = *MEMORY[0x1E69C68D8];
  v13[21] = v10;
  v14[20] = @"VNBarcodeSymbologyGS1DataBarLimited";
  v14[21] = @"VNBarcodeSymbologyMicroPDF417";
  v13[22] = *MEMORY[0x1E69C6908];
  v14[22] = @"VNBarcodeSymbologyMicroQR";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:23];
  v12 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMap]::ourMRCSymbologyToBarcodeSymbologyMap;
  +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMap]::ourMRCSymbologyToBarcodeSymbologyMap = v11;
}

+ (id)supportedSymbologiesRev1
{
  v2 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev1];
  v9 = v2;
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    VNValidatedLog(4, @"Unable to obtain the supported barcode symbologies", v3, v4, v5, v6, v7, v8, v12);
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

+ (id)_allBarcodeSymbologiesRev1
{
  if (+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev1]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _allBarcodeSymbologiesRev1]::onceToken, &__block_literal_global_42);
  }

  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev1]::_allBarcodeSymbologiesRev1;

  return v3;
}

void __53__VNDetectBarcodesRequest__allBarcodeSymbologiesRev1__block_invoke()
{
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToACBSBarcodeTypeMap];
  v0 = [v4 allKeys];
  v1 = [v0 sortedArrayUsingSelector:sel_compare_];
  v2 = [v1 copy];
  v3 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev1]::_allBarcodeSymbologiesRev1;
  +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev1]::_allBarcodeSymbologiesRev1 = v2;
}

+ (id)_ourBarcodeSymbologyToACBSBarcodeTypeMap
{
  v2 = MEMORY[0x1E695DF90];
  v3 = +[VNDetectBarcodesRequest _ourACBSBarcodeTypeToBarcodeSymbologyMap];
  v4 = [v2 dictionaryWithCapacity:{objc_msgSend(v3, "count")}];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VNDetectBarcodesRequest__ourBarcodeSymbologyToACBSBarcodeTypeMap__block_invoke;
  block[3] = &unk_1E77B3BE0;
  v11 = v4;
  v5 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToACBSBarcodeTypeMap]::onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourBarcodeSymbologyToACBSBarcodeTypeMap]::onceToken, block);
  }

  v7 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToACBSBarcodeTypeMap]::ourBarcodeSymbologyToACBSBarcodeTypeMap;
  v8 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToACBSBarcodeTypeMap]::ourBarcodeSymbologyToACBSBarcodeTypeMap;

  return v7;
}

void __67__VNDetectBarcodesRequest__ourBarcodeSymbologyToACBSBarcodeTypeMap__block_invoke(uint64_t a1)
{
  v2 = +[VNDetectBarcodesRequest _ourACBSBarcodeTypeToBarcodeSymbologyMap];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__VNDetectBarcodesRequest__ourBarcodeSymbologyToACBSBarcodeTypeMap__block_invoke_2;
  v5[3] = &unk_1E77B38E8;
  v6 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = [*(a1 + 32) copy];
  v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToACBSBarcodeTypeMap]::ourBarcodeSymbologyToACBSBarcodeTypeMap;
  +[VNDetectBarcodesRequest _ourBarcodeSymbologyToACBSBarcodeTypeMap]::ourBarcodeSymbologyToACBSBarcodeTypeMap = v3;
}

+ (id)_ourACBSBarcodeTypeToBarcodeSymbologyMap
{
  if (+[VNDetectBarcodesRequest _ourACBSBarcodeTypeToBarcodeSymbologyMap]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest _ourACBSBarcodeTypeToBarcodeSymbologyMap]::onceToken, &__block_literal_global_37_12520);
  }

  v3 = +[VNDetectBarcodesRequest _ourACBSBarcodeTypeToBarcodeSymbologyMap]::ourACBSBarcodeTypeToBarcodeSymbologyMap;

  return v3;
}

void __67__VNDetectBarcodesRequest__ourACBSBarcodeTypeToBarcodeSymbologyMap__block_invoke()
{
  v11[17] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C69E0];
  v10[0] = *MEMORY[0x1E69C69D0];
  v10[1] = v0;
  v11[0] = @"VNBarcodeSymbologyAztec";
  v11[1] = @"VNBarcodeSymbologyCode39";
  v1 = *MEMORY[0x1E69C69F0];
  v10[2] = *MEMORY[0x1E69C69E8];
  v10[3] = v1;
  v11[2] = @"VNBarcodeSymbologyCode39Checksum";
  v11[3] = @"VNBarcodeSymbologyCode39FullASCII";
  v2 = *MEMORY[0x1E69C6A00];
  v10[4] = *MEMORY[0x1E69C69F8];
  v10[5] = v2;
  v11[4] = @"VNBarcodeSymbologyCode39FullASCIIChecksum";
  v11[5] = @"VNBarcodeSymbologyCode93";
  v3 = *MEMORY[0x1E69C69D8];
  v10[6] = *MEMORY[0x1E69C6A08];
  v10[7] = v3;
  v11[6] = @"VNBarcodeSymbologyCode93i";
  v11[7] = @"VNBarcodeSymbologyCode128";
  v4 = *MEMORY[0x1E69C6A20];
  v10[8] = *MEMORY[0x1E69C6A10];
  v10[9] = v4;
  v11[8] = @"VNBarcodeSymbologyDataMatrix";
  v11[9] = @"VNBarcodeSymbologyEAN8";
  v5 = *MEMORY[0x1E69C6A28];
  v10[10] = *MEMORY[0x1E69C6A18];
  v10[11] = v5;
  v11[10] = @"VNBarcodeSymbologyEAN13";
  v11[11] = @"VNBarcodeSymbologyI2of5";
  v6 = *MEMORY[0x1E69C6A38];
  v10[12] = *MEMORY[0x1E69C6A30];
  v10[13] = v6;
  v11[12] = @"VNBarcodeSymbologyI2of5Checksum";
  v11[13] = @"VNBarcodeSymbologyITF14";
  v7 = *MEMORY[0x1E69C6A48];
  v10[14] = *MEMORY[0x1E69C6A40];
  v10[15] = v7;
  v11[14] = @"VNBarcodeSymbologyPDF417";
  v11[15] = @"VNBarcodeSymbologyQR";
  v10[16] = *MEMORY[0x1E69C6A50];
  v11[16] = @"VNBarcodeSymbologyUPCE";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:17];
  v9 = +[VNDetectBarcodesRequest _ourACBSBarcodeTypeToBarcodeSymbologyMap]::ourACBSBarcodeTypeToBarcodeSymbologyMap;
  +[VNDetectBarcodesRequest _ourACBSBarcodeTypeToBarcodeSymbologyMap]::ourACBSBarcodeTypeToBarcodeSymbologyMap = v8;
}

+ (id)barcodeSymbologyForMRCSymbology:(__CFString *)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = +[VNDetectBarcodesRequest _ourMRCSymbologyToBarcodeSymbologyMapRev4Private];
    v3 = [v4 objectForKeyedSubscript:v3];
  }

  return v3;
}

+ (__CFString)MRCSymbologyForBarcodeSymbology:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToMRCSymbologyMapRev4Private];
    v5 = [v4 objectForKeyedSubscript:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)barcodeSymbologyForACBSBarcodeType:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[VNDetectBarcodesRequest _ourACBSBarcodeTypeToBarcodeSymbologyMap];
    v5 = [v4 objectForKeyedSubscript:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)ACBSBarcodeTypeForBarcodeSymbology:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[VNDetectBarcodesRequest _ourBarcodeSymbologyToACBSBarcodeTypeMap];
    v5 = [v4 objectForKeyedSubscript:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 - 3737841664u > 2)
  {
    return 0;
  }

  else
  {
    return off_1E77B39D0[a3 - 3737841664u];
  }
}

+ (id)privateRevisionsSet
{
  if (+[VNDetectBarcodesRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectBarcodesRequest privateRevisionsSet]::onceToken, &__block_literal_global_12532);
  }

  v3 = +[VNDetectBarcodesRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __46__VNDetectBarcodesRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNDetectBarcodesRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF000uLL, a2, a3, a4, a5, a6, a7, a8, 3737841665);

  return MEMORY[0x1EEE66BB8]();
}

@end