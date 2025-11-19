@interface VNTrackRectangleRequest
+ (id)trackerTypeForRequestRevision:(unint64_t)a3 error:(id *)a4;
- (VNTrackRectangleRequest)initWithRectangleObservation:(VNRectangleObservation *)observation completionHandler:(VNRequestCompletionHandler)completionHandler;
@end

@implementation VNTrackRectangleRequest

- (VNTrackRectangleRequest)initWithRectangleObservation:(VNRectangleObservation *)observation completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v5.receiver = self;
  v5.super_class = VNTrackRectangleRequest;
  return [(VNTrackingRequest *)&v5 initWithDetectedObjectObservation:observation completionHandler:completionHandler];
}

+ (id)trackerTypeForRequestRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNRectangleTrackerType";
    v5 = @"VNRectangleTrackerType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequestClass:" ofRequestClass:?];
    *a4 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end