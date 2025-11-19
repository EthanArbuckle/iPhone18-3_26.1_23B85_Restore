@interface VNClassifyMemeImageRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)supportedIdentifiersAndReturnError:(id *)a3;
@end

@implementation VNClassifyMemeImageRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v10 = [v8 session];
    v18 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v18 forRevision:a3 loadedInSession:v10 error:a5];
    v12 = v18;
    if (v11)
    {
      v19[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v14 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v15 = [v11 processUsingQualityOfServiceClass:v14 options:v12 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
      v16 = v15 != 0;
      if (v15)
      {
        [(VNRequest *)self setResults:v15];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 3)
  {
    v4 = @"VNMemeClassifierType";
    v5 = @"VNMemeClassifierType";
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
    v8 = [v6 supportedIdentifiersWithOptions:v7 error:a3];
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