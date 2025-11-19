@interface CNObjectTracker
- (BOOL)startTrackingAt:(CMTime *)time within:(CGRect)normalizedBounds sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity;
- (CNBoundsPrediction)continueTrackingAt:(CMTime *)time sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity;
- (CNBoundsPrediction)findObjectAtPoint:(CGPoint)point sourceImage:(CVPixelBufferRef)sourceImage;
- (CNDetectionTrack)finishDetectionTrack;
- (CNObjectTracker)initWithCommandQueue:(id)commandQueue;
@end

@implementation CNObjectTracker

- (CNObjectTracker)initWithCommandQueue:(id)commandQueue
{
  v4 = commandQueue;
  v10.receiver = self;
  v10.super_class = CNObjectTracker;
  v5 = [(CNObjectTracker *)&v10 init];
  if (v5 && (v6 = [objc_alloc(MEMORY[0x277D3E8E0]) initWithCommandQueue:v4], internalTapToTrack = v5->_internalTapToTrack, v5->_internalTapToTrack = v6, internalTapToTrack, !v5->_internalTapToTrack))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (CNBoundsPrediction)findObjectAtPoint:(CGPoint)point sourceImage:(CVPixelBufferRef)sourceImage
{
  v4 = [(PTTapToTrack *)self->_internalTapToTrack getRectForPoint:sourceImage colorBuffer:point.x, point.y];
  v5 = [CNBoundsPrediction _predictionFromInternal:v4];

  return v5;
}

- (BOOL)startTrackingAt:(CMTime *)time within:(CGRect)normalizedBounds sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity
{
  internalTapToTrack = self->_internalTapToTrack;
  v8 = *time;
  return [(PTTapToTrack *)internalTapToTrack addDetectionAndStartTrackingRect:&v8 time:sourceImage colorBuffer:sourceDisparity disparityBuffer:normalizedBounds.origin.x, normalizedBounds.origin.y, normalizedBounds.size.width, normalizedBounds.size.height];
}

- (CNBoundsPrediction)continueTrackingAt:(CMTime *)time sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity
{
  internalTapToTrack = self->_internalTapToTrack;
  v9 = *time;
  v6 = [(PTTapToTrack *)internalTapToTrack addDetectionForNextFrameAt:&v9 colorBuffer:sourceImage disparityBuffer:sourceDisparity];
  v7 = [CNBoundsPrediction _predictionFromInternal:v6];

  return v7;
}

- (CNDetectionTrack)finishDetectionTrack
{
  v2 = [(PTTapToTrack *)self->_internalTapToTrack finalizeTrack];
  v3 = [CNDetectionTrack _trackFromInternal:v2];

  return v3;
}

@end