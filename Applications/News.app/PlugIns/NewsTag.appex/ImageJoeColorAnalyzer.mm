@interface ImageJoeColorAnalyzer
- (id)colorsForImage:(id)a3;
@end

@implementation ImageJoeColorAnalyzer

- (id)colorsForImage:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  result = [v4 colorsForImage:v5];
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