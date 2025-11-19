@interface VNAlignFaceRectangleRequestConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNAlignFaceRectangleRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNAlignFaceRectangleRequestConfiguration;
  v4 = [(VNRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setInputFaceObservations:self->_inputFaceObservations];
  }

  return v5;
}

@end