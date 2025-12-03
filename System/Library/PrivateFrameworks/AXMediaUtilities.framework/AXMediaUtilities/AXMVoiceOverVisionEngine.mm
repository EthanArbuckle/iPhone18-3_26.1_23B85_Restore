@interface AXMVoiceOverVisionEngine
- (AXMCaptionDetectorNode)captionDetector;
- (AXMFaceDetectorNode)faceDetector;
- (AXMMediaAnalysisCaptionDetectorNode)madCaptionDetector;
- (AXMMediaAnalysisFaceDetectorNode)madFaceDetector;
- (AXMMediaAnalysisSceneDetectorNode)madSceneDetector;
- (AXMMediaAnalysisTextDetectorNode)madTextDetector;
- (AXMNSFWDetectorNode)nsfwDetector;
- (AXMObjectDetectorNode)objectDetector;
- (AXMProminentObjectsDetectorNode)prominentObjectsDetector;
- (AXMSceneDetectorNode)sceneDetector;
- (AXMSignificantEventDetectorNode)significantEventDetector;
- (AXMTraitDetectorNode)traitDetector;
- (AXMVoiceOverVisionEngine)init;
- (AXMVoiceOverVisionEngine)initWithIdentifier:(id)identifier;
- (id)configuredOptionsDisableAllDetectors:(id)detectors elementOptions:(unsigned int)options textRecognitionLevel:(id)level textDetectionLocales:(id)locales preferringFullCaptions:(BOOL)captions;
- (unint64_t)genderStrategy;
- (void)setGenderStrategy:(unint64_t)strategy;
@end

@implementation AXMVoiceOverVisionEngine

- (AXMVoiceOverVisionEngine)init
{
  v17.receiver = self;
  v17.super_class = AXMVoiceOverVisionEngine;
  v2 = [(AXMAXElementVisionEngine *)&v17 initWithIdentifier:@"VoiceOver"];
  v3 = v2;
  if (v2)
  {
    [(AXMVisionEngine *)v2 enableResultCachingWithCacheSize:10];
    [(AXMVisionEngine *)v3 setMaximumQueueSize:1];
    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v4 = [(AXMVisionEngineNode *)[AXMSceneDetectorNode alloc] initWithIdentifier:@"scene"];
      [(AXMSceneDetectorNode *)v4 setTaxonomyOptions:7];
      [(AXMVisionEngine *)v3 addEvaluationNode:v4];
      [(AXMVoiceOverVisionEngine *)v3 setSceneDetector:v4];
    }

    else
    {
      v4 = 0;
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v5 = [(AXMVisionEngineNode *)[AXMObjectDetectorNode alloc] initWithIdentifier:@"object"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v5];
      [(AXMVoiceOverVisionEngine *)v3 setObjectDetector:v5];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v6 = [(AXMVisionEngineNode *)[AXMFaceDetectorNode alloc] initWithIdentifier:@"face"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v6];
      [(AXMVoiceOverVisionEngine *)v3 setFaceDetector:v6];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v7 = [(AXMVisionEngineNode *)[AXMTraitDetectorNode alloc] initWithIdentifier:@"trait"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v7];
      [(AXMVoiceOverVisionEngine *)v3 setTraitDetector:v7];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v8 = [(AXMVisionEngineNode *)[AXMProminentObjectsDetectorNode alloc] initWithIdentifier:@"prominentObjects"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v8];
      [(AXMVoiceOverVisionEngine *)v3 setProminentObjectsDetector:v8];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v9 = [(AXMVisionEngineNode *)[AXMNSFWDetectorNode alloc] initWithIdentifier:@"NSFW"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v9];
      [(AXMVoiceOverVisionEngine *)v3 setNsfwDetector:v9];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v10 = [(AXMVisionEngineNode *)[AXMSignificantEventDetectorNode alloc] initWithIdentifier:@"SignificantEvent"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v10];
      [(AXMVoiceOverVisionEngine *)v3 setSignificantEventDetector:v10];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v11 = [(AXMVisionEngineNode *)[AXMCaptionDetectorNode alloc] initWithIdentifier:@"captions"];
      [(AXMCaptionDetectorNode *)v11 setGenderStrategy:0];
      [(AXMCaptionDetectorNode *)v11 setSceneDetector:v4];
      [(AXMVisionEngine *)v3 addEvaluationNode:v11];
      [(AXMVoiceOverVisionEngine *)v3 setCaptionDetector:v11];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v12 = [(AXMVisionEngineNode *)[AXMMediaAnalysisSceneDetectorNode alloc] initWithIdentifier:@"mad-scene"];
      [(AXMMediaAnalysisSceneDetectorNode *)v12 setTaxonomyOptions:7];
      [(AXMVisionEngine *)v3 addEvaluationNode:v12];
      [(AXMVoiceOverVisionEngine *)v3 setMadSceneDetector:v12];
    }

    else
    {
      v12 = 0;
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v13 = [(AXMVisionEngineNode *)[AXMMediaAnalysisFaceDetectorNode alloc] initWithIdentifier:@"mad-face"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v13];
      [(AXMVoiceOverVisionEngine *)v3 setMadFaceDetector:v13];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v14 = [(AXMVisionEngineNode *)[AXMMediaAnalysisCaptionDetectorNode alloc] initWithIdentifier:@"mad-captions"];
      [(AXMMediaAnalysisCaptionDetectorNode *)v14 setSceneDetector:v12];
      [(AXMVisionEngine *)v3 addEvaluationNode:v14];
      [(AXMVoiceOverVisionEngine *)v3 setMadCaptionDetector:v14];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v15 = [(AXMVisionEngineNode *)[AXMMediaAnalysisTextDetectorNode alloc] initWithIdentifier:@"mad-text"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v15];
      [(AXMVoiceOverVisionEngine *)v3 setMadTextDetector:v15];
    }
  }

  return v3;
}

- (AXMVoiceOverVisionEngine)initWithIdentifier:(id)identifier
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"use init()"];

  return [(AXMVoiceOverVisionEngine *)self init];
}

- (unint64_t)genderStrategy
{
  captionDetector = [(AXMVoiceOverVisionEngine *)self captionDetector];
  genderStrategy = [captionDetector genderStrategy];

  return genderStrategy;
}

- (void)setGenderStrategy:(unint64_t)strategy
{
  captionDetector = [(AXMVoiceOverVisionEngine *)self captionDetector];
  [captionDetector setGenderStrategy:strategy];
}

- (id)configuredOptionsDisableAllDetectors:(id)detectors elementOptions:(unsigned int)options textRecognitionLevel:(id)level textDetectionLocales:(id)locales preferringFullCaptions:(BOOL)captions
{
  captionsCopy = captions;
  detectorsCopy = detectors;
  levelCopy = level;
  localesCopy = locales;
  v14 = +[AXMVisionAnalysisOptions voiceOverOptions];
  if (detectorsCopy && detectorsCopy[2](detectorsCopy))
  {
    [v14 disableAllDetectors];
  }

  else
  {
    [v14 setDetectScenes:1];
    if (captionsCopy)
    {
      [v14 setDetectCaptions:1];
      if (AXRuntimeCheck_MediaAnalysisSupport())
      {
        [v14 setDetectMADScenes:1];
        [v14 setDetectMADCaptions:1];
        [v14 setDetectCaptions:0];
        [v14 setDetectScenes:0];
      }

      else
      {
        [v14 setDetectMADCaptions:0];
        [v14 setDetectMADScenes:0];
      }
    }

    else
    {
      [v14 setDetectCaptions:0];
      if (AXRuntimeCheck_MediaAnalysisSupport())
      {
        [v14 setDetectMADScenes:1];
        [v14 setDetectScenes:0];
      }

      else
      {
        [v14 setDetectMADScenes:0];
      }

      [v14 setDetectMADCaptions:0];
    }

    [v14 setDetectFaceRectangles:{objc_msgSend(v14, "detectFaceRectangles") & (options >> 1)}];
    [v14 setDetectFaceNames:{objc_msgSend(v14, "detectFaceNames") & (options >> 2)}];
    [v14 setDetectFaceAttributes:{objc_msgSend(v14, "detectFaceAttributes") & (options >> 3)}];
    [v14 setDetectFaceExpressions:{objc_msgSend(v14, "detectFaceExpressions") & (options >> 4)}];
    [v14 setDetectFaceLandmarks:{objc_msgSend(v14, "detectFaceLandmarks") & (options >> 5)}];
    [v14 setDetectFacePose:{objc_msgSend(v14, "detectFacePose") & (options >> 6)}];
    [v14 setDetectText:{options & objc_msgSend(v14, "detectText")}];
    [v14 setDetectTraits:{objc_msgSend(v14, "detectTraits") & (options >> 7)}];
    [v14 setDetectScenes:{objc_msgSend(v14, "detectScenes") & (options >> 8)}];
    [v14 setDetectObjects:{objc_msgSend(v14, "detectObjects") & (options >> 12)}];
    [v14 setDetectCaptions:{objc_msgSend(v14, "detectCaptions") & (options >> 11)}];
    [v14 setDetectProminentObjects:{objc_msgSend(v14, "detectProminentObjects") & (options >> 10)}];
    if ([v14 detectText])
    {
      textDetectionOptions = [v14 textDetectionOptions];
      if (levelCopy)
      {
        [textDetectionOptions setRecognitionLevel:levelCopy[2](levelCopy)];
      }

      if (localesCopy)
      {
        v16 = localesCopy[2](localesCopy);
        [textDetectionOptions setTextDetectionLocales:v16];
      }
    }
  }

  return v14;
}

- (AXMSceneDetectorNode)sceneDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneDetector);

  return WeakRetained;
}

- (AXMObjectDetectorNode)objectDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_objectDetector);

  return WeakRetained;
}

- (AXMFaceDetectorNode)faceDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_faceDetector);

  return WeakRetained;
}

- (AXMTraitDetectorNode)traitDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_traitDetector);

  return WeakRetained;
}

- (AXMProminentObjectsDetectorNode)prominentObjectsDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_prominentObjectsDetector);

  return WeakRetained;
}

- (AXMCaptionDetectorNode)captionDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_captionDetector);

  return WeakRetained;
}

- (AXMNSFWDetectorNode)nsfwDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_nsfwDetector);

  return WeakRetained;
}

- (AXMSignificantEventDetectorNode)significantEventDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_significantEventDetector);

  return WeakRetained;
}

- (AXMMediaAnalysisSceneDetectorNode)madSceneDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_madSceneDetector);

  return WeakRetained;
}

- (AXMMediaAnalysisFaceDetectorNode)madFaceDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_madFaceDetector);

  return WeakRetained;
}

- (AXMMediaAnalysisTextDetectorNode)madTextDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_madTextDetector);

  return WeakRetained;
}

- (AXMMediaAnalysisCaptionDetectorNode)madCaptionDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_madCaptionDetector);

  return WeakRetained;
}

@end