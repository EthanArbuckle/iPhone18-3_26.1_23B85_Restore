@interface AXElementVision__generated__Input
- (AXElementVision__generated__Input)initWithImage:(__CVBuffer *)a3 iouThreshold:(double)a4 confidenceThreshold:(double)a5;
- (id)featureValueForName:(id)a3;
@end

@implementation AXElementVision__generated__Input

- (AXElementVision__generated__Input)initWithImage:(__CVBuffer *)a3 iouThreshold:(double)a4 confidenceThreshold:(double)a5
{
  if (self)
  {
    self->_image = a3;
    self->_iouThreshold = a4;
    self->_confidenceThreshold = a5;
  }

  return self;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"image"])
  {
    v5 = [MEMORY[0x1E695FE60] featureValueWithPixelBuffer:self->_image];
LABEL_8:
    v8 = v5;
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"iouThreshold"])
  {
    v6 = MEMORY[0x1E695FE60];
    iouThreshold = self->_iouThreshold;
LABEL_7:
    v5 = [v6 featureValueWithDouble:iouThreshold];
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"confidenceThreshold"])
  {
    v6 = MEMORY[0x1E695FE60];
    iouThreshold = self->_confidenceThreshold;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

@end