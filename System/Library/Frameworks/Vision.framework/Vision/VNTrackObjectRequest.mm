@interface VNTrackObjectRequest
+ (id)trackerTypeForRequestRevision:(unint64_t)a3 error:(id *)a4;
+ (unsigned)frameCVPixelBufferFormatForRequestRevision:(unint64_t)a3;
- (CGSize)trackingFrameSizeInPixels;
- (VNTrackObjectRequest)initWithDetectedObjectObservation:(VNDetectedObjectObservation *)observation completionHandler:(VNRequestCompletionHandler)completionHandler;
- (id)_trackingLevelOptionFromTrackingLevelEnum;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (void)setTrackingFrameSizeInPixels:(CGSize)a3;
- (void)setTrackingLevel:(unint64_t)a3;
@end

@implementation VNTrackObjectRequest

+ (unsigned)frameCVPixelBufferFormatForRequestRevision:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 1111970369;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___VNTrackObjectRequest;
  return objc_msgSendSuper2(&v6, sel_frameCVPixelBufferFormatForRequestRevision_);
}

+ (id)trackerTypeForRequestRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 2)
  {
    v4 = @"VNObjectTrackerRevision2Type";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = @"VNObjectTrackerRevision1Type";
LABEL_5:
    v5 = v4;
    goto LABEL_9;
  }

  if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequestClass:" ofRequestClass:?];
    *a4 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

LABEL_9:

  return v4;
}

- (CGSize)trackingFrameSizeInPixels
{
  width = self->_trackingFrameSizeInPixels.width;
  height = self->_trackingFrameSizeInPixels.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_trackingLevelOptionFromTrackingLevelEnum
{
  if ([(VNRequest *)self revision]== 2)
  {
    v3 = @"VNTrackingOption_TrackingLevelRPN";
    v4 = @"VNTrackingOption_TrackingLevelRPN";
  }

  else
  {
    v6.receiver = self;
    v6.super_class = VNTrackObjectRequest;
    v3 = [(VNTrackingRequest *)&v6 _trackingLevelOptionFromTrackingLevelEnum];
  }

  return v3;
}

- (void)setTrackingFrameSizeInPixels:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(VNRequest *)self revision]!= 1)
  {
    self->_trackingFrameSizeInPixels.width = width;
    self->_trackingFrameSizeInPixels.height = height;
  }
}

- (void)setTrackingLevel:(unint64_t)a3
{
  if ([(VNRequest *)self revision]!= 2)
  {
    v5.receiver = self;
    v5.super_class = VNTrackObjectRequest;
    [(VNTrackingRequest *)&v5 setTrackingLevel:a3];
  }
}

- (VNTrackObjectRequest)initWithDetectedObjectObservation:(VNDetectedObjectObservation *)observation completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v8.receiver = self;
  v8.super_class = VNTrackObjectRequest;
  v4 = [(VNTrackingRequest *)&v8 initWithDetectedObjectObservation:observation completionHandler:completionHandler];
  v5 = v4;
  if (v4)
  {
    *(v4 + 136) = *MEMORY[0x1E695F060];
    v6 = v4;
  }

  return v5;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v12.receiver = self;
  v12.super_class = VNTrackObjectRequest;
  v5 = [(VNTrackingRequest *)&v12 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  if ([(VNRequest *)self revision]== 2)
  {
    [(VNTrackObjectRequest *)self trackingFrameSizeInPixels];
    v7 = v6;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    [v5 setObject:v9 forKeyedSubscript:@"VNTrackingOption_InputImageMaxWidth"];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [v5 setObject:v10 forKeyedSubscript:@"VNTrackingOption_InputImageMaxHeight"];
  }

  return v5;
}

@end