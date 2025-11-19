@interface AXMTVideoPreviewLayer
+ (id)_layerForPointOfInterestAtPosition:(CGPoint)a3 previous:(BOOL)a4 bounds:(CGRect)a5;
- (AXMTVideoPreviewLayer)initWithAVCaptureSession:(id)a3 captureDeviceResolution:(CGSize)a4;
- (AXMTVideoPreviewLayer)initWithSampleBufferLayer;
- (CGRect)_videoPreviewBounds;
- (CGSize)_captureDeviceResolution;
- (void)_initWithResolution:(CGSize)a3;
- (void)_render:(id)a3;
- (void)_updateLayerGeometry;
- (void)drawSample:(opaqueCMSampleBuffer *)a3;
- (void)layoutSublayers;
- (void)renderFaceKitResult:(id)a3;
- (void)renderPointOfInterest:(CGPoint)a3 trackingArea:(CGRect)a4;
@end

@implementation AXMTVideoPreviewLayer

- (AXMTVideoPreviewLayer)initWithAVCaptureSession:(id)a3 captureDeviceResolution:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v16.receiver = self;
  v16.super_class = AXMTVideoPreviewLayer;
  v8 = [(AXMTVideoPreviewLayer *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(AXMTVideoPreviewLayer *)v8 _initWithResolution:width, height];
    v10 = [[AVCaptureVideoPreviewLayer alloc] initWithSession:v7];
    videoPreviewLayer = v9->__videoPreviewLayer;
    v9->__videoPreviewLayer = v10;

    [(AVCaptureVideoPreviewLayer *)v9->__videoPreviewLayer setVideoGravity:AVLayerVideoGravityResizeAspect];
    [(AVCaptureVideoPreviewLayer *)v9->__videoPreviewLayer setAnchorPoint:0.5, 0.5];
    memset(&v15, 0, sizeof(v15));
    CATransform3DMakeRotation(&v15, 3.14159265, 1.0, 0.0, 0.0);
    detectedFaceRectangleShapeLayer = v9->__detectedFaceRectangleShapeLayer;
    v14 = v15;
    [(CAShapeLayer *)detectedFaceRectangleShapeLayer setTransform:&v14];
    [(AVCaptureVideoPreviewLayer *)v9->__videoPreviewLayer addSublayer:v9->__detectedFaceRectangleShapeLayer];
    [(AXMTVideoPreviewLayer *)v9 addSublayer:v9->__videoPreviewLayer];
  }

  return v9;
}

- (AXMTVideoPreviewLayer)initWithSampleBufferLayer
{
  v7.receiver = self;
  v7.super_class = AXMTVideoPreviewLayer;
  v2 = [(AXMTVideoPreviewLayer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(AXMTVideoPreviewLayer *)v2 _initWithResolution:1280.0, 720.0];
    v4 = objc_alloc_init(AVSampleBufferDisplayLayer);
    sampleBufferDisplayLayer = v3->__sampleBufferDisplayLayer;
    v3->__sampleBufferDisplayLayer = v4;

    [(AVSampleBufferDisplayLayer *)v3->__sampleBufferDisplayLayer setVideoGravity:AVLayerVideoGravityResizeAspect];
    [(AVSampleBufferDisplayLayer *)v3->__sampleBufferDisplayLayer addSublayer:v3->__detectedFaceRectangleShapeLayer];
    [(AXMTVideoPreviewLayer *)v3 addSublayer:v3->__sampleBufferDisplayLayer];
  }

  return v3;
}

- (void)_initWithResolution:(CGSize)a3
{
  self->__captureDeviceResolution = a3;
  v4 = objc_opt_new();
  detectedFaceRectangleShapeLayer = self->__detectedFaceRectangleShapeLayer;
  self->__detectedFaceRectangleShapeLayer = v4;

  [(CAShapeLayer *)self->__detectedFaceRectangleShapeLayer setName:@"RectangleOutlineLayer"];
  [(CAShapeLayer *)self->__detectedFaceRectangleShapeLayer setAnchorPoint:0.5, 0.5];
  [(CAShapeLayer *)self->__detectedFaceRectangleShapeLayer setFillColor:0];
  [(CAShapeLayer *)self->__detectedFaceRectangleShapeLayer setLineWidth:5.0];
  LODWORD(v6) = 1060320051;
  [(CAShapeLayer *)self->__detectedFaceRectangleShapeLayer setShadowOpacity:v6];
  [(CAShapeLayer *)self->__detectedFaceRectangleShapeLayer setShadowRadius:5.0];
  v7 = objc_opt_new();
  detectedFaceLandmarksShapeLayer = self->__detectedFaceLandmarksShapeLayer;
  self->__detectedFaceLandmarksShapeLayer = v7;

  [(CAShapeLayer *)self->__detectedFaceLandmarksShapeLayer setName:@"FaceLandmarksLayer"];
  [(CAShapeLayer *)self->__detectedFaceLandmarksShapeLayer setAnchorPoint:0.5, 0.5];
  [(CAShapeLayer *)self->__detectedFaceLandmarksShapeLayer setFillColor:0];
  [(CAShapeLayer *)self->__detectedFaceLandmarksShapeLayer setLineWidth:3.0];
  LODWORD(v9) = 1060320051;
  [(CAShapeLayer *)self->__detectedFaceLandmarksShapeLayer setShadowOpacity:v9];
  [(CAShapeLayer *)self->__detectedFaceLandmarksShapeLayer setShadowRadius:5.0];
  v10 = +[NSMutableArray array];
  previousPointsOfInterest = self->__previousPointsOfInterest;
  self->__previousPointsOfInterest = v10;

  v12 = +[NSMutableArray array];
  previousPointOfInterestShapeLayers = self->__previousPointOfInterestShapeLayers;
  self->__previousPointOfInterestShapeLayers = v12;

  v14 = +[NSMutableArray array];
  multiPointsOfInterest = self->__multiPointsOfInterest;
  self->__multiPointsOfInterest = v14;

  v16 = +[NSMutableArray array];
  multiPointsOfInterestShapeLayers = self->__multiPointsOfInterestShapeLayers;
  self->__multiPointsOfInterestShapeLayers = v16;

  v18 = [objc_opt_class() _layerForPointOfInterestAtPosition:0 previous:0.0 bounds:{0.0, NSZeroRect.origin.x, NSZeroRect.origin.y, NSZeroRect.size.width, NSZeroRect.size.height}];
  pointOfInterestShapeLayer = self->__pointOfInterestShapeLayer;
  self->__pointOfInterestShapeLayer = v18;

  v20 = objc_opt_new();
  trackingAreaShapeLayer = self->__trackingAreaShapeLayer;
  self->__trackingAreaShapeLayer = v20;

  [(CAShapeLayer *)self->__trackingAreaShapeLayer setName:@"TrackingAreaLayer"];
  [(CAShapeLayer *)self->__trackingAreaShapeLayer setFillColor:0];
  [(CAShapeLayer *)self->__trackingAreaShapeLayer setLineWidth:3.0];
  v22 = objc_alloc_init(CATextLayer);
  yawPitchRollTextLayer = self->__yawPitchRollTextLayer;
  self->__yawPitchRollTextLayer = v22;

  [(CATextLayer *)self->__yawPitchRollTextLayer setAlignmentMode:kCAAlignmentCenter];
  v24 = objc_alloc_init(CATextLayer);
  expressionValuesTextLayer = self->__expressionValuesTextLayer;
  self->__expressionValuesTextLayer = v24;

  [(CATextLayer *)self->__expressionValuesTextLayer setAlignmentMode:kCAAlignmentLeft];
  [(CATextLayer *)self->__yawPitchRollTextLayer setFontSize:20.0];
  [(CATextLayer *)self->__expressionValuesTextLayer setFontSize:20.0];
  v26 = +[UIColor blackColor];
  -[CATextLayer setForegroundColor:](self->__yawPitchRollTextLayer, "setForegroundColor:", [v26 CGColor]);

  v27 = +[UIColor whiteColor];
  -[CATextLayer setForegroundColor:](self->__expressionValuesTextLayer, "setForegroundColor:", [v27 CGColor]);

  CATransform3DMakeScale(&v38, 1.0, -1.0, 1.0);
  v28 = self->__yawPitchRollTextLayer;
  v37 = v38;
  [(CATextLayer *)v28 setTransform:&v37];
  CATransform3DMakeScale(&v36, 1.0, -1.0, 1.0);
  v29 = self->__expressionValuesTextLayer;
  v37 = v36;
  [(CATextLayer *)v29 setTransform:&v37];
  v30 = +[UIColor greenColor];
  v31 = [v30 colorWithAlphaComponent:0.7];
  -[CAShapeLayer setStrokeColor:](self->__detectedFaceRectangleShapeLayer, "setStrokeColor:", [v31 CGColor]);

  v32 = +[UIColor yellowColor];
  v33 = [v32 colorWithAlphaComponent:0.7];
  -[CAShapeLayer setStrokeColor:](self->__detectedFaceLandmarksShapeLayer, "setStrokeColor:", [v33 CGColor]);

  v34 = +[UIColor blueColor];
  v35 = [v34 colorWithAlphaComponent:0.7];
  -[CAShapeLayer setStrokeColor:](self->__trackingAreaShapeLayer, "setStrokeColor:", [v35 CGColor]);

  [(CAShapeLayer *)self->__detectedFaceRectangleShapeLayer addSublayer:self->__detectedFaceLandmarksShapeLayer];
  [(CAShapeLayer *)self->__detectedFaceRectangleShapeLayer addSublayer:self->__trackingAreaShapeLayer];
  [(CAShapeLayer *)self->__detectedFaceRectangleShapeLayer addSublayer:self->__pointOfInterestShapeLayer];
  [(CAShapeLayer *)self->__detectedFaceRectangleShapeLayer addSublayer:self->__yawPitchRollTextLayer];
  [(CAShapeLayer *)self->__detectedFaceRectangleShapeLayer addSublayer:self->__expressionValuesTextLayer];
  [(AXMTVideoPreviewLayer *)self setMasksToBounds:1];
}

- (void)drawSample:(opaqueCMSampleBuffer *)a3
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 1u);
  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
  CFDictionarySetValue(ValueAtIndex, kCMSampleAttachmentKey_DisplayImmediately, kCFBooleanTrue);
  if (!CMSampleBufferIsValid(a3))
  {
    v7 = AXSSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000BE34(a3, v7);
    }
  }

  v8 = [(AXMTVideoPreviewLayer *)self _sampleBufferDisplayLayer];
  [v8 enqueueSampleBuffer:a3];
}

- (void)renderPointOfInterest:(CGPoint)a3 trackingArea:(CGRect)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000AB28;
  v4[3] = &unk_100048C88;
  v4[4] = self;
  v5 = a4;
  v6 = a3;
  [(AXMTVideoPreviewLayer *)self _render:v4];
}

- (void)renderFaceKitResult:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000AFE8;
  v4[3] = &unk_100048948;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(AXMTVideoPreviewLayer *)v5 _render:v4];
}

- (void)layoutSublayers
{
  +[CATransaction begin];
  [CATransaction setValue:&__kCFBooleanTrue forKey:kCATransactionDisableActions];
  [(AXMTVideoPreviewLayer *)self bounds];
  v4 = v3;
  [(AXMTVideoPreviewLayer *)self bounds];
  v6 = v5;
  v7 = [(AXMTVideoPreviewLayer *)self _videoPreviewLayer];
  [v7 setFrame:{0.0, 0.0, v4, v6}];

  [(AXMTVideoPreviewLayer *)self bounds];
  v9 = v8;
  [(AXMTVideoPreviewLayer *)self bounds];
  v11 = v10;
  v12 = [(AXMTVideoPreviewLayer *)self _sampleBufferDisplayLayer];
  [v12 setFrame:{0.0, 0.0, v9, v11}];
}

+ (id)_layerForPointOfInterestAtPosition:(CGPoint)a3 previous:(BOOL)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v7 = a4;
  y = a3.y;
  x = a3.x;
  v10 = objc_opt_new();
  v11 = v10;
  if (v7)
  {
    v12 = @"PreviousPointOfInterestLayer";
  }

  else
  {
    v12 = @"PointOfInterestLayer";
  }

  [v10 setName:v12];
  v21.origin.x = -10.0;
  v21.origin.y = -10.0;
  v21.size.width = 20.0;
  v21.size.height = 20.0;
  v13 = CGPathCreateWithEllipseInRect(v21, 0);
  if (v13)
  {
    v14 = v13;
    [v11 setPath:v13];
    CFRelease(v14);
  }

  v15 = +[UIColor redColor];
  v16 = v15;
  v17 = 0.7;
  if (v7)
  {
    v17 = 0.2;
  }

  v18 = [v15 colorWithAlphaComponent:v17];
  [v11 setFillColor:{objc_msgSend(v18, "CGColor")}];

  [v11 setPosition:{x * width, y * height}];

  return v11;
}

- (void)_render:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (+[NSThread isMainThread])
    {
      v3[2](v3);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000BA1C;
      block[3] = &unk_100048B80;
      v5 = v3;
      dispatch_sync(&_dispatch_main_q, block);
    }
  }
}

- (void)_updateLayerGeometry
{
  [CATransaction setValue:&__kCFBooleanTrue forKey:kCATransactionDisableActions];
  v3 = [(AXMTVideoPreviewLayer *)self _videoPreviewLayer];
  [v3 rectForMetadataOutputRectOfInterest:{0.0, 0.0, 1.0, 1.0}];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(AXMTVideoPreviewLayer *)self set_videoPreviewBounds:v5, v7, v9, v11];
}

- (CGSize)_captureDeviceResolution
{
  width = self->__captureDeviceResolution.width;
  height = self->__captureDeviceResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)_videoPreviewBounds
{
  x = self->__videoPreviewBounds.origin.x;
  y = self->__videoPreviewBounds.origin.y;
  width = self->__videoPreviewBounds.size.width;
  height = self->__videoPreviewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end