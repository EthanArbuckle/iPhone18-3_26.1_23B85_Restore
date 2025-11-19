@interface AVImage
+ (id)imageWithConfiguration:(id)a3;
@end

@implementation AVImage

+ (id)imageWithConfiguration:(id)a3
{
  v3 = a3;
  if ([v3 imageContainedInBundle])
  {
    v4 = [v3 imageName];
    v5 = AVBundle();
    [AVImage imageNamed:v4 inBundle:v5 compatibleWithTraitCollection:0];
  }

  else
  {
    v6 = MEMORY[0x1E69DCAD8];
    v7 = [v3 font];
    v4 = [v6 configurationWithFont:v7];

    v5 = [v3 imageName];
    [AVImage systemImageNamed:v5 withConfiguration:v4];
  }
  v8 = ;

  return v8;
}

@end