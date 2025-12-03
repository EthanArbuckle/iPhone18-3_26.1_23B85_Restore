@interface CIFilter
+ (BOOL)exchangeImplementationsForClass;
+ (BOOL)wrapClassIfNeeded:(Class)needed;
+ (CGImageMetadata)_imageMetadataFromFilters:(id)filters inputImageExtent:(CGRect)extent;
+ (CIFilter)CMYKHalftone;
+ (CIFilter)KMeansFilter;
+ (CIFilter)LabDeltaE;
+ (CIFilter)PDF417BarcodeGenerator;
+ (CIFilter)QRCodeGenerator;
+ (CIFilter)accordionFoldTransitionFilter;
+ (CIFilter)additionCompositingFilter;
+ (CIFilter)affineClampFilter;
+ (CIFilter)affineTileFilter;
+ (CIFilter)areaAverageFilter;
+ (CIFilter)areaHistogramFilter;
+ (CIFilter)areaLogarithmicHistogramFilter;
+ (CIFilter)areaMaximumAlphaFilter;
+ (CIFilter)areaMaximumFilter;
+ (CIFilter)areaMinMaxFilter;
+ (CIFilter)areaMinMaxRedFilter;
+ (CIFilter)areaMinimumAlphaFilter;
+ (CIFilter)areaMinimumFilter;
+ (CIFilter)attributedTextImageGeneratorFilter;
+ (CIFilter)aztecCodeGeneratorFilter;
+ (CIFilter)barcodeGeneratorFilter;
+ (CIFilter)barsSwipeTransitionFilter;
+ (CIFilter)bicubicScaleTransformFilter;
+ (CIFilter)blendWithAlphaMaskFilter;
+ (CIFilter)blendWithBlueMaskFilter;
+ (CIFilter)blendWithMaskFilter;
+ (CIFilter)blendWithRedMaskFilter;
+ (CIFilter)bloomFilter;
+ (CIFilter)blurredRectangleGeneratorFilter;
+ (CIFilter)bokehBlurFilter;
+ (CIFilter)boxBlurFilter;
+ (CIFilter)bumpDistortionFilter;
+ (CIFilter)bumpDistortionLinearFilter;
+ (CIFilter)cannyEdgeDetectorFilter;
+ (CIFilter)checkerboardGeneratorFilter;
+ (CIFilter)circleSplashDistortionFilter;
+ (CIFilter)circularScreenFilter;
+ (CIFilter)circularWrapFilter;
+ (CIFilter)code128BarcodeGeneratorFilter;
+ (CIFilter)colorAbsoluteDifferenceFilter;
+ (CIFilter)colorBlendModeFilter;
+ (CIFilter)colorBurnBlendModeFilter;
+ (CIFilter)colorClampFilter;
+ (CIFilter)colorControlsFilter;
+ (CIFilter)colorCrossPolynomialFilter;
+ (CIFilter)colorCubeFilter;
+ (CIFilter)colorCubeWithColorSpaceFilter;
+ (CIFilter)colorCubesMixedWithMaskFilter;
+ (CIFilter)colorCurvesFilter;
+ (CIFilter)colorDodgeBlendModeFilter;
+ (CIFilter)colorMapFilter;
+ (CIFilter)colorMatrixFilter;
+ (CIFilter)colorMonochromeFilter;
+ (CIFilter)colorPolynomialFilter;
+ (CIFilter)colorPosterizeFilter;
+ (CIFilter)colorThresholdFilter;
+ (CIFilter)columnAverageFilter;
+ (CIFilter)convertLabToRGBFilter;
+ (CIFilter)convertRGBtoLabFilter;
+ (CIFilter)convolution3X3Filter;
+ (CIFilter)convolution5X5Filter;
+ (CIFilter)convolution7X7Filter;
+ (CIFilter)convolution9HorizontalFilter;
+ (CIFilter)convolution9VerticalFilter;
+ (CIFilter)convolutionRGB3X3Filter;
+ (CIFilter)convolutionRGB5X5Filter;
+ (CIFilter)convolutionRGB7X7Filter;
+ (CIFilter)convolutionRGB9HorizontalFilter;
+ (CIFilter)convolutionRGB9VerticalFilter;
+ (CIFilter)copyMachineTransitionFilter;
+ (CIFilter)coreMLModelFilter;
+ (CIFilter)crystallizeFilter;
+ (CIFilter)darkenBlendModeFilter;
+ (CIFilter)depthOfFieldFilter;
+ (CIFilter)differenceBlendModeFilter;
+ (CIFilter)discBlurFilter;
+ (CIFilter)disintegrateWithMaskTransitionFilter;
+ (CIFilter)displacementDistortionFilter;
+ (CIFilter)dissolveTransitionFilter;
+ (CIFilter)ditherFilter;
+ (CIFilter)divideBlendModeFilter;
+ (CIFilter)documentEnhancerFilter;
+ (CIFilter)dotScreenFilter;
+ (CIFilter)drosteFilter;
+ (CIFilter)edgePreserveUpsampleFilter;
+ (CIFilter)edgeWorkFilter;
+ (CIFilter)edgesFilter;
+ (CIFilter)eightfoldReflectedTileFilter;
+ (CIFilter)exclusionBlendModeFilter;
+ (CIFilter)exposureAdjustFilter;
+ (CIFilter)falseColorFilter;
+ (CIFilter)filterWithImageURL:(NSURL *)url options:(NSDictionary *)options;
+ (CIFilter)filterWithName:(NSString *)name keysAndValues:(id)key0;
+ (CIFilter)filterWithName:(NSString *)name withInputParameters:(NSDictionary *)params;
+ (CIFilter)filterWithName:(id)name compatibilityVersion:(int)version;
+ (CIFilter)filterWithName:(id)name compatibilityVersion:(int)version keysAndValues:(id)values;
+ (CIFilter)filterWithName:(id)name setDefaults:(BOOL)defaults;
+ (CIFilter)filterWithString:(id)string;
+ (CIFilter)flashTransitionFilter;
+ (CIFilter)fourfoldReflectedTileFilter;
+ (CIFilter)fourfoldRotatedTileFilter;
+ (CIFilter)fourfoldTranslatedTileFilter;
+ (CIFilter)gammaAdjustFilter;
+ (CIFilter)gaussianBlurFilter;
+ (CIFilter)gaussianGradientFilter;
+ (CIFilter)glassDistortionFilter;
+ (CIFilter)glassLozengeFilter;
+ (CIFilter)glideReflectedTileFilter;
+ (CIFilter)gloomFilter;
+ (CIFilter)hardLightBlendModeFilter;
+ (CIFilter)hatchedScreenFilter;
+ (CIFilter)heightFieldFromMaskFilter;
+ (CIFilter)hexagonalPixellateFilter;
+ (CIFilter)highlightShadowAdjustFilter;
+ (CIFilter)histogramDisplayFilter;
+ (CIFilter)holeDistortionFilter;
+ (CIFilter)hueAdjustFilter;
+ (CIFilter)hueBlendModeFilter;
+ (CIFilter)hueSaturationValueGradientFilter;
+ (CIFilter)kaleidoscopeFilter;
+ (CIFilter)keystoneCorrectionCombinedFilter;
+ (CIFilter)keystoneCorrectionHorizontalFilter;
+ (CIFilter)keystoneCorrectionVerticalFilter;
+ (CIFilter)lanczosScaleTransformFilter;
+ (CIFilter)lenticularHaloGeneratorFilter;
+ (CIFilter)lightTunnelFilter;
+ (CIFilter)lightenBlendModeFilter;
+ (CIFilter)lineOverlayFilter;
+ (CIFilter)lineScreenFilter;
+ (CIFilter)linearBurnBlendModeFilter;
+ (CIFilter)linearDodgeBlendModeFilter;
+ (CIFilter)linearGradientFilter;
+ (CIFilter)linearLightBlendModeFilter;
+ (CIFilter)luminosityBlendModeFilter;
+ (CIFilter)maskedVariableBlurFilter;
+ (CIFilter)maximumCompositingFilter;
+ (CIFilter)meshGeneratorFilter;
+ (CIFilter)minimumCompositingFilter;
+ (CIFilter)mixFilter;
+ (CIFilter)modTransitionFilter;
+ (CIFilter)morphologyGradientFilter;
+ (CIFilter)morphologyMaximumFilter;
+ (CIFilter)morphologyMinimumFilter;
+ (CIFilter)morphologyRectangleMaximumFilter;
+ (CIFilter)morphologyRectangleMinimumFilter;
+ (CIFilter)motionBlurFilter;
+ (CIFilter)multiplyBlendModeFilter;
+ (CIFilter)multiplyCompositingFilter;
+ (CIFilter)ninePartStretchedFilter;
+ (CIFilter)ninePartTiledFilter;
+ (CIFilter)noiseReductionFilter;
+ (CIFilter)opTileFilter;
+ (CIFilter)overlayBlendModeFilter;
+ (CIFilter)pageCurlTransitionFilter;
+ (CIFilter)pageCurlWithShadowTransitionFilter;
+ (CIFilter)paletteCentroidFilter;
+ (CIFilter)palettizeFilter;
+ (CIFilter)parallelogramTileFilter;
+ (CIFilter)personSegmentationFilter;
+ (CIFilter)perspectiveCorrectionFilter;
+ (CIFilter)perspectiveRotateFilter;
+ (CIFilter)perspectiveTileFilter;
+ (CIFilter)perspectiveTransformFilter;
+ (CIFilter)perspectiveTransformWithExtentFilter;
+ (CIFilter)photoEffectChromeFilter;
+ (CIFilter)photoEffectFadeFilter;
+ (CIFilter)photoEffectInstantFilter;
+ (CIFilter)photoEffectMonoFilter;
+ (CIFilter)photoEffectNoirFilter;
+ (CIFilter)photoEffectProcessFilter;
+ (CIFilter)photoEffectTonalFilter;
+ (CIFilter)photoEffectTransferFilter;
+ (CIFilter)pinLightBlendModeFilter;
+ (CIFilter)pinchDistortionFilter;
+ (CIFilter)pixellateFilter;
+ (CIFilter)pointillizeFilter;
+ (CIFilter)radialGradientFilter;
+ (CIFilter)rippleTransitionFilter;
+ (CIFilter)roundedRectangleGeneratorFilter;
+ (CIFilter)roundedRectangleStrokeGeneratorFilter;
+ (CIFilter)rowAverageFilter;
+ (CIFilter)saturationBlendModeFilter;
+ (CIFilter)screenBlendModeFilter;
+ (CIFilter)sepiaToneFilter;
+ (CIFilter)shadedMaterialFilter;
+ (CIFilter)sharpenLuminanceFilter;
+ (CIFilter)sixfoldReflectedTileFilter;
+ (CIFilter)sixfoldRotatedTileFilter;
+ (CIFilter)smoothLinearGradientFilter;
+ (CIFilter)softLightBlendModeFilter;
+ (CIFilter)sourceAtopCompositingFilter;
+ (CIFilter)sourceInCompositingFilter;
+ (CIFilter)sourceOutCompositingFilter;
+ (CIFilter)sourceOverCompositingFilter;
+ (CIFilter)spotColorFilter;
+ (CIFilter)spotLightFilter;
+ (CIFilter)starShineGeneratorFilter;
+ (CIFilter)straightenFilter;
+ (CIFilter)stretchCropFilter;
+ (CIFilter)stripesGeneratorFilter;
+ (CIFilter)subtractBlendModeFilter;
+ (CIFilter)sunbeamsGeneratorFilter;
+ (CIFilter)swipeTransitionFilter;
+ (CIFilter)temperatureAndTintFilter;
+ (CIFilter)textImageGeneratorFilter;
+ (CIFilter)toneCurveFilter;
+ (CIFilter)torusLensDistortionFilter;
+ (CIFilter)triangleKaleidoscopeFilter;
+ (CIFilter)triangleTileFilter;
+ (CIFilter)twelvefoldReflectedTileFilter;
+ (CIFilter)twirlDistortionFilter;
+ (CIFilter)unsharpMaskFilter;
+ (CIFilter)vibranceFilter;
+ (CIFilter)vignetteEffectFilter;
+ (CIFilter)vignetteFilter;
+ (CIFilter)vividLightBlendModeFilter;
+ (CIFilter)vortexDistortionFilter;
+ (CIFilter)whitePointAdjustFilter;
+ (CIFilter)zoomBlurFilter;
+ (NSArray)filterArrayFromSerializedXMP:(NSData *)xmpData inputImageExtent:(CGRect)extent error:(NSError *)outError;
+ (NSArray)filterNamesInCategories:(NSArray *)categories;
+ (NSArray)filterNamesInCategory:(NSString *)category;
+ (NSData)serializedXMPFromFilters:(NSArray *)filters inputImageExtent:(CGRect)extent;
+ (NSString)localizedDescriptionForFilterName:(NSString *)filterName;
+ (NSString)localizedNameForCategory:(NSString *)category;
+ (NSString)localizedNameForFilterName:(NSString *)filterName;
+ (NSURL)localizedReferenceDocumentationForFilterName:(NSString *)filterName;
+ (id)_filterArrayFromImageMetadata:(CGImageMetadata *)metadata inputImageExtent:(CGRect)extent;
+ (id)_filterArrayFromProperties:(id)properties;
+ (id)_filterArrayFromProperties:(id)properties inputImageExtent:(CGRect)extent;
+ (id)_propertyArrayFromFilters:(id)filters inputImageExtent:(CGRect)extent;
+ (id)allCategories:(BOOL)categories;
+ (id)areaAlphaWeightedHistogramFilter;
+ (id)areaAverageMaximumRedFilter;
+ (id)areaBoundsRedFilter;
+ (id)blurredRoundedRectangleGeneratorFilter;
+ (id)distanceGradientFromRedMaskFilter;
+ (id)filterName:(id)name append:(id)append arguments:(id)arguments;
+ (id)filterName:(id)name prepend:(id)prepend imageName:(id)imageName arguments:(id)arguments;
+ (id)filterName:(id)name replacement:(id)replacement arguments:(id)arguments;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
+ (id)maximumScaleTransformFilter;
+ (id)metalFilterWithName:(id)name;
+ (id)metalFilterWithName:(id)name withInputParameters:(id)parameters;
+ (id)prewarmedFilterFromString:(id)string;
+ (id)roundedQRCodeGeneratorFilter;
+ (id)signedDistanceGradientFromRedMaskFilter;
+ (id)systemToneMapFilter;
+ (id)toneMapHeadroomFilter;
+ (int)getMinMaxSimulatedApertureFrom:(__CFData *)from minValue:(float *)value maxValue:(float *)maxValue version:(int *)version;
+ (int)maxSDOFRenderingVersionSupported;
+ (void)addFilterToSkip:(id)skip;
+ (void)clearCache;
+ (void)registerFilterName:(NSString *)name constructor:(id)anObject classAttributes:(NSDictionary *)attributes;
+ (void)unregisterFilterName:(id)name;
- (BOOL)_filterClassInCategory:(id)category;
- (BOOL)verifyPrewarmedFilter:(id)filter;
- (CIFilter)initWithCoder:(id)coder;
- (CIImage)apply:(CIKernel *)k;
- (CIImage)apply:(CIKernel *)k arguments:(NSArray *)args options:(NSDictionary *)dict;
- (NSArray)inputKeys;
- (NSArray)outputKeys;
- (NSDictionary)attributes;
- (NSString)name;
- (id)_append:(id)_append image:(id)image;
- (id)_appendSingleFilterTo:(id)to filterAndSettings:(id)settings;
- (id)_copyFilterWithZone:(_NSZone *)zone;
- (id)_serializedXMPString;
- (id)apply:(id)apply image:(id)image arguments:(id)arguments inSpace:(CGColorSpace *)space;
- (id)apply:(id)apply image:(id)image arguments:(id)arguments inoutSpace:(CGColorSpace *)space;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)debugQuickLookObject;
- (id)description;
- (id)outputImageCatchAll:(unsigned int)all;
- (id)prewarmingString;
- (id)valueForUndefinedKey:(id)key;
- (int)compatibilityVersion;
- (unint64_t)hash;
- (void)_crashed_when_dealloc_called_setValue_nil_forKey_probably_because_the_subclass_already_released_it:(id)key_probably_because_the_subclass_already_released_it className:(const char *)name overridesDealloc:(BOOL)dealloc;
- (void)_prepend:(id)_prepend;
- (void)_prependSingleFilter:(id)filter;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDefaults;
- (void)setIdentity;
- (void)setUserInfo:(id)info;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation CIFilter

- (void)setDefaults
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [CIFilterClassDefaults classDefaultsForClass:objc_opt_class()];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  inputKeys = [(CIFilter *)self inputKeys];
  v5 = [(NSArray *)inputKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(inputKeys);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v3 objectForKey:v9];
        if (v10)
        {
          [(CIFilter *)self setValue:v10 forKey:v9];
        }
      }

      v6 = [(NSArray *)inputKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (NSArray)inputKeys
{
  v2 = [CIFilterClassInfo classInfoForClass:objc_opt_class()];

  return [v2 inputKeys];
}

- (void)dealloc
{
  v3 = [CIFilterClassInfo classInfoForClass:objc_opt_class()];
  inputKeys = [v3 inputKeys];
  inputClasses = [v3 inputClasses];
  v6 = [objc_msgSend(objc_opt_class() "description")];
  v7 = NSSelectorFromString(&cfstr_Dealloc.isa);
  v8 = [objc_opt_class() instanceMethodForSelector:v7];
  v9 = [CIFilter instanceMethodForSelector:v7];
  if ([inputKeys count])
  {
    v10 = 0;
    do
    {
      v11 = [inputKeys objectAtIndexedSubscript:v10];
      v12 = [inputClasses objectAtIndexedSubscript:v10];
      if ([v12 length] && (objc_msgSend(v12, "isEqualToString:", @"__WrappedNSNumber") & 1) == 0)
      {
        [(CIFilter *)self _crashed_when_dealloc_called_setValue_nil_forKey_probably_because_the_subclass_already_released_it:v11 className:v6 overridesDealloc:v8 != v9];
      }

      ++v10;
    }

    while (v10 < [inputKeys count]);
  }

  v13.receiver = self;
  v13.super_class = CIFilter;
  [(CIFilter *)&v13 dealloc];
}

- (id)prewarmingString
{
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = objc_opt_class();
  [dictionary setObject:NSStringFromClass(v4) forKeyedSubscript:@"FILTERNAME"];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  inputKeys = [(CIFilter *)self inputKeys];
  v6 = [(NSArray *)inputKeys countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = v6;
  v8 = *v29;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(inputKeys);
      }

      v10 = *(*(&v28 + 1) + 8 * i);
      v11 = [(CIFilter *)self valueForKey:v10];
      if (v11)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (!v13 || v13 != CGImageMetadataGetTypeID())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32[0] = @"type";
            v33[0] = [objc_opt_class() description];
            v32[1] = @"extent";
            [v12 extent];
            v33[1] = [CIVector vectorWithCGRect:?];
            v32[2] = @"description";
            v33[2] = [v12 description];
            v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
            goto LABEL_15;
          }

          if (isKind_AVCameraCalibrationDataClass(v12))
          {
            v16 = AVCameraCalibrationDataDictionary(v12);
LABEL_15:
            v17 = v16;
            v18 = dictionary;
          }

          else
          {
            TypeID = CGColorSpaceGetTypeID();
            if (TypeID == CFGetTypeID(v12))
            {
              v23 = ci_logger_filter();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                [CIFilter(SDOFOnlyPrewarmingPrivate) prewarmingString];
              }

              return 0;
            }

            v18 = dictionary;
            v17 = v12;
          }

          [v18 setObject:v17 forKeyedSubscript:v10];
          continue;
        }

        XMPData = CGImageMetadataCreateXMPData(v12, 0);
        if (!XMPData)
        {
          v22 = ci_logger_filter();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [CIFilter(SDOFOnlyPrewarmingPrivate) prewarmingString];
          }

          return 0;
        }

        v15 = XMPData;
        [dictionary setObject:XMPData forKeyedSubscript:v10];
        CFRelease(v15);
      }
    }

    v7 = [(NSArray *)inputKeys countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_21:
  v27 = 0;
  v20 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objc_msgSend(MEMORY[0x1E695DF20] requiringSecureCoding:"dictionaryWithDictionary:" error:{dictionary), 0, &v27}];
  if (v27)
  {
    v21 = ci_logger_filter();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CIFilter(SDOFOnlyPrewarmingPrivate) prewarmingString];
    }

    return 0;
  }

  v24 = [v20 compressedDataUsingAlgorithm:2 error:&v27];
  if (!v27)
  {
    return [v24 base64EncodedStringWithOptions:1];
  }

  v25 = ci_logger_filter();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [CIFilter(SDOFOnlyPrewarmingPrivate) prewarmingString];
  }

  return 0;
}

+ (id)prewarmedFilterFromString:(id)string
{
  stringCopy = string;
  v60 = *MEMORY[0x1E69E9840];
  if (string)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:string options:1];
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v54 = 0;
    v6 = [v4 decompressedDataUsingAlgorithm:2 error:&v54];

    if (v54)
    {
      v7 = ci_logger_filter();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[CIFilter(SDOFOnlyPrewarmingPrivate) prewarmedFilterFromString:];
      }

      return 0;
    }

    v48 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_self();
    v46 = objc_opt_self();
    v45 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = objc_opt_self();
    v11 = objc_opt_self();
    v12 = objc_opt_self();
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = objc_opt_self();
    v16 = objc_opt_self();
    v17 = objc_opt_self();
    v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:objc_msgSend(v48 fromData:"setWithObjects:" error:{v47, v46, v45, v9, v10, v11, v12, v13, v14, v15, v16, v17, objc_opt_self(), 0), v6, 0}];
    if (!v18)
    {
      v40 = ci_logger_filter();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        +[CIFilter(SDOFOnlyPrewarmingPrivate) prewarmedFilterFromString:];
      }

      return 0;
    }

    v19 = v18;
    v20 = [v18 objectForKeyedSubscript:@"FILTERNAME"];
    if (!v20)
    {
      v41 = ci_logger_filter();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        +[CIFilter(SDOFOnlyPrewarmingPrivate) prewarmedFilterFromString:];
      }

      return 0;
    }

    v21 = [CIFilter filterWithName:v20];
    if (!v21)
    {
      v42 = ci_logger_filter();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        +[CIFilter(SDOFOnlyPrewarmingPrivate) prewarmedFilterFromString:];
      }

      return 0;
    }

    stringCopy = v21;
    inputKeys = [(CIFilter *)v21 inputKeys];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v23 = [(NSArray *)inputKeys countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v51;
      while (2)
      {
        v26 = 0;
        v49 = v24;
        do
        {
          if (*v51 != v25)
          {
            objc_enumerationMutation(inputKeys);
          }

          v27 = *(*(&v50 + 1) + 8 * v26);
          v28 = [v19 objectForKey:v27];
          if (v28)
          {
            v29 = v28;
            if ([v27 isEqualToString:@"inputAuxDataMetadata"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v30 = CGImageMetadataCreateFromXMPData(v29);
              if (!v30)
              {
                v43 = ci_logger_filter();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  +[CIFilter(SDOFOnlyPrewarmingPrivate) prewarmedFilterFromString:];
                }

                return 0;
              }

              v31 = v30;
              [stringCopy setValue:v30 forKey:@"inputAuxDataMetadata"];
              CFRelease(v31);
            }

            else if ([v27 isEqualToString:@"inputCalibrationData"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v32 = AVFDepthCameraCalibrationDataInitWithDictionary(v29);
              if (!v32)
              {
                v44 = ci_logger_filter();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  +[CIFilter(SDOFOnlyPrewarmingPrivate) prewarmedFilterFromString:];
                }

                return 0;
              }

              v33 = v32;
              [stringCopy setValue:v32 forKey:@"inputCalibrationData"];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (([-[__CFData objectForKeyedSubscript:](v29 objectForKeyedSubscript:{@"type", "isEqualToString:", objc_msgSend(objc_opt_class(), "description")}] & 1) == 0)
                {
                  +[CIFilter(SDOFOnlyPrewarmingPrivate) prewarmedFilterFromString:];
                }

                [-[__CFData objectForKeyedSubscript:](v29 objectForKeyedSubscript:{@"extent", "CGRectValue"}];
                [stringCopy setValue:-[CIImage imageByInsertingIntermediate:](-[CIImage imageByCroppingToRect:](+[CIImage imageWithColor:](CIImage forKey:{"imageWithColor:", +[CIColor whiteColor](CIColor, "whiteColor")), "imageByCroppingToRect:", v36, v37, v38, v39), "imageByInsertingIntermediate:", 0), v27}];
                v24 = v49;
              }

              else
              {
                [stringCopy setValue:v29 forKey:v27];
              }
            }
          }

          else if (([v27 isEqualToString:@"inputShape"] & 1) == 0)
          {
            v34 = ci_logger_filter();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v35 = [objc_opt_class() description];
              *buf = 138543618;
              v56 = v35;
              v57 = 2114;
              v58 = v27;
              _os_log_error_impl(&dword_19CC36000, v34, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find value in dictionary for key %{public}@", buf, 0x16u);
            }
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = [(NSArray *)inputKeys countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }
  }

  return stringCopy;
}

- (BOOL)verifyPrewarmedFilter:(id)filter
{
  v171 = *MEMORY[0x1E69E9840];
  obj = [(CIFilter *)self inputKeys];
  if (!filter)
  {
    goto LABEL_88;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = [(NSString *)v6 isEqualToString:NSStringFromClass(v7)];
  if (!v8)
  {
    return v8;
  }

  filterCopy = filter;
  v136 = NSSelectorFromString(&cfstr_Isequalto.isa);
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v158 objects:v170 count:16];
  if (!v9)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v156 = *v159;
  v10 = vdupq_n_s32(0x38D1B717u);
  v153 = v10;
  v10.i64[0] = 138543362;
  v135 = v10;
LABEL_5:
  v11 = 0;
  while (1)
  {
    if (*v159 != v156)
    {
      objc_enumerationMutation(obj);
    }

    v12 = *(*(&v158 + 1) + 8 * v11);
    v13 = [(CIFilter *)self valueForKey:v12, *&v135];
    if (!v13)
    {
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [filterCopy valueForKey:v12];
      [v13 extent];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [v14 extent];
      v173.origin.x = v23;
      v173.origin.y = v24;
      v173.size.width = v25;
      v173.size.height = v26;
      v172.origin.x = v16;
      v172.origin.y = v18;
      v172.size.width = v20;
      v172.size.height = v22;
      if (!CGRectEqualToRect(v172, v173))
      {
        [CIFilter(SDOFOnlyPrewarmingPrivate) verifyPrewarmedFilter:];
      }

      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [filterCopy valueForKey:v12];
      [v13 floatValue];
      v29 = v28;
      [v27 floatValue];
      if (v29 != v30)
      {
        v105 = ci_logger_filter();
        v8 = os_log_type_enabled(v105, OS_LOG_TYPE_ERROR);
        if (!v8)
        {
          return v8;
        }

        v106 = [objc_opt_class() description];
        [v13 floatValue];
        v108 = v107;
        [v27 floatValue];
        *v164 = 138544130;
        *&v164[4] = v106;
        *&v164[12] = 2114;
        *&v164[14] = v12;
        *&v164[22] = 2048;
        v165 = v108;
        v166 = 2048;
        v167 = v109;
        v99 = "%{public}@: Values for %{public}@ are not identical %g != %g";
        goto LABEL_70;
      }

      goto LABEL_27;
    }

    if (isKind_AVCameraCalibrationDataClass(v13))
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [filterCopy valueForKey:v12];
      v76 = [v13 count];
      if (v76 != [v75 count])
      {
        v105 = ci_logger_filter();
        v8 = os_log_type_enabled(v105, OS_LOG_TYPE_ERROR);
        if (!v8)
        {
          return v8;
        }

        v110 = [objc_opt_class() description];
        *&v111 = COERCE_DOUBLE([v13 count]);
        v112 = COERCE_DOUBLE([v75 count]);
        *v164 = 138544130;
        *&v164[4] = v110;
        *&v164[12] = 2114;
        *&v164[14] = v12;
        *&v164[22] = 2048;
        v165 = *&v111;
        v166 = 2048;
        v167 = v112;
        v99 = "%{public}@: vectors don't have the same # of components for key %{public}@ (%zu != %zu)";
        goto LABEL_70;
      }

      if ([v13 count])
      {
        v77 = 0.0;
        while (1)
        {
          [v13 valueAtIndex:*&v77];
          v79 = v78;
          [v75 valueAtIndex:*&v77];
          if (vabdd_f64(v79, v80) > 0.0000999999975)
          {
            break;
          }

          if (++*&v77 >= [v13 count])
          {
            goto LABEL_27;
          }
        }

        v94 = ci_logger_filter();
        v8 = os_log_type_enabled(v94, OS_LOG_TYPE_ERROR);
        if (!v8)
        {
          return v8;
        }

        v95 = [objc_opt_class() description];
        [v13 valueAtIndex:*&v77];
        v97 = v96;
        [v75 valueAtIndex:*&v77];
        *v164 = 138544386;
        *&v164[4] = v95;
        *&v164[12] = 2114;
        *&v164[14] = v12;
        *&v164[22] = 2048;
        v165 = v77;
        v166 = 2048;
        v167 = v97;
        v168 = 2048;
        v169 = v98;
        v99 = "%{public}@: Values for vector (%{public}@) at index %lu are not equal %g != %g";
LABEL_67:
        v103 = v94;
        v104 = 52;
        goto LABEL_71;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v81 = [filterCopy valueForKey:v12];
        numberOfComponents = [v13 numberOfComponents];
        if (numberOfComponents != [v13 numberOfComponents])
        {
          v105 = ci_logger_filter();
          v8 = os_log_type_enabled(v105, OS_LOG_TYPE_ERROR);
          if (!v8)
          {
            return v8;
          }

          v120 = [objc_opt_class() description];
          *&v121 = COERCE_DOUBLE([v13 numberOfComponents]);
          v122 = COERCE_DOUBLE([v81 numberOfComponents]);
          *v164 = 138544130;
          *&v164[4] = v120;
          *&v164[12] = 2114;
          *&v164[14] = v12;
          *&v164[22] = 2048;
          v165 = *&v121;
          v166 = 2048;
          v167 = v122;
          v99 = "%{public}@: colors don't have the same # of components for key %{public}@ (%zu != %zu)";
LABEL_70:
          v103 = v105;
          v104 = 42;
          goto LABEL_71;
        }

        components = [v13 components];
        components2 = [v81 components];
        if ([v13 numberOfComponents])
        {
          *&v85 = 0.0;
          while (vabdd_f64(*components, *components2) <= 0.0000999999975)
          {
            ++v85;
            ++components2;
            ++components;
            if (v85 >= [v13 numberOfComponents])
            {
              goto LABEL_27;
            }
          }

          v94 = ci_logger_filter();
          v8 = os_log_type_enabled(v94, OS_LOG_TYPE_ERROR);
          if (!v8)
          {
            return v8;
          }

          v100 = [objc_opt_class() description];
          v101 = *components;
          v102 = *components2;
          *v164 = 138544386;
          *&v164[4] = v100;
          *&v164[12] = 2114;
          *&v164[14] = v12;
          *&v164[22] = 2048;
          v165 = *&v85;
          v166 = 2048;
          v167 = v101;
          v168 = 2048;
          v169 = v102;
          v99 = "%{public}@: Values for color (%{public}@) at index %lu are not equal %g != %g";
          goto LABEL_67;
        }
      }

      else
      {
        TypeID = CGImageMetadataGetTypeID();
        if (TypeID == CFGetTypeID(v13))
        {
          XMPData = CGImageMetadataCreateXMPData(v13, 0);
          v88 = CGImageMetadataCreateXMPData([filterCopy valueForKey:v12], 0);
          if (([(__CFData *)XMPData isEqualToData:v88]& 1) == 0)
          {
            v89 = [filterCopy valueForKey:v12];
            *v164 = 0;
            *&v164[8] = v164;
            *&v164[16] = 0x2020000000;
            LOBYTE(v165) = 1;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __61__CIFilter_SDOFOnlyPrewarmingPrivate__verifyPrewarmedFilter___block_invoke;
            block[3] = &unk_1E75C26C0;
            block[6] = v164;
            block[7] = v89;
            block[4] = v13;
            block[5] = self;
            CGImageMetadataEnumerateTagsUsingBlock(v13, 0, 0, block);
            if ((*(*&v164[8] + 24) & 1) == 0)
            {
              v90 = ci_logger_filter();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                v93 = [objc_opt_class() description];
                *buf = v135.i32[0];
                v163 = v93;
                _os_log_error_impl(&dword_19CC36000, v90, OS_LOG_TYPE_ERROR, "%{public}@: XMP Image metadata may differ", buf, 0xCu);
              }
            }

            _Block_object_dispose(v164, 8);
          }

          if (XMPData)
          {
            CFRelease(XMPData);
          }

          if (v88)
          {
            CFRelease(v88);
          }

          goto LABEL_27;
        }

        v91 = CGColorSpaceGetTypeID();
        if (v91 == CFGetTypeID(v13))
        {
          [filterCopy valueForKey:v12];
          if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
          {
            v126 = ci_logger_filter();
            v8 = os_log_type_enabled(v126, OS_LOG_TYPE_ERROR);
            if (!v8)
            {
              return v8;
            }

            [CIFilter(SDOFOnlyPrewarmingPrivate) verifyPrewarmedFilter:];
LABEL_88:
            LOBYTE(v8) = 0;
            return v8;
          }
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v130 = ci_logger_filter();
            v8 = os_log_type_enabled(v130, OS_LOG_TYPE_ERROR);
            if (!v8)
            {
              return v8;
            }

            v123 = [objc_opt_class() description];
            v124 = objc_opt_class();
            *&v125 = COERCE_DOUBLE(NSStringFromClass(v124));
            *v164 = 138543874;
            *&v164[4] = v123;
            *&v164[12] = 2114;
            *&v164[14] = v12;
            *&v164[22] = 2114;
            v165 = *&v125;
            v99 = "%{public}@: don't know how to check for equality of contents for key %{public}@ (%{public}@) is nil.";
            goto LABEL_100;
          }

          v92 = [filterCopy valueForKey:v12];
          if (!v92)
          {
            v130 = ci_logger_filter();
            v8 = os_log_type_enabled(v130, OS_LOG_TYPE_ERROR);
            if (!v8)
            {
              return v8;
            }

            v127 = [objc_opt_class() description];
            v128 = objc_opt_class();
            *&v129 = COERCE_DOUBLE(NSStringFromClass(v128));
            *v164 = 138543874;
            *&v164[4] = v127;
            *&v164[12] = 2114;
            *&v164[14] = v12;
            *&v164[22] = 2114;
            v165 = *&v129;
            v99 = "%{public}@: object for key %{public}@ (%{public}@) is nil.";
            goto LABEL_100;
          }

          if (![v13 performSelector:v136 withObject:v92])
          {
            v130 = ci_logger_filter();
            v8 = os_log_type_enabled(v130, OS_LOG_TYPE_ERROR);
            if (!v8)
            {
              return v8;
            }

            v131 = [objc_opt_class() description];
            v132 = objc_opt_class();
            *&v133 = COERCE_DOUBLE(NSStringFromClass(v132));
            *v164 = 138543874;
            *&v164[4] = v131;
            *&v164[12] = 2114;
            *&v164[14] = v12;
            *&v164[22] = 2114;
            v165 = *&v133;
            v99 = "%{public}@: value for key %{public}@ (%{public}@) differs.";
LABEL_100:
            v103 = v130;
            v104 = 32;
LABEL_71:
            _os_log_error_impl(&dword_19CC36000, v103, OS_LOG_TYPE_ERROR, v99, v164, v104);
            goto LABEL_88;
          }
        }
      }
    }

LABEL_27:
    if (++v11 == v9)
    {
      v9 = [(NSArray *)obj countByEnumeratingWithState:&v158 objects:v170 count:16];
      LOBYTE(v8) = 1;
      if (v9)
      {
        goto LABEL_5;
      }

      return v8;
    }
  }

  v31 = [filterCopy valueForKey:v12];
  v32 = AVCameraCalibrationDataDictionary(v13);
  v33 = AVCameraCalibrationDataDictionary(v31);
  if ([v32 isEqualToDictionary:v33])
  {
    goto LABEL_26;
  }

  *v34.i64 = AVCameraCalibrationDataIntrinsicMatrix(v13);
  v150 = v34;
  v151 = v35;
  v152 = v36;
  *v37.i64 = AVCameraCalibrationDataIntrinsicMatrix(v31);
  v147 = v37;
  v148 = v38;
  v149 = v39;
  v40 = AVCameraCalibrationDataIntrinsicMatrixReferenceDimensions(v13);
  v145 = v41;
  v146 = v40;
  v42 = AVCameraCalibrationDataIntrinsicMatrixReferenceDimensions(v31);
  v44 = v43;
  *v45.i64 = AVCameraCalibrationDataExtrinsicMatrix(v13);
  v141 = v45;
  v142 = v46;
  v143 = v47;
  v144 = v48;
  *v49.i64 = AVCameraCalibrationDataExtrinsicMatrix(v31);
  v137 = v49;
  v138 = v50;
  v139 = v51;
  v140 = v52;
  v54 = AVCameraCalibrationDataPixelSize(v13, v53);
  v55 = *&v54;
  v57 = AVCameraCalibrationDataPixelSize(v31, v56);
  v58 = *&v57;
  v60 = AVCameraCalibrationDataLensDistortionLookupTable(v13, v59);
  v62 = AVCameraCalibrationDataLensDistortionLookupTable(v31, v61);
  v64 = AVCameraCalibrationDataInverseLensDistortionLookupTable(v13, v63);
  v66 = AVCameraCalibrationDataInverseLensDistortionLookupTable(v31, v65);
  v67 = AVCameraCalibrationDataIntrinsicLensDistortionCenter(v13);
  v69 = v68;
  v70 = AVCameraCalibrationDataIntrinsicLensDistortionCenter(v13);
  v72 = v71;
  v73 = vandq_s8(vandq_s8(vcgeq_f32(v153, vabdq_f32(v150, v147)), vcgeq_f32(v153, vabdq_f32(v151, v148))), vcgeq_f32(v153, vabdq_f32(v152, v149)));
  v73.i32[3] = v73.i32[2];
  if ((vminvq_u32(v73) & 0x80000000) == 0)
  {
    v113 = ci_logger_filter();
    v8 = os_log_type_enabled(v113, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [CIFilter(SDOFOnlyPrewarmingPrivate) verifyPrewarmedFilter:];
      goto LABEL_88;
    }

    return v8;
  }

  if (v146 == v42 && v145 == v44)
  {
    v74 = vandq_s8(vandq_s8(vcgeq_f32(v153, vabdq_f32(v141, v137)), vcgeq_f32(v153, vabdq_f32(v142, v138))), vandq_s8(vcgeq_f32(v153, vabdq_f32(v143, v139)), vcgeq_f32(v153, vabdq_f32(v144, v140))));
    v74.i32[3] = v74.i32[2];
    if ((vminvq_u32(v74) & 0x80000000) == 0)
    {
      v115 = ci_logger_filter();
      v8 = os_log_type_enabled(v115, OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        return v8;
      }

      [CIFilter(SDOFOnlyPrewarmingPrivate) verifyPrewarmedFilter:];
      goto LABEL_88;
    }

    if (vabds_f32(v55, v58) > 0.0001)
    {
      v116 = ci_logger_filter();
      v8 = os_log_type_enabled(v116, OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        return v8;
      }

      [CIFilter(SDOFOnlyPrewarmingPrivate) verifyPrewarmedFilter:];
      goto LABEL_88;
    }

    if (([v60 isEqualToData:v62] & 1) == 0)
    {
      v117 = ci_logger_filter();
      v8 = os_log_type_enabled(v117, OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        return v8;
      }

      [CIFilter(SDOFOnlyPrewarmingPrivate) verifyPrewarmedFilter:];
      goto LABEL_88;
    }

    if (([v64 isEqualToData:v66] & 1) == 0)
    {
      v118 = ci_logger_filter();
      v8 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        return v8;
      }

      [CIFilter(SDOFOnlyPrewarmingPrivate) verifyPrewarmedFilter:];
      goto LABEL_88;
    }

    if (v67 != v70 || v69 != v72)
    {
      v119 = ci_logger_filter();
      v8 = os_log_type_enabled(v119, OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        return v8;
      }

      [CIFilter(SDOFOnlyPrewarmingPrivate) verifyPrewarmedFilter:];
      goto LABEL_88;
    }

LABEL_26:
    if (([v32 isEqualToDictionary:v33] & 1) == 0)
    {
      [CIFilter(SDOFOnlyPrewarmingPrivate) verifyPrewarmedFilter:];
    }

    goto LABEL_27;
  }

  v114 = ci_logger_filter();
  v8 = os_log_type_enabled(v114, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    [CIFilter(SDOFOnlyPrewarmingPrivate) verifyPrewarmedFilter:];
    goto LABEL_88;
  }

  return v8;
}

uint64_t __61__CIFilter_SDOFOnlyPrewarmingPrivate__verifyPrewarmedFilter___block_invoke(uint64_t a1, CFStringRef path)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = CGImageMetadataCopyTagWithPath(*(a1 + 32), 0, path);
  v5 = CGImageMetadataCopyTagWithPath(*(a1 + 56), 0, path);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = CGImageMetadataTagCopyValue(v4);
    v9 = CGImageMetadataTagCopyValue(v6);
    Type = CGImageMetadataTagGetType(v4);
    v11 = CGImageMetadataTagGetType(v4);
    v12 = v11;
    if (v8)
    {
      v13 = v9 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13 && Type == v11;
    if (v14 && CFEqual(v8, v9))
    {
LABEL_56:
      CFRelease(v8);
LABEL_57:
      if (v9)
      {
        CFRelease(v9);
      }

      goto LABEL_59;
    }

    v15 = Type == kCGImageMetadataTypeArrayOrdered && v12 == kCGImageMetadataTypeArrayOrdered;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = [v8 count];
      if (v16 == [v9 count])
      {
        if ([v8 count])
        {
          v18 = 0;
          *&v17 = 138544386;
          v34 = v17;
          do
          {
            v19 = [v8 objectAtIndexedSubscript:{v18, v34}];
            v20 = [v9 objectAtIndexedSubscript:v18];
            if (v19)
            {
              v21 = v20;
              if (v20)
              {
                v22 = CGImageMetadataTagCopyValue(v19);
                v23 = CGImageMetadataTagCopyValue(v21);
                v24 = v19;
                v25 = v23;
                v35 = v24;
                cf = CGImageMetadataTagCopyName(v24);
                v36 = v21;
                v37 = CGImageMetadataTagCopyName(v21);
                if (v22 && v25 && !CFEqual(v22, v25))
                {
                  v26 = v25;
                  v27 = ci_logger_filter();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    v30 = [objc_opt_class() description];
                    *buf = v34;
                    v40 = v30;
                    v41 = 2114;
                    v42 = path;
                    v43 = 2048;
                    v44 = v18;
                    v45 = 2114;
                    v46 = v35;
                    v47 = 2114;
                    v48 = v36;
                    _os_log_error_impl(&dword_19CC36000, v27, OS_LOG_TYPE_ERROR, "%{public}@: XMP Image metadata may differ for array tag %{public}@ at index %lu (%{public}@ != %{public}@)", buf, 0x34u);
                  }

                  *(*(*(a1 + 48) + 8) + 24) = 0;
                  v25 = v26;
                }

                v28 = v25;
                if (cf && v37 && !CFEqual(cf, v37))
                {
                  v29 = ci_logger_filter();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    v31 = [objc_opt_class() description];
                    *buf = v34;
                    v40 = v31;
                    v41 = 2114;
                    v42 = path;
                    v43 = 2048;
                    v44 = v18;
                    v45 = 2114;
                    v46 = v35;
                    v47 = 2114;
                    v48 = v36;
                    _os_log_error_impl(&dword_19CC36000, v29, OS_LOG_TYPE_ERROR, "%{public}@: XMP Image metadata may differ for array tag %{public}@ at index %lu (%{public}@ != %{public}@)", buf, 0x34u);
                  }

                  *(*(*(a1 + 48) + 8) + 24) = 0;
                }

                if (v22)
                {
                  CFRelease(v22);
                }

                if (v28)
                {
                  CFRelease(v28);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                if (v37)
                {
                  CFRelease(v37);
                }

                if (*(*(*(a1 + 48) + 8) + 24) != 1)
                {
                  break;
                }
              }
            }

            ++v18;
          }

          while (v18 < [v8 count]);
        }

LABEL_55:
        if (!v8)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v32 = ci_logger_filter();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v40 = [objc_opt_class() description];
        v41 = 2114;
        v42 = path;
        v43 = 2114;
        v44 = v4;
        v45 = 2114;
        v46 = v9;
        _os_log_error_impl(&dword_19CC36000, v32, OS_LOG_TYPE_ERROR, "%{public}@: XMP Image metadata may differ for tag %{public}@ (%{public}@ != %{public}@)", buf, 0x2Au);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_55;
  }

  if (!(v4 | v5))
  {
    return *(*(*(a1 + 48) + 8) + 24);
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_59:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return *(*(*(a1 + 48) + 8) + 24);
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x1E69E9840];
  inputKeys = [(CIFilter *)self inputKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSArray *)inputKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v11;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(inputKeys);
      }

      v6 = [-[CIFilter valueForKey:](self valueForKey:{*(*(&v10 + 1) + 8 * i)), "hash"}] + 33 * v6;
    }

    v5 = [(NSArray *)inputKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v5);
  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if ([key isEqualToString:@"__inputVersion"])
  {
    v7 = self->_priv[0];
    if (v7)
    {
    }

    self->_priv[0] = [value copy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CIFilter;
    [(CIFilter *)&v8 setValue:value forUndefinedKey:key];
  }
}

- (id)valueForUndefinedKey:(id)key
{
  if ([key isEqualToString:@"__inputVersion"])
  {
    return self->_priv[0];
  }

  v6.receiver = self;
  v6.super_class = CIFilter;
  return [(CIFilter *)&v6 valueForUndefinedKey:key];
}

- (void)_crashed_when_dealloc_called_setValue_nil_forKey_probably_because_the_subclass_already_released_it:(id)key_probably_because_the_subclass_already_released_it className:(const char *)name overridesDealloc:(BOOL)dealloc
{
  deallocCopy = dealloc;
  v44 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
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
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__str = 0u;
  v13 = 0u;
  uTF8String = [key_probably_because_the_subclass_already_released_it UTF8String];
  v10 = "";
  if (deallocCopy)
  {
    v10 = " (e.g. in its dealloc method)";
  }

  snprintf(__str, 0x200uLL, "Crashed in [CIFilter dealloc] releasing the value of %s for %s.\nIf a CIFilter subclass releases an ivar%s, it must be set to nil afterwards.\n", uTF8String, name, v10);
  qword_1ED7C3F80 = __str;
  v11 = objc_autoreleasePoolPush();
  [(CIFilter *)self setValue:0 forKey:key_probably_because_the_subclass_already_released_it];
  objc_autoreleasePoolPop(v11);
  qword_1ED7C3F80 = 0;
}

- (NSArray)outputKeys
{
  v2 = [CIFilterClassInfo classInfoForClass:objc_opt_class()];

  return [v2 outputKeys];
}

- (NSDictionary)attributes
{
  v2 = objc_opt_class();

  return [CIFilterClassAttributes classAttributesForClass:v2];
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  if ([key isEqualToString:@"outputImage"])
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = [+[CIFilterClassInfo classInfoForClass:](CIFilterClassInfo classInfoForClass:{objc_opt_class()), "inputKeys"}];

    return [v5 setWithArray:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___CIFilter;
    return objc_msgSendSuper2(&v8, sel_keyPathsForValuesAffectingValueForKey_, key);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v41[18] = *MEMORY[0x1E69E9840];
  if ([coder allowsKeyedCoding])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    inputKeys = [(CIFilter *)self inputKeys];
    v5 = [(NSArray *)inputKeys countByEnumeratingWithState:&v25 objects:v38 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(inputKeys);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v10 = [(CIFilter *)self valueForKey:v9];
          if (v10)
          {
            v11 = v10;
            v12 = CFGetTypeID(v10);
            TypeID = CGColorSpaceGetTypeID();
            v14 = objc_alloc(MEMORY[0x1E696AEC0]);
            if (v12 != TypeID)
            {
              v15 = [v14 initWithFormat:@"CI_%@", v9];
              goto LABEL_26;
            }

            v15 = [v14 initWithFormat:@"CICS_%@", v9];
            Type = CGColorSpaceGetType();
            if (Type > 2)
            {
              switch(Type)
              {
                case 3:
                  *&v32 = 0;
                  v30 = 0u;
                  v31 = 0u;
                  v29 = 0u;
                  CGColorSpaceGetCalibratedGrayData();
                  v40[0] = [MEMORY[0x1E696AD98] numberWithDouble:*&v29];
                  v40[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v29 + 1)];
                  v40[2] = [MEMORY[0x1E696AD98] numberWithDouble:*&v30];
                  v40[3] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v30 + 1)];
                  v40[4] = [MEMORY[0x1E696AD98] numberWithDouble:*&v31];
                  v40[5] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v31 + 1)];
                  v40[6] = [MEMORY[0x1E696AD98] numberWithDouble:*&v32];
                  v17 = MEMORY[0x1E695DEC8];
                  v18 = v40;
                  v19 = 7;
                  break;
                case 4:
                  v36 = 0u;
                  *v37 = 0u;
                  v34 = 0u;
                  v35 = 0u;
                  v32 = 0u;
                  v33 = 0u;
                  v30 = 0u;
                  v31 = 0u;
                  v29 = 0u;
                  CGColorSpaceGetCalibratedRGBData();
                  v41[0] = [MEMORY[0x1E696AD98] numberWithDouble:*&v29];
                  v41[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v29 + 1)];
                  v41[2] = [MEMORY[0x1E696AD98] numberWithDouble:*&v30];
                  v41[3] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v30 + 1)];
                  v41[4] = [MEMORY[0x1E696AD98] numberWithDouble:*&v31];
                  v41[5] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v31 + 1)];
                  v41[6] = [MEMORY[0x1E696AD98] numberWithDouble:*&v32];
                  v41[7] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v32 + 1)];
                  v41[8] = [MEMORY[0x1E696AD98] numberWithDouble:*&v33];
                  v41[9] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v33 + 1)];
                  v41[10] = [MEMORY[0x1E696AD98] numberWithDouble:*&v34];
                  v41[11] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v34 + 1)];
                  v41[12] = [MEMORY[0x1E696AD98] numberWithDouble:*&v35];
                  v41[13] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v35 + 1)];
                  v41[14] = [MEMORY[0x1E696AD98] numberWithDouble:*&v36];
                  v41[15] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v36 + 1)];
                  v41[16] = [MEMORY[0x1E696AD98] numberWithDouble:v37[0]];
                  v41[17] = [MEMORY[0x1E696AD98] numberWithDouble:v37[1]];
                  v17 = MEMORY[0x1E695DEC8];
                  v18 = v41;
                  v19 = 18;
                  break;
                case 5:
                  v33 = 0u;
                  v34 = 0u;
                  v31 = 0u;
                  v32 = 0u;
                  v29 = 0u;
                  v30 = 0u;
                  CGColorSpaceGetLabData();
                  v39[0] = [MEMORY[0x1E696AD98] numberWithDouble:*&v29];
                  v39[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v29 + 1)];
                  v39[2] = [MEMORY[0x1E696AD98] numberWithDouble:*&v30];
                  v39[3] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v30 + 1)];
                  v39[4] = [MEMORY[0x1E696AD98] numberWithDouble:*&v31];
                  v39[5] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v31 + 1)];
                  v39[6] = [MEMORY[0x1E696AD98] numberWithDouble:*&v32];
                  v39[7] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v32 + 1)];
                  v39[8] = [MEMORY[0x1E696AD98] numberWithDouble:*&v33];
                  v39[9] = [MEMORY[0x1E696AD98] numberWithDouble:*(&v33 + 1)];
                  v17 = MEMORY[0x1E695DEC8];
                  v18 = v39;
                  v19 = 10;
                  break;
                default:
                  goto LABEL_21;
              }

              v11 = [v17 arrayWithObjects:v18 count:v19];
              if (!v11)
              {
                goto LABEL_27;
              }
            }

            else
            {
              if (!Type)
              {
                v11 = @"cs_deviceGray";
                goto LABEL_26;
              }

              if (Type != 1)
              {
                if (Type == 2)
                {
                  v11 = @"cs_deviceCMYK";
                  goto LABEL_26;
                }

LABEL_21:
                v20 = CGColorSpaceCopyICCData(v11);
                if (v20)
                {
                  v11 = v20;
                  CFAutorelease(v20);
                  goto LABEL_26;
                }

LABEL_27:

                continue;
              }

              v11 = @"cs_deviceRGB";
            }

LABEL_26:
            [coder encodeObject:v11 forKey:v15];
            goto LABEL_27;
          }
        }

        v6 = [(NSArray *)inputKeys countByEnumeratingWithState:&v25 objects:v38 count:16];
      }

      while (v6);
    }

    if ([(CIFilter *)self userInfo]&& [CIFilter encodeWithCoder:]::onceToken != -1)
    {
      [CIFilter encodeWithCoder:];
    }

    v21 = self->_priv[4];
    if (v21)
    {
      [coder encodeObject:v21 forKey:@"CIName"];
    }

    v22 = [(CIFilter *)self valueForKey:@"__inputVersion"];
    if (v22)
    {
      [coder encodeObject:v22 forKey:@"CIVersion"];
    }
  }

  else
  {
    v23 = MEMORY[0x1E695DF30];

    [v23 raise:@"CIRequiresKeyedArchiver" format:@"CoreImage requires keyed archiving."];
  }
}

void __28__CIFilter_encodeWithCoder___block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = ci_logger_api();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = 136446210;
    v2 = "[CIFilter encodeWithCoder:]_block_invoke";
    _os_log_impl(&dword_19CC36000, v0, OS_LOG_TYPE_INFO, "%{public}s option CIUserInfo is no longer encoded for security.", &v1, 0xCu);
  }
}

- (CIFilter)initWithCoder:(id)coder
{
  v95 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    return 0;
  }

  v5 = [(CIFilter *)self init];
  if (!v5)
  {
    return 0;
  }

  v69 = v5;
  obja = MEMORY[0x1E695DFD8];
  v70 = objc_opt_class();
  v68 = objc_opt_class();
  v67 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v71 = [obja setWithObjects:{v70, v68, v67, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v17 = v69;
  obj = [(CIFilter *)v69 inputKeys];
  v18 = [(NSArray *)obj countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (!v18)
  {
    goto LABEL_34;
  }

  v19 = v18;
  v20 = *v75;
  do
  {
    v21 = 0;
    do
    {
      if (*v75 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v74 + 1) + 8 * v21);
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CICS_%@", v22];
      v24 = [coder decodeObjectOfClasses:v16 forKey:v23];

      if (v24)
      {
        if ([@"cs_deviceGray" isEqual:v24])
        {
          DeviceGray = CGColorSpaceCreateDeviceGray();
LABEL_27:
          v63 = DeviceGray;
          if (DeviceGray)
          {
            [(CIFilter *)v69 setValue:DeviceGray forKey:v22];
          }
        }

        else
        {
          if ([@"cs_deviceRGB" isEqual:v24])
          {
            DeviceGray = CGColorSpaceCreateDeviceRGB();
            goto LABEL_27;
          }

          if ([@"cs_deviceCMYK" isEqual:v24])
          {
            DeviceGray = CGColorSpaceCreateDeviceCMYK();
            goto LABEL_27;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v24 count] == 7)
            {
              [objc_msgSend(v24 objectAtIndex:{0), "doubleValue"}];
              whitePoint = v28;
              [objc_msgSend(v24 objectAtIndex:{1), "doubleValue"}];
              v80 = v29;
              [objc_msgSend(v24 objectAtIndex:{2), "doubleValue"}];
              v81 = v30;
              [objc_msgSend(v24 objectAtIndex:{3), "doubleValue"}];
              blackPoint = v31;
              [objc_msgSend(v24 objectAtIndex:{4), "doubleValue"}];
              v93 = v32;
              [objc_msgSend(v24 objectAtIndex:{5), "doubleValue"}];
              v94 = v33;
              [objc_msgSend(v24 objectAtIndex:{6), "doubleValue"}];
              DeviceGray = CGColorSpaceCreateCalibratedGray(&whitePoint, &blackPoint, v34);
              goto LABEL_27;
            }

            if ([v24 count] == 10)
            {
              [objc_msgSend(v24 objectAtIndex:{0), "doubleValue"}];
              blackPoint = v35;
              [objc_msgSend(v24 objectAtIndex:{1), "doubleValue"}];
              v93 = v36;
              [objc_msgSend(v24 objectAtIndex:{2), "doubleValue"}];
              v94 = v37;
              [objc_msgSend(v24 objectAtIndex:{3), "doubleValue"}];
              v89 = v38;
              [objc_msgSend(v24 objectAtIndex:{4), "doubleValue"}];
              v90 = v39;
              [objc_msgSend(v24 objectAtIndex:{5), "doubleValue"}];
              v91 = v40;
              [objc_msgSend(v24 objectAtIndex:{6), "doubleValue"}];
              whitePoint = v41;
              [objc_msgSend(v24 objectAtIndex:{7), "doubleValue"}];
              v80 = v42;
              [objc_msgSend(v24 objectAtIndex:{8), "doubleValue"}];
              v81 = v43;
              [objc_msgSend(v24 objectAtIndex:{9), "doubleValue"}];
              v82 = v44;
              DeviceGray = CGColorSpaceCreateLab(&blackPoint, &v89, &whitePoint);
              goto LABEL_27;
            }

            if ([v24 count] == 18)
            {
              [objc_msgSend(v24 objectAtIndex:{0), "doubleValue"}];
              blackPoint = v45;
              [objc_msgSend(v24 objectAtIndex:{1), "doubleValue"}];
              v93 = v46;
              [objc_msgSend(v24 objectAtIndex:{2), "doubleValue"}];
              v94 = v47;
              [objc_msgSend(v24 objectAtIndex:{3), "doubleValue"}];
              v89 = v48;
              [objc_msgSend(v24 objectAtIndex:{4), "doubleValue"}];
              v90 = v49;
              [objc_msgSend(v24 objectAtIndex:{5), "doubleValue"}];
              v91 = v50;
              [objc_msgSend(v24 objectAtIndex:{6), "doubleValue"}];
              gamma[0] = v51;
              [objc_msgSend(v24 objectAtIndex:{7), "doubleValue"}];
              gamma[1] = v52;
              [objc_msgSend(v24 objectAtIndex:{8), "doubleValue"}];
              gamma[2] = v53;
              [objc_msgSend(v24 objectAtIndex:{9), "doubleValue"}];
              whitePoint = v54;
              [objc_msgSend(v24 objectAtIndex:{10), "doubleValue"}];
              v80 = v55;
              [objc_msgSend(v24 objectAtIndex:{11), "doubleValue"}];
              v81 = v56;
              [objc_msgSend(v24 objectAtIndex:{12), "doubleValue"}];
              v82 = v57;
              [objc_msgSend(v24 objectAtIndex:{13), "doubleValue"}];
              v83 = v58;
              [objc_msgSend(v24 objectAtIndex:{14), "doubleValue"}];
              v84 = v59;
              [objc_msgSend(v24 objectAtIndex:{15), "doubleValue"}];
              v85 = v60;
              [objc_msgSend(v24 objectAtIndex:{16), "doubleValue"}];
              v86 = v61;
              [objc_msgSend(v24 objectAtIndex:{17), "doubleValue"}];
              v87 = v62;
              DeviceGray = CGColorSpaceCreateCalibratedRGB(&blackPoint, &v89, gamma, &whitePoint);
              goto LABEL_27;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            DeviceGray = CGColorSpaceCreateWithICCData(v24);
            goto LABEL_27;
          }

          v63 = 0;
        }

        CGColorSpaceRelease(v63);
        goto LABEL_30;
      }

      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CI_%@", v22];
      v27 = [coder decodeObjectOfClasses:v71 forKey:v26];
      if (v27)
      {
        [(CIFilter *)v69 setValue:v27 forKey:v22];
      }

LABEL_30:
      ++v21;
    }

    while (v19 != v21);
    v64 = [(NSArray *)obj countByEnumeratingWithState:&v74 objects:v78 count:16];
    v19 = v64;
  }

  while (v64);
LABEL_34:
  if ([coder containsValueForKey:@"CIUserInfo"] && -[CIFilter initWithCoder:]::onceToken != -1)
  {
    [CIFilter initWithCoder:];
  }

  if ([coder containsValueForKey:@"CIName"])
  {
    v69->_priv[4] = [coder decodeObjectOfClass:objc_opt_class() forKey:@"CIName"];
  }

  v65 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"CIVersion"];
  if (v65)
  {
    [(CIFilter *)v69 setValue:v65 forKey:@"__inputVersion"];
  }

  return v17;
}

void __26__CIFilter_initWithCoder___block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = ci_logger_api();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = 136446210;
    v2 = "[CIFilter initWithCoder:]_block_invoke";
    _os_log_impl(&dword_19CC36000, v0, OS_LOG_TYPE_INFO, "%{public}s option CIUserInfo is no longer encoded for security.", &v1, 0xCu);
  }
}

- (id)_copyFilterWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(CIFilter *)self _copyFilterWithZone:zone];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  inputKeys = [(CIFilter *)self inputKeys];
  v6 = [(NSArray *)inputKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(inputKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(CIFilter *)self valueForKey:v10];
        if (v11)
        {
          [v4 setValue:v11 forKey:v10];
        }
      }

      v7 = [(NSArray *)inputKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [(CIFilter *)self valueForKey:@"__inputVersion"];
  if (v12)
  {
    [v4 setValue:v12 forKey:@"__inputVersion"];
  }

  v13 = self->_priv[4];
  if (v13)
  {
    CFRetain(v13);
    v4[5] = self->_priv[4];
  }

  return v4;
}

- (id)description
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __23__CIFilter_description__block_invoke;
  v3[3] = &unk_1E75C1EE0;
  v3[4] = self;
  return stream_to_string(v3);
}

size_t __23__CIFilter_description__block_invoke(uint64_t a1, FILE *a2)
{
  v4 = [objc_msgSend(objc_opt_class() "description")];
  fprintf(a2, "<%s: %p", v4, *(a1 + 32));
  v5 = [*(a1 + 32) valueForKey:@"__inputVersion"];
  if (v5)
  {
    fprintf(a2, " %s", [objc_msgSend(v5 "description")]);
  }

  v6 = [objc_msgSend(*(a1 + 32) "inputKeys")];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 & 0x7FFFFFFF;
    do
    {
      v9 = [objc_msgSend(*(a1 + 32) "inputKeys")];
      v10 = [*(a1 + 32) valueForKey:v9];
      v11 = [objc_msgSend(v9 "description")];
      if (v10)
      {
        v12 = [objc_msgSend(v10 "description")];
      }

      else
      {
        v12 = "nil";
      }

      fprintf(a2, " %s=%s", v11, v12);
      ++v7;
    }

    while (v8 != v7);
  }

  return fwrite(">\n", 2uLL, 1uLL, a2);
}

- (id)debugDescription
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__CIFilter_debugDescription__block_invoke;
  v3[3] = &unk_1E75C1EE0;
  v3[4] = self;
  return stream_to_string(v3);
}

uint64_t __28__CIFilter_debugDescription__block_invoke(uint64_t a1, FILE *a2)
{
  v4 = [objc_msgSend(objc_opt_class() "description")];
  fprintf(a2, "<%s: %p>\n", v4, *(a1 + 32));
  v5 = [*(a1 + 32) valueForKey:@"__inputVersion"];
  if (v5)
  {
    fprintf(a2, "    version=%s\n", [objc_msgSend(v5 "description")]);
  }

  result = [objc_msgSend(*(a1 + 32) "inputKeys")];
  if (result >= 1)
  {
    v7 = 0;
    v8 = result & 0x7FFFFFFF;
    do
    {
      v9 = [objc_msgSend(*(a1 + 32) "inputKeys")];
      v10 = [*(a1 + 32) valueForKey:v9];
      fprintf(a2, "    %s=", [objc_msgSend(v9 "description")]);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && CGAffineTransformFromObject(v10, &v11))
      {
        result = fprintf(a2, "(a:%g b:%g c:%g d:%g tx:%g ty:%g)\n");
      }

      else if (v10)
      {
        [-[objc_object description](v10 "description")];
        result = fprintf(a2, "%s\n");
      }

      else
      {
        result = fwrite("nil\n", 4uLL, 1uLL, a2);
      }

      ++v7;
    }

    while (v8 != v7);
  }

  return result;
}

- (id)debugQuickLookObject
{
  v43 = *MEMORY[0x1E69E9840];
  attributes = [(CIFilter *)self attributes];
  v4 = [(NSDictionary *)attributes objectForKeyedSubscript:@"CIAttributeFilterCategories"];
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithMarkdownString:objc_msgSend(MEMORY[0x1E696AEC0] options:"stringWithFormat:" baseURL:@"**%@**" error:{objc_msgSend(objc_opt_class(), "description")), 0, 0, 0}];
  [(NSMutableAttributedString *)v5 appendAttributedString:v6];

  appendAttrStr(v5, &stru_1F1045A78.isa);
  v7 = [CIFilter localizedDescriptionForFilterName:[(CIFilter *)self name]];
  if (v7)
  {
    appendAttrStr(v5, v7);
  }

  appendAttrStr(v5, &stru_1F1045A98.isa);
  if (v4)
  {
    appendAttrStr(v5, &cfstr_Categories.isa);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          if ([v12 hasPrefix:@"CICategory"])
          {
            appendAttrStr(v5, &stru_1F1045AF8.isa);
            appendAttrStr(v5, [v12 substringFromIndex:10]);
          }
        }

        v9 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v9);
    }

    appendAttrStr(v5, &stru_1F1045A78.isa);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(CIFilter *)self inputKeys];
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v33 + 1) + 8 * j);
        v18 = [(NSDictionary *)attributes objectForKeyedSubscript:v17];
        appendAttrStr(v5, &stru_1F1045A78.isa);
        appendAttrStrCode(v5, v17);
        v19 = [v18 objectForKeyedSubscript:@"CIAttributeClass"];
        if (v19)
        {
          v20 = v19;
          appendAttrStr(v5, &stru_1F1045B18.isa);
          appendAttrStrCode(v5, v20);
          appendAttrStr(v5, &stru_1F1045B38.isa);
        }

        appendAttrStr(v5, &stru_1F1045A78.isa);
        if ([v18 objectForKeyedSubscript:@"CIAttributeDescription"])
        {
          appendAttrStr(v5, [v18 objectForKeyedSubscript:@"CIAttributeDescription"]);
          appendAttrStr(v5, &stru_1F1045A78.isa);
        }

        v21 = [v18 objectForKeyedSubscript:@"CIAttributeDefault"];
        if (v21)
        {
          v22 = v21;
          appendAttrStr(v5, &cfstr_Default.isa);
          appendAttrStr(v5, [v22 description]);
          appendAttrStr(v5, &stru_1F1045A78.isa);
        }

        v23 = [v18 objectForKeyedSubscript:@"CIAttributeMin"];
        if (v23)
        {
          v24 = v23;
          appendAttrStr(v5, &cfstr_Min.isa);
          appendAttrStr(v5, [v24 description]);
          appendAttrStr(v5, &stru_1F1045A78.isa);
        }

        v25 = [v18 objectForKeyedSubscript:@"CIAttributeMax"];
        if (v25)
        {
          v26 = v25;
          appendAttrStr(v5, &cfstr_Max.isa);
          appendAttrStr(v5, [v26 description]);
          appendAttrStr(v5, &stru_1F1045A78.isa);
        }

        v27 = [v18 objectForKeyedSubscript:@"CIAttributeSliderMin"];
        if (v27)
        {
          v28 = v27;
          appendAttrStr(v5, &cfstr_SliderMin.isa);
          appendAttrStr(v5, [v28 description]);
          appendAttrStr(v5, &stru_1F1045A78.isa);
        }

        v29 = [v18 objectForKeyedSubscript:@"CIAttributeSliderMax"];
        if (v29)
        {
          v30 = v29;
          appendAttrStr(v5, &cfstr_SliderMax.isa);
          appendAttrStr(v5, [v30 description]);
          appendAttrStr(v5, &stru_1F1045A78.isa);
        }
      }

      v14 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v14);
  }

  return v5;
}

+ (NSData)serializedXMPFromFilters:(NSArray *)filters inputImageExtent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  if (!-[NSArray count](filters, "count") || ![objc_msgSend(self _propertyArrayFromFilters:filters inputImageExtent:{x, y, width, height), "count"}])
  {
    return 0;
  }

  SerializedData = CGImageMetadataCreateSerializedData();
  v11 = SerializedData;
  if (SerializedData)
  {
    CFAutorelease(SerializedData);
  }

  return v11;
}

+ (NSArray)filterArrayFromSerializedXMP:(NSData *)xmpData inputImageExtent:(CGRect)extent error:(NSError *)outError
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  if (outError)
  {
    *outError = 0;
  }

  if (!xmpData)
  {
    return MEMORY[0x1E695E0F0];
  }

  v10 = CGImageMetadataCreateFromData();
  if (!v10)
  {
    return MEMORY[0x1E695E0F0];
  }

  v11 = v10;
  if (CFArrayGetCount(v10))
  {
    v12 = [self _filterArrayFromProperties:v11 inputImageExtent:{x, y, width, height}];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  CFRelease(v11);
  return v12;
}

- (CIImage)apply:(CIKernel *)k arguments:(NSArray *)args options:(NSDictionary *)dict
{
  v61 = *MEMORY[0x1E69E9840];
  if (!k || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = ci_logger_api();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(CIFilter *)v20 apply:v21 arguments:v22 options:v23, v24, v25, v26, v27];
    }

    return 0;
  }

  v9 = *MEMORY[0x1E695F040];
  v10 = *(MEMORY[0x1E695F040] + 8);
  v11 = *(MEMORY[0x1E695F040] + 16);
  v12 = *(MEMORY[0x1E695F040] + 24);
  v13 = [(NSDictionary *)dict objectForKey:@"extent"];
  v14 = [(NSDictionary *)dict objectForKey:@"definition"];
  if (v14)
  {
    v15 = v14;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 count] == 4)
    {
      [objc_msgSend(v15 objectAtIndex:{0), "doubleValue"}];
      v9 = v16;
      [objc_msgSend(v15 objectAtIndex:{1), "doubleValue"}];
      v10 = v17;
      [objc_msgSend(v15 objectAtIndex:{2), "doubleValue"}];
      v11 = v18;
      v19 = v15;
LABEL_17:
      [objc_msgSend(v19 objectAtIndex:{3), "doubleValue"}];
      v12 = v37;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 extent];
      v9 = v30;
      v10 = v31;
      v11 = v32;
      v12 = v33;
      goto LABEL_22;
    }

    v38 = ci_logger_api();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [(CIFilter *)v38 apply:v39 arguments:v40 options:v41, v42, v43, v44, v45];
    }

    return 0;
  }

  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 count] == 4)
    {
      [objc_msgSend(v13 objectAtIndex:{0), "doubleValue"}];
      v9 = v34;
      [objc_msgSend(v13 objectAtIndex:{1), "doubleValue"}];
      v10 = v35;
      [objc_msgSend(v13 objectAtIndex:{2), "doubleValue"}];
      v11 = v36;
      v19 = v13;
      goto LABEL_17;
    }

    v46 = ci_logger_api();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v60 = "[CIFilter apply:arguments:options:]";
      _os_log_impl(&dword_19CC36000, v46, OS_LOG_TYPE_INFO, "%{public}s kCIApplyOptionExtent is not an NSArray with four elements. Ignoring.", buf, 0xCu);
    }
  }

LABEL_22:
  v47 = [(NSDictionary *)dict objectForKey:@"user_info"];
  rOISelector = [(CIKernel *)k ROISelector];
  v49 = NSSelectorFromString(&cfstr_RegionofDestre.isa);
  v50 = NSSelectorFromString(&cfstr_RegionofDestre_0.isa);
  if (objc_opt_respondsToSelector() & 1) != 0 || (rOISelector = v49, (objc_opt_respondsToSelector()) || (rOISelector = v50, (objc_opt_respondsToSelector()))
  {
    v51 = [(CIFilter *)self methodForSelector:rOISelector];
  }

  else
  {
    v51 = 0;
  }

  NSClassFromString(&cfstr_Dgcurvesfilter.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  NSClassFromString(&cfstr_Pxsoftproofing.isa);
  if (objc_opt_isKindOfClass())
  {
    if ([CIFilter apply:arguments:options:]::onceToken != -1)
    {
      [CIFilter apply:arguments:options:];
    }

    v53 = 2;
  }

  else
  {
    v53 = isKindOfClass & 1;
  }

  NSClassFromString(&cfstr_PxCifNoise.isa);
  if (objc_opt_isKindOfClass())
  {
    if ([CIFilter apply:arguments:options:]::onceToken != -1)
    {
      [CIFilter apply:arguments:options:];
    }

    v53 = 3;
  }

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __36__CIFilter_apply_arguments_options___block_invoke_128;
  v57[3] = &unk_1E75C2748;
  v58 = v53;
  v57[6] = v51;
  v57[7] = v50;
  v57[4] = self;
  v57[5] = v47;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = [(CIKernel *)k applyWithExtent:args arguments:v9, v10, v11, v12];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = [(CIKernel *)k applyWithExtent:v57 roiCallback:[(NSArray *)args objectAtIndex:0] inputImage:[(NSArray *)args subarrayWithRange:1 arguments:[(NSArray *)args count]- 1], v9, v10, v11, v12];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = 0;
        goto LABEL_42;
      }

      v54 = [(CIKernel *)k applyWithExtent:v57 roiCallback:args arguments:v9, v10, v11, v12];
    }
  }

  v28 = v54;
LABEL_42:
  v55 = [(NSDictionary *)dict objectForKey:@"color_space"];
  if (v55)
  {
    v56 = v55;
    if (v55 != [MEMORY[0x1E695DFB0] null])
    {
      return [(CIImage *)v28 imageByColorMatchingColorSpaceToWorkingSpace:v56];
    }
  }

  return v28;
}

void __36__CIFilter_apply_arguments_options___block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = ci_logger_api();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = 136446210;
    v2 = "[CIFilter apply:arguments:options:]_block_invoke";
    _os_log_impl(&dword_19CC36000, v0, OS_LOG_TYPE_INFO, "%{public}s The filter PXSoftProofingFilter has an incorrect ROI method for sampler index 1.  This may fail in the future.", &v1, 0xCu);
  }
}

void __36__CIFilter_apply_arguments_options___block_invoke_125()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = ci_logger_api();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = 136446210;
    v2 = "[CIFilter apply:arguments:options:]_block_invoke";
    _os_log_impl(&dword_19CC36000, v0, OS_LOG_TYPE_INFO, "%{public}s The filter PX_CIF_Noise has an incorrect ROI method for sampler index 1.  This may fail in the future.", &v1, 0xCu);
  }
}

void __36__CIFilter_apply_arguments_options___block_invoke_128(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 64);
  if ((a2 || v6 != 1) && (a2 != 1 || v6 != 2))
  {
    if (a2 == 1 && v6 == 3)
    {
      CGRectInset(*&a3, -1.0, -1.0);
    }

    else
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        v7(*(a1 + 32), *(a1 + 56), a2, *(a1 + 40));
      }
    }
  }
}

- (CIImage)apply:(CIKernel *)k
{
  va_start(va, k);
  v27 = va_arg(va, void);
  v26 = *MEMORY[0x1E69E9840];
  if (k && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    va_copy(v19, va);
    v8 = v27;
    if (v27)
    {
      v9 = 0;
      v10 = 0;
      *&v7 = 138543874;
      v18 = v7;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v9)
        {
          goto LABEL_17;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v17 = ci_logger_api();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    [(CIFilter *)self apply:v10, v17];
                  }

                  return 0;
                }
              }
            }
          }
        }

        [array addObject:{v8, v18}];
        v9 = 0;
LABEL_18:
        v13 = va_arg(v19, void);
        v8 = v13;
        ++v10;
        if (!v13)
        {
          return [(CIFilter *)self apply:k arguments:array options:dictionary, v18];
        }
      }

      v11 = va_arg(v19, void);
      if (v11)
      {
        [dictionary setValue:v11 forKey:v8];
      }

      else
      {
        v12 = ci_logger_api();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = [objc_opt_class() description];
          *buf = v18;
          v21 = v14;
          v22 = 2114;
          v23 = v8;
          v24 = 1024;
          v25 = v10;
          _os_log_error_impl(&dword_19CC36000, v12, OS_LOG_TYPE_ERROR, "[%{public}@ apply:...] The last key %{public}@ at index %d is followed by nil. It will be ignored.", buf, 0x1Cu);
        }
      }

LABEL_17:
      v9 = 1;
      goto LABEL_18;
    }

    return [(CIFilter *)self apply:k arguments:array options:dictionary, v18];
  }

  else
  {
    v15 = ci_logger_api();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CIFilter *)self apply:v15];
    }

    return 0;
  }
}

- (NSString)name
{
  if (self->_priv[4])
  {
    return self->_priv[4];
  }

  v4 = objc_opt_class();

  return NSStringFromClass(v4);
}

+ (void)clearCache
{
  +[CIFilterClassDefaults clearCache];
  +[CIFilterClassCategories clearCache];
  +[CIFilterClassAttributes clearCache];

  +[CIFilterClassInfo clearCache];
}

- (BOOL)_filterClassInCategory:(id)category
{
  v4 = [CIFilterClassCategories classCategoriesForClass:objc_opt_class()];

  return [v4 containsObject:category];
}

- (void)setIdentity
{
  v17 = *MEMORY[0x1E69E9840];
  attributes = [(CIFilter *)self attributes];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  inputKeys = [(CIFilter *)self inputKeys];
  v5 = [(NSArray *)inputKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(inputKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSDictionary *)attributes objectForKey:v9];
        v11 = [v10 valueForKey:@"CIAttributeIdentity"];
        if (!v11)
        {
          v11 = [v10 valueForKey:@"CIAttributeDefault"];
          if (!v11)
          {
            continue;
          }
        }

        [(CIFilter *)self setValue:v11 forKey:v9];
      }

      v6 = [(NSArray *)inputKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)setUserInfo:(id)info
{
  v4 = self->_priv[3];
  if (v4 != info)
  {
    v6 = v4;
    self->_priv[3] = info;
  }
}

+ (CIFilter)filterWithString:(id)string
{
  v3 = [string componentsSeparatedByString:{@", "}];
  if (![v3 count])
  {
    return 0;
  }

  v4 = +[CIFilter filterWithName:](CIFilter, "filterWithName:", [v3 objectAtIndex:0]);
  if (v4 && [v3 count] >= 2)
  {
    v5 = 1;
    v6 = 0x1E696A000uLL;
    v7 = @"input%@";
    v8 = @"nil";
    v9 = @"[";
    while (1)
    {
      v10 = [objc_msgSend(v3 objectAtIndex:{v5), "componentsSeparatedByString:", @"="}];
      if ([v10 count] != 2)
      {
        goto LABEL_19;
      }

      v11 = [*(v6 + 3776) stringWithFormat:v7, objc_msgSend(v10, "objectAtIndex:", 0)];
      if (![(NSArray *)[(CIFilter *)v4 inputKeys] containsObject:v11])
      {
        goto LABEL_19;
      }

      v12 = [v10 objectAtIndex:1];
      if ([v12 isEqual:v8])
      {
        break;
      }

      if ([v12 hasPrefix:v9] && objc_msgSend(v12, "length") >= 3)
      {
        v14 = [CIVector vectorWithString:v12];
        goto LABEL_17;
      }

      if ([v12 hasPrefix:@"] && objc_msgSend(v12, "length"") >= 3)
      {
        v14 = [v12 substringWithRange:{1, objc_msgSend(v12, "length") - 2}];
        goto LABEL_17;
      }

      if ([v12 length])
      {
        v15 = v7;
        v16 = v6;
        v17 = v8;
        v18 = v9;
        v19 = MEMORY[0x1E696AD98];
        [v12 doubleValue];
        v20 = v19;
        v9 = v18;
        v8 = v17;
        v6 = v16;
        v7 = v15;
        v14 = [v20 numberWithDouble:?];
LABEL_17:
        v13 = v14;
LABEL_18:
        [(CIFilter *)v4 setValue:v13 forKey:v11];
      }

LABEL_19:
      if ([v3 count] <= ++v5)
      {
        return v4;
      }
    }

    v13 = 0;
    goto LABEL_18;
  }

  return v4;
}

- (id)_serializedXMPString
{
  v34 = *MEMORY[0x1E69E9840];
  if (![(CIFilter *)self _filterClassInCategory:@"CICategoryXMPSerializable"])
  {
    return 0;
  }

  name = [(CIFilter *)self name];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  inputKeys = [(CIFilter *)self inputKeys];
  v5 = [(NSArray *)inputKeys countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v24 != v7)
      {
        objc_enumerationMutation(inputKeys);
      }

      v9 = *(*(&v23 + 1) + 8 * v8);
      v10 = [(CIFilter *)self valueForKey:v9];
      if ([v9 isEqual:@"inputImage"])
      {
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = [v9 substringFromIndex:5];
        stringValue = [v10 stringValue];
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v11 = MEMORY[0x1E696AEC0];
        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 length] && (objc_msgSend(v10, "rangeOfString:", @","), !v16))
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@=%s", name, objc_msgSend(v9, "substringFromIndex:", 5), objc_msgSend(v10, "UTF8String")];
          }

          else
          {
            if (v10)
            {
              v18 = ci_logger_api();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                name2 = [(CIFilter *)self name];
                v21 = [objc_opt_class() description];
                *buf = 138543874;
                v28 = name2;
                v29 = 2114;
                v30 = v9;
                v31 = 2114;
                v32 = v21;
                _os_log_error_impl(&dword_19CC36000, v18, OS_LOG_TYPE_ERROR, "CIFilter %{public}@ cannot be serialized because %{public}@ value is a %{public}@. Only NSString, NSNumber and CIVector is supported at this time.", buf, 0x20u);
              }

              return 0;
            }

            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@=nil", name, objc_msgSend(v9, "substringFromIndex:", 5), v22];
          }

          goto LABEL_18;
        }

        v12 = [v9 substringFromIndex:5];
        stringValue = [v10 stringRepresentation];
      }

      v15 = [v11 stringWithFormat:@"%@, %@=%@", name, v12, stringValue];
LABEL_18:
      name = v15;
LABEL_19:
      if (v6 == ++v8)
      {
        v17 = [(NSArray *)inputKeys countByEnumeratingWithState:&v23 objects:v33 count:16];
        v6 = v17;
        if (v17)
        {
          goto LABEL_4;
        }

        return name;
      }
    }
  }

  return name;
}

+ (id)_propertyArrayFromFilters:(id)filters inputImageExtent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v80 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  obj = filters;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v9 = [filters countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *v74;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v74 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v73 + 1) + 8 * i);
        v18 = objc_opt_class();
        if ([v18 isSubclassOfClass:objc_opt_class()] && objc_msgSend(v17, "conformsToProtocol:", &unk_1F108B858))
        {
          v19 = [objc_msgSend(v17 "name")];
          if (v19)
          {
            v12 = v17;
          }

          v14 += v19;
          v20 = [objc_msgSend(v17 "name")];
          if (v20)
          {
            v11 = v17;
          }

          v13 += v20;
          _outputProperties = [v17 _outputProperties];
          if (_outputProperties)
          {
            [array addObjectsFromArray:_outputProperties];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if (v14 <= 1 && v13 <= 1 && v14 + v13 >= 1)
  {
    if (!(v12 | v11))
    {
      +[CIFilter(Private) _propertyArrayFromFilters:inputImageExtent:];
    }

    v22 = *(MEMORY[0x1E695EFD0] + 16);
    *&v72.a = *MEMORY[0x1E695EFD0];
    *&v72.c = v22;
    *&v72.tx = *(MEMORY[0x1E695EFD0] + 32);
    if (v12)
    {
      CGAffineTransformFromObject([v12 valueForKey:@"inputTransform"], &v72);
    }

    if (v11)
    {
      [objc_msgSend(v11 valueForKey:{@"inputRectangle", "CGRectValue"}];
      v84.origin.x = v23;
      v84.origin.y = v24;
      v84.size.width = v25;
      v84.size.height = v26;
      v81.origin.x = x;
      v81.origin.y = y;
      v81.size.width = width;
      v81.size.height = height;
      v82 = CGRectIntersection(v81, v84);
      v27 = v82.size.width;
      v28 = v82.size.height;
      c = v72.c;
      d = v72.d;
      a = v72.a;
      b = v72.b;
    }

    else
    {
      b = v72.b;
      if (fabs(v72.b) >= 0.0001 || (c = v72.c, fabs(v72.c) >= 0.0001))
      {
        a = v72.a;
        if (fabs(v72.a) >= 0.0001)
        {
          goto LABEL_54;
        }

        d = v72.d;
        if (fabs(v72.d) >= 0.0001)
        {
          goto LABEL_54;
        }

        c = v72.c;
      }

      else
      {
        a = v72.a;
        d = v72.d;
      }

      if (fabs(fabs(a * d - c * v72.b) + -1.0) >= 0.01)
      {
        goto LABEL_54;
      }

      v71 = v72;
      v83.origin.x = x;
      v83.origin.y = y;
      v83.size.width = width;
      v83.size.height = height;
      v82 = CGRectApplyAffineTransform(v83, &v71);
      v27 = v62;
      v28 = v63;
    }

    v33 = v82.origin.y;
    *&v72.tx = vsubq_f64(*&v72.tx, v82.origin);
    v70 = v72;
    memset(&v71, 0, sizeof(v71));
    CGAffineTransformInvert(&v71, &v70);
    v34 = atan2(d - c, b - a) + -2.35619449;
    if (v34 >= -3.14159265)
    {
      v35 = -v34;
    }

    else
    {
      v35 = -6.28318531 - v34;
    }

    v36 = v35 * 57.2957795;
    if (fabs(v36) >= 0.01)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0.0;
    }

    v38 = v71.tx + v28 * v71.c + v71.a * 0.0;
    v39 = v71.ty + v28 * v71.d + v71.b * 0.0;
    v40 = v71.tx + v71.c * 0.0 + v71.a * v27;
    v41 = height - v39;
    v42 = height - (v71.ty + v71.d * 0.0 + v71.b * v27);
    v43 = v38 >= 0.0 && v38 <= width;
    if (!v43 || (v40 >= 0.0 ? (v44 = v40 <= width) : (v44 = 0), !v44 || (v42 >= 0.0 ? (v45 = v42 <= height) : (v45 = 0), !v45 || (v41 >= 0.0 ? (v46 = v41 <= height) : (v46 = 0), !v46))))
    {
      v47 = ci_logger_api();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [(CIFilter(Private) *)v47 _propertyArrayFromFilters:v48 inputImageExtent:v49, v50, v51, v52, v53, v54];
      }
    }

    v78[0] = metadataPropertyWithDouble(v37);
    v78[1] = metadataPropertyWithDouble(fmax(fmin(v41 / height, 1.0), 0.0));
    v78[2] = metadataPropertyWithDouble(fmax(fmin(v42 / height, 1.0), 0.0));
    v78[3] = metadataPropertyWithDouble(fmax(fmin(v38 / width, 1.0), 0.0));
    v78[4] = metadataPropertyWithDouble(fmax(fmin(v40 / width, 1.0), 0.0));
    v78[5] = metadataPropertyWithBool();
    v78[6] = metadataPropertyWithBool();
    [array addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v78, 7)}];
  }

LABEL_54:
  array2 = [MEMORY[0x1E695DF70] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v56 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v67;
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v67 != v58)
        {
          objc_enumerationMutation(obj);
        }

        _serializedXMPString = [*(*(&v66 + 1) + 8 * j) _serializedXMPString];
        if (_serializedXMPString)
        {
          [array2 addObject:_serializedXMPString];
        }
      }

      v57 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v57);
  }

  if ([array2 count])
  {
    [array addObject:{metadataPropertyWithArray(@"http://ns.apple.com/adjustment-settings/1.0/", @"aas", @"Filters", array2)}];
  }

  return array;
}

+ (id)_filterArrayFromProperties:(id)properties inputImageExtent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  v65 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = [&unk_1F10855F0 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v59;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(&unk_1F10855F0);
        }

        v13 = *(*(&v58 + 1) + 8 * i);
        v14 = NSClassFromString(v13);
        if (v14)
        {
          v15 = v14;
          if ([(objc_class *)v14 isSubclassOfClass:objc_opt_class()])
          {
            if ([(objc_class *)v15 conformsToProtocol:&unk_1F108B858])
            {
              v16 = [[v15 alloc] _initFromProperties:properties];
              if (v16)
              {
                v17 = v16;
                [array addObject:v16];
                if ([(NSString *)v13 isEqual:@"CIAffineTransform"])
                {
                  v10 = v17;
                }

                if ([(NSString *)v13 isEqual:@"CICrop"])
                {
                  v9 = v17;
                }
              }
            }
          }
        }
      }

      v8 = [&unk_1F10855F0 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v8);
    v18 = (v10 | v9) == 0;
  }

  else
  {
    v18 = 1;
  }

  v56 = 0.0;
  v57 = 0.0;
  v54 = 0.0;
  v55 = 0.0;
  v53 = 0.0;
  v52 = 0;
  if (v18)
  {
    v19 = [CIFilter filterWithName:@"CIAffineTransform"];
    v20 = [CIFilter filterWithName:@"CICrop"];
    if (metadataPropertyArrayGetBool(properties, @"http://ns.adobe.com/camera-raw-settings/1.0/", @"HasCrop", &v52 + 1))
    {
      if (metadataPropertyArrayGetBool(properties, @"http://ns.adobe.com/camera-raw-settings/1.0/", @"AlreadyApplied", &v52) && HIBYTE(v52) == 1 && (v52 & 1) == 0)
      {
        v63[0] = v19;
        v63[1] = v20;
        [array addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v63, 2)}];
        if ((metadataPropertyArrayGetDouble(properties, @"http://ns.adobe.com/camera-raw-settings/1.0/", @"CropTop", &v55) & 1) == 0)
        {
          v55 = 0.0;
        }

        if ((metadataPropertyArrayGetDouble(properties, @"http://ns.adobe.com/camera-raw-settings/1.0/", @"CropBottom", &v54) & 1) == 0)
        {
          v54 = 1.0;
        }

        if ((metadataPropertyArrayGetDouble(properties, @"http://ns.adobe.com/camera-raw-settings/1.0/", @"CropLeft", &v57) & 1) == 0)
        {
          v57 = 0.0;
        }

        if ((metadataPropertyArrayGetDouble(properties, @"http://ns.adobe.com/camera-raw-settings/1.0/", @"CropRight", &v56) & 1) == 0)
        {
          v56 = 1.0;
        }

        if (metadataPropertyArrayGetDouble(properties, @"http://ns.adobe.com/camera-raw-settings/1.0/", @"CropAngle", &v53))
        {
          v21 = v53 * -0.0174532925;
        }

        else
        {
          v53 = 0.0;
          v21 = -0.0;
        }

        v22 = width * v57;
        v23 = width * v56;
        v24 = height - height * v55;
        v25 = height - height * v54;
        memset(&v51, 0, sizeof(v51));
        CGAffineTransformMakeRotation(&v51, -v21);
        v26 = tan(v21 + -1.57079633);
        v27 = tan(v21 + 3.14159265);
        v28 = -1.0;
        v29 = v22 + -1.0;
        v30 = v24 - v26;
        if (v21 <= 0.0)
        {
          v28 = 1.0;
        }

        else
        {
          v30 = v24 + v26;
          v29 = v22 + 1.0;
          v27 = -v27;
        }

        v31 = v29 - v22;
        v32 = v30 - v24;
        v33 = ((v24 - v25) * (v23 + v28 - v23) - (v22 - v23) * (v25 + v27 - v25)) / (v31 * (v25 + v27 - v25) - v32 * (v23 + v28 - v23));
        v34 = v22 + v33 * v31;
        v35 = v24 + v33 * v32;
        v49 = v51;
        memset(&v50, 0, sizeof(v50));
        CGAffineTransformInvert(&v50, &v49);
        v50.tx = v34;
        v50.ty = v35;
        v48 = v50;
        memset(&v49, 0, sizeof(v49));
        CGAffineTransformInvert(&v49, &v48);
        -[CIFilter setValue:forKey:](v19, "setValue:forKey:", [MEMORY[0x1E696B098] valueWithBytes:&v49 objCType:"{CGAffineTransform=dddddd}"], @"inputTransform");
        [(CIFilter *)v20 setValue:[CIVector forKey:"vectorWithX:Y:Z:W:" vectorWithX:0.0 Y:vabdd_f64(v50.tx + v25 * v50.c + v50.a * v23 Z:v50.tx + v24 * v50.c + v50.a * v22) W:vabdd_f64(v50.ty + v24 * v50.d + v50.b * v22, v50.ty + v25 * v50.d + v50.b * v23)], @"inputRectangle"];
      }
    }
  }

  ArrayOfStrings = metadataPropertyArrayGetArrayOfStrings();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = [ArrayOfStrings countByEnumeratingWithState:&v44 objects:v62 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v45;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(ArrayOfStrings);
        }

        v41 = [CIFilter filterWithString:*(*(&v44 + 1) + 8 * j)];
        if (v41)
        {
          [array addObject:v41];
        }
      }

      v38 = [ArrayOfStrings countByEnumeratingWithState:&v44 objects:v62 count:16];
    }

    while (v38);
  }

  return array;
}

+ (CGImageMetadata)_imageMetadataFromFilters:(id)filters inputImageExtent:(CGRect)extent
{
  result = [CIFilter _propertyArrayFromFilters:filters inputImageExtent:extent.origin.x, extent.origin.y, extent.size.width, extent.size.height];
  if (result)
  {

    return MEMORY[0x1EEDC8BB0]();
  }

  return result;
}

+ (id)_filterArrayFromImageMetadata:(CGImageMetadata *)metadata inputImageExtent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  result = CGImageMetadataCreateMetadataProperties();
  if (result)
  {
    v9 = result;
    height = [CIFilter _filterArrayFromProperties:result inputImageExtent:x, y, width, height];
    CFRelease(v9);
    return height;
  }

  return result;
}

+ (id)_filterArrayFromProperties:(id)properties
{
  v3 = ci_logger_api();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(CIFilter(Private) *)v3 _filterArrayFromProperties:v4, v5, v6, v7, v8, v9, v10];
  }

  return 0;
}

+ (id)distanceGradientFromRedMaskFilter
{
  v2 = [CIFilter filterWithName:@"CIDistanceGradientFromRedMask"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CIFilter_Builtins__distanceGradientFromRedMaskFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (distanceGradientFromRedMaskFilter_onceToken != -1)
  {
    dispatch_once(&distanceGradientFromRedMaskFilter_onceToken, block);
  }

  return v2;
}

objc_class *__55__CIFilter_Builtins__distanceGradientFromRedMaskFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_maximumDistance, floatGetter, "f@:");

    return class_addMethod(v7, sel_setMaximumDistance_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)gaussianGradientFilter
{
  v2 = [CIFilter filterWithName:@"CIGaussianGradient"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__gaussianGradientFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (gaussianGradientFilter_onceToken != -1)
  {
    dispatch_once(&gaussianGradientFilter_onceToken, block);
  }

  return v2;
}

objc_class *__44__CIFilter_Builtins__gaussianGradientFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v1, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    v4 = [NSStringFromSelector(sel_color0) isEqualToString:@"inputImage"];
    v5 = [v3 instancesRespondToSelector:sel_color0];
    if (v4)
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color0, iiGetter, "@@:");
      }

      v6 = [v3 instancesRespondToSelector:sel_setColor0_];
      v7 = iiSetter;
      if ((v6 & 1) == 0)
      {
LABEL_8:
        class_addMethod(v3, sel_setColor0_, v7, "v@:@");
      }
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color0, objGetter, "@@:");
      }

      v16 = [v3 instancesRespondToSelector:sel_setColor0_];
      v7 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = objc_opt_class();
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [NSStringFromSelector(sel_color1) isEqualToString:@"inputImage"];
  v11 = [v9 instancesRespondToSelector:sel_color1];
  if (v10)
  {
    if ((v11 & 1) == 0)
    {
      class_addMethod(v9, sel_color1, iiGetter, "@@:");
    }

    v12 = [v9 instancesRespondToSelector:sel_setColor1_];
    v13 = iiSetter;
    if ((v12 & 1) == 0)
    {
LABEL_14:
      class_addMethod(v9, sel_setColor1_, v13, "v@:@");
    }
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      class_addMethod(v9, sel_color1, objGetter, "@@:");
    }

    v17 = [v9 instancesRespondToSelector:sel_setColor1_];
    v13 = objSetter;
    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v15, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)hueSaturationValueGradientFilter
{
  v2 = [CIFilter filterWithName:@"CIHueSaturationValueGradient"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CIFilter_Builtins__hueSaturationValueGradientFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (hueSaturationValueGradientFilter_onceToken != -1)
  {
    dispatch_once(&hueSaturationValueGradientFilter_onceToken, block);
  }

  return v2;
}

uint64_t __54__CIFilter_Builtins__hueSaturationValueGradientFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_value, floatGetter, "f@:");
    class_addMethod(v1, sel_setValue_, floatSetter, "v@:f");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    class_addMethod(v2, sel_radius, floatGetter, "f@:");
    class_addMethod(v3, sel_setRadius_, floatSetter, "v@:f");
  }

  v4 = objc_opt_class();
  if (v4)
  {
    v5 = v4;
    class_addMethod(v4, sel_softness, floatGetter, "f@:");
    class_addMethod(v5, sel_setSoftness_, floatSetter, "v@:f");
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_dither, floatGetter, "f@:");
    class_addMethod(v7, sel_setDither_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    v10 = [NSStringFromSelector(sel_colorSpace) isEqualToString:@"inputImage"];
    v11 = [v9 instancesRespondToSelector:sel_colorSpace];
    if (v10)
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_colorSpace, iiGetter, "@@:");
      }

      result = [v9 instancesRespondToSelector:sel_setColorSpace_];
      v12 = iiSetter;
      if ((result & 1) == 0)
      {
LABEL_14:

        return class_addMethod(v9, sel_setColorSpace_, v12, "v@:@");
      }
    }

    else
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_colorSpace, objGetter, "@@:");
      }

      result = [v9 instancesRespondToSelector:sel_setColorSpace_];
      v12 = objSetter;
      if ((result & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

+ (CIFilter)linearGradientFilter
{
  v2 = [CIFilter filterWithName:@"CILinearGradient"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__linearGradientFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (linearGradientFilter_onceToken != -1)
  {
    dispatch_once(&linearGradientFilter_onceToken, block);
  }

  return v2;
}

uint64_t __42__CIFilter_Builtins__linearGradientFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_point0, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v1, sel_setPoint0_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    class_addMethod(v2, sel_point1, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v3, sel_setPoint1_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v4 = objc_opt_class();
  if (v4)
  {
    v5 = v4;
    v6 = [NSStringFromSelector(sel_color0) isEqualToString:@"inputImage"];
    v7 = [v5 instancesRespondToSelector:sel_color0];
    if (v6)
    {
      if ((v7 & 1) == 0)
      {
        class_addMethod(v5, sel_color0, iiGetter, "@@:");
      }

      v8 = [v5 instancesRespondToSelector:sel_setColor0_];
      v9 = iiSetter;
      if ((v8 & 1) == 0)
      {
LABEL_10:
        class_addMethod(v5, sel_setColor0_, v9, "v@:@");
      }
    }

    else
    {
      if ((v7 & 1) == 0)
      {
        class_addMethod(v5, sel_color0, objGetter, "@@:");
      }

      v15 = [v5 instancesRespondToSelector:sel_setColor0_];
      v9 = objSetter;
      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = [NSStringFromSelector(sel_color1) isEqualToString:@"inputImage"];
  v13 = [v11 instancesRespondToSelector:sel_color1];
  if (v12)
  {
    if ((v13 & 1) == 0)
    {
      class_addMethod(v11, sel_color1, iiGetter, "@@:");
    }

    result = [v11 instancesRespondToSelector:sel_setColor1_];
    v14 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_16:

      return class_addMethod(v11, sel_setColor1_, v14, "v@:@");
    }
  }

  else
  {
    if ((v13 & 1) == 0)
    {
      class_addMethod(v11, sel_color1, objGetter, "@@:");
    }

    result = [v11 instancesRespondToSelector:sel_setColor1_];
    v14 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return result;
}

+ (CIFilter)radialGradientFilter
{
  v2 = [CIFilter filterWithName:@"CIRadialGradient"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__radialGradientFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (radialGradientFilter_onceToken != -1)
  {
    dispatch_once(&radialGradientFilter_onceToken, block);
  }

  return v2;
}

uint64_t __42__CIFilter_Builtins__radialGradientFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v1, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    class_addMethod(v2, sel_radius0, floatGetter, "f@:");
    class_addMethod(v3, sel_setRadius0_, floatSetter, "v@:f");
  }

  v4 = objc_opt_class();
  if (v4)
  {
    v5 = v4;
    class_addMethod(v4, sel_radius1, floatGetter, "f@:");
    class_addMethod(v5, sel_setRadius1_, floatSetter, "v@:f");
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    v8 = [NSStringFromSelector(sel_color0) isEqualToString:@"inputImage"];
    v9 = [v7 instancesRespondToSelector:sel_color0];
    if (v8)
    {
      if ((v9 & 1) == 0)
      {
        class_addMethod(v7, sel_color0, iiGetter, "@@:");
      }

      v10 = [v7 instancesRespondToSelector:sel_setColor0_];
      v11 = iiSetter;
      if ((v10 & 1) == 0)
      {
LABEL_12:
        class_addMethod(v7, sel_setColor0_, v11, "v@:@");
      }
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        class_addMethod(v7, sel_color0, objGetter, "@@:");
      }

      v17 = [v7 instancesRespondToSelector:sel_setColor0_];
      v11 = objSetter;
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [NSStringFromSelector(sel_color1) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_color1];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_color1, iiGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setColor1_];
    v16 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_18:

      return class_addMethod(v13, sel_setColor1_, v16, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_color1, objGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setColor1_];
    v16 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return result;
}

+ (id)signedDistanceGradientFromRedMaskFilter
{
  v2 = [CIFilter filterWithName:@"CISignedDistanceGradientFromRedMask"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CIFilter_Builtins__signedDistanceGradientFromRedMaskFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (signedDistanceGradientFromRedMaskFilter_onceToken != -1)
  {
    dispatch_once(&signedDistanceGradientFromRedMaskFilter_onceToken, block);
  }

  return v2;
}

objc_class *__61__CIFilter_Builtins__signedDistanceGradientFromRedMaskFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_maximumDistance, floatGetter, "f@:");

    return class_addMethod(v7, sel_setMaximumDistance_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)smoothLinearGradientFilter
{
  v2 = [CIFilter filterWithName:@"CISmoothLinearGradient"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CIFilter_Builtins__smoothLinearGradientFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (smoothLinearGradientFilter_onceToken != -1)
  {
    dispatch_once(&smoothLinearGradientFilter_onceToken, block);
  }

  return v2;
}

uint64_t __48__CIFilter_Builtins__smoothLinearGradientFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_point0, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v1, sel_setPoint0_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    class_addMethod(v2, sel_point1, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v3, sel_setPoint1_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v4 = objc_opt_class();
  if (v4)
  {
    v5 = v4;
    v6 = [NSStringFromSelector(sel_color0) isEqualToString:@"inputImage"];
    v7 = [v5 instancesRespondToSelector:sel_color0];
    if (v6)
    {
      if ((v7 & 1) == 0)
      {
        class_addMethod(v5, sel_color0, iiGetter, "@@:");
      }

      v8 = [v5 instancesRespondToSelector:sel_setColor0_];
      v9 = iiSetter;
      if ((v8 & 1) == 0)
      {
LABEL_10:
        class_addMethod(v5, sel_setColor0_, v9, "v@:@");
      }
    }

    else
    {
      if ((v7 & 1) == 0)
      {
        class_addMethod(v5, sel_color0, objGetter, "@@:");
      }

      v15 = [v5 instancesRespondToSelector:sel_setColor0_];
      v9 = objSetter;
      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = [NSStringFromSelector(sel_color1) isEqualToString:@"inputImage"];
  v13 = [v11 instancesRespondToSelector:sel_color1];
  if (v12)
  {
    if ((v13 & 1) == 0)
    {
      class_addMethod(v11, sel_color1, iiGetter, "@@:");
    }

    result = [v11 instancesRespondToSelector:sel_setColor1_];
    v14 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_16:

      return class_addMethod(v11, sel_setColor1_, v14, "v@:@");
    }
  }

  else
  {
    if ((v13 & 1) == 0)
    {
      class_addMethod(v11, sel_color1, objGetter, "@@:");
    }

    result = [v11 instancesRespondToSelector:sel_setColor1_];
    v14 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return result;
}

+ (CIFilter)sharpenLuminanceFilter
{
  v2 = [CIFilter filterWithName:@"CISharpenLuminance"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__sharpenLuminanceFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (sharpenLuminanceFilter_onceToken != -1)
  {
    dispatch_once(&sharpenLuminanceFilter_onceToken, block);
  }

  return v2;
}

objc_class *__44__CIFilter_Builtins__sharpenLuminanceFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_sharpness, floatGetter, "f@:");
    class_addMethod(v7, sel_setSharpness_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)unsharpMaskFilter
{
  v2 = [CIFilter filterWithName:@"CIUnsharpMask"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__unsharpMaskFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (unsharpMaskFilter_onceToken != -1)
  {
    dispatch_once(&unsharpMaskFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__unsharpMaskFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_radius, floatGetter, "f@:");
    class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_intensity, floatGetter, "f@:");

    return class_addMethod(v9, sel_setIntensity_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)circularScreenFilter
{
  v2 = [CIFilter filterWithName:@"CICircularScreen"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__circularScreenFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (circularScreenFilter_onceToken != -1)
  {
    dispatch_once(&circularScreenFilter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__circularScreenFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_width, floatGetter, "f@:");
    class_addMethod(v9, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_sharpness, floatGetter, "f@:");

    return class_addMethod(v11, sel_setSharpness_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)CMYKHalftone
{
  v2 = [CIFilter filterWithName:@"CICMYKHalftone"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CIFilter_Builtins__CMYKHalftone__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (CMYKHalftone_onceToken != -1)
  {
    dispatch_once(&CMYKHalftone_onceToken, block);
  }

  return v2;
}

objc_class *__34__CIFilter_Builtins__CMYKHalftone__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v18 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v18 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_width, floatGetter, "f@:");
    class_addMethod(v9, sel_setWidth_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_angle, floatGetter, "f@:");
    class_addMethod(v11, sel_setAngle_, floatSetter, "v@:f");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_sharpness, floatGetter, "f@:");
    class_addMethod(v13, sel_setSharpness_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_grayComponentReplacement, floatGetter, "f@:");
    class_addMethod(v15, sel_setGrayComponentReplacement_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v17 = result;
    class_addMethod(result, sel_underColorRemoval, floatGetter, "f@:");

    return class_addMethod(v17, sel_setUnderColorRemoval_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)dotScreenFilter
{
  v2 = [CIFilter filterWithName:@"CIDotScreen"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CIFilter_Builtins__dotScreenFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (dotScreenFilter_onceToken != -1)
  {
    dispatch_once(&dotScreenFilter_onceToken, block);
  }

  return v2;
}

objc_class *__37__CIFilter_Builtins__dotScreenFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_width, floatGetter, "f@:");
    class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_sharpness, floatGetter, "f@:");

    return class_addMethod(v13, sel_setSharpness_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)hatchedScreenFilter
{
  v2 = [CIFilter filterWithName:@"CIHatchedScreen"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CIFilter_Builtins__hatchedScreenFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (hatchedScreenFilter_onceToken != -1)
  {
    dispatch_once(&hatchedScreenFilter_onceToken, block);
  }

  return v2;
}

objc_class *__41__CIFilter_Builtins__hatchedScreenFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_width, floatGetter, "f@:");
    class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_sharpness, floatGetter, "f@:");

    return class_addMethod(v13, sel_setSharpness_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)lineScreenFilter
{
  v2 = [CIFilter filterWithName:@"CILineScreen"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CIFilter_Builtins__lineScreenFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (lineScreenFilter_onceToken != -1)
  {
    dispatch_once(&lineScreenFilter_onceToken, block);
  }

  return v2;
}

objc_class *__38__CIFilter_Builtins__lineScreenFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_width, floatGetter, "f@:");
    class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_sharpness, floatGetter, "f@:");

    return class_addMethod(v13, sel_setSharpness_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)bicubicScaleTransformFilter
{
  v2 = [CIFilter filterWithName:@"CIBicubicScaleTransform"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CIFilter_Builtins__bicubicScaleTransformFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (bicubicScaleTransformFilter_onceToken != -1)
  {
    dispatch_once(&bicubicScaleTransformFilter_onceToken, block);
  }

  return v2;
}

objc_class *__49__CIFilter_Builtins__bicubicScaleTransformFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_scale, floatGetter, "f@:");
    class_addMethod(v7, sel_setScale_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_aspectRatio, floatGetter, "f@:");
    class_addMethod(v9, sel_setAspectRatio_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_parameterB, floatGetter, "f@:");
    class_addMethod(v11, sel_setParameterB_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_parameterC, floatGetter, "f@:");

    return class_addMethod(v13, sel_setParameterC_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)edgePreserveUpsampleFilter
{
  v2 = [CIFilter filterWithName:@"CIEdgePreserveUpsampleFilter"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CIFilter_Builtins__edgePreserveUpsampleFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (edgePreserveUpsampleFilter_onceToken != -1)
  {
    dispatch_once(&edgePreserveUpsampleFilter_onceToken, block);
  }

  return v2;
}

objc_class *__48__CIFilter_Builtins__edgePreserveUpsampleFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_smallImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_smallImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_smallImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setSmallImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setSmallImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_smallImage, objGetter, "@@:");
    }

    v17 = [v7 instancesRespondToSelector:sel_setSmallImage_];
    v11 = objSetter;
    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_spatialSigma, floatGetter, "f@:");
    class_addMethod(v13, sel_setSpatialSigma_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_lumaSigma, floatGetter, "f@:");

    return class_addMethod(v15, sel_setLumaSigma_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)keystoneCorrectionCombinedFilter
{
  v2 = [CIFilter filterWithName:@"CIKeystoneCorrectionCombined"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CIFilter_Builtins__keystoneCorrectionCombinedFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (keystoneCorrectionCombinedFilter_onceToken != -1)
  {
    dispatch_once(&keystoneCorrectionCombinedFilter_onceToken, block);
  }

  return v2;
}

objc_class *__54__CIFilter_Builtins__keystoneCorrectionCombinedFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_focalLength, floatGetter, "f@:");
    class_addMethod(v7, sel_setFocalLength_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_topLeft, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setTopLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_topRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v11, sel_setTopRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_bottomRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v13, sel_setBottomRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_bottomLeft, pointGetter, "{CGPoint=dd}@:");

    return class_addMethod(v15, sel_setBottomLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  return result;
}

+ (CIFilter)keystoneCorrectionHorizontalFilter
{
  v2 = [CIFilter filterWithName:@"CIKeystoneCorrectionHorizontal"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CIFilter_Builtins__keystoneCorrectionHorizontalFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (keystoneCorrectionHorizontalFilter_onceToken != -1)
  {
    dispatch_once(&keystoneCorrectionHorizontalFilter_onceToken, block);
  }

  return v2;
}

objc_class *__56__CIFilter_Builtins__keystoneCorrectionHorizontalFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_focalLength, floatGetter, "f@:");
    class_addMethod(v7, sel_setFocalLength_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_topLeft, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setTopLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_topRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v11, sel_setTopRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_bottomRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v13, sel_setBottomRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_bottomLeft, pointGetter, "{CGPoint=dd}@:");

    return class_addMethod(v15, sel_setBottomLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  return result;
}

+ (CIFilter)keystoneCorrectionVerticalFilter
{
  v2 = [CIFilter filterWithName:@"CIKeystoneCorrectionVertical"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CIFilter_Builtins__keystoneCorrectionVerticalFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (keystoneCorrectionVerticalFilter_onceToken != -1)
  {
    dispatch_once(&keystoneCorrectionVerticalFilter_onceToken, block);
  }

  return v2;
}

objc_class *__54__CIFilter_Builtins__keystoneCorrectionVerticalFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_focalLength, floatGetter, "f@:");
    class_addMethod(v7, sel_setFocalLength_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_topLeft, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setTopLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_topRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v11, sel_setTopRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_bottomRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v13, sel_setBottomRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_bottomLeft, pointGetter, "{CGPoint=dd}@:");

    return class_addMethod(v15, sel_setBottomLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  return result;
}

+ (CIFilter)lanczosScaleTransformFilter
{
  v2 = [CIFilter filterWithName:@"CILanczosScaleTransform"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CIFilter_Builtins__lanczosScaleTransformFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (lanczosScaleTransformFilter_onceToken != -1)
  {
    dispatch_once(&lanczosScaleTransformFilter_onceToken, block);
  }

  return v2;
}

objc_class *__49__CIFilter_Builtins__lanczosScaleTransformFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_scale, floatGetter, "f@:");
    class_addMethod(v7, sel_setScale_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_aspectRatio, floatGetter, "f@:");

    return class_addMethod(v9, sel_setAspectRatio_, floatSetter, "v@:f");
  }

  return result;
}

+ (id)maximumScaleTransformFilter
{
  v2 = [CIFilter filterWithName:@"CIMaximumScaleTransform"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CIFilter_Builtins__maximumScaleTransformFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (maximumScaleTransformFilter_onceToken != -1)
  {
    dispatch_once(&maximumScaleTransformFilter_onceToken, block);
  }

  return v2;
}

objc_class *__49__CIFilter_Builtins__maximumScaleTransformFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_scale, floatGetter, "f@:");
    class_addMethod(v7, sel_setScale_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_aspectRatio, floatGetter, "f@:");

    return class_addMethod(v9, sel_setAspectRatio_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)perspectiveCorrectionFilter
{
  v2 = [CIFilter filterWithName:@"CIPerspectiveCorrection"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CIFilter_Builtins__perspectiveCorrectionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (perspectiveCorrectionFilter_onceToken != -1)
  {
    dispatch_once(&perspectiveCorrectionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__49__CIFilter_Builtins__perspectiveCorrectionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_topLeft, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setTopLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_topRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setTopRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_bottomRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v11, sel_setBottomRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_bottomLeft, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v13, sel_setBottomLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_crop, BOOLGetter, "B@:");

    return class_addMethod(v15, sel_setCrop_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)perspectiveRotateFilter
{
  v2 = [CIFilter filterWithName:@"CIPerspectiveRotate"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__perspectiveRotateFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (perspectiveRotateFilter_onceToken != -1)
  {
    dispatch_once(&perspectiveRotateFilter_onceToken, block);
  }

  return v2;
}

objc_class *__45__CIFilter_Builtins__perspectiveRotateFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_focalLength, floatGetter, "f@:");
    class_addMethod(v7, sel_setFocalLength_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_pitch, floatGetter, "f@:");
    class_addMethod(v9, sel_setPitch_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, "yaw", floatGetter, "f@:");
    class_addMethod(v11, sel_setYaw_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_roll, floatGetter, "f@:");

    return class_addMethod(v13, sel_setRoll_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)perspectiveTransformFilter
{
  v2 = [CIFilter filterWithName:@"CIPerspectiveTransform"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CIFilter_Builtins__perspectiveTransformFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (perspectiveTransformFilter_onceToken != -1)
  {
    dispatch_once(&perspectiveTransformFilter_onceToken, block);
  }

  return v2;
}

objc_class *__48__CIFilter_Builtins__perspectiveTransformFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_topLeft, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setTopLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_topRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setTopRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_bottomRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v11, sel_setBottomRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bottomLeft, pointGetter, "{CGPoint=dd}@:");

    return class_addMethod(v13, sel_setBottomLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  return result;
}

+ (CIFilter)perspectiveTransformWithExtentFilter
{
  v2 = [CIFilter filterWithName:@"CIPerspectiveTransformWithExtent"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CIFilter_Builtins__perspectiveTransformWithExtentFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (perspectiveTransformWithExtentFilter_onceToken != -1)
  {
    dispatch_once(&perspectiveTransformWithExtentFilter_onceToken, block);
  }

  return v2;
}

objc_class *__58__CIFilter_Builtins__perspectiveTransformWithExtentFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_topLeft, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setTopLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_topRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v11, sel_setTopRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_bottomRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v13, sel_setBottomRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_bottomLeft, pointGetter, "{CGPoint=dd}@:");

    return class_addMethod(v15, sel_setBottomLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  return result;
}

+ (CIFilter)straightenFilter
{
  v2 = [CIFilter filterWithName:@"CIStraightenFilter"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CIFilter_Builtins__straightenFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (straightenFilter_onceToken != -1)
  {
    dispatch_once(&straightenFilter_onceToken, block);
  }

  return v2;
}

objc_class *__38__CIFilter_Builtins__straightenFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_angle, floatGetter, "f@:");

    return class_addMethod(v7, sel_setAngle_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)accordionFoldTransitionFilter
{
  v2 = [CIFilter filterWithName:@"CIAccordionFoldTransition"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CIFilter_Builtins__accordionFoldTransitionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (accordionFoldTransitionFilter_onceToken != -1)
  {
    dispatch_once(&accordionFoldTransitionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__51__CIFilter_Builtins__accordionFoldTransitionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v20 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v20 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_targetImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_targetImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTargetImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, objGetter, "@@:");
    }

    v21 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = objSetter;
    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_bottomHeight, floatGetter, "f@:");
    class_addMethod(v13, sel_setBottomHeight_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_numberOfFolds, floatGetter, "f@:");
    class_addMethod(v15, sel_setNumberOfFolds_, floatSetter, "v@:f");
  }

  v16 = objc_opt_class();
  if (v16)
  {
    v17 = v16;
    class_addMethod(v16, sel_foldShadowAmount, floatGetter, "f@:");
    class_addMethod(v17, sel_setFoldShadowAmount_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v19 = result;
    class_addMethod(result, sel_time, floatGetter, "f@:");

    return class_addMethod(v19, sel_setTime_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)barsSwipeTransitionFilter
{
  v2 = [CIFilter filterWithName:@"CIBarsSwipeTransition"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__barsSwipeTransitionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (barsSwipeTransitionFilter_onceToken != -1)
  {
    dispatch_once(&barsSwipeTransitionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__47__CIFilter_Builtins__barsSwipeTransitionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v20 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v20 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_targetImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_targetImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTargetImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, objGetter, "@@:");
    }

    v21 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = objSetter;
    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_angle, floatGetter, "f@:");
    class_addMethod(v13, sel_setAngle_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_width, floatGetter, "f@:");
    class_addMethod(v15, sel_setWidth_, floatSetter, "v@:f");
  }

  v16 = objc_opt_class();
  if (v16)
  {
    v17 = v16;
    class_addMethod(v16, sel_barOffset, floatGetter, "f@:");
    class_addMethod(v17, sel_setBarOffset_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v19 = result;
    class_addMethod(result, sel_time, floatGetter, "f@:");

    return class_addMethod(v19, sel_setTime_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)copyMachineTransitionFilter
{
  v2 = [CIFilter filterWithName:@"CICopyMachineTransition"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CIFilter_Builtins__copyMachineTransitionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (copyMachineTransitionFilter_onceToken != -1)
  {
    dispatch_once(&copyMachineTransitionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__49__CIFilter_Builtins__copyMachineTransitionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v28 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v28 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_targetImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_targetImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTargetImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, objGetter, "@@:");
    }

    v29 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = objSetter;
    if ((v29 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v13, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    v16 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v17 = [v15 instancesRespondToSelector:sel_color];
    if (v16)
    {
      if ((v17 & 1) == 0)
      {
        class_addMethod(v15, sel_color, iiGetter, "@@:");
      }

      v18 = [v15 instancesRespondToSelector:sel_setColor_];
      v19 = iiSetter;
      if ((v18 & 1) == 0)
      {
LABEL_20:
        class_addMethod(v15, sel_setColor_, v19, "v@:@");
      }
    }

    else
    {
      if ((v17 & 1) == 0)
      {
        class_addMethod(v15, sel_color, objGetter, "@@:");
      }

      v30 = [v15 instancesRespondToSelector:sel_setColor_];
      v19 = objSetter;
      if ((v30 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  v20 = objc_opt_class();
  if (v20)
  {
    v21 = v20;
    class_addMethod(v20, sel_time, floatGetter, "f@:");
    class_addMethod(v21, sel_setTime_, floatSetter, "v@:f");
  }

  v22 = objc_opt_class();
  if (v22)
  {
    v23 = v22;
    class_addMethod(v22, sel_angle, floatGetter, "f@:");
    class_addMethod(v23, sel_setAngle_, floatSetter, "v@:f");
  }

  v24 = objc_opt_class();
  if (v24)
  {
    v25 = v24;
    class_addMethod(v24, sel_width, floatGetter, "f@:");
    class_addMethod(v25, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v27 = result;
    class_addMethod(result, sel_opacity, floatGetter, "f@:");

    return class_addMethod(v27, sel_setOpacity_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)disintegrateWithMaskTransitionFilter
{
  v2 = [CIFilter filterWithName:@"CIDisintegrateWithMaskTransition"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CIFilter_Builtins__disintegrateWithMaskTransitionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (disintegrateWithMaskTransitionFilter_onceToken != -1)
  {
    dispatch_once(&disintegrateWithMaskTransitionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__58__CIFilter_Builtins__disintegrateWithMaskTransitionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v26 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v26 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_targetImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_targetImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTargetImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, objGetter, "@@:");
    }

    v27 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = objSetter;
    if ((v27 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [NSStringFromSelector(sel_maskImage) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_maskImage];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maskImage, iiGetter, "@@:");
    }

    v16 = [v13 instancesRespondToSelector:sel_setMaskImage_];
    v17 = iiSetter;
    if ((v16 & 1) == 0)
    {
LABEL_18:
      class_addMethod(v13, sel_setMaskImage_, v17, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maskImage, objGetter, "@@:");
    }

    v28 = [v13 instancesRespondToSelector:sel_setMaskImage_];
    v17 = objSetter;
    if ((v28 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v18 = objc_opt_class();
  if (v18)
  {
    v19 = v18;
    class_addMethod(v18, sel_time, floatGetter, "f@:");
    class_addMethod(v19, sel_setTime_, floatSetter, "v@:f");
  }

  v20 = objc_opt_class();
  if (v20)
  {
    v21 = v20;
    class_addMethod(v20, sel_shadowRadius, floatGetter, "f@:");
    class_addMethod(v21, sel_setShadowRadius_, floatSetter, "v@:f");
  }

  v22 = objc_opt_class();
  if (v22)
  {
    v23 = v22;
    class_addMethod(v22, sel_shadowDensity, floatGetter, "f@:");
    class_addMethod(v23, sel_setShadowDensity_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v25 = result;
    class_addMethod(result, sel_shadowOffset, pointGetter, "{CGPoint=dd}@:");

    return class_addMethod(v25, sel_setShadowOffset_, pointSetter, "v@:{CGPoint=dd}}");
  }

  return result;
}

+ (CIFilter)dissolveTransitionFilter
{
  v2 = [CIFilter filterWithName:@"CIDissolveTransition"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__dissolveTransitionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (dissolveTransitionFilter_onceToken != -1)
  {
    dispatch_once(&dissolveTransitionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__dissolveTransitionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_targetImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_targetImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTargetImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_time, floatGetter, "f@:");

    return class_addMethod(v13, sel_setTime_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)flashTransitionFilter
{
  v2 = [CIFilter filterWithName:@"CIFlashTransition"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__flashTransitionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (flashTransitionFilter_onceToken != -1)
  {
    dispatch_once(&flashTransitionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__flashTransitionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v32 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v32 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_targetImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_targetImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTargetImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, objGetter, "@@:");
    }

    v33 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = objSetter;
    if ((v33 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v13, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v15, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v16 = objc_opt_class();
  if (v16)
  {
    v17 = v16;
    v18 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v19 = [v17 instancesRespondToSelector:sel_color];
    if (v18)
    {
      if ((v19 & 1) == 0)
      {
        class_addMethod(v17, sel_color, iiGetter, "@@:");
      }

      v20 = [v17 instancesRespondToSelector:sel_setColor_];
      v21 = iiSetter;
      if ((v20 & 1) == 0)
      {
LABEL_22:
        class_addMethod(v17, sel_setColor_, v21, "v@:@");
      }
    }

    else
    {
      if ((v19 & 1) == 0)
      {
        class_addMethod(v17, sel_color, objGetter, "@@:");
      }

      v34 = [v17 instancesRespondToSelector:sel_setColor_];
      v21 = objSetter;
      if ((v34 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  v22 = objc_opt_class();
  if (v22)
  {
    v23 = v22;
    class_addMethod(v22, sel_time, floatGetter, "f@:");
    class_addMethod(v23, sel_setTime_, floatSetter, "v@:f");
  }

  v24 = objc_opt_class();
  if (v24)
  {
    v25 = v24;
    class_addMethod(v24, sel_maxStriationRadius, floatGetter, "f@:");
    class_addMethod(v25, sel_setMaxStriationRadius_, floatSetter, "v@:f");
  }

  v26 = objc_opt_class();
  if (v26)
  {
    v27 = v26;
    class_addMethod(v26, sel_striationStrength, floatGetter, "f@:");
    class_addMethod(v27, sel_setStriationStrength_, floatSetter, "v@:f");
  }

  v28 = objc_opt_class();
  if (v28)
  {
    v29 = v28;
    class_addMethod(v28, sel_striationContrast, floatGetter, "f@:");
    class_addMethod(v29, sel_setStriationContrast_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v31 = result;
    class_addMethod(result, sel_fadeThreshold, floatGetter, "f@:");

    return class_addMethod(v31, sel_setFadeThreshold_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)modTransitionFilter
{
  v2 = [CIFilter filterWithName:@"CIModTransition"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CIFilter_Builtins__modTransitionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (modTransitionFilter_onceToken != -1)
  {
    dispatch_once(&modTransitionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__41__CIFilter_Builtins__modTransitionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v22 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v22 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_targetImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_targetImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTargetImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, objGetter, "@@:");
    }

    v23 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = objSetter;
    if ((v23 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v13, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_time, floatGetter, "f@:");
    class_addMethod(v15, sel_setTime_, floatSetter, "v@:f");
  }

  v16 = objc_opt_class();
  if (v16)
  {
    v17 = v16;
    class_addMethod(v16, sel_angle, floatGetter, "f@:");
    class_addMethod(v17, sel_setAngle_, floatSetter, "v@:f");
  }

  v18 = objc_opt_class();
  if (v18)
  {
    v19 = v18;
    class_addMethod(v18, sel_radius, floatGetter, "f@:");
    class_addMethod(v19, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v21 = result;
    class_addMethod(result, sel_compression, floatGetter, "f@:");

    return class_addMethod(v21, sel_setCompression_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)pageCurlTransitionFilter
{
  v2 = [CIFilter filterWithName:@"CIPageCurlTransition"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__pageCurlTransitionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (pageCurlTransitionFilter_onceToken != -1)
  {
    dispatch_once(&pageCurlTransitionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__pageCurlTransitionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v32 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v32 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_targetImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_targetImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTargetImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, objGetter, "@@:");
    }

    v33 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = objSetter;
    if ((v33 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [NSStringFromSelector(sel_backsideImage) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_backsideImage];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_backsideImage, iiGetter, "@@:");
    }

    v16 = [v13 instancesRespondToSelector:sel_setBacksideImage_];
    v17 = iiSetter;
    if ((v16 & 1) == 0)
    {
LABEL_18:
      class_addMethod(v13, sel_setBacksideImage_, v17, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_backsideImage, objGetter, "@@:");
    }

    v34 = [v13 instancesRespondToSelector:sel_setBacksideImage_];
    v17 = objSetter;
    if ((v34 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v18 = objc_opt_class();
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
  v20 = [NSStringFromSelector(sel_shadingImage) isEqualToString:@"inputImage"];
  v21 = [v19 instancesRespondToSelector:sel_shadingImage];
  if (v20)
  {
    if ((v21 & 1) == 0)
    {
      class_addMethod(v19, sel_shadingImage, iiGetter, "@@:");
    }

    v22 = [v19 instancesRespondToSelector:sel_setShadingImage_];
    v23 = iiSetter;
    if ((v22 & 1) == 0)
    {
LABEL_24:
      class_addMethod(v19, sel_setShadingImage_, v23, "v@:@");
    }
  }

  else
  {
    if ((v21 & 1) == 0)
    {
      class_addMethod(v19, sel_shadingImage, objGetter, "@@:");
    }

    v35 = [v19 instancesRespondToSelector:sel_setShadingImage_];
    v23 = objSetter;
    if ((v35 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  v24 = objc_opt_class();
  if (v24)
  {
    v25 = v24;
    class_addMethod(v24, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v25, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v26 = objc_opt_class();
  if (v26)
  {
    v27 = v26;
    class_addMethod(v26, sel_time, floatGetter, "f@:");
    class_addMethod(v27, sel_setTime_, floatSetter, "v@:f");
  }

  v28 = objc_opt_class();
  if (v28)
  {
    v29 = v28;
    class_addMethod(v28, sel_angle, floatGetter, "f@:");
    class_addMethod(v29, sel_setAngle_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v31 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v31, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)pageCurlWithShadowTransitionFilter
{
  v2 = [CIFilter filterWithName:@"CIPageCurlWithShadowTransition"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CIFilter_Builtins__pageCurlWithShadowTransitionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (pageCurlWithShadowTransitionFilter_onceToken != -1)
  {
    dispatch_once(&pageCurlWithShadowTransitionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__56__CIFilter_Builtins__pageCurlWithShadowTransitionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v32 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v32 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_targetImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_targetImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTargetImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, objGetter, "@@:");
    }

    v33 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = objSetter;
    if ((v33 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [NSStringFromSelector(sel_backsideImage) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_backsideImage];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_backsideImage, iiGetter, "@@:");
    }

    v16 = [v13 instancesRespondToSelector:sel_setBacksideImage_];
    v17 = iiSetter;
    if ((v16 & 1) == 0)
    {
LABEL_18:
      class_addMethod(v13, sel_setBacksideImage_, v17, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_backsideImage, objGetter, "@@:");
    }

    v34 = [v13 instancesRespondToSelector:sel_setBacksideImage_];
    v17 = objSetter;
    if ((v34 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v18 = objc_opt_class();
  if (v18)
  {
    v19 = v18;
    class_addMethod(v18, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v19, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v20 = objc_opt_class();
  if (v20)
  {
    v21 = v20;
    class_addMethod(v20, sel_time, floatGetter, "f@:");
    class_addMethod(v21, sel_setTime_, floatSetter, "v@:f");
  }

  v22 = objc_opt_class();
  if (v22)
  {
    v23 = v22;
    class_addMethod(v22, sel_angle, floatGetter, "f@:");
    class_addMethod(v23, sel_setAngle_, floatSetter, "v@:f");
  }

  v24 = objc_opt_class();
  if (v24)
  {
    v25 = v24;
    class_addMethod(v24, sel_radius, floatGetter, "f@:");
    class_addMethod(v25, sel_setRadius_, floatSetter, "v@:f");
  }

  v26 = objc_opt_class();
  if (v26)
  {
    v27 = v26;
    class_addMethod(v26, sel_shadowSize, floatGetter, "f@:");
    class_addMethod(v27, sel_setShadowSize_, floatSetter, "v@:f");
  }

  v28 = objc_opt_class();
  if (v28)
  {
    v29 = v28;
    class_addMethod(v28, sel_shadowAmount, floatGetter, "f@:");
    class_addMethod(v29, sel_setShadowAmount_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v31 = result;
    class_addMethod(result, sel_shadowExtent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v31, sel_setShadowExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (CIFilter)rippleTransitionFilter
{
  v2 = [CIFilter filterWithName:@"CIRippleTransition"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__rippleTransitionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (rippleTransitionFilter_onceToken != -1)
  {
    dispatch_once(&rippleTransitionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__44__CIFilter_Builtins__rippleTransitionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v28 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v28 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_targetImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_targetImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTargetImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, objGetter, "@@:");
    }

    v29 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = objSetter;
    if ((v29 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [NSStringFromSelector(sel_shadingImage) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_shadingImage];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_shadingImage, iiGetter, "@@:");
    }

    v16 = [v13 instancesRespondToSelector:sel_setShadingImage_];
    v17 = iiSetter;
    if ((v16 & 1) == 0)
    {
LABEL_18:
      class_addMethod(v13, sel_setShadingImage_, v17, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_shadingImage, objGetter, "@@:");
    }

    v30 = [v13 instancesRespondToSelector:sel_setShadingImage_];
    v17 = objSetter;
    if ((v30 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v18 = objc_opt_class();
  if (v18)
  {
    v19 = v18;
    class_addMethod(v18, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v19, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v20 = objc_opt_class();
  if (v20)
  {
    v21 = v20;
    class_addMethod(v20, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v21, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v22 = objc_opt_class();
  if (v22)
  {
    v23 = v22;
    class_addMethod(v22, sel_time, floatGetter, "f@:");
    class_addMethod(v23, sel_setTime_, floatSetter, "v@:f");
  }

  v24 = objc_opt_class();
  if (v24)
  {
    v25 = v24;
    class_addMethod(v24, sel_width, floatGetter, "f@:");
    class_addMethod(v25, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v27 = result;
    class_addMethod(result, sel_scale, floatGetter, "f@:");

    return class_addMethod(v27, sel_setScale_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)swipeTransitionFilter
{
  v2 = [CIFilter filterWithName:@"CISwipeTransition"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__swipeTransitionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (swipeTransitionFilter_onceToken != -1)
  {
    dispatch_once(&swipeTransitionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__swipeTransitionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v28 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v28 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_targetImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_targetImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTargetImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_targetImage, objGetter, "@@:");
    }

    v29 = [v7 instancesRespondToSelector:sel_setTargetImage_];
    v11 = objSetter;
    if ((v29 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v13, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    v16 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v17 = [v15 instancesRespondToSelector:sel_color];
    if (v16)
    {
      if ((v17 & 1) == 0)
      {
        class_addMethod(v15, sel_color, iiGetter, "@@:");
      }

      v18 = [v15 instancesRespondToSelector:sel_setColor_];
      v19 = iiSetter;
      if ((v18 & 1) == 0)
      {
LABEL_20:
        class_addMethod(v15, sel_setColor_, v19, "v@:@");
      }
    }

    else
    {
      if ((v17 & 1) == 0)
      {
        class_addMethod(v15, sel_color, objGetter, "@@:");
      }

      v30 = [v15 instancesRespondToSelector:sel_setColor_];
      v19 = objSetter;
      if ((v30 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  v20 = objc_opt_class();
  if (v20)
  {
    v21 = v20;
    class_addMethod(v20, sel_time, floatGetter, "f@:");
    class_addMethod(v21, sel_setTime_, floatSetter, "v@:f");
  }

  v22 = objc_opt_class();
  if (v22)
  {
    v23 = v22;
    class_addMethod(v22, sel_angle, floatGetter, "f@:");
    class_addMethod(v23, sel_setAngle_, floatSetter, "v@:f");
  }

  v24 = objc_opt_class();
  if (v24)
  {
    v25 = v24;
    class_addMethod(v24, sel_width, floatGetter, "f@:");
    class_addMethod(v25, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v27 = result;
    class_addMethod(result, sel_opacity, floatGetter, "f@:");

    return class_addMethod(v27, sel_setOpacity_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)additionCompositingFilter
{
  v2 = [CIFilter filterWithName:@"CIAdditionCompositing"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__additionCompositingFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (additionCompositingFilter_onceToken != -1)
  {
    dispatch_once(&additionCompositingFilter_onceToken, block);
  }

  return v2;
}

uint64_t __47__CIFilter_Builtins__additionCompositingFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)colorBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIColorBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__colorBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&colorBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __42__CIFilter_Builtins__colorBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)colorBurnBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIColorBurnBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__colorBurnBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorBurnBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&colorBurnBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __46__CIFilter_Builtins__colorBurnBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)colorDodgeBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIColorDodgeBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__colorDodgeBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorDodgeBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&colorDodgeBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __47__CIFilter_Builtins__colorDodgeBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)darkenBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIDarkenBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__darkenBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (darkenBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&darkenBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __43__CIFilter_Builtins__darkenBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)differenceBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIDifferenceBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__differenceBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (differenceBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&differenceBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __47__CIFilter_Builtins__differenceBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)divideBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIDivideBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__divideBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (divideBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&divideBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __43__CIFilter_Builtins__divideBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)exclusionBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIExclusionBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__exclusionBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (exclusionBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&exclusionBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __46__CIFilter_Builtins__exclusionBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)hardLightBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIHardLightBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__hardLightBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (hardLightBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&hardLightBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __46__CIFilter_Builtins__hardLightBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)hueBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIHueBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CIFilter_Builtins__hueBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (hueBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&hueBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __40__CIFilter_Builtins__hueBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)lightenBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CILightenBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__lightenBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (lightenBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&lightenBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __44__CIFilter_Builtins__lightenBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)linearBurnBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CILinearBurnBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__linearBurnBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (linearBurnBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&linearBurnBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __47__CIFilter_Builtins__linearBurnBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)linearDodgeBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CILinearDodgeBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CIFilter_Builtins__linearDodgeBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (linearDodgeBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&linearDodgeBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __48__CIFilter_Builtins__linearDodgeBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)linearLightBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CILinearLightBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CIFilter_Builtins__linearLightBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (linearLightBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&linearLightBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __48__CIFilter_Builtins__linearLightBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)luminosityBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CILuminosityBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__luminosityBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (luminosityBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&luminosityBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __47__CIFilter_Builtins__luminosityBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)maximumCompositingFilter
{
  v2 = [CIFilter filterWithName:@"CIMaximumCompositing"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__maximumCompositingFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (maximumCompositingFilter_onceToken != -1)
  {
    dispatch_once(&maximumCompositingFilter_onceToken, block);
  }

  return v2;
}

uint64_t __46__CIFilter_Builtins__maximumCompositingFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)minimumCompositingFilter
{
  v2 = [CIFilter filterWithName:@"CIMinimumCompositing"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__minimumCompositingFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (minimumCompositingFilter_onceToken != -1)
  {
    dispatch_once(&minimumCompositingFilter_onceToken, block);
  }

  return v2;
}

uint64_t __46__CIFilter_Builtins__minimumCompositingFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)multiplyBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIMultiplyBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__multiplyBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (multiplyBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&multiplyBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __45__CIFilter_Builtins__multiplyBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)multiplyCompositingFilter
{
  v2 = [CIFilter filterWithName:@"CIMultiplyCompositing"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__multiplyCompositingFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (multiplyCompositingFilter_onceToken != -1)
  {
    dispatch_once(&multiplyCompositingFilter_onceToken, block);
  }

  return v2;
}

uint64_t __47__CIFilter_Builtins__multiplyCompositingFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)overlayBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIOverlayBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__overlayBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (overlayBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&overlayBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __44__CIFilter_Builtins__overlayBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)pinLightBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIPinLightBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__pinLightBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (pinLightBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&pinLightBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __45__CIFilter_Builtins__pinLightBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)saturationBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CISaturationBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__saturationBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (saturationBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&saturationBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __47__CIFilter_Builtins__saturationBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)screenBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIScreenBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__screenBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (screenBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&screenBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __43__CIFilter_Builtins__screenBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)softLightBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CISoftLightBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__softLightBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (softLightBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&softLightBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __46__CIFilter_Builtins__softLightBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)sourceAtopCompositingFilter
{
  v2 = [CIFilter filterWithName:@"CISourceAtopCompositing"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CIFilter_Builtins__sourceAtopCompositingFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (sourceAtopCompositingFilter_onceToken != -1)
  {
    dispatch_once(&sourceAtopCompositingFilter_onceToken, block);
  }

  return v2;
}

uint64_t __49__CIFilter_Builtins__sourceAtopCompositingFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)sourceInCompositingFilter
{
  v2 = [CIFilter filterWithName:@"CISourceInCompositing"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__sourceInCompositingFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (sourceInCompositingFilter_onceToken != -1)
  {
    dispatch_once(&sourceInCompositingFilter_onceToken, block);
  }

  return v2;
}

uint64_t __47__CIFilter_Builtins__sourceInCompositingFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)sourceOutCompositingFilter
{
  v2 = [CIFilter filterWithName:@"CISourceOutCompositing"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CIFilter_Builtins__sourceOutCompositingFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (sourceOutCompositingFilter_onceToken != -1)
  {
    dispatch_once(&sourceOutCompositingFilter_onceToken, block);
  }

  return v2;
}

uint64_t __48__CIFilter_Builtins__sourceOutCompositingFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)sourceOverCompositingFilter
{
  v2 = [CIFilter filterWithName:@"CISourceOverCompositing"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CIFilter_Builtins__sourceOverCompositingFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (sourceOverCompositingFilter_onceToken != -1)
  {
    dispatch_once(&sourceOverCompositingFilter_onceToken, block);
  }

  return v2;
}

uint64_t __49__CIFilter_Builtins__sourceOverCompositingFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)subtractBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CISubtractBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__subtractBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (subtractBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&subtractBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __45__CIFilter_Builtins__subtractBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)vividLightBlendModeFilter
{
  v2 = [CIFilter filterWithName:@"CIVividLightBlendMode"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__vividLightBlendModeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (vividLightBlendModeFilter_onceToken != -1)
  {
    dispatch_once(&vividLightBlendModeFilter_onceToken, block);
  }

  return v2;
}

uint64_t __47__CIFilter_Builtins__vividLightBlendModeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setBackgroundImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)colorAbsoluteDifferenceFilter
{
  v2 = [CIFilter filterWithName:@"CIColorAbsoluteDifference"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CIFilter_Builtins__colorAbsoluteDifferenceFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorAbsoluteDifferenceFilter_onceToken != -1)
  {
    dispatch_once(&colorAbsoluteDifferenceFilter_onceToken, block);
  }

  return v2;
}

uint64_t __51__CIFilter_Builtins__colorAbsoluteDifferenceFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_inputImage2) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_inputImage2];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_inputImage2, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setImage2_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setImage2_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_inputImage2, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setImage2_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)colorClampFilter
{
  v2 = [CIFilter filterWithName:@"CIColorClamp"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CIFilter_Builtins__colorClampFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorClampFilter_onceToken != -1)
  {
    dispatch_once(&colorClampFilter_onceToken, block);
  }

  return v2;
}

uint64_t __38__CIFilter_Builtins__colorClampFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v17 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_minComponents) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_minComponents];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_minComponents, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setMinComponents_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setMinComponents_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_minComponents, objGetter, "@@:");
    }

    v18 = [v7 instancesRespondToSelector:sel_setMinComponents_];
    v11 = objSetter;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [NSStringFromSelector(sel_maxComponents) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_maxComponents];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maxComponents, iiGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setMaxComponents_];
    v16 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_18:

      return class_addMethod(v13, sel_setMaxComponents_, v16, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maxComponents, objGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setMaxComponents_];
    v16 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return result;
}

+ (CIFilter)colorControlsFilter
{
  v2 = [CIFilter filterWithName:@"CIColorControls"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CIFilter_Builtins__colorControlsFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorControlsFilter_onceToken != -1)
  {
    dispatch_once(&colorControlsFilter_onceToken, block);
  }

  return v2;
}

objc_class *__41__CIFilter_Builtins__colorControlsFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_saturation, floatGetter, "f@:");
    class_addMethod(v7, sel_setSaturation_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_brightness, floatGetter, "f@:");
    class_addMethod(v9, sel_setBrightness_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_contrast, floatGetter, "f@:");

    return class_addMethod(v11, sel_setContrast_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)colorMatrixFilter
{
  v2 = [CIFilter filterWithName:@"CIColorMatrix"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__colorMatrixFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorMatrixFilter_onceToken != -1)
  {
    dispatch_once(&colorMatrixFilter_onceToken, block);
  }

  return v2;
}

uint64_t __39__CIFilter_Builtins__colorMatrixFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v35 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v35 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_RVector) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_RVector];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_RVector, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setRVector_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setRVector_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_RVector, objGetter, "@@:");
    }

    v36 = [v7 instancesRespondToSelector:sel_setRVector_];
    v11 = objSetter;
    if ((v36 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [NSStringFromSelector(sel_GVector) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_GVector];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_GVector, iiGetter, "@@:");
    }

    v16 = [v13 instancesRespondToSelector:sel_setGVector_];
    v17 = iiSetter;
    if ((v16 & 1) == 0)
    {
LABEL_18:
      class_addMethod(v13, sel_setGVector_, v17, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_GVector, objGetter, "@@:");
    }

    v37 = [v13 instancesRespondToSelector:sel_setGVector_];
    v17 = objSetter;
    if ((v37 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v18 = objc_opt_class();
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
  v20 = [NSStringFromSelector(sel_BVector) isEqualToString:@"inputImage"];
  v21 = [v19 instancesRespondToSelector:sel_BVector];
  if (v20)
  {
    if ((v21 & 1) == 0)
    {
      class_addMethod(v19, sel_BVector, iiGetter, "@@:");
    }

    v22 = [v19 instancesRespondToSelector:sel_setBVector_];
    v23 = iiSetter;
    if ((v22 & 1) == 0)
    {
LABEL_24:
      class_addMethod(v19, sel_setBVector_, v23, "v@:@");
    }
  }

  else
  {
    if ((v21 & 1) == 0)
    {
      class_addMethod(v19, sel_BVector, objGetter, "@@:");
    }

    v38 = [v19 instancesRespondToSelector:sel_setBVector_];
    v23 = objSetter;
    if ((v38 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  v24 = objc_opt_class();
  if (!v24)
  {
    goto LABEL_31;
  }

  v25 = v24;
  v26 = [NSStringFromSelector(sel_AVector) isEqualToString:@"inputImage"];
  v27 = [v25 instancesRespondToSelector:sel_AVector];
  if (v26)
  {
    if ((v27 & 1) == 0)
    {
      class_addMethod(v25, sel_AVector, iiGetter, "@@:");
    }

    v28 = [v25 instancesRespondToSelector:sel_setAVector_];
    v29 = iiSetter;
    if ((v28 & 1) == 0)
    {
LABEL_30:
      class_addMethod(v25, sel_setAVector_, v29, "v@:@");
    }
  }

  else
  {
    if ((v27 & 1) == 0)
    {
      class_addMethod(v25, sel_AVector, objGetter, "@@:");
    }

    v39 = [v25 instancesRespondToSelector:sel_setAVector_];
    v29 = objSetter;
    if ((v39 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_31:
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v31 = result;
  v32 = [NSStringFromSelector(sel_biasVector) isEqualToString:@"inputImage"];
  v33 = [v31 instancesRespondToSelector:sel_biasVector];
  if (v32)
  {
    if ((v33 & 1) == 0)
    {
      class_addMethod(v31, sel_biasVector, iiGetter, "@@:");
    }

    result = [v31 instancesRespondToSelector:sel_setBiasVector_];
    v34 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_36:

      return class_addMethod(v31, sel_setBiasVector_, v34, "v@:@");
    }
  }

  else
  {
    if ((v33 & 1) == 0)
    {
      class_addMethod(v31, sel_biasVector, objGetter, "@@:");
    }

    result = [v31 instancesRespondToSelector:sel_setBiasVector_];
    v34 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  return result;
}

+ (CIFilter)colorPolynomialFilter
{
  v2 = [CIFilter filterWithName:@"CIColorPolynomial"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__colorPolynomialFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorPolynomialFilter_onceToken != -1)
  {
    dispatch_once(&colorPolynomialFilter_onceToken, block);
  }

  return v2;
}

uint64_t __43__CIFilter_Builtins__colorPolynomialFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v29 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v29 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_redCoefficients) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_redCoefficients];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_redCoefficients, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setRedCoefficients_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setRedCoefficients_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_redCoefficients, objGetter, "@@:");
    }

    v30 = [v7 instancesRespondToSelector:sel_setRedCoefficients_];
    v11 = objSetter;
    if ((v30 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [NSStringFromSelector(sel_greenCoefficients) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_greenCoefficients];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_greenCoefficients, iiGetter, "@@:");
    }

    v16 = [v13 instancesRespondToSelector:sel_setGreenCoefficients_];
    v17 = iiSetter;
    if ((v16 & 1) == 0)
    {
LABEL_18:
      class_addMethod(v13, sel_setGreenCoefficients_, v17, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_greenCoefficients, objGetter, "@@:");
    }

    v31 = [v13 instancesRespondToSelector:sel_setGreenCoefficients_];
    v17 = objSetter;
    if ((v31 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v18 = objc_opt_class();
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
  v20 = [NSStringFromSelector(sel_blueCoefficients) isEqualToString:@"inputImage"];
  v21 = [v19 instancesRespondToSelector:sel_blueCoefficients];
  if (v20)
  {
    if ((v21 & 1) == 0)
    {
      class_addMethod(v19, sel_blueCoefficients, iiGetter, "@@:");
    }

    v22 = [v19 instancesRespondToSelector:sel_setBlueCoefficients_];
    v23 = iiSetter;
    if ((v22 & 1) == 0)
    {
LABEL_24:
      class_addMethod(v19, sel_setBlueCoefficients_, v23, "v@:@");
    }
  }

  else
  {
    if ((v21 & 1) == 0)
    {
      class_addMethod(v19, sel_blueCoefficients, objGetter, "@@:");
    }

    v32 = [v19 instancesRespondToSelector:sel_setBlueCoefficients_];
    v23 = objSetter;
    if ((v32 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v25 = result;
  v26 = [NSStringFromSelector(sel_alphaCoefficients) isEqualToString:@"inputImage"];
  v27 = [v25 instancesRespondToSelector:sel_alphaCoefficients];
  if (v26)
  {
    if ((v27 & 1) == 0)
    {
      class_addMethod(v25, sel_alphaCoefficients, iiGetter, "@@:");
    }

    result = [v25 instancesRespondToSelector:sel_setAlphaCoefficients_];
    v28 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_30:

      return class_addMethod(v25, sel_setAlphaCoefficients_, v28, "v@:@");
    }
  }

  else
  {
    if ((v27 & 1) == 0)
    {
      class_addMethod(v25, sel_alphaCoefficients, objGetter, "@@:");
    }

    result = [v25 instancesRespondToSelector:sel_setAlphaCoefficients_];
    v28 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  return result;
}

+ (CIFilter)colorThresholdFilter
{
  v2 = [CIFilter filterWithName:@"CIColorThreshold"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__colorThresholdFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorThresholdFilter_onceToken != -1)
  {
    dispatch_once(&colorThresholdFilter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__colorThresholdFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_threshold, floatGetter, "f@:");

    return class_addMethod(v7, sel_setThreshold_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)exposureAdjustFilter
{
  v2 = [CIFilter filterWithName:@"CIExposureAdjust"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__exposureAdjustFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (exposureAdjustFilter_onceToken != -1)
  {
    dispatch_once(&exposureAdjustFilter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__exposureAdjustFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_EV, floatGetter, "f@:");

    return class_addMethod(v7, sel_setEV_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)gammaAdjustFilter
{
  v2 = [CIFilter filterWithName:@"CIGammaAdjust"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__gammaAdjustFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (gammaAdjustFilter_onceToken != -1)
  {
    dispatch_once(&gammaAdjustFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__gammaAdjustFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_power, floatGetter, "f@:");

    return class_addMethod(v7, sel_setPower_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)hueAdjustFilter
{
  v2 = [CIFilter filterWithName:@"CIHueAdjust"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CIFilter_Builtins__hueAdjustFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (hueAdjustFilter_onceToken != -1)
  {
    dispatch_once(&hueAdjustFilter_onceToken, block);
  }

  return v2;
}

objc_class *__37__CIFilter_Builtins__hueAdjustFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_angle, floatGetter, "f@:");

    return class_addMethod(v7, sel_setAngle_, floatSetter, "v@:f");
  }

  return result;
}

+ (id)systemToneMapFilter
{
  v2 = [CIFilter filterWithName:@"CISystemToneMap"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CIFilter_Builtins__systemToneMapFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (systemToneMapFilter_onceToken != -1)
  {
    dispatch_once(&systemToneMapFilter_onceToken, block);
  }

  return v2;
}

uint64_t __41__CIFilter_Builtins__systemToneMapFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v13 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v13 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_displayHeadroom, floatGetter, "f@:");
    class_addMethod(v7, sel_setDisplayHeadroom_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    v10 = [NSStringFromSelector(sel_preferredDynamicRange) isEqualToString:@"inputImage"];
    v11 = [v9 instancesRespondToSelector:sel_preferredDynamicRange];
    if (v10)
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_preferredDynamicRange, iiGetter, "@@:");
      }

      result = [v9 instancesRespondToSelector:sel_setPreferredDynamicRange_];
      v12 = iiSetter;
      if ((result & 1) == 0)
      {
LABEL_14:

        return class_addMethod(v9, sel_setPreferredDynamicRange_, v12, "v@:@");
      }
    }

    else
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_preferredDynamicRange, objGetter, "@@:");
      }

      result = [v9 instancesRespondToSelector:sel_setPreferredDynamicRange_];
      v12 = objSetter;
      if ((result & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

+ (CIFilter)temperatureAndTintFilter
{
  v2 = [CIFilter filterWithName:@"CITemperatureAndTint"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__temperatureAndTintFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (temperatureAndTintFilter_onceToken != -1)
  {
    dispatch_once(&temperatureAndTintFilter_onceToken, block);
  }

  return v2;
}

uint64_t __46__CIFilter_Builtins__temperatureAndTintFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v17 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_neutral) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_neutral];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_neutral, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setNeutral_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setNeutral_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_neutral, objGetter, "@@:");
    }

    v18 = [v7 instancesRespondToSelector:sel_setNeutral_];
    v11 = objSetter;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [NSStringFromSelector(sel_targetNeutral) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_targetNeutral];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_targetNeutral, iiGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setTargetNeutral_];
    v16 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_18:

      return class_addMethod(v13, sel_setTargetNeutral_, v16, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_targetNeutral, objGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setTargetNeutral_];
    v16 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return result;
}

+ (CIFilter)toneCurveFilter
{
  v2 = [CIFilter filterWithName:@"CIToneCurve"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CIFilter_Builtins__toneCurveFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (toneCurveFilter_onceToken != -1)
  {
    dispatch_once(&toneCurveFilter_onceToken, block);
  }

  return v2;
}

objc_class *__37__CIFilter_Builtins__toneCurveFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v18 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v18 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_point0, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setPoint0_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_point1, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setPoint1_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_point2, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v11, sel_setPoint2_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_point3, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v13, sel_setPoint3_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_point4, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v15, sel_setPoint4_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v17 = result;
    class_addMethod(result, sel_extrapolate, BOOLGetter, "B@:");

    return class_addMethod(v17, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (id)toneMapHeadroomFilter
{
  v2 = [CIFilter filterWithName:@"CIToneMapHeadroom"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__toneMapHeadroomFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (toneMapHeadroomFilter_onceToken != -1)
  {
    dispatch_once(&toneMapHeadroomFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__toneMapHeadroomFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_sourceHeadroom, floatGetter, "f@:");
    class_addMethod(v7, sel_setSourceHeadroom_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_targetHeadroom, floatGetter, "f@:");

    return class_addMethod(v9, sel_setTargetHeadroom_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)vibranceFilter
{
  v2 = [CIFilter filterWithName:@"CIVibrance"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CIFilter_Builtins__vibranceFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (vibranceFilter_onceToken != -1)
  {
    dispatch_once(&vibranceFilter_onceToken, block);
  }

  return v2;
}

objc_class *__36__CIFilter_Builtins__vibranceFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_amount, floatGetter, "f@:");

    return class_addMethod(v7, sel_setAmount_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)whitePointAdjustFilter
{
  v2 = [CIFilter filterWithName:@"CIWhitePointAdjust"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__whitePointAdjustFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (whitePointAdjustFilter_onceToken != -1)
  {
    dispatch_once(&whitePointAdjustFilter_onceToken, block);
  }

  return v2;
}

uint64_t __44__CIFilter_Builtins__whitePointAdjustFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_color];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_color, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setColor_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setColor_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_color, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setColor_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)colorCrossPolynomialFilter
{
  v2 = [CIFilter filterWithName:@"CIColorCrossPolynomial"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CIFilter_Builtins__colorCrossPolynomialFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorCrossPolynomialFilter_onceToken != -1)
  {
    dispatch_once(&colorCrossPolynomialFilter_onceToken, block);
  }

  return v2;
}

uint64_t __48__CIFilter_Builtins__colorCrossPolynomialFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v23 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v23 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_redCoefficients) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_redCoefficients];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_redCoefficients, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setRedCoefficients_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setRedCoefficients_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_redCoefficients, objGetter, "@@:");
    }

    v24 = [v7 instancesRespondToSelector:sel_setRedCoefficients_];
    v11 = objSetter;
    if ((v24 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [NSStringFromSelector(sel_greenCoefficients) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_greenCoefficients];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_greenCoefficients, iiGetter, "@@:");
    }

    v16 = [v13 instancesRespondToSelector:sel_setGreenCoefficients_];
    v17 = iiSetter;
    if ((v16 & 1) == 0)
    {
LABEL_18:
      class_addMethod(v13, sel_setGreenCoefficients_, v17, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_greenCoefficients, objGetter, "@@:");
    }

    v25 = [v13 instancesRespondToSelector:sel_setGreenCoefficients_];
    v17 = objSetter;
    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v19 = result;
  v20 = [NSStringFromSelector(sel_blueCoefficients) isEqualToString:@"inputImage"];
  v21 = [v19 instancesRespondToSelector:sel_blueCoefficients];
  if (v20)
  {
    if ((v21 & 1) == 0)
    {
      class_addMethod(v19, sel_blueCoefficients, iiGetter, "@@:");
    }

    result = [v19 instancesRespondToSelector:sel_setBlueCoefficients_];
    v22 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_24:

      return class_addMethod(v19, sel_setBlueCoefficients_, v22, "v@:@");
    }
  }

  else
  {
    if ((v21 & 1) == 0)
    {
      class_addMethod(v19, sel_blueCoefficients, objGetter, "@@:");
    }

    result = [v19 instancesRespondToSelector:sel_setBlueCoefficients_];
    v22 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  return result;
}

+ (CIFilter)colorCubeFilter
{
  v2 = [CIFilter filterWithName:@"CIColorCube"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CIFilter_Builtins__colorCubeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorCubeFilter_onceToken != -1)
  {
    dispatch_once(&colorCubeFilter_onceToken, block);
  }

  return v2;
}

objc_class *__37__CIFilter_Builtins__colorCubeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_cubeDimension, floatGetter, "f@:");
    class_addMethod(v7, sel_setCubeDimension_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    v10 = [NSStringFromSelector(sel_cubeData) isEqualToString:@"inputImage"];
    v11 = [v9 instancesRespondToSelector:sel_cubeData];
    if (v10)
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_cubeData, iiGetter, "@@:");
      }

      v12 = [v9 instancesRespondToSelector:sel_setCubeData_];
      v13 = iiSetter;
      if ((v12 & 1) == 0)
      {
LABEL_14:
        class_addMethod(v9, sel_setCubeData_, v13, "v@:@");
      }
    }

    else
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_cubeData, objGetter, "@@:");
      }

      v17 = [v9 instancesRespondToSelector:sel_setCubeData_];
      v13 = objSetter;
      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_extrapolate, BOOLGetter, "B@:");

    return class_addMethod(v15, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)colorCubesMixedWithMaskFilter
{
  v2 = [CIFilter filterWithName:@"CIColorCubesMixedWithMask"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CIFilter_Builtins__colorCubesMixedWithMaskFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorCubesMixedWithMaskFilter_onceToken != -1)
  {
    dispatch_once(&colorCubesMixedWithMaskFilter_onceToken, block);
  }

  return v2;
}

objc_class *__51__CIFilter_Builtins__colorCubesMixedWithMaskFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v34 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v34 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_maskImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_maskImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_maskImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setMaskImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setMaskImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_maskImage, objGetter, "@@:");
    }

    v35 = [v7 instancesRespondToSelector:sel_setMaskImage_];
    v11 = objSetter;
    if ((v35 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_cubeDimension, floatGetter, "f@:");
    class_addMethod(v13, sel_setCubeDimension_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    v16 = [NSStringFromSelector(sel_cube0Data) isEqualToString:@"inputImage"];
    v17 = [v15 instancesRespondToSelector:sel_cube0Data];
    if (v16)
    {
      if ((v17 & 1) == 0)
      {
        class_addMethod(v15, sel_cube0Data, iiGetter, "@@:");
      }

      v18 = [v15 instancesRespondToSelector:sel_setCube0Data_];
      v19 = iiSetter;
      if ((v18 & 1) == 0)
      {
LABEL_20:
        class_addMethod(v15, sel_setCube0Data_, v19, "v@:@");
      }
    }

    else
    {
      if ((v17 & 1) == 0)
      {
        class_addMethod(v15, sel_cube0Data, objGetter, "@@:");
      }

      v36 = [v15 instancesRespondToSelector:sel_setCube0Data_];
      v19 = objSetter;
      if ((v36 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  v20 = objc_opt_class();
  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = v20;
  v22 = [NSStringFromSelector(sel_cube1Data) isEqualToString:@"inputImage"];
  v23 = [v21 instancesRespondToSelector:sel_cube1Data];
  if (v22)
  {
    if ((v23 & 1) == 0)
    {
      class_addMethod(v21, sel_cube1Data, iiGetter, "@@:");
    }

    v24 = [v21 instancesRespondToSelector:sel_setCube1Data_];
    v25 = iiSetter;
    if ((v24 & 1) == 0)
    {
LABEL_26:
      class_addMethod(v21, sel_setCube1Data_, v25, "v@:@");
    }
  }

  else
  {
    if ((v23 & 1) == 0)
    {
      class_addMethod(v21, sel_cube1Data, objGetter, "@@:");
    }

    v37 = [v21 instancesRespondToSelector:sel_setCube1Data_];
    v25 = objSetter;
    if ((v37 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v26 = objc_opt_class();
  if (!v26)
  {
    goto LABEL_33;
  }

  v27 = v26;
  v28 = [NSStringFromSelector(sel_colorSpace) isEqualToString:@"inputImage"];
  v29 = [v27 instancesRespondToSelector:sel_colorSpace];
  if (v28)
  {
    if ((v29 & 1) == 0)
    {
      class_addMethod(v27, sel_colorSpace, iiGetter, "@@:");
    }

    v30 = [v27 instancesRespondToSelector:sel_setColorSpace_];
    v31 = iiSetter;
    if ((v30 & 1) == 0)
    {
LABEL_32:
      class_addMethod(v27, sel_setColorSpace_, v31, "v@:@");
    }
  }

  else
  {
    if ((v29 & 1) == 0)
    {
      class_addMethod(v27, sel_colorSpace, objGetter, "@@:");
    }

    v38 = [v27 instancesRespondToSelector:sel_setColorSpace_];
    v31 = objSetter;
    if ((v38 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_33:
  result = objc_opt_class();
  if (result)
  {
    v33 = result;
    class_addMethod(result, sel_extrapolate, BOOLGetter, "B@:");

    return class_addMethod(v33, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)colorCubeWithColorSpaceFilter
{
  v2 = [CIFilter filterWithName:@"CIColorCubeWithColorSpace"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CIFilter_Builtins__colorCubeWithColorSpaceFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorCubeWithColorSpaceFilter_onceToken != -1)
  {
    dispatch_once(&colorCubeWithColorSpaceFilter_onceToken, block);
  }

  return v2;
}

uint64_t __51__CIFilter_Builtins__colorCubeWithColorSpaceFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v21 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_cubeDimension, floatGetter, "f@:");
    class_addMethod(v7, sel_setCubeDimension_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    v10 = [NSStringFromSelector(sel_cubeData) isEqualToString:@"inputImage"];
    v11 = [v9 instancesRespondToSelector:sel_cubeData];
    if (v10)
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_cubeData, iiGetter, "@@:");
      }

      v12 = [v9 instancesRespondToSelector:sel_setCubeData_];
      v13 = iiSetter;
      if ((v12 & 1) == 0)
      {
LABEL_14:
        class_addMethod(v9, sel_setCubeData_, v13, "v@:@");
      }
    }

    else
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_cubeData, objGetter, "@@:");
      }

      v22 = [v9 instancesRespondToSelector:sel_setCubeData_];
      v13 = objSetter;
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_extrapolate, BOOLGetter, "B@:");
    class_addMethod(v15, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  result = objc_opt_class();
  if (result)
  {
    v17 = result;
    v18 = [NSStringFromSelector(sel_colorSpace) isEqualToString:@"inputImage"];
    v19 = [v17 instancesRespondToSelector:sel_colorSpace];
    if (v18)
    {
      if ((v19 & 1) == 0)
      {
        class_addMethod(v17, sel_colorSpace, iiGetter, "@@:");
      }

      result = [v17 instancesRespondToSelector:sel_setColorSpace_];
      v20 = iiSetter;
      if ((result & 1) == 0)
      {
LABEL_22:

        return class_addMethod(v17, sel_setColorSpace_, v20, "v@:@");
      }
    }

    else
    {
      if ((v19 & 1) == 0)
      {
        class_addMethod(v17, sel_colorSpace, objGetter, "@@:");
      }

      result = [v17 instancesRespondToSelector:sel_setColorSpace_];
      v20 = objSetter;
      if ((result & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  return result;
}

+ (CIFilter)colorCurvesFilter
{
  v2 = [CIFilter filterWithName:@"CIColorCurves"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__colorCurvesFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorCurvesFilter_onceToken != -1)
  {
    dispatch_once(&colorCurvesFilter_onceToken, block);
  }

  return v2;
}

uint64_t __39__CIFilter_Builtins__colorCurvesFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v23 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v23 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_curvesData) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_curvesData];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_curvesData, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setCurvesData_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setCurvesData_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_curvesData, objGetter, "@@:");
    }

    v24 = [v7 instancesRespondToSelector:sel_setCurvesData_];
    v11 = objSetter;
    if ((v24 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [NSStringFromSelector(sel_curvesDomain) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_curvesDomain];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_curvesDomain, iiGetter, "@@:");
    }

    v16 = [v13 instancesRespondToSelector:sel_setCurvesDomain_];
    v17 = iiSetter;
    if ((v16 & 1) == 0)
    {
LABEL_18:
      class_addMethod(v13, sel_setCurvesDomain_, v17, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_curvesDomain, objGetter, "@@:");
    }

    v25 = [v13 instancesRespondToSelector:sel_setCurvesDomain_];
    v17 = objSetter;
    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v19 = result;
  v20 = [NSStringFromSelector(sel_colorSpace) isEqualToString:@"inputImage"];
  v21 = [v19 instancesRespondToSelector:sel_colorSpace];
  if (v20)
  {
    if ((v21 & 1) == 0)
    {
      class_addMethod(v19, sel_colorSpace, iiGetter, "@@:");
    }

    result = [v19 instancesRespondToSelector:sel_setColorSpace_];
    v22 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_24:

      return class_addMethod(v19, sel_setColorSpace_, v22, "v@:@");
    }
  }

  else
  {
    if ((v21 & 1) == 0)
    {
      class_addMethod(v19, sel_colorSpace, objGetter, "@@:");
    }

    result = [v19 instancesRespondToSelector:sel_setColorSpace_];
    v22 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  return result;
}

+ (CIFilter)colorMapFilter
{
  v2 = [CIFilter filterWithName:@"CIColorMap"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CIFilter_Builtins__colorMapFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorMapFilter_onceToken != -1)
  {
    dispatch_once(&colorMapFilter_onceToken, block);
  }

  return v2;
}

uint64_t __36__CIFilter_Builtins__colorMapFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_gradientImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_gradientImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_gradientImage, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setGradientImage_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setGradientImage_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_gradientImage, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setGradientImage_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)colorMonochromeFilter
{
  v2 = [CIFilter filterWithName:@"CIColorMonochrome"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__colorMonochromeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorMonochromeFilter_onceToken != -1)
  {
    dispatch_once(&colorMonochromeFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__colorMonochromeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_color];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_color, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setColor_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setColor_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_color, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setColor_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_intensity, floatGetter, "f@:");

    return class_addMethod(v13, sel_setIntensity_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)colorPosterizeFilter
{
  v2 = [CIFilter filterWithName:@"CIColorPosterize"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__colorPosterizeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (colorPosterizeFilter_onceToken != -1)
  {
    dispatch_once(&colorPosterizeFilter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__colorPosterizeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_levels, floatGetter, "f@:");

    return class_addMethod(v7, sel_setLevels_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)convertLabToRGBFilter
{
  v2 = [CIFilter filterWithName:@"CIConvertLabToRGB"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__convertLabToRGBFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convertLabToRGBFilter_onceToken != -1)
  {
    dispatch_once(&convertLabToRGBFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__convertLabToRGBFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_normalize, BOOLGetter, "B@:");

    return class_addMethod(v7, sel_setNormalize_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)convertRGBtoLabFilter
{
  v2 = [CIFilter filterWithName:@"CIConvertRGBtoLab"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__convertRGBtoLabFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convertRGBtoLabFilter_onceToken != -1)
  {
    dispatch_once(&convertRGBtoLabFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__convertRGBtoLabFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_normalize, BOOLGetter, "B@:");

    return class_addMethod(v7, sel_setNormalize_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)ditherFilter
{
  v2 = [CIFilter filterWithName:@"CIDither"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CIFilter_Builtins__ditherFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (ditherFilter_onceToken != -1)
  {
    dispatch_once(&ditherFilter_onceToken, block);
  }

  return v2;
}

objc_class *__34__CIFilter_Builtins__ditherFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_intensity, floatGetter, "f@:");

    return class_addMethod(v7, sel_setIntensity_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)documentEnhancerFilter
{
  v2 = [CIFilter filterWithName:@"CIDocumentEnhancer"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__documentEnhancerFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (documentEnhancerFilter_onceToken != -1)
  {
    dispatch_once(&documentEnhancerFilter_onceToken, block);
  }

  return v2;
}

objc_class *__44__CIFilter_Builtins__documentEnhancerFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_amount, floatGetter, "f@:");

    return class_addMethod(v7, sel_setAmount_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)falseColorFilter
{
  v2 = [CIFilter filterWithName:@"CIFalseColor"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CIFilter_Builtins__falseColorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (falseColorFilter_onceToken != -1)
  {
    dispatch_once(&falseColorFilter_onceToken, block);
  }

  return v2;
}

uint64_t __38__CIFilter_Builtins__falseColorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v17 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_color0) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_color0];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_color0, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setColor0_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setColor0_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_color0, objGetter, "@@:");
    }

    v18 = [v7 instancesRespondToSelector:sel_setColor0_];
    v11 = objSetter;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [NSStringFromSelector(sel_color1) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_color1];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_color1, iiGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setColor1_];
    v16 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_18:

      return class_addMethod(v13, sel_setColor1_, v16, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_color1, objGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setColor1_];
    v16 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return result;
}

+ (CIFilter)LabDeltaE
{
  v2 = [CIFilter filterWithName:@"CILabDeltaE"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CIFilter_Builtins__LabDeltaE__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (LabDeltaE_onceToken != -1)
  {
    dispatch_once(&LabDeltaE_onceToken, block);
  }

  return v2;
}

uint64_t __31__CIFilter_Builtins__LabDeltaE__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_image2) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_image2];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_image2, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setImage2_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setImage2_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_image2, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setImage2_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (CIFilter)paletteCentroidFilter
{
  v2 = [CIFilter filterWithName:@"CIPaletteCentroid"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__paletteCentroidFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (paletteCentroidFilter_onceToken != -1)
  {
    dispatch_once(&paletteCentroidFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__paletteCentroidFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_paletteImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_paletteImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_paletteImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setPaletteImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setPaletteImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_paletteImage, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setPaletteImage_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_perceptual, BOOLGetter, "B@:");

    return class_addMethod(v13, sel_setPerceptual_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)palettizeFilter
{
  v2 = [CIFilter filterWithName:@"CIPalettize"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CIFilter_Builtins__palettizeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (palettizeFilter_onceToken != -1)
  {
    dispatch_once(&palettizeFilter_onceToken, block);
  }

  return v2;
}

objc_class *__37__CIFilter_Builtins__palettizeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_paletteImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_paletteImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_paletteImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setPaletteImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setPaletteImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_paletteImage, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setPaletteImage_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_perceptual, BOOLGetter, "B@:");

    return class_addMethod(v13, sel_setPerceptual_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)photoEffectChromeFilter
{
  v2 = [CIFilter filterWithName:@"CIPhotoEffectChrome"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__photoEffectChromeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (photoEffectChromeFilter_onceToken != -1)
  {
    dispatch_once(&photoEffectChromeFilter_onceToken, block);
  }

  return v2;
}

objc_class *__45__CIFilter_Builtins__photoEffectChromeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extrapolate, BOOLGetter, "B@:");

    return class_addMethod(v7, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)photoEffectFadeFilter
{
  v2 = [CIFilter filterWithName:@"CIPhotoEffectFade"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__photoEffectFadeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (photoEffectFadeFilter_onceToken != -1)
  {
    dispatch_once(&photoEffectFadeFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__photoEffectFadeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extrapolate, BOOLGetter, "B@:");

    return class_addMethod(v7, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)photoEffectInstantFilter
{
  v2 = [CIFilter filterWithName:@"CIPhotoEffectInstant"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__photoEffectInstantFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (photoEffectInstantFilter_onceToken != -1)
  {
    dispatch_once(&photoEffectInstantFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__photoEffectInstantFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extrapolate, BOOLGetter, "B@:");

    return class_addMethod(v7, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)photoEffectMonoFilter
{
  v2 = [CIFilter filterWithName:@"CIPhotoEffectMono"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__photoEffectMonoFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (photoEffectMonoFilter_onceToken != -1)
  {
    dispatch_once(&photoEffectMonoFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__photoEffectMonoFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extrapolate, BOOLGetter, "B@:");

    return class_addMethod(v7, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)photoEffectNoirFilter
{
  v2 = [CIFilter filterWithName:@"CIPhotoEffectNoir"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__photoEffectNoirFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (photoEffectNoirFilter_onceToken != -1)
  {
    dispatch_once(&photoEffectNoirFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__photoEffectNoirFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extrapolate, BOOLGetter, "B@:");

    return class_addMethod(v7, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)photoEffectProcessFilter
{
  v2 = [CIFilter filterWithName:@"CIPhotoEffectProcess"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__photoEffectProcessFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (photoEffectProcessFilter_onceToken != -1)
  {
    dispatch_once(&photoEffectProcessFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__photoEffectProcessFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extrapolate, BOOLGetter, "B@:");

    return class_addMethod(v7, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)photoEffectTonalFilter
{
  v2 = [CIFilter filterWithName:@"CIPhotoEffectTonal"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__photoEffectTonalFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (photoEffectTonalFilter_onceToken != -1)
  {
    dispatch_once(&photoEffectTonalFilter_onceToken, block);
  }

  return v2;
}

objc_class *__44__CIFilter_Builtins__photoEffectTonalFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extrapolate, BOOLGetter, "B@:");

    return class_addMethod(v7, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)photoEffectTransferFilter
{
  v2 = [CIFilter filterWithName:@"CIPhotoEffectTransfer"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__photoEffectTransferFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (photoEffectTransferFilter_onceToken != -1)
  {
    dispatch_once(&photoEffectTransferFilter_onceToken, block);
  }

  return v2;
}

objc_class *__47__CIFilter_Builtins__photoEffectTransferFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extrapolate, BOOLGetter, "B@:");

    return class_addMethod(v7, sel_setExtrapolate_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)sepiaToneFilter
{
  v2 = [CIFilter filterWithName:@"CISepiaTone"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CIFilter_Builtins__sepiaToneFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (sepiaToneFilter_onceToken != -1)
  {
    dispatch_once(&sepiaToneFilter_onceToken, block);
  }

  return v2;
}

objc_class *__37__CIFilter_Builtins__sepiaToneFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_intensity, floatGetter, "f@:");

    return class_addMethod(v7, sel_setIntensity_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)vignetteFilter
{
  v2 = [CIFilter filterWithName:@"CIVignette"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CIFilter_Builtins__vignetteFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (vignetteFilter_onceToken != -1)
  {
    dispatch_once(&vignetteFilter_onceToken, block);
  }

  return v2;
}

objc_class *__36__CIFilter_Builtins__vignetteFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_intensity, floatGetter, "f@:");
    class_addMethod(v7, sel_setIntensity_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)vignetteEffectFilter
{
  v2 = [CIFilter filterWithName:@"CIVignetteEffect"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__vignetteEffectFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (vignetteEffectFilter_onceToken != -1)
  {
    dispatch_once(&vignetteEffectFilter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__vignetteEffectFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_radius, floatGetter, "f@:");
    class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_intensity, floatGetter, "f@:");
    class_addMethod(v11, sel_setIntensity_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_falloff, floatGetter, "f@:");

    return class_addMethod(v13, sel_setFalloff_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)bumpDistortionFilter
{
  v2 = [CIFilter filterWithName:@"CIBumpDistortion"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__bumpDistortionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (bumpDistortionFilter_onceToken != -1)
  {
    dispatch_once(&bumpDistortionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__bumpDistortionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_radius, floatGetter, "f@:");
    class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_scale, floatGetter, "f@:");

    return class_addMethod(v11, sel_setScale_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)bumpDistortionLinearFilter
{
  v2 = [CIFilter filterWithName:@"CIBumpDistortionLinear"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CIFilter_Builtins__bumpDistortionLinearFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (bumpDistortionLinearFilter_onceToken != -1)
  {
    dispatch_once(&bumpDistortionLinearFilter_onceToken, block);
  }

  return v2;
}

objc_class *__48__CIFilter_Builtins__bumpDistortionLinearFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_radius, floatGetter, "f@:");
    class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_angle, floatGetter, "f@:");
    class_addMethod(v11, sel_setAngle_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_scale, floatGetter, "f@:");

    return class_addMethod(v13, sel_setScale_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)circleSplashDistortionFilter
{
  v2 = [CIFilter filterWithName:@"CICircleSplashDistortion"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CIFilter_Builtins__circleSplashDistortionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (circleSplashDistortionFilter_onceToken != -1)
  {
    dispatch_once(&circleSplashDistortionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__50__CIFilter_Builtins__circleSplashDistortionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)circularWrapFilter
{
  v2 = [CIFilter filterWithName:@"CICircularWrap"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CIFilter_Builtins__circularWrapFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (circularWrapFilter_onceToken != -1)
  {
    dispatch_once(&circularWrapFilter_onceToken, block);
  }

  return v2;
}

objc_class *__40__CIFilter_Builtins__circularWrapFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_radius, floatGetter, "f@:");
    class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_angle, floatGetter, "f@:");

    return class_addMethod(v11, sel_setAngle_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)displacementDistortionFilter
{
  v2 = [CIFilter filterWithName:@"CIDisplacementDistortion"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CIFilter_Builtins__displacementDistortionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (displacementDistortionFilter_onceToken != -1)
  {
    dispatch_once(&displacementDistortionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__50__CIFilter_Builtins__displacementDistortionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_displacementImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_displacementImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_displacementImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setDisplacementImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setDisplacementImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_displacementImage, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setDisplacementImage_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_scale, floatGetter, "f@:");

    return class_addMethod(v13, sel_setScale_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)drosteFilter
{
  v2 = [CIFilter filterWithName:@"CIDroste"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CIFilter_Builtins__drosteFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (drosteFilter_onceToken != -1)
  {
    dispatch_once(&drosteFilter_onceToken, block);
  }

  return v2;
}

objc_class *__34__CIFilter_Builtins__drosteFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v18 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v18 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_insetPoint0, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setInsetPoint0_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_insetPoint1, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setInsetPoint1_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_strands, floatGetter, "f@:");
    class_addMethod(v11, sel_setStrands_, floatSetter, "v@:f");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_periodicity, floatGetter, "f@:");
    class_addMethod(v13, sel_setPeriodicity_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_rotation, floatGetter, "f@:");
    class_addMethod(v15, sel_setRotation_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v17 = result;
    class_addMethod(result, sel_zoom, floatGetter, "f@:");

    return class_addMethod(v17, sel_setZoom_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)glassDistortionFilter
{
  v2 = [CIFilter filterWithName:@"CIGlassDistortion"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__glassDistortionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (glassDistortionFilter_onceToken != -1)
  {
    dispatch_once(&glassDistortionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__glassDistortionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_textureImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_textureImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_textureImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setTextureImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setTextureImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_textureImage, objGetter, "@@:");
    }

    v17 = [v7 instancesRespondToSelector:sel_setTextureImage_];
    v11 = objSetter;
    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v13, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_scale, floatGetter, "f@:");

    return class_addMethod(v15, sel_setScale_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)glassLozengeFilter
{
  v2 = [CIFilter filterWithName:@"CIGlassLozenge"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CIFilter_Builtins__glassLozengeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (glassLozengeFilter_onceToken != -1)
  {
    dispatch_once(&glassLozengeFilter_onceToken, block);
  }

  return v2;
}

objc_class *__40__CIFilter_Builtins__glassLozengeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_point0, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setPoint0_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_point1, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setPoint1_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_radius, floatGetter, "f@:");
    class_addMethod(v11, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_refraction, floatGetter, "f@:");

    return class_addMethod(v13, sel_setRefraction_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)holeDistortionFilter
{
  v2 = [CIFilter filterWithName:@"CIHoleDistortion"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__holeDistortionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (holeDistortionFilter_onceToken != -1)
  {
    dispatch_once(&holeDistortionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__holeDistortionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)lightTunnelFilter
{
  v2 = [CIFilter filterWithName:@"CILightTunnel"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__lightTunnelFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (lightTunnelFilter_onceToken != -1)
  {
    dispatch_once(&lightTunnelFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__lightTunnelFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_rotation, floatGetter, "f@:");
    class_addMethod(v9, sel_setRotation_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v11, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)ninePartStretchedFilter
{
  v2 = [CIFilter filterWithName:@"CINinePartStretched"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__ninePartStretchedFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (ninePartStretchedFilter_onceToken != -1)
  {
    dispatch_once(&ninePartStretchedFilter_onceToken, block);
  }

  return v2;
}

objc_class *__45__CIFilter_Builtins__ninePartStretchedFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_breakpoint0, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setBreakpoint0_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_breakpoint1, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setBreakpoint1_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_growAmount, pointGetter, "{CGPoint=dd}@:");

    return class_addMethod(v11, sel_setGrowAmount_, pointSetter, "v@:{CGPoint=dd}}");
  }

  return result;
}

+ (CIFilter)ninePartTiledFilter
{
  v2 = [CIFilter filterWithName:@"CINinePartTiled"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CIFilter_Builtins__ninePartTiledFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (ninePartTiledFilter_onceToken != -1)
  {
    dispatch_once(&ninePartTiledFilter_onceToken, block);
  }

  return v2;
}

objc_class *__41__CIFilter_Builtins__ninePartTiledFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_breakpoint0, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setBreakpoint0_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_breakpoint1, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setBreakpoint1_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_growAmount, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v11, sel_setGrowAmount_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_flipYTiles, BOOLGetter, "B@:");

    return class_addMethod(v13, sel_setFlipYTiles_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)pinchDistortionFilter
{
  v2 = [CIFilter filterWithName:@"CIPinchDistortion"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__pinchDistortionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (pinchDistortionFilter_onceToken != -1)
  {
    dispatch_once(&pinchDistortionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__pinchDistortionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_radius, floatGetter, "f@:");
    class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_scale, floatGetter, "f@:");

    return class_addMethod(v11, sel_setScale_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)stretchCropFilter
{
  v2 = [CIFilter filterWithName:@"CIStretchCrop"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__stretchCropFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (stretchCropFilter_onceToken != -1)
  {
    dispatch_once(&stretchCropFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__stretchCropFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_size, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setSize_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_cropAmount, floatGetter, "f@:");
    class_addMethod(v9, sel_setCropAmount_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_centerStretchAmount, floatGetter, "f@:");

    return class_addMethod(v11, sel_setCenterStretchAmount_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)torusLensDistortionFilter
{
  v2 = [CIFilter filterWithName:@"CITorusLensDistortion"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__torusLensDistortionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (torusLensDistortionFilter_onceToken != -1)
  {
    dispatch_once(&torusLensDistortionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__47__CIFilter_Builtins__torusLensDistortionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_radius, floatGetter, "f@:");
    class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_width, floatGetter, "f@:");
    class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_refraction, floatGetter, "f@:");

    return class_addMethod(v13, sel_setRefraction_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)twirlDistortionFilter
{
  v2 = [CIFilter filterWithName:@"CITwirlDistortion"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__twirlDistortionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (twirlDistortionFilter_onceToken != -1)
  {
    dispatch_once(&twirlDistortionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__twirlDistortionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_radius, floatGetter, "f@:");
    class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_angle, floatGetter, "f@:");

    return class_addMethod(v11, sel_setAngle_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)vortexDistortionFilter
{
  v2 = [CIFilter filterWithName:@"CIVortexDistortion"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__vortexDistortionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (vortexDistortionFilter_onceToken != -1)
  {
    dispatch_once(&vortexDistortionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__44__CIFilter_Builtins__vortexDistortionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_radius, floatGetter, "f@:");
    class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_angle, floatGetter, "f@:");

    return class_addMethod(v11, sel_setAngle_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)affineClampFilter
{
  v2 = [CIFilter filterWithName:@"CIAffineClamp"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__affineClampFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (affineClampFilter_onceToken != -1)
  {
    dispatch_once(&affineClampFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__affineClampFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_transform, transformGetter, "{CGAffineTransform=dddddd}@:");

    return class_addMethod(v7, sel_setTransform_, transformSetter, "v@:{CGAffineTransform=dddddd}");
  }

  return result;
}

+ (CIFilter)affineTileFilter
{
  v2 = [CIFilter filterWithName:@"CIAffineTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CIFilter_Builtins__affineTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (affineTileFilter_onceToken != -1)
  {
    dispatch_once(&affineTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__38__CIFilter_Builtins__affineTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_transform, transformGetter, "{CGAffineTransform=dddddd}@:");

    return class_addMethod(v7, sel_setTransform_, transformSetter, "v@:{CGAffineTransform=dddddd}");
  }

  return result;
}

+ (CIFilter)eightfoldReflectedTileFilter
{
  v2 = [CIFilter filterWithName:@"CIEightfoldReflectedTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CIFilter_Builtins__eightfoldReflectedTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (eightfoldReflectedTileFilter_onceToken != -1)
  {
    dispatch_once(&eightfoldReflectedTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__50__CIFilter_Builtins__eightfoldReflectedTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_width, floatGetter, "f@:");

    return class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)fourfoldReflectedTileFilter
{
  v2 = [CIFilter filterWithName:@"CIFourfoldReflectedTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CIFilter_Builtins__fourfoldReflectedTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (fourfoldReflectedTileFilter_onceToken != -1)
  {
    dispatch_once(&fourfoldReflectedTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__49__CIFilter_Builtins__fourfoldReflectedTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_width, floatGetter, "f@:");
    class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_acuteAngle, floatGetter, "f@:");

    return class_addMethod(v13, sel_setAcuteAngle_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)fourfoldRotatedTileFilter
{
  v2 = [CIFilter filterWithName:@"CIFourfoldRotatedTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__fourfoldRotatedTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (fourfoldRotatedTileFilter_onceToken != -1)
  {
    dispatch_once(&fourfoldRotatedTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__47__CIFilter_Builtins__fourfoldRotatedTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_width, floatGetter, "f@:");

    return class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)fourfoldTranslatedTileFilter
{
  v2 = [CIFilter filterWithName:@"CIFourfoldTranslatedTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CIFilter_Builtins__fourfoldTranslatedTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (fourfoldTranslatedTileFilter_onceToken != -1)
  {
    dispatch_once(&fourfoldTranslatedTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__50__CIFilter_Builtins__fourfoldTranslatedTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_width, floatGetter, "f@:");
    class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_acuteAngle, floatGetter, "f@:");

    return class_addMethod(v13, sel_setAcuteAngle_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)glideReflectedTileFilter
{
  v2 = [CIFilter filterWithName:@"CIGlideReflectedTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__glideReflectedTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (glideReflectedTileFilter_onceToken != -1)
  {
    dispatch_once(&glideReflectedTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__glideReflectedTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_width, floatGetter, "f@:");

    return class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)kaleidoscopeFilter
{
  v2 = [CIFilter filterWithName:@"CIKaleidoscope"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CIFilter_Builtins__kaleidoscopeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (kaleidoscopeFilter_onceToken != -1)
  {
    dispatch_once(&kaleidoscopeFilter_onceToken, block);
  }

  return v2;
}

objc_class *__40__CIFilter_Builtins__kaleidoscopeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_count, intGetter, "q@:");
    class_addMethod(v7, sel_setCount_, intSetter, "v@:q}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_angle, floatGetter, "f@:");

    return class_addMethod(v11, sel_setAngle_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)opTileFilter
{
  v2 = [CIFilter filterWithName:@"CIOpTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CIFilter_Builtins__opTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (opTileFilter_onceToken != -1)
  {
    dispatch_once(&opTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__34__CIFilter_Builtins__opTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_scale, floatGetter, "f@:");
    class_addMethod(v9, sel_setScale_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_angle, floatGetter, "f@:");
    class_addMethod(v11, sel_setAngle_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_width, floatGetter, "f@:");

    return class_addMethod(v13, sel_setWidth_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)parallelogramTileFilter
{
  v2 = [CIFilter filterWithName:@"CIParallelogramTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__parallelogramTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (parallelogramTileFilter_onceToken != -1)
  {
    dispatch_once(&parallelogramTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__45__CIFilter_Builtins__parallelogramTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_acuteAngle, floatGetter, "f@:");
    class_addMethod(v11, sel_setAcuteAngle_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_width, floatGetter, "f@:");

    return class_addMethod(v13, sel_setWidth_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)perspectiveTileFilter
{
  v2 = [CIFilter filterWithName:@"CIPerspectiveTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CIFilter_Builtins__perspectiveTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (perspectiveTileFilter_onceToken != -1)
  {
    dispatch_once(&perspectiveTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__43__CIFilter_Builtins__perspectiveTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_topLeft, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setTopLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_topRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setTopRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_bottomRight, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v11, sel_setBottomRight_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bottomLeft, pointGetter, "{CGPoint=dd}@:");

    return class_addMethod(v13, sel_setBottomLeft_, pointSetter, "v@:{CGPoint=dd}}");
  }

  return result;
}

+ (CIFilter)sixfoldReflectedTileFilter
{
  v2 = [CIFilter filterWithName:@"CISixfoldReflectedTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CIFilter_Builtins__sixfoldReflectedTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (sixfoldReflectedTileFilter_onceToken != -1)
  {
    dispatch_once(&sixfoldReflectedTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__48__CIFilter_Builtins__sixfoldReflectedTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_width, floatGetter, "f@:");

    return class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)sixfoldRotatedTileFilter
{
  v2 = [CIFilter filterWithName:@"CISixfoldRotatedTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__sixfoldRotatedTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (sixfoldRotatedTileFilter_onceToken != -1)
  {
    dispatch_once(&sixfoldRotatedTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__sixfoldRotatedTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_width, floatGetter, "f@:");

    return class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)triangleKaleidoscopeFilter
{
  v2 = [CIFilter filterWithName:@"CITriangleKaleidoscope"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CIFilter_Builtins__triangleKaleidoscopeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (triangleKaleidoscopeFilter_onceToken != -1)
  {
    dispatch_once(&triangleKaleidoscopeFilter_onceToken, block);
  }

  return v2;
}

objc_class *__48__CIFilter_Builtins__triangleKaleidoscopeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_point, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setPoint_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_size, floatGetter, "f@:");
    class_addMethod(v9, sel_setSize_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_rotation, floatGetter, "f@:");
    class_addMethod(v11, sel_setRotation_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_decay, floatGetter, "f@:");

    return class_addMethod(v13, sel_setDecay_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)triangleTileFilter
{
  v2 = [CIFilter filterWithName:@"CITriangleTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CIFilter_Builtins__triangleTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (triangleTileFilter_onceToken != -1)
  {
    dispatch_once(&triangleTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__40__CIFilter_Builtins__triangleTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_width, floatGetter, "f@:");

    return class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)twelvefoldReflectedTileFilter
{
  v2 = [CIFilter filterWithName:@"CITwelvefoldReflectedTile"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CIFilter_Builtins__twelvefoldReflectedTileFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (twelvefoldReflectedTileFilter_onceToken != -1)
  {
    dispatch_once(&twelvefoldReflectedTileFilter_onceToken, block);
  }

  return v2;
}

objc_class *__51__CIFilter_Builtins__twelvefoldReflectedTileFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_angle, floatGetter, "f@:");
    class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_width, floatGetter, "f@:");

    return class_addMethod(v11, sel_setWidth_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)attributedTextImageGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CIAttributedTextImageGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CIFilter_Builtins__attributedTextImageGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (attributedTextImageGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&attributedTextImageGeneratorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__56__CIFilter_Builtins__attributedTextImageGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_text) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_text];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_text, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setText_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setText_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_text, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setText_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_scaleFactor, floatGetter, "f@:");
    class_addMethod(v7, sel_setScaleFactor_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_padding, floatGetter, "f@:");

    return class_addMethod(v9, sel_setPadding_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)aztecCodeGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CIAztecCodeGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__aztecCodeGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (aztecCodeGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&aztecCodeGeneratorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__aztecCodeGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_message) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_message];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_message, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setMessage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setMessage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_message, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setMessage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_correctionLevel, floatGetter, "f@:");
    class_addMethod(v7, sel_setCorrectionLevel_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_layers, floatGetter, "f@:");
    class_addMethod(v9, sel_setLayers_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_compactStyle, floatGetter, "f@:");

    return class_addMethod(v11, sel_setCompactStyle_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)barcodeGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CIBarcodeGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__barcodeGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (barcodeGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&barcodeGeneratorFilter_onceToken, block);
  }

  return v2;
}

uint64_t __44__CIFilter_Builtins__barcodeGeneratorFilter__block_invoke()
{
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [NSStringFromSelector(sel_barcodeDescriptor) isEqualToString:@"inputImage"];
  v3 = [v1 instancesRespondToSelector:sel_barcodeDescriptor];
  if (v2)
  {
    if ((v3 & 1) == 0)
    {
      class_addMethod(v1, sel_barcodeDescriptor, iiGetter, "@@:");
    }

    result = [v1 instancesRespondToSelector:sel_setBarcodeDescriptor_];
    v4 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_6:

      return class_addMethod(v1, sel_setBarcodeDescriptor_, v4, "v@:@");
    }
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      class_addMethod(v1, sel_barcodeDescriptor, objGetter, "@@:");
    }

    result = [v1 instancesRespondToSelector:sel_setBarcodeDescriptor_];
    v4 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  return result;
}

+ (CIFilter)blurredRectangleGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CIBlurredRectangleGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CIFilter_Builtins__blurredRectangleGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (blurredRectangleGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&blurredRectangleGeneratorFilter_onceToken, block);
  }

  return v2;
}

uint64_t __53__CIFilter_Builtins__blurredRectangleGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v1, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    class_addMethod(v2, sel_sigma, floatGetter, "f@:");
    class_addMethod(v3, sel_setSigma_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v5 = result;
    v6 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v7 = [v5 instancesRespondToSelector:sel_color];
    if (v6)
    {
      if ((v7 & 1) == 0)
      {
        class_addMethod(v5, sel_color, iiGetter, "@@:");
      }

      result = [v5 instancesRespondToSelector:sel_setColor_];
      v8 = iiSetter;
      if ((result & 1) == 0)
      {
LABEL_10:

        return class_addMethod(v5, sel_setColor_, v8, "v@:@");
      }
    }

    else
    {
      if ((v7 & 1) == 0)
      {
        class_addMethod(v5, sel_color, objGetter, "@@:");
      }

      result = [v5 instancesRespondToSelector:sel_setColor_];
      v8 = objSetter;
      if ((result & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

+ (id)blurredRoundedRectangleGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CIBlurredRoundedRectangleGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CIFilter_Builtins__blurredRoundedRectangleGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (blurredRoundedRectangleGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&blurredRoundedRectangleGeneratorFilter_onceToken, block);
  }

  return v2;
}

uint64_t __60__CIFilter_Builtins__blurredRoundedRectangleGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v1, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    class_addMethod(v2, sel_radius, floatGetter, "f@:");
    class_addMethod(v3, sel_setRadius_, floatSetter, "v@:f");
  }

  v4 = objc_opt_class();
  if (v4)
  {
    v5 = v4;
    class_addMethod(v4, sel_smoothness, floatGetter, "f@:");
    class_addMethod(v5, sel_setSmoothness_, floatSetter, "v@:f");
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_sigma, floatGetter, "f@:");
    class_addMethod(v7, sel_setSigma_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    v10 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v11 = [v9 instancesRespondToSelector:sel_color];
    if (v10)
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_color, iiGetter, "@@:");
      }

      result = [v9 instancesRespondToSelector:sel_setColor_];
      v12 = iiSetter;
      if ((result & 1) == 0)
      {
LABEL_14:

        return class_addMethod(v9, sel_setColor_, v12, "v@:@");
      }
    }

    else
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_color, objGetter, "@@:");
      }

      result = [v9 instancesRespondToSelector:sel_setColor_];
      v12 = objSetter;
      if ((result & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

+ (CIFilter)checkerboardGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CICheckerboardGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CIFilter_Builtins__checkerboardGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (checkerboardGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&checkerboardGeneratorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__49__CIFilter_Builtins__checkerboardGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v1, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    v4 = [NSStringFromSelector(sel_color0) isEqualToString:@"inputImage"];
    v5 = [v3 instancesRespondToSelector:sel_color0];
    if (v4)
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color0, iiGetter, "@@:");
      }

      v6 = [v3 instancesRespondToSelector:sel_setColor0_];
      v7 = iiSetter;
      if ((v6 & 1) == 0)
      {
LABEL_8:
        class_addMethod(v3, sel_setColor0_, v7, "v@:@");
      }
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color0, objGetter, "@@:");
      }

      v18 = [v3 instancesRespondToSelector:sel_setColor0_];
      v7 = objSetter;
      if ((v18 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = objc_opt_class();
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [NSStringFromSelector(sel_color1) isEqualToString:@"inputImage"];
  v11 = [v9 instancesRespondToSelector:sel_color1];
  if (v10)
  {
    if ((v11 & 1) == 0)
    {
      class_addMethod(v9, sel_color1, iiGetter, "@@:");
    }

    v12 = [v9 instancesRespondToSelector:sel_setColor1_];
    v13 = iiSetter;
    if ((v12 & 1) == 0)
    {
LABEL_14:
      class_addMethod(v9, sel_setColor1_, v13, "v@:@");
    }
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      class_addMethod(v9, sel_color1, objGetter, "@@:");
    }

    v19 = [v9 instancesRespondToSelector:sel_setColor1_];
    v13 = objSetter;
    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_width, floatGetter, "f@:");
    class_addMethod(v15, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v17 = result;
    class_addMethod(result, sel_sharpness, floatGetter, "f@:");

    return class_addMethod(v17, sel_setSharpness_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)code128BarcodeGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CICode128BarcodeGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CIFilter_Builtins__code128BarcodeGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (code128BarcodeGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&code128BarcodeGeneratorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__51__CIFilter_Builtins__code128BarcodeGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_message) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_message];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_message, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setMessage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setMessage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_message, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setMessage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_quietSpace, floatGetter, "f@:");
    class_addMethod(v7, sel_setQuietSpace_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_barcodeHeight, floatGetter, "f@:");

    return class_addMethod(v9, sel_setBarcodeHeight_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)lenticularHaloGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CILenticularHaloGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CIFilter_Builtins__lenticularHaloGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (lenticularHaloGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&lenticularHaloGeneratorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__51__CIFilter_Builtins__lenticularHaloGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v1, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    v4 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v5 = [v3 instancesRespondToSelector:sel_color];
    if (v4)
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color, iiGetter, "@@:");
      }

      v6 = [v3 instancesRespondToSelector:sel_setColor_];
      v7 = iiSetter;
      if ((v6 & 1) == 0)
      {
LABEL_8:
        class_addMethod(v3, sel_setColor_, v7, "v@:@");
      }
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color, objGetter, "@@:");
      }

      v20 = [v3 instancesRespondToSelector:sel_setColor_];
      v7 = objSetter;
      if ((v20 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_haloRadius, floatGetter, "f@:");
    class_addMethod(v9, sel_setHaloRadius_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_haloWidth, floatGetter, "f@:");
    class_addMethod(v11, sel_setHaloWidth_, floatSetter, "v@:f");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_haloOverlap, floatGetter, "f@:");
    class_addMethod(v13, sel_setHaloOverlap_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_striationStrength, floatGetter, "f@:");
    class_addMethod(v15, sel_setStriationStrength_, floatSetter, "v@:f");
  }

  v16 = objc_opt_class();
  if (v16)
  {
    v17 = v16;
    class_addMethod(v16, sel_striationContrast, floatGetter, "f@:");
    class_addMethod(v17, sel_setStriationContrast_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v19 = result;
    class_addMethod(result, sel_time, floatGetter, "f@:");

    return class_addMethod(v19, sel_setTime_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)meshGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CIMeshGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CIFilter_Builtins__meshGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (meshGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&meshGeneratorFilter_onceToken, block);
  }

  return v2;
}

uint64_t __41__CIFilter_Builtins__meshGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_width, floatGetter, "f@:");
    class_addMethod(v1, sel_setWidth_, floatSetter, "v@:f");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    v4 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v5 = [v3 instancesRespondToSelector:sel_color];
    if (v4)
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color, iiGetter, "@@:");
      }

      v6 = [v3 instancesRespondToSelector:sel_setColor_];
      v7 = iiSetter;
      if ((v6 & 1) == 0)
      {
LABEL_8:
        class_addMethod(v3, sel_setColor_, v7, "v@:@");
      }
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color, objGetter, "@@:");
      }

      v13 = [v3 instancesRespondToSelector:sel_setColor_];
      v7 = objSetter;
      if ((v13 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = [NSStringFromSelector(sel_mesh) isEqualToString:@"inputImage"];
  v11 = [v9 instancesRespondToSelector:sel_mesh];
  if (v10)
  {
    if ((v11 & 1) == 0)
    {
      class_addMethod(v9, sel_mesh, iiGetter, "@@:");
    }

    result = [v9 instancesRespondToSelector:sel_setMesh_];
    v12 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_14:

      return class_addMethod(v9, sel_setMesh_, v12, "v@:@");
    }
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      class_addMethod(v9, sel_mesh, objGetter, "@@:");
    }

    result = [v9 instancesRespondToSelector:sel_setMesh_];
    v12 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  return result;
}

+ (CIFilter)PDF417BarcodeGenerator
{
  v2 = [CIFilter filterWithName:@"CIPDF417BarcodeGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__PDF417BarcodeGenerator__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (PDF417BarcodeGenerator_onceToken != -1)
  {
    dispatch_once(&PDF417BarcodeGenerator_onceToken, block);
  }

  return v2;
}

objc_class *__44__CIFilter_Builtins__PDF417BarcodeGenerator__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_message) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_message];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_message, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setMessage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setMessage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_message, objGetter, "@@:");
      }

      v28 = [v1 instancesRespondToSelector:sel_setMessage_];
      v5 = objSetter;
      if ((v28 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_minWidth, floatGetter, "f@:");
    class_addMethod(v7, sel_setMinWidth_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_maxWidth, floatGetter, "f@:");
    class_addMethod(v9, sel_setMaxWidth_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_minHeight, floatGetter, "f@:");
    class_addMethod(v11, sel_setMinHeight_, floatSetter, "v@:f");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_maxHeight, floatGetter, "f@:");
    class_addMethod(v13, sel_setMaxHeight_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_dataColumns, floatGetter, "f@:");
    class_addMethod(v15, sel_setDataColumns_, floatSetter, "v@:f");
  }

  v16 = objc_opt_class();
  if (v16)
  {
    v17 = v16;
    class_addMethod(v16, sel_rows, floatGetter, "f@:");
    class_addMethod(v17, sel_setRows_, floatSetter, "v@:f");
  }

  v18 = objc_opt_class();
  if (v18)
  {
    v19 = v18;
    class_addMethod(v18, sel_preferredAspectRatio, floatGetter, "f@:");
    class_addMethod(v19, sel_setPreferredAspectRatio_, floatSetter, "v@:f");
  }

  v20 = objc_opt_class();
  if (v20)
  {
    v21 = v20;
    class_addMethod(v20, sel_compactionMode, floatGetter, "f@:");
    class_addMethod(v21, sel_setCompactionMode_, floatSetter, "v@:f");
  }

  v22 = objc_opt_class();
  if (v22)
  {
    v23 = v22;
    class_addMethod(v22, sel_compactStyle, floatGetter, "f@:");
    class_addMethod(v23, sel_setCompactStyle_, floatSetter, "v@:f");
  }

  v24 = objc_opt_class();
  if (v24)
  {
    v25 = v24;
    class_addMethod(v24, sel_correctionLevel, floatGetter, "f@:");
    class_addMethod(v25, sel_setCorrectionLevel_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v27 = result;
    class_addMethod(result, sel_alwaysSpecifyCompaction, floatGetter, "f@:");

    return class_addMethod(v27, sel_setAlwaysSpecifyCompaction_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)QRCodeGenerator
{
  v2 = [CIFilter filterWithName:@"CIQRCodeGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CIFilter_Builtins__QRCodeGenerator__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (QRCodeGenerator_onceToken != -1)
  {
    dispatch_once(&QRCodeGenerator_onceToken, block);
  }

  return v2;
}

uint64_t __37__CIFilter_Builtins__QRCodeGenerator__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_message) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_message];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_message, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setMessage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setMessage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_message, objGetter, "@@:");
      }

      v11 = [v1 instancesRespondToSelector:sel_setMessage_];
      v5 = objSetter;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [NSStringFromSelector(sel_correctionLevel) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_correctionLevel];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_correctionLevel, iiGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setCorrectionLevel_];
    v10 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_12:

      return class_addMethod(v7, sel_setCorrectionLevel_, v10, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_correctionLevel, objGetter, "@@:");
    }

    result = [v7 instancesRespondToSelector:sel_setCorrectionLevel_];
    v10 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (id)roundedQRCodeGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CIRoundedQRCodeGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CIFilter_Builtins__roundedQRCodeGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (roundedQRCodeGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&roundedQRCodeGeneratorFilter_onceToken, block);
  }

  return v2;
}

uint64_t __50__CIFilter_Builtins__roundedQRCodeGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_message) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_message];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_message, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setMessage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setMessage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_message, objGetter, "@@:");
      }

      v31 = [v1 instancesRespondToSelector:sel_setMessage_];
      v5 = objSetter;
      if ((v31 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_correctionLevel) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_correctionLevel];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_correctionLevel, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setCorrectionLevel_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setCorrectionLevel_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_correctionLevel, objGetter, "@@:");
    }

    v32 = [v7 instancesRespondToSelector:sel_setCorrectionLevel_];
    v11 = objSetter;
    if ((v32 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_scale, floatGetter, "f@:");
    class_addMethod(v13, sel_setScale_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_roundedMarkers, intGetter, "q@:");
    class_addMethod(v15, sel_setRoundedMarkers_, intSetter, "v@:q}");
  }

  v16 = objc_opt_class();
  if (v16)
  {
    v17 = v16;
    class_addMethod(v16, sel_roundedData, BOOLGetter, "B@:");
    class_addMethod(v17, sel_setRoundedData_, BOOLSetter, "v@:B}");
  }

  v18 = objc_opt_class();
  if (v18)
  {
    v19 = v18;
    class_addMethod(v18, sel_centerSpaceSize, floatGetter, "f@:");
    class_addMethod(v19, sel_setCenterSpaceSize_, floatSetter, "v@:f");
  }

  v20 = objc_opt_class();
  if (v20)
  {
    v21 = v20;
    v22 = [NSStringFromSelector(sel_color0) isEqualToString:@"inputImage"];
    v23 = [v21 instancesRespondToSelector:sel_color0];
    if (v22)
    {
      if ((v23 & 1) == 0)
      {
        class_addMethod(v21, sel_color0, iiGetter, "@@:");
      }

      v24 = [v21 instancesRespondToSelector:sel_setColor0_];
      v25 = iiSetter;
      if ((v24 & 1) == 0)
      {
LABEL_26:
        class_addMethod(v21, sel_setColor0_, v25, "v@:@");
      }
    }

    else
    {
      if ((v23 & 1) == 0)
      {
        class_addMethod(v21, sel_color0, objGetter, "@@:");
      }

      v33 = [v21 instancesRespondToSelector:sel_setColor0_];
      v25 = objSetter;
      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v27 = result;
  v28 = [NSStringFromSelector(sel_color1) isEqualToString:@"inputImage"];
  v29 = [v27 instancesRespondToSelector:sel_color1];
  if (v28)
  {
    if ((v29 & 1) == 0)
    {
      class_addMethod(v27, sel_color1, iiGetter, "@@:");
    }

    result = [v27 instancesRespondToSelector:sel_setColor1_];
    v30 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_32:

      return class_addMethod(v27, sel_setColor1_, v30, "v@:@");
    }
  }

  else
  {
    if ((v29 & 1) == 0)
    {
      class_addMethod(v27, sel_color1, objGetter, "@@:");
    }

    result = [v27 instancesRespondToSelector:sel_setColor1_];
    v30 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  return result;
}

+ (CIFilter)roundedRectangleGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CIRoundedRectangleGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CIFilter_Builtins__roundedRectangleGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (roundedRectangleGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&roundedRectangleGeneratorFilter_onceToken, block);
  }

  return v2;
}

uint64_t __53__CIFilter_Builtins__roundedRectangleGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v1, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    class_addMethod(v2, sel_radius, floatGetter, "f@:");
    class_addMethod(v3, sel_setRadius_, floatSetter, "v@:f");
  }

  v4 = objc_opt_class();
  if (v4)
  {
    v5 = v4;
    class_addMethod(v4, sel_smoothness, floatGetter, "f@:");
    class_addMethod(v5, sel_setSmoothness_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    v8 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v9 = [v7 instancesRespondToSelector:sel_color];
    if (v8)
    {
      if ((v9 & 1) == 0)
      {
        class_addMethod(v7, sel_color, iiGetter, "@@:");
      }

      result = [v7 instancesRespondToSelector:sel_setColor_];
      v10 = iiSetter;
      if ((result & 1) == 0)
      {
LABEL_12:

        return class_addMethod(v7, sel_setColor_, v10, "v@:@");
      }
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        class_addMethod(v7, sel_color, objGetter, "@@:");
      }

      result = [v7 instancesRespondToSelector:sel_setColor_];
      v10 = objSetter;
      if ((result & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

+ (CIFilter)roundedRectangleStrokeGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CIRoundedRectangleStrokeGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CIFilter_Builtins__roundedRectangleStrokeGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (roundedRectangleStrokeGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&roundedRectangleStrokeGeneratorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__59__CIFilter_Builtins__roundedRectangleStrokeGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v1, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    class_addMethod(v2, sel_radius, floatGetter, "f@:");
    class_addMethod(v3, sel_setRadius_, floatSetter, "v@:f");
  }

  v4 = objc_opt_class();
  if (v4)
  {
    v5 = v4;
    class_addMethod(v4, sel_smoothness, floatGetter, "f@:");
    class_addMethod(v5, sel_setSmoothness_, floatSetter, "v@:f");
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    v8 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v9 = [v7 instancesRespondToSelector:sel_color];
    if (v8)
    {
      if ((v9 & 1) == 0)
      {
        class_addMethod(v7, sel_color, iiGetter, "@@:");
      }

      v10 = [v7 instancesRespondToSelector:sel_setColor_];
      v11 = iiSetter;
      if ((v10 & 1) == 0)
      {
LABEL_12:
        class_addMethod(v7, sel_setColor_, v11, "v@:@");
      }
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        class_addMethod(v7, sel_color, objGetter, "@@:");
      }

      v14 = [v7 instancesRespondToSelector:sel_setColor_];
      v11 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_width, floatGetter, "f@:");

    return class_addMethod(v13, sel_setWidth_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)starShineGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CIStarShineGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__starShineGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (starShineGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&starShineGeneratorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__starShineGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v1, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    v4 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v5 = [v3 instancesRespondToSelector:sel_color];
    if (v4)
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color, iiGetter, "@@:");
      }

      v6 = [v3 instancesRespondToSelector:sel_setColor_];
      v7 = iiSetter;
      if ((v6 & 1) == 0)
      {
LABEL_8:
        class_addMethod(v3, sel_setColor_, v7, "v@:@");
      }
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color, objGetter, "@@:");
      }

      v20 = [v3 instancesRespondToSelector:sel_setColor_];
      v7 = objSetter;
      if ((v20 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_radius, floatGetter, "f@:");
    class_addMethod(v9, sel_setRadius_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_crossScale, floatGetter, "f@:");
    class_addMethod(v11, sel_setCrossScale_, floatSetter, "v@:f");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_crossAngle, floatGetter, "f@:");
    class_addMethod(v13, sel_setCrossAngle_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_crossOpacity, floatGetter, "f@:");
    class_addMethod(v15, sel_setCrossOpacity_, floatSetter, "v@:f");
  }

  v16 = objc_opt_class();
  if (v16)
  {
    v17 = v16;
    class_addMethod(v16, sel_crossWidth, floatGetter, "f@:");
    class_addMethod(v17, sel_setCrossWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v19 = result;
    class_addMethod(result, sel_epsilon, floatGetter, "f@:");

    return class_addMethod(v19, sel_setEpsilon_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)stripesGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CIStripesGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__stripesGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (stripesGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&stripesGeneratorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__44__CIFilter_Builtins__stripesGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v1, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    v4 = [NSStringFromSelector(sel_color0) isEqualToString:@"inputImage"];
    v5 = [v3 instancesRespondToSelector:sel_color0];
    if (v4)
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color0, iiGetter, "@@:");
      }

      v6 = [v3 instancesRespondToSelector:sel_setColor0_];
      v7 = iiSetter;
      if ((v6 & 1) == 0)
      {
LABEL_8:
        class_addMethod(v3, sel_setColor0_, v7, "v@:@");
      }
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color0, objGetter, "@@:");
      }

      v18 = [v3 instancesRespondToSelector:sel_setColor0_];
      v7 = objSetter;
      if ((v18 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = objc_opt_class();
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [NSStringFromSelector(sel_color1) isEqualToString:@"inputImage"];
  v11 = [v9 instancesRespondToSelector:sel_color1];
  if (v10)
  {
    if ((v11 & 1) == 0)
    {
      class_addMethod(v9, sel_color1, iiGetter, "@@:");
    }

    v12 = [v9 instancesRespondToSelector:sel_setColor1_];
    v13 = iiSetter;
    if ((v12 & 1) == 0)
    {
LABEL_14:
      class_addMethod(v9, sel_setColor1_, v13, "v@:@");
    }
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      class_addMethod(v9, sel_color1, objGetter, "@@:");
    }

    v19 = [v9 instancesRespondToSelector:sel_setColor1_];
    v13 = objSetter;
    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_width, floatGetter, "f@:");
    class_addMethod(v15, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v17 = result;
    class_addMethod(result, sel_sharpness, floatGetter, "f@:");

    return class_addMethod(v17, sel_setSharpness_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)sunbeamsGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CISunbeamsGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__sunbeamsGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (sunbeamsGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&sunbeamsGeneratorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__45__CIFilter_Builtins__sunbeamsGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    class_addMethod(v0, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v1, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v2 = objc_opt_class();
  if (v2)
  {
    v3 = v2;
    v4 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v5 = [v3 instancesRespondToSelector:sel_color];
    if (v4)
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color, iiGetter, "@@:");
      }

      v6 = [v3 instancesRespondToSelector:sel_setColor_];
      v7 = iiSetter;
      if ((v6 & 1) == 0)
      {
LABEL_8:
        class_addMethod(v3, sel_setColor_, v7, "v@:@");
      }
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        class_addMethod(v3, sel_color, objGetter, "@@:");
      }

      v18 = [v3 instancesRespondToSelector:sel_setColor_];
      v7 = objSetter;
      if ((v18 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_sunRadius, floatGetter, "f@:");
    class_addMethod(v9, sel_setSunRadius_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_maxStriationRadius, floatGetter, "f@:");
    class_addMethod(v11, sel_setMaxStriationRadius_, floatSetter, "v@:f");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_striationStrength, floatGetter, "f@:");
    class_addMethod(v13, sel_setStriationStrength_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_striationContrast, floatGetter, "f@:");
    class_addMethod(v15, sel_setStriationContrast_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v17 = result;
    class_addMethod(result, sel_time, floatGetter, "f@:");

    return class_addMethod(v17, sel_setTime_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)textImageGeneratorFilter
{
  v2 = [CIFilter filterWithName:@"CITextImageGenerator"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__textImageGeneratorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (textImageGeneratorFilter_onceToken != -1)
  {
    dispatch_once(&textImageGeneratorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__textImageGeneratorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_text) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_text];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_text, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setText_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setText_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_text, objGetter, "@@:");
      }

      v18 = [v1 instancesRespondToSelector:sel_setText_];
      v5 = objSetter;
      if ((v18 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_fontName) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_fontName];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_fontName, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setFontName_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setFontName_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_fontName, objGetter, "@@:");
    }

    v19 = [v7 instancesRespondToSelector:sel_setFontName_];
    v11 = objSetter;
    if ((v19 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_fontSize, floatGetter, "f@:");
    class_addMethod(v13, sel_setFontSize_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_scaleFactor, floatGetter, "f@:");
    class_addMethod(v15, sel_setScaleFactor_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v17 = result;
    class_addMethod(result, sel_padding, floatGetter, "f@:");

    return class_addMethod(v17, sel_setPadding_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)blendWithAlphaMaskFilter
{
  v2 = [CIFilter filterWithName:@"CIBlendWithAlphaMask"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__blendWithAlphaMaskFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (blendWithAlphaMaskFilter_onceToken != -1)
  {
    dispatch_once(&blendWithAlphaMaskFilter_onceToken, block);
  }

  return v2;
}

uint64_t __46__CIFilter_Builtins__blendWithAlphaMaskFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v17 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setBackgroundImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    v18 = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v11 = objSetter;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [NSStringFromSelector(sel_maskImage) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_maskImage];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maskImage, iiGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setMaskImage_];
    v16 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_18:

      return class_addMethod(v13, sel_setMaskImage_, v16, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maskImage, objGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setMaskImage_];
    v16 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return result;
}

+ (CIFilter)blendWithBlueMaskFilter
{
  v2 = [CIFilter filterWithName:@"CIBlendWithBlueMask"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__blendWithBlueMaskFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (blendWithBlueMaskFilter_onceToken != -1)
  {
    dispatch_once(&blendWithBlueMaskFilter_onceToken, block);
  }

  return v2;
}

uint64_t __45__CIFilter_Builtins__blendWithBlueMaskFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v17 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setBackgroundImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    v18 = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v11 = objSetter;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [NSStringFromSelector(sel_maskImage) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_maskImage];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maskImage, iiGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setMaskImage_];
    v16 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_18:

      return class_addMethod(v13, sel_setMaskImage_, v16, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maskImage, objGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setMaskImage_];
    v16 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return result;
}

+ (CIFilter)blendWithMaskFilter
{
  v2 = [CIFilter filterWithName:@"CIBlendWithMask"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CIFilter_Builtins__blendWithMaskFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (blendWithMaskFilter_onceToken != -1)
  {
    dispatch_once(&blendWithMaskFilter_onceToken, block);
  }

  return v2;
}

uint64_t __41__CIFilter_Builtins__blendWithMaskFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v17 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setBackgroundImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    v18 = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v11 = objSetter;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [NSStringFromSelector(sel_maskImage) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_maskImage];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maskImage, iiGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setMaskImage_];
    v16 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_18:

      return class_addMethod(v13, sel_setMaskImage_, v16, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maskImage, objGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setMaskImage_];
    v16 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return result;
}

+ (CIFilter)blendWithRedMaskFilter
{
  v2 = [CIFilter filterWithName:@"CIBlendWithRedMask"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__blendWithRedMaskFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (blendWithRedMaskFilter_onceToken != -1)
  {
    dispatch_once(&blendWithRedMaskFilter_onceToken, block);
  }

  return v2;
}

uint64_t __44__CIFilter_Builtins__blendWithRedMaskFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v17 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setBackgroundImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    v18 = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v11 = objSetter;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [NSStringFromSelector(sel_maskImage) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_maskImage];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maskImage, iiGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setMaskImage_];
    v16 = iiSetter;
    if ((result & 1) == 0)
    {
LABEL_18:

      return class_addMethod(v13, sel_setMaskImage_, v16, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_maskImage, objGetter, "@@:");
    }

    result = [v13 instancesRespondToSelector:sel_setMaskImage_];
    v16 = objSetter;
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return result;
}

+ (CIFilter)bloomFilter
{
  v2 = [CIFilter filterWithName:@"CIBloom"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CIFilter_Builtins__bloomFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (bloomFilter_onceToken != -1)
  {
    dispatch_once(&bloomFilter_onceToken, block);
  }

  return v2;
}

objc_class *__33__CIFilter_Builtins__bloomFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_radius, floatGetter, "f@:");
    class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_intensity, floatGetter, "f@:");

    return class_addMethod(v9, sel_setIntensity_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)cannyEdgeDetectorFilter
{
  v2 = [CIFilter filterWithName:@"CICannyEdgeDetector"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__cannyEdgeDetectorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (cannyEdgeDetectorFilter_onceToken != -1)
  {
    dispatch_once(&cannyEdgeDetectorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__45__CIFilter_Builtins__cannyEdgeDetectorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_gaussianSigma, floatGetter, "f@:");
    class_addMethod(v7, sel_setGaussianSigma_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_perceptual, BOOLGetter, "B@:");
    class_addMethod(v9, sel_setPerceptual_, BOOLSetter, "v@:B}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_thresholdHigh, floatGetter, "f@:");
    class_addMethod(v11, sel_setThresholdHigh_, floatSetter, "v@:f");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_thresholdLow, floatGetter, "f@:");
    class_addMethod(v13, sel_setThresholdLow_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_hysteresisPasses, intGetter, "q@:");

    return class_addMethod(v15, sel_setHysteresisPasses_, intSetter, "v@:q}");
  }

  return result;
}

+ (CIFilter)convolution3X3Filter
{
  v2 = [CIFilter filterWithName:@"CIConvolution3X3"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__convolution3X3Filter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convolution3X3Filter_onceToken != -1)
  {
    dispatch_once(&convolution3X3Filter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__convolution3X3Filter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_weights) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_weights];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setWeights_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bias, floatGetter, "f@:");

    return class_addMethod(v13, sel_setBias_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)convolution5X5Filter
{
  v2 = [CIFilter filterWithName:@"CIConvolution5X5"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__convolution5X5Filter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convolution5X5Filter_onceToken != -1)
  {
    dispatch_once(&convolution5X5Filter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__convolution5X5Filter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_weights) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_weights];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setWeights_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bias, floatGetter, "f@:");

    return class_addMethod(v13, sel_setBias_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)convolution7X7Filter
{
  v2 = [CIFilter filterWithName:@"CIConvolution7X7"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__convolution7X7Filter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convolution7X7Filter_onceToken != -1)
  {
    dispatch_once(&convolution7X7Filter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__convolution7X7Filter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_weights) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_weights];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setWeights_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bias, floatGetter, "f@:");

    return class_addMethod(v13, sel_setBias_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)convolution9HorizontalFilter
{
  v2 = [CIFilter filterWithName:@"CIConvolution9Horizontal"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CIFilter_Builtins__convolution9HorizontalFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convolution9HorizontalFilter_onceToken != -1)
  {
    dispatch_once(&convolution9HorizontalFilter_onceToken, block);
  }

  return v2;
}

objc_class *__50__CIFilter_Builtins__convolution9HorizontalFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_weights) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_weights];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setWeights_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bias, floatGetter, "f@:");

    return class_addMethod(v13, sel_setBias_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)convolution9VerticalFilter
{
  v2 = [CIFilter filterWithName:@"CIConvolution9Vertical"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CIFilter_Builtins__convolution9VerticalFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convolution9VerticalFilter_onceToken != -1)
  {
    dispatch_once(&convolution9VerticalFilter_onceToken, block);
  }

  return v2;
}

objc_class *__48__CIFilter_Builtins__convolution9VerticalFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_weights) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_weights];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setWeights_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bias, floatGetter, "f@:");

    return class_addMethod(v13, sel_setBias_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)convolutionRGB3X3Filter
{
  v2 = [CIFilter filterWithName:@"CIConvolutionRGB3X3"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__convolutionRGB3X3Filter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convolutionRGB3X3Filter_onceToken != -1)
  {
    dispatch_once(&convolutionRGB3X3Filter_onceToken, block);
  }

  return v2;
}

objc_class *__45__CIFilter_Builtins__convolutionRGB3X3Filter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_weights) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_weights];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setWeights_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bias, floatGetter, "f@:");

    return class_addMethod(v13, sel_setBias_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)convolutionRGB5X5Filter
{
  v2 = [CIFilter filterWithName:@"CIConvolutionRGB5X5"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__convolutionRGB5X5Filter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convolutionRGB5X5Filter_onceToken != -1)
  {
    dispatch_once(&convolutionRGB5X5Filter_onceToken, block);
  }

  return v2;
}

objc_class *__45__CIFilter_Builtins__convolutionRGB5X5Filter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_weights) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_weights];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setWeights_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bias, floatGetter, "f@:");

    return class_addMethod(v13, sel_setBias_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)convolutionRGB7X7Filter
{
  v2 = [CIFilter filterWithName:@"CIConvolutionRGB7X7"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__convolutionRGB7X7Filter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convolutionRGB7X7Filter_onceToken != -1)
  {
    dispatch_once(&convolutionRGB7X7Filter_onceToken, block);
  }

  return v2;
}

objc_class *__45__CIFilter_Builtins__convolutionRGB7X7Filter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_weights) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_weights];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setWeights_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bias, floatGetter, "f@:");

    return class_addMethod(v13, sel_setBias_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)convolutionRGB9HorizontalFilter
{
  v2 = [CIFilter filterWithName:@"CIConvolutionRGB9Horizontal"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CIFilter_Builtins__convolutionRGB9HorizontalFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convolutionRGB9HorizontalFilter_onceToken != -1)
  {
    dispatch_once(&convolutionRGB9HorizontalFilter_onceToken, block);
  }

  return v2;
}

objc_class *__53__CIFilter_Builtins__convolutionRGB9HorizontalFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_weights) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_weights];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setWeights_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bias, floatGetter, "f@:");

    return class_addMethod(v13, sel_setBias_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)convolutionRGB9VerticalFilter
{
  v2 = [CIFilter filterWithName:@"CIConvolutionRGB9Vertical"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CIFilter_Builtins__convolutionRGB9VerticalFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (convolutionRGB9VerticalFilter_onceToken != -1)
  {
    dispatch_once(&convolutionRGB9VerticalFilter_onceToken, block);
  }

  return v2;
}

objc_class *__51__CIFilter_Builtins__convolutionRGB9VerticalFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_weights) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_weights];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setWeights_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_weights, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setWeights_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_bias, floatGetter, "f@:");

    return class_addMethod(v13, sel_setBias_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)coreMLModelFilter
{
  v2 = [CIFilter filterWithName:@"CICoreMLModelFilter"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__coreMLModelFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (coreMLModelFilter_onceToken != -1)
  {
    dispatch_once(&coreMLModelFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__coreMLModelFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_model) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_model];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_model, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setModel_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setModel_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_model, objGetter, "@@:");
    }

    v17 = [v7 instancesRespondToSelector:sel_setModel_];
    v11 = objSetter;
    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_headIndex, floatGetter, "f@:");
    class_addMethod(v13, sel_setHeadIndex_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_softmaxNormalization, BOOLGetter, "B@:");

    return class_addMethod(v15, sel_setSoftmaxNormalization_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)crystallizeFilter
{
  v2 = [CIFilter filterWithName:@"CICrystallize"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__crystallizeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (crystallizeFilter_onceToken != -1)
  {
    dispatch_once(&crystallizeFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__crystallizeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_radius, floatGetter, "f@:");
    class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_center, pointGetter, "{CGPoint=dd}@:");

    return class_addMethod(v9, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  return result;
}

+ (CIFilter)depthOfFieldFilter
{
  v2 = [CIFilter filterWithName:@"CIDepthOfField"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CIFilter_Builtins__depthOfFieldFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (depthOfFieldFilter_onceToken != -1)
  {
    dispatch_once(&depthOfFieldFilter_onceToken, block);
  }

  return v2;
}

objc_class *__40__CIFilter_Builtins__depthOfFieldFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v18 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v18 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_point0, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setPoint0_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_point1, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v9, sel_setPoint1_, pointSetter, "v@:{CGPoint=dd}}");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_saturation, floatGetter, "f@:");
    class_addMethod(v11, sel_setSaturation_, floatSetter, "v@:f");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_unsharpMaskRadius, floatGetter, "f@:");
    class_addMethod(v13, sel_setUnsharpMaskRadius_, floatSetter, "v@:f");
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_unsharpMaskIntensity, floatGetter, "f@:");
    class_addMethod(v15, sel_setUnsharpMaskIntensity_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v17 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v17, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)edgesFilter
{
  v2 = [CIFilter filterWithName:@"CIEdges"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CIFilter_Builtins__edgesFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (edgesFilter_onceToken != -1)
  {
    dispatch_once(&edgesFilter_onceToken, block);
  }

  return v2;
}

objc_class *__33__CIFilter_Builtins__edgesFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_intensity, floatGetter, "f@:");

    return class_addMethod(v7, sel_setIntensity_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)edgeWorkFilter
{
  v2 = [CIFilter filterWithName:@"CIEdgeWork"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CIFilter_Builtins__edgeWorkFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (edgeWorkFilter_onceToken != -1)
  {
    dispatch_once(&edgeWorkFilter_onceToken, block);
  }

  return v2;
}

objc_class *__36__CIFilter_Builtins__edgeWorkFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)gloomFilter
{
  v2 = [CIFilter filterWithName:@"CIGloom"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CIFilter_Builtins__gloomFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (gloomFilter_onceToken != -1)
  {
    dispatch_once(&gloomFilter_onceToken, block);
  }

  return v2;
}

objc_class *__33__CIFilter_Builtins__gloomFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_radius, floatGetter, "f@:");
    class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_intensity, floatGetter, "f@:");

    return class_addMethod(v9, sel_setIntensity_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)heightFieldFromMaskFilter
{
  v2 = [CIFilter filterWithName:@"CIHeightFieldFromMask"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CIFilter_Builtins__heightFieldFromMaskFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (heightFieldFromMaskFilter_onceToken != -1)
  {
    dispatch_once(&heightFieldFromMaskFilter_onceToken, block);
  }

  return v2;
}

objc_class *__47__CIFilter_Builtins__heightFieldFromMaskFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)hexagonalPixellateFilter
{
  v2 = [CIFilter filterWithName:@"CIHexagonalPixellate"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__hexagonalPixellateFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (hexagonalPixellateFilter_onceToken != -1)
  {
    dispatch_once(&hexagonalPixellateFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__hexagonalPixellateFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_scale, floatGetter, "f@:");

    return class_addMethod(v9, sel_setScale_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)highlightShadowAdjustFilter
{
  v2 = [CIFilter filterWithName:@"CIHighlightShadowAdjust"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CIFilter_Builtins__highlightShadowAdjustFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (highlightShadowAdjustFilter_onceToken != -1)
  {
    dispatch_once(&highlightShadowAdjustFilter_onceToken, block);
  }

  return v2;
}

objc_class *__49__CIFilter_Builtins__highlightShadowAdjustFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_radius, floatGetter, "f@:");
    class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_shadowAmount, floatGetter, "f@:");
    class_addMethod(v9, sel_setShadowAmount_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_highlightAmount, floatGetter, "f@:");

    return class_addMethod(v11, sel_setHighlightAmount_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)lineOverlayFilter
{
  v2 = [CIFilter filterWithName:@"CILineOverlay"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__lineOverlayFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (lineOverlayFilter_onceToken != -1)
  {
    dispatch_once(&lineOverlayFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__lineOverlayFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_NRNoiseLevel, floatGetter, "f@:");
    class_addMethod(v7, sel_setNRNoiseLevel_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_NRSharpness, floatGetter, "f@:");
    class_addMethod(v9, sel_setNRSharpness_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_edgeIntensity, floatGetter, "f@:");
    class_addMethod(v11, sel_setEdgeIntensity_, floatSetter, "v@:f");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_threshold, floatGetter, "f@:");
    class_addMethod(v13, sel_setThreshold_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_contrast, floatGetter, "f@:");

    return class_addMethod(v15, sel_setContrast_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)mixFilter
{
  v2 = [CIFilter filterWithName:@"CIMix"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CIFilter_Builtins__mixFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (mixFilter_onceToken != -1)
  {
    dispatch_once(&mixFilter_onceToken, block);
  }

  return v2;
}

objc_class *__31__CIFilter_Builtins__mixFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_backgroundImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_backgroundImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setBackgroundImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_backgroundImage, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setBackgroundImage_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_amount, floatGetter, "f@:");

    return class_addMethod(v13, sel_setAmount_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)personSegmentationFilter
{
  v2 = [CIFilter filterWithName:@"CIPersonSegmentation"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__personSegmentationFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (personSegmentationFilter_onceToken != -1)
  {
    dispatch_once(&personSegmentationFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__personSegmentationFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_qualityLevel, uintGetter, "Q@:");

    return class_addMethod(v7, sel_setQualityLevel_, uintSetter, "v@:Q}");
  }

  return result;
}

+ (CIFilter)pixellateFilter
{
  v2 = [CIFilter filterWithName:@"CIPixellate"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CIFilter_Builtins__pixellateFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (pixellateFilter_onceToken != -1)
  {
    dispatch_once(&pixellateFilter_onceToken, block);
  }

  return v2;
}

objc_class *__37__CIFilter_Builtins__pixellateFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_scale, floatGetter, "f@:");

    return class_addMethod(v9, sel_setScale_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)pointillizeFilter
{
  v2 = [CIFilter filterWithName:@"CIPointillize"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__pointillizeFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (pointillizeFilter_onceToken != -1)
  {
    dispatch_once(&pointillizeFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__pointillizeFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_radius, floatGetter, "f@:");
    class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_center, pointGetter, "{CGPoint=dd}@:");

    return class_addMethod(v9, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  return result;
}

+ (CIFilter)shadedMaterialFilter
{
  v2 = [CIFilter filterWithName:@"CIShadedMaterial"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__shadedMaterialFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (shadedMaterialFilter_onceToken != -1)
  {
    dispatch_once(&shadedMaterialFilter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__shadedMaterialFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_shadingImage) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_shadingImage];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_shadingImage, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setShadingImage_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setShadingImage_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_shadingImage, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setShadingImage_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_scale, floatGetter, "f@:");

    return class_addMethod(v13, sel_setScale_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)spotColorFilter
{
  v2 = [CIFilter filterWithName:@"CISpotColor"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CIFilter_Builtins__spotColorFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (spotColorFilter_onceToken != -1)
  {
    dispatch_once(&spotColorFilter_onceToken, block);
  }

  return v2;
}

objc_class *__37__CIFilter_Builtins__spotColorFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v54 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v54 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_centerColor1) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_centerColor1];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_centerColor1, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setCenterColor1_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setCenterColor1_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_centerColor1, objGetter, "@@:");
    }

    v55 = [v7 instancesRespondToSelector:sel_setCenterColor1_];
    v11 = objSetter;
    if ((v55 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [NSStringFromSelector(sel_replacementColor1) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_replacementColor1];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_replacementColor1, iiGetter, "@@:");
    }

    v16 = [v13 instancesRespondToSelector:sel_setReplacementColor1_];
    v17 = iiSetter;
    if ((v16 & 1) == 0)
    {
LABEL_18:
      class_addMethod(v13, sel_setReplacementColor1_, v17, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_replacementColor1, objGetter, "@@:");
    }

    v56 = [v13 instancesRespondToSelector:sel_setReplacementColor1_];
    v17 = objSetter;
    if ((v56 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v18 = objc_opt_class();
  if (v18)
  {
    v19 = v18;
    class_addMethod(v18, sel_closeness1, floatGetter, "f@:");
    class_addMethod(v19, sel_setCloseness1_, floatSetter, "v@:f");
  }

  v20 = objc_opt_class();
  if (v20)
  {
    v21 = v20;
    class_addMethod(v20, sel_contrast1, floatGetter, "f@:");
    class_addMethod(v21, sel_setContrast1_, floatSetter, "v@:f");
  }

  v22 = objc_opt_class();
  if (v22)
  {
    v23 = v22;
    v24 = [NSStringFromSelector(sel_centerColor2) isEqualToString:@"inputImage"];
    v25 = [v23 instancesRespondToSelector:sel_centerColor2];
    if (v24)
    {
      if ((v25 & 1) == 0)
      {
        class_addMethod(v23, sel_centerColor2, iiGetter, "@@:");
      }

      v26 = [v23 instancesRespondToSelector:sel_setCenterColor2_];
      v27 = iiSetter;
      if ((v26 & 1) == 0)
      {
LABEL_28:
        class_addMethod(v23, sel_setCenterColor2_, v27, "v@:@");
      }
    }

    else
    {
      if ((v25 & 1) == 0)
      {
        class_addMethod(v23, sel_centerColor2, objGetter, "@@:");
      }

      v57 = [v23 instancesRespondToSelector:sel_setCenterColor2_];
      v27 = objSetter;
      if ((v57 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  v28 = objc_opt_class();
  if (!v28)
  {
    goto LABEL_35;
  }

  v29 = v28;
  v30 = [NSStringFromSelector(sel_replacementColor2) isEqualToString:@"inputImage"];
  v31 = [v29 instancesRespondToSelector:sel_replacementColor2];
  if (v30)
  {
    if ((v31 & 1) == 0)
    {
      class_addMethod(v29, sel_replacementColor2, iiGetter, "@@:");
    }

    v32 = [v29 instancesRespondToSelector:sel_setReplacementColor2_];
    v33 = iiSetter;
    if ((v32 & 1) == 0)
    {
LABEL_34:
      class_addMethod(v29, sel_setReplacementColor2_, v33, "v@:@");
    }
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      class_addMethod(v29, sel_replacementColor2, objGetter, "@@:");
    }

    v58 = [v29 instancesRespondToSelector:sel_setReplacementColor2_];
    v33 = objSetter;
    if ((v58 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  v34 = objc_opt_class();
  if (v34)
  {
    v35 = v34;
    class_addMethod(v34, sel_closeness2, floatGetter, "f@:");
    class_addMethod(v35, sel_setCloseness2_, floatSetter, "v@:f");
  }

  v36 = objc_opt_class();
  if (v36)
  {
    v37 = v36;
    class_addMethod(v36, sel_contrast2, floatGetter, "f@:");
    class_addMethod(v37, sel_setContrast2_, floatSetter, "v@:f");
  }

  v38 = objc_opt_class();
  if (v38)
  {
    v39 = v38;
    v40 = [NSStringFromSelector(sel_centerColor3) isEqualToString:@"inputImage"];
    v41 = [v39 instancesRespondToSelector:sel_centerColor3];
    if (v40)
    {
      if ((v41 & 1) == 0)
      {
        class_addMethod(v39, sel_centerColor3, iiGetter, "@@:");
      }

      v42 = [v39 instancesRespondToSelector:sel_setCenterColor3_];
      v43 = iiSetter;
      if ((v42 & 1) == 0)
      {
LABEL_44:
        class_addMethod(v39, sel_setCenterColor3_, v43, "v@:@");
      }
    }

    else
    {
      if ((v41 & 1) == 0)
      {
        class_addMethod(v39, sel_centerColor3, objGetter, "@@:");
      }

      v59 = [v39 instancesRespondToSelector:sel_setCenterColor3_];
      v43 = objSetter;
      if ((v59 & 1) == 0)
      {
        goto LABEL_44;
      }
    }
  }

  v44 = objc_opt_class();
  if (!v44)
  {
    goto LABEL_51;
  }

  v45 = v44;
  v46 = [NSStringFromSelector(sel_replacementColor3) isEqualToString:@"inputImage"];
  v47 = [v45 instancesRespondToSelector:sel_replacementColor3];
  if (v46)
  {
    if ((v47 & 1) == 0)
    {
      class_addMethod(v45, sel_replacementColor3, iiGetter, "@@:");
    }

    v48 = [v45 instancesRespondToSelector:sel_setReplacementColor3_];
    v49 = iiSetter;
    if ((v48 & 1) == 0)
    {
LABEL_50:
      class_addMethod(v45, sel_setReplacementColor3_, v49, "v@:@");
    }
  }

  else
  {
    if ((v47 & 1) == 0)
    {
      class_addMethod(v45, sel_replacementColor3, objGetter, "@@:");
    }

    v60 = [v45 instancesRespondToSelector:sel_setReplacementColor3_];
    v49 = objSetter;
    if ((v60 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

LABEL_51:
  v50 = objc_opt_class();
  if (v50)
  {
    v51 = v50;
    class_addMethod(v50, sel_closeness3, floatGetter, "f@:");
    class_addMethod(v51, sel_setCloseness3_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v53 = result;
    class_addMethod(result, sel_contrast3, floatGetter, "f@:");

    return class_addMethod(v53, sel_setContrast3_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)spotLightFilter
{
  v2 = [CIFilter filterWithName:@"CISpotLight"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CIFilter_Builtins__spotLightFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (spotLightFilter_onceToken != -1)
  {
    dispatch_once(&spotLightFilter_onceToken, block);
  }

  return v2;
}

uint64_t __37__CIFilter_Builtins__spotLightFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v27 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v27 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_lightPosition) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_lightPosition];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_lightPosition, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setLightPosition_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setLightPosition_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_lightPosition, objGetter, "@@:");
    }

    v28 = [v7 instancesRespondToSelector:sel_setLightPosition_];
    v11 = objSetter;
    if ((v28 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = objc_opt_class();
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [NSStringFromSelector(sel_lightPointsAt) isEqualToString:@"inputImage"];
  v15 = [v13 instancesRespondToSelector:sel_lightPointsAt];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_lightPointsAt, iiGetter, "@@:");
    }

    v16 = [v13 instancesRespondToSelector:sel_setLightPointsAt_];
    v17 = iiSetter;
    if ((v16 & 1) == 0)
    {
LABEL_18:
      class_addMethod(v13, sel_setLightPointsAt_, v17, "v@:@");
    }
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      class_addMethod(v13, sel_lightPointsAt, objGetter, "@@:");
    }

    v29 = [v13 instancesRespondToSelector:sel_setLightPointsAt_];
    v17 = objSetter;
    if ((v29 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v18 = objc_opt_class();
  if (v18)
  {
    v19 = v18;
    class_addMethod(v18, sel_brightness, floatGetter, "f@:");
    class_addMethod(v19, sel_setBrightness_, floatSetter, "v@:f");
  }

  v20 = objc_opt_class();
  if (v20)
  {
    v21 = v20;
    class_addMethod(v20, sel_concentration, floatGetter, "f@:");
    class_addMethod(v21, sel_setConcentration_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v23 = result;
    v24 = [NSStringFromSelector(sel_color) isEqualToString:@"inputImage"];
    v25 = [v23 instancesRespondToSelector:sel_color];
    if (v24)
    {
      if ((v25 & 1) == 0)
      {
        class_addMethod(v23, sel_color, iiGetter, "@@:");
      }

      result = [v23 instancesRespondToSelector:sel_setColor_];
      v26 = iiSetter;
      if ((result & 1) == 0)
      {
LABEL_28:

        return class_addMethod(v23, sel_setColor_, v26, "v@:@");
      }
    }

    else
    {
      if ((v25 & 1) == 0)
      {
        class_addMethod(v23, sel_color, objGetter, "@@:");
      }

      result = [v23 instancesRespondToSelector:sel_setColor_];
      v26 = objSetter;
      if ((result & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  return result;
}

+ (CIFilter)bokehBlurFilter
{
  v2 = [CIFilter filterWithName:@"CIBokehBlur"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CIFilter_Builtins__bokehBlurFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (bokehBlurFilter_onceToken != -1)
  {
    dispatch_once(&bokehBlurFilter_onceToken, block);
  }

  return v2;
}

objc_class *__37__CIFilter_Builtins__bokehBlurFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_radius, floatGetter, "f@:");
    class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_ringAmount, floatGetter, "f@:");
    class_addMethod(v9, sel_setRingAmount_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_ringSize, floatGetter, "f@:");
    class_addMethod(v11, sel_setRingSize_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_softness, floatGetter, "f@:");

    return class_addMethod(v13, sel_setSoftness_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)boxBlurFilter
{
  v2 = [CIFilter filterWithName:@"CIBoxBlur"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CIFilter_Builtins__boxBlurFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (boxBlurFilter_onceToken != -1)
  {
    dispatch_once(&boxBlurFilter_onceToken, block);
  }

  return v2;
}

objc_class *__35__CIFilter_Builtins__boxBlurFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)discBlurFilter
{
  v2 = [CIFilter filterWithName:@"CIDiscBlur"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CIFilter_Builtins__discBlurFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (discBlurFilter_onceToken != -1)
  {
    dispatch_once(&discBlurFilter_onceToken, block);
  }

  return v2;
}

objc_class *__36__CIFilter_Builtins__discBlurFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)gaussianBlurFilter
{
  v2 = [CIFilter filterWithName:@"CIGaussianBlur"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CIFilter_Builtins__gaussianBlurFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (gaussianBlurFilter_onceToken != -1)
  {
    dispatch_once(&gaussianBlurFilter_onceToken, block);
  }

  return v2;
}

objc_class *__40__CIFilter_Builtins__gaussianBlurFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)maskedVariableBlurFilter
{
  v2 = [CIFilter filterWithName:@"CIMaskedVariableBlur"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__maskedVariableBlurFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (maskedVariableBlurFilter_onceToken != -1)
  {
    dispatch_once(&maskedVariableBlurFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__maskedVariableBlurFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v14 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [NSStringFromSelector(sel_mask) isEqualToString:@"inputImage"];
  v9 = [v7 instancesRespondToSelector:sel_mask];
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_mask, iiGetter, "@@:");
    }

    v10 = [v7 instancesRespondToSelector:sel_setMask_];
    v11 = iiSetter;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      class_addMethod(v7, sel_setMask_, v11, "v@:@");
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      class_addMethod(v7, sel_mask, objGetter, "@@:");
    }

    v15 = [v7 instancesRespondToSelector:sel_setMask_];
    v11 = objSetter;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = objc_opt_class();
  if (result)
  {
    v13 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v13, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)morphologyGradientFilter
{
  v2 = [CIFilter filterWithName:@"CIMorphologyGradient"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CIFilter_Builtins__morphologyGradientFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (morphologyGradientFilter_onceToken != -1)
  {
    dispatch_once(&morphologyGradientFilter_onceToken, block);
  }

  return v2;
}

objc_class *__46__CIFilter_Builtins__morphologyGradientFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)morphologyMaximumFilter
{
  v2 = [CIFilter filterWithName:@"CIMorphologyMaximum"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__morphologyMaximumFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (morphologyMaximumFilter_onceToken != -1)
  {
    dispatch_once(&morphologyMaximumFilter_onceToken, block);
  }

  return v2;
}

objc_class *__45__CIFilter_Builtins__morphologyMaximumFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)morphologyMinimumFilter
{
  v2 = [CIFilter filterWithName:@"CIMorphologyMinimum"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CIFilter_Builtins__morphologyMinimumFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (morphologyMinimumFilter_onceToken != -1)
  {
    dispatch_once(&morphologyMinimumFilter_onceToken, block);
  }

  return v2;
}

objc_class *__45__CIFilter_Builtins__morphologyMinimumFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_radius, floatGetter, "f@:");

    return class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)morphologyRectangleMaximumFilter
{
  v2 = [CIFilter filterWithName:@"CIMorphologyRectangleMaximum"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CIFilter_Builtins__morphologyRectangleMaximumFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (morphologyRectangleMaximumFilter_onceToken != -1)
  {
    dispatch_once(&morphologyRectangleMaximumFilter_onceToken, block);
  }

  return v2;
}

objc_class *__54__CIFilter_Builtins__morphologyRectangleMaximumFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_width, floatGetter, "f@:");
    class_addMethod(v7, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_height, floatGetter, "f@:");

    return class_addMethod(v9, sel_setHeight_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)morphologyRectangleMinimumFilter
{
  v2 = [CIFilter filterWithName:@"CIMorphologyRectangleMinimum"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CIFilter_Builtins__morphologyRectangleMinimumFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (morphologyRectangleMinimumFilter_onceToken != -1)
  {
    dispatch_once(&morphologyRectangleMinimumFilter_onceToken, block);
  }

  return v2;
}

objc_class *__54__CIFilter_Builtins__morphologyRectangleMinimumFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_width, floatGetter, "f@:");
    class_addMethod(v7, sel_setWidth_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_height, floatGetter, "f@:");

    return class_addMethod(v9, sel_setHeight_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)motionBlurFilter
{
  v2 = [CIFilter filterWithName:@"CIMotionBlur"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CIFilter_Builtins__motionBlurFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (motionBlurFilter_onceToken != -1)
  {
    dispatch_once(&motionBlurFilter_onceToken, block);
  }

  return v2;
}

objc_class *__38__CIFilter_Builtins__motionBlurFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_radius, floatGetter, "f@:");
    class_addMethod(v7, sel_setRadius_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_angle, floatGetter, "f@:");

    return class_addMethod(v9, sel_setAngle_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)noiseReductionFilter
{
  v2 = [CIFilter filterWithName:@"CINoiseReduction"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CIFilter_Builtins__noiseReductionFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (noiseReductionFilter_onceToken != -1)
  {
    dispatch_once(&noiseReductionFilter_onceToken, block);
  }

  return v2;
}

objc_class *__42__CIFilter_Builtins__noiseReductionFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_noiseLevel, floatGetter, "f@:");
    class_addMethod(v7, sel_setNoiseLevel_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_sharpness, floatGetter, "f@:");

    return class_addMethod(v9, sel_setSharpness_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)zoomBlurFilter
{
  v2 = [CIFilter filterWithName:@"CIZoomBlur"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CIFilter_Builtins__zoomBlurFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (zoomBlurFilter_onceToken != -1)
  {
    dispatch_once(&zoomBlurFilter_onceToken, block);
  }

  return v2;
}

objc_class *__36__CIFilter_Builtins__zoomBlurFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v10 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_center, pointGetter, "{CGPoint=dd}@:");
    class_addMethod(v7, sel_setCenter_, pointSetter, "v@:{CGPoint=dd}}");
  }

  result = objc_opt_class();
  if (result)
  {
    v9 = result;
    class_addMethod(result, sel_amount, floatGetter, "f@:");

    return class_addMethod(v9, sel_setAmount_, floatSetter, "v@:f");
  }

  return result;
}

+ (id)areaAlphaWeightedHistogramFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaAlphaWeightedHistogram"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CIFilter_Builtins__areaAlphaWeightedHistogramFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaAlphaWeightedHistogramFilter_onceToken != -1)
  {
    dispatch_once(&areaAlphaWeightedHistogramFilter_onceToken, block);
  }

  return v2;
}

objc_class *__54__CIFilter_Builtins__areaAlphaWeightedHistogramFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_scale, floatGetter, "f@:");
    class_addMethod(v9, sel_setScale_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_count, intGetter, "q@:");

    return class_addMethod(v11, sel_setCount_, intSetter, "v@:q}");
  }

  return result;
}

+ (CIFilter)areaAverageFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaAverage"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__areaAverageFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaAverageFilter_onceToken != -1)
  {
    dispatch_once(&areaAverageFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__areaAverageFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (id)areaAverageMaximumRedFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaAverageMaximumRed"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CIFilter_Builtins__areaAverageMaximumRedFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaAverageMaximumRedFilter_onceToken != -1)
  {
    dispatch_once(&areaAverageMaximumRedFilter_onceToken, block);
  }

  return v2;
}

objc_class *__49__CIFilter_Builtins__areaAverageMaximumRedFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (id)areaBoundsRedFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaBoundsRed"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CIFilter_Builtins__areaBoundsRedFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaBoundsRedFilter_onceToken != -1)
  {
    dispatch_once(&areaBoundsRedFilter_onceToken, block);
  }

  return v2;
}

objc_class *__41__CIFilter_Builtins__areaBoundsRedFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (CIFilter)areaHistogramFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaHistogram"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CIFilter_Builtins__areaHistogramFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaHistogramFilter_onceToken != -1)
  {
    dispatch_once(&areaHistogramFilter_onceToken, block);
  }

  return v2;
}

objc_class *__41__CIFilter_Builtins__areaHistogramFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_scale, floatGetter, "f@:");
    class_addMethod(v9, sel_setScale_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_count, intGetter, "q@:");

    return class_addMethod(v11, sel_setCount_, intSetter, "v@:q}");
  }

  return result;
}

+ (CIFilter)areaLogarithmicHistogramFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaLogarithmicHistogram"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CIFilter_Builtins__areaLogarithmicHistogramFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaLogarithmicHistogramFilter_onceToken != -1)
  {
    dispatch_once(&areaLogarithmicHistogramFilter_onceToken, block);
  }

  return v2;
}

objc_class *__52__CIFilter_Builtins__areaLogarithmicHistogramFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v16 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v16 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_scale, floatGetter, "f@:");
    class_addMethod(v9, sel_setScale_, floatSetter, "v@:f");
  }

  v10 = objc_opt_class();
  if (v10)
  {
    v11 = v10;
    class_addMethod(v10, sel_count, intGetter, "q@:");
    class_addMethod(v11, sel_setCount_, intSetter, "v@:q}");
  }

  v12 = objc_opt_class();
  if (v12)
  {
    v13 = v12;
    class_addMethod(v12, sel_minimumStop, floatGetter, "f@:");
    class_addMethod(v13, sel_setMinimumStop_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v15 = result;
    class_addMethod(result, sel_maximumStop, floatGetter, "f@:");

    return class_addMethod(v15, sel_setMaximumStop_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)areaMaximumFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaMaximum"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__areaMaximumFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaMaximumFilter_onceToken != -1)
  {
    dispatch_once(&areaMaximumFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__areaMaximumFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (CIFilter)areaMaximumAlphaFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaMaximumAlpha"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__areaMaximumAlphaFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaMaximumAlphaFilter_onceToken != -1)
  {
    dispatch_once(&areaMaximumAlphaFilter_onceToken, block);
  }

  return v2;
}

objc_class *__44__CIFilter_Builtins__areaMaximumAlphaFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (CIFilter)areaMinimumFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaMinimum"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CIFilter_Builtins__areaMinimumFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaMinimumFilter_onceToken != -1)
  {
    dispatch_once(&areaMinimumFilter_onceToken, block);
  }

  return v2;
}

objc_class *__39__CIFilter_Builtins__areaMinimumFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (CIFilter)areaMinimumAlphaFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaMinimumAlpha"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__areaMinimumAlphaFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaMinimumAlphaFilter_onceToken != -1)
  {
    dispatch_once(&areaMinimumAlphaFilter_onceToken, block);
  }

  return v2;
}

objc_class *__44__CIFilter_Builtins__areaMinimumAlphaFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (CIFilter)areaMinMaxFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaMinMax"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CIFilter_Builtins__areaMinMaxFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaMinMaxFilter_onceToken != -1)
  {
    dispatch_once(&areaMinMaxFilter_onceToken, block);
  }

  return v2;
}

objc_class *__38__CIFilter_Builtins__areaMinMaxFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (CIFilter)areaMinMaxRedFilter
{
  v2 = [CIFilter filterWithName:@"CIAreaMinMaxRed"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CIFilter_Builtins__areaMinMaxRedFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (areaMinMaxRedFilter_onceToken != -1)
  {
    dispatch_once(&areaMinMaxRedFilter_onceToken, block);
  }

  return v2;
}

objc_class *__41__CIFilter_Builtins__areaMinMaxRedFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (CIFilter)columnAverageFilter
{
  v2 = [CIFilter filterWithName:@"CIColumnAverage"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CIFilter_Builtins__columnAverageFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (columnAverageFilter_onceToken != -1)
  {
    dispatch_once(&columnAverageFilter_onceToken, block);
  }

  return v2;
}

objc_class *__41__CIFilter_Builtins__columnAverageFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (CIFilter)histogramDisplayFilter
{
  v2 = [CIFilter filterWithName:@"CIHistogramDisplayFilter"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CIFilter_Builtins__histogramDisplayFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (histogramDisplayFilter_onceToken != -1)
  {
    dispatch_once(&histogramDisplayFilter_onceToken, block);
  }

  return v2;
}

objc_class *__44__CIFilter_Builtins__histogramDisplayFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v12 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_height, floatGetter, "f@:");
    class_addMethod(v7, sel_setHeight_, floatSetter, "v@:f");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    class_addMethod(v8, sel_highLimit, floatGetter, "f@:");
    class_addMethod(v9, sel_setHighLimit_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v11 = result;
    class_addMethod(result, sel_lowLimit, floatGetter, "f@:");

    return class_addMethod(v11, sel_setLowLimit_, floatSetter, "v@:f");
  }

  return result;
}

+ (CIFilter)KMeansFilter
{
  v2 = [CIFilter filterWithName:@"CIKMeans"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CIFilter_Builtins__KMeansFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (KMeansFilter_onceToken != -1)
  {
    dispatch_once(&KMeansFilter_onceToken, block);
  }

  return v2;
}

objc_class *__34__CIFilter_Builtins__KMeansFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v20 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v20 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    class_addMethod(v6, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");
    class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  v8 = objc_opt_class();
  if (v8)
  {
    v9 = v8;
    v10 = [NSStringFromSelector(sel_inputMeans) isEqualToString:@"inputImage"];
    v11 = [v9 instancesRespondToSelector:sel_inputMeans];
    if (v10)
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_inputMeans, iiGetter, "@@:");
      }

      v12 = [v9 instancesRespondToSelector:sel_setInputMeans_];
      v13 = iiSetter;
      if ((v12 & 1) == 0)
      {
LABEL_14:
        class_addMethod(v9, sel_setInputMeans_, v13, "v@:@");
      }
    }

    else
    {
      if ((v11 & 1) == 0)
      {
        class_addMethod(v9, sel_inputMeans, objGetter, "@@:");
      }

      v21 = [v9 instancesRespondToSelector:sel_setInputMeans_];
      v13 = objSetter;
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v14 = objc_opt_class();
  if (v14)
  {
    v15 = v14;
    class_addMethod(v14, sel_count, intGetter, "q@:");
    class_addMethod(v15, sel_setCount_, intSetter, "v@:q}");
  }

  v16 = objc_opt_class();
  if (v16)
  {
    v17 = v16;
    class_addMethod(v16, sel_passes, floatGetter, "f@:");
    class_addMethod(v17, sel_setPasses_, floatSetter, "v@:f");
  }

  result = objc_opt_class();
  if (result)
  {
    v19 = result;
    class_addMethod(result, sel_perceptual, BOOLGetter, "B@:");

    return class_addMethod(v19, sel_setPerceptual_, BOOLSetter, "v@:B}");
  }

  return result;
}

+ (CIFilter)rowAverageFilter
{
  v2 = [CIFilter filterWithName:@"CIRowAverage"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CIFilter_Builtins__rowAverageFilter__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = v2;
  if (rowAverageFilter_onceToken != -1)
  {
    dispatch_once(&rowAverageFilter_onceToken, block);
  }

  return v2;
}

objc_class *__38__CIFilter_Builtins__rowAverageFilter__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = v0;
    v2 = [NSStringFromSelector(sel_inputImage) isEqualToString:@"inputImage"];
    v3 = [v1 instancesRespondToSelector:sel_inputImage];
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, iiGetter, "@@:");
      }

      v4 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = iiSetter;
      if ((v4 & 1) == 0)
      {
LABEL_6:
        class_addMethod(v1, sel_setInputImage_, v5, "v@:@");
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        class_addMethod(v1, sel_inputImage, objGetter, "@@:");
      }

      v8 = [v1 instancesRespondToSelector:sel_setInputImage_];
      v5 = objSetter;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  result = objc_opt_class();
  if (result)
  {
    v7 = result;
    class_addMethod(result, sel_extent, rectGetter, "{CGRect={CGPoint=dd}{CGSize=dd}}@:");

    return class_addMethod(v7, sel_setExtent_, rectSetter, "v@:{CGRect={CGPoint=dd}{CGSize=dd}}");
  }

  return result;
}

+ (BOOL)exchangeImplementationsForClass
{
  v2 = objc_opt_class();
  v3 = [wrappedClasses count];
  if (v3 == 89)
  {
    NSLog(&cfstr_CanTWrapAnymor.isa);
    v6 = NSStringFromClass(v2);
    NSLog(&cfstr_WillNotBeWrapp.isa, v6);
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", v2), "hash")}];
    v5 = wrappedClasses;
    objc_sync_enter(wrappedClasses);
    if ([wrappedClasses containsObject:v4])
    {
      objc_sync_exit(v5);
    }

    else
    {
      [wrappedClasses addObject:v4];
      objc_sync_exit(v5);
      ++exchangeImplementationsForClass_count;
      v8 = NSSelectorFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"wrappedOutputImage%d", -[objc_class indexForWrapperNumber:](v2, "indexForWrapperNumber:")]);
      InstanceMethod = class_getInstanceMethod(v2, sel_outputImage);
      v10 = class_getInstanceMethod(v2, v8);
      Implementation = method_getImplementation(v10);
      TypeEncoding = method_getTypeEncoding(v10);
      if (class_addMethod(v2, sel_outputImage, Implementation, TypeEncoding))
      {
        v13 = method_getImplementation(InstanceMethod);
        v14 = method_getTypeEncoding(InstanceMethod);
        class_replaceMethod(v2, v8, v13, v14);
      }

      else
      {
        method_exchangeImplementations(InstanceMethod, v10);
      }
    }
  }

  return v3 != 89;
}

+ (BOOL)wrapClassIfNeeded:(Class)needed
{
  if (enableFilterInterposing_onceToken != -1)
  {
    +[CIFilter(Interposer) wrapClassIfNeeded:];
  }

  if (enableFilterInterposing_enableFilterposing != 1)
  {
    return 0;
  }

  if (wrapClassIfNeeded__onceToken != -1)
  {
    +[CIFilter(Interposer) wrapClassIfNeeded:];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", needed), "hash")}];
  v5 = wrappedClasses;
  objc_sync_enter(wrappedClasses);
  LOBYTE(v4) = [wrappedClasses containsObject:v4];
  objc_sync_exit(v5);
  if (v4)
  {
    return 1;
  }

  return [(objc_class *)needed exchangeImplementationsForClass];
}

id __42__CIFilter_Interposer__wrapClassIfNeeded___block_invoke()
{
  wrappedClasses = [MEMORY[0x1E695DFA8] set];
  filtersToSkip = [MEMORY[0x1E695DFA8] set];
  appendFilters = [MEMORY[0x1E695DF90] dictionary];
  result = [MEMORY[0x1E695DF90] dictionary];
  prependFilters = result;
  if (!replacementFilters)
  {
    result = [MEMORY[0x1E695DF90] dictionary];
    replacementFilters = result;
  }

  return result;
}

- (void)_prependSingleFilter:(id)filter
{
  v23 = *MEMORY[0x1E69E9840];
  if (filter && [filter count] == 3)
  {
    v5 = [filter objectAtIndexedSubscript:0];
    v6 = [filter objectAtIndexedSubscript:1];
    v7 = [filter objectAtIndexedSubscript:2];
    if ([(NSArray *)[(CIFilter *)self inputKeys] containsObject:v6])
    {
      if (v5 && v7)
      {
        v8 = [CIFilter filterWithName:v5];
        [(CIFilter *)v8 setDefaults];
        [(CIFilter *)v8 setValuesForKeysWithDictionary:v7];
        v9 = [MEMORY[0x1E695DFA8] setWithArray:{-[CIFilter inputKeys](v8, "inputKeys")}];
        [v9 intersectSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", -[CIFilter inputKeys](self, "inputKeys"))}];
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v18 + 1) + 8 * i);
              v15 = [(CIFilter *)self valueForKey:v14];
              if (v15)
              {
                [(CIFilter *)v8 setValue:v15 forKey:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v11);
        }

        if (([v9 containsObject:@"inputImage"] & 1) == 0)
        {
          v16 = [(CIFilter *)self valueForKey:v6];
          if ([(NSArray *)[(CIFilter *)v8 inputKeys] containsObject:@"inputImage"])
          {
            [(CIFilter *)v8 setValue:v16 forKey:@"inputImage"];
          }
        }

        [(CIFilter *)self setValue:[(CIFilter *)v8 outputImage] forKey:v6];
      }
    }

    else
    {
      v17 = [objc_opt_class() description];
      NSLog(&cfstr_NoInputOnFilte.isa, v17, v6);
    }
  }
}

- (void)_prepend:(id)_prepend
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = prependFilters;
  objc_sync_enter(prependFilters);
  v6 = [prependFilters objectForKey:_prepend];
  objc_sync_exit(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(CIFilter *)self _prependSingleFilter:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_appendSingleFilterTo:(id)to filterAndSettings:(id)settings
{
  if (!settings)
  {
    return to;
  }

  if ([settings count] != 2)
  {
    return to;
  }

  v7 = [settings objectAtIndexedSubscript:0];
  v8 = [settings objectAtIndexedSubscript:1];
  if (!v7)
  {
    return to;
  }

  v9 = v8;
  if (!v8)
  {
    return to;
  }

  v10 = [CIFilter filterWithName:v7];
  [(CIFilter *)v10 setDefaults];
  [(CIFilter *)v10 setValuesForKeysWithDictionary:v9];
  if ([(NSArray *)[(CIFilter *)v10 inputKeys] containsObject:@"inputImage"])
  {
    [(CIFilter *)v10 setValue:to forKey:@"inputImage"];
  }

  if ([(NSArray *)[(CIFilter *)v10 inputKeys] containsObject:@"inputOriginalFilter"])
  {
    [(CIFilter *)v10 setValue:self forKey:@"inputOriginalFilter"];
  }

  return [(CIFilter *)v10 outputImage];
}

- (id)_append:(id)_append image:(id)image
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = appendFilters;
  objc_sync_enter(appendFilters);
  v8 = [appendFilters objectForKey:_append];
  objc_sync_exit(v7);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        image = [(CIFilter *)self _appendSingleFilterTo:image filterAndSettings:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return image;
}

- (id)outputImageCatchAll:(unsigned int)all
{
  v3 = *&all;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", objc_opt_class()), "hash")}];
  v8 = filtersToSkip;
  objc_sync_enter(filtersToSkip);
  LODWORD(v7) = [filtersToSkip containsObject:v7];
  objc_sync_exit(v8);
  if (v7)
  {
    result = [(CIFilter *)self valueForKey:@"inputImage"];
    if (!result)
    {

      return +[CIImage emptyImage];
    }
  }

  else
  {
    [(CIFilter *)self _prepend:v6];
    outputImage = -[CIFilter performSelector:](self, "performSelector:", NSSelectorFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"wrappedOutputImage%d", v3]));
    v11 = replacementFilters;
    objc_sync_enter(replacementFilters);
    v12 = [replacementFilters objectForKeyedSubscript:v6];
    objc_sync_exit(v11);
    if (v12)
    {
      if ([v12 count] == 2)
      {
        v13 = metaFilterForFilter([v12 objectAtIndexedSubscript:0], self);
        if (v13)
        {
          v14 = v13;
          -[objc_object setValuesForKeysWithDictionary:](v13, "setValuesForKeysWithDictionary:", [v12 objectAtIndexedSubscript:1]);
          [(objc_object *)v14 setValue:outputImage forKey:@"inputOutputImage"];
          outputImage = [(objc_object *)v14 outputImage];
        }
      }
    }

    return [(CIFilter *)self _append:v6 image:outputImage];
  }

  return result;
}

+ (id)filterName:(id)name append:(id)append arguments:(id)arguments
{
  if (![self wrapClassIfNeeded:NSClassFromString(name)])
  {
    return 0;
  }

  if (arguments)
  {
    argumentsCopy = arguments;
  }

  else
  {
    argumentsCopy = MEMORY[0x1E695E0F8];
  }

  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:argumentsCopy];
  v10 = [MEMORY[0x1E695DF70] arrayWithObjects:{append, v9, 0}];
  v11 = appendFilters;
  objc_sync_enter(appendFilters);
  array = [appendFilters valueForKey:name];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  [array addObject:v10];
  [appendFilters setValue:array forKey:name];
  objc_sync_exit(v11);
  return v9;
}

+ (id)filterName:(id)name prepend:(id)prepend imageName:(id)imageName arguments:(id)arguments
{
  if (![self wrapClassIfNeeded:NSClassFromString(name)])
  {
    return 0;
  }

  if (arguments)
  {
    argumentsCopy = arguments;
  }

  else
  {
    argumentsCopy = MEMORY[0x1E695E0F8];
  }

  v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:argumentsCopy];
  v12 = [MEMORY[0x1E695DF70] arrayWithObjects:{prepend, imageName, v11, 0}];
  v13 = prependFilters;
  objc_sync_enter(prependFilters);
  array = [prependFilters valueForKey:name];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  [array addObject:v12];
  [prependFilters setValue:array forKey:name];
  objc_sync_exit(v13);
  return v11;
}

+ (void)addFilterToSkip:(id)skip
{
  v4 = NSClassFromString(skip);
  if (v4)
  {
    v5 = v4;
    if ([self wrapClassIfNeeded:v4])
    {
      v6 = filtersToSkip;
      objc_sync_enter(filtersToSkip);
      [filtersToSkip addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", v5), "hash"))}];

      objc_sync_exit(v6);
    }
  }
}

+ (id)filterName:(id)name replacement:(id)replacement arguments:(id)arguments
{
  if (![self wrapClassIfNeeded:NSClassFromString(name)])
  {
    return 0;
  }

  v8 = [CIFilter filterWithName:replacement withInputParameters:arguments];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (!replacementFilters)
  {
    replacementFilters = [MEMORY[0x1E695DF90] dictionary];
  }

  v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:arguments];
  v11 = replacementFilters;
  objc_sync_enter(replacementFilters);
  v12 = [MEMORY[0x1E695DF70] arrayWithObjects:{v9, v10, 0}];
  [replacementFilters setObject:v12 forKeyedSubscript:name];
  objc_sync_exit(v11);
  return v10;
}

+ (CIFilter)filterWithName:(NSString *)name keysAndValues:(id)key0
{
  va_start(va, key0);
  v6 = objc_autoreleasePoolPush();
  v7 = [CIFilter filterWithName:name];
  if (v7)
  {
    v8 = v7;
    va_copy(v12, va);
    if (key0)
    {
      do
      {
        [(CIFilter *)v8 setValue:*v12 forKey:key0];
        v9 = (v12 + 8);
        v12 += 16;
        key0 = *v9;
      }

      while (*v9);
    }

    v10 = v8;
    objc_autoreleasePoolPop(v6);
    return v8;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    return 0;
  }
}

+ (CIFilter)filterWithName:(NSString *)name withInputParameters:(NSDictionary *)params
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = [CIFilter filterWithName:name setDefaults:1];
  if (v7)
  {
    v8 = v7;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(NSDictionary *)params countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(params);
          }

          [(CIFilter *)v8 setValue:[(NSDictionary *)params objectForKey:*(*(&v15 + 1) + 8 * v12)] forKey:*(*(&v15 + 1) + 8 * v12)];
          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSDictionary *)params countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v13 = v8;
    objc_autoreleasePoolPop(v6);
    return v8;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    return 0;
  }
}

+ (NSArray)filterNamesInCategory:(NSString *)category
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (category)
  {
    v5[0] = category;
    category = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  return [self filterNamesInCategories:category];
}

+ (NSArray)filterNamesInCategories:(NSArray *)categories
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:categories];
  v4 = [v3 containsObject:?];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [&unk_1F1085608 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(&unk_1F1085608);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [MEMORY[0x1E695DFD8] setWithArray:{+[CIFilterClassCategories classCategoriesForClass:](CIFilterClassCategories, "classCategoriesForClass:", NSClassFromString(v10))}];
        if ([v3 isSubsetOfSet:v11] && ((v4 & 1) != 0 || (objc_msgSend(v11, "containsObject:", @"CICategoryApplePrivate") & 1) == 0))
        {
          [array addObject:v10];
        }
      }

      v7 = [&unk_1F1085608 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__CIFilter_CIFilterRegistry__filterNamesInCategories___block_invoke;
  v15[3] = &unk_1E75C2AC8;
  v16 = v4;
  v15[4] = v3;
  v15[5] = array;
  register_more_builtins(v15);
  v12 = filterRegistryIsolationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CIFilter_CIFilterRegistry__filterNamesInCategories___block_invoke_2;
  block[3] = &unk_1E75C20F8;
  block[4] = v3;
  block[5] = array;
  dispatch_sync(v12, block);
  return [array sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
}

uint64_t __54__CIFilter_CIFilterRegistry__filterNamesInCategories___block_invoke(uint64_t a1, NSString *aClassName)
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:{+[CIFilterClassCategories classCategoriesForClass:](CIFilterClassCategories, "classCategoriesForClass:", NSClassFromString(aClassName))}];
  result = [*(a1 + 32) isSubsetOfSet:v4];
  if (result)
  {
    if ((*(a1 + 48) & 1) != 0 || (result = [v4 containsObject:@"CICategoryApplePrivate"], (result & 1) == 0))
    {
      v6 = *(a1 + 40);

      return [v6 addObject:aClassName];
    }
  }

  return result;
}

uint64_t __54__CIFilter_CIFilterRegistry__filterNamesInCategories___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = registeredFilterConstructors;
  result = [registeredFilterConstructors countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [objc_msgSend(registeredFilterConstructors valueForKey:{v7), "objectForKey:", @"CIAttributeFilterCategories"}];
        if ([*(a1 + 32) isSubsetOfSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v8)}])
        {
          [*(a1 + 40) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

+ (void)registerFilterName:(NSString *)name constructor:(id)anObject classAttributes:(NSDictionary *)attributes
{
  if (name)
  {
    if (!anObject)
    {
      NSLog(&cfstr_CifilterRegist_0.isa, a2, name);
    }

    v8 = objc_opt_class();
    if (v8 == objc_opt_class())
    {
      NSLog(&cfstr_CifilterRegist_1.isa, v9, name);
    }

    else
    {
      v10 = NSSelectorFromString(&cfstr_Filterwithname.isa);
      if (objc_opt_respondsToSelector())
      {
        if (objc_opt_class() == anObject)
        {
          if ([anObject isSubclassOfClass:objc_opt_class()])
          {
            v12 = [anObject methodForSelector:v10];
            if (v12 == [CIFilter methodForSelector:v10])
            {
              NSLog(&cfstr_CifilterRegist_3.isa, name);
            }
          }
        }

        dictionary = [(NSDictionary *)attributes mutableCopy];
        if (!dictionary)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
        }

        if (anObject)
        {
          [dictionary setObject:anObject forKey:kCIConstructorKey];
        }

        v14 = filterRegistryIsolationQueue();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __77__CIFilter_CIFilterRegistry__registerFilterName_constructor_classAttributes___block_invoke;
        block[3] = &unk_1E75C20F8;
        block[4] = dictionary;
        block[5] = name;
        dispatch_sync(v14, block);
        v15 = [MEMORY[0x1E696AD80] notificationWithName:kCIFilterAddedNotification object:name];
        [objc_msgSend(MEMORY[0x1E696AD90] "defaultQueue")];
      }

      else
      {
        NSLog(&cfstr_CifilterRegist_2.isa, v11, name);
      }
    }
  }

  else
  {
    NSLog(&cfstr_CifilterRegist.isa, a2);
  }
}

uint64_t __77__CIFilter_CIFilterRegistry__registerFilterName_constructor_classAttributes___block_invoke(uint64_t a1)
{
  v2 = registeredFilterConstructors;
  if (!registeredFilterConstructors)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    registeredFilterConstructors = v2;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 setObject:v3 forKey:v4];
}

+ (NSString)localizedNameForFilterName:(NSString *)filterName
{
  v3 = [CIFilterClassAttributes classAttributesForName:filterName];

  return [v3 valueForKey:@"CIAttributeFilterDisplayName"];
}

+ (NSString)localizedNameForCategory:(NSString *)category
{
  v4 = bundleForCIFilter();

  return [v4 localizedStringForKey:category value:0 table:@"Categories"];
}

+ (NSString)localizedDescriptionForFilterName:(NSString *)filterName
{
  v4 = [+[CIFilterClassAttributes classAttributesForName:](CIFilterClassAttributes "classAttributesForName:{"valueForKey:", @"CIAttributeDescription"}")];
  v5 = NSClassFromString(filterName);
  if (v4)
  {
    return v4;
  }

  v7 = v5;
  if (classNameIsSystemFilter(filterName))
  {
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:v7];
    v9 = [(NSString *)filterName stringByAppendingString:@".description"];
    v10 = @"Filters";
    v11 = v8;
    v12 = 0;
  }

  else
  {
    if (!classIsBuiltinFilter(v7))
    {
      return filterName;
    }

    v13 = bundleForCIFilter();
    v12 = [v13 localizedStringForKey:filterName value:0 table:@"Filters"];
    v10 = @"Descriptions";
    v11 = v13;
    v9 = filterName;
  }

  return [v11 localizedStringForKey:v9 value:v12 table:v10];
}

+ (NSURL)localizedReferenceDocumentationForFilterName:(NSString *)filterName
{
  v3 = [CIFilterClassAttributes classAttributesForName:filterName];

  return [v3 valueForKey:@"CIAttributeReferenceDocumentation"];
}

+ (CIFilter)filterWithName:(id)name setDefaults:(BOOL)defaults
{
  defaultsCopy = defaults;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = 0;
  v6 = filterRegistryIsolationQueue();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__CIFilter_CIFilterRegistryPrivate__filterWithName_setDefaults___block_invoke;
  v13[3] = &unk_1E75C2AF0;
  v13[4] = name;
  v13[5] = &v14;
  dispatch_sync(v6, v13);
  if (v15[5])
  {
    v7 = NSSelectorFromString(&cfstr_Filterwithname.isa);
    v8 = [v15[5] methodForSelector:v7];
    if (v8 != [CIFilter methodForSelector:v7])
    {
      v9 = [v15[5] filterWithName:name];
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  v10 = NSClassFromString(name);
  if (v10)
  {
    if ([(objc_class *)v10 isSubclassOfClass:objc_opt_class()])
    {
      v9 = objc_alloc_init(v10);
      if (v9)
      {
LABEL_11:
        if (!defaultsCopy)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }
  }

  if (classNameIsSystemFilter(name))
  {
    v11 = NSClassFromString(name);
    if (v11)
    {
      v9 = objc_alloc_init(v11);
      goto LABEL_11;
    }
  }

  v9 = 0;
  if (defaultsCopy)
  {
LABEL_14:
    [(CIFilter *)v9 setDefaults];
  }

LABEL_15:
  _Block_object_dispose(&v14, 8);
  return v9;
}

void *__64__CIFilter_CIFilterRegistryPrivate__filterWithName_setDefaults___block_invoke(uint64_t a1)
{
  result = registeredFilterConstructors;
  if (registeredFilterConstructors)
  {
    result = [registeredFilterConstructors valueForKey:*(a1 + 32)];
    if (result)
    {
      result = [result objectForKey:kCIConstructorKey];
      *(*(*(a1 + 40) + 8) + 40) = result;
    }
  }

  return result;
}

- (int)compatibilityVersion
{
  v2 = [(CIFilter *)self valueForKey:@"__inputVersion"];

  return [v2 intValue];
}

+ (CIFilter)filterWithName:(id)name compatibilityVersion:(int)version
{
  v4 = *&version;
  v5 = [self filterWithName:name];
  if (v4 != -1)
  {
    -[CIFilter setValue:forKey:](v5, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:v4], @"__inputVersion");
  }

  return v5;
}

+ (CIFilter)filterWithName:(id)name compatibilityVersion:(int)version keysAndValues:(id)values
{
  v6 = *&version;
  v7 = [CIFilter filterWithName:name];
  if (v6 != -1)
  {
    -[CIFilter setValue:forKey:](v7, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:v6], @"__inputVersion");
  }

  if (v7)
  {
    v10 = &v11;
    if (values)
    {
      do
      {
        [(CIFilter *)v7 setValue:*v10 forKey:values];
        v8 = (v10 + 1);
        v10 += 2;
        values = *v8;
      }

      while (*v8);
    }
  }

  return v7;
}

+ (id)allCategories:(BOOL)categories
{
  v36 = *MEMORY[0x1E69E9840];
  if (categories)
  {
    v21 = @"CICategoryGeometryAdjustment";
    v22 = @"CICategoryDistortionEffect";
    v23 = @"CICategoryBlur";
    v24 = @"CICategorySharpen";
    v25 = @"CICategoryColorAdjustment";
    v26 = @"CICategoryColorEffect";
    v27 = @"CICategoryStylize";
    v28 = @"CICategoryHalftoneEffect";
    v29 = @"CICategoryTileEffect";
    v30 = @"CICategoryGenerator";
    v31 = @"CICategoryReduction";
    v32 = @"CICategoryGradient";
    v33 = @"CICategoryTransition";
    v34 = @"CICategoryCompositeOperation";
    v35 = @"CICategoryApplePrivate";
    v3 = MEMORY[0x1E695DEC8];
    v4 = &v21;
    v5 = 15;
  }

  else
  {
    v7 = @"CICategoryGeometryAdjustment";
    v8 = @"CICategoryDistortionEffect";
    v9 = @"CICategoryBlur";
    v10 = @"CICategorySharpen";
    v11 = @"CICategoryColorAdjustment";
    v12 = @"CICategoryColorEffect";
    v13 = @"CICategoryStylize";
    v14 = @"CICategoryHalftoneEffect";
    v15 = @"CICategoryTileEffect";
    v16 = @"CICategoryGenerator";
    v17 = @"CICategoryReduction";
    v18 = @"CICategoryGradient";
    v19 = @"CICategoryTransition";
    v20 = @"CICategoryCompositeOperation";
    v3 = MEMORY[0x1E695DEC8];
    v4 = &v7;
    v5 = 14;
  }

  return [v3 arrayWithObjects:v4 count:{v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36}];
}

+ (void)unregisterFilterName:(id)name
{
  if (name)
  {
    v4 = filterRegistryIsolationQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__CIFilter_CIFilterRegistryPrivate__unregisterFilterName___block_invoke;
    block[3] = &unk_1E75C2AA0;
    block[4] = name;
    dispatch_sync(v4, block);
  }

  else
  {
    NSLog(&cfstr_CifilterUnregi.isa, a2);
  }
}

uint64_t __58__CIFilter_CIFilterRegistryPrivate__unregisterFilterName___block_invoke(uint64_t result)
{
  if (registeredFilterConstructors)
  {
    return [registeredFilterConstructors removeObjectForKey:*(result + 32)];
  }

  return result;
}

+ (CIFilter)filterWithImageURL:(NSURL *)url options:(NSDictionary *)options
{
  if (-[NSURL isFileURL](url, "isFileURL") && ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    v7 = ci_logger_api();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CIFilter(CIRAWFilter) filterWithImageURL:v7 options:?];
    }

    return 0;
  }

  else
  {

    return [CIRAWFilterImpl filterWithImageURL:url options:options];
  }
}

- (id)apply:(id)apply image:(id)image arguments:(id)arguments inoutSpace:(CGColorSpace *)space
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!image)
  {
    return 0;
  }

  imageCopy = image;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_KernelShouldBe.isa, [apply name]);
    return 0;
  }

  if (space)
  {
    imageCopy = [imageCopy imageByColorMatchingWorkingSpaceToColorSpace:space];
  }

  v12[0] = imageCopy;
  v10 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:{1), "arrayByAddingObjectsFromArray:", arguments}];
  [imageCopy extent];
  result = [apply applyWithExtent:v10 arguments:?];
  if (space)
  {
    return [result imageByColorMatchingColorSpaceToWorkingSpace:space];
  }

  return result;
}

- (id)apply:(id)apply image:(id)image arguments:(id)arguments inSpace:(CGColorSpace *)space
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!image)
  {
    return 0;
  }

  imageCopy = image;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_KernelShouldBe.isa, [apply name]);
    return 0;
  }

  if (space)
  {
    imageCopy = [imageCopy imageByColorMatchingWorkingSpaceToColorSpace:space];
  }

  v12[0] = imageCopy;
  v10 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:{1), "arrayByAddingObjectsFromArray:", arguments}];
  [imageCopy extent];
  return [apply applyWithExtent:v10 arguments:?];
}

+ (id)metalFilterWithName:(id)name withInputParameters:(id)parameters
{
  if (parameters)
  {
    parametersCopy = parameters;
  }

  else
  {
    parametersCopy = MEMORY[0x1E695E0F8];
  }

  v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:parametersCopy];
  [v6 setObject:name forKeyedSubscript:@"inputFilterName"];

  return [CIFilter filterWithName:@"CIMetalWrapper" withInputParameters:v6];
}

+ (id)metalFilterWithName:(id)name
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"inputFilterName";
  v5[0] = name;
  return +[CIFilter filterWithName:withInputParameters:](CIFilter, "filterWithName:withInputParameters:", @"CIMetalWrapper", [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
}

+ (int)maxSDOFRenderingVersionSupported
{
  v2 = NSSelectorFromString(&cfstr_Getunifiedrend.isa);
  if (!v2)
  {
    return 4;
  }

  v3 = v2;
  envCCSDOFMetadataClass();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 4;
  }

  v6 = [envCCSDOFMetadataClass() methodForSelector:v3];
  v4 = envCCSDOFMetadataClass();

  return v6(v4, v3);
}

+ (int)getMinMaxSimulatedApertureFrom:(__CFData *)from minValue:(float *)value maxValue:(float *)maxValue version:(int *)version
{
  v6 = -1;
  if (!value)
  {
    return v6;
  }

  if (!maxValue)
  {
    return v6;
  }

  if (!version)
  {
    return v6;
  }

  *value = 0.0;
  *maxValue = 0.0;
  *version = 0;
  if (!from)
  {
    return v6;
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v35, 0, sizeof(v35));
  if ([(__CFData *)from length]< 0xC)
  {
    return 1;
  }

  [(__CFData *)from getBytes:v33 length:12];
  v11 = v34;
  *version = v34;
  switch(v11)
  {
    case 3:
      v12 = FigDepthBlurEffectRenderingParametersV3FromCFData(from, v35);
      break;
    case 2:
      v12 = FigDepthBlurEffectRenderingParametersV2FromCFData(from, v35, &v32);
      break;
    case 1:
      v12 = FigDepthBlurEffectRenderingParametersV1FromCFData(from, v35);
      break;
    default:
      goto LABEL_17;
  }

  v6 = v12;
  v11 = *version;
  if (v12)
  {
    goto LABEL_18;
  }

  if (v11 == 3 || v11 == 2)
  {
    v6 = 0;
    *value = *(&v36 + 1);
    *maxValue = *(&v46 + 3);
    return v6;
  }

LABEL_17:
  v6 = 1;
LABEL_18:
  if (v11 >= 4)
  {
    if (v11 <= +[CIFilter maxSDOFRenderingVersionSupported])
    {
      v14 = NSSelectorFromString(&cfstr_Getrenderingpa.isa);
      if (v14)
      {
        v15 = v14;
        v16 = [envCCSDOFMetadataClass() methodForSelector:v14];
        if (v16)
        {
          v17 = v16;
          envCCSDOFMetadataClass();
          if (objc_opt_respondsToSelector())
          {
            v18 = envCCSDOFMetadataClass();
            v19 = v17(v18, v15, from);
            if (v19)
            {
              v20 = v19;
              v21 = NSSelectorFromString(&cfstr_Minsimulatedap.isa);
              if (v21)
              {
                v22 = v21;
                v23 = [envCCSDOFMetadataClass() methodForSelector:v21];
                if (v23)
                {
                  v24 = v23;
                  envCCSDOFMetadataClass();
                  if (objc_opt_respondsToSelector())
                  {
                    v25 = envCCSDOFMetadataClass();
                    *value = v24(v25, v22, v20);
                  }
                }
              }

              v26 = NSSelectorFromString(&cfstr_Maxsimulatedap.isa);
              if (v26)
              {
                v27 = v26;
                v28 = [envCCSDOFMetadataClass() methodForSelector:v26];
                if (v28)
                {
                  v29 = v28;
                  envCCSDOFMetadataClass();
                  if (objc_opt_respondsToSelector())
                  {
                    v30 = envCCSDOFMetadataClass();
                    *maxValue = v29(v30, v27, v20);
                  }
                }
              }

              v6 = *value <= 0.0 || *maxValue <= 0.0;
              free(v20);
            }
          }
        }
      }
    }

    else
    {
      v13 = ci_logger_render();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [CIFilter(PrivateDepthUtilities) getMinMaxSimulatedApertureFrom:version minValue:v13 maxValue:? version:?];
      }

      return 3;
    }
  }

  return v6;
}

- (void)apply:(NSObject *)a3 .cold.1(uint64_t a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138543618;
  v6 = [objc_opt_class() description];
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_19CC36000, a3, OS_LOG_TYPE_ERROR, "[%{public}@ apply:...] Argument at index %d should be a CIImage, CISampler, CIVector, or NSNumber.", &v5, 0x12u);
}

- (void)apply:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = [objc_opt_class() description];
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "[%{public}@ apply:...] First argument should be CIKernel.", &v3, 0xCu);
}

@end