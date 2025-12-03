@interface VNRecognizeDocumentElementsRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (VNRecognizeDocumentElementsRequestElementConfiguration)documentElements;
- (VNRecognizeDocumentElementsRequestElementConfiguration)machineReadableCodeElements;
- (VNRecognizeDocumentElementsRequestElementConfiguration)textElements;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)supportedIdentifiersAndReturnError:(id *)error;
- (unint64_t)imageCropAndScaleOption;
- (void)setImageCropAndScaleOption:(unint64_t)option;
@end

@implementation VNRecognizeDocumentElementsRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnsupportedRevision:revision ofRequest:self];
  }

  return 0;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageCropAndScaleOption = [(VNRecognizeDocumentElementsRequest *)self imageCropAndScaleOption];
  if (imageCropAndScaleOption == [configurationCopy imageCropAndScaleOption] && (-[VNRecognizeDocumentElementsRequest documentElements](self, "documentElements"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(configurationCopy, "documentElements"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) != 0) && (-[VNRecognizeDocumentElementsRequest textElements](self, "textElements"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(configurationCopy, "textElements"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, (v11 & 1) != 0) && (-[VNRecognizeDocumentElementsRequest machineReadableCodeElements](self, "machineReadableCodeElements"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(configurationCopy, "machineReadableCodeElements"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, (v14 & 1) != 0))
  {
    v17.receiver = self;
    v17.super_class = VNRecognizeDocumentElementsRequest;
    v15 = [(VNImageBasedRequest *)&v17 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v16.receiver = self;
  v16.super_class = VNRecognizeDocumentElementsRequest;
  v6 = [(VNRequest *)&v16 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v7 = v6;
  if (revision == 1)
  {
    v8 = [v6 objectForKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
    [v7 setObject:v8 forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_GatingOriginatingRequestSpecifier"];

    documentElements = [(VNRecognizeDocumentElementsRequest *)self documentElements];
    if ([documentElements recognize])
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingEnabled"];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(documentElements, "generateSegmentationMask")}];
      [v7 setObject:v10 forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingGenerateSegmentationMask"];
    }

    textElements = [(VNRecognizeDocumentElementsRequest *)self textElements];
    if ([textElements recognize])
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingEnabled"];
      v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(textElements, "generateSegmentationMask")}];
      [v7 setObject:v12 forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingGenerateSegmentationMask"];
    }

    machineReadableCodeElements = [(VNRecognizeDocumentElementsRequest *)self machineReadableCodeElements];
    if ([machineReadableCodeElements recognize])
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingEnabled"];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(machineReadableCodeElements, "generateSegmentationMask")}];
      [v7 setObject:v14 forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingGenerateSegmentationMask"];
    }
  }

  return v7;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNSmartCam5GatingDetectorType";
    v5 = @"VNSmartCam5GatingDetectorType";
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *error = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (VNRecognizeDocumentElementsRequestElementConfiguration)machineReadableCodeElements
{
  configuration = [(VNRequest *)self configuration];
  machineReadableCodeElements = [configuration machineReadableCodeElements];

  return machineReadableCodeElements;
}

- (VNRecognizeDocumentElementsRequestElementConfiguration)textElements
{
  configuration = [(VNRequest *)self configuration];
  textElements = [configuration textElements];

  return textElements;
}

- (VNRecognizeDocumentElementsRequestElementConfiguration)documentElements
{
  configuration = [(VNRequest *)self configuration];
  documentElements = [configuration documentElements];

  return documentElements;
}

- (void)setImageCropAndScaleOption:(unint64_t)option
{
  configuration = [(VNRequest *)self configuration];
  [configuration setImageCropAndScaleOption:option];
}

- (unint64_t)imageCropAndScaleOption
{
  configuration = [(VNRequest *)self configuration];
  imageCropAndScaleOption = [configuration imageCropAndScaleOption];

  return imageCropAndScaleOption;
}

- (id)supportedIdentifiersAndReturnError:(id *)error
{
  v5 = objc_alloc_init(VNSession);
  v10 = 0;
  v6 = [(VNRequest *)self applicableDetectorAndOptions:&v10 forRevision:[(VNRequest *)self resolvedRevision] loadedInSession:v5 error:error];
  v7 = v10;
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    supportedDocumentElementIdentifiers = [v6 supportedDocumentElementIdentifiers];
    goto LABEL_7;
  }

  if (error)
  {
    [VNError errorForUnsupportedRevision:[(VNRequest *)self resolvedRevision] ofRequest:self];
    *error = supportedDocumentElementIdentifiers = 0;
  }

  else
  {
LABEL_6:
    supportedDocumentElementIdentifiers = 0;
  }

LABEL_7:

  return supportedDocumentElementIdentifiers;
}

@end