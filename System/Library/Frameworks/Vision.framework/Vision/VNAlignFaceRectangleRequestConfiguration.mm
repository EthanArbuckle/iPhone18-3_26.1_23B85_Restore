@interface VNAlignFaceRectangleRequestConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNAlignFaceRectangleRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNAlignFaceRectangleRequestConfiguration;
  v4 = [(VNRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setInputFaceObservations:self->_inputFaceObservations];
  }

  return v5;
}

@end