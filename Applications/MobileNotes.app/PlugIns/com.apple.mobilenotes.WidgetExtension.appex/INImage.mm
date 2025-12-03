@interface INImage
+ (id)ic_imageNamed:(id)named;
@end

@implementation INImage

+ (id)ic_imageNamed:(id)named
{
  v3 = [UIImage imageNamed:named];
  v4 = v3;
  if (v3)
  {
    v5 = UIImagePNGRepresentation(v3);
    v6 = [INImage imageWithImageData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end