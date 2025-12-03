@interface CIRAWFilterImpl
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)applyMatrix:(const double *)matrix toCIImage:(id)image;
+ (id)customAttributes;
+ (id)filterWithCVPixelBuffer:(__CVBuffer *)buffer properties:(id)properties options:(id)options;
+ (id)filterWithImageData:(id)data options:(id)options;
+ (id)filterWithImageURL:(id)l options:(id)options;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
+ (id)matteOptionNameFromOptions:(id)options;
+ (id)optionKeys;
+ (id)supportedRawCameraModels;
+ (void)convertNeutralTemperature:(id)temperature tint:(id)tint toX:(id *)x y:(id *)y;
+ (void)convertNeutralX:(id)x y:(id)y toTemperature:(id *)temperature tint:(id *)tint;
- (CGAffineTransform)getOrientationTransform:(SEL)transform;
- (CGAffineTransform)getScaleTransform:(SEL)transform;
- (CGSize)nativeSize;
- (CIRAWFilterImpl)init;
- (CIRAWFilterImpl)initWithCVPixelBuffer:(__CVBuffer *)buffer properties:(id)properties options:(id)options;
- (CIRAWFilterImpl)initWithImageSource:(CGImageSource *)source options:(id)options;
- (NSArray)filters;
- (NSDictionary)rawDictionary;
- (NSDictionary)rawReconstructionDefaultsDictionary;
- (NSNumber)sushiMode;
- (id)RAWFiltersValueForKeyPath:(id)path;
- (id)activeKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultBoostShadowAmount;
- (id)defaultDecoderVersion;
- (id)defaultImageOrientation;
- (id)defaultInputColorNoiseReductionAmount;
- (id)defaultInputEnableEDRMode;
- (id)defaultInputEnableVendorLensCorrection;
- (id)defaultInputLuminanceNoiseReductionAmount;
- (id)defaultInputMoireAmount;
- (id)defaultInputNoiseReductionContrastAmount;
- (id)defaultInputNoiseReductionDetailAmount;
- (id)defaultInputNoiseReductionSharpnessAmount;
- (id)defaultInputReturnDemosaiced;
- (id)defaultNeutralChromaticityX;
- (id)defaultNeutralChromaticityY;
- (id)defaultNeutralTemperature;
- (id)defaultNeutralTint;
- (id)inputImage;
- (id)inputNeutralChromaticityX;
- (id)inputNeutralChromaticityY;
- (id)inputNeutralLocation;
- (id)inputNeutralTemperature;
- (id)inputNeutralTint;
- (id)outputImage;
- (id)outputKeys;
- (id)outputNativeSize;
- (id)rawOptionsWithSubsampling:(BOOL)subsampling;
- (id)supportedDecoderVersions;
- (id)supportedSushiModes;
- (id)transformedImageIgnoringOrientation:(BOOL)orientation andIgnoringScaleFactor:(BOOL)factor;
- (id)whitePoint;
- (id)whitePointArray;
- (int)subsampling;
- (void)dealloc;
- (void)getWhitePointVectorsR:(id *)r g:(id *)g b:(id *)b;
- (void)invalidateFilters;
- (void)invalidateInputImage;
- (void)setDefaults;
- (void)setInputBaselineExposure:(id)exposure;
- (void)setInputBias:(id)bias;
- (void)setInputBoost:(id)boost;
- (void)setInputBoostShadowAmount:(id)amount;
- (void)setInputColorNoiseReductionAmount:(id)amount;
- (void)setInputDecoderVersion:(id)version;
- (void)setInputDisableGamutMap:(id)map;
- (void)setInputDisableHighlightRecovery:(id)recovery;
- (void)setInputDraftMode:(id)mode;
- (void)setInputEV:(id)v;
- (void)setInputEnableEDRMode:(id)mode;
- (void)setInputEnableNoiseTracking:(id)tracking;
- (void)setInputEnableSharpening:(id)sharpening;
- (void)setInputEnableVendorLensCorrection:(id)correction;
- (void)setInputHueMagBM:(id)m;
- (void)setInputHueMagCB:(id)b;
- (void)setInputHueMagGC:(id)c;
- (void)setInputHueMagMR:(id)r;
- (void)setInputHueMagRY:(id)y;
- (void)setInputHueMagYG:(id)g;
- (void)setInputIgnoreOrientation:(id)orientation;
- (void)setInputImageOrientation:(id)orientation;
- (void)setInputLinearSpaceFilter:(id)filter;
- (void)setInputLocalToneMapAmount:(id)amount;
- (void)setInputLuminanceNoiseReductionAmount:(id)amount;
- (void)setInputMoireAmount:(id)amount;
- (void)setInputNeutralChromaticityX:(id)x;
- (void)setInputNeutralChromaticityY:(id)y;
- (void)setInputNeutralLocation:(id)location;
- (void)setInputNeutralTemperature:(id)temperature;
- (void)setInputNeutralTint:(id)tint;
- (void)setInputNoiseReductionAmount:(id)amount;
- (void)setInputNoiseReductionContrastAmount:(id)amount;
- (void)setInputNoiseReductionDetailAmount:(id)amount;
- (void)setInputNoiseReductionSharpnessAmount:(id)amount;
- (void)setInputRequestedSushiMode:(id)mode;
- (void)setInputReturnDemosaiced:(id)demosaiced;
- (void)setInputScaleFactor:(id)factor;
- (void)setTempTintAtPoint:(CGPoint)point;
- (void)updateChomaticityXAndY;
- (void)updateTemperatureAndTint;
@end

@implementation CIRAWFilterImpl

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  if ([key isEqualToString:@"outputImage"])
  {
    return [MEMORY[0x1E695DFD8] setWithObjects:{@"inputBoostShadowAmount", @"inputBaselineExposure", @"inputBias", @"inputEnableNoiseTracking", @"inputNoiseReductionAmount", @"inputLuminanceNoiseReductionAmount", @"inputColorNoiseReductionAmount", @"inputNoiseReductionSharpnessAmount", @"inputNoiseReductionContrastAmount", @"inputNoiseReductionDetailAmount", @"inputEnableVendorLensCorrection", @"inputEnableSharpening", @"inputBoost", @"inputNeutralChromaticityX", @"inputNeutralChromaticityY", @"inputNeutralLocation", @"inputScaleFactor", @"inputDraftMode", @"inputIgnoreOrientation", @"inputImageOrientation", @"inputDecoderVersion", @"inputEV", @"inputDisableHighlightRecovery", @"inputDisableGamutMap", @"inputLinearSpaceFilter", @"inputMoireAmount", @"inputReturnDemosaiced", @"inputEnableEDRMode", @"inputLocalToneMapAmount", 0}];
  }

  if ([key isEqualToString:@"outputNativeSize"])
  {
    v6 = MEMORY[0x1E695DFD8];

    return [v6 setWithObject:@"inputDecoderVersion"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CIRAWFilterImpl;
    return objc_msgSendSuper2(&v7, sel_keyPathsForValuesAffectingValueForKey_, key);
  }
}

+ (id)filterWithImageData:(id)data options:(id)options
{
  result = CGImageSourceCreateWithData(data, options);
  if (result)
  {
    v7 = result;
    v8 = [[self alloc] initWithImageSource:result options:options];
    CFRelease(v7);
    return v8;
  }

  return result;
}

+ (id)filterWithImageURL:(id)l options:(id)options
{
  if ([l isFileURL])
  {
    v7 = *MEMORY[0x1E696E118];
    if (![options objectForKeyedSubscript:*MEMORY[0x1E696E118]])
    {
      [objc_msgSend(l "path")];
      TypeWithExtension = CGImageSourceGetTypeWithExtension();
      options = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
      [options setObject:TypeWithExtension forKeyedSubscript:v7];
    }
  }

  result = CGImageSourceCreateWithURL(l, options);
  if (result)
  {
    v10 = result;
    v11 = [[self alloc] initWithImageSource:result options:options];
    CFRelease(v10);
    return v11;
  }

  return result;
}

+ (id)filterWithCVPixelBuffer:(__CVBuffer *)buffer properties:(id)properties options:(id)options
{
  v5 = [[self alloc] initWithCVPixelBuffer:buffer properties:properties options:options];

  return v5;
}

+ (id)supportedRawCameraModels
{
  v2 = CGImageSourceCopyTypeIdentifiers();
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = dlsym(0xFFFFFFFFFFFFFFFELL, "CreateListOfSupportedCamerasAndVersions");
  if (v3)
  {
    v3 = v3(1);
  }

  allKeys = [v3 allKeys];

  return [allKeys sortedArrayUsingSelector:sel_compare_];
}

- (CIRAWFilterImpl)init
{
  v3.receiver = self;
  v3.super_class = CIRAWFilterImpl;
  return [(CIRAWFilterImpl *)&v3 init];
}

- (void)dealloc
{
  inputImageSource = self->_inputImageSource;
  if (inputImageSource)
  {
    CFRelease(inputImageSource);
    self->_inputImageSource = 0;
  }

  self->_inputImageAndProperties = 0;
  self->_baseImageProperties = 0;

  self->_rawDictionary = 0;
  self->_rawReconstructionDefaultsDictionary = 0;

  self->_supportedSushiModes = 0;
  self->_supportedDecoderVersions = 0;

  self->_filters = 0;
  self->_typeIdentifierHint = 0;

  self->_inputImage = 0;
  self->_defaultOrientation = 0;

  self->inputNeutralChromaticityX = 0;
  self->inputNeutralChromaticityY = 0;

  self->inputNeutralTemperature = 0;
  self->inputNeutralTint = 0;

  self->inputNeutralLocation = 0;
  self->inputEV = 0;

  self->inputBoost = 0;
  self->inputDraftMode = 0;

  self->inputScaleFactor = 0;
  self->inputIgnoreOrientation = 0;

  self->inputImageOrientation = 0;
  self->inputEnableSharpening = 0;

  self->inputEnableNoiseTracking = 0;
  self->inputNoiseReductionAmount = 0;

  self->inputEnableVendorLensCorrection = 0;
  self->inputLuminanceNoiseReductionAmount = 0;

  self->inputColorNoiseReductionAmount = 0;
  self->inputNoiseReductionSharpnessAmount = 0;

  self->inputNoiseReductionContrastAmount = 0;
  self->inputNoiseReductionDetailAmount = 0;

  self->inputMoireAmount = 0;
  self->inputDecoderVersion = 0;

  self->inputBoostShadowAmount = 0;
  self->inputBias = 0;

  self->inputLinearSpaceFilter = 0;
  self->inputBaselineExposure = 0;

  self->inputHueMagMR = 0;
  self->inputHueMagRY = 0;

  self->inputHueMagYG = 0;
  self->inputHueMagGC = 0;

  self->inputHueMagCB = 0;
  self->inputHueMagBM = 0;

  self->inputDisableGamutMap = 0;
  self->inputEnableEDRMode = 0;

  self->inputLocalToneMapAmount = 0;
  self->inputReturnDemosaiced = 0;
  self->_calledDealloc = 1;
  v4.receiver = self;
  v4.super_class = CIRAWFilterImpl;
  [(CIFilter *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDefaults];
  inputImageSource = self->_inputImageSource;
  *(v4 + 10) = inputImageSource;
  if (inputImageSource)
  {
    CFRetain(inputImageSource);
  }

  v4[121] = 0;
  v4[120] = self->_isRawSource;
  *(v4 + 104) = self->_nativeSize;
  *(v4 + 11) = [(NSArray *)self->_inputImageAndProperties copy];
  *(v4 + 17) = [(NSDictionary *)self->_baseImageProperties copy];
  *(v4 + 18) = dictionaryDeepCopy(self->_rawDictionary);
  *(v4 + 19) = dictionaryDeepCopy(self->_rawReconstructionDefaultsDictionary);
  *(v4 + 20) = [(NSArray *)self->_supportedSushiModes copy];
  *(v4 + 21) = [(NSArray *)self->_supportedDecoderVersions copy];
  *(v4 + 23) = [self->_typeIdentifierHint copy];
  *(v4 + 24) = [(NSNumber *)self->_defaultOrientation copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  optionKeys = [objc_opt_class() optionKeys];
  v7 = [optionKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(optionKeys);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(CIRAWFilterImpl *)self valueForKey:v11];
        if (v12)
        {
          [v4 setValue:v12 forKey:v11];
        }
      }

      v8 = [optionKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)setDefaults
{
  [(CIRAWFilterImpl *)self setInputLuminanceNoiseReductionAmount:[(CIRAWFilterImpl *)self defaultInputLuminanceNoiseReductionAmount]];
  [(CIRAWFilterImpl *)self setInputColorNoiseReductionAmount:[(CIRAWFilterImpl *)self defaultInputColorNoiseReductionAmount]];
  [(CIRAWFilterImpl *)self setInputNoiseReductionContrastAmount:[(CIRAWFilterImpl *)self defaultInputNoiseReductionContrastAmount]];
  [(CIRAWFilterImpl *)self setInputNoiseReductionDetailAmount:[(CIRAWFilterImpl *)self defaultInputNoiseReductionDetailAmount]];
  [(CIRAWFilterImpl *)self setInputNoiseReductionSharpnessAmount:[(CIRAWFilterImpl *)self defaultInputNoiseReductionSharpnessAmount]];
  [(CIRAWFilterImpl *)self setInputMoireAmount:[(CIRAWFilterImpl *)self defaultInputMoireAmount]];
  [(CIRAWFilterImpl *)self setInputEnableVendorLensCorrection:[(CIRAWFilterImpl *)self defaultInputEnableVendorLensCorrection]];
  v3 = MEMORY[0x1E695E110];
  [(CIRAWFilterImpl *)self setInputIgnoreOrientation:MEMORY[0x1E695E110]];
  v4 = MEMORY[0x1E695E118];
  [(CIRAWFilterImpl *)self setInputEnableNoiseTracking:MEMORY[0x1E695E118]];
  [(CIRAWFilterImpl *)self setInputNoiseReductionAmount:&unk_1F1084778];
  [(CIRAWFilterImpl *)self setInputEnableSharpening:v4];
  [(CIRAWFilterImpl *)self setInputDraftMode:v3];
  [(CIRAWFilterImpl *)self setInputScaleFactor:&unk_1F1084788];
  [(CIRAWFilterImpl *)self setInputBoost:&unk_1F1084788];
  [(CIRAWFilterImpl *)self setInputBoostShadowAmount:[(CIRAWFilterImpl *)self defaultBoostShadowAmount]];
  [(CIRAWFilterImpl *)self setInputImageOrientation:[(CIRAWFilterImpl *)self defaultImageOrientation]];
  [(CIRAWFilterImpl *)self setInputDecoderVersion:[(CIRAWFilterImpl *)self defaultDecoderVersion]];
  [(CIRAWFilterImpl *)self setInputEV:&unk_1F1084778];
  [(CIRAWFilterImpl *)self setInputBaselineExposure:[(CIRAWFilterImpl *)self defaultInputBaselineExposureAmount]];
  [(CIRAWFilterImpl *)self setInputBias:[(CIRAWFilterImpl *)self defaultInputBiasAmount]];
  [(CIRAWFilterImpl *)self setInputHueMagMR:[(CIRAWFilterImpl *)self defaultInputHueMagMRAmount]];
  [(CIRAWFilterImpl *)self setInputHueMagRY:[(CIRAWFilterImpl *)self defaultInputHueMagRYAmount]];
  [(CIRAWFilterImpl *)self setInputHueMagYG:[(CIRAWFilterImpl *)self defaultInputHueMagYGAmount]];
  [(CIRAWFilterImpl *)self setInputHueMagGC:[(CIRAWFilterImpl *)self defaultInputHueMagGCAmount]];
  [(CIRAWFilterImpl *)self setInputHueMagCB:[(CIRAWFilterImpl *)self defaultInputHueMagCBAmount]];
  [(CIRAWFilterImpl *)self setInputHueMagBM:[(CIRAWFilterImpl *)self defaultInputHueMagBMAmount]];
  [(CIRAWFilterImpl *)self setInputDisableGamutMap:v3];
  [(CIRAWFilterImpl *)self setInputDisableHighlightRecovery:v3];
  [(CIRAWFilterImpl *)self setInputNeutralTemperature:[(CIRAWFilterImpl *)self defaultNeutralTemperature]];
  [(CIRAWFilterImpl *)self setInputNeutralTint:[(CIRAWFilterImpl *)self defaultNeutralTint]];
  [(CIRAWFilterImpl *)self setInputNeutralChromaticityX:[(CIRAWFilterImpl *)self defaultNeutralChromaticityX]];
  [(CIRAWFilterImpl *)self setInputNeutralChromaticityY:[(CIRAWFilterImpl *)self defaultNeutralChromaticityY]];
  [(CIRAWFilterImpl *)self setInputEnableEDRMode:[(CIRAWFilterImpl *)self defaultInputEnableEDRMode]];
  [(CIRAWFilterImpl *)self setInputLocalToneMapAmount:[(CIRAWFilterImpl *)self defaultInputLocalToneMapAmount]];
  defaultInputReturnDemosaiced = [(CIRAWFilterImpl *)self defaultInputReturnDemosaiced];

  [(CIRAWFilterImpl *)self setInputReturnDemosaiced:defaultInputReturnDemosaiced];
}

+ (id)customAttributes
{
  v80[37] = *MEMORY[0x1E69E9840];
  v79[0] = @"inputLuminanceNoiseReductionAmount";
  v77[0] = @"CIAttributeClass";
  v77[1] = @"CIAttributeDefault";
  v78[0] = @"NSNumber";
  v78[1] = &unk_1F1084778;
  v77[2] = @"CIAttributeMin";
  v77[3] = @"CIAttributeMax";
  v78[2] = &unk_1F1084778;
  v78[3] = &unk_1F1084788;
  v77[4] = @"CIAttributeType";
  v78[4] = @"CIAttributeTypeScalar";
  v80[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:5];
  v79[1] = @"inputColorNoiseReductionAmount";
  v75[0] = @"CIAttributeClass";
  v75[1] = @"CIAttributeDefault";
  v76[0] = @"NSNumber";
  v76[1] = &unk_1F1084778;
  v75[2] = @"CIAttributeMin";
  v75[3] = @"CIAttributeMax";
  v76[2] = &unk_1F1084778;
  v76[3] = &unk_1F1084788;
  v75[4] = @"CIAttributeType";
  v76[4] = @"CIAttributeTypeScalar";
  v80[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:5];
  v79[2] = @"inputMoireAmount";
  v73[0] = @"CIAttributeClass";
  v73[1] = @"CIAttributeDefault";
  v74[0] = @"NSNumber";
  v74[1] = &unk_1F1084778;
  v73[2] = @"CIAttributeMin";
  v73[3] = @"CIAttributeMax";
  v74[2] = &unk_1F1084778;
  v74[3] = &unk_1F1084788;
  v73[4] = @"CIAttributeType";
  v74[4] = @"CIAttributeTypeScalar";
  v80[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:5];
  v79[3] = @"inputNoiseReductionContrastAmount";
  v71[0] = @"CIAttributeClass";
  v71[1] = @"CIAttributeDefault";
  v72[0] = @"NSNumber";
  v72[1] = &unk_1F1084778;
  v71[2] = @"CIAttributeMin";
  v71[3] = @"CIAttributeMax";
  v72[2] = &unk_1F1084778;
  v72[3] = &unk_1F1084788;
  v71[4] = @"CIAttributeType";
  v72[4] = @"CIAttributeTypeScalar";
  v80[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:5];
  v79[4] = @"inputNoiseReductionDetailAmount";
  v69[0] = @"CIAttributeClass";
  v69[1] = @"CIAttributeDefault";
  v70[0] = @"NSNumber";
  v70[1] = &unk_1F1084778;
  v69[2] = @"CIAttributeMin";
  v69[3] = @"CIAttributeMax";
  v70[2] = &unk_1F1084778;
  v70[3] = &unk_1F1084788;
  v69[4] = @"CIAttributeType";
  v70[4] = @"CIAttributeTypeScalar";
  v80[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:5];
  v79[5] = @"inputNoiseReductionSharpnessAmount";
  v67[0] = @"CIAttributeClass";
  v67[1] = @"CIAttributeDefault";
  v68[0] = @"NSNumber";
  v68[1] = &unk_1F1084778;
  v67[2] = @"CIAttributeMin";
  v67[3] = @"CIAttributeMax";
  v68[2] = &unk_1F1084778;
  v68[3] = &unk_1F1084788;
  v67[4] = @"CIAttributeType";
  v68[4] = @"CIAttributeTypeScalar";
  v80[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:5];
  v79[6] = @"inputEnableVendorLensCorrection";
  v65[0] = @"CIAttributeClass";
  v65[1] = @"CIAttributeDefault";
  v66[0] = @"NSNumber";
  v66[1] = MEMORY[0x1E695E118];
  v65[2] = @"CIAttributeType";
  v66[2] = @"CIAttributeTypeBoolean";
  v80[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:3];
  v79[7] = @"inputIgnoreOrientation";
  v63[0] = @"CIAttributeClass";
  v63[1] = @"CIAttributeDefault";
  v64[0] = @"NSNumber";
  v64[1] = MEMORY[0x1E695E110];
  v63[2] = @"CIAttributeType";
  v64[2] = @"CIAttributeTypeBoolean";
  v80[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3];
  v79[8] = @"inputEnableNoiseTracking";
  v61[0] = @"CIAttributeClass";
  v61[1] = @"CIAttributeDefault";
  v62[0] = @"NSNumber";
  v2 = MEMORY[0x1E695E118];
  v62[1] = MEMORY[0x1E695E118];
  v61[2] = @"CIAttributeType";
  v62[2] = @"CIAttributeTypeBoolean";
  v80[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:3];
  v79[9] = @"inputNoiseReductionAmount";
  v59[0] = @"CIAttributeClass";
  v59[1] = @"CIAttributeMin";
  v60[0] = @"NSNumber";
  v60[1] = &unk_1F1084778;
  v59[2] = @"CIAttributeMax";
  v59[3] = @"CIAttributeType";
  v60[2] = &unk_1F1084788;
  v60[3] = @"CIAttributeTypeScalar";
  v80[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:4];
  v79[10] = @"inputEnableSharpening";
  v57[0] = @"CIAttributeClass";
  v57[1] = @"CIAttributeDefault";
  v58[0] = @"NSNumber";
  v58[1] = v2;
  v57[2] = @"CIAttributeType";
  v58[2] = @"CIAttributeTypeBoolean";
  v80[10] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
  v79[11] = @"inputDraftMode";
  v55[0] = @"CIAttributeClass";
  v55[1] = @"CIAttributeDefault";
  v56[0] = @"NSNumber";
  v56[1] = MEMORY[0x1E695E110];
  v55[2] = @"CIAttributeType";
  v56[2] = @"CIAttributeTypeBoolean";
  v80[11] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];
  v79[12] = @"inputScaleFactor";
  v53[0] = @"CIAttributeClass";
  v53[1] = @"CIAttributeDefault";
  v54[0] = @"NSNumber";
  v54[1] = &unk_1F1084788;
  v53[2] = @"CIAttributeMin";
  v53[3] = @"CIAttributeMax";
  v54[2] = &unk_1F1084778;
  v54[3] = &unk_1F1084788;
  v53[4] = @"CIAttributeIdentity";
  v53[5] = @"CIAttributeType";
  v54[4] = &unk_1F1084788;
  v54[5] = @"CIAttributeTypeScalar";
  v80[12] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:6];
  v79[13] = @"inputBoost";
  v51[0] = @"CIAttributeClass";
  v51[1] = @"CIAttributeDefault";
  v52[0] = @"NSNumber";
  v52[1] = &unk_1F1084788;
  v51[2] = @"CIAttributeMin";
  v51[3] = @"CIAttributeMax";
  v52[2] = &unk_1F1084778;
  v52[3] = &unk_1F1084788;
  v51[4] = @"CIAttributeIdentity";
  v51[5] = @"CIAttributeType";
  v52[4] = &unk_1F1084778;
  v52[5] = @"CIAttributeTypeScalar";
  v80[13] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:6];
  v79[14] = @"inputBoostShadowAmount";
  v49[0] = @"CIAttributeClass";
  v49[1] = @"CIAttributeDefault";
  v50[0] = @"NSNumber";
  v50[1] = &unk_1F1084778;
  v49[2] = @"CIAttributeMin";
  v49[3] = @"CIAttributeMax";
  v50[2] = &unk_1F1084778;
  v50[3] = &unk_1F1084798;
  v49[4] = @"CIAttributeType";
  v50[4] = @"CIAttributeTypeScalar";
  v80[14] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:5];
  v79[15] = @"inputImageOrientation";
  v47[0] = @"CIAttributeClass";
  v47[1] = @"CIAttributeDefault";
  v48[0] = @"NSNumber";
  v48[1] = &unk_1F10820E8;
  v47[2] = @"CIAttributeMin";
  v47[3] = @"CIAttributeMax";
  v48[2] = &unk_1F10820E8;
  v48[3] = &unk_1F1082100;
  v47[4] = @"CIAttributeIdentity";
  v47[5] = @"CIAttributeType";
  v48[4] = &unk_1F10820E8;
  v48[5] = @"CIAttributeTypeInteger";
  v80[15] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:6];
  v79[16] = @"inputDecoderVersion";
  v45[0] = @"CIAttributeClass";
  v45[1] = @"CIAttributeDefault";
  v46[0] = @"NSString";
  v46[1] = &unk_1F1082118;
  v45[2] = *MEMORY[0x1E696E088];
  v46[2] = &unk_1F1085680;
  v80[16] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];
  v79[17] = @"inputEV";
  v43[0] = @"CIAttributeClass";
  v43[1] = @"CIAttributeDefault";
  v44[0] = @"NSNumber";
  v44[1] = &unk_1F1084778;
  v43[2] = @"CIAttributeSliderMin";
  v43[3] = @"CIAttributeSliderMax";
  v44[2] = &unk_1F10847A8;
  v44[3] = &unk_1F10847B8;
  v43[4] = @"CIAttributeIdentity";
  v43[5] = @"CIAttributeType";
  v44[4] = &unk_1F1084778;
  v44[5] = @"CIAttributeTypeScalar";
  v80[17] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:6];
  v79[18] = @"inputBaselineExposure";
  v41[0] = @"CIAttributeClass";
  v41[1] = @"CIAttributeDefault";
  v42[0] = @"NSNumber";
  v42[1] = &unk_1F1084778;
  v41[2] = @"CIAttributeIdentity";
  v41[3] = @"CIAttributeType";
  v42[2] = &unk_1F1084778;
  v42[3] = @"CIAttributeTypeScalar";
  v80[18] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:4];
  v79[19] = @"inputBias";
  v39[0] = @"CIAttributeClass";
  v39[1] = @"CIAttributeDefault";
  v40[0] = @"NSNumber";
  v40[1] = &unk_1F1084778;
  v39[2] = @"CIAttributeMin";
  v39[3] = @"CIAttributeMax";
  v40[2] = &unk_1F10847A8;
  v40[3] = &unk_1F10847C8;
  v39[4] = @"CIAttributeIdentity";
  v39[5] = @"CIAttributeType";
  v40[4] = &unk_1F1084778;
  v40[5] = @"CIAttributeTypeScalar";
  v80[19] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:6];
  v79[20] = @"inputLinearSpaceFilter";
  v37 = @"CIAttributeClass";
  v38 = @"CIFilter";
  v80[20] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v79[21] = @"inputNeutralLocation";
  v35[0] = @"CIAttributeClass";
  v35[1] = @"CIAttributeType";
  v36[0] = @"CIVector";
  v36[1] = @"CIAttributeTypePosition";
  v80[21] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v79[22] = @"inputNeutralTemperature";
  v33[0] = @"CIAttributeClass";
  v33[1] = @"CIAttributeDefault";
  v34[0] = @"NSNumber";
  v34[1] = &unk_1F10821C0;
  v33[2] = @"CIAttributeMin";
  v33[3] = @"CIAttributeSliderMin";
  v34[2] = &unk_1F10821D8;
  v34[3] = &unk_1F10821C0;
  v33[4] = @"CIAttributeSliderMax";
  v33[5] = @"CIAttributeMax";
  v34[4] = &unk_1F10847D8;
  v34[5] = &unk_1F10847E8;
  v33[6] = @"CIAttributeType";
  v34[6] = @"CIAttributeTypeScalar";
  v80[22] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:7];
  v79[23] = @"inputNeutralTint";
  v31[0] = @"CIAttributeClass";
  v31[1] = @"CIAttributeDefault";
  v32[0] = @"NSNumber";
  v32[1] = &unk_1F1082130;
  v31[2] = @"CIAttributeMin";
  v31[3] = @"CIAttributeMax";
  v32[2] = &unk_1F10847F8;
  v32[3] = &unk_1F1084808;
  v31[4] = @"CIAttributeType";
  v32[4] = @"CIAttributeTypeScalar";
  v80[23] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:5];
  v79[24] = @"inputNeutralChromaticityX";
  v29[0] = @"CIAttributeClass";
  v29[1] = @"CIAttributeDefault";
  v30[0] = @"NSNumber";
  v30[1] = &unk_1F1084818;
  v29[2] = @"CIAttributeType";
  v30[2] = @"CIAttributeTypeScalar";
  v80[24] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v79[25] = @"inputNeutralChromaticityY";
  v27[0] = @"CIAttributeClass";
  v27[1] = @"CIAttributeDefault";
  v28[0] = @"NSNumber";
  v28[1] = &unk_1F1084818;
  v27[2] = @"CIAttributeType";
  v28[2] = @"CIAttributeTypeScalar";
  v80[25] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v79[26] = @"inputDisableGamutMap";
  v25[0] = @"CIAttributeClass";
  v25[1] = @"CIAttributeDefault";
  v26[0] = @"NSNumber";
  v3 = MEMORY[0x1E695E110];
  v26[1] = MEMORY[0x1E695E110];
  v25[2] = @"CIAttributeType";
  v26[2] = @"CIAttributeTypeBoolean";
  v80[26] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v79[27] = @"inputDisableHighlightRecovery";
  v23[0] = @"CIAttributeClass";
  v23[1] = @"CIAttributeDefault";
  v24[0] = @"NSNumber";
  v24[1] = v3;
  v23[2] = @"CIAttributeType";
  v24[2] = @"CIAttributeTypeBoolean";
  v80[27] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v79[28] = @"inputHueMagMR";
  v21[0] = @"CIAttributeClass";
  v21[1] = @"CIAttributeDefault";
  v22[0] = @"NSNumber";
  v22[1] = &unk_1F1084778;
  v21[2] = @"CIAttributeType";
  v22[2] = @"CIAttributeTypeScalar";
  v80[28] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v79[29] = @"inputHueMagRY";
  v19[0] = @"CIAttributeClass";
  v19[1] = @"CIAttributeDefault";
  v20[0] = @"NSNumber";
  v20[1] = &unk_1F1084778;
  v19[2] = @"CIAttributeType";
  v20[2] = @"CIAttributeTypeScalar";
  v80[29] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v79[30] = @"inputHueMagYG";
  v17[0] = @"CIAttributeClass";
  v17[1] = @"CIAttributeDefault";
  v18[0] = @"NSNumber";
  v18[1] = &unk_1F1084778;
  v17[2] = @"CIAttributeType";
  v18[2] = @"CIAttributeTypeScalar";
  v80[30] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v79[31] = @"inputHueMagGC";
  v15[0] = @"CIAttributeClass";
  v15[1] = @"CIAttributeDefault";
  v16[0] = @"NSNumber";
  v16[1] = &unk_1F1084778;
  v15[2] = @"CIAttributeType";
  v16[2] = @"CIAttributeTypeScalar";
  v80[31] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v79[32] = @"inputHueMagCB";
  v13[0] = @"CIAttributeClass";
  v13[1] = @"CIAttributeDefault";
  v14[0] = @"NSNumber";
  v14[1] = &unk_1F1084778;
  v13[2] = @"CIAttributeType";
  v14[2] = @"CIAttributeTypeScalar";
  v80[32] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v79[33] = @"inputHueMagBM";
  v11[0] = @"CIAttributeClass";
  v11[1] = @"CIAttributeDefault";
  v12[0] = @"NSNumber";
  v12[1] = &unk_1F1084778;
  v11[2] = @"CIAttributeType";
  v12[2] = @"CIAttributeTypeScalar";
  v80[33] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v79[34] = @"inputReturnDemosaiced";
  v9[0] = @"CIAttributeClass";
  v9[1] = @"CIAttributeDefault";
  v10[0] = @"NSNumber";
  v10[1] = v3;
  v9[2] = @"CIAttributeType";
  v10[2] = @"CIAttributeTypeBoolean";
  v80[34] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v79[35] = @"inputEnableEDRMode";
  v7[0] = @"CIAttributeClass";
  v7[1] = @"CIAttributeDefault";
  v8[0] = @"NSNumber";
  v8[1] = MEMORY[0x1E695E118];
  v8[2] = @"CIAttributeTypeScalar";
  v7[2] = @"CIAttributeType";
  v80[35] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v79[36] = @"inputLocalToneMapAmount";
  v5[0] = @"CIAttributeClass";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"NSNumber";
  v6[1] = &unk_1F1084788;
  v5[2] = @"CIAttributeMin";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1084778;
  v6[3] = &unk_1F1084788;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v80[36] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:37];
}

- (id)outputKeys
{
  v3.receiver = self;
  v3.super_class = CIRAWFilterImpl;
  return [(NSArray *)[(CIFilter *)&v3 outputKeys] arrayByAddingObject:@"outputNativeSize"];
}

+ (id)applyMatrix:(const double *)matrix toCIImage:(id)image
{
  v6 = [CIFilter filterWithName:@"CIColorMatrix"];
  [(CIFilter *)v6 setDefaults];
  [(CIFilter *)v6 setValue:[CIVector forKey:"vectorWithX:Y:Z:W:" vectorWithX:matrix[1] Y:matrix[2] Z:0.0 W:?], @"inputRVector"];
  [(CIFilter *)v6 setValue:[CIVector forKey:"vectorWithX:Y:Z:W:" vectorWithX:matrix[4] Y:matrix[5] Z:0.0 W:?], @"inputGVector"];
  [(CIFilter *)v6 setValue:[CIVector forKey:"vectorWithX:Y:Z:W:" vectorWithX:matrix[7] Y:matrix[8] Z:0.0 W:?], @"inputBVector"];
  [(CIFilter *)v6 setValue:image forKey:@"inputImage"];

  return [(CIFilter *)v6 valueForKey:@"outputImage"];
}

+ (id)optionKeys
{
  v3[37] = *MEMORY[0x1E69E9840];
  v3[0] = @"inputNeutralTemperature";
  v3[1] = @"inputNeutralTint";
  v3[2] = @"inputNeutralChromaticityX";
  v3[3] = @"inputNeutralChromaticityY";
  v3[4] = @"inputBoost";
  v3[5] = @"inputDraftMode";
  v3[6] = @"inputScaleFactor";
  v3[7] = @"inputIgnoreOrientation";
  v3[8] = @"inputImageOrientation";
  v3[9] = @"inputDecoderVersion";
  v3[10] = @"inputEnableNoiseTracking";
  v3[11] = @"inputEnableSharpening";
  v3[12] = @"inputEnableVendorLensCorrection";
  v3[13] = @"inputNoiseReductionAmount";
  v3[14] = @"inputLuminanceNoiseReductionAmount";
  v3[15] = @"inputColorNoiseReductionAmount";
  v3[16] = @"inputNoiseReductionSharpnessAmount";
  v3[17] = @"inputNoiseReductionContrastAmount";
  v3[18] = @"inputNoiseReductionDetailAmount";
  v3[19] = @"inputBoostShadowAmount";
  v3[20] = @"inputBias";
  v3[21] = @"inputBaselineExposure";
  v3[22] = @"inputDisableGamutMap";
  v3[23] = @"inputLinearSpaceFilter";
  v3[24] = @"inputMoireAmount";
  v3[25] = @"inputEV";
  v3[26] = @"inputRequestedSushiMode";
  v3[27] = @"inputDisableHighlightRecovery";
  v3[28] = @"inputHueMagMR";
  v3[29] = @"inputHueMagRY";
  v3[30] = @"inputHueMagYG";
  v3[31] = @"inputHueMagGC";
  v3[32] = @"inputHueMagCB";
  v3[33] = @"inputHueMagBM";
  v3[34] = @"inputReturnDemosaiced";
  v3[35] = @"inputEnableEDRMode";
  v3[36] = @"inputLocalToneMapAmount";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:37];
}

+ (id)matteOptionNameFromOptions:(id)options
{
  v4 = @"kCIImageAuxiliaryPortraitEffectsMatte";
  v5 = [options valueForKey:@"kCIImageAuxiliaryPortraitEffectsMatte"];
  if (([v5 isEqual:MEMORY[0x1E695E118]] & 1) == 0)
  {
    v4 = @"kCIImageAuxiliarySemanticSegmentationSkinMatte";
    v6 = [options valueForKey:@"kCIImageAuxiliarySemanticSegmentationSkinMatte"];
    if (([v6 isEqual:MEMORY[0x1E695E118]] & 1) == 0)
    {
      v4 = @"kCIImageAuxiliarySemanticSegmentationHairMatte";
      v7 = [options valueForKey:@"kCIImageAuxiliarySemanticSegmentationHairMatte"];
      if (([v7 isEqual:MEMORY[0x1E695E118]] & 1) == 0)
      {
        v4 = @"kCIImageAuxiliarySemanticSegmentationTeethMatte";
        v8 = [options valueForKey:@"kCIImageAuxiliarySemanticSegmentationTeethMatte"];
        if (([v8 isEqual:MEMORY[0x1E695E118]] & 1) == 0)
        {
          v4 = @"kCIImageAuxiliarySemanticSegmentationGlassesMatte";
          v9 = [options valueForKey:@"kCIImageAuxiliarySemanticSegmentationGlassesMatte"];
          if (([v9 isEqual:MEMORY[0x1E695E118]] & 1) == 0)
          {
            v4 = @"kCIImageAuxiliarySemanticSegmentationSkyMatte";
            v10 = [options valueForKey:@"kCIImageAuxiliarySemanticSegmentationSkyMatte"];
            if (([v10 isEqual:MEMORY[0x1E695E118]] & 1) == 0)
            {
              v4 = @"kCIImageAuxiliaryHDRGainMap";
              v11 = [options valueForKey:@"kCIImageAuxiliaryHDRGainMap"];
              if (![v11 isEqual:MEMORY[0x1E695E118]])
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (CIRAWFilterImpl)initWithCVPixelBuffer:(__CVBuffer *)buffer properties:(id)properties options:(id)options
{
  v34 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = CIRAWFilterImpl;
  v8 = [(CIRAWFilterImpl *)&v32 init];
  if (v8)
  {
    if (!buffer || !properties)
    {
      goto LABEL_12;
    }

    v9 = CGImageSourceCopyTypeIdentifiers();
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = dlsym(0xFFFFFFFFFFFFFFFELL, "RCCreateCIImageFromBufferAndProperties");
    if (v10 && (v11 = v10(buffer, properties), [v11 count] == 2))
    {
      *(v8 + 11) = v11;
      __asm { FMOV            V0.2D, #-1.0 }

      *(v8 + 104) = _Q0;
      v8[120] = 1;
      v17 = [properties valueForKey:*MEMORY[0x1E696DE78]];
      v18 = MEMORY[0x1E696AD98];
      if ([v17 intValue] <= 8 && objc_msgSend(v17, "intValue") < 1)
      {
        intValue = 1;
      }

      else if ([v17 intValue] <= 8)
      {
        intValue = [v17 intValue];
      }

      else
      {
        intValue = 8;
      }

      *(v8 + 24) = [v18 numberWithInt:intValue];
      *(v8 + 17) = properties;
      *(v8 + 23) = [options objectForKeyedSubscript:*MEMORY[0x1E696E118]];
      [v8 setDefaults];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      optionKeys = [objc_opt_class() optionKeys];
      v22 = [optionKeys countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v29;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(optionKeys);
            }

            v26 = *(*(&v28 + 1) + 8 * i);
            v27 = [options objectForKeyedSubscript:v26];
            if (v27)
            {
              [v8 setValue:v27 forKey:v26];
            }
          }

          v23 = [optionKeys countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v23);
      }

      *(v8 + 16) = [objc_opt_class() matteOptionNameFromOptions:options];
    }

    else
    {
LABEL_12:

      return 0;
    }
  }

  return v8;
}

- (CIRAWFilterImpl)initWithImageSource:(CGImageSource *)source options:(id)options
{
  v33 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = CIRAWFilterImpl;
  v6 = [(CIRAWFilterImpl *)&v31 init];
  v7 = v6;
  if (v6)
  {
    if (source)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      *(v6 + 104) = _Q0;
      *(v6 + 10) = source;
      CFRetain(source);
      Type = CGImageSourceGetType(v7->_inputImageSource);
      if (Type)
      {
        v14 = CFStringHasSuffix(Type, @"raw-image") != 0;
      }

      else
      {
        v14 = 0;
      }

      v7->_isRawSource = v14;
      v15 = CGImageSourceCopyPropertiesAtIndex(v7->_inputImageSource, 0, &unk_1F10825F0);
      v16 = [(__CFDictionary *)v15 valueForKey:*MEMORY[0x1E696DE78]];
      v17 = MEMORY[0x1E696AD98];
      if ([v16 intValue] <= 8 && objc_msgSend(v16, "intValue") < 1)
      {
        intValue = 1;
      }

      else if ([v16 intValue] <= 8)
      {
        intValue = [v16 intValue];
      }

      else
      {
        intValue = 8;
      }

      v7->_defaultOrientation = [v17 numberWithInt:intValue];
      v7->_baseImageProperties = v15;
      v7->_typeIdentifierHint = [options objectForKeyedSubscript:*MEMORY[0x1E696E118]];
      [(CIRAWFilterImpl *)v7 setDefaults];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      optionKeys = [objc_opt_class() optionKeys];
      v20 = [optionKeys countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v28;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(optionKeys);
            }

            v24 = *(*(&v27 + 1) + 8 * i);
            v25 = [options objectForKeyedSubscript:v24];
            if (v25)
            {
              [(CIRAWFilterImpl *)v7 setValue:v25 forKey:v24];
            }
          }

          v21 = [optionKeys countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v21);
      }

      v7->_matteOption = [objc_opt_class() matteOptionNameFromOptions:options];
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (NSNumber)sushiMode
{
  v3 = [(NSDictionary *)[(CIRAWFilterImpl *)self rawReconstructionDefaultsDictionary] objectForKeyedSubscript:@"kCGImageSourceSupportedSushiLevels"];
  v4 = v3;
  if (self->inputRequestedSushiMode && [v3 containsObject:?])
  {
    v5 = MEMORY[0x1E696AD98];
    intValue = [(NSString *)self->inputRequestedSushiMode intValue];

    return [v5 numberWithInt:intValue];
  }

  else if (v4)
  {
    if ([v4 containsObject:@"3"])
    {
      return &unk_1F1082160;
    }

    else if ([v4 containsObject:@"2"])
    {
      return &unk_1F1082148;
    }

    else
    {
      return &unk_1F10820E8;
    }
  }

  else
  {
    return 0;
  }
}

- (NSDictionary)rawReconstructionDefaultsDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (!self->_baseImageProperties)
  {
    return MEMORY[0x1E695E0F8];
  }

  if (self->_isRawSource && !self->_rawReconstructionDefaultsDictionary)
  {
    if (self->_inputImageSource)
    {
      inputDecoderVersion = self->inputDecoderVersion;
      if (inputDecoderVersion)
      {
        v5 = *MEMORY[0x1E696E0C0];
        v16[0] = *MEMORY[0x1E696E080];
        v16[1] = v5;
        v17[0] = MEMORY[0x1E695E118];
        v17[1] = MEMORY[0x1E695E118];
        v16[2] = *MEMORY[0x1E696E0D8];
        v16[3] = @"kCGImageSourceShouldUseRawDataForFullSize";
        v17[2] = inputDecoderVersion;
        v17[3] = MEMORY[0x1E695E118];
        v6 = MEMORY[0x1E695DF20];
        v7 = v17;
        v8 = v16;
        v9 = 4;
      }

      else
      {
        v12 = *MEMORY[0x1E696E0C0];
        v14[0] = *MEMORY[0x1E696E080];
        v14[1] = v12;
        v15[0] = MEMORY[0x1E695E118];
        v15[1] = MEMORY[0x1E695E118];
        v14[2] = @"kCGImageSourceShouldUseRawDataForFullSize";
        v15[2] = MEMORY[0x1E695E118];
        v6 = MEMORY[0x1E695DF20];
        v7 = v15;
        v8 = v14;
        v9 = 3;
      }

      v13 = CGImageSourceCopyPropertiesAtIndex(self->_inputImageSource, 0, [v6 dictionaryWithObjects:v7 forKeys:v8 count:v9]);
      self->_rawReconstructionDefaultsDictionary = [(__CFDictionary *)v13 objectForKeyedSubscript:*MEMORY[0x1E696E090]];
      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      inputImageAndProperties = self->_inputImageAndProperties;
      if (inputImageAndProperties)
      {
        v11 = [(NSArray *)inputImageAndProperties objectAtIndexedSubscript:1];
        self->_rawReconstructionDefaultsDictionary = [v11 objectForKeyedSubscript:*MEMORY[0x1E696E090]];
      }
    }
  }

  return self->_rawReconstructionDefaultsDictionary;
}

- (NSDictionary)rawDictionary
{
  if (!self->_baseImageProperties)
  {
    return MEMORY[0x1E695E0F8];
  }

  isRawSource = self->_isRawSource;
  result = self->_rawDictionary;
  if (isRawSource && result == 0)
  {
    inputImageSource = self->_inputImageSource;
    if (inputImageSource)
    {
      v7 = [(__CFDictionary *)CGImageSourceCopyPropertiesAtIndex(inputImageSource objectForKeyedSubscript:[(CIRAWFilterImpl *)self rawOptions]), "objectForKeyedSubscript:", @"{Raw}"];
      v8 = dictionaryDeepCopy(v7);
    }

    else
    {
      result = self->_inputImageAndProperties;
      if (!result)
      {
        return result;
      }

      v8 = [-[NSDictionary objectAtIndexedSubscript:](result objectAtIndexedSubscript:{1), "objectForKeyedSubscript:", @"{Raw}"}];
    }

    result = v8;
    self->_rawDictionary = result;
  }

  return result;
}

- (NSArray)filters
{
  v79 = *MEMORY[0x1E69E9840];
  result = self->_filters;
  if (!result)
  {
    v4 = [(NSDictionary *)[(CIRAWFilterImpl *)self rawDictionary] objectForKeyedSubscript:@"filters"];
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v74 objects:v78 count:16];
    if (!v6)
    {
      v63 = [CIFilter filterWithName:@"CIExposureAdjust"];
      [(CIFilter *)v63 setValue:self->inputEV forKey:@"inputEV"];
      [v5 addObject:v63];
      goto LABEL_56;
    }

    v7 = v6;
    v70 = 0;
    v69 = 0;
    v8 = *v75;
    v9 = @"inputExposure";
LABEL_4:
    v10 = 0;
    while (1)
    {
      v11 = v9;
      if (*v75 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v74 + 1) + 8 * v10);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      if ([(NSString *)v14 isEqualToString:@"RAWDemosaicFilter"])
      {
        goto LABEL_19;
      }

      if ([(NSString *)v14 isEqualToString:@"RAWGamutMap"])
      {
        if ([(NSNumber *)self->inputDisableGamutMap BOOLValue])
        {
          goto LABEL_19;
        }

        [(NSNumber *)self->inputEnableEDRMode floatValue];
        *&v15 = fminf(fmaxf(*&v15, 0.0), 2.0);
        if (*&v15 > 0.0)
        {
          *&v15 = (*&v15 * 2.0) + 1.0;
          [v12 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v15), @"inputGamutMapMax"}];
        }
      }

      v16 = [v12 copy];
      [v5 addObject:v16];

      if ([objc_msgSend(v16 "inputKeys")])
      {
        [v16 setValue:self->inputDraftMode forKey:@"inputDraftMode"];
      }

      if ([(NSString *)v14 isEqualToString:@"RAWReduceNoise"])
      {
        [v16 setValue:self->inputLuminanceNoiseReductionAmount forKey:@"inputLNRAmount"];
        [v16 setValue:self->inputColorNoiseReductionAmount forKey:@"inputCNRAmount"];
        [v16 setValue:self->inputNoiseReductionSharpnessAmount forKey:@"inputSharpenAmount"];
        [v16 setValue:self->inputNoiseReductionContrastAmount forKey:@"inputContrastAmount"];
        [v16 setValue:self->inputNoiseReductionDetailAmount forKey:@"inputDetailAmount"];
        inputMoireAmount = self->inputMoireAmount;
        v18 = v16;
        v19 = @"inputMoireAmount";
        goto LABEL_18;
      }

      if ([(NSString *)v14 isEqualToString:@"RAWRadialLensCorrection"])
      {
        inputMoireAmount = self->inputEnableVendorLensCorrection;
        v18 = v16;
        v19 = @"inputLDCExecuteFlags";
        goto LABEL_18;
      }

      if ([(NSString *)v14 isEqualToString:@"RAWConvert"])
      {
        break;
      }

      if ([(NSString *)v14 isEqualToString:@"RAWAdjustTempTint"])
      {
        whitePoint = [(CIRAWFilterImpl *)self whitePoint];
        v22 = v16;
        v23 = @"inputWhitePoint";
        goto LABEL_26;
      }

      if ([(NSString *)v14 isEqualToString:@"RAWAdjustExposureAndBias"])
      {
        v9 = v11;
        [v16 setValue:self->inputEV forKey:v11];
        [v16 setValue:-[CIRAWFilterImpl inputBaselineExposure](self forKey:{"inputBaselineExposure"), @"inputBaselineExposure"}];
        [v16 setValue:-[CIRAWFilterImpl inputBias](self forKey:{"inputBias"), @"inputBias"}];
        [-[CIRAWFilterImpl defaultInputLocalToneMapAmount](self "defaultInputLocalToneMapAmount")];
        if (v24 <= 0.0)
        {
          goto LABEL_32;
        }

        [v16 setValue:&unk_1F1082130 forKey:v11];
        v69 = 0;
      }

      else
      {
        if ([(NSString *)v14 isEqualToString:@"RAWHueMagnet"])
        {
          v25 = MEMORY[0x1E696AD98];
          [(NSNumber *)self->inputBoost doubleValue];
          v27 = v26;
          [(NSNumber *)self->inputHueMagMR doubleValue];
          [v16 setValue:objc_msgSend(v25 forKey:{"numberWithDouble:", v27 * v28), @"inputHueMagMR"}];
          v65 = MEMORY[0x1E696AD98];
          [(NSNumber *)self->inputBoost doubleValue];
          v30 = v29;
          [(NSNumber *)self->inputHueMagRY doubleValue];
          [v16 setValue:objc_msgSend(v65 forKey:{"numberWithDouble:", v30 * v31), @"inputHueMagRY"}];
          v66 = MEMORY[0x1E696AD98];
          [(NSNumber *)self->inputBoost doubleValue];
          v33 = v32;
          [(NSNumber *)self->inputHueMagYG doubleValue];
          [v16 setValue:objc_msgSend(v66 forKey:{"numberWithDouble:", v33 * v34), @"inputHueMagYG"}];
          v67 = MEMORY[0x1E696AD98];
          [(NSNumber *)self->inputBoost doubleValue];
          v36 = v35;
          [(NSNumber *)self->inputHueMagGC doubleValue];
          [v16 setValue:objc_msgSend(v67 forKey:{"numberWithDouble:", v36 * v37), @"inputHueMagGC"}];
          v68 = MEMORY[0x1E696AD98];
          [(NSNumber *)self->inputBoost doubleValue];
          v39 = v38;
          [(NSNumber *)self->inputHueMagCB doubleValue];
          [v16 setValue:objc_msgSend(v68 forKey:{"numberWithDouble:", v39 * v40), @"inputHueMagCB"}];
          v41 = MEMORY[0x1E696AD98];
          [(NSNumber *)self->inputBoost doubleValue];
          v43 = v42;
          [(NSNumber *)self->inputHueMagBM doubleValue];
          inputMoireAmount = [v41 numberWithDouble:v43 * v44];
          v18 = v16;
          v19 = @"inputHueMagBM";
          goto LABEL_18;
        }

        if (![(NSString *)v14 isEqualToString:@"RAWAdjustColorTRC"])
        {
          if ([(NSString *)v14 isEqualToString:@"RAWAdjustColors"])
          {
            inputMoireAmount = self->inputBoost;
            v18 = v16;
            v19 = @"inputBoostAmount";
            goto LABEL_18;
          }

          if ([(NSString *)v14 isEqualToString:@"RAWTemperatureAdjust"])
          {
            v9 = v11;
            [v16 setValue:self->inputEV forKey:v11];
            [v16 setValue:-[CIRAWFilterImpl whitePoint](self forKey:{"whitePoint"), @"inputWhitePoint"}];
            v70 = 1;
LABEL_32:
            v69 = 1;
            goto LABEL_20;
          }

          if (self->inputLinearSpaceFilter && (v52 = objc_opt_class(), [NSStringFromClass(v52) isEqualToString:@"RAWLinearSpacePlaceholder"]))
          {
            [v5 addObject:self->inputLinearSpaceFilter];
          }

          else if ([(NSString *)v14 isEqualToString:@"RAWProfileGainTableMap"])
          {
            [(NSNumber *)self->inputEnableEDRMode floatValue];
            v58 = fminf(fmaxf(v57, 0.0), 2.0);
            [(NSNumber *)self->inputLocalToneMapAmount floatValue];
            v60 = (v58 * -0.2 + 1.0) * v59;
            *&v60 = v60;
            inputMoireAmount = [MEMORY[0x1E696AD98] numberWithFloat:v60];
            v18 = v16;
            v19 = @"inputStrength";
LABEL_18:
            [v18 setValue:inputMoireAmount forKey:v19];
          }

LABEL_19:
          v9 = v11;
          goto LABEL_20;
        }

        [v16 setValue:self->inputBoost forKey:@"inputBoostAmount"];
        [v16 setValue:self->inputBoostShadowAmount forKey:@"inputBoostShadowAmount"];
        [(NSNumber *)self->inputEnableEDRMode floatValue];
        v46 = fminf(fmaxf(v45, 0.0), 2.0);
        if (v46 <= 0.0)
        {
          goto LABEL_19;
        }

        v47 = v46;
        if (![v16 valueForKey:@"inputReferencePoints"])
        {
          [objc_msgSend(v16 valueForKey:{@"inputTRCy3", "doubleValue"}];
          v54 = v53;
          [objc_msgSend(v16 valueForKey:{@"inputTRCs3", "doubleValue"}];
          v56 = (v47 * 0.25 + 1.0 - (v54 + v55 * 0.2)) / 0.3;
          [v16 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v47 * 0.25 + 1.0), @"inputTRCy4"}];
          v9 = v11;
          v49 = [MEMORY[0x1E696AD98] numberWithDouble:v56];
          v50 = v16;
          v51 = @"inputTRCs4";
          goto LABEL_46;
        }

        v9 = v11;
        if ([objc_msgSend(v16 "inputKeys")])
        {
          v48 = v47 * 0.75 + 1.0;
          *&v48 = v48;
          v49 = [MEMORY[0x1E696AD98] numberWithFloat:v48];
          v50 = v16;
          v51 = @"inputBoostHDRAmount";
LABEL_46:
          [v50 setValue:v49 forKey:v51];
        }
      }

LABEL_20:
      if (v7 == ++v10)
      {
        v61 = [v4 countByEnumeratingWithState:&v74 objects:v78 count:16];
        v7 = v61;
        if (!v61)
        {
          if (v69 & v70)
          {
            goto LABEL_57;
          }

          if ((v69 & 1) == 0)
          {
            v62 = [CIFilter filterWithName:@"CIExposureAdjust"];
            [(CIFilter *)v62 setValue:self->inputEV forKey:@"inputEV"];
            [v5 addObject:v62];
          }

          if (v70)
          {
LABEL_57:
            result = v5;
            self->_filters = result;
            return result;
          }

LABEL_56:
          v64 = [CIFilter filterWithName:@"CIColorMatrix"];
          [(CIFilter *)v64 setDefaults];
          v72 = 0;
          v73 = 0;
          v71 = 0;
          [(CIRAWFilterImpl *)self getWhitePointVectorsR:&v73 g:&v72 b:&v71];
          [(CIFilter *)v64 setValue:v73 forKey:@"inputRVector"];
          [(CIFilter *)v64 setValue:v72 forKey:@"inputGVector"];
          [(CIFilter *)v64 setValue:v71 forKey:@"inputBVector"];
          [v5 addObject:v64];
          goto LABEL_57;
        }

        goto LABEL_4;
      }
    }

    v20 = [-[CIRAWFilterImpl valueForKey:](self valueForKey:{@"inputDisableHighlightRecovery", "BOOLValue"}];
    [v16 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v20 ^ 1u), @"inputShouldRecoverHighlights"}];
    whitePoint = [(CIRAWFilterImpl *)self whitePointArray];
    v22 = v16;
    v23 = @"inputNeutral";
LABEL_26:
    [v22 setValue:whitePoint forKey:v23];
    v70 = 1;
    goto LABEL_19;
  }

  return result;
}

- (int)subsampling
{
  if ([(NSNumber *)[(CIRAWFilterImpl *)self sushiMode] intValue]== 3)
  {
    return 0;
  }

  [(NSNumber *)self->inputScaleFactor floatValue];
  v5 = v4;
  bOOLValue = [(NSNumber *)self->inputDraftMode BOOLValue];
  result = 0;
  if (bOOLValue)
  {
    v7 = 1.0 / v5;
    if ((1.0 / v5) >= 0.5)
    {
      if (v7 >= 8.0)
      {
        return 3;
      }

      if (v7 >= 4.0)
      {
        return 2;
      }

      return v7 >= 2.0;
    }
  }

  return result;
}

- (void)invalidateFilters
{
  self->_rawDictionary = 0;

  self->_filters = 0;
}

- (void)invalidateInputImage
{
  [(CIRAWFilterImpl *)self invalidateFilters];

  self->_inputImage = 0;
}

- (id)rawOptionsWithSubsampling:(BOOL)subsampling
{
  subsamplingCopy = subsampling;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = dictionary;
  inputDecoderVersion = self->inputDecoderVersion;
  if (inputDecoderVersion)
  {
    [dictionary setObject:inputDecoderVersion forKeyedSubscript:*MEMORY[0x1E696E0D8]];
  }

  inputEnableSharpening = self->inputEnableSharpening;
  if (inputEnableSharpening)
  {
    [v6 setObject:inputEnableSharpening forKeyedSubscript:*MEMORY[0x1E696E098]];
  }

  inputEnableNoiseTracking = self->inputEnableNoiseTracking;
  if (inputEnableNoiseTracking)
  {
    [v6 setObject:inputEnableNoiseTracking forKeyedSubscript:*MEMORY[0x1E696E078]];
  }

  inputNoiseReductionAmount = self->inputNoiseReductionAmount;
  if (inputNoiseReductionAmount)
  {
    [v6 setObject:inputNoiseReductionAmount forKeyedSubscript:@"kCGImageSourceNoiseReductionAmount"];
    [v6 setObject:self->inputNoiseReductionAmount forKeyedSubscript:@"kCGImageSourceLuminanceNoiseReductionAmount"];
  }

  inputLuminanceNoiseReductionAmount = self->inputLuminanceNoiseReductionAmount;
  if (inputLuminanceNoiseReductionAmount)
  {
    [v6 setObject:inputLuminanceNoiseReductionAmount forKeyedSubscript:@"kCGImageSourceLuminanceNoiseReductionAmount"];
  }

  inputColorNoiseReductionAmount = self->inputColorNoiseReductionAmount;
  if (inputColorNoiseReductionAmount)
  {
    [v6 setObject:inputColorNoiseReductionAmount forKeyedSubscript:@"kCGImageSourceColorNoiseReductionAmount"];
  }

  inputNoiseReductionSharpnessAmount = self->inputNoiseReductionSharpnessAmount;
  if (inputNoiseReductionSharpnessAmount)
  {
    [v6 setObject:inputNoiseReductionSharpnessAmount forKeyedSubscript:@"kCGImageSourceNoiseReductionSharpnessAmount"];
  }

  inputNoiseReductionContrastAmount = self->inputNoiseReductionContrastAmount;
  if (inputNoiseReductionContrastAmount)
  {
    [v6 setObject:inputNoiseReductionContrastAmount forKeyedSubscript:@"kCGImageSourceNoiseReductionContrastAmount"];
  }

  inputNoiseReductionDetailAmount = self->inputNoiseReductionDetailAmount;
  if (inputNoiseReductionDetailAmount)
  {
    [v6 setObject:inputNoiseReductionDetailAmount forKeyedSubscript:@"kCGImageSourceNoiseReductionDetailAmount"];
  }

  inputMoireAmount = self->inputMoireAmount;
  if (inputMoireAmount)
  {
    [v6 setObject:inputMoireAmount forKeyedSubscript:@"kCGImageSourceChromaBlurMoireAmount"];
  }

  inputEnableVendorLensCorrection = self->inputEnableVendorLensCorrection;
  if (inputEnableVendorLensCorrection)
  {
    [v6 setObject:inputEnableVendorLensCorrection forKeyedSubscript:@"kCGImageSourceDisableVendorLensDistortionCorrection"];
  }

  inputEnableEDRMode = self->inputEnableEDRMode;
  if (inputEnableEDRMode)
  {
    [v6 setObject:inputEnableEDRMode forKeyedSubscript:@"kCGImageSourceUseEDRMode"];
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v20 = *MEMORY[0x1E696E080];
  [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696E080]];
  if ([(CIRAWFilterImpl *)self sushiMode])
  {
    sushiMode = [(CIRAWFilterImpl *)self sushiMode];
    [dictionary2 setObject:sushiMode forKeyedSubscript:*MEMORY[0x1E696E0C0]];
  }

  [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCGImageSourceShouldUseRawDataForFullSize"];
  [dictionary2 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696E090]];
  [dictionary2 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E696E0A8]];
  [dictionary2 setObject:&unk_1F10820E8 forKeyedSubscript:v20];
  typeIdentifierHint = self->_typeIdentifierHint;
  if (typeIdentifierHint)
  {
    [dictionary2 setObject:typeIdentifierHint forKeyedSubscript:*MEMORY[0x1E696E118]];
  }

  if (subsamplingCopy && [(NSNumber *)[(CIRAWFilterImpl *)self sushiMode] intValue]<= 2)
  {
    subsampling = [(CIRAWFilterImpl *)self subsampling];
    if (subsampling < 1)
    {
      v24 = &unk_1F10820E8;
    }

    else
    {
      v24 = [MEMORY[0x1E696AD98] numberWithInt:(1 << subsampling)];
    }

    [dictionary2 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696E0F8]];
  }

  if (self->inputDecoderVersion)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [dictionary2 setObject:self->inputDecoderVersion forKeyedSubscript:*MEMORY[0x1E696E0D8]];
    }
  }

  return dictionary2;
}

- (void)setTempTintAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v53 = *MEMORY[0x1E69E9840];
  v6 = [(CIRAWFilterImpl *)self transformedImageIgnoringOrientation:0 andIgnoringScaleFactor:0];
  v7 = x;
  v8 = roundf(v7);
  v9 = v8;
  v10 = y;
  v11 = roundf(v10);
  v12 = v11;
  [v6 extent];
  v14 = v13;
  v16 = v15;
  [v6 extent];
  v52 = 0.0;
  v51 = 0;
  if (v8 >= 9.0 && v11 >= 9.0 && v17 + -9.0 >= v9 && v18 + -9.0 >= v12)
  {
    v22 = malloc_type_malloc(0x288uLL, 0x1000040BDFB0063uLL);
    v23 = malloc_type_malloc(0x510uLL, 0x100004052888210uLL);
    v24 = v23;
    if (v22 && v23)
    {
      [+[CIContext _singletonContext](CIContext "_singletonContext")];
      *&src.height = xmmword_19CF289C0;
      src.rowBytes = 72;
      dest.data = v24;
      *&dest.height = xmmword_19CF289C0;
      dest.rowBytes = 144;
      src.data = v22;
      vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
      v25 = 0;
      v26 = 0;
      v27 = 0.0;
      do
      {
        v26 = vadd_f32(*&v24[v25], v26);
        v27 = *&v24[v25 + 8] + v27;
        v25 += 16;
      }

      while (v25 != 1296);
      free(v22);
      free(v24);
      v42 = vdiv_f32(v26, vdup_n_s32(0x42A20000u));
      v51 = v42;
      v28 = v27 / 81.0;
      v52 = v28;
      if ([-[CIRAWFilterImpl valueForKey:](self valueForKey:{@"inputDecoderVersion", "intValue"}] < 2)
      {
        src.data = 0;
        dest.data = 0;
        CI_GenericRGBLinear_to_TempTint(&v51, &src, &dest);
        -[CIRAWFilterImpl setInputNeutralTemperature:](self, "setInputNeutralTemperature:", [MEMORY[0x1E696AD98] numberWithDouble:*&src.data]);
        -[CIRAWFilterImpl setInputNeutralTint:](self, "setInputNeutralTint:", [MEMORY[0x1E696AD98] numberWithDouble:*&dest.data]);
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        filters = [(CIRAWFilterImpl *)self filters];
        v30 = [(NSArray *)filters countByEnumeratingWithState:&v43 objects:v50 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v44;
          v33 = v28 / v42.f32[1];
          while (2)
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v44 != v32)
              {
                objc_enumerationMutation(filters);
              }

              v35 = *(*(&v43 + 1) + 8 * i);
              v36 = objc_opt_class();
              if ([NSStringFromClass(v36) isEqualToString:@"RAWConvert"])
              {
                v37 = [v35 copy];
                *&v38 = v42.f32[0] / v42.f32[1];
                v49[0] = [MEMORY[0x1E696AD98] numberWithFloat:v38];
                *&v39 = v42.f32[1] / v42.f32[1];
                v49[1] = [MEMORY[0x1E696AD98] numberWithFloat:v39];
                *&v40 = v33;
                v49[2] = [MEMORY[0x1E696AD98] numberWithFloat:v40];
                [v37 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v49, 3), @"inputNeutral"}];
                v41 = [v37 performSelector:NSSelectorFromString(&cfstr_Inputneutralxy.isa)];
                -[CIRAWFilterImpl setInputNeutralChromaticityX:](self, "setInputNeutralChromaticityX:", [v41 objectAtIndexedSubscript:0]);
                -[CIRAWFilterImpl setInputNeutralChromaticityY:](self, "setInputNeutralChromaticityY:", [v41 objectAtIndexedSubscript:1]);

                return;
              }
            }

            v31 = [(NSArray *)filters countByEnumeratingWithState:&v43 objects:v50 count:16];
            if (v31)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    else
    {
      if (v22)
      {
        free(v22);
      }

      if (v24)
      {

        free(v24);
      }
    }
  }
}

- (CGSize)nativeSize
{
  p_nativeSize = &self->_nativeSize;
  if (self->_nativeSize.width < 0.0)
  {
    if (self->_inputImageSource)
    {
      v3 = CGImageSourceCopyPropertiesAtIndex(self->_inputImageSource, 0, [(CIRAWFilterImpl *)self rawOptionsWithSubsampling:0]);
      v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"PixelWidth"];
      v5 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"PixelHeight"];
      v6 = [-[__CFDictionary valueForKeyPath:](v3 valueForKeyPath:{@"{Raw}.filters", "objectAtIndexedSubscript:", 0}];
      v7 = objc_opt_class();
      if ([NSStringFromClass(v7) isEqualToString:@"RAWDemosaicFilter"])
      {
        v8 = [v6 valueForKey:@"inputCropRect"];
        if (v8)
        {
          v9 = v8;
          v10 = MEMORY[0x1E696AD98];
          [v8 Z];
          v4 = [v10 numberWithDouble:?];
          v11 = MEMORY[0x1E696AD98];
          [v9 W];
          v5 = [v11 numberWithDouble:?];
        }
      }

      if (v4)
      {
        v12 = v5 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        [v4 doubleValue];
        v14 = v13;
        [v5 doubleValue];
        p_nativeSize->width = v14;
        p_nativeSize->height = v15;
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }

    else
    {
      inputImageAndProperties = self->_inputImageAndProperties;
      if (inputImageAndProperties)
      {
        v17 = [(NSArray *)inputImageAndProperties objectAtIndexedSubscript:1];
        v18 = [v17 objectForKeyedSubscript:@"PixelWidth"];
        v19 = [v17 objectForKeyedSubscript:@"PixelHeight"];
        if (!v18)
        {
          v18 = [v17 valueForKeyPath:@"{Exif}.PixelXDimension"];
        }

        if (!v19)
        {
          v19 = [v17 valueForKeyPath:@"{Exif}.PixelYDimension"];
        }

        v20 = [objc_msgSend(v17 valueForKeyPath:{@"{Raw}.filters", "objectAtIndexedSubscript:", 0}];
        v21 = objc_opt_class();
        if ([NSStringFromClass(v21) isEqualToString:@"RAWDemosaicFilter"])
        {
          v22 = [v20 valueForKey:@"inputCropRect"];
          if (v22)
          {
            v23 = v22;
            v24 = MEMORY[0x1E696AD98];
            [v22 Z];
            v18 = [v24 numberWithDouble:?];
            v25 = MEMORY[0x1E696AD98];
            [v23 W];
            v19 = [v25 numberWithDouble:?];
          }
        }

        if (v18)
        {
          v26 = v19 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          [v18 doubleValue];
          v28 = v27;
          [v19 doubleValue];
          p_nativeSize->width = v28;
          p_nativeSize->height = v29;
        }
      }
    }
  }

  width = p_nativeSize->width;
  height = p_nativeSize->height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)getScaleTransform:(SEL)transform
{
  [(NSNumber *)self->inputScaleFactor doubleValue];
  v7 = v6 * (1 << [(CIRAWFilterImpl *)self subsampling]);

  return CGAffineTransformMakeScale(retstr, v7, v7);
}

- (CGAffineTransform)getOrientationTransform:(SEL)transform
{
  v49 = *MEMORY[0x1E69E9840];
  [a4 extent];
  v8 = v7;
  [a4 extent];
  v10 = v9;
  inputIgnoreOrientation = self->inputIgnoreOrientation;
  if (inputIgnoreOrientation && (result = [(NSNumber *)inputIgnoreOrientation BOOLValue], result))
  {
    v13 = MEMORY[0x1E695EFD0];
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v14;
    *&retstr->tx = *(v13 + 32);
  }

  else
  {
    v15 = v8;
    v16 = v10;
    result = [(NSNumber *)self->inputImageOrientation intValue];
    v20[0] = 0x3FF0000000000000;
    v20[1] = 0;
    v20[2] = 0;
    v20[3] = 0x3FF0000000000000;
    v20[4] = 0;
    v20[5] = 0;
    v20[6] = 0xBFF0000000000000;
    v20[7] = 0;
    v20[8] = 0;
    v20[9] = 0x3FF0000000000000;
    *&v20[10] = v15;
    v21 = xmmword_19CF26640;
    v22 = 0;
    v23 = 0;
    v24 = 0xBFF0000000000000;
    v25 = v15;
    v26 = v16;
    v28 = 0;
    v29 = 0;
    v27 = 0x3FF0000000000000;
    v30 = xmmword_19CF25100;
    v31 = v16;
    v32 = xmmword_19CF26640;
    v33 = xmmword_19CF25100;
    v34 = v16;
    v35 = v15;
    v36 = xmmword_19CF26640;
    v38 = 0;
    v39 = 0;
    v37 = 0x3FF0000000000000;
    v40 = v15;
    v41 = xmmword_19CF26650;
    v43 = 0u;
    v44 = 0u;
    v42 = 0x3FF0000000000000;
    v45 = 0x3FF0000000000000;
    v46 = xmmword_19CF25100;
    v47 = v16;
    v48 = 0;
    if ((result - 9) >= 0xFFFFFFF8)
    {
      v17 = result - 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = &v20[6 * v17];
    v19 = v18[2];
    *&retstr->c = v18[1];
    *&retstr->tx = v19;
    *&retstr->a = *v18;
  }

  return result;
}

- (id)transformedImageIgnoringOrientation:(BOOL)orientation andIgnoringScaleFactor:(BOOL)factor
{
  v48 = *MEMORY[0x1E69E9840];
  if (self->_isRawSource && ![(NSArray *)self->_supportedDecoderVersions count])
  {
    return 0;
  }

  inputImage = [(CIRAWFilterImpl *)self inputImage];
  v45 = *(MEMORY[0x1E695EFD0] + 32);
  orientationCopy = orientation;
  if (factor)
  {
    v8 = *MEMORY[0x1E695EFD0];
    v9 = *(MEMORY[0x1E695EFD0] + 16);
  }

  else
  {
    [(CIRAWFilterImpl *)self getScaleTransform:inputImage];
    v8 = v42;
    v9 = v43;
    v45 = v44;
  }

  v31 = v8;
  v32 = v9;
  v40 = 0u;
  v41 = 0u;
  v10 = fmax(fabs(*&v8), fmax(fabs(*(&v8 + 1)), fmax(fabs(*&v9), fabs(*(&v9 + 1)))));
  v38 = 0u;
  v39 = 0u;
  filters = [(CIRAWFilterImpl *)self filters];
  v12 = [(NSArray *)filters countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(filters);
        }

        v14 |= [objc_msgSend(objc_opt_class() "description")];
      }

      v13 = [(NSArray *)filters countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v13);
    if (!(v14 & 1 | (v10 > 1.0)))
    {
      goto LABEL_14;
    }
  }

  else if (v10 <= 1.0)
  {
LABEL_14:
    v42 = v31;
    v43 = v32;
    v44 = v45;
    inputImage = scaleImageWithQuality(inputImage, &v42);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  filters2 = [(CIRAWFilterImpl *)self filters];
  v18 = [(NSArray *)filters2 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(filters2);
        }

        v22 = *(*(&v34 + 1) + 8 * j);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        if ([(NSString *)v24 isEqualToString:@"CIAffineTransform"]|| [(NSString *)v24 isEqualToString:@"CILanczosScaleTransform"]|| [(NSString *)v24 isEqualToString:@"RAWCropFilter"])
        {
          [v22 setValue:inputImage forKey:@"inputImage"];
          inputImage = [v22 outputImage];
        }

        if ([(NSString *)v24 isEqualToString:@"RAWCropFilter"])
        {
          v25 = v10 <= 1.0;
        }

        else
        {
          v25 = 0;
        }

        if (v25)
        {
          v42 = v31;
          v43 = v32;
          v44 = v45;
          inputImage = scaleImageWithQuality(inputImage, &v42);
        }

        [v22 setValue:0 forKey:@"inputImage"];
      }

      v19 = [(NSArray *)filters2 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v19);
  }

  if (v10 <= 1.0)
  {
    selfCopy2 = self;
    if (orientationCopy)
    {
      return inputImage;
    }
  }

  else
  {
    selfCopy2 = self;
    if (self)
    {
      [(CIRAWFilterImpl *)self getScaleTransform:inputImage];
      v27 = v42;
      v28 = v43;
    }

    else
    {
      v27 = 0uLL;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      v28 = 0uLL;
    }

    v45 = v44;
    v42 = v27;
    v43 = v28;
    inputImage = scaleImageWithQuality(inputImage, &v42);
    if (orientationCopy)
    {
      return inputImage;
    }
  }

  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  if (selfCopy2)
  {
    [(CIRAWFilterImpl *)selfCopy2 getOrientationTransform:inputImage];
  }

  v33[0] = v42;
  v33[1] = v43;
  v33[2] = v44;
  return [inputImage imageByApplyingTransform:v33];
}

- (id)outputImage
{
  v61[1] = *MEMORY[0x1E69E9840];
  if (self->_matteOption)
  {
    inputImageSource = self->_inputImageSource;
    matteOption = self->_matteOption;
    v61[0] = MEMORY[0x1E695E118];
    return +[CIImage imageWithCGImageSource:index:options:](CIImage, "imageWithCGImageSource:index:options:", inputImageSource, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&matteOption count:1]);
  }

  if (self->_isRawSource && ![(NSArray *)self->_supportedDecoderVersions count])
  {
    return 0;
  }

  inputImage = [(CIRAWFilterImpl *)self inputImage];
  v7 = [-[CIRAWFilterImpl valueForKey:](self valueForKey:{@"inputReturnDemosaiced", "BOOLValue"}];
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  [(CIRAWFilterImpl *)self getScaleTransform:inputImage];
  v8 = fmax(fabs(*&v55), fmax(fabs(*(&v55 + 1)), fmax(fabs(*&v56), fabs(*(&v56 + 1)))));
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  filters = [(CIRAWFilterImpl *)self filters];
  v10 = [(NSArray *)filters countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v52;
LABEL_9:
    v13 = 0;
    while (1)
    {
      if (*v52 != v12)
      {
        objc_enumerationMutation(filters);
      }

      if ([objc_msgSend(objc_opt_class() "description")])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [(NSArray *)filters countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v11)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    if (v8 <= 1.0)
    {
      v48 = v55;
      v49 = v56;
      v50 = v57;
      inputImage = scaleImageWithQuality(inputImage, &v48);
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  selfCopy = self;
  filters2 = [(CIRAWFilterImpl *)self filters];
  v15 = [(NSArray *)filters2 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (!v15)
  {
LABEL_33:
    if (v8 > 1.0)
    {
      [(CIRAWFilterImpl *)selfCopy getScaleTransform:inputImage];
      v56 = v49;
      v57 = v50;
      v55 = v48;
      inputImage = scaleImageWithQuality(inputImage, &v48);
    }

    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    [(CIRAWFilterImpl *)selfCopy getOrientationTransform:inputImage];
    v43[0] = v48;
    v43[1] = v49;
    v43[2] = v50;
    v21 = [inputImage imageByApplyingTransform:v43];
    intValue = [(NSString *)selfCopy->inputDecoderVersion intValue];
    v23 = MEMORY[0x1E695F0B8];
    if (intValue <= 6)
    {
      v23 = MEMORY[0x1E695F0A0];
    }

    v24 = CGColorSpaceCreateWithName(*v23);
    if (v24)
    {
      v25 = v24;
      v21 = [v21 imageByTaggingWithColorSpace:v24];
      CFRelease(v25);
    }

    v26 = [(NSDictionary *)selfCopy->_baseImageProperties mutableCopy];
    v27 = *MEMORY[0x1E696DF28];
    v28 = [objc_msgSend(v26 objectForKeyedSubscript:{*MEMORY[0x1E696DF28]), "mutableCopy"}];
    v29 = *MEMORY[0x1E696D9B0];
    v30 = [objc_msgSend(v26 objectForKeyedSubscript:{*MEMORY[0x1E696D9B0]), "mutableCopy"}];
    if (v28)
    {
      [v26 setObject:v28 forKeyedSubscript:v27];
    }

    if (v30)
    {
      [v26 setObject:v30 forKeyedSubscript:v29];
    }

    inputIgnoreOrientation = selfCopy->inputIgnoreOrientation;
    if (inputIgnoreOrientation && [(NSNumber *)inputIgnoreOrientation BOOLValue])
    {
      defaultOrientation = selfCopy->_defaultOrientation;
    }

    else
    {
      defaultOrientation = &unk_1F10820E8;
    }

    v33 = *MEMORY[0x1E696DE78];
    if ([v26 valueForKey:*MEMORY[0x1E696DE78]])
    {
      [v26 setValue:defaultOrientation forKey:v33];
    }

    if ([v28 objectForKeyedSubscript:v33])
    {
      [v28 setValue:defaultOrientation forKey:v33];
    }

    [v21 extent];
    v35 = v34;
    v37 = v36;
    v38 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
    [v26 setValue:v38 forKey:*MEMORY[0x1E696DED8]];
    v39 = [MEMORY[0x1E696AD98] numberWithDouble:v37];
    [v26 setValue:v39 forKey:*MEMORY[0x1E696DEC8]];
    v40 = *MEMORY[0x1E696DAA8];
    if ([v30 valueForKey:*MEMORY[0x1E696DAA8]])
    {
      [v30 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v35), v40}];
    }

    v41 = *MEMORY[0x1E696DAB0];
    if ([v30 valueForKey:*MEMORY[0x1E696DAB0]])
    {
      [v30 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v37), v41}];
    }

    return [v21 imageBySettingProperties:v26];
  }

  v16 = v15;
  v17 = *v45;
LABEL_19:
  v18 = 0;
  while (1)
  {
    if (*v45 != v17)
    {
      objc_enumerationMutation(filters2);
    }

    v19 = *(*(&v44 + 1) + 8 * v18);
    if ([objc_msgSend(v19 "inputKeys")])
    {
      [v19 setValue:-[CIRAWFilterImpl valueForKey:](selfCopy forKey:{"valueForKey:", @"inputScaleFactor", @"inputScaleFactor"}];
    }

    [v19 setValue:inputImage forKey:@"inputImage"];
    inputImage = [v19 outputImage];
    if ([objc_msgSend(objc_opt_class() "description")])
    {
      v20 = v8 <= 1.0;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v48 = v55;
      v49 = v56;
      v50 = v57;
      inputImage = scaleImageWithQuality(inputImage, &v48);
    }

    [v19 setValue:0 forKey:@"inputImage"];
    if ([objc_msgSend(objc_opt_class() "description")] & v7)
    {
      return inputImage;
    }

    if (v16 == ++v18)
    {
      v16 = [(NSArray *)filters2 countByEnumeratingWithState:&v44 objects:v58 count:16];
      if (v16)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  if ([key isEqualToString:@"inputNeutralChromaticityX"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"inputNeutralChromaticityY") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"inputNeutralTemperature") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"inputNeutralTint"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CIRAWFilterImpl;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, key);
}

- (id)RAWFiltersValueForKeyPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(NSDictionary *)[(CIRAWFilterImpl *)self rawDictionary] objectForKeyedSubscript:@"filters"];
  v5 = [path componentsSeparatedByString:@"."];
  if ([v5 count] <= 2)
  {
    if (![v5 count])
    {
      return v4;
    }

    v6 = [v5 objectAtIndexedSubscript:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v6 isEqual:{objc_msgSend(objc_opt_class(), "description")}])
          {
            v9 = v12;
          }
        }

        v8 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if ([v5 count] == 1)
    {
      return v9;
    }

    v13 = [v5 objectAtIndexedSubscript:1];
    if ([objc_msgSend(v9 "inputKeys")])
    {
      return [v9 valueForKey:v13];
    }
  }

  return 0;
}

- (id)inputImage
{
  result = self->_inputImage;
  if (result)
  {
    return result;
  }

  inputImageSource = self->_inputImageSource;
  if (inputImageSource)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(inputImageSource, 0, [(CIRAWFilterImpl *)self rawOptions]);
    if (ImageAtIndex)
    {
      v6 = ImageAtIndex;
      v7 = [(NSDictionary *)[(CIRAWFilterImpl *)self rawDictionary] objectForKeyedSubscript:@"filters"];
      v8 = [v7 objectAtIndexedSubscript:0];
      if ([v7 count] && (v9 = objc_opt_class(), -[NSString isEqualToString:](NSStringFromClass(v9), "isEqualToString:", @"RAWDemosaicFilter")))
      {
        [v8 setValue:-[CIImage imageBySettingProperties:](+[CIImage imageWithCGImage:](CIImage forKey:{"imageWithCGImage:", v6), "imageBySettingProperties:", self->_baseImageProperties), @"inputImage"}];
        if ([objc_msgSend(v8 "inputKeys")])
        {
          [v8 setValue:self->inputDraftMode forKey:@"inputDraftMode"];
        }

        if ([objc_msgSend(v8 "inputKeys")])
        {
          [v8 setValue:self->inputScaleFactor forKey:@"inputScaleFactor"];
        }

        self->_inputImage = [v8 outputImage];
        [v8 setValue:0 forKey:@"inputImage"];
      }

      else
      {
        self->_inputImage = [[CIImage imageWithCGImage:?], "imageBySettingProperties:", self->_baseImageProperties];
      }

      CGImageRelease(v6);
      result = self->_inputImage;
      if (!result)
      {
        [CIRAWFilterImpl(CustomAccessors) inputImage];
      }

      return result;
    }

LABEL_21:
    result = +[CIImage emptyImage];
    self->_inputImage = result;
    return result;
  }

  if (!self->_inputImageAndProperties)
  {
    goto LABEL_21;
  }

  v10 = [(NSDictionary *)[(CIRAWFilterImpl *)self rawDictionary] objectForKeyedSubscript:@"filters"];
  v11 = [v10 objectAtIndexedSubscript:0];
  if (![v10 count] || (v12 = objc_opt_class(), !-[NSString isEqualToString:](NSStringFromClass(v12), "isEqualToString:", @"RAWDemosaicFilter")))
  {
    result = [-[NSArray objectAtIndexedSubscript:](self->_inputImageAndProperties objectAtIndexedSubscript:{0), "imageBySettingProperties:", self->_baseImageProperties}];
    self->_inputImage = result;
    if (result)
    {
      return result;
    }

LABEL_26:
    [CIRAWFilterImpl(CustomAccessors) inputImage];
  }

  [v11 setValue:objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_inputImageAndProperties forKey:{"objectAtIndexedSubscript:", 0), "imageBySettingProperties:", self->_baseImageProperties), @"inputImage"}];
  if ([objc_msgSend(v11 "inputKeys")])
  {
    [v11 setValue:self->inputDraftMode forKey:@"inputDraftMode"];
  }

  if ([objc_msgSend(v11 "inputKeys")])
  {
    [v11 setValue:self->inputScaleFactor forKey:@"inputScaleFactor"];
  }

  self->_inputImage = [v11 outputImage];
  [v11 setValue:0 forKey:@"inputImage"];
  result = self->_inputImage;
  if (!result)
  {
    goto LABEL_26;
  }

  return result;
}

- (id)defaultImageOrientation
{
  v3 = MEMORY[0x1E696AD98];
  if ([(NSNumber *)self->inputIgnoreOrientation BOOLValue]|| [(NSNumber *)self->_defaultOrientation intValue]<= 8 && [(NSNumber *)self->_defaultOrientation intValue]< 1)
  {
    intValue = 1;
  }

  else if ([(NSNumber *)self->_defaultOrientation intValue]<= 8)
  {
    intValue = [(NSNumber *)self->_defaultOrientation intValue];
  }

  else
  {
    intValue = 8;
  }

  return [v3 numberWithInt:intValue];
}

- (id)inputNeutralLocation
{
  v2 = objc_alloc_init(CIVector);

  return v2;
}

- (void)setInputNeutralLocation:(id)location
{
  if (!self->_calledDealloc)
  {
    [location X];
    v7 = v6;
    [location Y];

    [(CIRAWFilterImpl *)self setTempTintAtPoint:v7, v8];
  }
}

- (void)setInputScaleFactor:(id)factor
{
  if (!self->_calledDealloc)
  {
    inputScaleFactor = self->inputScaleFactor;
    if (factor)
    {
      if (inputScaleFactor)
      {
        if ([factor isEqualToValue:inputScaleFactor])
        {
          return;
        }

        inputScaleFactor = self->inputScaleFactor;
      }

      subsampling = [(CIRAWFilterImpl *)self subsampling];
      [factor doubleValue];
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(fmin(v7, 1.0), 0.0)}];
    }

    else
    {
      subsampling = [(CIRAWFilterImpl *)self subsampling];
      v8 = 0;
    }

    self->inputScaleFactor = v8;

    if ([(CIRAWFilterImpl *)self subsampling]!= subsampling || !self->_inputImage)
    {

      [(CIRAWFilterImpl *)self invalidateInputImage];
    }
  }
}

- (void)setInputDraftMode:(id)mode
{
  if (!self->_calledDealloc)
  {
    bOOLValue = [(NSNumber *)self->inputDraftMode BOOLValue];
    if (bOOLValue != [mode BOOLValue])
    {
      inputDraftMode = self->inputDraftMode;
      subsampling = [(CIRAWFilterImpl *)self subsampling];
      self->inputDraftMode = mode;

      if ([(CIRAWFilterImpl *)self subsampling]!= subsampling || !self->_inputImage)
      {

        [(CIRAWFilterImpl *)self invalidateInputImage];
      }
    }
  }
}

- (void)setInputEnableSharpening:(id)sharpening
{
  bOOLValue = [(NSNumber *)self->inputEnableSharpening BOOLValue];
  if (bOOLValue != [sharpening BOOLValue])
  {
    inputEnableSharpening = self->inputEnableSharpening;
    self->inputEnableSharpening = sharpening;

    [(CIRAWFilterImpl *)self invalidateInputImage];
  }
}

- (void)setInputEnableNoiseTracking:(id)tracking
{
  bOOLValue = [(NSNumber *)self->inputEnableNoiseTracking BOOLValue];
  if (bOOLValue != [tracking BOOLValue])
  {
    inputEnableNoiseTracking = self->inputEnableNoiseTracking;
    self->inputEnableNoiseTracking = tracking;

    [(CIRAWFilterImpl *)self invalidateInputImage];
  }
}

- (void)setInputNoiseReductionAmount:(id)amount
{
  inputNoiseReductionAmount = self->inputNoiseReductionAmount;
  if (inputNoiseReductionAmount != amount)
  {
    if (amount)
    {
      if ([(NSNumber *)self->inputNoiseReductionAmount isEqualToNumber:amount])
      {
        return;
      }

      inputNoiseReductionAmount = self->inputNoiseReductionAmount;
    }

    self->inputNoiseReductionAmount = amount;

    [(CIRAWFilterImpl *)self invalidateInputImage];
  }
}

- (void)setInputEnableVendorLensCorrection:(id)correction
{
  inputEnableVendorLensCorrection = self->inputEnableVendorLensCorrection;
  if (inputEnableVendorLensCorrection != correction)
  {
    if (correction)
    {
      if ([(NSNumber *)self->inputEnableVendorLensCorrection isEqualToNumber:correction])
      {
        return;
      }

      inputEnableVendorLensCorrection = self->inputEnableVendorLensCorrection;
    }

    self->inputEnableVendorLensCorrection = [correction copy];

    if ([(NSNumber *)[(CIRAWFilterImpl *)self sushiMode] intValue]< 2)
    {

      [(CIRAWFilterImpl *)self invalidateInputImage];
    }

    else
    {

      [(CIRAWFilterImpl *)self invalidateFilters];
    }
  }
}

- (void)setInputLuminanceNoiseReductionAmount:(id)amount
{
  inputLuminanceNoiseReductionAmount = self->inputLuminanceNoiseReductionAmount;
  if (inputLuminanceNoiseReductionAmount != amount)
  {
    if (amount)
    {
      if ([(NSNumber *)self->inputLuminanceNoiseReductionAmount isEqualToNumber:amount])
      {
        return;
      }

      inputLuminanceNoiseReductionAmount = self->inputLuminanceNoiseReductionAmount;
    }

    self->inputLuminanceNoiseReductionAmount = [amount copy];

    if ([(NSNumber *)[(CIRAWFilterImpl *)self sushiMode] intValue]< 2)
    {

      [(CIRAWFilterImpl *)self invalidateInputImage];
    }

    else
    {

      [(CIRAWFilterImpl *)self invalidateFilters];
    }
  }
}

- (void)setInputColorNoiseReductionAmount:(id)amount
{
  inputColorNoiseReductionAmount = self->inputColorNoiseReductionAmount;
  if (inputColorNoiseReductionAmount != amount)
  {
    if (amount)
    {
      if ([(NSNumber *)self->inputColorNoiseReductionAmount isEqualToNumber:amount])
      {
        return;
      }

      inputColorNoiseReductionAmount = self->inputColorNoiseReductionAmount;
    }

    self->inputColorNoiseReductionAmount = [amount copy];

    if ([(NSNumber *)[(CIRAWFilterImpl *)self sushiMode] intValue]< 2)
    {

      [(CIRAWFilterImpl *)self invalidateInputImage];
    }

    else
    {

      [(CIRAWFilterImpl *)self invalidateFilters];
    }
  }
}

- (void)setInputNoiseReductionSharpnessAmount:(id)amount
{
  inputNoiseReductionSharpnessAmount = self->inputNoiseReductionSharpnessAmount;
  if (inputNoiseReductionSharpnessAmount != amount)
  {
    if (amount)
    {
      if ([(NSNumber *)self->inputNoiseReductionSharpnessAmount isEqualToNumber:amount])
      {
        return;
      }

      inputNoiseReductionSharpnessAmount = self->inputNoiseReductionSharpnessAmount;
    }

    self->inputNoiseReductionSharpnessAmount = [amount copy];

    if ([(NSNumber *)[(CIRAWFilterImpl *)self sushiMode] intValue]< 2)
    {

      [(CIRAWFilterImpl *)self invalidateInputImage];
    }

    else
    {

      [(CIRAWFilterImpl *)self invalidateFilters];
    }
  }
}

- (void)setInputNoiseReductionContrastAmount:(id)amount
{
  inputNoiseReductionContrastAmount = self->inputNoiseReductionContrastAmount;
  if (inputNoiseReductionContrastAmount != amount)
  {
    if (amount)
    {
      if ([(NSNumber *)self->inputNoiseReductionContrastAmount isEqualToNumber:amount])
      {
        return;
      }

      inputNoiseReductionContrastAmount = self->inputNoiseReductionContrastAmount;
    }

    self->inputNoiseReductionContrastAmount = [amount copy];

    if ([(NSNumber *)[(CIRAWFilterImpl *)self sushiMode] intValue]< 2)
    {

      [(CIRAWFilterImpl *)self invalidateInputImage];
    }

    else
    {

      [(CIRAWFilterImpl *)self invalidateFilters];
    }
  }
}

- (void)setInputNoiseReductionDetailAmount:(id)amount
{
  inputNoiseReductionDetailAmount = self->inputNoiseReductionDetailAmount;
  if (inputNoiseReductionDetailAmount != amount)
  {
    if (amount)
    {
      if ([(NSNumber *)self->inputNoiseReductionDetailAmount isEqualToNumber:amount])
      {
        return;
      }

      inputNoiseReductionDetailAmount = self->inputNoiseReductionDetailAmount;
    }

    self->inputNoiseReductionDetailAmount = [amount copy];

    if ([(NSNumber *)[(CIRAWFilterImpl *)self sushiMode] intValue]< 2)
    {

      [(CIRAWFilterImpl *)self invalidateInputImage];
    }

    else
    {

      [(CIRAWFilterImpl *)self invalidateFilters];
    }
  }
}

- (void)setInputMoireAmount:(id)amount
{
  inputMoireAmount = self->inputMoireAmount;
  if (inputMoireAmount != amount)
  {
    if (amount)
    {
      if ([(NSNumber *)self->inputMoireAmount isEqualToNumber:amount])
      {
        return;
      }

      inputMoireAmount = self->inputMoireAmount;
    }

    self->inputMoireAmount = [amount copy];

    if ([(NSNumber *)[(CIRAWFilterImpl *)self sushiMode] intValue]< 2)
    {

      [(CIRAWFilterImpl *)self invalidateInputImage];
    }

    else
    {

      [(CIRAWFilterImpl *)self invalidateFilters];
    }
  }
}

- (void)setInputEV:(id)v
{
  inputEV = self->inputEV;
  if (inputEV != v)
  {
    if (v)
    {
      if ([(NSNumber *)self->inputEV isEqualToNumber:v])
      {
        return;
      }

      inputEV = self->inputEV;
    }

    self->inputEV = [v copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputBoost:(id)boost
{
  inputBoost = self->inputBoost;
  if (inputBoost != boost)
  {
    if (boost)
    {
      if ([(NSNumber *)self->inputBoost isEqualToNumber:boost])
      {
        return;
      }

      inputBoost = self->inputBoost;
    }

    self->inputBoost = [boost copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputDecoderVersion:(id)version
{
  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    version = [version stringValue];
  }

  if (version)
  {
    v6 = objc_opt_class();
    if (([v6 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      v7 = ci_logger_api();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CIRAWFilterImpl(CustomAccessors) setInputDecoderVersion:v7];
      }
    }
  }

  if ([(NSArray *)self->_supportedDecoderVersions containsObject:version])
  {
    if (self->inputDecoderVersion != version && ([version isEqualToString:?] & 1) == 0)
    {
      inputDecoderVersion = self->inputDecoderVersion;
      self->inputDecoderVersion = [version copy];

      self->_rawDictionary = 0;
      self->_rawReconstructionDefaultsDictionary = 0;
      [(CIRAWFilterImpl *)self invalidateInputImage];
    }
  }

  else if (self->_isRawSource)
  {
    if ([(NSArray *)self->_supportedDecoderVersions count])
    {
      v9 = ci_logger_api();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CIRAWFilterImpl(CustomAccessors) *)version setInputDecoderVersion:v9];
      }
    }
  }
}

- (void)setInputImageOrientation:(id)orientation
{
  intValue = [orientation intValue];
  if (intValue != [(NSNumber *)self->inputImageOrientation intValue])
  {
    inputImageOrientation = self->inputImageOrientation;
    self->inputImageOrientation = [orientation copy];
  }
}

- (void)setInputIgnoreOrientation:(id)orientation
{
  bOOLValue = [orientation BOOLValue];
  if (bOOLValue != [(NSNumber *)self->inputIgnoreOrientation BOOLValue])
  {
    inputIgnoreOrientation = self->inputIgnoreOrientation;
    self->inputIgnoreOrientation = [orientation copy];

    defaultImageOrientation = [(CIRAWFilterImpl *)self defaultImageOrientation];

    [(CIRAWFilterImpl *)self setInputImageOrientation:defaultImageOrientation];
  }
}

- (void)setInputReturnDemosaiced:(id)demosaiced
{
  intValue = [demosaiced intValue];
  if (intValue != [(NSNumber *)self->inputReturnDemosaiced intValue])
  {
    inputReturnDemosaiced = self->inputReturnDemosaiced;
    self->inputReturnDemosaiced = [demosaiced copy];
  }
}

- (id)defaultInputReturnDemosaiced
{
  result = self->inputReturnDemosaiced;
  if (!result)
  {
    [(CIRAWFilterImpl *)self setInputReturnDemosaiced:[(NSDictionary *)[(CIRAWFilterImpl *)self rawReconstructionDefaultsDictionary] valueForKey:@"kCGImageSourceReturnDemosaiced"]];
    return self->inputReturnDemosaiced;
  }

  return result;
}

- (void)setInputEnableEDRMode:(id)mode
{
  inputEnableEDRMode = self->inputEnableEDRMode;
  if (inputEnableEDRMode != mode)
  {
    if (mode)
    {
      if ([(NSNumber *)self->inputEnableEDRMode isEqualToNumber:mode])
      {
        return;
      }

      inputEnableEDRMode = self->inputEnableEDRMode;
    }

    self->inputEnableEDRMode = mode;

    [(CIRAWFilterImpl *)self invalidateInputImage];
  }
}

- (void)setInputLocalToneMapAmount:(id)amount
{
  inputLocalToneMapAmount = self->inputLocalToneMapAmount;
  if (inputLocalToneMapAmount != amount)
  {
    if (amount)
    {
      if ([(NSNumber *)self->inputLocalToneMapAmount isEqualToNumber:amount])
      {
        return;
      }

      inputLocalToneMapAmount = self->inputLocalToneMapAmount;
    }

    self->inputLocalToneMapAmount = amount;

    [(CIRAWFilterImpl *)self invalidateInputImage];
  }
}

- (id)defaultInputLuminanceNoiseReductionAmount
{
  result = self->inputLuminanceNoiseReductionAmount;
  if (!result)
  {
    [(CIRAWFilterImpl *)self setInputLuminanceNoiseReductionAmount:[(NSDictionary *)[(CIRAWFilterImpl *)self rawReconstructionDefaultsDictionary] valueForKey:@"kCGImageSourceLuminanceNoiseReductionAmount"]];
    return self->inputLuminanceNoiseReductionAmount;
  }

  return result;
}

- (id)defaultInputColorNoiseReductionAmount
{
  result = self->inputColorNoiseReductionAmount;
  if (!result)
  {
    [(CIRAWFilterImpl *)self setInputColorNoiseReductionAmount:[(NSDictionary *)[(CIRAWFilterImpl *)self rawReconstructionDefaultsDictionary] valueForKey:@"kCGImageSourceColorNoiseReductionAmount"]];
    return self->inputColorNoiseReductionAmount;
  }

  return result;
}

- (id)defaultInputNoiseReductionContrastAmount
{
  result = self->inputNoiseReductionContrastAmount;
  if (!result)
  {
    [(CIRAWFilterImpl *)self setInputNoiseReductionContrastAmount:[(NSDictionary *)[(CIRAWFilterImpl *)self rawReconstructionDefaultsDictionary] valueForKey:@"kCGImageSourceNoiseReductionContrastAmount"]];
    return self->inputNoiseReductionContrastAmount;
  }

  return result;
}

- (id)defaultInputNoiseReductionDetailAmount
{
  result = self->inputNoiseReductionDetailAmount;
  if (!result)
  {
    [(CIRAWFilterImpl *)self setInputNoiseReductionDetailAmount:[(NSDictionary *)[(CIRAWFilterImpl *)self rawReconstructionDefaultsDictionary] valueForKey:@"kCGImageSourceNoiseReductionDetailAmount"]];
    return self->inputNoiseReductionDetailAmount;
  }

  return result;
}

- (id)defaultInputNoiseReductionSharpnessAmount
{
  result = self->inputNoiseReductionSharpnessAmount;
  if (!result)
  {
    [(CIRAWFilterImpl *)self setInputNoiseReductionSharpnessAmount:[(NSDictionary *)[(CIRAWFilterImpl *)self rawReconstructionDefaultsDictionary] valueForKey:@"kCGImageSourceNoiseReductionSharpnessAmount"]];
    return self->inputNoiseReductionSharpnessAmount;
  }

  return result;
}

- (id)defaultInputMoireAmount
{
  result = self->inputMoireAmount;
  if (!result)
  {
    [(CIRAWFilterImpl *)self setInputMoireAmount:[(NSDictionary *)[(CIRAWFilterImpl *)self rawReconstructionDefaultsDictionary] valueForKey:@"kCGImageSourceChromaBlurMoireAmount"]];
    return self->inputMoireAmount;
  }

  return result;
}

- (id)defaultInputEnableVendorLensCorrection
{
  if (!self->inputEnableVendorLensCorrection)
  {
    v3 = [-[NSDictionary valueForKey:](-[CIRAWFilterImpl rawReconstructionDefaultsDictionary](self "rawReconstructionDefaultsDictionary")];
    v4 = [-[NSDictionary valueForKey:](-[CIRAWFilterImpl rawReconstructionDefaultsDictionary](self "rawReconstructionDefaultsDictionary")] & 4;
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4 == 0;
    }

    if (v5)
    {
      v6 = &unk_1F1082130;
    }

    else
    {
      v6 = &unk_1F10820E8;
    }

    [(CIRAWFilterImpl *)self setInputEnableVendorLensCorrection:v6];
  }

  return self->inputEnableVendorLensCorrection;
}

- (id)defaultDecoderVersion
{
  supportedDecoderVersions = [(CIRAWFilterImpl *)self supportedDecoderVersions];
  if (!supportedDecoderVersions)
  {
    return 0;
  }

  v3 = supportedDecoderVersions;
  if (![supportedDecoderVersions count])
  {
    return 0;
  }

  return [v3 lastObject];
}

- (id)defaultInputEnableEDRMode
{
  result = self->inputEnableEDRMode;
  if (!result)
  {
    [(CIRAWFilterImpl *)self setInputEnableEDRMode:[(NSDictionary *)[(CIRAWFilterImpl *)self rawReconstructionDefaultsDictionary] valueForKey:@"kCGImageSourceUseEDRMode"]];
    return self->inputEnableEDRMode;
  }

  return result;
}

- (id)supportedSushiModes
{
  v31 = *MEMORY[0x1E69E9840];
  result = self->_supportedSushiModes;
  if (!result)
  {
    inputImageSource = self->_inputImageSource;
    if (inputImageSource)
    {
      v5 = CGImageSourceCopyPropertiesAtIndex(inputImageSource, 0, [(CIRAWFilterImpl *)self rawOptions]);
      v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x1E696E090]];
      array = [MEMORY[0x1E695DF70] array];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = [v6 objectForKeyedSubscript:@"kCGImageSourceSupportedSushiLevels"];
      v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [array addObject:*(*(&v25 + 1) + 8 * i)];
          }

          v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v10);
      }

      result = [array copy];
      self->_supportedSushiModes = result;
      if (v5)
      {
        CFRelease(v5);
        return self->_supportedSushiModes;
      }
    }

    else
    {
      result = self->_inputImageAndProperties;
      if (result)
      {
        v13 = [result objectAtIndexedSubscript:1];
        v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696E090]];
        array2 = [MEMORY[0x1E695DF70] array];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v16 = [v14 objectForKeyedSubscript:{@"kCGImageSourceSupportedSushiLevels", 0}];
        v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v22;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v22 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [array2 addObject:*(*(&v21 + 1) + 8 * j)];
            }

            v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v18);
        }

        result = [array2 copy];
        self->_supportedSushiModes = result;
      }
    }
  }

  return result;
}

- (id)supportedDecoderVersions
{
  v39 = *MEMORY[0x1E69E9840];
  if (!self->_baseImageProperties)
  {
    return MEMORY[0x1E695E0F0];
  }

  result = self->_supportedDecoderVersions;
  if (!result)
  {
    inputImageSource = self->_inputImageSource;
    if (inputImageSource)
    {
      selfCopy = self;
      cf = CGImageSourceCopyPropertiesAtIndex(inputImageSource, 0, [(CIRAWFilterImpl *)self rawOptions]);
      v5 = [(__CFDictionary *)cf objectForKeyedSubscript:*MEMORY[0x1E696E090]];
      array = [MEMORY[0x1E695DF70] array];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696E088]];
      v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v34;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v34 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v33 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v12 floatValue];
              if (v13 >= 1.0)
              {
                [v12 floatValue];
                if (v14 < 10.0)
                {
                  [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@", v12)}];
                }
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v9);
      }

      result = [array copy];
      selfCopy->_supportedDecoderVersions = result;
      if (cf)
      {
        CFRelease(cf);
        return selfCopy->_supportedDecoderVersions;
      }
    }

    else
    {
      result = self->_inputImageAndProperties;
      if (result)
      {
        selfCopy2 = self;
        v15 = [result objectAtIndexedSubscript:1];
        v16 = [v15 objectForKeyedSubscript:*MEMORY[0x1E696E090]];
        array2 = [MEMORY[0x1E695DF70] array];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v18 = [v16 objectForKeyedSubscript:*MEMORY[0x1E696E088]];
        v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v30;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v30 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v29 + 1) + 8 * j);
              if (objc_opt_respondsToSelector())
              {
                [v23 floatValue];
                if (v24 >= 1.0)
                {
                  [v23 floatValue];
                  if (v25 < 10.0)
                  {
                    [array2 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@", v23)}];
                  }
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v20);
        }

        result = [array2 copy];
        selfCopy2->_supportedDecoderVersions = result;
      }
    }
  }

  return result;
}

- (void)setInputBias:(id)bias
{
  inputBias = self->inputBias;
  if (inputBias != bias)
  {
    if (bias)
    {
      if ([(NSNumber *)self->inputBias isEqualToNumber:bias])
      {
        return;
      }

      inputBias = self->inputBias;
    }

    self->inputBias = [bias copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputBaselineExposure:(id)exposure
{
  inputBaselineExposure = self->inputBaselineExposure;
  if (inputBaselineExposure != exposure)
  {
    if (exposure)
    {
      if ([(NSNumber *)self->inputBaselineExposure isEqualToNumber:exposure])
      {
        return;
      }

      inputBaselineExposure = self->inputBaselineExposure;
    }

    self->inputBaselineExposure = [exposure copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputHueMagMR:(id)r
{
  inputHueMagMR = self->inputHueMagMR;
  if (inputHueMagMR != r)
  {
    if (r)
    {
      if ([(NSNumber *)self->inputHueMagMR isEqualToNumber:r])
      {
        return;
      }

      inputHueMagMR = self->inputHueMagMR;
    }

    self->inputHueMagMR = [r copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputHueMagRY:(id)y
{
  inputHueMagRY = self->inputHueMagRY;
  if (inputHueMagRY != y)
  {
    if (y)
    {
      if ([(NSNumber *)self->inputHueMagRY isEqualToNumber:y])
      {
        return;
      }

      inputHueMagRY = self->inputHueMagRY;
    }

    self->inputHueMagRY = [y copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputHueMagYG:(id)g
{
  inputHueMagYG = self->inputHueMagYG;
  if (inputHueMagYG != g)
  {
    if (g)
    {
      if ([(NSNumber *)self->inputHueMagYG isEqualToNumber:g])
      {
        return;
      }

      inputHueMagYG = self->inputHueMagYG;
    }

    self->inputHueMagYG = [g copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputHueMagGC:(id)c
{
  inputHueMagGC = self->inputHueMagGC;
  if (inputHueMagGC != c)
  {
    if (c)
    {
      if ([(NSNumber *)self->inputHueMagGC isEqualToNumber:c])
      {
        return;
      }

      inputHueMagGC = self->inputHueMagGC;
    }

    self->inputHueMagGC = [c copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputHueMagCB:(id)b
{
  inputHueMagCB = self->inputHueMagCB;
  if (inputHueMagCB != b)
  {
    if (b)
    {
      if ([(NSNumber *)self->inputHueMagCB isEqualToNumber:b])
      {
        return;
      }

      inputHueMagCB = self->inputHueMagCB;
    }

    self->inputHueMagCB = [b copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputHueMagBM:(id)m
{
  inputHueMagBM = self->inputHueMagBM;
  if (inputHueMagBM != m)
  {
    if (m)
    {
      if ([(NSNumber *)self->inputHueMagBM isEqualToNumber:m])
      {
        return;
      }

      inputHueMagBM = self->inputHueMagBM;
    }

    self->inputHueMagBM = [m copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputDisableHighlightRecovery:(id)recovery
{
  inputDisableHighlightRecovery = self->inputDisableHighlightRecovery;
  if (inputDisableHighlightRecovery != recovery)
  {
    if (recovery)
    {
      if ([(NSNumber *)self->inputDisableHighlightRecovery isEqualToNumber:recovery])
      {
        return;
      }

      inputDisableHighlightRecovery = self->inputDisableHighlightRecovery;
    }

    self->inputDisableHighlightRecovery = [recovery copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputDisableGamutMap:(id)map
{
  inputDisableGamutMap = self->inputDisableGamutMap;
  if (inputDisableGamutMap != map)
  {
    if (map)
    {
      if ([(NSNumber *)self->inputDisableGamutMap isEqualToNumber:map])
      {
        return;
      }

      inputDisableGamutMap = self->inputDisableGamutMap;
    }

    self->inputDisableGamutMap = [map copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputLinearSpaceFilter:(id)filter
{
  inputLinearSpaceFilter = self->inputLinearSpaceFilter;
  if (inputLinearSpaceFilter != filter)
  {
    self->inputLinearSpaceFilter = filter;

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (void)setInputBoostShadowAmount:(id)amount
{
  inputBoostShadowAmount = self->inputBoostShadowAmount;
  if (inputBoostShadowAmount != amount)
  {
    if (amount)
    {
      if ([(NSNumber *)self->inputBoostShadowAmount isEqualToNumber:amount])
      {
        return;
      }

      inputBoostShadowAmount = self->inputBoostShadowAmount;
    }

    self->inputBoostShadowAmount = [amount copy];

    [(CIRAWFilterImpl *)self invalidateFilters];
  }
}

- (id)defaultBoostShadowAmount
{
  rawDictionary = [(CIRAWFilterImpl *)self rawDictionary];

  return [(NSDictionary *)rawDictionary objectForKeyedSubscript:@"bsamt"];
}

- (id)activeKeys
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:30];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(NSDictionary *)[(CIRAWFilterImpl *)self rawDictionary] objectForKeyedSubscript:@"filters"];
  v20 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v20)
  {
    v19 = *v22;
    do
    {
      v4 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = @"inputNeutralChromaticityX";
        v8 = @"inputNeutralChromaticityY";
        v10 = @"inputNeutralTemperature";
        v9 = @"inputNeutralTint";
        v11 = @"inputNeutralLocation";
        if ([(NSString *)v6 isEqualToString:@"RAWConvert"])
        {
          goto LABEL_8;
        }

        v7 = @"inputNeutralChromaticityX";
        v8 = @"inputNeutralChromaticityY";
        v10 = @"inputNeutralTemperature";
        v9 = @"inputNeutralTint";
        v11 = @"inputNeutralLocation";
        if ([(NSString *)v6 isEqualToString:@"RAWAdjustTempTint"])
        {
          goto LABEL_8;
        }

        v9 = @"inputBias";
        v10 = @"inputBaselineExposure";
        v11 = @"inputEV";
        if ([(NSString *)v6 isEqualToString:@"RAWAdjustExposureAndBias"])
        {
          goto LABEL_9;
        }

        v11 = @"inputBoostShadowAmount";
        v9 = @"inputBoost";
        if ([(NSString *)v6 isEqualToString:@"RAWAdjustColorTRC"])
        {
          goto LABEL_10;
        }

        v11 = @"inputBoost";
        if ([(NSString *)v6 isEqualToString:@"RAWAdjustColors"])
        {
          goto LABEL_11;
        }

        v12 = [(NSString *)v6 isEqualToString:@"RAWTemperatureAdjust"];
        v13 = @"inputNeutralChromaticityX";
        v7 = @"inputNeutralChromaticityY";
        v8 = @"inputNeutralTemperature";
        v10 = @"inputNeutralTint";
        v9 = @"inputNeutralLocation";
        v11 = @"inputEV";
        if (v12 || (v14 = [(NSString *)v6 isEqualToString:@"RAWReduceNoise"], v7 = @"inputColorNoiseReductionAmount", v13 = @"inputLuminanceNoiseReductionAmount", v10 = @"inputNoiseReductionContrastAmount", v8 = @"inputNoiseReductionSharpnessAmount", v11 = @"inputMoireAmount", v9 = @"inputNoiseReductionDetailAmount", v14))
        {
          [v3 addObject:v13];
LABEL_8:
          [v3 addObject:v7];
          [v3 addObject:v8];
LABEL_9:
          [v3 addObject:v10];
LABEL_10:
          [v3 addObject:v9];
LABEL_11:
          [v3 addObject:v11];
          goto LABEL_12;
        }

        v11 = @"inputEnableVendorLensCorrection";
        if ([(NSString *)v6 isEqualToString:@"RAWLensCorrectionDNG"])
        {
          goto LABEL_11;
        }

        v11 = @"inputEnableVendorLensCorrection";
        if ([(NSString *)v6 isEqualToString:@"RAWRadialLensCorrection"])
        {
          goto LABEL_11;
        }

        v11 = @"inputEnableVendorLensCorrection";
        if ([(NSString *)v6 isEqualToString:@"RAWRadialLensCorrectionRB"])
        {
          goto LABEL_11;
        }

        v11 = @"inputDisableGamutMap";
        if ([(NSString *)v6 isEqualToString:@"RAWGamutMap"])
        {
          goto LABEL_11;
        }

        v11 = @"inputLocalToneMapAmount";
        if ([(NSString *)v6 isEqualToString:@"RAWProfileGainTableMap"])
        {
          goto LABEL_11;
        }

LABEL_12:
        ++v4;
      }

      while (v20 != v4);
      v15 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      v20 = v15;
    }

    while (v15);
  }

  [v3 addObject:@"inputEV"];
  [v3 addObject:@"inputEnableSharpening"];
  [v3 addObject:@"inputNeutralChromaticityX"];
  [v3 addObject:@"inputNeutralChromaticityY"];
  [v3 addObject:@"inputNeutralTemperature"];
  [v3 addObject:@"inputNeutralTint"];
  [v3 addObject:@"inputNeutralLocation"];
  if ([(CIRAWFilterImpl *)self rawMajorVersion]== 2)
  {
    v16 = &kCIInputEnableChromaticNoiseTrackingKey;
  }

  else
  {
    if ([(CIRAWFilterImpl *)self rawMajorVersion]< 6)
    {
      goto LABEL_32;
    }

    v16 = &kCIInputNoiseReductionAmountKey;
  }

  [v3 addObject:*v16];
LABEL_32:
  if ([(CIRAWFilterImpl *)self rawMajorVersion]> 6)
  {
    [v3 addObject:@"inputEnableEDRMode"];
  }

  return v3;
}

- (id)outputNativeSize
{
  [-[CIRAWFilterImpl transformedImageIgnoringOrientation:andIgnoringScaleFactor:](self transformedImageIgnoringOrientation:1 andIgnoringScaleFactor:{1), "extent"}];
  v4 = v3;
  v6 = v5;
  subsampling = [(CIRAWFilterImpl *)self subsampling];

  return [CIVector vectorWithX:(v4 << subsampling) Y:(v6 << subsampling)];
}

+ (void)convertNeutralX:(id)x y:(id)y toTemperature:(id *)temperature tint:(id *)tint
{
  [x doubleValue];
  v10 = v9;
  [y doubleValue];
  v12 = 0.0;
  v13 = 0.0;
  CI_xy_to_TempTint(&v13, &v12, v10, v11);
  if (temperature)
  {
    *temperature = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  }

  if (tint)
  {
    *tint = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  }
}

+ (void)convertNeutralTemperature:(id)temperature tint:(id)tint toX:(id *)x y:(id *)y
{
  [temperature doubleValue];
  v10 = v9;
  [tint doubleValue];
  v12 = 0.0;
  v13 = 0.0;
  CI_TempTint_to_xy(&v13, &v12, v10, v11);
  if (x)
  {
    *x = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  }

  if (y)
  {
    *y = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  }
}

- (void)updateTemperatureAndTint
{
  inputNeutralChromaticityX = self->inputNeutralChromaticityX;
  if (!inputNeutralChromaticityX || !self->inputNeutralChromaticityY)
  {

    self->inputNeutralChromaticityX = 0;
    self->inputNeutralChromaticityY = 0;
    self->inputNeutralChromaticityX = [(CIRAWFilterImpl *)self defaultNeutralChromaticityX];
    self->inputNeutralChromaticityY = [(CIRAWFilterImpl *)self defaultNeutralChromaticityY];
  }

  if (self->inputNeutralTemperature)
  {
    p_inputNeutralTemperature = 0;
  }

  else
  {
    p_inputNeutralTemperature = &self->inputNeutralTemperature;
  }

  if (self->inputNeutralTint)
  {
    p_inputNeutralTint = 0;
  }

  else
  {
    p_inputNeutralTint = &self->inputNeutralTint;
  }

  [objc_opt_class() convertNeutralX:self->inputNeutralChromaticityX y:self->inputNeutralChromaticityY toTemperature:p_inputNeutralTemperature tint:p_inputNeutralTint];
  if (p_inputNeutralTemperature)
  {
    v6 = *p_inputNeutralTemperature;
  }

  if (p_inputNeutralTint)
  {
    v7 = *p_inputNeutralTint;

    v8 = v7;
  }
}

- (void)updateChomaticityXAndY
{
  if (self->inputNeutralChromaticityX)
  {
    p_inputNeutralChromaticityX = 0;
  }

  else
  {
    p_inputNeutralChromaticityX = &self->inputNeutralChromaticityX;
  }

  if (self->inputNeutralChromaticityY)
  {
    p_inputNeutralChromaticityY = 0;
  }

  else
  {
    p_inputNeutralChromaticityY = &self->inputNeutralChromaticityY;
  }

  [objc_opt_class() convertNeutralTemperature:self->inputNeutralTemperature tint:self->inputNeutralTint toX:p_inputNeutralChromaticityX y:p_inputNeutralChromaticityY];
  if (p_inputNeutralChromaticityX)
  {
    v4 = *p_inputNeutralChromaticityX;
  }

  if (p_inputNeutralChromaticityY)
  {
    v5 = *p_inputNeutralChromaticityY;

    v6 = v5;
  }
}

- (id)defaultNeutralTemperature
{
  v3 = [(NSDictionary *)[(CIRAWFilterImpl *)self rawDictionary] objectForKeyedSubscript:@"wx"];
  v4 = [(NSDictionary *)[(CIRAWFilterImpl *)self rawDictionary] objectForKeyedSubscript:@"wy"];
  if (v3 && v4)
  {
    v7 = 0;
    [objc_opt_class() convertNeutralX:v3 y:v4 toTemperature:&v7 tint:0];
    return v7;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    CI_xy_to_TempTint(&v7, &v6, 0.34570291, 0.3585386);
    return [MEMORY[0x1E696AD98] numberWithDouble:*&v7];
  }
}

- (id)inputNeutralTemperature
{
  result = self->inputNeutralTemperature;
  if (!result)
  {
    [(CIRAWFilterImpl *)self updateTemperatureAndTint];
    return self->inputNeutralTemperature;
  }

  return result;
}

- (void)setInputNeutralTemperature:(id)temperature
{
  if (!self->_calledDealloc)
  {
    inputNeutralTemperature = self->inputNeutralTemperature;
    if (inputNeutralTemperature != temperature && (!temperature || ![(NSNumber *)inputNeutralTemperature isEqualToNumber:temperature]))
    {
      if (!self->inputNeutralTint)
      {
        [(CIRAWFilterImpl *)self inputNeutralTint];
      }

      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralTemperature"];
      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralChromaticityX"];
      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralChromaticityY"];
      v6 = self->inputNeutralTemperature;
      self->inputNeutralTemperature = [temperature copy];

      self->inputNeutralChromaticityX = 0;
      self->inputNeutralChromaticityY = 0;
      [(CIRAWFilterImpl *)self invalidateFilters];
      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralChromaticityY"];
      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralChromaticityX"];

      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralTemperature"];
    }
  }
}

- (id)inputNeutralTint
{
  result = self->inputNeutralTint;
  if (!result)
  {
    [(CIRAWFilterImpl *)self updateTemperatureAndTint];
    return self->inputNeutralTint;
  }

  return result;
}

- (id)defaultNeutralTint
{
  v3 = [(NSDictionary *)[(CIRAWFilterImpl *)self rawDictionary] objectForKeyedSubscript:@"wx"];
  v4 = [(NSDictionary *)[(CIRAWFilterImpl *)self rawDictionary] objectForKeyedSubscript:@"wy"];
  if (v3 && v4)
  {
    v7 = 0;
    [objc_opt_class() convertNeutralX:v3 y:v4 toTemperature:0 tint:&v7];
    return v7;
  }

  else
  {
    v6 = 0.0;
    v7 = 0;
    CI_xy_to_TempTint(&v7, &v6, 0.34570291, 0.3585386);
    return [MEMORY[0x1E696AD98] numberWithDouble:v6];
  }
}

- (void)setInputNeutralTint:(id)tint
{
  if (!self->_calledDealloc)
  {
    inputNeutralTint = self->inputNeutralTint;
    if (inputNeutralTint != tint && (!tint || ![(NSNumber *)inputNeutralTint isEqualToNumber:tint]))
    {
      if (!self->inputNeutralTemperature)
      {
        [(CIRAWFilterImpl *)self inputNeutralTemperature];
      }

      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralTint"];
      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralChromaticityX"];
      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralChromaticityY"];
      v6 = self->inputNeutralTint;
      self->inputNeutralTint = [tint copy];

      self->inputNeutralChromaticityX = 0;
      self->inputNeutralChromaticityY = 0;
      [(CIRAWFilterImpl *)self invalidateFilters];
      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralChromaticityY"];
      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralChromaticityX"];

      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralTint"];
    }
  }
}

- (id)defaultNeutralChromaticityX
{
  v3 = 0;
  [objc_opt_class() convertNeutralTemperature:-[CIRAWFilterImpl defaultNeutralTemperature](self tint:"defaultNeutralTemperature") toX:-[CIRAWFilterImpl defaultNeutralTint](self y:{"defaultNeutralTint"), &v3, 0}];
  return v3;
}

- (id)inputNeutralChromaticityX
{
  result = self->inputNeutralChromaticityX;
  if (!result)
  {
    [(CIRAWFilterImpl *)self updateChomaticityXAndY];
    return self->inputNeutralChromaticityX;
  }

  return result;
}

- (void)setInputNeutralChromaticityX:(id)x
{
  if (!self->_calledDealloc)
  {
    inputNeutralChromaticityX = self->inputNeutralChromaticityX;
    if (inputNeutralChromaticityX != x && (!x || ![(NSNumber *)inputNeutralChromaticityX isEqualToNumber:x]))
    {
      if (!self->inputNeutralChromaticityY)
      {
        [(CIRAWFilterImpl *)self inputNeutralChromaticityY];
      }

      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralChromaticityX"];
      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralTint"];
      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralTemperature"];
      v6 = self->inputNeutralChromaticityX;
      self->inputNeutralChromaticityX = [x copy];

      self->inputNeutralTemperature = 0;
      self->inputNeutralTint = 0;
      [(CIRAWFilterImpl *)self invalidateFilters];
      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralTemperature"];
      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralTint"];

      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralChromaticityX"];
    }
  }
}

- (id)defaultNeutralChromaticityY
{
  v3 = 0;
  [objc_opt_class() convertNeutralTemperature:-[CIRAWFilterImpl defaultNeutralTemperature](self tint:"defaultNeutralTemperature") toX:-[CIRAWFilterImpl defaultNeutralTint](self y:{"defaultNeutralTint"), 0, &v3}];
  return v3;
}

- (id)inputNeutralChromaticityY
{
  result = self->inputNeutralChromaticityY;
  if (!result)
  {
    [(CIRAWFilterImpl *)self updateChomaticityXAndY];
    return self->inputNeutralChromaticityY;
  }

  return result;
}

- (void)setInputNeutralChromaticityY:(id)y
{
  if (!self->_calledDealloc)
  {
    inputNeutralChromaticityY = self->inputNeutralChromaticityY;
    if (inputNeutralChromaticityY != y && (!y || ![(NSNumber *)inputNeutralChromaticityY isEqualToNumber:y]))
    {
      if (!self->inputNeutralChromaticityX)
      {
        [(CIRAWFilterImpl *)self inputNeutralChromaticityX];
      }

      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralChromaticityY"];
      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralTint"];
      [(CIRAWFilterImpl *)self willChangeValueForKey:@"inputNeutralTemperature"];
      v6 = self->inputNeutralChromaticityY;
      self->inputNeutralChromaticityY = [y copy];

      self->inputNeutralTemperature = 0;
      self->inputNeutralTint = 0;
      [(CIRAWFilterImpl *)self invalidateFilters];
      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralTemperature"];
      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralTint"];

      [(CIRAWFilterImpl *)self didChangeValueForKey:@"inputNeutralChromaticityY"];
    }
  }
}

- (void)setInputRequestedSushiMode:(id)mode
{
  if (!self->_calledDealloc)
  {
    inputRequestedSushiMode = self->inputRequestedSushiMode;
    if (inputRequestedSushiMode != mode)
    {
      if (mode)
      {
        if ([(NSString *)self->inputRequestedSushiMode isEqualToString:mode])
        {
          return;
        }

        inputRequestedSushiMode = self->inputRequestedSushiMode;
      }

      self->inputRequestedSushiMode = [mode copy];

      self->_rawDictionary = 0;
    }
  }
}

- (id)whitePoint
{
  [-[CIRAWFilterImpl inputNeutralChromaticityX](self "inputNeutralChromaticityX")];
  v4 = v3;
  [-[CIRAWFilterImpl inputNeutralChromaticityY](self "inputNeutralChromaticityY")];

  return [CIVector vectorWithX:v4 Y:v5];
}

- (id)whitePointArray
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = [(CIRAWFilterImpl *)self inputNeutralChromaticityX];
  v4[1] = [(CIRAWFilterImpl *)self inputNeutralChromaticityY];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
}

- (void)getWhitePointVectorsR:(id *)r g:(id *)g b:(id *)b
{
  v12[9] = *MEMORY[0x1E69E9840];
  if (!r || !g || !b)
  {
    [CIRAWFilterImpl(WhiteBalance) getWhitePointVectorsR:a2 g:self b:?];
  }

  [-[CIRAWFilterImpl inputNeutralTemperature](self "inputNeutralTemperature")];
  v10 = v9;
  [-[CIRAWFilterImpl inputNeutralTint](self "inputNeutralTint")];
  tempTint_to_matrix(v12, v10, v11);
  *r = [CIVector vectorWithX:v12[0] Y:v12[1] Z:v12[2]];
  *g = [CIVector vectorWithX:v12[3] Y:v12[4] Z:v12[5]];
  *b = [CIVector vectorWithX:v12[6] Y:v12[7] Z:v12[8]];
}

@end