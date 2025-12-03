@interface AXMCameraFrameContext
- (AXMCameraFrameContext)initWithCoder:(id)coder;
- (AXMCameraFrameContext)initWithVideoFieldOfView:(float)view zoomFactor:(float)factor sourceWidth:(int64_t)width sourceHeight:(int64_t)height presentationTimestamp:(double)timestamp attitude:(id)attitude;
- (CGRect)motionCorrectedNormalizedFrame:(CGRect)frame targetAttitude:(id)attitude targetZoomFactor:(float)factor interfaceOrientation:(int64_t)orientation mirrored:(BOOL)mirrored;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMCameraFrameContext

- (AXMCameraFrameContext)initWithVideoFieldOfView:(float)view zoomFactor:(float)factor sourceWidth:(int64_t)width sourceHeight:(int64_t)height presentationTimestamp:(double)timestamp attitude:(id)attitude
{
  attitudeCopy = attitude;
  v19.receiver = self;
  v19.super_class = AXMCameraFrameContext;
  v16 = [(AXMCameraFrameContext *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_videoFieldOfView = view;
    v16->_videoZoomFactor = factor;
    v16->_videoSourceWidth = width;
    v16->_videoSourceHeight = height;
    v16->_presentationTimestamp = timestamp;
    objc_storeStrong(&v16->_deviceAttitude, attitude);
  }

  return v17;
}

- (AXMCameraFrameContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = AXMCameraFrameContext;
  v5 = [(AXMCameraFrameContext *)&v14 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"videoFieldOfView"];
    v5->_videoFieldOfView = v6;
    [coderCopy decodeFloatForKey:@"videoZoomFactor"];
    v5->_videoZoomFactor = v7;
    [coderCopy decodeFloatForKey:@"videoSourceWidth"];
    v5->_videoSourceWidth = v8;
    [coderCopy decodeFloatForKey:@"videoSourceHeight"];
    v5->_videoSourceHeight = v9;
    [coderCopy decodeDoubleForKey:@"presentationTimestamp"];
    v5->_presentationTimestamp = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceAttitude"];
    deviceAttitude = v5->_deviceAttitude;
    v5->_deviceAttitude = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AXMCameraFrameContext *)self videoFieldOfView];
  [coderCopy encodeFloat:@"videoFieldOfView" forKey:?];
  [(AXMCameraFrameContext *)self videoZoomFactor];
  [coderCopy encodeFloat:@"videoZoomFactor" forKey:?];
  [coderCopy encodeInteger:-[AXMCameraFrameContext videoSourceWidth](self forKey:{"videoSourceWidth"), @"videoSourceWidth"}];
  [coderCopy encodeInteger:-[AXMCameraFrameContext videoSourceHeight](self forKey:{"videoSourceHeight"), @"videoSourceHeight"}];
  [(AXMCameraFrameContext *)self presentationTimestamp];
  [coderCopy encodeDouble:@"presentationTimestamp" forKey:?];
  deviceAttitude = [(AXMCameraFrameContext *)self deviceAttitude];
  [coderCopy encodeObject:deviceAttitude forKey:@"deviceAttitude"];
}

- (CGRect)motionCorrectedNormalizedFrame:(CGRect)frame targetAttitude:(id)attitude targetZoomFactor:(float)factor interfaceOrientation:(int64_t)orientation mirrored:(BOOL)mirrored
{
  mirroredCopy = mirrored;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  attitudeCopy = attitude;
  if (attitudeCopy && factor != 0.0 && ([(AXMCameraFrameContext *)self videoZoomFactor], v16 != 0.0) && [(AXMCameraFrameContext *)self videoSourceHeight]&& [(AXMCameraFrameContext *)self videoSourceWidth]&& ([(AXMCameraFrameContext *)self deviceAttitude], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    [(AXMCameraFrameContext *)self videoFieldOfView];
    v24 = v23;
    [(AXMCameraFrameContext *)self videoZoomFactor];
    v26 = v24 / v25;
    v27 = v26 * [(AXMCameraFrameContext *)self videoSourceHeight];
    v28 = v27 / [(AXMCameraFrameContext *)self videoSourceWidth];
    [(AXMCameraFrameContext *)self videoFieldOfView];
    v30 = v29 / factor;
    v31 = v30 * [(AXMCameraFrameContext *)self videoSourceHeight];
    v32 = v31 / [(AXMCameraFrameContext *)self videoSourceWidth];
    deviceAttitude = [(AXMCameraFrameContext *)self deviceAttitude];
    *&v34 = v28;
    *&v35 = v26;
    *&v36 = v32;
    *&v37 = v30;
    [AXMGeometryUtilities motionCorrectedNormalizedFrame:deviceAttitude fromAttitude:attitudeCopy fromFieldOfViewX:orientation fromFieldOfViewY:mirroredCopy toAttitude:x toFieldOfViewX:y toFieldOfViewY:width interfaceOrientation:height mirrored:v34, v35, v36, v37];
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