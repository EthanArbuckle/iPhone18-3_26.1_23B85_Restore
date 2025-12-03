@interface AXElementVision__generated__Input
- (AXElementVision__generated__Input)initWithImage:(__CVBuffer *)image iouThreshold:(double)threshold confidenceThreshold:(double)confidenceThreshold;
- (id)featureValueForName:(id)name;
@end

@implementation AXElementVision__generated__Input

- (AXElementVision__generated__Input)initWithImage:(__CVBuffer *)image iouThreshold:(double)threshold confidenceThreshold:(double)confidenceThreshold
{
  if (self)
  {
    self->_image = image;
    self->_iouThreshold = threshold;
    self->_confidenceThreshold = confidenceThreshold;
  }

  return self;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"image"])
  {
    v5 = [MEMORY[0x1E695FE60] featureValueWithPixelBuffer:self->_image];
LABEL_8:
    v8 = v5;
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"iouThreshold"])
  {
    v6 = MEMORY[0x1E695FE60];
    iouThreshold = self->_iouThreshold;
LABEL_7:
    v5 = [v6 featureValueWithDouble:iouThreshold];
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"confidenceThreshold"])
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