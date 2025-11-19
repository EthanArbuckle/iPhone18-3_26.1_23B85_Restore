@interface AXMVisionAnalysisOptions
+ (id)defaultOptions;
+ (id)voiceOverOptions;
- (AXMVisionAnalysisOptions)initWithCoder:(id)a3;
- (BOOL)detectFaces;
- (BOOL)hasDetectionsEnabled;
- (id)description;
- (void)disableAllDetectors;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMVisionAnalysisOptions

+ (id)defaultOptions
{
  v2 = objc_alloc_init(objc_opt_class());
  [v2 setClientID:0];
  [v2 setIncludeImageInResult:0];
  v3 = +[AXMTextDetectionOptions defaultOptions];
  [v2 setTextDetectionOptions:v3];

  v4 = AXRuntimeCheck_MediaAnalysisSupport();
  if (v4)
  {
    [v2 setDetectMADCaptions:1];
    [v2 setDetectMADScenes:1];
    [v2 setDetectMADScenesNSFW:1];
    [v2 setDetectMADScenesSignificantEvents:1];
  }

  else
  {
    [v2 setDetectMADCaptions:0];
    [v2 setDetectMADScenes:0];
  }

  [v2 setDetectMADFace:0];
  [v2 setDetectCaptions:v4 ^ 1u];
  [v2 setDetectScenes:v4 ^ 1u];
  [v2 setDetectObjects:v4 ^ 1u];
  [v2 setDetectNSFW:v4 ^ 1u];
  [v2 setDetectSignificantEvents:v4 ^ 1u];
  [v2 setDetectProminentObjects:0];
  [v2 setDetectMADText:0];
  [v2 setDetectText:1];
  [v2 setDetectTraits:1];
  [v2 setDetectFaceRectangles:0];
  [v2 setDetectFaceNames:0];
  [v2 setDetectFaceAttributes:0];
  [v2 setDetectFaceExpressions:0];
  [v2 setDetectFaceLandmarks:0];
  [v2 setDetectFacePose:0];
  [v2 setDetectProminentObjects:1];
  [v2 setDetectHorizon:1];
  [v2 setDetectRectangles:1];
  [v2 setDetectIconClass:0];
  [v2 setDetectAXElements:0];

  return v2;
}

+ (id)voiceOverOptions
{
  v2 = objc_alloc_init(objc_opt_class());
  [v2 setClientID:1];
  [v2 setIncludeImageInResult:0];
  v3 = +[AXMTextDetectionOptions defaultOptions];
  [v2 setTextDetectionOptions:v3];

  v4 = AXRuntimeCheck_MediaAnalysisSupport();
  [v2 setDetectMADCaptions:0];
  [v2 setDetectMADScenes:v4];
  [v2 setDetectMADFace:v4];
  [v2 setDetectCaptions:0];
  [v2 setDetectScenes:v4 ^ 1];
  [v2 setDetectObjects:v4 ^ 1];
  [v2 setDetectFaceRectangles:v4 ^ 1];
  [v2 setDetectFaceNames:v4 ^ 1];
  [v2 setDetectFaceAttributes:v4 ^ 1];
  [v2 setDetectMADText:0];
  [v2 setDetectMADScenesNSFW:0];
  [v2 setDetectMADScenesSignificantEvents:0];
  [v2 setDetectText:1];
  [v2 setDetectModelClassifications:0];
  [v2 setDetectTraits:0];
  [v2 setDetectFaceExpressions:0];
  [v2 setDetectFaceLandmarks:0];
  [v2 setDetectFacePose:0];
  [v2 setDetectProminentObjects:0];
  [v2 setDetectHorizon:0];
  [v2 setDetectRectangles:0];
  [v2 setDetectIconClass:1];

  return v2;
}

- (BOOL)detectFaces
{
  if ([(AXMVisionAnalysisOptions *)self detectFaceRectangles]|| [(AXMVisionAnalysisOptions *)self detectFaceNames]|| [(AXMVisionAnalysisOptions *)self detectFaceAttributes]|| [(AXMVisionAnalysisOptions *)self detectFaceExpressions]|| [(AXMVisionAnalysisOptions *)self detectFaceLandmarks])
  {
    return 1;
  }

  return [(AXMVisionAnalysisOptions *)self detectFacePose];
}

- (BOOL)hasDetectionsEnabled
{
  if ([(AXMVisionAnalysisOptions *)self detectText]|| [(AXMVisionAnalysisOptions *)self detectFaceRectangles]|| [(AXMVisionAnalysisOptions *)self detectFaceNames]|| [(AXMVisionAnalysisOptions *)self detectFaceAttributes]|| [(AXMVisionAnalysisOptions *)self detectFaceExpressions]|| [(AXMVisionAnalysisOptions *)self detectFaceLandmarks]|| [(AXMVisionAnalysisOptions *)self detectFacePose]|| [(AXMVisionAnalysisOptions *)self detectScenes]|| [(AXMVisionAnalysisOptions *)self detectObjects]|| [(AXMVisionAnalysisOptions *)self detectModelClassifications]|| [(AXMVisionAnalysisOptions *)self detectCaptions]|| [(AXMVisionAnalysisOptions *)self detectTraits]|| [(AXMVisionAnalysisOptions *)self detectRectangles]|| [(AXMVisionAnalysisOptions *)self detectHorizon]|| [(AXMVisionAnalysisOptions *)self detectProminentObjects]|| [(AXMVisionAnalysisOptions *)self detectAesthetics]|| [(AXMVisionAnalysisOptions *)self detectIconClass]|| [(AXMVisionAnalysisOptions *)self detectBrailleEdges]|| [(AXMVisionAnalysisOptions *)self detectAXElements]|| [(AXMVisionAnalysisOptions *)self detectMADCaptions]|| [(AXMVisionAnalysisOptions *)self detectMADScenes]|| [(AXMVisionAnalysisOptions *)self detectMADFace])
  {
    return 1;
  }

  return [(AXMVisionAnalysisOptions *)self detectMADText];
}

- (void)disableAllDetectors
{
  [(AXMVisionAnalysisOptions *)self setDetectText:0];
  [(AXMVisionAnalysisOptions *)self setDetectFaceRectangles:0];
  [(AXMVisionAnalysisOptions *)self setDetectFaceNames:0];
  [(AXMVisionAnalysisOptions *)self setDetectFaceAttributes:0];
  [(AXMVisionAnalysisOptions *)self setDetectFaceExpressions:0];
  [(AXMVisionAnalysisOptions *)self setDetectFaceLandmarks:0];
  [(AXMVisionAnalysisOptions *)self setDetectFacePose:0];
  [(AXMVisionAnalysisOptions *)self setDetectScenes:0];
  [(AXMVisionAnalysisOptions *)self setDetectObjects:0];
  [(AXMVisionAnalysisOptions *)self setDetectModelClassifications:0];
  [(AXMVisionAnalysisOptions *)self setDetectCaptions:0];
  [(AXMVisionAnalysisOptions *)self setDetectTraits:0];
  [(AXMVisionAnalysisOptions *)self setDetectRectangles:0];
  [(AXMVisionAnalysisOptions *)self setDetectHorizon:0];
  [(AXMVisionAnalysisOptions *)self setDetectProminentObjects:0];
  [(AXMVisionAnalysisOptions *)self setDetectAesthetics:0];
  [(AXMVisionAnalysisOptions *)self setDetectIconClass:0];
  [(AXMVisionAnalysisOptions *)self setDetectBrailleEdges:0];
  [(AXMVisionAnalysisOptions *)self setDetectAXElements:0];
  [(AXMVisionAnalysisOptions *)self setPreserveInputImageSize:0];
  [(AXMVisionAnalysisOptions *)self setDetectMADCaptions:0];
  [(AXMVisionAnalysisOptions *)self setDetectMADScenes:0];
  [(AXMVisionAnalysisOptions *)self setDetectMADFace:0];

  [(AXMVisionAnalysisOptions *)self setDetectMADText:0];
}

- (AXMVisionAnalysisOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AXMVisionAnalysisOptions;
  v5 = [(AXMVisionAnalysisOptions *)&v19 init];
  if (v5)
  {
    -[AXMVisionAnalysisOptions setClientID:](v5, "setClientID:", [v4 decodeIntegerForKey:@"clientID"]);
    -[AXMVisionAnalysisOptions setIncludeImageInResult:](v5, "setIncludeImageInResult:", [v4 decodeBoolForKey:@"includeImageInResult"]);
    -[AXMVisionAnalysisOptions setDetectText:](v5, "setDetectText:", [v4 decodeBoolForKey:@"detectText"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textDetectionOptions"];
    [(AXMVisionAnalysisOptions *)v5 setTextDetectionOptions:v6];

    -[AXMVisionAnalysisOptions setDetectScenes:](v5, "setDetectScenes:", [v4 decodeBoolForKey:@"detectScenes"]);
    -[AXMVisionAnalysisOptions setDetectObjects:](v5, "setDetectObjects:", [v4 decodeBoolForKey:@"detectObjects"]);
    -[AXMVisionAnalysisOptions setDetectNSFW:](v5, "setDetectNSFW:", [v4 decodeBoolForKey:@"detectNSFW"]);
    -[AXMVisionAnalysisOptions setDetectSignificantEvents:](v5, "setDetectSignificantEvents:", [v4 decodeBoolForKey:@"detectSignificantEvents"]);
    -[AXMVisionAnalysisOptions setDetectModelClassifications:](v5, "setDetectModelClassifications:", [v4 decodeBoolForKey:@"detectModelClassifications"]);
    -[AXMVisionAnalysisOptions setDetectCaptions:](v5, "setDetectCaptions:", [v4 decodeBoolForKey:@"detectCaptions"]);
    -[AXMVisionAnalysisOptions setDetectTraits:](v5, "setDetectTraits:", [v4 decodeBoolForKey:@"detectTraits"]);
    -[AXMVisionAnalysisOptions setDetectFaceRectangles:](v5, "setDetectFaceRectangles:", [v4 decodeBoolForKey:@"detectFaceRectangles"]);
    -[AXMVisionAnalysisOptions setDetectFaceNames:](v5, "setDetectFaceNames:", [v4 decodeBoolForKey:@"detectFaceNames"]);
    -[AXMVisionAnalysisOptions setDetectFaceAttributes:](v5, "setDetectFaceAttributes:", [v4 decodeBoolForKey:@"detectFaceAttributes"]);
    -[AXMVisionAnalysisOptions setDetectFaceExpressions:](v5, "setDetectFaceExpressions:", [v4 decodeBoolForKey:@"detectFaceExpressions"]);
    -[AXMVisionAnalysisOptions setDetectFaceLandmarks:](v5, "setDetectFaceLandmarks:", [v4 decodeBoolForKey:@"detectFaceLandmarks"]);
    -[AXMVisionAnalysisOptions setDetectFacePose:](v5, "setDetectFacePose:", [v4 decodeBoolForKey:@"detectFacePose"]);
    -[AXMVisionAnalysisOptions setDetectHorizon:](v5, "setDetectHorizon:", [v4 decodeBoolForKey:@"detectHorizon"]);
    -[AXMVisionAnalysisOptions setDetectRectangles:](v5, "setDetectRectangles:", [v4 decodeBoolForKey:@"detectRectangles"]);
    -[AXMVisionAnalysisOptions setDetectProminentObjects:](v5, "setDetectProminentObjects:", [v4 decodeBoolForKey:@"detectProminentObjects"]);
    -[AXMVisionAnalysisOptions setDetectAesthetics:](v5, "setDetectAesthetics:", [v4 decodeBoolForKey:@"detectAesthetics"]);
    -[AXMVisionAnalysisOptions setDetectIconClass:](v5, "setDetectIconClass:", [v4 decodeBoolForKey:@"detectIconClass"]);
    -[AXMVisionAnalysisOptions setDetectBrailleEdges:](v5, "setDetectBrailleEdges:", [v4 decodeBoolForKey:@"detectBrailleEdges"]);
    v7 = AXMSecureCodingClasses();
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"brailleEdgeOptions"];
    [(AXMVisionAnalysisOptions *)v5 setBrailleEdgeOptions:v8];

    -[AXMVisionAnalysisOptions setDetectAXElements:](v5, "setDetectAXElements:", [v4 decodeBoolForKey:@"detectAXElements"]);
    v9 = AXMSecureCodingClasses();
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"equivalenceToken"];
    [(AXMVisionAnalysisOptions *)v5 setEquivalenceToken:v10];

    v11 = AXMSecureCodingClasses();
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"ignoredLayerContextIDs"];
    [(AXMVisionAnalysisOptions *)v5 setIgnoredLayerContextIDs:v12];

    v13 = AXMSecureCodingClasses();
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"includedLayerContextIDs"];
    [(AXMVisionAnalysisOptions *)v5 setIncludedLayerContextIDs:v14];

    -[AXMVisionAnalysisOptions setPreserveInputImageSize:](v5, "setPreserveInputImageSize:", [v4 decodeBoolForKey:@"preserveInputImageSize"]);
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredOutputLocale"];
    [(AXMVisionAnalysisOptions *)v5 setPreferredOutputLocale:v15];

    -[AXMVisionAnalysisOptions setDetectMADCaptions:](v5, "setDetectMADCaptions:", [v4 decodeBoolForKey:@"detectMADCaptions"]);
    -[AXMVisionAnalysisOptions setDetectMADScenes:](v5, "setDetectMADScenes:", [v4 decodeBoolForKey:@"detectMADScenes"]);
    -[AXMVisionAnalysisOptions setDetectMADFace:](v5, "setDetectMADFace:", [v4 decodeBoolForKey:@"detectMADFace"]);
    -[AXMVisionAnalysisOptions setDetectMADText:](v5, "setDetectMADText:", [v4 decodeBoolForKey:@"detectMADText"]);
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snapshotLayerID"];
    [(AXMVisionAnalysisOptions *)v5 setSnapshotLayerID:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snapshotContextID"];
    [(AXMVisionAnalysisOptions *)v5 setSnapshotContextID:v17];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[AXMVisionAnalysisOptions clientID](self forKey:{"clientID"), @"clientID"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions includeImageInResult](self forKey:{"includeImageInResult"), @"includeImageInResult"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectText](self forKey:{"detectText"), @"detectText"}];
  v5 = [(AXMVisionAnalysisOptions *)self textDetectionOptions];
  [v4 encodeObject:v5 forKey:@"textDetectionOptions"];

  [v4 encodeBool:-[AXMVisionAnalysisOptions detectScenes](self forKey:{"detectScenes"), @"detectScenes"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectObjects](self forKey:{"detectObjects"), @"detectObjects"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectNSFW](self forKey:{"detectNSFW"), @"detectNSFW"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectSignificantEvents](self forKey:{"detectSignificantEvents"), @"detectSignificantEvents"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectModelClassifications](self forKey:{"detectModelClassifications"), @"detectModelClassifications"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectCaptions](self forKey:{"detectCaptions"), @"detectCaptions"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectTraits](self forKey:{"detectTraits"), @"detectTraits"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectFaceRectangles](self forKey:{"detectFaceRectangles"), @"detectFaceRectangles"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectFaceNames](self forKey:{"detectFaceNames"), @"detectFaceNames"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectFaceAttributes](self forKey:{"detectFaceAttributes"), @"detectFaceAttributes"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectFaceExpressions](self forKey:{"detectFaceExpressions"), @"detectFaceExpressions"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectFaceLandmarks](self forKey:{"detectFaceLandmarks"), @"detectFaceLandmarks"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectFacePose](self forKey:{"detectFacePose"), @"detectFacePose"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectHorizon](self forKey:{"detectHorizon"), @"detectHorizon"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectRectangles](self forKey:{"detectRectangles"), @"detectRectangles"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectProminentObjects](self forKey:{"detectProminentObjects"), @"detectProminentObjects"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectAesthetics](self forKey:{"detectAesthetics"), @"detectAesthetics"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectIconClass](self forKey:{"detectIconClass"), @"detectIconClass"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectBrailleEdges](self forKey:{"detectBrailleEdges"), @"detectBrailleEdges"}];
  v6 = [(AXMVisionAnalysisOptions *)self brailleEdgeOptions];
  [v4 encodeObject:v6 forKey:@"brailleEdgeOptions"];

  [v4 encodeBool:-[AXMVisionAnalysisOptions detectAXElements](self forKey:{"detectAXElements"), @"detectAXElements"}];
  v7 = [(AXMVisionAnalysisOptions *)self equivalenceToken];
  [v4 encodeObject:v7 forKey:@"equivalenceToken"];

  v8 = [(AXMVisionAnalysisOptions *)self ignoredLayerContextIDs];
  [v4 encodeObject:v8 forKey:@"ignoredLayerContextIDs"];

  v9 = [(AXMVisionAnalysisOptions *)self includedLayerContextIDs];
  [v4 encodeObject:v9 forKey:@"includedLayerContextIDs"];

  [v4 encodeBool:-[AXMVisionAnalysisOptions preserveInputImageSize](self forKey:{"preserveInputImageSize"), @"preserveInputImageSize"}];
  v10 = [(AXMVisionAnalysisOptions *)self preferredOutputLocale];
  [v4 encodeObject:v10 forKey:@"preferredOutputLocale"];

  [v4 encodeBool:-[AXMVisionAnalysisOptions detectMADCaptions](self forKey:{"detectMADCaptions"), @"detectMADCaptions"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectMADScenes](self forKey:{"detectMADScenes"), @"detectMADScenes"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectMADFace](self forKey:{"detectMADFace"), @"detectMADFace"}];
  [v4 encodeBool:-[AXMVisionAnalysisOptions detectMADText](self forKey:{"detectMADText"), @"detectMADText"}];
  v11 = [(AXMVisionAnalysisOptions *)self snapshotLayerID];
  [v4 encodeObject:v11 forKey:@"snapshotLayerID"];

  v12 = [(AXMVisionAnalysisOptions *)self snapshotContextID];
  [v4 encodeObject:v12 forKey:@"snapshotContextID"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXMVisionAnalysisOptions<%p>. Client: %ld\n", self, -[AXMVisionAnalysisOptions clientID](self, "clientID")];
  [v3 appendString:@"  Detectors:\n"];
  [v3 appendFormat:@"    Traits: %ld\n", -[AXMVisionAnalysisOptions detectTraits](self, "detectTraits")];
  [v3 appendFormat:@"    Faces: %ld\n", -[AXMVisionAnalysisOptions detectFaces](self, "detectFaces")];
  [v3 appendFormat:@"    Text: %ld\n", -[AXMVisionAnalysisOptions detectText](self, "detectText")];
  [v3 appendFormat:@"    Scenes: %ld\n", -[AXMVisionAnalysisOptions detectScenes](self, "detectScenes")];
  [v3 appendFormat:@"    Objects: %ld\n", -[AXMVisionAnalysisOptions detectObjects](self, "detectObjects")];
  [v3 appendFormat:@"    NSFW: %ld\n", -[AXMVisionAnalysisOptions detectNSFW](self, "detectNSFW")];
  [v3 appendFormat:@"    Significant Events: %ld\n", -[AXMVisionAnalysisOptions detectSignificantEvents](self, "detectSignificantEvents")];
  [v3 appendFormat:@"    Model Classifications: %ld\n", -[AXMVisionAnalysisOptions detectModelClassifications](self, "detectModelClassifications")];
  [v3 appendFormat:@"    Captions: %ld\n", -[AXMVisionAnalysisOptions detectCaptions](self, "detectCaptions")];
  [v3 appendFormat:@"    Prominent Objects: %ld\n", -[AXMVisionAnalysisOptions detectProminentObjects](self, "detectProminentObjects")];
  [v3 appendFormat:@"    Aesthetics: %ld\n", -[AXMVisionAnalysisOptions detectAesthetics](self, "detectAesthetics")];
  [v3 appendFormat:@"    Face names: %ld\n", -[AXMVisionAnalysisOptions detectFaceNames](self, "detectFaceNames")];
  [v3 appendFormat:@"    Face rectangles : %ld\n", -[AXMVisionAnalysisOptions detectFaceRectangles](self, "detectFaceRectangles")];
  [v3 appendFormat:@"    Face attributes : %ld\n", -[AXMVisionAnalysisOptions detectFaceAttributes](self, "detectFaceAttributes")];
  [v3 appendFormat:@"    Icon Classifications: %ld\n", -[AXMVisionAnalysisOptions detectIconClass](self, "detectIconClass")];
  [v3 appendFormat:@"    Braille Edges: %ld\n", -[AXMVisionAnalysisOptions detectBrailleEdges](self, "detectBrailleEdges")];
  [v3 appendFormat:@"    AXElement Detection: %ld\n", -[AXMVisionAnalysisOptions detectAXElements](self, "detectAXElements")];
  [v3 appendFormat:@"  Preserve Input Image Size: %ld\n", -[AXMVisionAnalysisOptions preserveInputImageSize](self, "preserveInputImageSize")];
  v4 = [(AXMVisionAnalysisOptions *)self preferredOutputLocale];
  v5 = [v4 localeIdentifier];
  [v3 appendFormat:@"  Preferred Output Locale: %@\n", v5];

  [v3 appendFormat:@"  (MAD) Captions: %ld\n", -[AXMVisionAnalysisOptions detectMADCaptions](self, "detectMADCaptions")];
  [v3 appendFormat:@"  (MAD) Scenes: %ld\n", -[AXMVisionAnalysisOptions detectMADScenes](self, "detectMADScenes")];
  [v3 appendFormat:@"  (MAD) Faces: %ld\n", -[AXMVisionAnalysisOptions detectMADFace](self, "detectMADFace")];
  [v3 appendFormat:@"  (MAD) OCR: %ld\n", -[AXMVisionAnalysisOptions detectMADText](self, "detectMADText")];
  v6 = [(AXMVisionAnalysisOptions *)self textDetectionOptions];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 description];
    [v3 appendString:v8];
  }

  return v3;
}

@end