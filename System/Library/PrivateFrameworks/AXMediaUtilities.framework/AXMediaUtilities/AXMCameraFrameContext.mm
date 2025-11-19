@interface AXMCameraFrameContext
- (AXMCameraFrameContext)initWithCoder:(id)a3;
- (AXMCameraFrameContext)initWithVideoFieldOfView:(float)a3 zoomFactor:(float)a4 sourceWidth:(int64_t)a5 sourceHeight:(int64_t)a6 presentationTimestamp:(double)a7 attitude:(id)a8;
- (CGRect)motionCorrectedNormalizedFrame:(CGRect)a3 targetAttitude:(id)a4 targetZoomFactor:(float)a5 interfaceOrientation:(int64_t)a6 mirrored:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMCameraFrameContext

- (AXMCameraFrameContext)initWithVideoFieldOfView:(float)a3 zoomFactor:(float)a4 sourceWidth:(int64_t)a5 sourceHeight:(int64_t)a6 presentationTimestamp:(double)a7 attitude:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = AXMCameraFrameContext;
  v16 = [(AXMCameraFrameContext *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_videoFieldOfView = a3;
    v16->_videoZoomFactor = a4;
    v16->_videoSourceWidth = a5;
    v16->_videoSourceHeight = a6;
    v16->_presentationTimestamp = a7;
    objc_storeStrong(&v16->_deviceAttitude, a8);
  }

  return v17;
}

- (AXMCameraFrameContext)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AXMCameraFrameContext;
  v5 = [(AXMCameraFrameContext *)&v14 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"videoFieldOfView"];
    v5->_videoFieldOfView = v6;
    [v4 decodeFloatForKey:@"videoZoomFactor"];
    v5->_videoZoomFactor = v7;
    [v4 decodeFloatForKey:@"videoSourceWidth"];
    v5->_videoSourceWidth = v8;
    [v4 decodeFloatForKey:@"videoSourceHeight"];
    v5->_videoSourceHeight = v9;
    [v4 decodeDoubleForKey:@"presentationTimestamp"];
    v5->_presentationTimestamp = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceAttitude"];
    deviceAttitude = v5->_deviceAttitude;
    v5->_deviceAttitude = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(AXMCameraFrameContext *)self videoFieldOfView];
  [v4 encodeFloat:@"videoFieldOfView" forKey:?];
  [(AXMCameraFrameContext *)self videoZoomFactor];
  [v4 encodeFloat:@"videoZoomFactor" forKey:?];
  [v4 encodeInteger:-[AXMCameraFrameContext videoSourceWidth](self forKey:{"videoSourceWidth"), @"videoSourceWidth"}];
  [v4 encodeInteger:-[AXMCameraFrameContext videoSourceHeight](self forKey:{"videoSourceHeight"), @"videoSourceHeight"}];
  [(AXMCameraFrameContext *)self presentationTimestamp];
  [v4 encodeDouble:@"presentationTimestamp" forKey:?];
  v5 = [(AXMCameraFrameContext *)self deviceAttitude];
  [v4 encodeObject:v5 forKey:@"deviceAttitude"];
}

- (CGRect)motionCorrectedNormalizedFrame:(CGRect)a3 targetAttitude:(id)a4 targetZoomFactor:(float)a5 interfaceOrientation:(int64_t)a6 mirrored:(BOOL)a7
{
  v7 = a7;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a4;
  if (v15 && a5 != 0.0 && ([(AXMCameraFrameContext *)self videoZoomFactor], v16 != 0.0) && [(AXMCameraFrameContext *)self videoSourceHeight]&& [(AXMCameraFrameContext *)self videoSourceWidth]&& ([(AXMCameraFrameContext *)self deviceAttitude], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    [(AXMCameraFrameContext *)self videoFieldOfView];
    v24 = v23;
    [(AXMCameraFrameContext *)self videoZoomFactor];
    v26 = v24 / v25;
    v27 = v26 * [(AXMCameraFrameContext *)self videoSourceHeight];
    v28 = v27 / [(AXMCameraFrameContext *)self videoSourceWidth];
    [(AXMCameraFrameContext *)self videoFieldOfView];
    v30 = v29 / a5;
    v31 = v30 * [(AXMCameraFrameContext *)self videoSourceHeight];
    v32 = v31 / [(AXMCameraFrameContext *)self videoSourceWidth];
    v33 = [(AXMCameraFrameContext *)self deviceAttitude];
    *&v34 = v28;
    *&v35 = v26;
    *&v36 = v32;
    *&v37 = v30;
    [AXMGeometryUtilities motionCorrectedNormalizedFrame:v33 fromAttitude:v15 fromFieldOfViewX:a6 fromFieldOfViewY:v7 toAttitude:x toFieldOfViewX:y toFieldOfViewY:width interfaceOrientation:height mirrored:v34, v35, v36, v37];
    x = v38;
    y = v39;
    width = v40;
    height = v41;
  }

  else
  {
    v17 = AXMediaLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AXMCameraFrameContext motionCorrectedNormalizedFrame:v17 targetAttitude:? targetZoomFactor:? interfaceOrientation:? mirrored:?];
    }
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

@end