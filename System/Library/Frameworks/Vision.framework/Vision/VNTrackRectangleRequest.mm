@interface VNTrackRectangleRequest
+ (id)trackerTypeForRequestRevision:(unint64_t)revision error:(id *)error;
- (VNTrackRectangleRequest)initWithRectangleObservation:(VNRectangleObservation *)observation completionHandler:(VNRequestCompletionHandler)completionHandler;
@end

@implementation VNTrackRectangleRequest

- (VNTrackRectangleRequest)initWithRectangleObservation:(VNRectangleObservation *)observation completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v5.receiver = self;
  v5.super_class = VNTrackRectangleRequest;
  return [(VNTrackingRequest *)&v5 initWithDetectedObjectObservation:observation completionHandler:completionHandler];
}

+ (id)trackerTypeForRequestRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNRectangleTrackerType";
    v5 = @"VNRectangleTrackerType";
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequestClass:" ofRequestClass:?];
    *error = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end