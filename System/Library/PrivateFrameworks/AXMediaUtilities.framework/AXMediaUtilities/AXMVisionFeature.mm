@interface AXMVisionFeature
+ (AXMVisionFeature)featureWithAssetMetadata:(id)a3;
+ (AXMVisionFeature)featureWithCameraType:(int64_t)a3;
+ (AXMVisionFeature)featureWithCaptionResult:(id)a3 confidence:(double)a4 translatedCaption:(id)a5 modelIdentifier:(id)a6 canvasSize:(CGSize)a7 isLowConfidence:(BOOL)a8;
+ (AXMVisionFeature)featureWithColorInfo:(id)a3 canvasSize:(CGSize)a4;
+ (AXMVisionFeature)featureWithDeviceMotion:(id)a3 orientation:(int64_t)a4;
+ (AXMVisionFeature)featureWithFaceDetectionResult:(id)a3 canvasSize:(CGSize)a4;
+ (AXMVisionFeature)featureWithIconClass:(id)a3 confidence:(double)a4;
+ (AXMVisionFeature)featureWithImageAestheticsObservation:(id)a3;
+ (AXMVisionFeature)featureWithMediaAnalysisFaceDetectionResult:(id)a3 canvasSize:(CGSize)a4;
+ (AXMVisionFeature)featureWithMediaAnalysisImageCaptionResult:(id)a3 confidence:(double)a4 translatedCaption:(id)a5;
+ (AXMVisionFeature)featureWithMediaAnalysisTaxonomyNode:(id)a3 canvasSize:(CGSize)a4;
+ (AXMVisionFeature)featureWithMediaLegibility:(id)a3;
+ (AXMVisionFeature)featureWithMetadata:(id)a3 interfaceOrientation:(int64_t)a4 isMirrored:(BOOL)a5 canvasSize:(CGSize)a6;
+ (AXMVisionFeature)featureWithTaxonomyNode:(id)a3 canvasSize:(CGSize)a4;
+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 axElementRect:(CGRect)a4 confidence:(double)a5 uiClass:(int64_t)a6 label:(id)a7 canvasSize:(CGSize)a8;
+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 blurValue:(float)a4 canvasSize:(CGSize)a5;
+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 brightnessValue:(float)a4 canvasSize:(CGSize)a5;
+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 horizonResult:(id)a4 canvasSize:(CGSize)a5;
+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 modelClassificationResult:(id)a4 modelIdentifier:(id)a5 canvasSize:(CGSize)a6;
+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 rectangleResult:(id)a4 canvasSize:(CGSize)a5;
+ (CGRect)_aspectFaceRectFromSquareFaceRect:(CGRect)a3 sizeInPixels:(CGSize)a4;
+ (id)envelopeRegion:(id)a3 boundingBox:(CGRect)a4 confidence:(double)a5 canvasSize:(CGSize)a6;
+ (id)envelopeWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 regions:(id)a6 canvasSize:(CGSize)a7;
+ (id)filterFeatureList:(id)a3 basedOnSceneClassIdsForFeature:(id)a4;
+ (id)flattenedFeatureList:(id)a3;
+ (id)groupedFeatureWithElementRect:(CGRect)a3 uiClass:(int64_t)a4 confidence:(double)a5 label:(id)a6 canvasSize:(CGSize)a7 subElements:(id)a8;
+ (id)localizedStringForLocation:(int64_t)a3 isSubjectImplicit:(BOOL)a4;
+ (id)mediaAnalysisNSFWClassificationWithCategory:(id)a3 confidence:(float)a4 canvasSize:(CGSize)a5;
+ (id)mediaAnalysisObjectClassificationWithLabel:(id)a3 localizedValue:(id)a4 boundingBox:(CGRect)a5 confidence:(float)a6 canvasSize:(CGSize)a7 sceneClassId:(id)a8;
+ (id)mediaAnalysisProminentObjectWithBoundingBox:(CGRect)a3 canvasSize:(CGSize)a4 confidence:(double)a5;
+ (id)mediaAnalysisSceneClassificationWithLabel:(id)a3 localizedValue:(id)a4 confidence:(float)a5 canvasSize:(CGSize)a6;
+ (id)mediaAnalysisSignificantEventClassificationWithCategory:(id)a3 confidence:(float)a4 canvasSize:(CGSize)a5;
+ (id)nameForFeatureType:(unint64_t)a3;
+ (id)nameForLocation:(int64_t)a3;
+ (id)nameForOCRType:(int64_t)a3;
+ (id)nameForUIClass:(int64_t)a3;
+ (id)nsfwClassificationWithCategory:(id)a3 confidence:(float)a4 canvasSize:(CGSize)a5;
+ (id)nutritionLabelWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 rows:(id)a6 canvasSize:(CGSize)a7;
+ (id)objectClassificationWithLabel:(id)a3 localizedValue:(id)a4 boundingBox:(CGRect)a5 confidence:(float)a6 canvasSize:(CGSize)a7 sceneClassId:(id)a8;
+ (id)personWithBoundingBox:(CGRect)a3 confidence:(double)a4 canvasSize:(CGSize)a5;
+ (id)prominentObjectWithBoundingBox:(CGRect)a3 canvasSize:(CGSize)a4 confidence:(double)a5;
+ (id)receiptWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 regions:(id)a6 canvasSize:(CGSize)a7;
+ (id)sceneClassificationWithLabel:(id)a3 localizedValue:(id)a4 confidence:(float)a5 canvasSize:(CGSize)a6;
+ (id)significantEventClassificationWithCategory:(id)a3 confidence:(float)a4 canvasSize:(CGSize)a5;
+ (id)tableCellWithText:(id)a3 boundingBox:(CGRect)a4 confidence:(double)a5 recognizedTextFeatures:(id)a6 canvasSize:(CGSize)a7 isHeader:(BOOL)a8;
+ (id)tableColumnWithText:(id)a3 boundingBox:(CGRect)a4 cells:(id)a5 canvasSize:(CGSize)a6;
+ (id)tableRowWithText:(id)a3 boundingBox:(CGRect)a4 cells:(id)a5 canvasSize:(CGSize)a6;
+ (id)tableWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 rows:(id)a6 columns:(id)a7 canvasSize:(CGSize)a8 isIncomplete:(BOOL)a9;
+ (id)textDocumentWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 regions:(id)a6 canvasSize:(CGSize)a7;
+ (id)textLineWithText:(id)a3 boundingBox:(CGRect)a4 recognizedTextFeatures:(id)a5 canvasSize:(CGSize)a6;
+ (id)textRegionWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 lines:(id)a6 canvasSize:(CGSize)a7;
+ (id)textSequence:(id)a3 boundingBox:(CGRect)a4 recognizedTextFeatures:(id)a5 confidence:(double)a6 canvasSize:(CGSize)a7;
+ (id)unitTestingFaceFeatureWithSize:(CGSize)a3 faceFrame:(CGRect)a4;
+ (id)unitTestingFeature;
+ (id)unitTestingFeatureWithType:(unint64_t)a3 canvasSize:(CGSize)a4 frame:(CGRect)a5 value:(id)a6 valueIsSpeakable:(BOOL)a7 barcodeType:(id)a8 ocrFeatureType:(int64_t)a9 subFeatures:(id)a10;
+ (id)unitTestingHorizonFeature;
+ (id)unitTestingProminentObjectFeature;
+ (id)unitTestingTeatureWithType:(unint64_t)a3 axElementRect:(CGRect)a4 confidence:(double)a5 uiClass:(int64_t)a6 label:(id)a7 canvasSize:(CGSize)a8;
+ (int64_t)locationForNormalizedFrame:(CGRect)a3 previousLocation:(int64_t)a4 usingThirds:(BOOL)a5;
+ (int64_t)uiClassForName:(id)a3;
+ (void)_append:(id)a3 toList:(id)a4;
- (AXMVisionFeature)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAXMVisionFeature:(id)a3;
- (CGAffineTransform)horizonTransform;
- (CGPoint)activationPoint;
- (CGRect)boundingBoxForRange:(_NSRange)a3;
- (CGRect)frame;
- (CGRect)normalizedFrame;
- (CGRect)unpaddedDetectedFaceRect;
- (CGSize)canvasSize;
- (NSDictionary)dictionaryRepresentation;
- (NSString)debugDescription;
- (NSString)description;
- (id)_init;
- (id)_nameForOCRFeatureType:(int64_t)a3;
- (int64_t)locationUsingThirds:(BOOL)a3 withFlippedYAxis:(BOOL)a4;
- (unint64_t)hash;
- (void)_serializeWithCoder:(id)a3 orDictionary:(id)a4;
- (void)addFeatureGate:(id)a3 userInfo:(id)a4;
@end

@implementation AXMVisionFeature

+ (AXMVisionFeature)featureWithMetadata:(id)a3 interfaceOrientation:(int64_t)a4 isMirrored:(BOOL)a5 canvasSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v8 = a5;
  v10 = a3;
  [v10 bounds];
  v15 = AXMTransformedNormalizedFrame(a4, v8, v11, v12, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v10;
    [AXMVisionFeature _aspectFaceRectFromSquareFaceRect:v15 sizeInPixels:v17, v19, v21, width, height];
    v45 = v24;
    v46 = v23;
    v43 = v26;
    v44 = v25;
    v27 = [v22 faceID];
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

    v33 = 0;
    v32 = 0;
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
    v32 = [v10 stringValue];
    v33 = [v10 type];
    v29 = 0;
    v27 = 0;
    v34 = 11;
LABEL_11:
    v35 = [[AXMVisionFeature alloc] _init];
    v35[1] = v34;
    v36 = v35[15];
    v35[15] = v32;
    v37 = v32;

    *(v35 + 42) = width;
    *(v35 + 43) = height;
    *(v35 + 7) = width * v15;
    *(v35 + 8) = height * v17;
    *(v35 + 9) = width * v19;
    *(v35 + 10) = height * v21;
    *(v35 + 11) = v15;
    *(v35 + 12) = v17;
    *(v35 + 13) = v19;
    *(v35 + 14) = v21;
    *(v35 + 68) = v31;
    *(v35 + 69) = v30;
    v35[70] = v47;
    *(v35 + 71) = v48;
    v38 = v35[3];
    v35[3] = v33;
    v39 = v33;

    v40 = v35[32];
    v35[32] = v29;
    v35[33] = v27;
    v41 = v29;

    goto LABEL_12;
  }

  NSClassFromString(&cfstr_Avmetadatavide.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v35 = 0;
    goto LABEL_13;
  }

  v37 = AXMediaLogCommon();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    +[AXMVisionFeature featureWithMetadata:interfaceOrientation:isMirrored:canvasSize:];
  }

  v35 = 0;
LABEL_12:

LABEL_13:

  return v35;
}

+ (AXMVisionFeature)featureWithFaceDetectionResult:(id)a3 canvasSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 frame];
  v26 = v8;
  v27 = v7;
  v10 = v9;
  v12 = 1.0 - v11 - v9;
  [AXMVisionFeature _aspectFaceRectFromSquareFaceRect:"_aspectFaceRectFromSquareFaceRect:sizeInPixels:" sizeInPixels:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [[AXMVisionFeature alloc] _init];
  v21[1] = 5;
  *(v21 + 42) = width;
  *(v21 + 43) = height;
  *(v21 + 7) = width * v14;
  *(v21 + 8) = height * v16;
  *(v21 + 9) = width * v18;
  *(v21 + 10) = height * v20;
  *(v21 + 11) = v14;
  *(v21 + 12) = v16;
  *(v21 + 13) = v18;
  *(v21 + 14) = v20;
  v21[68] = v27;
  *(v21 + 69) = v12;
  v21[70] = v26;
  *(v21 + 71) = v10;
  v22 = v21[32];
  v21[32] = v6;
  v23 = v6;

  v24 = [v23 faceId];
  v21[33] = v24;

  return v21;
}

+ (id)prominentObjectWithBoundingBox:(CGRect)a3 canvasSize:(CGSize)a4 confidence:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.size.height;
  v9 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [[AXMVisionFeature alloc] _init];
  v12[1] = 19;
  *(v12 + 42) = width;
  *(v12 + 43) = height;
  *(v12 + 11) = x;
  *(v12 + 12) = y;
  *(v12 + 13) = v9;
  *(v12 + 14) = v8;
  *(v12 + 7) = x * width;
  *(v12 + 8) = y * height;
  *(v12 + 9) = v9 * width;
  *(v12 + 10) = v8 * height;
  *(v12 + 23) = a5;

  return v12;
}

+ (id)personWithBoundingBox:(CGRect)a3 confidence:(double)a4 canvasSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3.size.height;
  v9 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [[AXMVisionFeature alloc] _init];
  v12[1] = 7;
  *(v12 + 23) = a4;
  *(v12 + 42) = width;
  *(v12 + 43) = height;
  *(v12 + 7) = x * width;
  *(v12 + 8) = y * height;
  *(v12 + 9) = v9 * width;
  *(v12 + 10) = v8 * height;
  *(v12 + 11) = x;
  *(v12 + 12) = y;
  *(v12 + 13) = v9;
  *(v12 + 14) = v8;

  return v12;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 blurValue:(float)a4 canvasSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = fminf(fmaxf(a4, 0.0), 1.0);
  v8 = [[AXMVisionFeature alloc] _init];
  *(v8 + 1) = 2;
  *(v8 + 23) = 0x3FF0000000000000;
  *(v8 + 42) = width;
  *(v8 + 43) = height;
  v9 = AXMRectNotApplicable;
  v10 = *&qword_1EB5DCF60;
  *(v8 + 56) = AXMRectNotApplicable;
  *(v8 + 72) = v10;
  *(v8 + 88) = v9;
  *(v8 + 104) = v10;
  *(v8 + 21) = v7;

  return v8;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 brightnessValue:(float)a4 canvasSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = [[AXMVisionFeature alloc] _init];
  *(v8 + 1) = 1;
  *(v8 + 23) = 0x3FF0000000000000;
  *(v8 + 42) = width;
  *(v8 + 43) = height;
  v9 = AXMRectNotApplicable;
  v10 = *&qword_1EB5DCF60;
  *(v8 + 56) = AXMRectNotApplicable;
  *(v8 + 72) = v10;
  *(v8 + 88) = v9;
  *(v8 + 104) = v10;
  *(v8 + 22) = a4;

  return v8;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 horizonResult:(id)a4 canvasSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4;
  v8 = [[AXMVisionFeature alloc] _init];
  *(v8 + 1) = 3;
  [v7 confidence];
  *(v8 + 23) = v9;
  *(v8 + 42) = width;
  *(v8 + 43) = height;
  v10 = AXMRectNotApplicable;
  v11 = *&qword_1EB5DCF60;
  *(v8 + 56) = AXMRectNotApplicable;
  *(v8 + 72) = v11;
  *(v8 + 88) = v10;
  *(v8 + 104) = v11;
  if (v7)
  {
    [v7 transform];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  *(v8 + 200) = v14;
  *(v8 + 216) = v15;
  *(v8 + 232) = v16;
  [v7 angle];
  *&v12 = v12;
  *(v8 + 62) = LODWORD(v12);

  return v8;
}

+ (id)objectClassificationWithLabel:(id)a3 localizedValue:(id)a4 boundingBox:(CGRect)a5 confidence:(float)a6 canvasSize:(CGSize)a7 sceneClassId:(id)a8
{
  height = a7.height;
  width = a7.width;
  v12 = a5.size.height;
  v13 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v20 = [[AXMVisionFeature alloc] _init];
  v20[1] = 10;
  v21 = v20[45];
  v20[45] = v17;
  v22 = v17;

  v23 = v20[46];
  v20[46] = v18;
  v24 = v18;

  *(v20 + 23) = a6;
  *(v20 + 42) = width;
  *(v20 + 43) = height;
  *(v20 + 11) = x;
  *(v20 + 12) = y;
  *(v20 + 13) = v13;
  *(v20 + 14) = v12;
  *(v20 + 7) = x * width;
  *(v20 + 8) = y * height;
  *(v20 + 9) = v13 * width;
  *(v20 + 10) = v12 * height;
  v25 = v20[51];
  v20[51] = v19;

  return v20;
}

+ (id)sceneClassificationWithLabel:(id)a3 localizedValue:(id)a4 confidence:(float)a5 canvasSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v10 = a3;
  v11 = a4;
  v12 = [[AXMVisionFeature alloc] _init];
  *(v12 + 1) = 9;
  v13 = *(v12 + 45);
  *(v12 + 45) = v10;
  v14 = v10;

  v15 = *(v12 + 46);
  *(v12 + 46) = v11;

  *(v12 + 23) = a5;
  *(v12 + 42) = width;
  *(v12 + 43) = height;
  v16 = AXMRectNotApplicable;
  v17 = *&qword_1EB5DCF60;
  *(v12 + 88) = AXMRectNotApplicable;
  *(v12 + 104) = v17;
  *(v12 + 56) = v16;
  *(v12 + 72) = v17;

  return v12;
}

+ (id)nsfwClassificationWithCategory:(id)a3 confidence:(float)a4 canvasSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = [[AXMVisionFeature alloc] _init];
  *(v9 + 1) = 23;
  v10 = *(v9 + 45);
  *(v9 + 45) = v8;

  *(v9 + 23) = a4;
  *(v9 + 42) = width;
  *(v9 + 43) = height;
  v11 = AXMRectNotApplicable;
  v12 = *&qword_1EB5DCF60;
  *(v9 + 88) = AXMRectNotApplicable;
  *(v9 + 104) = v12;
  *(v9 + 56) = v11;
  *(v9 + 72) = v12;

  return v9;
}

+ (id)significantEventClassificationWithCategory:(id)a3 confidence:(float)a4 canvasSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = [[AXMVisionFeature alloc] _init];
  *(v9 + 1) = 24;
  v10 = *(v9 + 45);
  *(v9 + 45) = v8;

  *(v9 + 23) = a4;
  *(v9 + 42) = width;
  *(v9 + 43) = height;
  v11 = AXMRectNotApplicable;
  v12 = *&qword_1EB5DCF60;
  *(v9 + 88) = AXMRectNotApplicable;
  *(v9 + 104) = v12;
  *(v9 + 56) = v11;
  *(v9 + 72) = v12;

  return v9;
}

+ (AXMVisionFeature)featureWithTaxonomyNode:(id)a3 canvasSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = [[AXMVisionFeature alloc] _init];
  *(v7 + 1) = 9;
  v8 = [v6 label];
  v9 = *(v7 + 45);
  *(v7 + 45) = v8;

  v10 = [v6 localizedName];
  v11 = *(v7 + 46);
  *(v7 + 46) = v10;

  [v6 confidence];
  *(v7 + 23) = v12;
  *(v7 + 42) = width;
  *(v7 + 43) = height;
  v13 = AXMRectNotApplicable;
  v14 = *&qword_1EB5DCF60;
  *(v7 + 56) = AXMRectNotApplicable;
  *(v7 + 72) = v14;
  *(v7 + 88) = v13;
  *(v7 + 104) = v14;
  v15 = [v6 detectorSceneClassIds];
  v16 = *(v7 + 50);
  *(v7 + 50) = v15;

  v17 = MEMORY[0x1E696AD98];
  v18 = [v6 sceneClassId];

  v19 = [v17 numberWithUnsignedInt:v18];
  v20 = [v19 stringValue];
  v21 = *(v7 + 51);
  *(v7 + 51) = v20;

  return v7;
}

+ (AXMVisionFeature)featureWithImageAestheticsObservation:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[AXMVisionFeature alloc] _init];
    *(v4 + 1) = 21;
    v5 = [[AXMVisionFeatureAestheticsResult alloc] initWithVisionAestheticsObservation:v3];

    v6 = *(v4 + 59);
    *(v4 + 59) = v5;

    *(v4 + 23) = AXMConfidenceNotApplicable;
    v7 = AXMRectNotApplicable;
    v8 = *&qword_1EB5DCF60;
    *(v4 + 56) = AXMRectNotApplicable;
    *(v4 + 72) = v8;
    *(v4 + 88) = v7;
    *(v4 + 104) = v8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 modelClassificationResult:(id)a4 modelIdentifier:(id)a5 canvasSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v9 = a5;
  v10 = a4;
  v11 = [[AXMVisionFeature alloc] _init];
  *(v11 + 1) = 15;
  v12 = [v10 identifier];
  v13 = *(v11 + 45);
  *(v11 + 45) = v12;

  [v10 confidence];
  v15 = v14;

  *(v11 + 23) = v15;
  *(v11 + 42) = width;
  *(v11 + 43) = height;
  v16 = AXMRectNotApplicable;
  v17 = *&qword_1EB5DCF60;
  *(v11 + 56) = AXMRectNotApplicable;
  *(v11 + 72) = v17;
  *(v11 + 88) = v16;
  *(v11 + 104) = v17;
  v18 = *(v11 + 44);
  *(v11 + 44) = v9;

  return v11;
}

+ (AXMVisionFeature)featureWithCaptionResult:(id)a3 confidence:(double)a4 translatedCaption:(id)a5 modelIdentifier:(id)a6 canvasSize:(CGSize)a7 isLowConfidence:(BOOL)a8
{
  height = a7.height;
  width = a7.width;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = [[AXMVisionFeature alloc] _init];
  *(v17 + 1) = 16;
  v18 = *(v17 + 47);
  *(v17 + 47) = v14;
  v19 = v14;

  v20 = *(v17 + 48);
  *(v17 + 48) = v15;
  v21 = v15;

  *(v17 + 23) = a4;
  *(v17 + 42) = width;
  *(v17 + 43) = height;
  v22 = AXMRectNotApplicable;
  v23 = *&qword_1EB5DCF60;
  *(v17 + 56) = AXMRectNotApplicable;
  *(v17 + 72) = v23;
  *(v17 + 88) = v22;
  *(v17 + 104) = v23;
  v24 = *(v17 + 44);
  *(v17 + 44) = v16;

  v17[192] = a8;

  return v17;
}

+ (AXMVisionFeature)featureWithMediaAnalysisImageCaptionResult:(id)a3 confidence:(double)a4 translatedCaption:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [[AXMVisionFeature alloc] _init];
  *(v9 + 1) = 25;
  v10 = *(v9 + 52);
  *(v9 + 52) = v7;
  v11 = v7;

  *(v9 + 53) = a4;
  v12 = *(v9 + 54);
  *(v9 + 54) = v8;

  v13 = AXMRectNotApplicable;
  v14 = *&qword_1EB5DCF60;
  *(v9 + 56) = AXMRectNotApplicable;
  *(v9 + 72) = v14;
  *(v9 + 88) = v13;
  *(v9 + 104) = v14;
  *(v9 + 21) = *MEMORY[0x1E695F060];

  return v9;
}

+ (AXMVisionFeature)featureWithMediaAnalysisTaxonomyNode:(id)a3 canvasSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = [[AXMVisionFeature alloc] _init];
  *(v7 + 1) = 26;
  v8 = [v6 label];
  v9 = *(v7 + 45);
  *(v7 + 45) = v8;

  v10 = [v6 localizedName];
  v11 = *(v7 + 46);
  *(v7 + 46) = v10;

  [v6 confidence];
  *(v7 + 23) = v12;
  *(v7 + 42) = width;
  *(v7 + 43) = height;
  v13 = AXMRectNotApplicable;
  v14 = *&qword_1EB5DCF60;
  *(v7 + 56) = AXMRectNotApplicable;
  *(v7 + 72) = v14;
  *(v7 + 88) = v13;
  *(v7 + 104) = v14;
  v15 = [v6 detectorSceneClassIds];
  v16 = *(v7 + 50);
  *(v7 + 50) = v15;

  v17 = MEMORY[0x1E696AD98];
  v18 = [v6 sceneClassId];

  v19 = [v17 numberWithUnsignedInt:v18];
  v20 = [v19 stringValue];
  v21 = *(v7 + 51);
  *(v7 + 51) = v20;

  return v7;
}

+ (id)mediaAnalysisSceneClassificationWithLabel:(id)a3 localizedValue:(id)a4 confidence:(float)a5 canvasSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v10 = a3;
  v11 = a4;
  v12 = [[AXMVisionFeature alloc] _init];
  *(v12 + 1) = 26;
  v13 = *(v12 + 45);
  *(v12 + 45) = v10;
  v14 = v10;

  v15 = *(v12 + 46);
  *(v12 + 46) = v11;

  *(v12 + 23) = a5;
  *(v12 + 42) = width;
  *(v12 + 43) = height;
  v16 = AXMRectNotApplicable;
  v17 = *&qword_1EB5DCF60;
  *(v12 + 88) = AXMRectNotApplicable;
  *(v12 + 104) = v17;
  *(v12 + 56) = v16;
  *(v12 + 72) = v17;

  return v12;
}

+ (id)mediaAnalysisNSFWClassificationWithCategory:(id)a3 confidence:(float)a4 canvasSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = [[AXMVisionFeature alloc] _init];
  *(v9 + 1) = 29;
  v10 = *(v9 + 45);
  *(v9 + 45) = v8;

  *(v9 + 23) = a4;
  *(v9 + 42) = width;
  *(v9 + 43) = height;
  v11 = AXMRectNotApplicable;
  v12 = *&qword_1EB5DCF60;
  *(v9 + 88) = AXMRectNotApplicable;
  *(v9 + 104) = v12;
  *(v9 + 56) = v11;
  *(v9 + 72) = v12;

  return v9;
}

+ (id)mediaAnalysisSignificantEventClassificationWithCategory:(id)a3 confidence:(float)a4 canvasSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = [[AXMVisionFeature alloc] _init];
  *(v9 + 1) = 30;
  v10 = *(v9 + 45);
  *(v9 + 45) = v8;

  *(v9 + 23) = a4;
  *(v9 + 42) = width;
  *(v9 + 43) = height;
  v11 = AXMRectNotApplicable;
  v12 = *&qword_1EB5DCF60;
  *(v9 + 88) = AXMRectNotApplicable;
  *(v9 + 104) = v12;
  *(v9 + 56) = v11;
  *(v9 + 72) = v12;

  return v9;
}

+ (id)mediaAnalysisObjectClassificationWithLabel:(id)a3 localizedValue:(id)a4 boundingBox:(CGRect)a5 confidence:(float)a6 canvasSize:(CGSize)a7 sceneClassId:(id)a8
{
  height = a7.height;
  width = a7.width;
  v12 = a5.size.height;
  v13 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v20 = [[AXMVisionFeature alloc] _init];
  v20[1] = 27;
  v21 = v20[45];
  v20[45] = v17;
  v22 = v17;

  v23 = v20[46];
  v20[46] = v18;
  v24 = v18;

  *(v20 + 23) = a6;
  *(v20 + 42) = width;
  *(v20 + 43) = height;
  *(v20 + 11) = x;
  *(v20 + 12) = y;
  *(v20 + 13) = v13;
  *(v20 + 14) = v12;
  *(v20 + 7) = x * width;
  *(v20 + 8) = y * height;
  *(v20 + 9) = v13 * width;
  *(v20 + 10) = v12 * height;
  v25 = v20[51];
  v20[51] = v19;

  return v20;
}

+ (id)mediaAnalysisProminentObjectWithBoundingBox:(CGRect)a3 canvasSize:(CGSize)a4 confidence:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.size.height;
  v9 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [[AXMVisionFeature alloc] _init];
  v12[1] = 28;
  *(v12 + 42) = width;
  *(v12 + 43) = height;
  *(v12 + 11) = x;
  *(v12 + 12) = y;
  *(v12 + 13) = v9;
  *(v12 + 14) = v8;
  *(v12 + 7) = x * width;
  *(v12 + 8) = y * height;
  *(v12 + 9) = v9 * width;
  *(v12 + 10) = v8 * height;
  *(v12 + 23) = a5;

  return v12;
}

+ (AXMVisionFeature)featureWithMediaAnalysisFaceDetectionResult:(id)a3 canvasSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 frame];
  v26 = v8;
  v27 = v7;
  v10 = v9;
  v12 = 1.0 - v11 - v9;
  [AXMVisionFeature _aspectFaceRectFromSquareFaceRect:"_aspectFaceRectFromSquareFaceRect:sizeInPixels:" sizeInPixels:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [[AXMVisionFeature alloc] _init];
  v21[1] = 31;
  *(v21 + 42) = width;
  *(v21 + 43) = height;
  *(v21 + 7) = width * v14;
  *(v21 + 8) = height * v16;
  *(v21 + 9) = width * v18;
  *(v21 + 10) = height * v20;
  *(v21 + 11) = v14;
  *(v21 + 12) = v16;
  *(v21 + 13) = v18;
  *(v21 + 14) = v20;
  v21[68] = v27;
  *(v21 + 69) = v12;
  v21[70] = v26;
  *(v21 + 71) = v10;
  v22 = v21[55];
  v21[55] = v6;
  v23 = v6;

  v24 = [v23 faceId];
  v21[56] = v24;

  return v21;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 rectangleResult:(id)a4 canvasSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4;
  v8 = [[AXMVisionFeature alloc] _init];
  v8[1] = 14;
  [v7 confidence];
  *(v8 + 23) = v9;
  *(v8 + 42) = width;
  *(v8 + 43) = height;
  [v7 boundingBox];
  *(v8 + 7) = width * v12;
  *(v8 + 8) = height * (1.0 - v10 - v11);
  *(v8 + 9) = width * v13;
  *(v8 + 10) = height * v11;
  [v7 boundingBox];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v8[11] = v15;
  *(v8 + 12) = 1.0 - v17 - v21;
  v8[13] = v19;
  *(v8 + 14) = v21;

  return v8;
}

+ (AXMVisionFeature)featureWithVisionRequest:(id)a3 axElementRect:(CGRect)a4 confidence:(double)a5 uiClass:(int64_t)a6 label:(id)a7 canvasSize:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  v12 = a4.size.height;
  v13 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a7;
  v17 = [[AXMVisionFeature alloc] _init];
  v17[1] = 22;
  *(v17 + 23) = a5;
  *(v17 + 42) = width;
  *(v17 + 43) = height;
  *(v17 + 7) = x;
  *(v17 + 8) = y;
  *(v17 + 9) = v13;
  *(v17 + 10) = v12;
  v18 = v17[15];
  v17[15] = v16;

  v17[58] = a6;

  return v17;
}

+ (id)groupedFeatureWithElementRect:(CGRect)a3 uiClass:(int64_t)a4 confidence:(double)a5 label:(id)a6 canvasSize:(CGSize)a7 subElements:(id)a8
{
  height = a7.height;
  width = a7.width;
  v13 = a3.size.height;
  v14 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a6;
  v18 = a8;
  v19 = [[AXMVisionFeature alloc] _init];
  v19[1] = 22;
  *(v19 + 42) = width;
  *(v19 + 43) = height;
  *(v19 + 7) = x;
  *(v19 + 8) = y;
  *(v19 + 9) = v14;
  *(v19 + 10) = v13;
  v20 = v19[15];
  v19[15] = v17;
  v21 = v17;

  v19[58] = a4;
  *(v19 + 23) = a5;
  v22 = [v18 copy];

  v23 = v19[2];
  v19[2] = v22;

  return v19;
}

+ (id)textDocumentWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 regions:(id)a6 canvasSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v10 = a5.size.height;
  v11 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a3;
  v16 = a6;
  v17 = [[AXMVisionFeature alloc] _init];
  v17[4] = 1;
  v18 = v17[2];
  v17[1] = 8;
  v17[2] = v16;
  v19 = v16;

  v20 = v17[15];
  v17[15] = v15;

  *(v17 + 136) = a4;
  *(v17 + 42) = width;
  *(v17 + 43) = height;
  *(v17 + 7) = x * width;
  *(v17 + 8) = y * height;
  *(v17 + 9) = (x + v11) * width - x * width;
  *(v17 + 10) = (y + v10) * height - y * height;
  *(v17 + 11) = x;
  *(v17 + 12) = y;
  *(v17 + 13) = v11;
  *(v17 + 14) = v10;

  return v17;
}

+ (id)textRegionWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 lines:(id)a6 canvasSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v10 = a5.size.height;
  v11 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a3;
  v16 = a6;
  v17 = [[AXMVisionFeature alloc] _init];
  v17[1] = 8;
  v17[4] = 2;
  v18 = v17[15];
  v17[15] = v15;
  v19 = v15;

  *(v17 + 136) = a4;
  v20 = v17[2];
  v17[2] = v16;

  *(v17 + 42) = width;
  *(v17 + 43) = height;
  *(v17 + 7) = x * width;
  *(v17 + 8) = y * height;
  *(v17 + 9) = (x + v11) * width - x * width;
  *(v17 + 10) = (y + v10) * height - y * height;
  *(v17 + 11) = x;
  *(v17 + 12) = y;
  *(v17 + 13) = v11;
  *(v17 + 14) = v10;

  return v17;
}

+ (id)textLineWithText:(id)a3 boundingBox:(CGRect)a4 recognizedTextFeatures:(id)a5 canvasSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v9 = a4.size.height;
  v10 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = [[AXMVisionFeature alloc] _init];
  v15[1] = 8;
  v15[4] = 3;
  v16 = v15[15];
  v15[15] = v13;
  v17 = v13;

  v18 = v15[18];
  v15[18] = v14;

  *(v15 + 42) = width;
  *(v15 + 43) = height;
  *(v15 + 7) = x * width;
  *(v15 + 8) = y * height;
  *(v15 + 9) = (x + v10) * width - x * width;
  *(v15 + 10) = (y + v9) * height - y * height;
  *(v15 + 11) = x;
  *(v15 + 12) = y;
  *(v15 + 13) = v10;
  *(v15 + 14) = v9;

  return v15;
}

+ (id)textSequence:(id)a3 boundingBox:(CGRect)a4 recognizedTextFeatures:(id)a5 confidence:(double)a6 canvasSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v11 = a4.size.height;
  v12 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  v16 = a5;
  v17 = [[AXMVisionFeature alloc] _init];
  v17[1] = 8;
  v17[4] = 4;
  v18 = v17[15];
  v17[15] = v15;
  v19 = v15;

  v20 = v17[18];
  v17[18] = v16;

  *(v17 + 42) = width;
  *(v17 + 43) = height;
  v21 = 1.0 - y - v11;
  *(v17 + 7) = x * width;
  *(v17 + 8) = v21 * height;
  *(v17 + 9) = v12 * width;
  *(v17 + 10) = v11 * height;
  *(v17 + 11) = x;
  *(v17 + 12) = v21;
  *(v17 + 13) = v12;
  *(v17 + 14) = v11;
  *(v17 + 23) = a6;

  return v17;
}

+ (id)nutritionLabelWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 rows:(id)a6 canvasSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v10 = a5.size.height;
  v11 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a3;
  v16 = a6;
  v17 = [[AXMVisionFeature alloc] _init];
  v17[4] = 13;
  v18 = v17[2];
  v17[1] = 8;
  v17[2] = v16;
  v19 = v16;

  v20 = v17[15];
  v17[15] = v15;

  *(v17 + 136) = a4;
  *(v17 + 42) = width;
  *(v17 + 43) = height;
  *(v17 + 7) = x * width;
  *(v17 + 8) = y * height;
  *(v17 + 9) = (x + v11) * width - x * width;
  *(v17 + 10) = (y + v10) * height - y * height;
  *(v17 + 11) = x;
  *(v17 + 12) = y;
  *(v17 + 13) = v11;
  *(v17 + 14) = v10;

  return v17;
}

+ (id)envelopeWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 regions:(id)a6 canvasSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v10 = a5.size.height;
  v11 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a3;
  v16 = a6;
  v17 = [[AXMVisionFeature alloc] _init];
  v17[4] = 14;
  v18 = v17[2];
  v17[1] = 8;
  v17[2] = v16;
  v19 = v16;

  v20 = v17[16];
  v17[16] = v15;

  *(v17 + 136) = a4;
  *(v17 + 42) = width;
  *(v17 + 43) = height;
  *(v17 + 7) = x * width;
  *(v17 + 8) = y * height;
  *(v17 + 9) = (x + v11) * width - x * width;
  *(v17 + 10) = (y + v10) * height - y * height;
  *(v17 + 11) = x;
  *(v17 + 12) = y;
  *(v17 + 13) = v11;
  *(v17 + 14) = v10;

  return v17;
}

+ (id)envelopeRegion:(id)a3 boundingBox:(CGRect)a4 confidence:(double)a5 canvasSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v9 = a4.size.height;
  v10 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = [[AXMVisionFeature alloc] _init];
  v14[1] = 8;
  v14[4] = 15;
  v15 = v14[15];
  v14[15] = v13;

  *(v14 + 42) = width;
  *(v14 + 43) = height;
  *(v14 + 7) = x * width;
  *(v14 + 8) = y * height;
  *(v14 + 9) = (x + v10) * width - x * width;
  *(v14 + 10) = (y + v9) * height - y * height;
  *(v14 + 11) = x;
  *(v14 + 12) = y;
  *(v14 + 13) = v10;
  *(v14 + 14) = v9;
  *(v14 + 23) = a5;

  return v14;
}

+ (id)receiptWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 regions:(id)a6 canvasSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v10 = a5.size.height;
  v11 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a3;
  v16 = a6;
  v17 = [[AXMVisionFeature alloc] _init];
  v17[4] = 16;
  v18 = v17[2];
  v17[1] = 8;
  v17[2] = v16;
  v19 = v16;

  v20 = v17[15];
  v17[15] = v15;

  *(v17 + 136) = a4;
  *(v17 + 42) = width;
  *(v17 + 43) = height;
  *(v17 + 7) = x * width;
  *(v17 + 8) = y * height;
  *(v17 + 9) = (x + v11) * width - x * width;
  *(v17 + 10) = (y + v10) * height - y * height;
  *(v17 + 11) = x;
  *(v17 + 12) = y;
  *(v17 + 13) = v11;
  *(v17 + 14) = v10;

  return v17;
}

+ (id)tableWithText:(id)a3 isSpeakable:(BOOL)a4 boundingBox:(CGRect)a5 rows:(id)a6 columns:(id)a7 canvasSize:(CGSize)a8 isIncomplete:(BOOL)a9
{
  v9 = a9;
  height = a8.height;
  width = a8.width;
  v14 = a5.size.height;
  v15 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v19 = a3;
  v20 = a7;
  v21 = a6;
  v22 = [[AXMVisionFeature alloc] _init];
  v23 = v22;
  v22[1] = 8;
  v24 = 7;
  if (v9)
  {
    v24 = 8;
  }

  v22[4] = v24;
  v25 = [v21 arrayByAddingObjectsFromArray:v20];

  v26 = v23[2];
  v23[2] = v25;

  v27 = v23[15];
  v23[15] = v19;

  *(v23 + 136) = a4;
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

+ (id)tableRowWithText:(id)a3 boundingBox:(CGRect)a4 cells:(id)a5 canvasSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v9 = a4.size.height;
  v10 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = [[AXMVisionFeature alloc] _init];
  v15[4] = 9;
  v16 = v15[2];
  v15[1] = 8;
  v15[2] = v14;
  v17 = v14;

  v18 = v15[15];
  v15[15] = v13;

  *(v15 + 42) = width;
  *(v15 + 43) = height;
  *(v15 + 7) = x * width;
  *(v15 + 8) = y * height;
  *(v15 + 9) = (x + v10) * width - x * width;
  *(v15 + 10) = (y + v9) * height - y * height;
  *(v15 + 11) = x;
  *(v15 + 12) = y;
  *(v15 + 13) = v10;
  *(v15 + 14) = v9;

  return v15;
}

+ (id)tableColumnWithText:(id)a3 boundingBox:(CGRect)a4 cells:(id)a5 canvasSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v9 = a4.size.height;
  v10 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = [[AXMVisionFeature alloc] _init];
  v15[4] = 10;
  v16 = v15[2];
  v15[1] = 8;
  v15[2] = v14;
  v17 = v14;

  v18 = v15[15];
  v15[15] = v13;

  *(v15 + 42) = width;
  *(v15 + 43) = height;
  *(v15 + 7) = x * width;
  *(v15 + 8) = y * height;
  *(v15 + 9) = (x + v10) * width - x * width;
  *(v15 + 10) = (y + v9) * height - y * height;
  *(v15 + 11) = x;
  *(v15 + 12) = y;
  *(v15 + 13) = v10;
  *(v15 + 14) = v9;

  return v15;
}

+ (id)tableCellWithText:(id)a3 boundingBox:(CGRect)a4 confidence:(double)a5 recognizedTextFeatures:(id)a6 canvasSize:(CGSize)a7 isHeader:(BOOL)a8
{
  v8 = a8;
  height = a7.height;
  width = a7.width;
  v13 = a4.size.height;
  v14 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a3;
  v18 = a6;
  v19 = [[AXMVisionFeature alloc] _init];
  v20 = v19;
  v19[1] = 8;
  v21 = 11;
  if (v8)
  {
    v21 = 12;
  }

  v19[4] = v21;
  v22 = v19[15];
  v19[15] = v17;
  v23 = v17;

  v20[42] = width;
  v20[43] = height;
  v24 = *(v20 + 18);
  *(v20 + 18) = v18;

  v25 = 1.0 - y - v13;
  v20[7] = x * width;
  v20[8] = v25 * height;
  v20[9] = v14 * width;
  v20[10] = v13 * height;
  v20[11] = x;
  v20[12] = v25;
  v20[13] = v14;
  v20[14] = v13;
  v20[23] = a5;

  return v20;
}

+ (AXMVisionFeature)featureWithIconClass:(id)a3 confidence:(double)a4
{
  v5 = a3;
  v6 = [[AXMVisionFeature alloc] _init];
  *(v6 + 1) = 20;
  v7 = *(v6 + 15);
  *(v6 + 15) = v5;

  v9 = AXMRectNotApplicable;
  v8 = *&qword_1EB5DCF60;
  *(v6 + 21) = *&qword_1EB5DCF60;
  *(v6 + 56) = v9;
  *(v6 + 72) = v8;
  *(v6 + 88) = v9;
  *(v6 + 104) = v8;
  *(v6 + 23) = a4;

  return v6;
}

+ (AXMVisionFeature)featureWithMediaLegibility:(id)a3
{
  v3 = a3;
  v4 = [[AXMVisionFeature alloc] _init];
  *(v4 + 1) = 12;
  v5 = [v3 string];

  v6 = *(v4 + 15);
  *(v4 + 15) = v5;

  *(v4 + 23) = AXMConfidenceNotApplicable;
  v8 = AXMRectNotApplicable;
  v7 = *&qword_1EB5DCF60;
  *(v4 + 21) = *&qword_1EB5DCF60;
  *(v4 + 56) = v8;
  *(v4 + 72) = v7;
  *(v4 + 88) = v8;
  *(v4 + 104) = v7;

  return v4;
}

+ (AXMVisionFeature)featureWithColorInfo:(id)a3 canvasSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = [[AXMVisionFeature alloc] _init];
  *(v7 + 1) = 4;
  *(v7 + 23) = AXMConfidenceNotApplicable;
  *(v7 + 42) = width;
  *(v7 + 43) = height;
  v8 = AXMRectNotApplicable;
  v9 = *&qword_1EB5DCF60;
  *(v7 + 56) = AXMRectNotApplicable;
  *(v7 + 72) = v9;
  *(v7 + 88) = v8;
  *(v7 + 104) = v9;
  v10 = *(v7 + 19);
  *(v7 + 19) = v6;

  return v7;
}

+ (AXMVisionFeature)featureWithAssetMetadata:(id)a3
{
  v3 = a3;
  v4 = [[AXMVisionFeature alloc] _init];
  *(v4 + 1) = 13;
  *(v4 + 23) = AXMConfidenceNotApplicable;
  v6 = AXMRectNotApplicable;
  v5 = *&qword_1EB5DCF60;
  *(v4 + 21) = *&qword_1EB5DCF60;
  *(v4 + 56) = v6;
  *(v4 + 72) = v5;
  *(v4 + 88) = v6;
  *(v4 + 104) = v5;
  v7 = *(v4 + 20);
  *(v4 + 20) = v3;

  return v4;
}

+ (AXMVisionFeature)featureWithDeviceMotion:(id)a3 orientation:(int64_t)a4
{
  v5 = a3;
  v6 = [[AXMVisionFeature alloc] _init];
  *(v6 + 1) = 17;
  *(v6 + 23) = AXMConfidenceNotApplicable;
  v8 = AXMRectNotApplicable;
  v7 = *&qword_1EB5DCF60;
  *(v6 + 21) = *&qword_1EB5DCF60;
  *(v6 + 56) = v8;
  *(v6 + 72) = v7;
  *(v6 + 88) = v8;
  *(v6 + 104) = v7;
  v9 = *(v6 + 60);
  *(v6 + 60) = v5;

  *(v6 + 61) = a4;

  return v6;
}

+ (AXMVisionFeature)featureWithCameraType:(int64_t)a3
{
  v4 = [[AXMVisionFeature alloc] _init];
  *(v4 + 1) = 18;
  *(v4 + 23) = AXMConfidenceNotApplicable;
  v6 = AXMRectNotApplicable;
  v5 = *&qword_1EB5DCF60;
  *(v4 + 21) = *&qword_1EB5DCF60;
  *(v4 + 56) = v6;
  *(v4 + 72) = v5;
  *(v4 + 88) = v6;
  *(v4 + 104) = v5;
  *(v4 + 62) = a3;

  return v4;
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

+ (CGRect)_aspectFaceRectFromSquareFaceRect:(CGRect)a3 sizeInPixels:(CGSize)a4
{
  v4 = a3.size.height * a4.height;
  v5 = v4 * 1.6 * 0.8;
  v6 = (a3.origin.x * a4.width + (v5 - a3.size.width * a4.width) * -0.5) / a4.width;
  v7 = (a3.origin.y * a4.height - (v4 * 1.6 - v4) / 1.6) / a4.height;
  v8 = v5 / a4.width;
  v9 = v4 * 1.6 / a4.height;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (AXMVisionFeature)initWithCoder:(id)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AXMVisionFeature *)self _init];
  if (v5)
  {
    *(v5 + 1) = [v4 decodeIntegerForKey:AXMVisionFeatureCodingKeyFeatureType];
    [v4 axmDecodeSizeForKey:AXMVisionFeatureCodingKeyCanvasSize];
    *(v5 + 42) = v6;
    *(v5 + 43) = v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyBarcodeType];
    v9 = *(v5 + 3);
    *(v5 + 3) = v8;

    *(v5 + 4) = [v4 decodeIntegerForKey:AXMVisionFeatureCodingKeyOCRFeatureType];
    v10 = AXMSecureCodingClasses();
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"effectiveTextDetectionLocales"];
    v12 = *(v5 + 5);
    *(v5 + 5) = v11;

    [v4 axmDecodeRectForKey:AXMVisionFeatureCodingKeyFrame];
    *(v5 + 7) = v13;
    *(v5 + 8) = v14;
    *(v5 + 9) = v15;
    *(v5 + 10) = v16;
    [v4 axmDecodeRectForKey:AXMVisionFeatureCodingKeyNormalizedFrame];
    *(v5 + 11) = v17;
    *(v5 + 12) = v18;
    *(v5 + 13) = v19;
    *(v5 + 14) = v20;
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyValue];
    v22 = *(v5 + 15);
    *(v5 + 15) = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"classificationLocalizedValue"];
    v24 = *(v5 + 46);
    *(v5 + 46) = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"classificationLabel"];
    v26 = *(v5 + 45);
    *(v5 + 45) = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"caption"];
    v28 = *(v5 + 47);
    *(v5 + 47) = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translatedCaption"];
    v30 = *(v5 + 48);
    *(v5 + 48) = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyColorInfo];
    v32 = *(v5 + 19);
    *(v5 + 19) = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyAssetMetadata];
    v34 = *(v5 + 20);
    *(v5 + 20) = v33;

    [v4 decodeFloatForKey:AXMVisionFeatureCodingKeyBlur];
    *(v5 + 21) = v35;
    [v4 decodeFloatForKey:AXMVisionFeatureCodingKeyBrightness];
    *(v5 + 22) = v36;
    [v4 decodeFloatForKey:AXMVisionFeatureCodingKeyConfidence];
    *(v5 + 23) = v37;
    v5[192] = [v4 decodeBoolForKey:AXMVisionFeatureCodingKeyIsLowConfidence];
    [v4 decodeFloatForKey:AXMVisionFeatureCodingKeyHorizonAngle];
    *(v5 + 62) = v38;
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyFaceDetectionResult];
    v40 = *(v5 + 32);
    *(v5 + 32) = v39;

    *(v5 + 33) = [v4 decodeIntegerForKey:AXMVisionFeatureCodingKeyFaceID];
    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyModelID];
    v42 = *(v5 + 44);
    *(v5 + 44) = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyAesthetics];
    v44 = *(v5 + 59);
    *(v5 + 59) = v43;

    v45 = AXMSecureCodingClasses();
    v46 = [v4 decodeObjectOfClasses:v45 forKey:AXMVisionFeatureCodingKeyUserContext];
    v47 = *(v5 + 63);
    *(v5 + 63) = v46;

    *(v5 + 58) = [v4 decodeIntegerForKey:AXMVisionFeatureCodingKeyUIClass];
    v5[458] = [v4 decodeBoolForKey:AXMVisionFeatureCodingKeyCaptionMayContainSensitiveContent];
    v48 = AXMSecureCodingClasses();
    v49 = [v4 decodeObjectOfClasses:v48 forKey:AXMVisionFeatureCodingKeyDetectorSceneClassIds];
    v50 = *(v5 + 50);
    *(v5 + 50) = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeySceneClassId];
    v52 = *(v5 + 51);
    *(v5 + 51) = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subfeatures"];
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
        v59 = *(v5 + 2);
        *(v5 + 2) = v60;
      }
    }

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyRecognizedFeatures];
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
        v67 = *(v5 + 18);
        *(v5 + 18) = v68;
      }
    }

    v86 = 0u;
    v87 = 0u;
    *buf = 0u;
    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyHorizonTransform];
    [v69 getBytes:buf length:48];
    v70 = v86;
    *(v5 + 200) = *buf;
    *(v5 + 216) = v70;
    *(v5 + 232) = v87;
    *(v5 + 61) = [v4 decodeIntegerForKey:AXMVisionFeatureCodingKeyDeviceOrientation];
    *(v5 + 62) = [v4 decodeIntegerForKey:AXMVisionFeatureCodingKeyCameraType];
    v71 = AXMSecureCodingClasses();
    v72 = [v4 decodeObjectOfClasses:v71 forKey:AXMVisionFeatureCodingKeyFeatureGates];
    v73 = *(v5 + 49);
    *(v5 + 49) = v72;

    v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMMediaAnalysisFeatureCodingKeyImageCaption];
    v75 = *(v5 + 52);
    *(v5 + 52) = v74;

    [v4 decodeFloatForKey:AXMMediaAnalysisFeatureCodingKeyImageCaptionConfidence];
    *(v5 + 53) = v76;
    v77 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMMediaAnalysisFeatureCodingKeyTranslatedImageCaption];
    v78 = *(v5 + 54);
    *(v5 + 54) = v77;

    v79 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMMediaAnalysisFeatureCodingKeyFaceDetectionResult];
    v80 = *(v5 + 55);
    *(v5 + 55) = v79;

    *(v5 + 56) = [v4 decodeIntegerForKey:AXMMediaAnalysisFeatureCodingKeyFaceID];
    v81 = v5;
  }

  return v5;
}

- (void)_serializeWithCoder:(id)a3 orDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  if (v6)
  {
    confidence = self->_confidence;
    *&confidence = confidence;
    [v6 encodeFloat:AXMVisionFeatureCodingKeyConfidence forKey:confidence];
    [v6 encodeBool:self->_isLowConfidence forKey:AXMVisionFeatureCodingKeyIsLowConfidence];
    [v6 encodeInteger:self->_featureType forKey:AXMVisionFeatureCodingKeyFeatureType];
    [v6 axmEncodeRect:AXMVisionFeatureCodingKeyFrame forKey:{self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height}];
    [v6 axmEncodeRect:AXMVisionFeatureCodingKeyNormalizedFrame forKey:{self->_normalizedFrame.origin.x, self->_normalizedFrame.origin.y, self->_normalizedFrame.size.width, self->_normalizedFrame.size.height}];
    [v6 axmEncodeSize:AXMVisionFeatureCodingKeyCanvasSize forKey:{self->_canvasSize.width, self->_canvasSize.height}];
    [v6 encodeObject:self->_value forKey:AXMVisionFeatureCodingKeyValue];
    v19 = v9;
    [v6 encodeObject:v9 forKey:@"subfeatures"];
    v20 = v60;
    [v6 encodeObject:v60 forKey:AXMVisionFeatureCodingKeyRecognizedFeatures];
    v21 = [(AXMVisionFeature *)self userContext];
    [v6 encodeObject:v21 forKey:AXMVisionFeatureCodingKeyUserContext];

    [v6 encodeInteger:self->_uiClass forKey:AXMVisionFeatureCodingKeyUIClass];
    [v6 encodeObject:self->_featureGates forKey:AXMVisionFeatureCodingKeyFeatureGates];
    [v6 encodeBool:self->_captionMayContainSensitiveContent forKey:AXMVisionFeatureCodingKeyCaptionMayContainSensitiveContent];
    [v6 encodeObject:self->_detectorSceneClassIds forKey:AXMVisionFeatureCodingKeyDetectorSceneClassIds];
    [v6 encodeObject:self->_sceneClassId forKey:AXMVisionFeatureCodingKeySceneClassId];
  }

  else
  {
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
    [v7 setObject:v22 forKeyedSubscript:AXMVisionFeatureCodingKeyConfidence];

    v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLowConfidence];
    [v7 setObject:v23 forKeyedSubscript:AXMVisionFeatureCodingKeyIsLowConfidence];

    v24 = [AXMVisionFeature nameForFeatureType:self->_featureType];
    [v7 setObject:v24 forKeyedSubscript:AXMVisionFeatureCodingKeyFeatureType];

    v25 = AXMStringFromCGRect(self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height);
    [v7 setObject:v25 forKeyedSubscript:AXMVisionFeatureCodingKeyFrame];

    v26 = AXMStringFromCGRect(self->_normalizedFrame.origin.x, self->_normalizedFrame.origin.y, self->_normalizedFrame.size.width, self->_normalizedFrame.size.height);
    [v7 setObject:v26 forKeyedSubscript:AXMVisionFeatureCodingKeyNormalizedFrame];

    v27 = AXMStringFromCGSize(self->_canvasSize.width, self->_canvasSize.height);
    [v7 setObject:v27 forKeyedSubscript:AXMVisionFeatureCodingKeyCanvasSize];

    [v7 setObject:self->_value forKeyedSubscript:AXMVisionFeatureCodingKeyValue];
    [v7 setObject:self->_subfeatures forKeyedSubscript:@"subfeatures"];
    v28 = [(AXMVisionFeature *)self userContext];
    [v7 setObject:v28 forKeyedSubscript:AXMVisionFeatureCodingKeyUserContext];

    v29 = [MEMORY[0x1E696AD98] numberWithInteger:self->_uiClass];
    [v7 setObject:v29 forKeyedSubscript:AXMVisionFeatureCodingKeyUIClass];

    [v7 setObject:self->_featureGates forKeyedSubscript:AXMVisionFeatureCodingKeyFeatureGates];
    v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_captionMayContainSensitiveContent];
    [v7 setObject:v30 forKeyedSubscript:AXMVisionFeatureCodingKeyCaptionMayContainSensitiveContent];

    [v7 setObject:self->_detectorSceneClassIds forKeyedSubscript:AXMVisionFeatureCodingKeyDetectorSceneClassIds];
    [v7 setObject:self->_sceneClassId forKeyedSubscript:AXMVisionFeatureCodingKeySceneClassId];
    v19 = v9;
    v20 = v60;
  }

  switch([(AXMVisionFeature *)self featureType])
  {
    case 1uLL:
      if (v6)
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
      if (!v6)
      {
        v55 = [MEMORY[0x1E696AD98] numberWithDouble:self->_blur];
        v56 = AXMVisionFeatureCodingKeyBlur;
        goto LABEL_71;
      }

      brightness = self->_blur;
      *&brightness = brightness;
      v50 = AXMVisionFeatureCodingKeyBlur;
LABEL_47:
      [v6 encodeFloat:v50 forKey:brightness];
      goto LABEL_72;
    case 3uLL:
      v44 = *&self->_horizonTransform.c;
      v62[0] = *&self->_horizonTransform.a;
      v62[1] = v44;
      v62[2] = *&self->_horizonTransform.tx;
      v45 = [MEMORY[0x1E695DEF0] dataWithBytes:v62 length:48];
      if (v6)
      {
        [v6 encodeObject:v45 forKey:AXMVisionFeatureCodingKeyHorizonTransform];
        *&v46 = self->_horizonAngle;
        [v6 encodeFloat:AXMVisionFeatureCodingKeyHorizonAngle forKey:v46];
      }

      else
      {
        [v7 setObject:v45 forKeyedSubscript:AXMVisionFeatureCodingKeyHorizonTransform];
        *&v57 = self->_horizonAngle;
        v58 = [MEMORY[0x1E696AD98] numberWithFloat:v57];
        [v7 setObject:v58 forKeyedSubscript:AXMVisionFeatureCodingKeyHorizonAngle];
      }

      goto LABEL_72;
    case 4uLL:
      if (v6)
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
      if (v6)
      {
        [v6 encodeObject:faceDetectionResult forKey:AXMVisionFeatureCodingKeyFaceDetectionResult];
        faceId = self->_faceId;
        v43 = AXMVisionFeatureCodingKeyFaceID;
        goto LABEL_38;
      }

      [v7 setObject:faceDetectionResult forKeyedSubscript:AXMVisionFeatureCodingKeyFaceDetectionResult];
      v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_faceId];
      v56 = AXMVisionFeatureCodingKeyFaceID;
      goto LABEL_71;
    case 8uLL:
      ocrFeatureType = self->_ocrFeatureType;
      if (v6)
      {
        [v6 encodeInteger:ocrFeatureType forKey:AXMVisionFeatureCodingKeyOCRFeatureType];
        colorInfo = self->_effectiveTextDetectionLocales;
        v33 = @"effectiveTextDetectionLocales";
        goto LABEL_19;
      }

      v59 = [(AXMVisionFeature *)self _nameForOCRFeatureType:ocrFeatureType];
      [v7 setObject:v59 forKeyedSubscript:AXMVisionFeatureCodingKeyOCRFeatureType];

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
      if (v6)
      {
        [v6 encodeObject:classificationLocalizedValue forKey:@"classificationLocalizedValue"];
        colorInfo = self->_classificationLabel;
        v33 = @"classificationLabel";
        goto LABEL_19;
      }

      [v7 setObject:classificationLocalizedValue forKeyedSubscript:@"classificationLocalizedValue"];
      colorInfo = self->_classificationLabel;
      v33 = @"classificationLabel";
      goto LABEL_21;
    case 11uLL:
      colorInfo = self->_barcodeType;
      v33 = AXMVisionFeatureCodingKeyBarcodeType;
      if (!v6)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    case 13uLL:
      if (v6)
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
      if (!v6)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    case 16uLL:
      if (!v6)
      {
        goto LABEL_75;
      }

      goto LABEL_58;
    case 17uLL:
      v34 = MEMORY[0x1E696ACC8];
      v35 = [(AXMVisionFeature *)self deviceMotion];
      v61 = 0;
      v36 = [v34 archivedDataWithRootObject:v35 requiringSecureCoding:1 error:&v61];
      v37 = v61;

      if (v37)
      {
        v38 = AXMediaLogCommon();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [AXMVisionFeature _serializeWithCoder:orDictionary:];
        }
      }

      if (v6)
      {
        [v6 encodeObject:v36 forKey:AXMVisionFeatureCodingKeyDeviceMotion];
        [v6 encodeInteger:self->_deviceOrientation forKey:AXMVisionFeatureCodingKeyDeviceOrientation];
        [v6 encodeInteger:self->_cameraType forKey:AXMVisionFeatureCodingKeyCameraType];
      }

      else
      {
        [v7 setObject:v36 forKeyedSubscript:AXMVisionFeatureCodingKeyDeviceMotion];
        v52 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceOrientation];
        [v7 setObject:v52 forKeyedSubscript:AXMVisionFeatureCodingKeyDeviceOrientation];

        v53 = [MEMORY[0x1E696AD98] numberWithInteger:self->_cameraType];
        [v7 setObject:v53 forKeyedSubscript:AXMVisionFeatureCodingKeyCameraType];
      }

      goto LABEL_72;
    case 18uLL:
      if (v6)
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
      if (v6)
      {
        [v6 encodeObject:aestheticsResult forKey:AXMVisionFeatureCodingKeyAesthetics];
LABEL_58:
        [v6 encodeObject:self->_caption forKey:@"caption"];
        colorInfo = self->_translatedCaption;
        v33 = @"translatedCaption";
        goto LABEL_19;
      }

      [v7 setObject:aestheticsResult forKeyedSubscript:AXMVisionFeatureCodingKeyAesthetics];
LABEL_75:
      [v7 setObject:self->_caption forKeyedSubscript:@"caption"];
      colorInfo = self->_translatedCaption;
      v33 = @"translatedCaption";
      goto LABEL_21;
    case 25uLL:
      mediaAnalysisImageCaption = self->_mediaAnalysisImageCaption;
      if (v6)
      {
        [v6 encodeObject:mediaAnalysisImageCaption forKey:AXMMediaAnalysisFeatureCodingKeyImageCaption];
        mediaAnalysisImageCaptionConfidence = self->_mediaAnalysisImageCaptionConfidence;
        *&mediaAnalysisImageCaptionConfidence = mediaAnalysisImageCaptionConfidence;
        [v6 encodeFloat:AXMMediaAnalysisFeatureCodingKeyImageCaptionConfidence forKey:mediaAnalysisImageCaptionConfidence];
        colorInfo = self->_mediaAnalysisTranslatedImageCaption;
        v33 = AXMMediaAnalysisFeatureCodingKeyTranslatedImageCaption;
LABEL_19:
        [v6 encodeObject:colorInfo forKey:v33];
      }

      else
      {
        [v7 setObject:mediaAnalysisImageCaption forKeyedSubscript:AXMMediaAnalysisFeatureCodingKeyImageCaption];
        v54 = [MEMORY[0x1E696AD98] numberWithDouble:self->_mediaAnalysisImageCaptionConfidence];
        [v7 setObject:v54 forKeyedSubscript:AXMMediaAnalysisFeatureCodingKeyImageCaptionConfidence];

        colorInfo = self->_mediaAnalysisTranslatedImageCaption;
        v33 = AXMMediaAnalysisFeatureCodingKeyTranslatedImageCaption;
LABEL_21:
        [v7 setObject:colorInfo forKeyedSubscript:v33];
      }

LABEL_72:

      return;
    case 31uLL:
      mediaAnalysisFaceDetectionResult = self->_mediaAnalysisFaceDetectionResult;
      if (v6)
      {
        [v6 encodeObject:mediaAnalysisFaceDetectionResult forKey:AXMMediaAnalysisFeatureCodingKeyFaceDetectionResult];
        faceId = self->_mediaAnalysisFaceId;
        v43 = AXMMediaAnalysisFeatureCodingKeyFaceID;
LABEL_38:
        [v6 encodeInteger:faceId forKey:v43];
      }

      else
      {
        [v7 setObject:mediaAnalysisFaceDetectionResult forKeyedSubscript:AXMMediaAnalysisFeatureCodingKeyFaceDetectionResult];
        v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mediaAnalysisFaceId];
        v56 = AXMMediaAnalysisFeatureCodingKeyFaceID;
LABEL_71:
        [v7 setObject:v55 forKeyedSubscript:v56];
      }

      goto LABEL_72;
    default:
      goto LABEL_72;
  }
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [(AXMVisionFeature *)self _serializeWithCoder:0 orDictionary:v3];

  return v3;
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

+ (id)nameForLocation:(int64_t)a3
{
  if ((a3 - 1) > 0x10)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7A1E658 + a3 - 1);
  }
}

+ (id)localizedStringForLocation:(int64_t)a3 isSubjectImplicit:(BOOL)a4
{
  v4 = a3 - 1;
  if ((a3 - 1) > 0x10)
  {
    v7 = 0;
  }

  else
  {
    v5 = *(&off_1E7A1E6E0 + v4);
    if (a4)
    {
      v5 = [(__CFString *)*(&off_1E7A1E6E0 + v4) stringByAppendingString:@".implicit-subject"];
    }

    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v7 = [v6 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];
  }

  return v7;
}

- (int64_t)locationUsingThirds:(BOOL)a3 withFlippedYAxis:(BOOL)a4
{
  v4 = a3;
  [(AXMVisionFeature *)self normalizedFrame];

  return [AXMVisionFeature locationForNormalizedFrame:0 previousLocation:v4 usingThirds:?];
}

+ (int64_t)locationForNormalizedFrame:(CGRect)a3 previousLocation:(int64_t)a4 usingThirds:(BOOL)a5
{
  result = 0;
  if (a3.size.width <= 0.0)
  {
    return result;
  }

  height = a3.size.height;
  if (a3.size.height <= 0.0)
  {
    return result;
  }

  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = 0;
  v11 = 0.0;
  v12 = 1.0;
  v13 = 1.0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  *&v17 = 0.0;
  switch(a4)
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
  if (a5)
  {
    v18 = 0.333333333;
  }

  else
  {
    v18 = 0.4;
  }

  if (a5)
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
  MidX = CGRectGetMidX(a3);
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

- (id)_nameForOCRFeatureType:(int64_t)a3
{
  if (a3 > 0x10)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7A1E768 + a3);
  }
}

+ (id)nameForUIClass:(int64_t)a3
{
  if ((a3 - 1) >= 0x13)
  {
    v5 = [a1 nameForUIClass:{19, v3}];
  }

  else
  {
    v5 = *(&off_1E7A1E7F0 + a3 - 1);
  }

  return v5;
}

+ (int64_t)uiClassForName:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AXMVisionFeature_uiClassForName___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (uiClassForName__onceToken != -1)
  {
    dispatch_once(&uiClassForName__onceToken, block);
  }

  v5 = [uiClassForName___reverseLookup objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = 19;
  }

  return v7;
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

+ (id)nameForFeatureType:(unint64_t)a3
{
  if (a3 > 0x1F)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7A1E888 + a3);
  }
}

+ (id)nameForOCRType:(int64_t)a3
{
  if (a3 > 0x10)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7A1E988 + a3);
  }
}

+ (void)_append:(id)a3 toList:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [v6 addObject:v5];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v5 subfeatures];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [AXMVisionFeature _append:*(*(&v12 + 1) + 8 * v11++) toList:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (id)flattenedFeatureList:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
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

        [AXMVisionFeature _append:*(*(&v11 + 1) + 8 * i) toList:v4, v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (CGRect)boundingBoxForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
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
    obj = v5->_recognizedTextFeatures;
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
            v16 = v5;
            v17 = [(AXMVisionFeature *)v5 value];
            v18 = [v17 substringWithRange:{location, length}];
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

            v21 = [v14 text];
            v39 = 0;
            v22 = [v21 boundingBoxForRange:location error:{length, &v39}];
            v23 = v39;

            if (v23)
            {
              v24 = AXMediaLogCommon();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v36 = [v14 text];
                v29 = [v36 string];
                v51.location = [v14 textRange];
                v30 = NSStringFromRange(v51);
                *buf = v35;
                v45 = v29;
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

            v5 = v16;
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

- (void)addFeatureGate:(id)a3 userInfo:(id)a4
{
  v11 = a3;
  v6 = a4;
  featureGates = self->_featureGates;
  if (!featureGates)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_featureGates;
    self->_featureGates = v8;

    featureGates = self->_featureGates;
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  [(NSMutableDictionary *)featureGates setObject:v10 forKeyedSubscript:v11];
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
      v59 = [(AXMVisionFeature *)self faceDetectionResult];
      v53 = [v59 faceId];
      v57 = [(AXMVisionFeature *)self faceDetectionResult];
      v52 = [v57 name];
      v56 = [(AXMVisionFeature *)self faceDetectionResult];
      v61 = [v56 landmarks];
      v55 = [(AXMVisionFeature *)self faceDetectionResult];
      v49 = [v55 landmarks3d];
      v54 = [(AXMVisionFeature *)self faceDetectionResult];
      v47 = [v54 expressionsAndConfidence];
      v50 = [(AXMVisionFeature *)self faceDetectionResult];
      v51 = [(AXMVisionFeature *)self faceDetectionResult];
      v6 = [v50 descriptionForExpression:{objc_msgSend(v51, "likelyExpression")}];
      v48 = [(AXMVisionFeature *)self faceDetectionResult];
      v7 = [(AXMVisionFeature *)self faceDetectionResult];
      [v48 confidenceForExpression:{objc_msgSend(v7, "likelyExpression")}];
      v9 = v8;
      v10 = [(AXMVisionFeature *)self faceDetectionResult];
      v11 = [v10 attributes];
      v12 = [v11 accessibilityLabelForAttributes];
      v13 = [AXMVisionFeature nameForLocation:[(AXMVisionFeature *)self locationUsingThirds:0 withFlippedYAxis:0]];
      [v5 appendFormat:@"face id: %lu \nName: %@ \n[faceLandmarks: %@ faceLandmarks3d: %@ faceExpressions: %@ likelyExpression: %@ likelyConfidence: %f] \nFace Attributes : %@\nFace location: %@\n", v53, v52, v61, v49, v47, v6, v9, v12, v13];

      break;
    case 8uLL:
      v14 = [(AXMVisionFeature *)self value];
      v27 = [(AXMVisionFeature *)self _nameForOCRFeatureType:[(AXMVisionFeature *)self ocrFeatureType]];
      goto LABEL_25;
    case 9uLL:
    case 0xAuLL:
      v14 = [(AXMVisionFeature *)self classificationLabel];
      v15 = [(AXMVisionFeature *)self classificationLocalizedValue];
      v16 = [(AXMVisionFeature *)self sceneClassId];
      v17 = [(AXMVisionFeature *)self detectorSceneClassIds];
      [v5 appendFormat:@"classificationLabel:'%@' localizedName:'%@' sceneClassID:'%@' detectorSceneClassIds:'%@' ", v14, v15, v16, v17];

      goto LABEL_26;
    case 0xBuLL:
      v14 = [(AXMVisionFeature *)self value];
      v27 = [(AXMVisionFeature *)self barcodeType];
LABEL_25:
      v15 = v27;
      [v5 appendFormat:@"value:'%@' type:%@ ", v14, v27];
      goto LABEL_26;
    case 0xCuLL:
      v14 = [(AXMVisionFeature *)self value];
      [v5 appendFormat:@"value:'%@' ", v14, v46];
      goto LABEL_29;
    case 0xDuLL:
      v14 = [(AXMVisionFeature *)self assetMetadata];
      [v5 appendFormat:@"asset info [%@] ", v14, v46];
      goto LABEL_29;
    case 0xFuLL:
      modelID = self->_modelID;
      v14 = [(AXMVisionFeature *)self classificationLabel];
      [v5 appendFormat:@"ModelID: '%@' classificationLabel: '%@' ", modelID, v14];
      goto LABEL_29;
    case 0x10uLL:
      v14 = [(AXMVisionFeature *)self caption];
      v15 = [(AXMVisionFeature *)self translatedCaption];
      [v5 appendFormat:@"caption: '%@' translated: '%@' ", v14, v15];
      goto LABEL_26;
    case 0x11uLL:
      v14 = [(AXMVisionFeature *)self deviceMotion];
      [v5 appendFormat:@"deviceMotion: %@", v14, v46];
      goto LABEL_29;
    case 0x12uLL:
      v30 = [(AXMVisionFeature *)self cameraType];
      if (v30 > 2)
      {
        v31 = 0;
      }

      else
      {
        v31 = *(&off_1E7A1EA10 + v30);
      }

      [v5 appendFormat:@"camera: %@", v31];
      break;
    case 0x13uLL:
      v14 = [AXMVisionFeature nameForLocation:[(AXMVisionFeature *)self locationUsingThirds:0 withFlippedYAxis:0]];
      [v5 appendFormat:@"location : %@", v14, v46];
      goto LABEL_29;
    case 0x16uLL:
      v32 = [AXMVisionFeature nameForUIClass:[(AXMVisionFeature *)self uiClass]];
      [v5 appendFormat:@"uiClass:%@ ", v32];

      v33 = [(AXMVisionFeature *)self value];
      v14 = v33;
      if (v33)
      {
        [v5 appendFormat:@"value:%@ ", v33, v46];
      }

      goto LABEL_29;
    case 0x17uLL:
    case 0x18uLL:
      v14 = [(AXMVisionFeature *)self classificationLabel];
      [v5 appendFormat:@"classificationLabel:'%@' ", v14, v46];
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
      v14 = [(AXMVisionFeature *)self classificationLabel];
      v15 = [(AXMVisionFeature *)self classificationLocalizedValue];
      [v5 appendFormat:@"classificationLabel:'%@' localizedName:'%@'", v14, v15];
LABEL_26:

      goto LABEL_29;
    case 0x1CuLL:
      v14 = [AXMVisionFeature nameForLocation:[(AXMVisionFeature *)self locationUsingThirds:0 withFlippedYAxis:0]];
      [v5 appendFormat:@"media analysis location : %@", v14, v46];
      goto LABEL_29;
    case 0x1DuLL:
    case 0x1EuLL:
      v14 = [(AXMVisionFeature *)self classificationLabel];
      [v5 appendFormat:@"classificationLabel:'%@'", v14, v46];
      goto LABEL_29;
    case 0x1FuLL:
      v14 = [(AXMVisionFeature *)self mediaAnalysisFaceDetectionResult];
      v62 = [v14 faceId];
      v60 = [v14 name];
      v58 = [v14 landmarks];
      v18 = [v14 landmarks3d];
      v19 = [v14 expressionsAndConfidence];
      v20 = [v14 descriptionForExpression:{objc_msgSend(v14, "likelyExpression")}];
      [v14 confidenceForExpression:{objc_msgSend(v14, "likelyExpression")}];
      v22 = v21;
      v23 = [v14 attributes];
      v24 = [v23 accessibilityLabelForAttributes];
      v25 = [AXMVisionFeature nameForLocation:[(AXMVisionFeature *)self locationUsingThirds:0 withFlippedYAxis:0]];
      [v5 appendFormat:@"face id: %lu \nName: %@ \n[faceLandmarks: %@ faceLandmarks3d: %@ faceExpressions: %@ likelyExpression: %@ likelyConfidence: %f] \nFace Attributes : %@\nFace location: %@\n", v62, v60, v58, v18, v19, v20, v22, v24, v25];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXMVisionFeature *)self isEqualToAXMVisionFeature:v4];
  }

  return v5;
}

- (BOOL)isEqualToAXMVisionFeature:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_featureType == *(v4 + 1) && CGRectEqualToRect(self->_frame, *(v4 + 56)))
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
        v6 = [(AXMVisionFeature *)self value];
        v7 = [v5 value];
        LOBYTE(self) = [v6 isEqualToString:v7];

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
        v10 = [v5 classificationLabel];
        goto LABEL_9;
      case 0xDuLL:
        assetMetadata = self->_assetMetadata;
        v6 = [v5 assetMetadata];
        v11 = [(AXMVisionFeatureAssetMetadata *)assetMetadata isEqual:v6];
        goto LABEL_10;
      case 0x10uLL:
        classificationLabel = self->_caption;
        v10 = [v5 caption];
        goto LABEL_9;
      case 0x19uLL:
        classificationLabel = self->_mediaAnalysisImageCaption;
        v10 = [v5 mediaAnalysisImageCaption];
LABEL_9:
        v6 = v10;
        v11 = [(NSString *)classificationLabel isEqualToString:v10];
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

+ (id)filterFeatureList:(id)a3 basedOnSceneClassIdsForFeature:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DFA8];
  v7 = a3;
  v8 = [v6 set];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__AXMVisionFeature_filterFeatureList_basedOnSceneClassIdsForFeature___block_invoke;
  v14[3] = &unk_1E7A1E638;
  v15 = v5;
  v9 = v8;
  v16 = v9;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v14];

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

+ (id)unitTestingTeatureWithType:(unint64_t)a3 axElementRect:(CGRect)a4 confidence:(double)a5 uiClass:(int64_t)a6 label:(id)a7 canvasSize:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  v12 = a4.size.height;
  v13 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a7;
  v18 = [[AXMVisionFeature alloc] _init];
  v18[1] = a3;
  *(v18 + 42) = width;
  *(v18 + 43) = height;
  *(v18 + 7) = x;
  *(v18 + 8) = y;
  *(v18 + 9) = v13;
  *(v18 + 10) = v12;
  v19 = v18[15];
  v18[15] = v17;

  *(v18 + 23) = a5;
  v18[58] = a6;

  return v18;
}

+ (id)unitTestingFeatureWithType:(unint64_t)a3 canvasSize:(CGSize)a4 frame:(CGRect)a5 value:(id)a6 valueIsSpeakable:(BOOL)a7 barcodeType:(id)a8 ocrFeatureType:(int64_t)a9 subFeatures:(id)a10
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v18 = a4.height;
  v19 = a4.width;
  v21 = a6;
  v22 = a8;
  v23 = a10;
  v24 = [[AXMVisionFeature alloc] _init];
  v24[1] = a3;
  *(v24 + 42) = v19;
  *(v24 + 43) = v18;
  *(v24 + 7) = x;
  *(v24 + 8) = y;
  *(v24 + 9) = width;
  *(v24 + 10) = height;
  v25 = v24[15];
  v24[15] = v21;
  v26 = v21;

  *(v24 + 136) = a7;
  v27 = v24[3];
  v24[3] = v22;
  v28 = v22;

  v24[4] = a9;
  v29 = v24[2];
  v24[2] = v23;

  return v24;
}

+ (id)unitTestingFeature
{
  v2 = [[AXMVisionFeature alloc] _init];
  v3 = vdupq_n_s64(0x406F400000000000uLL);
  *(v2 + 1) = 0;
  *(v2 + 21) = v3;
  *(v2 + 7) = 0;
  *(v2 + 8) = 0;
  *(v2 + 72) = v3;

  return v2;
}

+ (id)unitTestingProminentObjectFeature
{
  v2 = [[AXMVisionFeature alloc] _init];
  *(v2 + 1) = 19;
  *(v2 + 21) = vdupq_n_s64(0x406F400000000000uLL);
  v3 = vdupq_n_s64(0x3FA47AE147AE147BuLL);
  *(v2 + 56) = v3;
  v4 = vdupq_n_s64(0x3FBEB851EB851EB8uLL);
  *(v2 + 72) = v4;
  *(v2 + 88) = v3;
  *(v2 + 104) = v4;

  return v2;
}

+ (id)unitTestingFaceFeatureWithSize:(CGSize)a3 faceFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.height;
  v9 = a3.width;
  v10 = [[AXMVisionFeature alloc] _init];
  v10[1] = 5;
  *(v10 + 42) = v9;
  *(v10 + 43) = v8;
  v11 = x / v9;
  v12 = y / v8;
  v13 = width / v9;
  v14 = height / v8;
  v15 = objc_alloc_init(AXMVisionFeatureFaceDetectionResult);
  *(v10 + 7) = v11;
  *(v10 + 8) = v12;
  *(v10 + 9) = v13;
  *(v10 + 10) = v14;
  *(v10 + 11) = v11;
  *(v10 + 12) = v12;
  *(v10 + 13) = v13;
  *(v10 + 14) = v14;
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
  v20 = v10[32];
  v10[32] = v15;

  return v10;
}

+ (id)unitTestingHorizonFeature
{
  v2 = [[AXMVisionFeature alloc] _init];
  v3 = vdupq_n_s64(0x406F400000000000uLL);
  *(v2 + 1) = 3;
  *(v2 + 21) = v3;
  *(v2 + 7) = 0;
  *(v2 + 8) = 0;
  *(v2 + 72) = v3;
  *(v2 + 62) = 1056964608;
  __asm { FMOV            V0.2D, #1.0 }

  *(v2 + 200) = _Q0;
  *(v2 + 216) = _Q0;
  *(v2 + 232) = _Q0;

  return v2;
}

@end