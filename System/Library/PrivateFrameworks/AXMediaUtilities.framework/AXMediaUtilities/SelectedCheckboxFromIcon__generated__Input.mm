@interface SelectedCheckboxFromIcon__generated__Input
- (SelectedCheckboxFromIcon__generated__Input)initWithImage:(__CVBuffer *)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation SelectedCheckboxFromIcon__generated__Input

- (SelectedCheckboxFromIcon__generated__Input)initWithImage:(__CVBuffer *)a3
{
  if (self)
  {
    self->_image = a3;
  }

  return self;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"image"])
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