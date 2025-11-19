@interface AXMRectangleDetectorNode
- (AXMRectangleDetectorNode)initWithCoder:(id)a3;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (CGPoint)cameraOpticalOrigin;
- (void)encodeWithCoder:(id)a3;
- (void)evaluate:(id)a3 metrics:(id)a4;
- (void)nodeInitialize;
- (void)setMaximumNumberOfRects:(int64_t)a3;
@end

@implementation AXMRectangleDetectorNode

- (void)nodeInitialize
{
  v3.receiver = self;
  v3.super_class = AXMRectangleDetectorNode;
  [(AXMEvaluationNode *)&v3 nodeInitialize];
  [(AXMRectangleDetectorNode *)self setCameraPixelFocalLength:0.0];
  [(AXMRectangleDetectorNode *)self setCameraOpticalOrigin:0.0, 0.0];
  [(AXMRectangleDetectorNode *)self setMinimumAspectRatio:0.5];
  [(AXMRectangleDetectorNode *)self setMaximumAspectRatio:0.5];
  [(AXMRectangleDetectorNode *)self setQuadratureTolerance:15.0];
  [(AXMRectangleDetectorNode *)self setMinimumSize:0.2];
  [(AXMEvaluationNode *)self setMinimumConfidence:0.5];
  [(AXMRectangleDetectorNode *)self setMaximumNumberOfRects:1];
}

- (AXMRectangleDetectorNode)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AXMRectangleDetectorNode;
  v5 = [(AXMEvaluationNode *)&v7 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"cameraPixelFocalLength"];
    [(AXMRectangleDetectorNode *)v5 setCameraPixelFocalLength:?];
    [v4 axmDecodePointForKey:@"cameraOpticalOrigin"];
    [(AXMRectangleDetectorNode *)v5 setCameraOpticalOrigin:?];
    [v4 decodeDoubleForKey:@"minimumAspectRatio"];
    [(AXMRectangleDetectorNode *)v5 setMinimumAspectRatio:?];
    [v4 decodeDoubleForKey:@"maximumAspectRatio"];
    [(AXMRectangleDetectorNode *)v5 setMaximumAspectRatio:?];
    [v4 decodeDoubleForKey:@"quadratureTolerance"];
    [(AXMRectangleDetectorNode *)v5 setQuadratureTolerance:?];
    [v4 decodeDoubleForKey:@"minimumSize"];
    [(AXMRectangleDetectorNode *)v5 setMinimumSize:?];
    [v4 decodeDoubleForKey:@"minimumConfidence"];
    [(AXMEvaluationNode *)v5 setMinimumConfidence:?];
    -[AXMRectangleDetectorNode setMaximumNumberOfRects:](v5, "setMaximumNumberOfRects:", [v4 decodeIntegerForKey:@"maximumNumber"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXMRectangleDetectorNode;
  v4 = a3;
  [(AXMEvaluationNode *)&v5 encodeWithCoder:v4];
  [(AXMRectangleDetectorNode *)self cameraPixelFocalLength:v5.receiver];
  [v4 encodeDouble:@"cameraPixelFocalLength" forKey:?];
  [(AXMRectangleDetectorNode *)self cameraOpticalOrigin];
  [v4 axmEncodePoint:@"cameraOpticalOrigin" forKey:?];
  [(AXMRectangleDetectorNode *)self minimumAspectRatio];
  [v4 encodeDouble:@"minimumAspectRatio" forKey:?];
  [(AXMRectangleDetectorNode *)self maximumAspectRatio];
  [v4 encodeDouble:@"maximumAspectRatio" forKey:?];
  [(AXMRectangleDetectorNode *)self quadratureTolerance];
  [v4 encodeDouble:@"quadratureTolerance" forKey:?];
  [(AXMRectangleDetectorNode *)self minimumSize];
  [v4 encodeDouble:@"minimumSize" forKey:?];
  [v4 encodeInteger:-[AXMRectangleDetectorNode maximumNumberOfRects](self forKey:{"maximumNumberOfRects"), @"maximumNumber"}];
}

- (void)setMaximumNumberOfRects:(int64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  self->_maximumNumberOfRects = v3;
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNDetectRectanglesRequestClass())
  {
    v5.receiver = self;
    v5.super_class = AXMRectangleDetectorNode;
    return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMRectangleDetectorNode *)v4 validateVisionKitSoftLinkSymbols];
    }

    return 0;
  }
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v60[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v47.receiver = self;
  v47.super_class = AXMRectangleDetectorNode;
  [(AXMEvaluationNode *)&v47 evaluate:v6 metrics:v7];
  context = objc_autoreleasePoolPush();
  [(AXMRectangleDetectorNode *)self cameraPixelFocalLength];
  v9 = v8;
  [(AXMRectangleDetectorNode *)self cameraOpticalOrigin];
  v11 = v10;
  [(AXMRectangleDetectorNode *)self cameraPixelFocalLength];
  v13 = v12;
  [(AXMRectangleDetectorNode *)self cameraOpticalOrigin];
  *&v14 = v9;
  *&v15 = v14;
  *&v16 = v11;
  *(&v15 + 1) = v16;
  v17 = v13;
  LODWORD(v18) = 0;
  *(&v18 + 1) = v17;
  *&v20 = v19;
  *(&v18 + 1) = v20;
  v46[0] = v15;
  v46[1] = v18;
  v46[2] = xmmword_1AE451750;
  v41 = [MEMORY[0x1E695DEF0] dataWithBytes:v46 length:48];
  v21 = objc_alloc_init(getVNDetectRectanglesRequestClass());
  [(AXMRectangleDetectorNode *)self minimumAspectRatio];
  *&v22 = v22;
  [v21 setMinimumAspectRatio:v22];
  [(AXMRectangleDetectorNode *)self maximumAspectRatio];
  *&v23 = v23;
  [v21 setMaximumAspectRatio:v23];
  [(AXMRectangleDetectorNode *)self quadratureTolerance];
  *&v24 = v24;
  [v21 setQuadratureTolerance:v24];
  [(AXMRectangleDetectorNode *)self minimumSize];
  *&v25 = v25;
  [v21 setMinimumSize:v25];
  [(AXMEvaluationNode *)self minimumConfidence];
  *&v26 = v26;
  [v21 setMinimumConfidence:v26];
  [v21 setMaximumObservations:{-[AXMRectangleDetectorNode maximumNumberOfRects](self, "maximumNumberOfRects")}];
  v60[0] = v21;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v28 = getVNImageOptionCameraIntrinsicsSymbolLoc_ptr;
  v56 = getVNImageOptionCameraIntrinsicsSymbolLoc_ptr;
  if (!getVNImageOptionCameraIntrinsicsSymbolLoc_ptr)
  {
    v48 = MEMORY[0x1E69E9820];
    v49 = 3221225472;
    v50 = __getVNImageOptionCameraIntrinsicsSymbolLoc_block_invoke;
    v51 = &unk_1E7A1C700;
    v52 = &v53;
    v29 = VisionLibrary_4();
    v30 = dlsym(v29, "VNImageOptionCameraIntrinsics");
    *(v52[1] + 24) = v30;
    getVNImageOptionCameraIntrinsicsSymbolLoc_ptr = *(v52[1] + 24);
    v28 = v54[3];
  }

  _Block_object_dispose(&v53, 8);
  if (!v28)
  {
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v58 = *v28;
  v59 = v41;
  v31 = MEMORY[0x1E695DF20];
  v32 = v58;
  v33 = [v31 dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  [(AXMEvaluationNode *)self evaluateRequests:v27 withContext:v6 requestHandlerOptions:v33 metrics:v7 error:0];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v34 = [v21 results];
  v35 = [v34 countByEnumeratingWithState:&v42 objects:v57 count:16];
  if (v35)
  {
    v36 = *v43;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v42 + 1) + 8 * i);
        [v6 size];
        v39 = [AXMVisionFeature featureWithVisionRequest:v21 rectangleResult:v38 canvasSize:?];
        [v6 appendFeature:v39];
      }

      v35 = [v34 countByEnumeratingWithState:&v42 objects:v57 count:16];
    }

    while (v35);
  }

  objc_autoreleasePoolPop(context);
}

- (CGPoint)cameraOpticalOrigin
{
  x = self->_cameraOpticalOrigin.x;
  y = self->_cameraOpticalOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end