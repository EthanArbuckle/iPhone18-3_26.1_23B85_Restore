@interface VNDetectTextRectanglesRequest
+ (void)initialize;
- (BOOL)_detectCreditCardTextWithRequestPerformingContext:(id)context requestRevision:(unint64_t)revision error:(id *)error;
- (BOOL)_detectTextWithRequestPerformingContext:(id)context requestRevision:(unint64_t)revision error:(id *)error;
- (BOOL)detectDiacritics;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)minimizeFalseDetections;
- (BOOL)reportCharacterBoxes;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (NSString)additionalCharacters;
- (NSString)textRecognition;
- (id)_futharkRecognitionLanguage;
- (id)supportedComputeStageDevicesAndReturnError:(id *)error;
- (unint64_t)algorithm;
- (unint64_t)minimumCharacterPixelHeight;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setAdditionalCharacters:(id)characters;
- (void)setAlgorithm:(unint64_t)algorithm;
- (void)setDetectDiacritics:(BOOL)diacritics;
- (void)setMinimizeFalseDetections:(BOOL)detections;
- (void)setMinimumCharacterPixelHeight:(unint64_t)height;
- (void)setReportCharacterBoxes:(BOOL)reportCharacterBoxes;
- (void)setTextRecognition:(id)recognition;
@end

@implementation VNDetectTextRectanglesRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  VNValidatedLog(1, @"Processing detectTextRectangles request\n", v9, v10, v11, v12, v13, v14, v19);
  algorithm = [(VNDetectTextRectanglesRequest *)self algorithm];
  if (algorithm < 2)
  {
    v16 = [(VNDetectTextRectanglesRequest *)self _detectTextWithRequestPerformingContext:contextCopy requestRevision:revision error:error];
LABEL_5:
    LOBYTE(error) = v16;
    goto LABEL_6;
  }

  if (algorithm == 2)
  {
    v16 = [(VNDetectTextRectanglesRequest *)self _detectCreditCardTextWithRequestPerformingContext:contextCopy requestRevision:revision error:error];
    goto LABEL_5;
  }

  if (error)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid algorithm value of %lu", algorithm];
    *error = [VNError errorWithCode:5 message:v18];

    LOBYTE(error) = 0;
  }

LABEL_6:

  return error;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNDetectTextRectanglesRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNDetectTextRectanglesRequest *)self setAlgorithm:[(VNDetectTextRectanglesRequest *)requestCopy algorithm]];
      textRecognition = [(VNDetectTextRectanglesRequest *)requestCopy textRecognition];
      [(VNDetectTextRectanglesRequest *)self setTextRecognition:textRecognition];

      [(VNDetectTextRectanglesRequest *)self setMinimumCharacterPixelHeight:[(VNDetectTextRectanglesRequest *)requestCopy minimumCharacterPixelHeight]];
      [(VNDetectTextRectanglesRequest *)self setReportCharacterBoxes:[(VNDetectTextRectanglesRequest *)requestCopy reportCharacterBoxes]];
      [(VNDetectTextRectanglesRequest *)self setDetectDiacritics:[(VNDetectTextRectanglesRequest *)requestCopy detectDiacritics]];
      [(VNDetectTextRectanglesRequest *)self setMinimizeFalseDetections:[(VNDetectTextRectanglesRequest *)requestCopy minimizeFalseDetections]];
    }
  }
}

- (BOOL)_detectTextWithRequestPerformingContext:(id)context requestRevision:(unint64_t)revision error:(id *)error
{
  v93 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [contextCopy imageBufferAndReturnError:error];
  v60 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  v72 = v5;
  width = [v72 width];
  height = [v72 height];
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = [v72 bufferWithWidth:width height:height format:*(&_createFutharkCompatiblePixelBufferFromImageBuffer(VNImageBuffer * options:NSError * {__autoreleasing}*)::kPreferredPixelFormats + v8) error:{0, error}];
    v11 = v9 & (v10 == 0);
    v8 = 1;
    v9 = 0;
  }

  while ((v11 & 1) != 0);

  if (!v10)
  {
LABEL_11:
    v18 = 0;
    goto LABEL_82;
  }

  reportCharacterBoxes = [(VNDetectTextRectanglesRequest *)self reportCharacterBoxes];
  Width = CVPixelBufferGetWidth(v10);
  Height = CVPixelBufferGetHeight(v10);
  v14 = Height;
  v15 = [objc_alloc(MEMORY[0x1E699FD60]) initWithDimensions:{Width, Height}];
  if (v15)
  {
    minimumCharacterPixelHeight = [(VNDetectTextRectanglesRequest *)self minimumCharacterPixelHeight];
    if (minimumCharacterPixelHeight)
    {
      if (minimumCharacterPixelHeight >= 0x7FFFFFFF)
      {
        v17 = 0x7FFFFFFFLL;
      }

      else
      {
        v17 = minimumCharacterPixelHeight;
      }

      [v15 setMinimumCharacterHeight:v17];
    }

    else
    {
      v17 = 0;
    }

    [v15 setDetectDiacritics:{-[VNDetectTextRectanglesRequest detectDiacritics](self, "detectDiacritics")}];
    [v15 setMinimizeFalseDetections:{-[VNDetectTextRectanglesRequest minimizeFalseDetections](self, "minimizeFalseDetections")}];
    if (Width >= Height)
    {
      v20 = Height;
    }

    else
    {
      v20 = Width;
    }

    if (v20 < 2 * v17)
    {
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(self, 2 * v17);
    }

    _futharkRecognitionLanguage = [(VNDetectTextRectanglesRequest *)self _futharkRecognitionLanguage];
    v65 = _futharkRecognitionLanguage != 0;
    if (_futharkRecognitionLanguage)
    {
      [v15 setRecognitionLanguage:_futharkRecognitionLanguage];
    }

    [v15 setReturnSubFeatures:reportCharacterBoxes];
    [(VNImageBasedRequest *)self regionOfInterestPixelRectForWidth:Width height:v14];
    v59 = [v15 detectFeaturesInBuffer:v10 withRegionOfInterest:error error:?];
    v19 = v59 != 0;
  }

  else if (error)
  {
    [VNError errorWithCode:9 message:@"Text detector object was not created"];
    v59 = 0;
    v65 = 0;
    *error = v19 = 0;
  }

  else
  {
    v59 = 0;
    v65 = 0;
    v19 = 0;
  }

  CVPixelBufferRelease(v10);
  if (!v19)
  {
    v18 = 0;
    goto LABEL_81;
  }

  specifier = [(VNRequest *)self specifier];
  v63 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v59, "count")}];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v59;
  v68 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (!v68)
  {
LABEL_75:

    [(VNRequest *)self setResults:v63];
    v18 = 1;
    goto LABEL_80;
  }

  v67 = *v84;
LABEL_26:
  v74 = 0;
  while (1)
  {
    if (*v84 != v67)
    {
      objc_enumerationMutation(obj);
    }

    v22 = *(*(&v83 + 1) + 8 * v74);
    if (![v22 type])
    {
      break;
    }

LABEL_73:
    if (++v74 == v68)
    {
      v68 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
      if (!v68)
      {
        goto LABEL_75;
      }

      goto LABEL_26;
    }
  }

  corners = [v22 corners];
  if (!corners || [corners count] != 4)
  {
    goto LABEL_41;
  }

  v23 = [corners objectAtIndexedSubscript:0];
  if (!CGPointMakeWithDictionaryRepresentation(v23, &point))
  {
LABEL_40:

    goto LABEL_41;
  }

  v24 = [corners objectAtIndexedSubscript:1];
  if (!CGPointMakeWithDictionaryRepresentation(v24, &v89))
  {
LABEL_39:

    goto LABEL_40;
  }

  v25 = [corners objectAtIndexedSubscript:2];
  if (!CGPointMakeWithDictionaryRepresentation(v25, &v88))
  {

    goto LABEL_39;
  }

  v26 = [corners objectAtIndexedSubscript:3];
  v27 = CGPointMakeWithDictionaryRepresentation(v26, &v87);

  if (v27)
  {
    v28 = [VNTextObservation alloc];
    v70 = [(VNRectangleObservation *)v28 initWithOriginatingRequestSpecifier:specifier topLeft:point.x topRight:1.0 - point.y bottomRight:v87.x bottomLeft:1.0 - v87.y, v88.x, 1.0 - v88.y, v89.x, 1.0 - v89.y];
    if (v70)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  [v22 boundingBox];
  v70 = [(VNRectangleObservation *)[VNTextObservation alloc] initWithOriginatingRequestSpecifier:specifier boundingBox:v31, 1.0 - v29 - v30, v32, v30];
  if (v70)
  {
LABEL_42:
    if (v65)
    {
      text = [v22 text];
      [(VNTextObservation *)v70 setText:text];
    }

    [v63 addObject:v70];
    if (reportCharacterBoxes)
    {
      subFeatures = [v22 subFeatures];
      if (subFeatures)
      {
        v75 = subFeatures;
        v77 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(subFeatures, "count")}];
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v76 = v75;
        v35 = [v76 countByEnumeratingWithState:&v79 objects:v91 count:16];
        if (!v35)
        {
          goto LABEL_71;
        }

        v36 = *v80;
        while (1)
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v80 != v36)
            {
              objc_enumerationMutation(v76);
            }

            v38 = *(*(&v79 + 1) + 8 * i);
            v39 = specifier;
            if (!v38 || [v38 type] != 1)
            {
              v57 = 0;
              goto LABEL_67;
            }

            [v38 boundingBox];
            v41 = v40;
            v43 = v42;
            v45 = v44;
            v47 = v46;
            corners2 = [v38 corners];
            v49 = corners2;
            v50 = 1.0 - v43 - v47;
            if (!corners2 || [corners2 count] != 4)
            {
              goto LABEL_65;
            }

            v89 = *MEMORY[0x1E695EFF8];
            point = v89;
            v87 = v89;
            v88 = v89;
            v51 = [v49 objectAtIndexedSubscript:0];
            if (!CGPointMakeWithDictionaryRepresentation(v51, &point))
            {
              goto LABEL_64;
            }

            v52 = [v49 objectAtIndexedSubscript:1];
            if (!CGPointMakeWithDictionaryRepresentation(v52, &v89))
            {
              goto LABEL_63;
            }

            v53 = [v49 objectAtIndexedSubscript:2];
            if (!CGPointMakeWithDictionaryRepresentation(v53, &v88))
            {

LABEL_63:
LABEL_64:

              goto LABEL_65;
            }

            v54 = [v49 objectAtIndexedSubscript:3];
            v71 = CGPointMakeWithDictionaryRepresentation(v54, &v87);

            if (v71)
            {
              v55 = [_VNTextObservationCharacterBox alloc];
              v56 = [(VNRectangleObservation *)v55 initWithOriginatingRequestSpecifier:v39 topLeft:point.x topRight:1.0 - point.y bottomRight:v87.x bottomLeft:1.0 - v87.y, v88.x, 1.0 - v88.y, v89.x, 1.0 - v89.y];
              v57 = v56;
              if (v56)
              {
                *(v56 + 96) = v41;
                *(v56 + 104) = v50;
                *(v56 + 112) = v45;
                *(v56 + 120) = v47;
              }

              goto LABEL_66;
            }

LABEL_65:
            v57 = [(VNRectangleObservation *)[_VNTextObservationCharacterBox alloc] initWithOriginatingRequestSpecifier:v39 boundingBox:v41, v50, v45, v47];
LABEL_66:

LABEL_67:
            if (v57)
            {
              [v77 addObject:v57];
            }
          }

          v35 = [v76 countByEnumeratingWithState:&v79 objects:v91 count:16];
          if (!v35)
          {
LABEL_71:

            [(VNTextObservation *)v70 setCharacterBoxes:v77];
            break;
          }
        }
      }
    }

    goto LABEL_73;
  }

  if (error)
  {
    *error = +[VNError errorForMemoryAllocationFailure];
  }

  v18 = 0;
LABEL_80:

LABEL_81:
LABEL_82:

  return v18;
}

- (id)_futharkRecognitionLanguage
{
  textRecognition = [(VNDetectTextRectanglesRequest *)self textRecognition];
  v4 = textRecognition;
  if (textRecognition && ([textRecognition isEqualToString:@"VNTextRecognitionOptionNone"] & 1) == 0)
  {
    v5 = [ourTextRecognitionLanguageOptionToFutharkRecognitionLanguageMap objectForKeyedSubscript:v4];
    if (v5)
    {
      additionalCharacters = [(VNDetectTextRectanglesRequest *)self additionalCharacters];
      if ([additionalCharacters length])
      {
        v7 = [v5 stringByAppendingFormat:@"%@", additionalCharacters];;

        v5 = v7;
      }

      v5 = v5;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_detectCreditCardTextWithRequestPerformingContext:(id)context requestRevision:(unint64_t)revision error:(id *)error
{
  contextCopy = context;
  v8 = [contextCopy imageBufferAndReturnError:error];
  if (v8)
  {
    session = [contextCopy session];
    v10 = [(VNRequest *)self newDefaultDetectorOptionsForSession:session];
    v11 = [[VNCCTextDetector alloc] initWithOptions:v10];
    if (v11)
    {
      specifier = [(VNRequest *)self specifier];
      v13 = [(VNCCTextDetector *)v11 textBoxesForImage:v8 originatingRequestSpecifier:specifier error:error];

      v14 = v13 != 0;
      if (v13)
      {
        [(VNRequest *)self setResults:v13];
      }
    }

    else if (error)
    {
      [VNError errorWithCode:9 message:@"Text detector object was not created"];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setMinimizeFalseDetections:(BOOL)detections
{
  detectionsCopy = detections;
  configuration = [(VNRequest *)self configuration];
  [configuration setMinimizeFalseDetections:detectionsCopy];
}

- (BOOL)minimizeFalseDetections
{
  configuration = [(VNRequest *)self configuration];
  minimizeFalseDetections = [configuration minimizeFalseDetections];

  return minimizeFalseDetections;
}

- (void)setDetectDiacritics:(BOOL)diacritics
{
  diacriticsCopy = diacritics;
  configuration = [(VNRequest *)self configuration];
  [configuration setDetectDiacritics:diacriticsCopy];
}

- (BOOL)detectDiacritics
{
  configuration = [(VNRequest *)self configuration];
  detectDiacritics = [configuration detectDiacritics];

  return detectDiacritics;
}

- (void)setReportCharacterBoxes:(BOOL)reportCharacterBoxes
{
  v3 = reportCharacterBoxes;
  configuration = [(VNRequest *)self configuration];
  [configuration setReportCharacterBoxes:v3];
}

- (BOOL)reportCharacterBoxes
{
  configuration = [(VNRequest *)self configuration];
  reportCharacterBoxes = [configuration reportCharacterBoxes];

  return reportCharacterBoxes;
}

- (void)setMinimumCharacterPixelHeight:(unint64_t)height
{
  configuration = [(VNRequest *)self configuration];
  [configuration setMinimumCharacterPixelHeight:height];
}

- (unint64_t)minimumCharacterPixelHeight
{
  configuration = [(VNRequest *)self configuration];
  minimumCharacterPixelHeight = [configuration minimumCharacterPixelHeight];

  return minimumCharacterPixelHeight;
}

- (void)setAdditionalCharacters:(id)characters
{
  charactersCopy = characters;
  configuration = [(VNRequest *)self configuration];
  [configuration setAdditionalCharacters:charactersCopy];
}

- (NSString)additionalCharacters
{
  configuration = [(VNRequest *)self configuration];
  additionalCharacters = [configuration additionalCharacters];

  return additionalCharacters;
}

- (void)setTextRecognition:(id)recognition
{
  recognitionCopy = recognition;
  if (recognitionCopy && ([ourTextRecognitionLanguageOptionToFutharkRecognitionLanguageMap objectForKey:recognitionCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v7 = recognitionCopy;
  }

  else
  {
    v7 = [recognitionCopy copy];

    configuration = [(VNRequest *)self configuration];
    [configuration setTextRecognition:v7];
  }
}

- (NSString)textRecognition
{
  configuration = [(VNRequest *)self configuration];
  textRecognition = [configuration textRecognition];

  return textRecognition;
}

- (void)setAlgorithm:(unint64_t)algorithm
{
  configuration = [(VNRequest *)self configuration];
  [configuration setAlgorithm:algorithm];
}

- (unint64_t)algorithm
{
  configuration = [(VNRequest *)self configuration];
  algorithm = [configuration algorithm];

  return algorithm;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  minimumCharacterPixelHeight = [(VNDetectTextRectanglesRequest *)self minimumCharacterPixelHeight];
  if (minimumCharacterPixelHeight >= [configurationCopy minimumCharacterPixelHeight] && (!-[VNDetectTextRectanglesRequest reportCharacterBoxes](self, "reportCharacterBoxes") || objc_msgSend(configurationCopy, "reportCharacterBoxes")) && (v6 = -[VNDetectTextRectanglesRequest detectDiacritics](self, "detectDiacritics"), v6 == objc_msgSend(configurationCopy, "detectDiacritics")) && (v7 = -[VNDetectTextRectanglesRequest minimizeFalseDetections](self, "minimizeFalseDetections"), v7 == objc_msgSend(configurationCopy, "minimizeFalseDetections")) && (-[VNDetectTextRectanglesRequest additionalCharacters](self, "additionalCharacters"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(configurationCopy, "additionalCharacters"), v9 = objc_claimAutoreleasedReturnValue(), v10 = VisionCoreEqualOrNilObjects(), v9, v8, (v10 & 1) != 0))
  {
    v13.receiver = self;
    v13.super_class = VNDetectTextRectanglesRequest;
    v11 = [(VNImageBasedRequest *)&v13 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  algorithm = [(VNDetectTextRectanglesRequest *)self algorithm];
  if (algorithm >= 2)
  {
    if (algorithm == 2)
    {
      v9 = @"VNComputeStageMain";
      v6 = +[VNComputeDeviceUtilities allCPUComputeDevices];
      v10 = v6;
      error = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    }

    else if (error)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid algorithm value of %lu", algorithm];
      *error = [VNError errorWithCode:5 message:v7];

      error = 0;
    }
  }

  else
  {
    v11 = @"VNComputeStageMain";
    v5 = +[VNComputeDeviceUtilities allCPUComputeDevices];
    v12[0] = v5;
    error = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  return error;
}

+ (void)initialize
{
  v5[12] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    v4[0] = @"VNTextRecognitionOptionASCIICharacterSet";
    v4[1] = @"VNTextRecognitionOptionEnglishCharacterSet";
    v5[0] = @"ASCII";
    v5[1] = @"en";
    v4[2] = @"VNTextRecognitionOptionDanishCharacterSet";
    v4[3] = @"VNTextRecognitionOptionDutchCharacterSet";
    v5[2] = @"da";
    v5[3] = @"nl";
    v4[4] = @"VNTextRecognitionOptionFrenchCharacterSet";
    v4[5] = @"VNTextRecognitionOptionGermanCharacterSet";
    v5[4] = @"fr";
    v5[5] = @"de";
    v4[6] = @"VNTextRecognitionOptionIcelandicCharacterSet";
    v4[7] = @"VNTextRecognitionOptionItalianCharacterSet";
    v5[6] = @"is";
    v5[7] = @"it";
    v4[8] = @"VNTextRecognitionOptionNorwegianCharacterSet";
    v4[9] = @"VNTextRecognitionOptionPortugueseCharacterSet";
    v5[8] = @"no";
    v5[9] = @"pt";
    v4[10] = @"VNTextRecognitionOptionSpanishCharacterSet";
    v4[11] = @"VNTextRecognitionOptionSwedishCharacterSet";
    v5[10] = @"es";
    v5[11] = @"se";
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:12];
    v3 = ourTextRecognitionLanguageOptionToFutharkRecognitionLanguageMap;
    ourTextRecognitionLanguageOptionToFutharkRecognitionLanguageMap = v2;
  }
}

@end