@interface VNCreateNeuralHashprintRequest
+ (BOOL)warmUpSession:(id)a3 error:(id *)a4;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
@end

@implementation VNCreateNeuralHashprintRequest

+ (BOOL)warmUpSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___VNCreateNeuralHashprintRequest;
  if (objc_msgSendSuper2(&v10, sel_warmUpSession_error_, v6, a4))
  {
    v7 = objc_alloc_init(VNCreateNeuralHashprintRequest);
    v8 = [(VNRequest *)v7 warmUpSession:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = v8;
  if (a3 == 1)
  {
    v10 = [v8 imageBufferAndReturnError:a5];
    if (v10 && [(VNRequest *)self validateImageBuffer:v10 ofNonZeroWidth:0 andHeight:0 error:a5])
    {
      v11 = [v9 session];
      v19 = 0;
      v12 = [(VNRequest *)self applicableDetectorAndOptions:&v19 forRevision:1 loadedInSession:v11 error:a5];
      v13 = v19;
      if (v12)
      {
        v20[0] = v10;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
        [v13 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

        v15 = [v9 qosClass];
        [(VNImageBasedRequest *)self regionOfInterest];
        v16 = [v12 processUsingQualityOfServiceClass:v15 options:v13 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
        v17 = v16 != 0;
        if (v16)
        {
          [(VNRequest *)self setResults:v16];
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else if (a5)
  {
    [VNError errorForUnsupportedRevision:a3 ofRequest:self];
    *a5 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end