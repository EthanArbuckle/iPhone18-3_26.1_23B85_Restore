@interface AXMModelDetectorNode
- (AXMModelDetectorNode)initWithCoder:(id)coder;
- (BOOL)_loadModel:(id *)model;
- (NSString)modelIdentifier;
- (void)encodeWithCoder:(id)coder;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
- (void)nodeInitialize;
- (void)setModelURL:(id)l;
@end

@implementation AXMModelDetectorNode

- (void)nodeInitialize
{
  v2.receiver = self;
  v2.super_class = AXMModelDetectorNode;
  [(AXMEvaluationNode *)&v2 nodeInitialize];
}

- (AXMModelDetectorNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AXMModelDetectorNode;
  v5 = [(AXMEvaluationNode *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"modelURL"];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
      modelURL = v5->_modelURL;
      v5->_modelURL = v7;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AXMModelDetectorNode;
  coderCopy = coder;
  [(AXMEvaluationNode *)&v6 encodeWithCoder:coderCopy];
  v5 = [(NSURL *)self->_modelURL path:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"modelURL"];
}

- (NSString)modelIdentifier
{
  lastPathComponent = [(NSURL *)self->_modelURL lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (void)setModelURL:(id)l
{
  lCopy = l;
  if (([(NSURL *)self->_modelURL isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_modelURL, l);
    model = self->_model;
    self->_model = 0;
  }
}

- (BOOL)_loadModel:(id *)model
{
  v57 = *MEMORY[0x1E69E9840];
  if (self->_model)
  {
    v4 = 0;
    if (!model)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  modelURL = [(AXMModelDetectorNode *)self modelURL];

  if (!modelURL)
  {
    v17 = @"Could not load model. modelURL was nil";
    goto LABEL_17;
  }

  if (!getMLModelClass())
  {
    v17 = @"Could not load model. MLModelSoft unexpectedly NULL";
    goto LABEL_17;
  }

  getMLModelClass();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = @"Could not load model. MLModelSoft does not respond to modelWithContentsOfURL:error:";
    goto LABEL_17;
  }

  if (!getVNCoreMLModelClass())
  {
    v17 = @"Could not load model. VNCoreMLModelSoft unexpectedly NULL";
    goto LABEL_17;
  }

  getVNCoreMLModelClass();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = @"Could not load model. VNCoreMLModelSoft does not respond to modelForMLModel:error:";
LABEL_17:
    v4 = _AXMMakeError(0, v17, v7, v8, v9, v10, v11, v12, v50);
    if (!model)
    {
      goto LABEL_19;
    }

LABEL_18:
    v18 = v4;
    *model = v4;
    goto LABEL_19;
  }

  MLModelClass = getMLModelClass();
  modelURL2 = [(AXMModelDetectorNode *)self modelURL];
  v54 = 0;
  v15 = [MLModelClass modelWithContentsOfURL:modelURL2 error:&v54];
  v16 = v54;

  if (!v15 || v16)
  {
    v20 = AXMediaLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v20, OS_LOG_TYPE_DEFAULT, "CoreML model may need to be compiled first. Attempting to compile...", buf, 2u);
    }

    v21 = getMLModelClass();
    modelURL3 = [(AXMModelDetectorNode *)self modelURL];
    v53 = 0;
    v23 = [v21 compileModelAtURL:modelURL3 error:&v53];
    v24 = v53;

    if (!v23 || v24)
    {
      modelURL4 = [(AXMModelDetectorNode *)self modelURL];
      v4 = _AXMMakeError(0, @"Failed to compile model on the fly at URL: %@. error:%@\nTried to compile model due to original error: %@", v35, v36, v37, v38, v39, v40, modelURL4);

      v27 = v15;
    }

    else
    {

      v25 = AXMediaLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        path = [v23 path];
        *buf = 138412290;
        v56 = path;
        _os_log_impl(&dword_1AE37B000, v25, OS_LOG_TYPE_DEFAULT, "Successfully compiled CoreML model to %@", buf, 0xCu);
      }

      v52 = 0;
      v27 = [getMLModelClass() modelWithContentsOfURL:v23 error:&v52];
      modelURL4 = v52;

      if (v27 && !modelURL4)
      {
        v4 = 0;
LABEL_32:

        v15 = v27;
        goto LABEL_33;
      }

      v4 = _AXMMakeError(0, @"Could not load model at URL: %@. error:%@", v29, v30, v31, v32, v33, v34, v23);
    }

    goto LABEL_32;
  }

  v4 = 0;
LABEL_33:
  if (v15)
  {
    if (!v4)
    {
      v51 = 0;
      v41 = [getVNCoreMLModelClass() modelForMLModel:v15 error:&v51];
      v42 = v51;
      model = self->_model;
      self->_model = v41;

      if (!self->_model || (v4 = 0, v42))
      {
        v4 = _AXMMakeError(0, @"Could not craete VNCoreMLModel. error:%@", v44, v45, v46, v47, v48, v49, v42);
      }
    }
  }

  if (model)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v4 == 0;
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  v50[1] = *MEMORY[0x1E69E9840];
  evaluateCopy = evaluate;
  metricsCopy = metrics;
  v49.receiver = self;
  v49.super_class = AXMModelDetectorNode;
  [(AXMEvaluationNode *)&v49 evaluate:evaluateCopy metrics:metricsCopy];
  v8 = objc_autoreleasePoolPush();
  if (getVNClassificationObservationClass())
  {
    if (getVNCoreMLRequestClass())
    {
      modelURL = [(AXMModelDetectorNode *)self modelURL];

      if (modelURL)
      {
        v48 = 0;
        v10 = [(AXMModelDetectorNode *)self _loadModel:&v48];
        v11 = v48;
        if (v10)
        {
          v12 = [objc_alloc(getVNCoreMLRequestClass()) initWithModel:self->_model];
          [v12 setImageCropAndScaleOption:0];
          v50[0] = v12;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
          v47 = v11;
          [(AXMEvaluationNode *)self evaluateRequests:v13 withContext:evaluateCopy requestHandlerOptions:0 metrics:metricsCopy error:&v47];
          v14 = v47;

          results = [v12 results];
          firstObject = [results firstObject];

          getVNClassificationObservationClass();
          if (objc_opt_isKindOfClass())
          {
            v17 = firstObject;
            [v17 confidence];
            v19 = v18;
            [(AXMEvaluationNode *)self minimumConfidence];
            if (v20 <= v19)
            {
              modelIdentifier = [(AXMModelDetectorNode *)self modelIdentifier];
              v44 = modelIdentifier;
              v45 = @"UnknownModel";
              if (modelIdentifier)
              {
                v45 = modelIdentifier;
              }

              v46 = v45;

              [evaluateCopy size];
              v21 = [AXMVisionFeature featureWithVisionRequest:v12 modelClassificationResult:v17 modelIdentifier:v46 canvasSize:?];

              [evaluateCopy appendFeature:v21];
            }

            else
            {
              v21 = AXMediaLogResults();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                [(AXMModelDetectorNode *)self evaluate:v17 metrics:v21];
              }
            }
          }

          v11 = v14;
        }

        else
        {
          v12 = AXMediaLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [AXMModelDetectorNode evaluate:v11 metrics:v12];
          }
        }
      }

      else
      {
        v11 = AXMediaLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(AXMModelDetectorNode *)v11 evaluate:v36 metrics:v37, v38, v39, v40, v41, v42];
        }
      }
    }

    else
    {
      v11 = AXMediaLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(AXMModelDetectorNode *)v11 evaluate:v29 metrics:v30, v31, v32, v33, v34, v35];
      }
    }
  }

  else
  {
    v11 = AXMediaLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AXMModelDetectorNode *)v11 evaluate:v22 metrics:v23, v24, v25, v26, v27, v28];
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (void)evaluate:(uint64_t)a1 metrics:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

- (void)evaluate:(NSObject *)a3 metrics:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 minimumConfidence];
  v6 = 134218242;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1AE37B000, a3, OS_LOG_TYPE_DEBUG, "Discarding classification result due to low confidence. minimumAllowed:%.2f . %@", &v6, 0x16u);
}

@end