@interface CISourceOverCompositing
- (id)outputImage;
@end

@implementation CISourceOverCompositing

- (id)outputImage
{
  inputImage = self->super.inputImage;
  v4 = +[CIImage emptyImage];
  inputBackgroundImage = self->super.inputBackgroundImage;
  if (inputImage == v4)
  {
    v7 = inputBackgroundImage;
  }

  else
  {
    if (inputBackgroundImage != +[CIImage emptyImage])
    {
      v8.receiver = self;
      v8.super_class = CISourceOverCompositing;
      return [(_CICompositeFilter *)&v8 outputImage];
    }

    v7 = self->super.inputImage;
  }

  return v7;
}

@end