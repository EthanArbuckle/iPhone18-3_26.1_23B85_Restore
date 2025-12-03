@interface AVImage
+ (id)imageWithConfiguration:(id)configuration;
@end

@implementation AVImage

+ (id)imageWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy imageContainedInBundle])
  {
    imageName = [configurationCopy imageName];
    imageName2 = AVBundle();
    [AVImage imageNamed:imageName inBundle:imageName2 compatibleWithTraitCollection:0];
  }

  else
  {
    v6 = MEMORY[0x1E69DCAD8];
    font = [configurationCopy font];
    imageName = [v6 configurationWithFont:font];

    imageName2 = [configurationCopy imageName];
    [AVImage systemImageNamed:imageName2 withConfiguration:imageName];
  }
  v8 = ;

  return v8;
}

@end