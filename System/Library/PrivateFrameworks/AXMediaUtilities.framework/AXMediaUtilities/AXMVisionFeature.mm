@interface AXMVisionFeature
+ (AXMVisionFeature)featureWithAssetMetadata:(id)metadata;
+ (AXMVisionFeature)featureWithCameraType:(int64_t)type;
+ (AXMVisionFeature)featureWithCaptionResult:(id)result confidence:(double)confidence translatedCaption:(id)caption modelIdentifier:(id)identifier canvasSize:(CGSize)size isLowConfidence:(BOOL)lowConfidence;
+ (AXMVisionFeature)featureWithColorInfo:(id)info canvasSize:(CGSize)size;
+ (AXMVisionFeature)featureWithDeviceMotion:(id)motion orientation:(int64_t)orientation;
+ (AXMVisionFeature)featureWithFaceDetectionResult:(id)result canvasSize:(CGSize)size;
+ (AXMVisionFeature)featureWithIconClass:(id)class confidence:(double)confidence;
+ (AXMVisionFeature)featureWithImageAestheticsObservation:(id)observation;
+ (AXMVisionFeature)featureWithMediaAnalysisFaceDetectionResult:(id)result canvasSize:(CGSize)size;
+ (AXMVisionFeature)featureWithMediaAnalysisImageCaptionResult:(id)result confidence:(double)confidence translatedCaption:(id)caption;
+ (AXMVisionFeature)featureWithMediaAnalysisTaxonomyNode:(id)node canvasSize:(CGSize)size;
+ (AXMVisionFeature)featureWithMediaLegibility:(id)legibility;
+ (AXMVisionFeature)featureWithMetadata:(id)metadata interfaceOrientation:(int64_t)orientation isMirrored:(BOOL)mirrored canvasSize:(CGSize)size;
+ (AXMVisionFeature)featureWithTaxonomyNode:(id)node canvasSize:(CGSize)size;
+ (AXMVisionFeature)featureWithVisionRequest:(id)request axElementRect:(CGRect)rect confidence:(double)confidence uiClass:(int64_t)class label:(id)label canvasSize:(CGSize)size;
+ (AXMVisionFeature)featureWithVisionRequest:(id)request blurValue:(float)value canvasSize:(CGSize)size;
+ (AXMVisionFeature)featureWithVisionRequest:(id)request brightnessValue:(float)value canvasSize:(CGSize)size;
+ (AXMVisionFeature)featureWithVisionRequest:(id)request horizonResult:(id)result canvasSize:(CGSize)size;
+ (AXMVisionFeature)featureWithVisionRequest:(id)request modelClassificationResult:(id)result modelIdentifier:(id)identifier canvasSize:(CGSize)size;
+ (AXMVisionFeature)featureWithVisionRequest:(id)request rectangleResult:(id)result canvasSize:(CGSize)size;
+ (CGRect)_aspectFaceRectFromSquareFaceRect:(CGRect)rect sizeInPixels:(CGSize)pixels;
+ (id)envelopeRegion:(id)region boundingBox:(CGRect)box confidence:(double)confidence canvasSize:(CGSize)size;
+ (id)envelopeWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box regions:(id)regions canvasSize:(CGSize)size;
+ (id)filterFeatureList:(id)list basedOnSceneClassIdsForFeature:(id)feature;
+ (id)flattenedFeatureList:(id)list;
+ (id)groupedFeatureWithElementRect:(CGRect)rect uiClass:(int64_t)class confidence:(double)confidence label:(id)label canvasSize:(CGSize)size subElements:(id)elements;
+ (id)localizedStringForLocation:(int64_t)location isSubjectImplicit:(BOOL)implicit;
+ (id)mediaAnalysisNSFWClassificationWithCategory:(id)category confidence:(float)confidence canvasSize:(CGSize)size;
+ (id)mediaAnalysisObjectClassificationWithLabel:(id)label localizedValue:(id)value boundingBox:(CGRect)box confidence:(float)confidence canvasSize:(CGSize)size sceneClassId:(id)id;
+ (id)mediaAnalysisProminentObjectWithBoundingBox:(CGRect)box canvasSize:(CGSize)size confidence:(double)confidence;
+ (id)mediaAnalysisSceneClassificationWithLabel:(id)label localizedValue:(id)value confidence:(float)confidence canvasSize:(CGSize)size;
+ (id)mediaAnalysisSignificantEventClassificationWithCategory:(id)category confidence:(float)confidence canvasSize:(CGSize)size;
+ (id)nameForFeatureType:(unint64_t)type;
+ (id)nameForLocation:(int64_t)location;
+ (id)nameForOCRType:(int64_t)type;
+ (id)nameForUIClass:(int64_t)class;
+ (id)nsfwClassificationWithCategory:(id)category confidence:(float)confidence canvasSize:(CGSize)size;
+ (id)nutritionLabelWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box rows:(id)rows canvasSize:(CGSize)size;
+ (id)objectClassificationWithLabel:(id)label localizedValue:(id)value boundingBox:(CGRect)box confidence:(float)confidence canvasSize:(CGSize)size sceneClassId:(id)id;
+ (id)personWithBoundingBox:(CGRect)box confidence:(double)confidence canvasSize:(CGSize)size;
+ (id)prominentObjectWithBoundingBox:(CGRect)box canvasSize:(CGSize)size confidence:(double)confidence;
+ (id)receiptWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box regions:(id)regions canvasSize:(CGSize)size;
+ (id)sceneClassificationWithLabel:(id)label localizedValue:(id)value confidence:(float)confidence canvasSize:(CGSize)size;
+ (id)significantEventClassificationWithCategory:(id)category confidence:(float)confidence canvasSize:(CGSize)size;
+ (id)tableCellWithText:(id)text boundingBox:(CGRect)box confidence:(double)confidence recognizedTextFeatures:(id)features canvasSize:(CGSize)size isHeader:(BOOL)header;
+ (id)tableColumnWithText:(id)text boundingBox:(CGRect)box cells:(id)cells canvasSize:(CGSize)size;
+ (id)tableRowWithText:(id)text boundingBox:(CGRect)box cells:(id)cells canvasSize:(CGSize)size;
+ (id)tableWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box rows:(id)rows columns:(id)columns canvasSize:(CGSize)size isIncomplete:(BOOL)incomplete;
+ (id)textDocumentWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box regions:(id)regions canvasSize:(CGSize)size;
+ (id)textLineWithText:(id)text boundingBox:(CGRect)box recognizedTextFeatures:(id)features canvasSize:(CGSize)size;
+ (id)textRegionWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box lines:(id)lines canvasSize:(CGSize)size;
+ (id)textSequence:(id)sequence boundingBox:(CGRect)box recognizedTextFeatures:(id)features confidence:(double)confidence canvasSize:(CGSize)size;
+ (id)unitTestingFaceFeatureWithSize:(CGSize)size faceFrame:(CGRect)frame;
+ (id)unitTestingFeature;
+ (id)unitTestingFeatureWithType:(unint64_t)type canvasSize:(CGSize)size frame:(CGRect)frame value:(id)value valueIsSpeakable:(BOOL)speakable barcodeType:(id)barcodeType ocrFeatureType:(int64_t)featureType subFeatures:(id)self0;
+ (id)unitTestingHorizonFeature;
+ (id)unitTestingProminentObjectFeature;
+ (id)unitTestingTeatureWithType:(unint64_t)type axElementRect:(CGRect)rect confidence:(double)confidence uiClass:(int64_t)class label:(id)label canvasSize:(CGSize)size;
+ (int64_t)locationForNormalizedFrame:(CGRect)frame previousLocation:(int64_t)location usingThirds:(BOOL)thirds;
+ (int64_t)uiClassForName:(id)name;
+ (void)_append:(id)_append toList:(id)list;
- (AXMVisionFeature)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAXMVisionFeature:(id)feature;
- (CGAffineTransform)horizonTransform;
- (CGPoint)activationPoint;
- (CGRect)boundingBoxForRange:(_NSRange)range;
- (CGRect)frame;
- (CGRect)normalizedFrame;
- (CGRect)unpaddedDetectedFaceRect;
- (CGSize)canvasSize;
- (NSDictionary)dictionaryRepresentation;
- (NSString)debugDescription;
- (NSString)description;
- (id)_init;
- (id)_nameForOCRFeatureType:(int64_t)type;
- (int64_t)locationUsingThirds:(BOOL)thirds withFlippedYAxis:(BOOL)axis;
- (unint64_t)hash;
- (void)_serializeWithCoder:(id)coder orDictionary:(id)dictionary;
- (void)addFeatureGate:(id)gate userInfo:(id)info;
@end

@implementation AXMVisionFeature

+ (AXMVisionFeature)featureWithMetadata:(id)metadata interfaceOrientation:(int64_t)orientation isMirrored:(BOOL)mirrored canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mirroredCopy = mirrored;
  metadataCopy = metadata;
  [metadataCopy bounds];
  v15 = AXMTransformedNormalizedFrame(orientation, mirroredCopy, v11, v12, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = metadataCopy;
    [AXMVisionFeature _aspectFaceRectFromSquareFaceRect:v15 sizeInPixels:v17, v19, v21, width, height];
    v45 = v24;
    v46 = v23;
    v43 = v26;
    v44 = v25;
    faceID = [v22 faceID];
    v28 = [[AXMVisionFeatureFaceAttributes alloc] initWithAVMetadataFaceObject:v22];
    if (v28)
    {
      v29 = objc_alloc_init(AXMVisionFeatureFaceDetectionResult);
      [(AXMVisionFeatureFaceDetectionResult *)v29 setAttributes:v28];
    }

    else
    {
      v29 = 0;
    }

    type = 0;
    stringValue = 0;
    v34 = 6;
    v47 = *&v19;
    v48 = v21;
    v30 = v17;
    v31 = v15;
    v21 = v43;
    v19 = v44;
    v17 = v45;
    v15 = v46;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = *(&AXMRectNotApplicable + 1);
    v31 = *&AXMRectNotApplicable;
    v47 = qword_1EB5DCF60;
    v48 = unk_1EB5DCF68;
    stringValue = [metadataCopy stringValue];
    type = [metadataCopy type];
    v29 = 0;
    faceID = 0;
    v34 = 11;
LABEL_11:
    _init = [[AXMVisionFeature alloc] _init];
    _init[1] = v34;
    v36 = _init[15];
    _init[15] = stringValue;
    v37 = stringValue;

    *(_init + 42) = width;
    *(_init + 43) = height;
    *(_init + 7) = width * v15;
    *(_init + 8) = height * v17;
    *(_init + 9) = width * v19;
    *(_init + 10) = height * v21;
    *(_init + 11) = v15;
    *(_init + 12) = v17;
    *(_init + 13) = v19;
    *(_init + 14) = v21;
    *(_init + 68) = v31;
    *(_init + 69) = v30;
    _init[70] = v47;
    *(_init + 71) = v48;
    v38 = _init[3];
    _init[3] = type;
    v39 = type;

    v40 = _init[32];
    _init[32] = v29;
    _init[33] = faceID;
    v41 = v29;

    goto LABEL_12;
  }

  NSClassFromString(&cfstr_Avmetadatavide.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    _init = 0;
    goto LABEL_13;
  }

  v37 = AXMediaLogCommon();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    +[AXMVisionFeature featureWithMetadata:interfaceOrientation:isMirrored:canvasSize:];
  }

  _init = 0;
LABEL_12:

LABEL_13:

  return _init;
}

+ (AXMVisionFeature)featureWithFaceDetectionResult:(id)result canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  resultCopy = result;
  [resultCopy frame];
  v26 = v8;
  v27 = v7;
  v10 = v9;
  v12 = 1.0 - v11 - v9;
  [AXMVisionFeature _aspectFaceRectFromSquareFaceRect:"_aspectFaceRectFromSquareFaceRect:sizeInPixels:" sizeInPixels:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 5;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = width * v14;
  *(_init + 8) = height * v16;
  *(_init + 9) = width * v18;
  *(_init + 10) = height * v20;
  *(_init + 11) = v14;
  *(_init + 12) = v16;
  *(_init + 13) = v18;
  *(_init + 14) = v20;
  _init[68] = v27;
  *(_init + 69) = v12;
  _init[70] = v26;
  *(_init + 71) = v10;
  v22 = _init[32];
  _init[32] = resultCopy;
  v23 = resultCopy;

  faceId = [v23 faceId];
  _init[33] = faceId;

  return _init;
}

+ (id)prominentObjectWithBoundingBox:(CGRect)box canvasSize:(CGSize)size confidence:(double)confidence
{
  height = size.height;
  width = size.width;
  v8 = box.size.height;
  v9 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 19;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v9;
  *(_init + 14) = v8;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = v9 * width;
  *(_init + 10) = v8 * height;
  *(_init + 23) = confidence;

  return _init;
}

+ (id)personWithBoundingBox:(CGRect)box confidence:(double)confidence canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = box.size.height;
  v9 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 7;
  *(_init + 23) = confidence;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = v9 * width;
  *(_init + 10) = v8 * height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v9;
  *(_init + 14) = v8;

  return _init;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)request blurValue:(float)value canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = fminf(fmaxf(value, 0.0), 1.0);
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 2;
  *(_init + 23) = 0x3FF0000000000000;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v9 = AXMRectNotApplicable;
  v10 = *&qword_1EB5DCF60;
  *(_init + 56) = AXMRectNotApplicable;
  *(_init + 72) = v10;
  *(_init + 88) = v9;
  *(_init + 104) = v10;
  *(_init + 21) = v7;

  return _init;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)request brightnessValue:(float)value canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 1;
  *(_init + 23) = 0x3FF0000000000000;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v9 = AXMRectNotApplicable;
  v10 = *&qword_1EB5DCF60;
  *(_init + 56) = AXMRectNotApplicable;
  *(_init + 72) = v10;
  *(_init + 88) = v9;
  *(_init + 104) = v10;
  *(_init + 22) = value;

  return _init;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)request horizonResult:(id)result canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  resultCopy = result;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 3;
  [resultCopy confidence];
  *(_init + 23) = v9;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v10 = AXMRectNotApplicable;
  v11 = *&qword_1EB5DCF60;
  *(_init + 56) = AXMRectNotApplicable;
  *(_init + 72) = v11;
  *(_init + 88) = v10;
  *(_init + 104) = v11;
  if (resultCopy)
  {
    [resultCopy transform];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  *(_init + 200) = v14;
  *(_init + 216) = v15;
  *(_init + 232) = v16;
  [resultCopy angle];
  *&v12 = v12;
  *(_init + 62) = LODWORD(v12);

  return _init;
}

+ (id)objectClassificationWithLabel:(id)label localizedValue:(id)value boundingBox:(CGRect)box confidence:(float)confidence canvasSize:(CGSize)size sceneClassId:(id)id
{
  height = size.height;
  width = size.width;
  v12 = box.size.height;
  v13 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  labelCopy = label;
  valueCopy = value;
  idCopy = id;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 10;
  v21 = _init[45];
  _init[45] = labelCopy;
  v22 = labelCopy;

  v23 = _init[46];
  _init[46] = valueCopy;
  v24 = valueCopy;

  *(_init + 23) = confidence;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v13;
  *(_init + 14) = v12;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = v13 * width;
  *(_init + 10) = v12 * height;
  v25 = _init[51];
  _init[51] = idCopy;

  return _init;
}

+ (id)sceneClassificationWithLabel:(id)label localizedValue:(id)value confidence:(float)confidence canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  labelCopy = label;
  valueCopy = value;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 9;
  v13 = *(_init + 45);
  *(_init + 45) = labelCopy;
  v14 = labelCopy;

  v15 = *(_init + 46);
  *(_init + 46) = valueCopy;

  *(_init + 23) = confidence;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v16 = AXMRectNotApplicable;
  v17 = *&qword_1EB5DCF60;
  *(_init + 88) = AXMRectNotApplicable;
  *(_init + 104) = v17;
  *(_init + 56) = v16;
  *(_init + 72) = v17;

  return _init;
}

+ (id)nsfwClassificationWithCategory:(id)category confidence:(float)confidence canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  categoryCopy = category;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 23;
  v10 = *(_init + 45);
  *(_init + 45) = categoryCopy;

  *(_init + 23) = confidence;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v11 = AXMRectNotApplicable;
  v12 = *&qword_1EB5DCF60;
  *(_init + 88) = AXMRectNotApplicable;
  *(_init + 104) = v12;
  *(_init + 56) = v11;
  *(_init + 72) = v12;

  return _init;
}

+ (id)significantEventClassificationWithCategory:(id)category confidence:(float)confidence canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  categoryCopy = category;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 24;
  v10 = *(_init + 45);
  *(_init + 45) = categoryCopy;

  *(_init + 23) = confidence;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v11 = AXMRectNotApplicable;
  v12 = *&qword_1EB5DCF60;
  *(_init + 88) = AXMRectNotApplicable;
  *(_init + 104) = v12;
  *(_init + 56) = v11;
  *(_init + 72) = v12;

  return _init;
}

+ (AXMVisionFeature)featureWithTaxonomyNode:(id)node canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  nodeCopy = node;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 9;
  label = [nodeCopy label];
  v9 = *(_init + 45);
  *(_init + 45) = label;

  localizedName = [nodeCopy localizedName];
  v11 = *(_init + 46);
  *(_init + 46) = localizedName;

  [nodeCopy confidence];
  *(_init + 23) = v12;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v13 = AXMRectNotApplicable;
  v14 = *&qword_1EB5DCF60;
  *(_init + 56) = AXMRectNotApplicable;
  *(_init + 72) = v14;
  *(_init + 88) = v13;
  *(_init + 104) = v14;
  detectorSceneClassIds = [nodeCopy detectorSceneClassIds];
  v16 = *(_init + 50);
  *(_init + 50) = detectorSceneClassIds;

  v17 = MEMORY[0x1E696AD98];
  sceneClassId = [nodeCopy sceneClassId];

  v19 = [v17 numberWithUnsignedInt:sceneClassId];
  stringValue = [v19 stringValue];
  v21 = *(_init + 51);
  *(_init + 51) = stringValue;

  return _init;
}

+ (AXMVisionFeature)featureWithImageAestheticsObservation:(id)observation
{
  if (observation)
  {
    observationCopy = observation;
    _init = [[AXMVisionFeature alloc] _init];
    *(_init + 1) = 21;
    v5 = [[AXMVisionFeatureAestheticsResult alloc] initWithVisionAestheticsObservation:observationCopy];

    v6 = *(_init + 59);
    *(_init + 59) = v5;

    *(_init + 23) = AXMConfidenceNotApplicable;
    v7 = AXMRectNotApplicable;
    v8 = *&qword_1EB5DCF60;
    *(_init + 56) = AXMRectNotApplicable;
    *(_init + 72) = v8;
    *(_init + 88) = v7;
    *(_init + 104) = v8;
  }

  else
  {
    _init = 0;
  }

  return _init;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)request modelClassificationResult:(id)result modelIdentifier:(id)identifier canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  resultCopy = result;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 15;
  identifier = [resultCopy identifier];
  v13 = *(_init + 45);
  *(_init + 45) = identifier;

  [resultCopy confidence];
  v15 = v14;

  *(_init + 23) = v15;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v16 = AXMRectNotApplicable;
  v17 = *&qword_1EB5DCF60;
  *(_init + 56) = AXMRectNotApplicable;
  *(_init + 72) = v17;
  *(_init + 88) = v16;
  *(_init + 104) = v17;
  v18 = *(_init + 44);
  *(_init + 44) = identifierCopy;

  return _init;
}

+ (AXMVisionFeature)featureWithCaptionResult:(id)result confidence:(double)confidence translatedCaption:(id)caption modelIdentifier:(id)identifier canvasSize:(CGSize)size isLowConfidence:(BOOL)lowConfidence
{
  height = size.height;
  width = size.width;
  resultCopy = result;
  captionCopy = caption;
  identifierCopy = identifier;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 16;
  v18 = *(_init + 47);
  *(_init + 47) = resultCopy;
  v19 = resultCopy;

  v20 = *(_init + 48);
  *(_init + 48) = captionCopy;
  v21 = captionCopy;

  *(_init + 23) = confidence;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v22 = AXMRectNotApplicable;
  v23 = *&qword_1EB5DCF60;
  *(_init + 56) = AXMRectNotApplicable;
  *(_init + 72) = v23;
  *(_init + 88) = v22;
  *(_init + 104) = v23;
  v24 = *(_init + 44);
  *(_init + 44) = identifierCopy;

  _init[192] = lowConfidence;

  return _init;
}

+ (AXMVisionFeature)featureWithMediaAnalysisImageCaptionResult:(id)result confidence:(double)confidence translatedCaption:(id)caption
{
  resultCopy = result;
  captionCopy = caption;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 25;
  v10 = *(_init + 52);
  *(_init + 52) = resultCopy;
  v11 = resultCopy;

  *(_init + 53) = confidence;
  v12 = *(_init + 54);
  *(_init + 54) = captionCopy;

  v13 = AXMRectNotApplicable;
  v14 = *&qword_1EB5DCF60;
  *(_init + 56) = AXMRectNotApplicable;
  *(_init + 72) = v14;
  *(_init + 88) = v13;
  *(_init + 104) = v14;
  *(_init + 21) = *MEMORY[0x1E695F060];

  return _init;
}

+ (AXMVisionFeature)featureWithMediaAnalysisTaxonomyNode:(id)node canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  nodeCopy = node;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 26;
  label = [nodeCopy label];
  v9 = *(_init + 45);
  *(_init + 45) = label;

  localizedName = [nodeCopy localizedName];
  v11 = *(_init + 46);
  *(_init + 46) = localizedName;

  [nodeCopy confidence];
  *(_init + 23) = v12;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v13 = AXMRectNotApplicable;
  v14 = *&qword_1EB5DCF60;
  *(_init + 56) = AXMRectNotApplicable;
  *(_init + 72) = v14;
  *(_init + 88) = v13;
  *(_init + 104) = v14;
  detectorSceneClassIds = [nodeCopy detectorSceneClassIds];
  v16 = *(_init + 50);
  *(_init + 50) = detectorSceneClassIds;

  v17 = MEMORY[0x1E696AD98];
  sceneClassId = [nodeCopy sceneClassId];

  v19 = [v17 numberWithUnsignedInt:sceneClassId];
  stringValue = [v19 stringValue];
  v21 = *(_init + 51);
  *(_init + 51) = stringValue;

  return _init;
}

+ (id)mediaAnalysisSceneClassificationWithLabel:(id)label localizedValue:(id)value confidence:(float)confidence canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  labelCopy = label;
  valueCopy = value;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 26;
  v13 = *(_init + 45);
  *(_init + 45) = labelCopy;
  v14 = labelCopy;

  v15 = *(_init + 46);
  *(_init + 46) = valueCopy;

  *(_init + 23) = confidence;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v16 = AXMRectNotApplicable;
  v17 = *&qword_1EB5DCF60;
  *(_init + 88) = AXMRectNotApplicable;
  *(_init + 104) = v17;
  *(_init + 56) = v16;
  *(_init + 72) = v17;

  return _init;
}

+ (id)mediaAnalysisNSFWClassificationWithCategory:(id)category confidence:(float)confidence canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  categoryCopy = category;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 29;
  v10 = *(_init + 45);
  *(_init + 45) = categoryCopy;

  *(_init + 23) = confidence;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v11 = AXMRectNotApplicable;
  v12 = *&qword_1EB5DCF60;
  *(_init + 88) = AXMRectNotApplicable;
  *(_init + 104) = v12;
  *(_init + 56) = v11;
  *(_init + 72) = v12;

  return _init;
}

+ (id)mediaAnalysisSignificantEventClassificationWithCategory:(id)category confidence:(float)confidence canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  categoryCopy = category;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 30;
  v10 = *(_init + 45);
  *(_init + 45) = categoryCopy;

  *(_init + 23) = confidence;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v11 = AXMRectNotApplicable;
  v12 = *&qword_1EB5DCF60;
  *(_init + 88) = AXMRectNotApplicable;
  *(_init + 104) = v12;
  *(_init + 56) = v11;
  *(_init + 72) = v12;

  return _init;
}

+ (id)mediaAnalysisObjectClassificationWithLabel:(id)label localizedValue:(id)value boundingBox:(CGRect)box confidence:(float)confidence canvasSize:(CGSize)size sceneClassId:(id)id
{
  height = size.height;
  width = size.width;
  v12 = box.size.height;
  v13 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  labelCopy = label;
  valueCopy = value;
  idCopy = id;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 27;
  v21 = _init[45];
  _init[45] = labelCopy;
  v22 = labelCopy;

  v23 = _init[46];
  _init[46] = valueCopy;
  v24 = valueCopy;

  *(_init + 23) = confidence;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v13;
  *(_init + 14) = v12;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = v13 * width;
  *(_init + 10) = v12 * height;
  v25 = _init[51];
  _init[51] = idCopy;

  return _init;
}

+ (id)mediaAnalysisProminentObjectWithBoundingBox:(CGRect)box canvasSize:(CGSize)size confidence:(double)confidence
{
  height = size.height;
  width = size.width;
  v8 = box.size.height;
  v9 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 28;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v9;
  *(_init + 14) = v8;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = v9 * width;
  *(_init + 10) = v8 * height;
  *(_init + 23) = confidence;

  return _init;
}

+ (AXMVisionFeature)featureWithMediaAnalysisFaceDetectionResult:(id)result canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  resultCopy = result;
  [resultCopy frame];
  v26 = v8;
  v27 = v7;
  v10 = v9;
  v12 = 1.0 - v11 - v9;
  [AXMVisionFeature _aspectFaceRectFromSquareFaceRect:"_aspectFaceRectFromSquareFaceRect:sizeInPixels:" sizeInPixels:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 31;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = width * v14;
  *(_init + 8) = height * v16;
  *(_init + 9) = width * v18;
  *(_init + 10) = height * v20;
  *(_init + 11) = v14;
  *(_init + 12) = v16;
  *(_init + 13) = v18;
  *(_init + 14) = v20;
  _init[68] = v27;
  *(_init + 69) = v12;
  _init[70] = v26;
  *(_init + 71) = v10;
  v22 = _init[55];
  _init[55] = resultCopy;
  v23 = resultCopy;

  faceId = [v23 faceId];
  _init[56] = faceId;

  return _init;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)request rectangleResult:(id)result canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  resultCopy = result;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 14;
  [resultCopy confidence];
  *(_init + 23) = v9;
  *(_init + 42) = width;
  *(_init + 43) = height;
  [resultCopy boundingBox];
  *(_init + 7) = width * v12;
  *(_init + 8) = height * (1.0 - v10 - v11);
  *(_init + 9) = width * v13;
  *(_init + 10) = height * v11;
  [resultCopy boundingBox];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  _init[11] = v15;
  *(_init + 12) = 1.0 - v17 - v21;
  _init[13] = v19;
  *(_init + 14) = v21;

  return _init;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)request axElementRect:(CGRect)rect confidence:(double)confidence uiClass:(int64_t)class label:(id)label canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12 = rect.size.height;
  v13 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  labelCopy = label;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 22;
  *(_init + 23) = confidence;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x;
  *(_init + 8) = y;
  *(_init + 9) = v13;
  *(_init + 10) = v12;
  v18 = _init[15];
  _init[15] = labelCopy;

  _init[58] = class;

  return _init;
}

+ (id)groupedFeatureWithElementRect:(CGRect)rect uiClass:(int64_t)class confidence:(double)confidence label:(id)label canvasSize:(CGSize)size subElements:(id)elements
{
  height = size.height;
  width = size.width;
  v13 = rect.size.height;
  v14 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  labelCopy = label;
  elementsCopy = elements;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 22;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x;
  *(_init + 8) = y;
  *(_init + 9) = v14;
  *(_init + 10) = v13;
  v20 = _init[15];
  _init[15] = labelCopy;
  v21 = labelCopy;

  _init[58] = class;
  *(_init + 23) = confidence;
  v22 = [elementsCopy copy];

  v23 = _init[2];
  _init[2] = v22;

  return _init;
}

+ (id)textDocumentWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box regions:(id)regions canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v10 = box.size.height;
  v11 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  regionsCopy = regions;
  _init = [[AXMVisionFeature alloc] _init];
  _init[4] = 1;
  v18 = _init[2];
  _init[1] = 8;
  _init[2] = regionsCopy;
  v19 = regionsCopy;

  v20 = _init[15];
  _init[15] = textCopy;

  *(_init + 136) = speakable;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = (x + v11) * width - x * width;
  *(_init + 10) = (y + v10) * height - y * height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v11;
  *(_init + 14) = v10;

  return _init;
}

+ (id)textRegionWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box lines:(id)lines canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v10 = box.size.height;
  v11 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  linesCopy = lines;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 8;
  _init[4] = 2;
  v18 = _init[15];
  _init[15] = textCopy;
  v19 = textCopy;

  *(_init + 136) = speakable;
  v20 = _init[2];
  _init[2] = linesCopy;

  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = (x + v11) * width - x * width;
  *(_init + 10) = (y + v10) * height - y * height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v11;
  *(_init + 14) = v10;

  return _init;
}

+ (id)textLineWithText:(id)text boundingBox:(CGRect)box recognizedTextFeatures:(id)features canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = box.size.height;
  v10 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  featuresCopy = features;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 8;
  _init[4] = 3;
  v16 = _init[15];
  _init[15] = textCopy;
  v17 = textCopy;

  v18 = _init[18];
  _init[18] = featuresCopy;

  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = (x + v10) * width - x * width;
  *(_init + 10) = (y + v9) * height - y * height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v10;
  *(_init + 14) = v9;

  return _init;
}

+ (id)textSequence:(id)sequence boundingBox:(CGRect)box recognizedTextFeatures:(id)features confidence:(double)confidence canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v11 = box.size.height;
  v12 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  sequenceCopy = sequence;
  featuresCopy = features;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 8;
  _init[4] = 4;
  v18 = _init[15];
  _init[15] = sequenceCopy;
  v19 = sequenceCopy;

  v20 = _init[18];
  _init[18] = featuresCopy;

  *(_init + 42) = width;
  *(_init + 43) = height;
  v21 = 1.0 - y - v11;
  *(_init + 7) = x * width;
  *(_init + 8) = v21 * height;
  *(_init + 9) = v12 * width;
  *(_init + 10) = v11 * height;
  *(_init + 11) = x;
  *(_init + 12) = v21;
  *(_init + 13) = v12;
  *(_init + 14) = v11;
  *(_init + 23) = confidence;

  return _init;
}

+ (id)nutritionLabelWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box rows:(id)rows canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v10 = box.size.height;
  v11 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  rowsCopy = rows;
  _init = [[AXMVisionFeature alloc] _init];
  _init[4] = 13;
  v18 = _init[2];
  _init[1] = 8;
  _init[2] = rowsCopy;
  v19 = rowsCopy;

  v20 = _init[15];
  _init[15] = textCopy;

  *(_init + 136) = speakable;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = (x + v11) * width - x * width;
  *(_init + 10) = (y + v10) * height - y * height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v11;
  *(_init + 14) = v10;

  return _init;
}

+ (id)envelopeWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box regions:(id)regions canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v10 = box.size.height;
  v11 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  regionsCopy = regions;
  _init = [[AXMVisionFeature alloc] _init];
  _init[4] = 14;
  v18 = _init[2];
  _init[1] = 8;
  _init[2] = regionsCopy;
  v19 = regionsCopy;

  v20 = _init[16];
  _init[16] = textCopy;

  *(_init + 136) = speakable;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = (x + v11) * width - x * width;
  *(_init + 10) = (y + v10) * height - y * height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v11;
  *(_init + 14) = v10;

  return _init;
}

+ (id)envelopeRegion:(id)region boundingBox:(CGRect)box confidence:(double)confidence canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = box.size.height;
  v10 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  regionCopy = region;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 8;
  _init[4] = 15;
  v15 = _init[15];
  _init[15] = regionCopy;

  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = (x + v10) * width - x * width;
  *(_init + 10) = (y + v9) * height - y * height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v10;
  *(_init + 14) = v9;
  *(_init + 23) = confidence;

  return _init;
}

+ (id)receiptWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box regions:(id)regions canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v10 = box.size.height;
  v11 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  regionsCopy = regions;
  _init = [[AXMVisionFeature alloc] _init];
  _init[4] = 16;
  v18 = _init[2];
  _init[1] = 8;
  _init[2] = regionsCopy;
  v19 = regionsCopy;

  v20 = _init[15];
  _init[15] = textCopy;

  *(_init + 136) = speakable;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = (x + v11) * width - x * width;
  *(_init + 10) = (y + v10) * height - y * height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v11;
  *(_init + 14) = v10;

  return _init;
}

+ (id)tableWithText:(id)text isSpeakable:(BOOL)speakable boundingBox:(CGRect)box rows:(id)rows columns:(id)columns canvasSize:(CGSize)size isIncomplete:(BOOL)incomplete
{
  incompleteCopy = incomplete;
  height = size.height;
  width = size.width;
  v14 = box.size.height;
  v15 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  columnsCopy = columns;
  rowsCopy = rows;
  _init = [[AXMVisionFeature alloc] _init];
  v23 = _init;
  _init[1] = 8;
  v24 = 7;
  if (incompleteCopy)
  {
    v24 = 8;
  }

  _init[4] = v24;
  v25 = [rowsCopy arrayByAddingObjectsFromArray:columnsCopy];

  v26 = v23[2];
  v23[2] = v25;

  v27 = v23[15];
  v23[15] = textCopy;

  *(v23 + 136) = speakable;
  *(v23 + 42) = width;
  *(v23 + 43) = height;
  *(v23 + 7) = x * width;
  *(v23 + 8) = y * height;
  *(v23 + 9) = (x + v15) * width - x * width;
  *(v23 + 10) = (y + v14) * height - y * height;
  *(v23 + 11) = x;
  *(v23 + 12) = y;
  *(v23 + 13) = v15;
  *(v23 + 14) = v14;

  return v23;
}

+ (id)tableRowWithText:(id)text boundingBox:(CGRect)box cells:(id)cells canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = box.size.height;
  v10 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  cellsCopy = cells;
  _init = [[AXMVisionFeature alloc] _init];
  _init[4] = 9;
  v16 = _init[2];
  _init[1] = 8;
  _init[2] = cellsCopy;
  v17 = cellsCopy;

  v18 = _init[15];
  _init[15] = textCopy;

  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = (x + v10) * width - x * width;
  *(_init + 10) = (y + v9) * height - y * height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v10;
  *(_init + 14) = v9;

  return _init;
}

+ (id)tableColumnWithText:(id)text boundingBox:(CGRect)box cells:(id)cells canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = box.size.height;
  v10 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  cellsCopy = cells;
  _init = [[AXMVisionFeature alloc] _init];
  _init[4] = 10;
  v16 = _init[2];
  _init[1] = 8;
  _init[2] = cellsCopy;
  v17 = cellsCopy;

  v18 = _init[15];
  _init[15] = textCopy;

  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x * width;
  *(_init + 8) = y * height;
  *(_init + 9) = (x + v10) * width - x * width;
  *(_init + 10) = (y + v9) * height - y * height;
  *(_init + 11) = x;
  *(_init + 12) = y;
  *(_init + 13) = v10;
  *(_init + 14) = v9;

  return _init;
}

+ (id)tableCellWithText:(id)text boundingBox:(CGRect)box confidence:(double)confidence recognizedTextFeatures:(id)features canvasSize:(CGSize)size isHeader:(BOOL)header
{
  headerCopy = header;
  height = size.height;
  width = size.width;
  v13 = box.size.height;
  v14 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  featuresCopy = features;
  _init = [[AXMVisionFeature alloc] _init];
  v20 = _init;
  _init[1] = 8;
  v21 = 11;
  if (headerCopy)
  {
    v21 = 12;
  }

  _init[4] = v21;
  v22 = _init[15];
  _init[15] = textCopy;
  v23 = textCopy;

  v20[42] = width;
  v20[43] = height;
  v24 = *(v20 + 18);
  *(v20 + 18) = featuresCopy;

  v25 = 1.0 - y - v13;
  v20[7] = x * width;
  v20[8] = v25 * height;
  v20[9] = v14 * width;
  v20[10] = v13 * height;
  v20[11] = x;
  v20[12] = v25;
  v20[13] = v14;
  v20[14] = v13;
  v20[23] = confidence;

  return v20;
}

+ (AXMVisionFeature)featureWithIconClass:(id)class confidence:(double)confidence
{
  classCopy = class;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 20;
  v7 = *(_init + 15);
  *(_init + 15) = classCopy;

  v9 = AXMRectNotApplicable;
  v8 = *&qword_1EB5DCF60;
  *(_init + 21) = *&qword_1EB5DCF60;
  *(_init + 56) = v9;
  *(_init + 72) = v8;
  *(_init + 88) = v9;
  *(_init + 104) = v8;
  *(_init + 23) = confidence;

  return _init;
}

+ (AXMVisionFeature)featureWithMediaLegibility:(id)legibility
{
  legibilityCopy = legibility;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 12;
  string = [legibilityCopy string];

  v6 = *(_init + 15);
  *(_init + 15) = string;

  *(_init + 23) = AXMConfidenceNotApplicable;
  v8 = AXMRectNotApplicable;
  v7 = *&qword_1EB5DCF60;
  *(_init + 21) = *&qword_1EB5DCF60;
  *(_init + 56) = v8;
  *(_init + 72) = v7;
  *(_init + 88) = v8;
  *(_init + 104) = v7;

  return _init;
}

+ (AXMVisionFeature)featureWithColorInfo:(id)info canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  infoCopy = info;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 4;
  *(_init + 23) = AXMConfidenceNotApplicable;
  *(_init + 42) = width;
  *(_init + 43) = height;
  v8 = AXMRectNotApplicable;
  v9 = *&qword_1EB5DCF60;
  *(_init + 56) = AXMRectNotApplicable;
  *(_init + 72) = v9;
  *(_init + 88) = v8;
  *(_init + 104) = v9;
  v10 = *(_init + 19);
  *(_init + 19) = infoCopy;

  return _init;
}

+ (AXMVisionFeature)featureWithAssetMetadata:(id)metadata
{
  metadataCopy = metadata;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 13;
  *(_init + 23) = AXMConfidenceNotApplicable;
  v6 = AXMRectNotApplicable;
  v5 = *&qword_1EB5DCF60;
  *(_init + 21) = *&qword_1EB5DCF60;
  *(_init + 56) = v6;
  *(_init + 72) = v5;
  *(_init + 88) = v6;
  *(_init + 104) = v5;
  v7 = *(_init + 20);
  *(_init + 20) = metadataCopy;

  return _init;
}

+ (AXMVisionFeature)featureWithDeviceMotion:(id)motion orientation:(int64_t)orientation
{
  motionCopy = motion;
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 17;
  *(_init + 23) = AXMConfidenceNotApplicable;
  v8 = AXMRectNotApplicable;
  v7 = *&qword_1EB5DCF60;
  *(_init + 21) = *&qword_1EB5DCF60;
  *(_init + 56) = v8;
  *(_init + 72) = v7;
  *(_init + 88) = v8;
  *(_init + 104) = v7;
  v9 = *(_init + 60);
  *(_init + 60) = motionCopy;

  *(_init + 61) = orientation;

  return _init;
}

+ (AXMVisionFeature)featureWithCameraType:(int64_t)type
{
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 18;
  *(_init + 23) = AXMConfidenceNotApplicable;
  v6 = AXMRectNotApplicable;
  v5 = *&qword_1EB5DCF60;
  *(_init + 21) = *&qword_1EB5DCF60;
  *(_init + 56) = v6;
  *(_init + 72) = v5;
  *(_init + 88) = v6;
  *(_init + 104) = v5;
  *(_init + 62) = type;

  return _init;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = AXMVisionFeature;
  v2 = [(AXMVisionFeature *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 1) = 0;
    *(v2 + 23) = AXMConfidenceNotApplicable;
    v4 = AXMRectNotApplicable;
    v5 = *&qword_1EB5DCF60;
    *(v2 + 56) = AXMRectNotApplicable;
    *(v2 + 72) = v5;
    *(v2 + 88) = v4;
    *(v2 + 104) = v5;
    *(v2 + 21) = v5;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v3[6] = v6;
    v3[4] = 0;
  }

  return v3;
}

+ (CGRect)_aspectFaceRectFromSquareFaceRect:(CGRect)rect sizeInPixels:(CGSize)pixels
{
  v4 = rect.size.height * pixels.height;
  v5 = v4 * 1.6 * 0.8;
  v6 = (rect.origin.x * pixels.width + (v5 - rect.size.width * pixels.width) * -0.5) / pixels.width;
  v7 = (rect.origin.y * pixels.height - (v4 * 1.6 - v4) / 1.6) / pixels.height;
  v8 = v5 / pixels.width;
  v9 = v4 * 1.6 / pixels.height;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (AXMVisionFeature)initWithCoder:(id)coder
{
  v88 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  _init = [(AXMVisionFeature *)self _init];
  if (_init)
  {
    *(_init + 1) = [coderCopy decodeIntegerForKey:AXMVisionFeatureCodingKeyFeatureType];
    [coderCopy axmDecodeSizeForKey:AXMVisionFeatureCodingKeyCanvasSize];
    *(_init + 42) = v6;
    *(_init + 43) = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyBarcodeType];
    v9 = *(_init + 3);
    *(_init + 3) = v8;

    *(_init + 4) = [coderCopy decodeIntegerForKey:AXMVisionFeatureCodingKeyOCRFeatureType];
    v10 = AXMSecureCodingClasses();
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"effectiveTextDetectionLocales"];
    v12 = *(_init + 5);
    *(_init + 5) = v11;

    [coderCopy axmDecodeRectForKey:AXMVisionFeatureCodingKeyFrame];
    *(_init + 7) = v13;
    *(_init + 8) = v14;
    *(_init + 9) = v15;
    *(_init + 10) = v16;
    [coderCopy axmDecodeRectForKey:AXMVisionFeatureCodingKeyNormalizedFrame];
    *(_init + 11) = v17;
    *(_init + 12) = v18;
    *(_init + 13) = v19;
    *(_init + 14) = v20;
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyValue];
    v22 = *(_init + 15);
    *(_init + 15) = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classificationLocalizedValue"];
    v24 = *(_init + 46);
    *(_init + 46) = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classificationLabel"];
    v26 = *(_init + 45);
    *(_init + 45) = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"caption"];
    v28 = *(_init + 47);
    *(_init + 47) = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"translatedCaption"];
    v30 = *(_init + 48);
    *(_init + 48) = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyColorInfo];
    v32 = *(_init + 19);
    *(_init + 19) = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyAssetMetadata];
    v34 = *(_init + 20);
    *(_init + 20) = v33;

    [coderCopy decodeFloatForKey:AXMVisionFeatureCodingKeyBlur];
    *(_init + 21) = v35;
    [coderCopy decodeFloatForKey:AXMVisionFeatureCodingKeyBrightness];
    *(_init + 22) = v36;
    [coderCopy decodeFloatForKey:AXMVisionFeatureCodingKeyConfidence];
    *(_init + 23) = v37;
    _init[192] = [coderCopy decodeBoolForKey:AXMVisionFeatureCodingKeyIsLowConfidence];
    [coderCopy decodeFloatForKey:AXMVisionFeatureCodingKeyHorizonAngle];
    *(_init + 62) = v38;
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyFaceDetectionResult];
    v40 = *(_init + 32);
    *(_init + 32) = v39;

    *(_init + 33) = [coderCopy decodeIntegerForKey:AXMVisionFeatureCodingKeyFaceID];
    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyModelID];
    v42 = *(_init + 44);
    *(_init + 44) = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyAesthetics];
    v44 = *(_init + 59);
    *(_init + 59) = v43;

    v45 = AXMSecureCodingClasses();
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:AXMVisionFeatureCodingKeyUserContext];
    v47 = *(_init + 63);
    *(_init + 63) = v46;

    *(_init + 58) = [coderCopy decodeIntegerForKey:AXMVisionFeatureCodingKeyUIClass];
    _init[458] = [coderCopy decodeBoolForKey:AXMVisionFeatureCodingKeyCaptionMayContainSensitiveContent];
    v48 = AXMSecureCodingClasses();
    v49 = [coderCopy decodeObjectOfClasses:v48 forKey:AXMVisionFeatureCodingKeyDetectorSceneClassIds];
    v50 = *(_init + 50);
    *(_init + 50) = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeySceneClassId];
    v52 = *(_init + 51);
    *(_init + 51) = v51;

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subfeatures"];
    if (v53)
    {
      v54 = MEMORY[0x1E696ACD0];
      v55 = objc_opt_class();
      v56 = AXMSecureCodingClasses();
      v84 = 0;
      v57 = [v54 axmSecurelyUnarchiveData:v53 withExpectedClass:v55 otherAllowedClasses:v56 error:&v84];
      v58 = v84;

      if (v58)
      {
        v59 = AXMediaLogCommon();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v58;
          _os_log_impl(&dword_1AE37B000, v59, OS_LOG_TYPE_DEFAULT, "Error decoding subfeatures array: %@", buf, 0xCu);
        }
      }

      else
      {
        v60 = v57;
        v59 = *(_init + 2);
        *(_init + 2) = v60;
      }
    }

    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyRecognizedFeatures];
    if (v61)
    {
      v62 = MEMORY[0x1E696ACD0];
      v63 = objc_opt_class();
      v64 = AXMSecureCodingClasses();
      v83 = 0;
      v65 = [v62 axmSecurelyUnarchiveData:v61 withExpectedClass:v63 otherAllowedClasses:v64 error:&v83];
      v66 = v83;

      if (v66)
      {
        v67 = AXMediaLogCommon();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v66;
          _os_log_impl(&dword_1AE37B000, v67, OS_LOG_TYPE_DEFAULT, "Error decoding recognizedTextFeatures array: %@", buf, 0xCu);
        }
      }

      else
      {
        v68 = v65;
        v67 = *(_init + 18);
        *(_init + 18) = v68;
      }
    }

    v86 = 0u;
    v87 = 0u;
    *buf = 0u;
    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyHorizonTransform];
    [v69 getBytes:buf length:48];
    v70 = v86;
    *(_init + 200) = *buf;
    *(_init + 216) = v70;
    *(_init + 232) = v87;
    *(_init + 61) = [coderCopy decodeIntegerForKey:AXMVisionFeatureCodingKeyDeviceOrientation];
    *(_init + 62) = [coderCopy decodeIntegerForKey:AXMVisionFeatureCodingKeyCameraType];
    v71 = AXMSecureCodingClasses();
    v72 = [coderCopy decodeObjectOfClasses:v71 forKey:AXMVisionFeatureCodingKeyFeatureGates];
    v73 = *(_init + 49);
    *(_init + 49) = v72;

    v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMMediaAnalysisFeatureCodingKeyImageCaption];
    v75 = *(_init + 52);
    *(_init + 52) = v74;

    [coderCopy decodeFloatForKey:AXMMediaAnalysisFeatureCodingKeyImageCaptionConfidence];
    *(_init + 53) = v76;
    v77 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMMediaAnalysisFeatureCodingKeyTranslatedImageCaption];
    v78 = *(_init + 54);
    *(_init + 54) = v77;

    v79 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMMediaAnalysisFeatureCodingKeyFaceDetectionResult];
    v80 = *(_init + 55);
    *(_init + 55) = v79;

    *(_init + 56) = [coderCopy decodeIntegerForKey:AXMMediaAnalysisFeatureCodingKeyFaceID];
    v81 = _init;
  }

  return _init;
}

- (void)_serializeWithCoder:(id)coder orDictionary:(id)dictionary
{
  coderCopy = coder;
  dictionaryCopy = dictionary;
  subfeatures = self->_subfeatures;
  if (subfeatures)
  {
    v64 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:subfeatures requiringSecureCoding:1 error:&v64];
    v10 = v64;
    if (v10)
    {
      v11 = v10;
      v12 = AXMediaLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [AXMVisionFeature _serializeWithCoder:orDictionary:];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  recognizedTextFeatures = self->_recognizedTextFeatures;
  if (recognizedTextFeatures)
  {
    v63 = 0;
    v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:recognizedTextFeatures requiringSecureCoding:1 error:&v63];
    v15 = v63;
    v60 = v14;
    if (v15)
    {
      v16 = v15;
      v17 = AXMediaLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [AXMVisionFeature _serializeWithCoder:orDictionary:];
      }
    }
  }

  else
  {
    v60 = 0;
  }

  if (coderCopy)
  {
    confidence = self->_confidence;
    *&confidence = confidence;
    [coderCopy encodeFloat:AXMVisionFeatureCodingKeyConfidence forKey:confidence];
    [coderCopy encodeBool:self->_isLowConfidence forKey:AXMVisionFeatureCodingKeyIsLowConfidence];
    [coderCopy encodeInteger:self->_featureType forKey:AXMVisionFeatureCodingKeyFeatureType];
    [coderCopy axmEncodeRect:AXMVisionFeatureCodingKeyFrame forKey:{self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height}];
    [coderCopy axmEncodeRect:AXMVisionFeatureCodingKeyNormalizedFrame forKey:{self->_normalizedFrame.origin.x, self->_normalizedFrame.origin.y, self->_normalizedFrame.size.width, self->_normalizedFrame.size.height}];
    [coderCopy axmEncodeSize:AXMVisionFeatureCodingKeyCanvasSize forKey:{self->_canvasSize.width, self->_canvasSize.height}];
    [coderCopy encodeObject:self->_value forKey:AXMVisionFeatureCodingKeyValue];
    v19 = v9;
    [coderCopy encodeObject:v9 forKey:@"subfeatures"];
    v20 = v60;
    [coderCopy encodeObject:v60 forKey:AXMVisionFeatureCodingKeyRecognizedFeatures];
    userContext = [(AXMVisionFeature *)self userContext];
    [coderCopy encodeObject:userContext forKey:AXMVisionFeatureCodingKeyUserContext];

    [coderCopy encodeInteger:self->_uiClass forKey:AXMVisionFeatureCodingKeyUIClass];
    [coderCopy encodeObject:self->_featureGates forKey:AXMVisionFeatureCodingKeyFeatureGates];
    [coderCopy encodeBool:self->_captionMayContainSensitiveContent forKey:AXMVisionFeatureCodingKeyCaptionMayContainSensitiveContent];
    [coderCopy encodeObject:self->_detectorSceneClassIds forKey:AXMVisionFeatureCodingKeyDetectorSceneClassIds];
    [coderCopy encodeObject:self->_sceneClassId forKey:AXMVisionFeatureCodingKeySceneClassId];
  }

  else
  {
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
    [dictionaryCopy setObject:v22 forKeyedSubscript:AXMVisionFeatureCodingKeyConfidence];

    v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLowConfidence];
    [dictionaryCopy setObject:v23 forKeyedSubscript:AXMVisionFeatureCodingKeyIsLowConfidence];

    v24 = [AXMVisionFeature nameForFeatureType:self->_featureType];
    [dictionaryCopy setObject:v24 forKeyedSubscript:AXMVisionFeatureCodingKeyFeatureType];

    v25 = AXMStringFromCGRect(self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height);
    [dictionaryCopy setObject:v25 forKeyedSubscript:AXMVisionFeatureCodingKeyFrame];

    v26 = AXMStringFromCGRect(self->_normalizedFrame.origin.x, self->_normalizedFrame.origin.y, self->_normalizedFrame.size.width, self->_normalizedFrame.size.height);
    [dictionaryCopy setObject:v26 forKeyedSubscript:AXMVisionFeatureCodingKeyNormalizedFrame];

    v27 = AXMStringFromCGSize(self->_canvasSize.width, self->_canvasSize.height);
    [dictionaryCopy setObject:v27 forKeyedSubscript:AXMVisionFeatureCodingKeyCanvasSize];

    [dictionaryCopy setObject:self->_value forKeyedSubscript:AXMVisionFeatureCodingKeyValue];
    [dictionaryCopy setObject:self->_subfeatures forKeyedSubscript:@"subfeatures"];
    userContext2 = [(AXMVisionFeature *)self userContext];
    [dictionaryCopy setObject:userContext2 forKeyedSubscript:AXMVisionFeatureCodingKeyUserContext];

    v29 = [MEMORY[0x1E696AD98] numberWithInteger:self->_uiClass];
    [dictionaryCopy setObject:v29 forKeyedSubscript:AXMVisionFeatureCodingKeyUIClass];

    [dictionaryCopy setObject:self->_featureGates forKeyedSubscript:AXMVisionFeatureCodingKeyFeatureGates];
    v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_captionMayContainSensitiveContent];
    [dictionaryCopy setObject:v30 forKeyedSubscript:AXMVisionFeatureCodingKeyCaptionMayContainSensitiveContent];

    [dictionaryCopy setObject:self->_detectorSceneClassIds forKeyedSubscript:AXMVisionFeatureCodingKeyDetectorSceneClassIds];
    [dictionaryCopy setObject:self->_sceneClassId forKeyedSubscript:AXMVisionFeatureCodingKeySceneClassId];
    v19 = v9;
    v20 = v60;
  }

  switch([(AXMVisionFeature *)self featureType])
  {
    case 1uLL:
      if (coderCopy)
      {
        brightness = self->_brightness;
        *&brightness = brightness;
        v50 = AXMVisionFeatureCodingKeyBrightness;
        goto LABEL_47;
      }

      v55 = [MEMORY[0x1E696AD98] numberWithDouble:self->_brightness];
      v56 = AXMVisionFeatureCodingKeyBrightness;
      goto LABEL_71;
    case 2uLL:
      if (!coderCopy)
      {
        v55 = [MEMORY[0x1E696AD98] numberWithDouble:self->_blur];
        v56 = AXMVisionFeatureCodingKeyBlur;
        goto LABEL_71;
      }

      brightness = self->_blur;
      *&brightness = brightness;
      v50 = AXMVisionFeatureCodingKeyBlur;
LABEL_47:
      [coderCopy encodeFloat:v50 forKey:brightness];
      goto LABEL_72;
    case 3uLL:
      v44 = *&self->_horizonTransform.c;
      v62[0] = *&self->_horizonTransform.a;
      v62[1] = v44;
      v62[2] = *&self->_horizonTransform.tx;
      v45 = [MEMORY[0x1E695DEF0] dataWithBytes:v62 length:48];
      if (coderCopy)
      {
        [coderCopy encodeObject:v45 forKey:AXMVisionFeatureCodingKeyHorizonTransform];
        *&v46 = self->_horizonAngle;
        [coderCopy encodeFloat:AXMVisionFeatureCodingKeyHorizonAngle forKey:v46];
      }

      else
      {
        [dictionaryCopy setObject:v45 forKeyedSubscript:AXMVisionFeatureCodingKeyHorizonTransform];
        *&v57 = self->_horizonAngle;
        v58 = [MEMORY[0x1E696AD98] numberWithFloat:v57];
        [dictionaryCopy setObject:v58 forKeyedSubscript:AXMVisionFeatureCodingKeyHorizonAngle];
      }

      goto LABEL_72;
    case 4uLL:
      if (coderCopy)
      {
        colorInfo = self->_colorInfo;
        v33 = AXMVisionFeatureCodingKeyColorInfo;
        goto LABEL_19;
      }

      v33 = AXMVisionFeatureCodingKeyColorInfo;
      colorInfo = @"color info";
      goto LABEL_21;
    case 5uLL:
      faceDetectionResult = self->_faceDetectionResult;
      if (coderCopy)
      {
        [coderCopy encodeObject:faceDetectionResult forKey:AXMVisionFeatureCodingKeyFaceDetectionResult];
        faceId = self->_faceId;
        v43 = AXMVisionFeatureCodingKeyFaceID;
        goto LABEL_38;
      }

      [dictionaryCopy setObject:faceDetectionResult forKeyedSubscript:AXMVisionFeatureCodingKeyFaceDetectionResult];
      v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_faceId];
      v56 = AXMVisionFeatureCodingKeyFaceID;
      goto LABEL_71;
    case 8uLL:
      ocrFeatureType = self->_ocrFeatureType;
      if (coderCopy)
      {
        [coderCopy encodeInteger:ocrFeatureType forKey:AXMVisionFeatureCodingKeyOCRFeatureType];
        colorInfo = self->_effectiveTextDetectionLocales;
        v33 = @"effectiveTextDetectionLocales";
        goto LABEL_19;
      }

      v59 = [(AXMVisionFeature *)self _nameForOCRFeatureType:ocrFeatureType];
      [dictionaryCopy setObject:v59 forKeyedSubscript:AXMVisionFeatureCodingKeyOCRFeatureType];

      colorInfo = self->_effectiveTextDetectionLocales;
      v33 = @"effectiveTextDetectionLocales";
      goto LABEL_21;
    case 9uLL:
    case 10uLL:
    case 23uLL:
    case 24uLL:
    case 26uLL:
    case 27uLL:
    case 29uLL:
    case 30uLL:
      classificationLocalizedValue = self->_classificationLocalizedValue;
      if (coderCopy)
      {
        [coderCopy encodeObject:classificationLocalizedValue forKey:@"classificationLocalizedValue"];
        colorInfo = self->_classificationLabel;
        v33 = @"classificationLabel";
        goto LABEL_19;
      }

      [dictionaryCopy setObject:classificationLocalizedValue forKeyedSubscript:@"classificationLocalizedValue"];
      colorInfo = self->_classificationLabel;
      v33 = @"classificationLabel";
      goto LABEL_21;
    case 11uLL:
      colorInfo = self->_barcodeType;
      v33 = AXMVisionFeatureCodingKeyBarcodeType;
      if (!coderCopy)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    case 13uLL:
      if (coderCopy)
      {
        colorInfo = self->_assetMetadata;
        v33 = AXMVisionFeatureCodingKeyAssetMetadata;
        goto LABEL_19;
      }

      v33 = AXMVisionFeatureCodingKeyAssetMetadata;
      colorInfo = @"asset metadata";
      goto LABEL_21;
    case 15uLL:
      colorInfo = self->_modelID;
      v33 = AXMVisionFeatureCodingKeyModelID;
      if (!coderCopy)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    case 16uLL:
      if (!coderCopy)
      {
        goto LABEL_75;
      }

      goto LABEL_58;
    case 17uLL:
      v34 = MEMORY[0x1E696ACC8];
      deviceMotion = [(AXMVisionFeature *)self deviceMotion];
      v61 = 0;
      v36 = [v34 archivedDataWithRootObject:deviceMotion requiringSecureCoding:1 error:&v61];
      v37 = v61;

      if (v37)
      {
        v38 = AXMediaLogCommon();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [AXMVisionFeature _serializeWithCoder:orDictionary:];
        }
      }

      if (coderCopy)
      {
        [coderCopy encodeObject:v36 forKey:AXMVisionFeatureCodingKeyDeviceMotion];
        [coderCopy encodeInteger:self->_deviceOrientation forKey:AXMVisionFeatureCodingKeyDeviceOrientation];
        [coderCopy encodeInteger:self->_cameraType forKey:AXMVisionFeatureCodingKeyCameraType];
      }

      else
      {
        [dictionaryCopy setObject:v36 forKeyedSubscript:AXMVisionFeatureCodingKeyDeviceMotion];
        v52 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceOrientation];
        [dictionaryCopy setObject:v52 forKeyedSubscript:AXMVisionFeatureCodingKeyDeviceOrientation];

        v53 = [MEMORY[0x1E696AD98] numberWithInteger:self->_cameraType];
        [dictionaryCopy setObject:v53 forKeyedSubscript:AXMVisionFeatureCodingKeyCameraType];
      }

      goto LABEL_72;
    case 18uLL:
      if (coderCopy)
      {
        faceId = self->_cameraType;
        v43 = AXMVisionFeatureCodingKeyCameraType;
        goto LABEL_38;
      }

      v55 = [MEMORY[0x1E696AD98] numberWithInteger:self->_cameraType];
      v56 = AXMVisionFeatureCodingKeyCameraType;
      goto LABEL_71;
    case 21uLL:
      aestheticsResult = self->_aestheticsResult;
      if (coderCopy)
      {
        [coderCopy encodeObject:aestheticsResult forKey:AXMVisionFeatureCodingKeyAesthetics];
LABEL_58:
        [coderCopy encodeObject:self->_caption forKey:@"caption"];
        colorInfo = self->_translatedCaption;
        v33 = @"translatedCaption";
        goto LABEL_19;
      }

      [dictionaryCopy setObject:aestheticsResult forKeyedSubscript:AXMVisionFeatureCodingKeyAesthetics];
LABEL_75:
      [dictionaryCopy setObject:self->_caption forKeyedSubscript:@"caption"];
      colorInfo = self->_translatedCaption;
      v33 = @"translatedCaption";
      goto LABEL_21;
    case 25uLL:
      mediaAnalysisImageCaption = self->_mediaAnalysisImageCaption;
      if (coderCopy)
      {
        [coderCopy encodeObject:mediaAnalysisImageCaption forKey:AXMMediaAnalysisFeatureCodingKeyImageCaption];
        mediaAnalysisImageCaptionConfidence = self->_mediaAnalysisImageCaptionConfidence;
        *&mediaAnalysisImageCaptionConfidence = mediaAnalysisImageCaptionConfidence;
        [coderCopy encodeFloat:AXMMediaAnalysisFeatureCodingKeyImageCaptionConfidence forKey:mediaAnalysisImageCaptionConfidence];
        colorInfo = self->_mediaAnalysisTranslatedImageCaption;
        v33 = AXMMediaAnalysisFeatureCodingKeyTranslatedImageCaption;
LABEL_19:
        [coderCopy encodeObject:colorInfo forKey:v33];
      }

      else
      {
        [dictionaryCopy setObject:mediaAnalysisImageCaption forKeyedSubscript:AXMMediaAnalysisFeatureCodingKeyImageCaption];
        v54 = [MEMORY[0x1E696AD98] numberWithDouble:self->_mediaAnalysisImageCaptionConfidence];
        [dictionaryCopy setObject:v54 forKeyedSubscript:AXMMediaAnalysisFeatureCodingKeyImageCaptionConfidence];

        colorInfo = self->_mediaAnalysisTranslatedImageCaption;
        v33 = AXMMediaAnalysisFeatureCodingKeyTranslatedImageCaption;
LABEL_21:
        [dictionaryCopy setObject:colorInfo forKeyedSubscript:v33];
      }

LABEL_72:

      return;
    case 31uLL:
      mediaAnalysisFaceDetectionResult = self->_mediaAnalysisFaceDetectionResult;
      if (coderCopy)
      {
        [coderCopy encodeObject:mediaAnalysisFaceDetectionResult forKey:AXMMediaAnalysisFeatureCodingKeyFaceDetectionResult];
        faceId = self->_mediaAnalysisFaceId;
        v43 = AXMMediaAnalysisFeatureCodingKeyFaceID;
LABEL_38:
        [coderCopy encodeInteger:faceId forKey:v43];
      }

      else
      {
        [dictionaryCopy setObject:mediaAnalysisFaceDetectionResult forKeyedSubscript:AXMMediaAnalysisFeatureCodingKeyFaceDetectionResult];
        v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mediaAnalysisFaceId];
        v56 = AXMMediaAnalysisFeatureCodingKeyFaceID;
LABEL_71:
        [dictionaryCopy setObject:v55 forKeyedSubscript:v56];
      }

      goto LABEL_72;
    default:
      goto LABEL_72;
  }
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(AXMVisionFeature *)self _serializeWithCoder:0 orDictionary:dictionary];

  return dictionary;
}

- (CGSize)canvasSize
{
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedFrame
{
  x = self->_normalizedFrame.origin.x;
  y = self->_normalizedFrame.origin.y;
  width = self->_normalizedFrame.size.width;
  height = self->_normalizedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)horizonTransform
{
  v3 = *&self[4].d;
  *&retstr->a = *&self[4].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].ty;
  return self;
}

+ (id)nameForLocation:(int64_t)location
{
  if ((location - 1) > 0x10)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7A1E658 + location - 1);
  }
}

+ (id)localizedStringForLocation:(int64_t)location isSubjectImplicit:(BOOL)implicit
{
  v4 = location - 1;
  if ((location - 1) > 0x10)
  {
    v7 = 0;
  }

  else
  {
    v5 = *(&off_1E7A1E6E0 + v4);
    if (implicit)
    {
      v5 = [(__CFString *)*(&off_1E7A1E6E0 + v4) stringByAppendingString:@".implicit-subject"];
    }

    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v7 = [v6 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];
  }

  return v7;
}

- (int64_t)locationUsingThirds:(BOOL)thirds withFlippedYAxis:(BOOL)axis
{
  thirdsCopy = thirds;
  [(AXMVisionFeature *)self normalizedFrame];

  return [AXMVisionFeature locationForNormalizedFrame:0 previousLocation:thirdsCopy usingThirds:?];
}

+ (int64_t)locationForNormalizedFrame:(CGRect)frame previousLocation:(int64_t)location usingThirds:(BOOL)thirds
{
  result = 0;
  if (frame.size.width <= 0.0)
  {
    return result;
  }

  height = frame.size.height;
  if (frame.size.height <= 0.0)
  {
    return result;
  }

  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = 0;
  v11 = 0.0;
  v12 = 1.0;
  v13 = 1.0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  *&v17 = 0.0;
  switch(location)
  {
    case 1:
      v14 = 0;
      v16 = 0;
      v10 = 1;
      goto LABEL_12;
    case 2:
      v10 = 0;
      v14 = 0;
      v16 = 0;
      goto LABEL_12;
    case 3:
      v10 = 0;
      v16 = 0;
      v14 = 1;
LABEL_12:
      v15 = 1;
      break;
    case 4:
      v10 = 0;
      v15 = 0;
      v16 = 0;
      v14 = 1;
      break;
    case 6:
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v10 = 1;
      break;
    case 7:
      v14 = 0;
      v15 = 0;
      v10 = 1;
      goto LABEL_15;
    case 8:
      v10 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_15;
    case 9:
      v10 = 0;
      v15 = 0;
      v14 = 1;
LABEL_15:
      v16 = 1;
      break;
    case 10:
      v10 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v17 = 0.05;
      v11 = 0.05;
      break;
    case 11:
      v10 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_22;
    case 12:
      v10 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v12 = 0.95;
LABEL_22:
      *&v17 = 0.05;
      break;
    case 13:
      v10 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v12 = 0.95;
      break;
    case 14:
      v10 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v11 = 0.05;
      break;
    case 15:
      v10 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v11 = 0.05;
      goto LABEL_17;
    case 16:
      v10 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
LABEL_17:
      v13 = 0.95;
      break;
    case 17:
      v10 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v13 = 0.95;
      v12 = 0.95;
      break;
    default:
      break;
  }

  v40 = v13;
  v41 = *&v17;
  v39 = v12;
  if (thirds)
  {
    v18 = 0.333333333;
  }

  else
  {
    v18 = 0.4;
  }

  if (thirds)
  {
    v19 = 0.333333333;
  }

  else
  {
    v19 = 0.2;
  }

  v20 = y;
  v21 = width;
  v22 = height;
  MidX = CGRectGetMidX(frame);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MidY = CGRectGetMidY(v42);
  v43.origin.x = v18;
  v43.origin.y = v18;
  v43.size.width = v19;
  v43.size.height = v19;
  MinX = CGRectGetMinX(v43);
  v44.origin.x = v18;
  v44.origin.y = v18;
  v44.size.width = v19;
  v44.size.height = v19;
  MaxX = CGRectGetMaxX(v44);
  v45.origin.x = v18;
  v45.origin.y = v18;
  v45.size.width = v19;
  v45.size.height = v19;
  MinY = CGRectGetMinY(v45);
  v46.origin.x = v18;
  v46.origin.y = v18;
  v46.size.width = v19;
  v46.size.height = v19;
  MaxY = CGRectGetMaxY(v46);
  v29 = MinX + 0.05;
  if (!v10)
  {
    v29 = MinX;
  }

  v30 = MaxX + -0.05;
  if (!v14)
  {
    v30 = MaxX;
  }

  v31 = MinY + 0.05;
  if (!v15)
  {
    v31 = MinY;
  }

  if (v16)
  {
    MaxY = MaxY + -0.05;
  }

  if (MidX < v11)
  {
    v32 = 10;
    v33 = MidY <= v40;
    v34 = 14;
    v35 = 15;
LABEL_42:
    if (!v33)
    {
      v34 = v35;
    }

    if (MidY >= v41)
    {
      return v34;
    }

    else
    {
      return v32;
    }
  }

  if (MidX > v39)
  {
    v32 = 12;
    v33 = MidY <= v40;
    v34 = 13;
    v35 = 17;
    goto LABEL_42;
  }

  if (MidY >= v41)
  {
    result = 16;
  }

  else
  {
    result = 11;
  }

  if (MidY >= v41 && MidY <= v40)
  {
    if (MidX >= v29)
    {
      if (MidX >= v30)
      {
        if (MidY <= v31)
        {
          return 3;
        }

        v36 = MidY < MaxY;
        v37 = 9;
        v38 = 4;
      }

      else
      {
        if (MidY <= v31)
        {
          return 2;
        }

        v36 = MidY < MaxY;
        v37 = 8;
        v38 = 5;
      }
    }

    else
    {
      if (MidY < v31)
      {
        return 1;
      }

      v36 = MidY < MaxY;
      v37 = 7;
      v38 = 6;
    }

    if (v36)
    {
      return v38;
    }

    else
    {
      return v37;
    }
  }

  return result;
}

- (id)_nameForOCRFeatureType:(int64_t)type
{
  if (type > 0x10)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7A1E768 + type);
  }
}

+ (id)nameForUIClass:(int64_t)class
{
  if ((class - 1) >= 0x13)
  {
    v5 = [self nameForUIClass:{19, v3}];
  }

  else
  {
    v5 = *(&off_1E7A1E7F0 + class - 1);
  }

  return v5;
}

+ (int64_t)uiClassForName:(id)name
{
  nameCopy = name;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AXMVisionFeature_uiClassForName___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (uiClassForName__onceToken != -1)
  {
    dispatch_once(&uiClassForName__onceToken, block);
  }

  v5 = [uiClassForName___reverseLookup objectForKey:nameCopy];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 19;
  }

  return unsignedIntegerValue;
}

void __35__AXMVisionFeature_uiClassForName___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = uiClassForName___reverseLookup;
  uiClassForName___reverseLookup = v2;

  for (i = 5; i != 19; ++i)
  {
    v5 = uiClassForName___reverseLookup;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    v7 = [*(a1 + 32) nameForUIClass:i];
    [v5 setObject:v6 forKey:v7];
  }
}

+ (id)nameForFeatureType:(unint64_t)type
{
  if (type > 0x1F)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7A1E888 + type);
  }
}

+ (id)nameForOCRType:(int64_t)type
{
  if (type > 0x10)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7A1E988 + type);
  }
}

+ (void)_append:(id)_append toList:(id)list
{
  v17 = *MEMORY[0x1E69E9840];
  _appendCopy = _append;
  listCopy = list;
  [listCopy addObject:_appendCopy];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  subfeatures = [_appendCopy subfeatures];
  v8 = [subfeatures countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(subfeatures);
        }

        [AXMVisionFeature _append:*(*(&v12 + 1) + 8 * v11++) toList:listCopy];
      }

      while (v9 != v11);
      v9 = [subfeatures countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (id)flattenedFeatureList:(id)list
{
  v16 = *MEMORY[0x1E69E9840];
  listCopy = list;
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = listCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [AXMVisionFeature _append:*(*(&v11 + 1) + 8 * i) toList:array, v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return array;
}

- (CGRect)boundingBoxForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v49 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  if ([(AXMVisionFeature *)self featureType]== 8)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = selfCopy->_recognizedTextFeatures;
    v10 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v10)
    {
      v12 = v10;
      v38 = *v41;
      *&v11 = 138412546;
      v35 = v11;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          v50.location = [v14 textRange];
          v15 = v50.location;
          v52.location = location;
          v52.length = length;
          if (NSIntersectionRange(v50, v52).length)
          {
            v16 = selfCopy;
            value = [(AXMVisionFeature *)selfCopy value];
            v18 = [value substringWithRange:{location, length}];
            v19 = [v18 hasSuffix:{@", "}];
            if (length == 1)
            {
              v20 = 0;
            }

            else
            {
              v20 = v19;
            }

            length -= v20;
            if (location)
            {
              location -= v15;
            }

            else
            {
              location = 0;
            }

            text = [v14 text];
            v39 = 0;
            v22 = [text boundingBoxForRange:location error:{length, &v39}];
            v23 = v39;

            if (v23)
            {
              v24 = AXMediaLogCommon();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                text2 = [v14 text];
                string = [text2 string];
                v51.location = [v14 textRange];
                v30 = NSStringFromRange(v51);
                *buf = v35;
                v45 = string;
                v46 = 2112;
                v47 = v30;
                _os_log_error_impl(&dword_1AE37B000, v24, OS_LOG_TYPE_ERROR, "Failed to find bounding box for text: %@ and range: %@", buf, 0x16u);
              }
            }

            else
            {
              [v22 boundingBox];
              v6 = v25;
              v7 = v26;
              v8 = v27;
              v9 = v28;
            }

            selfCopy = v16;
          }
        }

        v12 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v12);
    }
  }

  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)addFeatureGate:(id)gate userInfo:(id)info
{
  gateCopy = gate;
  infoCopy = info;
  featureGates = self->_featureGates;
  if (!featureGates)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_featureGates;
    self->_featureGates = dictionary;

    featureGates = self->_featureGates;
  }

  if (infoCopy)
  {
    v10 = infoCopy;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  [(NSMutableDictionary *)featureGates setObject:v10 forKeyedSubscript:gateCopy];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXMVisionFeature *)self description];
  v5 = [v3 stringWithFormat:@"AXMVisionFeature<%p> %@", self, v4];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [AXMVisionFeature nameForFeatureType:[(AXMVisionFeature *)self featureType]];
  v5 = [v3 stringWithFormat:@"%@ ", v4];

  switch(self->_featureType)
  {
    case 1uLL:
      [(AXMVisionFeature *)self brightness];
      goto LABEL_19;
    case 2uLL:
      [(AXMVisionFeature *)self blur];
LABEL_19:
      [v5 appendFormat:@"value:'%.2f' ", v29];
      break;
    case 3uLL:
      [(AXMVisionFeature *)self horizonAngle];
      [v5 appendFormat:@"horizon transform. angle: %f ", v26];
      break;
    case 5uLL:
    case 6uLL:
      faceDetectionResult = [(AXMVisionFeature *)self faceDetectionResult];
      faceId = [faceDetectionResult faceId];
      faceDetectionResult2 = [(AXMVisionFeature *)self faceDetectionResult];
      name = [faceDetectionResult2 name];
      faceDetectionResult3 = [(AXMVisionFeature *)self faceDetectionResult];
      landmarks = [faceDetectionResult3 landmarks];
      faceDetectionResult4 = [(AXMVisionFeature *)self faceDetectionResult];
      landmarks3d = [faceDetectionResult4 landmarks3d];
      faceDetectionResult5 = [(AXMVisionFeature *)self faceDetectionResult];
      expressionsAndConfidence = [faceDetectionResult5 expressionsAndConfidence];
      faceDetectionResult6 = [(AXMVisionFeature *)self faceDetectionResult];
      faceDetectionResult7 = [(AXMVisionFeature *)self faceDetectionResult];
      v6 = [faceDetectionResult6 descriptionForExpression:{objc_msgSend(faceDetectionResult7, "likelyExpression")}];
      faceDetectionResult8 = [(AXMVisionFeature *)self faceDetectionResult];
      faceDetectionResult9 = [(AXMVisionFeature *)self faceDetectionResult];
      [faceDetectionResult8 confidenceForExpression:{objc_msgSend(faceDetectionResult9, "likelyExpression")}];
      v9 = v8;
      faceDetectionResult10 = [(AXMVisionFeature *)self faceDetectionResult];
      attributes = [faceDetectionResult10 attributes];
      accessibilityLabelForAttributes = [attributes accessibilityLabelForAttributes];
      v13 = [AXMVisionFeature nameForLocation:[(AXMVisionFeature *)self locationUsingThirds:0 withFlippedYAxis:0]];
      [v5 appendFormat:@"face id: %lu \nName: %@ \n[faceLandmarks: %@ faceLandmarks3d: %@ faceExpressions: %@ likelyExpression: %@ likelyConfidence: %f] \nFace Attributes : %@\nFace location: %@\n", faceId, name, landmarks, landmarks3d, expressionsAndConfidence, v6, v9, accessibilityLabelForAttributes, v13];

      break;
    case 8uLL:
      value = [(AXMVisionFeature *)self value];
      barcodeType = [(AXMVisionFeature *)self _nameForOCRFeatureType:[(AXMVisionFeature *)self ocrFeatureType]];
      goto LABEL_25;
    case 9uLL:
    case 0xAuLL:
      value = [(AXMVisionFeature *)self classificationLabel];
      classificationLocalizedValue = [(AXMVisionFeature *)self classificationLocalizedValue];
      sceneClassId = [(AXMVisionFeature *)self sceneClassId];
      detectorSceneClassIds = [(AXMVisionFeature *)self detectorSceneClassIds];
      [v5 appendFormat:@"classificationLabel:'%@' localizedName:'%@' sceneClassID:'%@' detectorSceneClassIds:'%@' ", value, classificationLocalizedValue, sceneClassId, detectorSceneClassIds];

      goto LABEL_26;
    case 0xBuLL:
      value = [(AXMVisionFeature *)self value];
      barcodeType = [(AXMVisionFeature *)self barcodeType];
LABEL_25:
      classificationLocalizedValue = barcodeType;
      [v5 appendFormat:@"value:'%@' type:%@ ", value, barcodeType];
      goto LABEL_26;
    case 0xCuLL:
      value = [(AXMVisionFeature *)self value];
      [v5 appendFormat:@"value:'%@' ", value, v46];
      goto LABEL_29;
    case 0xDuLL:
      value = [(AXMVisionFeature *)self assetMetadata];
      [v5 appendFormat:@"asset info [%@] ", value, v46];
      goto LABEL_29;
    case 0xFuLL:
      modelID = self->_modelID;
      value = [(AXMVisionFeature *)self classificationLabel];
      [v5 appendFormat:@"ModelID: '%@' classificationLabel: '%@' ", modelID, value];
      goto LABEL_29;
    case 0x10uLL:
      value = [(AXMVisionFeature *)self caption];
      classificationLocalizedValue = [(AXMVisionFeature *)self translatedCaption];
      [v5 appendFormat:@"caption: '%@' translated: '%@' ", value, classificationLocalizedValue];
      goto LABEL_26;
    case 0x11uLL:
      value = [(AXMVisionFeature *)self deviceMotion];
      [v5 appendFormat:@"deviceMotion: %@", value, v46];
      goto LABEL_29;
    case 0x12uLL:
      cameraType = [(AXMVisionFeature *)self cameraType];
      if (cameraType > 2)
      {
        v31 = 0;
      }

      else
      {
        v31 = *(&off_1E7A1EA10 + cameraType);
      }

      [v5 appendFormat:@"camera: %@", v31];
      break;
    case 0x13uLL:
      value = [AXMVisionFeature nameForLocation:[(AXMVisionFeature *)self locationUsingThirds:0 withFlippedYAxis:0]];
      [v5 appendFormat:@"location : %@", value, v46];
      goto LABEL_29;
    case 0x16uLL:
      v32 = [AXMVisionFeature nameForUIClass:[(AXMVisionFeature *)self uiClass]];
      [v5 appendFormat:@"uiClass:%@ ", v32];

      value2 = [(AXMVisionFeature *)self value];
      value = value2;
      if (value2)
      {
        [v5 appendFormat:@"value:%@ ", value2, v46];
      }

      goto LABEL_29;
    case 0x17uLL:
    case 0x18uLL:
      value = [(AXMVisionFeature *)self classificationLabel];
      [v5 appendFormat:@"classificationLabel:'%@' ", value, v46];
      goto LABEL_29;
    case 0x19uLL:
      if (self->_mediaAnalysisImageCaption)
      {
        [v5 appendFormat:@"\nimage caption : %@", self->_mediaAnalysisImageCaption];
        [v5 appendFormat:@"\nimage caption translated : %@", self->_mediaAnalysisTranslatedImageCaption];
        [v5 appendFormat:@"\nimage caption confidence : %.2f\n", *&self->_mediaAnalysisImageCaptionConfidence];
      }

      break;
    case 0x1AuLL:
    case 0x1BuLL:
      value = [(AXMVisionFeature *)self classificationLabel];
      classificationLocalizedValue = [(AXMVisionFeature *)self classificationLocalizedValue];
      [v5 appendFormat:@"classificationLabel:'%@' localizedName:'%@'", value, classificationLocalizedValue];
LABEL_26:

      goto LABEL_29;
    case 0x1CuLL:
      value = [AXMVisionFeature nameForLocation:[(AXMVisionFeature *)self locationUsingThirds:0 withFlippedYAxis:0]];
      [v5 appendFormat:@"media analysis location : %@", value, v46];
      goto LABEL_29;
    case 0x1DuLL:
    case 0x1EuLL:
      value = [(AXMVisionFeature *)self classificationLabel];
      [v5 appendFormat:@"classificationLabel:'%@'", value, v46];
      goto LABEL_29;
    case 0x1FuLL:
      value = [(AXMVisionFeature *)self mediaAnalysisFaceDetectionResult];
      faceId2 = [value faceId];
      name2 = [value name];
      landmarks2 = [value landmarks];
      landmarks3d2 = [value landmarks3d];
      expressionsAndConfidence2 = [value expressionsAndConfidence];
      v20 = [value descriptionForExpression:{objc_msgSend(value, "likelyExpression")}];
      [value confidenceForExpression:{objc_msgSend(value, "likelyExpression")}];
      v22 = v21;
      attributes2 = [value attributes];
      accessibilityLabelForAttributes2 = [attributes2 accessibilityLabelForAttributes];
      v25 = [AXMVisionFeature nameForLocation:[(AXMVisionFeature *)self locationUsingThirds:0 withFlippedYAxis:0]];
      [v5 appendFormat:@"face id: %lu \nName: %@ \n[faceLandmarks: %@ faceLandmarks3d: %@ faceExpressions: %@ likelyExpression: %@ likelyConfidence: %f] \nFace Attributes : %@\nFace location: %@\n", faceId2, name2, landmarks2, landmarks3d2, expressionsAndConfidence2, v20, v22, accessibilityLabelForAttributes2, v25];

LABEL_29:
      break;
    default:
      break;
  }

  [(AXMVisionFeature *)self frame];
  if (!CGRectIsEmpty(v64))
  {
    [(AXMVisionFeature *)self frame];
    v38 = AXMStringFromCGRect(v34, v35, v36, v37);
    [(AXMVisionFeature *)self normalizedFrame];
    v43 = AXMStringFromNormalizedCGRect(v39, v40, v41, v42);
    [v5 appendFormat:@"frame:%@ (normalized:%@) ", v38, v43];
  }

  [(AXMVisionFeature *)self confidence];
  [v5 appendFormat:@"confidence:%.2f lowConfidence:%ld ", v44, -[AXMVisionFeature isLowConfidence](self, "isLowConfidence")];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXMVisionFeature *)self isEqualToAXMVisionFeature:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAXMVisionFeature:(id)feature
{
  featureCopy = feature;
  v5 = featureCopy;
  if (featureCopy && self->_featureType == *(featureCopy + 1) && CGRectEqualToRect(self->_frame, *(featureCopy + 56)))
  {
    switch(self->_featureType)
    {
      case 0uLL:
      case 4uLL:
      case 6uLL:
      case 7uLL:
      case 8uLL:
      case 0xBuLL:
      case 0xCuLL:
      case 0xEuLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x15uLL:
      case 0x16uLL:
        value = [(AXMVisionFeature *)self value];
        value2 = [v5 value];
        LOBYTE(self) = [value isEqualToString:value2];

        goto LABEL_11;
      case 1uLL:
        brightness = self->_brightness;
        [v5 brightness];
        goto LABEL_17;
      case 2uLL:
        brightness = self->_blur;
        [v5 blur];
LABEL_17:
        v26 = brightness == v28;
        goto LABEL_18;
      case 3uLL:
        horizonAngle = self->_horizonAngle;
        [v5 horizonAngle];
        v26 = horizonAngle == v25;
LABEL_18:
        LOBYTE(self) = v26;
        break;
      case 5uLL:
      case 0x1CuLL:
      case 0x1FuLL:
        [(AXMVisionFeature *)self frame];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [v5 frame];
        LOBYTE(self) = AXMRectApproxEqual(v13, v15, v17, v19, v20, v21, v22, v23);
        break;
      case 9uLL:
      case 0xAuLL:
      case 0xFuLL:
      case 0x17uLL:
      case 0x18uLL:
      case 0x1AuLL:
      case 0x1BuLL:
      case 0x1DuLL:
      case 0x1EuLL:
        classificationLabel = self->_classificationLabel;
        classificationLabel = [v5 classificationLabel];
        goto LABEL_9;
      case 0xDuLL:
        assetMetadata = self->_assetMetadata;
        value = [v5 assetMetadata];
        v11 = [(AXMVisionFeatureAssetMetadata *)assetMetadata isEqual:value];
        goto LABEL_10;
      case 0x10uLL:
        classificationLabel = self->_caption;
        classificationLabel = [v5 caption];
        goto LABEL_9;
      case 0x19uLL:
        classificationLabel = self->_mediaAnalysisImageCaption;
        classificationLabel = [v5 mediaAnalysisImageCaption];
LABEL_9:
        value = classificationLabel;
        v11 = [(NSString *)classificationLabel isEqualToString:classificationLabel];
LABEL_10:
        LOBYTE(self) = v11;
LABEL_11:

        break;
      default:
        break;
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self & 1;
}

- (unint64_t)hash
{
  featureType = self->_featureType;
  v4 = [(NSString *)self->_value hash];
  v5 = [(NSString *)self->_classificationLabel hash];
  v6 = [(NSString *)self->_caption hash];
  v10 = vcvtq_u64_f64(self->_frame.origin);
  v11 = vcvtq_u64_f64(self->_frame.size);
  v7 = [(NSString *)self->_mediaAnalysisImageCaption hash];
  v8 = veorq_s8(v10, v11);
  return *&veor_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) ^ v7 ^ v6 ^ v5 ^ featureType ^ v4;
}

+ (id)filterFeatureList:(id)list basedOnSceneClassIdsForFeature:(id)feature
{
  featureCopy = feature;
  v6 = MEMORY[0x1E695DFA8];
  listCopy = list;
  v8 = [v6 set];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__AXMVisionFeature_filterFeatureList_basedOnSceneClassIdsForFeature___block_invoke;
  v14[3] = &unk_1E7A1E638;
  v15 = featureCopy;
  v9 = v8;
  v16 = v9;
  v10 = featureCopy;
  [listCopy enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __69__AXMVisionFeature_filterFeatureList_basedOnSceneClassIdsForFeature___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 detectorSceneClassIds];
  v4 = [*(a1 + 32) sceneClassId];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (CGRect)unpaddedDetectedFaceRect
{
  x = self->_unpaddedDetectedFaceRect.origin.x;
  y = self->_unpaddedDetectedFaceRect.origin.y;
  width = self->_unpaddedDetectedFaceRect.size.width;
  height = self->_unpaddedDetectedFaceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)activationPoint
{
  x = self->_activationPoint.x;
  y = self->_activationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

+ (id)unitTestingTeatureWithType:(unint64_t)type axElementRect:(CGRect)rect confidence:(double)confidence uiClass:(int64_t)class label:(id)label canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12 = rect.size.height;
  v13 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  labelCopy = label;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = type;
  *(_init + 42) = width;
  *(_init + 43) = height;
  *(_init + 7) = x;
  *(_init + 8) = y;
  *(_init + 9) = v13;
  *(_init + 10) = v12;
  v19 = _init[15];
  _init[15] = labelCopy;

  *(_init + 23) = confidence;
  _init[58] = class;

  return _init;
}

+ (id)unitTestingFeatureWithType:(unint64_t)type canvasSize:(CGSize)size frame:(CGRect)frame value:(id)value valueIsSpeakable:(BOOL)speakable barcodeType:(id)barcodeType ocrFeatureType:(int64_t)featureType subFeatures:(id)self0
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v18 = size.height;
  v19 = size.width;
  valueCopy = value;
  barcodeTypeCopy = barcodeType;
  featuresCopy = features;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = type;
  *(_init + 42) = v19;
  *(_init + 43) = v18;
  *(_init + 7) = x;
  *(_init + 8) = y;
  *(_init + 9) = width;
  *(_init + 10) = height;
  v25 = _init[15];
  _init[15] = valueCopy;
  v26 = valueCopy;

  *(_init + 136) = speakable;
  v27 = _init[3];
  _init[3] = barcodeTypeCopy;
  v28 = barcodeTypeCopy;

  _init[4] = featureType;
  v29 = _init[2];
  _init[2] = featuresCopy;

  return _init;
}

+ (id)unitTestingFeature
{
  _init = [[AXMVisionFeature alloc] _init];
  v3 = vdupq_n_s64(0x406F400000000000uLL);
  *(_init + 1) = 0;
  *(_init + 21) = v3;
  *(_init + 7) = 0;
  *(_init + 8) = 0;
  *(_init + 72) = v3;

  return _init;
}

+ (id)unitTestingProminentObjectFeature
{
  _init = [[AXMVisionFeature alloc] _init];
  *(_init + 1) = 19;
  *(_init + 21) = vdupq_n_s64(0x406F400000000000uLL);
  v3 = vdupq_n_s64(0x3FA47AE147AE147BuLL);
  *(_init + 56) = v3;
  v4 = vdupq_n_s64(0x3FBEB851EB851EB8uLL);
  *(_init + 72) = v4;
  *(_init + 88) = v3;
  *(_init + 104) = v4;

  return _init;
}

+ (id)unitTestingFaceFeatureWithSize:(CGSize)size faceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = size.height;
  v9 = size.width;
  _init = [[AXMVisionFeature alloc] _init];
  _init[1] = 5;
  *(_init + 42) = v9;
  *(_init + 43) = v8;
  v11 = x / v9;
  v12 = y / v8;
  v13 = width / v9;
  v14 = height / v8;
  v15 = objc_alloc_init(AXMVisionFeatureFaceDetectionResult);
  *(_init + 7) = v11;
  *(_init + 8) = v12;
  *(_init + 9) = v13;
  *(_init + 10) = v14;
  *(_init + 11) = v11;
  *(_init + 12) = v12;
  *(_init + 13) = v13;
  *(_init + 14) = v14;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setObject:&unk_1F240B350 forKeyedSubscript:@"Smile"];
  [v16 setObject:&unk_1F240B360 forKeyedSubscript:@"Disgust"];
  [v16 setObject:&unk_1F240B370 forKeyedSubscript:@"Surprise"];
  [v16 setObject:&unk_1F240B380 forKeyedSubscript:@"Scream"];
  [v16 setObject:&unk_1F240B390 forKeyedSubscript:@"Neutral"];
  [v16 setObject:&unk_1F240B360 forKeyedSubscript:@"Suspicious"];
  [(AXMVisionFeatureFaceDetectionResult *)v15 setExpressionsAndConfidence:v16];
  v17 = [AXMVisionFeatureFaceLandmarks unitTestingFaceLandmarksIs3D:0];
  [(AXMVisionFeatureFaceDetectionResult *)v15 setLandmarks:v17];

  v18 = [AXMVisionFeatureFaceLandmarks unitTestingFaceLandmarksIs3D:1];
  [(AXMVisionFeatureFaceDetectionResult *)v15 setLandmarks3d:v18];

  v19 = [AXMVisionFeatureFaceAttributes unitTestingFaceAttributesForAge:3 gender:1 eyes:0 smiling:0 facialHair:0 hairColor:3 baldness:1 glasses:1 eyeMakeup:0 lipMakeup:0 faceMask:2 ethnicity:5 expression:5 facialHairV2:3 hairType:2 headGear:0 pose:2 skinTone:3 excludeOptions:1];
  [(AXMVisionFeatureFaceDetectionResult *)v15 setAttributes:v19];

  [(AXMVisionFeatureFaceDetectionResult *)v15 setName:@"Alex"];
  v20 = _init[32];
  _init[32] = v15;

  return _init;
}

+ (id)unitTestingHorizonFeature
{
  _init = [[AXMVisionFeature alloc] _init];
  v3 = vdupq_n_s64(0x406F400000000000uLL);
  *(_init + 1) = 3;
  *(_init + 21) = v3;
  *(_init + 7) = 0;
  *(_init + 8) = 0;
  *(_init + 72) = v3;
  *(_init + 62) = 1056964608;
  __asm { FMOV            V0.2D, #1.0 }

  *(_init + 200) = _Q0;
  *(_init + 216) = _Q0;
  *(_init + 232) = _Q0;

  return _init;
}

@end