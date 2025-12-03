@interface ImageJoeColorAnalyzer
- (id)colorsForImage:(id)image;
@end

@implementation ImageJoeColorAnalyzer

- (id)colorsForImage:(id)image
{
  v4 = objc_opt_self();
  imageCopy = image;
  result = [v4 colorsForImage:imageCopy];
  if (result)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end