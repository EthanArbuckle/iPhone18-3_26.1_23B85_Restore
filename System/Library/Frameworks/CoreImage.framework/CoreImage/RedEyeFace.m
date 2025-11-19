@interface RedEyeFace
- (RedEyeFace)init;
- (void)dealloc;
@end

@implementation RedEyeFace

- (RedEyeFace)init
{
  v3.receiver = self;
  v3.super_class = RedEyeFace;
  return [(RedEyeFace *)&v3 init];
}

- (void)dealloc
{
  [(RedEyeFace *)self setObservation:0];
  [(RedEyeFace *)self setLandmarks:0];
  [(RedEyeFace *)self setSegmentationSkin:0];
  [(RedEyeFace *)self setSegmentationSclera:0];
  [(RedEyeFace *)self setSegmentationIris:0];
  [(RedEyeFace *)self setUvLeft:0];
  [(RedEyeFace *)self setUvRight:0];
  [(RedEyeFace *)self setFaceRect:0];
  [(RedEyeFace *)self setRoiRenderOriginLeft:0];
  [(RedEyeFace *)self setRoiRenderOriginRight:0];
  [(RedEyeFace *)self setRoiRenderSize:0];
  [(RedEyeFace *)self setPupilLeft:0];
  [(RedEyeFace *)self setPupilRight:0];
  v3.receiver = self;
  v3.super_class = RedEyeFace;
  [(RedEyeFace *)&v3 dealloc];
}

@end