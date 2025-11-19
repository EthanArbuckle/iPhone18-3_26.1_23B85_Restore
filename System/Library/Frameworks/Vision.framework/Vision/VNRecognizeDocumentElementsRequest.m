@interface VNRecognizeDocumentElementsRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (VNRecognizeDocumentElementsRequestElementConfiguration)documentElements;
- (VNRecognizeDocumentElementsRequestElementConfiguration)machineReadableCodeElements;
- (VNRecognizeDocumentElementsRequestElementConfiguration)textElements;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)supportedIdentifiersAndReturnError:(id *)a3;
- (unint64_t)imageCropAndScaleOption;
- (void)setImageCropAndScaleOption:(unint64_t)a3;
@end

@implementation VNRecognizeDocumentElementsRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [VNError errorForUnsupportedRevision:a3 ofRequest:self];
  }

  return 0;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNRecognizeDocumentElementsRequest *)self imageCropAndScaleOption];
  if (v5 == [v4 imageCropAndScaleOption] && (-[VNRecognizeDocumentElementsRequest documentElements](self, "documentElements"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "documentElements"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) != 0) && (-[VNRecognizeDocumentElementsRequest textElements](self, "textElements"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "textElements"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, (v11 & 1) != 0) && (-[VNRecognizeDocumentElementsRequest machineReadableCodeElements](self, "machineReadableCodeElements"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "machineReadableCodeElements"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, (v14 & 1) != 0))
  {
    v17.receiver = self;
    v17.super_class = VNRecognizeDocumentElementsRequest;
    v15 = [(VNImageBasedRequest *)&v17 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v16.receiver = self;
  v16.super_class = VNRecognizeDocumentElementsRequest;
  v6 = [(VNRequest *)&v16 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v7 = v6;
  if (a3 == 1)
  {
    v8 = [v6 objectForKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
    [v7 setObject:v8 forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_GatingOriginatingRequestSpecifier"];

    v9 = [(VNRecognizeDocumentElementsRequest *)self documentElements];
    if ([v9 recognize])
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingEnabled"];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "generateSegmentationMask")}];
      [v7 setObject:v10 forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingGenerateSegmentationMask"];
    }

    v11 = [(VNRecognizeDocumentElementsRequest *)self textElements];
    if ([v11 recognize])
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingEnabled"];
      v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "generateSegmentationMask")}];
      [v7 setObject:v12 forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingGenerateSegmentationMask"];
    }

    v13 = [(VNRecognizeDocumentElementsRequest *)self machineReadableCodeElements];
    if ([v13 recognize])
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingEnabled"];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v13, "generateSegmentationMask")}];
      [v7 setObject:v14 forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingGenerateSegmentationMask"];
    }
  }

  return v7;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNSmartCam5GatingDetectorType";
    v5 = @"VNSmartCam5GatingDetectorType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (VNRecognizeDocumentElementsRequestElementConfiguration)machineReadableCodeElements
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 machineReadableCodeElements];

  return v3;
}

- (VNRecognizeDocumentElementsRequestElementConfiguration)textElements
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 textElements];

  return v3;
}

- (VNRecognizeDocumentElementsRequestElementConfiguration)documentElements
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 documentElements];

  return v3;
}

- (void)setImageCropAndScaleOption:(unint64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setImageCropAndScaleOption:a3];
}

- (unint64_t)imageCropAndScaleOption
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 imageCropAndScaleOption];

  return v3;
}

- (id)supportedIdentifiersAndReturnError:(id *)a3
{
  v5 = objc_alloc_init(VNSession);
  v10 = 0;
  v6 = [(VNRequest *)self applicableDetectorAndOptions:&v10 forRevision:[(VNRequest *)self resolvedRevision] loadedInSession:v5 error:a3];
  v7 = v10;
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 supportedDocumentElementIdentifiers];
    goto LABEL_7;
  }

  if (a3)
  {
    [VNError errorForUnsupportedRevision:[(VNRequest *)self resolvedRevision] ofRequest:self];
    *a3 = v8 = 0;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

@end