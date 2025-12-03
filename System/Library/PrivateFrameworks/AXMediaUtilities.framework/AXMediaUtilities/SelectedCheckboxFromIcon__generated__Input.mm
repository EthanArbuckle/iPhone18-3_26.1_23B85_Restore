@interface SelectedCheckboxFromIcon__generated__Input
- (SelectedCheckboxFromIcon__generated__Input)initWithImage:(__CVBuffer *)image;
- (id)featureValueForName:(id)name;
@end

@implementation SelectedCheckboxFromIcon__generated__Input

- (SelectedCheckboxFromIcon__generated__Input)initWithImage:(__CVBuffer *)image
{
  if (self)
  {
    self->_image = image;
  }

  return self;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"image"])
  {
    v4 = [MEMORY[0x1E695FE60] featureValueWithPixelBuffer:self->_image];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end